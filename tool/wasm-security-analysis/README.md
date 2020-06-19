# WebAssembly Binary Security Analysis Tool (Prototype)

This is a prototype implementation for evaluating the security properties of WebAssembly binaries as described in the USENIX Security 2020 paper "Everything Old is New Again: Binary Security of WebAssembly".
It has three components:

- Parsing of a WebAssembly binary, using our own `wasm` library (developed as part of the [Wasabi](https://github.com/danleh/wasabi) instrumentation tool) and printing out overview information about the binary: Number of (imported/local/exported) functions, number of instructions, etc.
- Analyzing usage of the "unmanaged stack", i.e., the portion in the linear memory space which holds data with function-lifetime that don't fit in Wasm scalar locals, e.g., in C function-scoped arrays.
    * This is relevant for security, because the more data is on the unmanaged stack, the more can be overwritten by attack primitives on linear memory, which is woefully unprotected (see paper).
    * Which global variable is the stack pointer? Determined by number of `global.get`/`global.set` instructions and their proportion.
    * Pattern match against function prologue/epilogue code that increments/decrements the stack pointer. Collect all increments and build distribution of stack usage over functions.
    * Both of these are heuristics, based on real-world WebAssembly binaries compiled with different versions of Emscripten/clang. The heuristics should be improved to increase precision (misclassifying globals as stack pointer) and recall (missing stack pointer and stack usages in functions).
- Analyzing indirect calls and indirect-callable functions.
    * This is relevant for security, because indirect calls are (likely) the only control-flow that could be influenced by an attacker, given a memory vulnerability.
    * Analysis of call sites: how many indirect calls are there and where does the indirect call table index come from? (E.g., if it is a constant, it cannot be influenced by an attacker, if it is bitmasked, it may only be in a certain range.)
    * Analysis of the table section and its initialization: how many functions are indirect-callable at all because they appear in the table section?
    * Analysis of CFI restrictions: each indirect call statically encodes a target function type that must match. How does this restrict the number of permissable indirect call control-flow edges?

Some of the output is meant for human consumption, other for further scripting (e.g., plotting with Python).
See this less as a library ready for re-use, rather than an example security analysis application.
You will need to adapt this for your usecase.

Build with Rust/Cargo nightly 1.43.
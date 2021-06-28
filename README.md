# Supplementary Material for USENIX Security 2020 Paper: "Everything Old is New Again: Binary Security of WebAssembly"

- `tool/`: Rust source code of the static analysis tool to obtain unmanaged stack usage and CFI equivalence classes from a WebAssembly binary. See the project README for a bit more high-level information.
- `compilers/`: Versions of the C, C++, and Rust compilers used in proof-of-concept exploits and analyzing linear memory layout of WebAssembly binaries.
- `linear-memory-analysis/`: C and Rust programs, build scripts, and resulting binaries to analyze the memory layout when compiling with different compilers. Corresponding to section 3 in the paper.
- `attack-primitives/`: Stack-based buffer overflow, heap overflow (on emmalloc), and global "constant" overwrite primitive examples (C source code and produced, vulnerable binaries). Corresponding to section 4 in the paper.
- `end-to-end-exploits/`: Example applications on three different WebAssembly platforms (browser, Node.js, wasmtime) and end-to-end exploits against those proof-of-concept applications. Corresponding to section 5 in the paper.
- `quantitative-evaluation/`: Raw data for the quantitative evaluation on unmanaged stack usage and CFI equivalence classes in real-world and SPEC CPU binaries. Corresponding to section 6 in the paper.

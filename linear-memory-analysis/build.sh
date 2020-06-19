#!/bin/bash

# Clang wasi
compilers/wasi/wasi-sdk-8.0-linux/wasi-sdk-8.0/bin/clang --sysroot compilers/wasi/wasi-sysroot-8.0/wasi-sysroot main.c -O2 -o clang-wasi.wasm

compilers/wasi/wasi-sdk-8.0-linux/wasi-sdk-8.0/bin/clang --sysroot compilers/wasi/wasi-sysroot-8.0/wasi-sysroot main.c -O2 -Wl,--stack-first -o clang-stack-first-wasi.wasm


# Emscripten
compilers//emcc-upstream/emsdk/emsdk activate latest > /dev/null
. compilers//emcc-upstream/emsdk/emsdk_env.sh > /dev/null
which emcc
emcc main.c -O2 -o emcc-upstream.js

compilers//emcc-fastcomp/emsdk/emsdk activate latest-fastcomp > /dev/null
. compilers//emcc-fastcomp/emsdk/emsdk_env.sh > /dev/null
which emcc
emcc main.c -O2 -o emcc-fastcomp.js


# Rust
rustc --target=wasm32-wasi main.rs -O -o rust-wasi.wasm
# rustc --target=wasm32-unknown-emscripten main.rs -O -o rust-emscripten.wasm


# Binary information
for wasm in *.wasm
do
    echo "$wasm"
    wasm2wat --generate-names "$wasm" > "$wasm.wat"
    wasm-objdump -xh "$wasm" > "$wasm.objdump"
    rg 'global \$g\d+' "$wasm.wat" | cat
    rg 'data.*global const' "$wasm.wat" | cut -c-100
done


# Dynamic information
for js in emcc-*.js
do
    echo "$js"
    node "$js" | tee "$js.stdout"
done
for wasm in *-wasi.wasm
do
    echo "$wasm"
    wasmtime "$wasm" | tee "$wasm.stdout"
done

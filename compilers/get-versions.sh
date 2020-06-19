#!/bin/bash

# Clang
# Download from https://github.com/CraneStation/wasi-sdk/releases
echo "Clang version and configured target"
wasi/wasi-sdk-8.0-linux/wasi-sdk-8.0/bin/clang --version
echo

# Rust
# Install and/or update if not already done: https://github.com/CraneStation/wasi-sdk/releases
# rustup update
echo "Rust compiler version and installed targets:"
rustc --version
rustc +nightly --version
rustup target list | grep wasm
echo

# Emscripten
# Install and/or update if not already done
# mkdir -p emcc-upstream emcc-fastcomp
# pushd emcc-upstream
# git clone https://github.com/emscripten-core/emsdk.git
# cd emsdk
# git pull
# ./emsdk install latest
# ./emsdk activate latest
# popd

# pushd emcc-fastcomp
# git clone https://github.com/emscripten-core/emsdk.git
# cd emsdk
# git pull
# ./emsdk install latest-fastcomp
# ./emsdk activate latest-fastcomp
# popd

echo "Emscripten compiler version (upstream and fastcomp backend)"
source ./emcc-upstream/emsdk/emsdk_env.sh > /dev/null
emcc --version | grep emcc

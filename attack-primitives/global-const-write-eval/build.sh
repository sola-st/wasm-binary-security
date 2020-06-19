#!/bin/sh
input="run_script.c"
basename=$(basename $input .c)
mkdir -p out
# use simpler allocator to save space in wasm file and make it easier to understand
emcc -O2 -g4 -o "out/$basename.html" "$input" -s MALLOC="emmalloc"

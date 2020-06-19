#ifdef __EMSCRIPTEN__
#include<emscripten.h>
#else
#define EMSCRIPTEN_KEEPALIVE __attribute((used))
#define emscripten_run_script printf
#endif

#include<string.h>
#include<stdio.h>

char * other_data = "AAAA";

// NOTE with a const char* the code is even more unsafe, because it gets compiled as:
//    i32.const 1668 (or something)
//    i32.load8
// instead of 
//    i32.const 1024
// i.e., there is one more memory indirection and a single ptr override would suffice!

// Doesn't work in native, since safe_script is put into .rodata section, which is mapped to a non-W
// page. See objdump -s -j .rodata out/run_script.native.

static char * safe_script = "console.log('this should be safe, shouldn\\'t it?')";

int main() {

  puts(other_data);
  puts(safe_script);

  emscripten_run_script(safe_script);

  return 0;
}

// Exploit with (in JS console, but in principle C code could cause this)
// ccall("do_something_stupid_which_allows_write_access", null, ["string"], [";;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;alert('bam')"])
// Then run again with:
// _main()

EMSCRIPTEN_KEEPALIVE
void do_something_stupid_which_allows_write_access(const char * input) {
  // Buffer overflow happens here!
  // the memory is not that static actually :P
  // WASM doesnt have read-only mem!
  strcpy(other_data, input);
  puts("we fucked up...");
}

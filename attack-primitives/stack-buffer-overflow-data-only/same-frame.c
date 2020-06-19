#include <stdio.h>
#include <string.h>

// Stack-based buffer overflow example.
// Characteristics:
// - Corrupted other data is in same call frame (and _not_ in the call frame of the caller).
// - Type of overflowed data is also an array (and _not_ a struct or function ptr).
// - Behavior after the overflow is "data-only" (and _not_ changing the control flow directly as 
//   with an overwritten function pointer.)

// Put printing into own function as to avoid more stack allocations in main().
__attribute((noinline))
void print_bufs(char * buf_overflow, char * buf_other_data) {
  printf("&buf_overflow:   %p\n buf_overflow:   %s\n", buf_overflow, buf_overflow);
  printf("&buf_other_data: %p\n buf_other_data: %s\n", buf_other_data, buf_other_data);
}

int main(int argc, char **argv) {
  // If other_data will be overwritten by an overflow of buf_overflow depends on the placement on
  // the stack. 
  // Clang with -fstack-protector will place buf_overflow[] next to the cookie, so it doesn't work
  // regardless of the order in the source code (see same-frame.native.s, overflow gets placed
  // _after_ other_data).
  // But for Wasm it _does_ work like this:
  // We could imagine other_data to be unsanitized DOM inputs, whereas buf_overflow is user-provided
  // data.
  char buf_other_data[8] = "BBBBBBB\0";
  char buf_overflow[8];

  print_bufs(buf_overflow, buf_other_data);

  // Overflow happens here.
  strcpy(buf_overflow, argv[1]);

  print_bufs(buf_overflow, buf_other_data);

  return 0;
}

// EXPLOIT with
// callMain(["AAAAAAAAAAAAAAAAAAAAAAAAA"])
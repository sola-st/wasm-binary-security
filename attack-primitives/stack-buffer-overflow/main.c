#include <stdio.h>
#include <string.h>

// NOTE Types are not even compatible, but map to the same wasm types.
void evil(int unused) { printf("evil called\n"); }

__attribute__((noinline)) void vulnerable(char *bar) {
  char buf[8];
  strcpy(buf, bar);  // no bounds checking
}

void foo(char *unused) {}
void bar(char *unused) {}

int main(int argc, char **argv) {
  printf("argc: %d\nargv: %p\nargv[0]: %s\nargv[1]: %s\n", argc, argv, argv[0],
         argv[1]);

  void (*func_ptr)(char *);
  if (argc > 1337) {
    func_ptr = &foo;
  } else if (argc > 42) {
    func_ptr = &bar;
  } else {
    func_ptr = &vulnerable;
  }

  // Take address of func_ptr to force it to be stored in memory, not as a local.
  // (We could not use a stack overflow to overwrite a local.)
  printf("&func_ptr: %p\nfunc_ptr:  %p\n", &func_ptr, func_ptr);

  vulnerable(argv[1]);

  printf("&func_ptr: %p\nfunc_ptr:  %p\n", &func_ptr, func_ptr);

  (*func_ptr)("aaaa");
}

__attribute__((used)) void dead_code() { printf("%p\n", evil); }

// EXPLOIT with
// callMain(["aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\04"])
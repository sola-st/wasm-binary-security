(module
  (type (;0;) (func (param i32 i32 i32) (result i32)))
  (type (;1;) (func (param i32 f64 i32 i32 i32 i32) (result i32)))
  (type (;2;) (func (param i32 i32)))
  (type (;3;) (func (param i32 i64 i32) (result i64)))
  (type (;4;) (func (param i32 i32 i32 i32) (result i32)))
  (type (;5;) (func (param i32)))
  (type (;6;) (func (param i32 i32 i32 i32)))
  (type (;7;) (func (result i32)))
  (type (;8;) (func (param i32) (result i32)))
  (type (;9;) (func))
  (type (;10;) (func (param i32 i32) (result i32)))
  (type (;11;) (func (param f64 i32) (result f64)))
  (type (;12;) (func (param i32 i32 i32 i32 i32) (result i32)))
  (type (;13;) (func (param i32 i32 i32 i32 i32 i32 i32) (result i32)))
  (type (;14;) (func (param i32 i32 i32)))
  (type (;15;) (func (param i32 i32 i32 i32 i32)))
  (type (;16;) (func (param i64 i32) (result i32)))
  (type (;17;) (func (param i64 i32 i32) (result i32)))
  (type (;18;) (func (param f64) (result i64)))
  (type (;19;) (func (param i32 i64 i64 i32)))
  (type (;20;) (func (param i64 i64) (result f64)))
  (type (;21;) (func (param i32) (result i32)))
  (type (;22;) (func (param i32 i32 i32) (result i32)))
  (type (;23;) (func (param i32 i64 i32) (result i64)))
  (type (;24;) (func (param i32 f64 i32 i32 i32 i32) (result i32)))
  (type (;25;) (func (param i32 i32)))
  (type (;26;) (func (param i32)))
  (type (;27;) (func (result i32)))
  (type (;28;) (func (param i32 i32) (result i32)))
  (type (;29;) (func (param i32 i32 i32 i32) (result i32)))
  (type (;30;) (func (param i32 i32 i64 i32) (result i64)))
  (type (;31;) (func (param i32 i32 f64 i32 i32 i32 i32) (result i32)))
  (type (;32;) (func (param i32 i32 i32)))
  (type (;33;) (func (param i32 i32 i32 i32 i32) (result i32)))
  (import "wasi_unstable" "fd_write" (func $__wasi_fd_write (type 4)))
  (import "env" "__lock" (func $__lock (type 5)))
  (import "env" "__unlock" (func $__unlock (type 5)))
  (import "env" "__assert_fail" (func $__assert_fail (type 6)))
  (import "env" "emscripten_resize_heap" (func $emscripten_resize_heap (type 8)))
  (import "env" "emscripten_memcpy_big" (func $emscripten_memcpy_big (type 0)))
  (import "env" "setTempRet0" (func $setTempRet0 (type 26)))
  (import "env" "emscripten_asm_const_iii" (func $emscripten_asm_const_iii (type 22)))
  (import "env" "memory" (memory (;0;) 256 256))
  (import "env" "table" (table (;0;) 6 funcref))
  (func $emscripten_get_sbrk_ptr (type 7) (result i32)
    (i32.const 4304))
  (func $__wasm_call_ctors (type 9))
  (func $alignment (type 8) (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32)
    (local.set 1
      (global.get 0))
    (local.set 2
      (i32.const 16))
    (local.set 3
      (i32.sub
        (local.get 1)
        (local.get 2)))
    (local.set 4
      (i32.const 2))
    (i32.store offset=12
      (local.get 3)
      (local.get 0))
    (local.set 5
      (i32.load offset=12
        (local.get 3)))
    (local.set 6
      (i32.ctz
        (local.get 5)))
    (i32.store offset=8
      (local.get 3)
      (local.get 6))
    (local.set 7
      (i32.load offset=8
        (local.get 3)))
    (local.set 8
      (i32.shl
        (local.get 4)
        (local.get 7)))
    (return
      (local.get 8)))
  (func $print_ptr (type 5) (param i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    (local.set 1
      (global.get 0))
    (local.set 2
      (i32.const 16))
    (local.set 3
      (i32.sub
        (local.get 1)
        (local.get 2)))
    (global.set 0
      (local.get 3))
    (local.set 4
      (i32.const 0))
    (i32.store offset=12
      (local.get 3)
      (local.get 0))
    (local.set 5
      (i32.load offset=12
        (local.get 3)))
    (local.set 6
      (local.get 5))
    (local.set 7
      (local.get 4))
    (local.set 8
      (i32.ne
        (local.get 6)
        (local.get 7)))
    (local.set 9
      (i32.const 1))
    (local.set 10
      (i32.and
        (local.get 8)
        (local.get 9)))
    (block  ;; label = @1
      (block  ;; label = @2
        (br_if 0 (;@2;)
          (i32.eqz
            (local.get 10)))
        (local.set 11
          (i32.load offset=12
            (local.get 3)))
        (local.set 12
          (i32.load offset=12
            (local.get 3)))
        (local.set 13
          (i32.load offset=12
            (local.get 3)))
        (local.set 14
          (call $alignment
            (local.get 13)))
        (i32.store offset=8
          (local.get 3)
          (local.get 14))
        (i32.store offset=4
          (local.get 3)
          (local.get 12))
        (i32.store
          (local.get 3)
          (local.get 11))
        (local.set 15
          (i32.const 1024))
        (drop
          (call $printf
            (local.get 15)
            (local.get 3)))
        (br 1 (;@1;)))
      (local.set 16
        (i32.const 1044))
      (local.set 17
        (i32.const 0))
      (drop
        (call $printf
          (local.get 16)
          (local.get 17))))
    (local.set 18
      (i32.const 16))
    (local.set 19
      (i32.add
        (local.get 3)
        (local.get 18)))
    (global.set 0
      (local.get 19))
    (return))
  (func $print_heap_metadata_emmalloc (type 5) (param i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    (local.set 1
      (global.get 0))
    (local.set 2
      (i32.const 48))
    (local.set 3
      (i32.sub
        (local.get 1)
        (local.get 2)))
    (global.set 0
      (local.get 3))
    (i32.store offset=44
      (local.get 3)
      (local.get 0))
    (local.set 4
      (i32.load offset=44
        (local.get 3)))
    (i32.store offset=40
      (local.get 3)
      (local.get 4))
    (local.set 5
      (i32.load offset=40
        (local.get 3)))
    (local.set 6
      (i32.const -8))
    (local.set 7
      (i32.add
        (local.get 5)
        (local.get 6)))
    (i32.store offset=36
      (local.get 3)
      (local.get 7))
    (local.set 8
      (i32.const 1050))
    (local.set 9
      (i32.const 0))
    (drop
      (call $printf
        (local.get 8)
        (local.get 9)))
    (local.set 10
      (i32.load offset=36
        (local.get 3)))
    (call $print_ptr
      (local.get 10))
    (local.set 11
      (i32.load offset=36
        (local.get 3)))
    (local.set 12
      (i32.load
        (local.get 11)))
    (local.set 13
      (i32.const 1))
    (local.set 14
      (i32.shr_u
        (local.get 12)
        (local.get 13)))
    (local.set 15
      (i32.load offset=36
        (local.get 3)))
    (local.set 16
      (i32.load
        (local.get 15)))
    (local.set 17
      (i32.const 1))
    (local.set 18
      (i32.shr_u
        (local.get 16)
        (local.get 17)))
    (i32.store offset=20
      (local.get 3)
      (local.get 18))
    (i32.store offset=16
      (local.get 3)
      (local.get 14))
    (local.set 19
      (i32.const 1062))
    (local.set 20
      (i32.const 16))
    (local.set 21
      (i32.add
        (local.get 3)
        (local.get 20)))
    (drop
      (call $printf
        (local.get 19)
        (local.get 21)))
    (local.set 22
      (i32.const 1105))
    (local.set 23
      (i32.const 1110))
    (local.set 24
      (i32.load offset=36
        (local.get 3)))
    (local.set 25
      (i32.load
        (local.get 24)))
    (local.set 26
      (i32.const 1))
    (local.set 27
      (i32.and
        (local.get 25)
        (local.get 26)))
    (local.set 28
      (select
        (local.get 22)
        (local.get 23)
        (local.get 27)))
    (i32.store offset=32
      (local.get 3)
      (local.get 28))
    (local.set 29
      (i32.const 1090))
    (local.set 30
      (i32.const 32))
    (local.set 31
      (i32.add
        (local.get 3)
        (local.get 30)))
    (drop
      (call $printf
        (local.get 29)
        (local.get 31)))
    (local.set 32
      (i32.const 1115))
    (local.set 33
      (i32.const 0))
    (drop
      (call $printf
        (local.get 32)
        (local.get 33)))
    (local.set 34
      (i32.load offset=36
        (local.get 3)))
    (local.set 35
      (i32.load offset=4
        (local.get 34)))
    (call $print_ptr
      (local.get 35))
    (local.set 36
      (i32.const 1127))
    (local.set 37
      (i32.const 0))
    (drop
      (call $printf
        (local.get 36)
        (local.get 37)))
    (local.set 38
      (i32.load offset=36
        (local.get 3)))
    (local.set 39
      (i32.load offset=36
        (local.get 3)))
    (local.set 40
      (i32.load
        (local.get 39)))
    (local.set 41
      (i32.const 1))
    (local.set 42
      (i32.shr_u
        (local.get 40)
        (local.get 41)))
    (local.set 43
      (i32.add
        (local.get 38)
        (local.get 42)))
    (call $print_ptr
      (local.get 43))
    (local.set 44
      (i32.load offset=36
        (local.get 3)))
    (local.set 45
      (i32.load
        (local.get 44)))
    (local.set 46
      (i32.const 1))
    (local.set 47
      (i32.and
        (local.get 45)
        (local.get 46)))
    (block  ;; label = @1
      (block  ;; label = @2
        (br_if 0 (;@2;)
          (i32.eqz
            (local.get 47)))
        (local.set 48
          (i32.const 1139))
        (local.set 49
          (i32.const 0))
        (drop
          (call $printf
            (local.get 48)
            (local.get 49)))
        (local.set 50
          (i32.load offset=36
            (local.get 3)))
        (local.set 51
          (i32.const 8))
        (local.set 52
          (i32.add
            (local.get 50)
            (local.get 51)))
        (call $print_ptr
          (local.get 52))
        (local.set 53
          (i32.load offset=36
            (local.get 3)))
        (local.set 54
          (i32.const 8))
        (local.set 55
          (i32.add
            (local.get 53)
            (local.get 54)))
        (i32.store
          (local.get 3)
          (local.get 55))
        (local.set 56
          (i32.const 1152))
        (drop
          (call $printf
            (local.get 56)
            (local.get 3)))
        (br 1 (;@1;)))
      (local.set 57
        (i32.const 1169))
      (local.set 58
        (i32.const 0))
      (drop
        (call $printf
          (local.get 57)
          (local.get 58)))
      (local.set 59
        (i32.load offset=36
          (local.get 3)))
      (local.set 60
        (i32.const 8))
      (local.set 61
        (i32.add
          (local.get 59)
          (local.get 60)))
      (call $print_ptr
        (local.get 61))
      (local.set 62
        (i32.const 1184))
      (local.set 63
        (i32.const 0))
      (drop
        (call $printf
          (local.get 62)
          (local.get 63)))
      (local.set 64
        (i32.load offset=36
          (local.get 3)))
      (local.set 65
        (i32.load offset=8
          (local.get 64)))
      (call $print_ptr
        (local.get 65))
      (local.set 66
        (i32.const 1196))
      (local.set 67
        (i32.const 0))
      (drop
        (call $printf
          (local.get 66)
          (local.get 67)))
      (local.set 68
        (i32.load offset=36
          (local.get 3)))
      (local.set 69
        (i32.load offset=12
          (local.get 68)))
      (call $print_ptr
        (local.get 69)))
    (local.set 70
      (i32.const 1208))
    (local.set 71
      (i32.const 0))
    (drop
      (call $printf
        (local.get 70)
        (local.get 71)))
    (local.set 72
      (i32.const 48))
    (local.set 73
      (i32.add
        (local.get 3)
        (local.get 72)))
    (global.set 0
      (local.get 73))
    (return))
  (func $main_bytes (type 2) (param i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    (local.set 2
      (global.get 0))
    (local.set 3
      (i32.const 48))
    (local.set 4
      (i32.sub
        (local.get 2)
        (local.get 3)))
    (global.set 0
      (local.get 4))
    (i32.store offset=44
      (local.get 4)
      (local.get 0))
    (i32.store offset=40
      (local.get 4)
      (local.get 1))
    (local.set 5
      (i32.load offset=44
        (local.get 4)))
    (i32.store
      (local.get 4)
      (local.get 5))
    (local.set 6
      (i32.const 1210))
    (drop
      (call $printf
        (local.get 6)
        (local.get 4)))
    (local.set 7
      (i32.load offset=40
        (local.get 4)))
    (i32.store offset=16
      (local.get 4)
      (local.get 7))
    (local.set 8
      (i32.const 1221))
    (local.set 9
      (i32.const 16))
    (local.set 10
      (i32.add
        (local.get 4)
        (local.get 9)))
    (drop
      (call $printf
        (local.get 8)
        (local.get 10)))
    (local.set 11
      (i32.const 8))
    (local.set 12
      (call $malloc
        (local.get 11)))
    (i32.store offset=36
      (local.get 4)
      (local.get 12))
    (local.set 13
      (i32.const 1234))
    (local.set 14
      (i32.const 0))
    (drop
      (call $printf
        (local.get 13)
        (local.get 14)))
    (local.set 15
      (i32.const 1000))
    (local.set 16
      (i32.load offset=36
        (local.get 4)))
    (call $print_heap_metadata_emmalloc
      (local.get 16))
    (local.set 17
      (call $malloc
        (local.get 15)))
    (i32.store offset=32
      (local.get 4)
      (local.get 17))
    (local.set 18
      (i32.const 1242))
    (local.set 19
      (i32.const 0))
    (drop
      (call $printf
        (local.get 18)
        (local.get 19)))
    (local.set 20
      (i32.load offset=32
        (local.get 4)))
    (call $print_heap_metadata_emmalloc
      (local.get 20))
    (local.set 21
      (i32.const 1250))
    (local.set 22
      (i32.const 0))
    (drop
      (call $printf
        (local.get 21)
        (local.get 22)))
    (local.set 23
      (i32.load offset=36
        (local.get 4)))
    (local.set 24
      (i32.load offset=44
        (local.get 4)))
    (local.set 25
      (i32.load offset=40
        (local.get 4)))
    (drop
      (call $memcpy
        (local.get 23)
        (local.get 24)
        (local.get 25)))
    (local.set 26
      (i32.const 1234))
    (local.set 27
      (i32.const 0))
    (drop
      (call $printf
        (local.get 26)
        (local.get 27)))
    (local.set 28
      (i32.load offset=36
        (local.get 4)))
    (call $print_heap_metadata_emmalloc
      (local.get 28))
    (local.set 29
      (i32.const 1259))
    (local.set 30
      (i32.const 0))
    (drop
      (call $printf
        (local.get 29)
        (local.get 30)))
    (local.set 31
      (i32.load offset=32
        (local.get 4)))
    (call $print_heap_metadata_emmalloc
      (local.get 31))
    (local.set 32
      (i32.const 1279))
    (local.set 33
      (i32.const 0))
    (drop
      (call $printf
        (local.get 32)
        (local.get 33)))
    (local.set 34
      (i32.load offset=36
        (local.get 4)))
    (call $free
      (local.get 34))
    (local.set 35
      (i32.const 1234))
    (local.set 36
      (i32.const 0))
    (drop
      (call $printf
        (local.get 35)
        (local.get 36)))
    (local.set 37
      (i32.load offset=36
        (local.get 4)))
    (call $print_heap_metadata_emmalloc
      (local.get 37))
    (local.set 38
      (i32.const 1242))
    (local.set 39
      (i32.const 0))
    (drop
      (call $printf
        (local.get 38)
        (local.get 39)))
    (local.set 40
      (i32.load offset=32
        (local.get 4)))
    (call $print_heap_metadata_emmalloc
      (local.get 40))
    (local.set 41
      (i32.const 48))
    (local.set 42
      (i32.add
        (local.get 4)
        (local.get 41)))
    (global.set 0
      (local.get 42))
    (return))
  (func $main (type 10) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    (local.set 2
      (global.get 0))
    (local.set 3
      (i32.const 16))
    (local.set 4
      (i32.sub
        (local.get 2)
        (local.get 3)))
    (global.set 0
      (local.get 4))
    (local.set 5
      (i32.const 3))
    (local.set 6
      (i32.add
        (local.get 4)
        (local.get 5)))
    (local.set 7
      (local.get 6))
    (local.set 8
      (i32.const 0))
    (local.set 9
      (i32.const 0))
    (i32.store offset=12
      (local.get 4)
      (local.get 9))
    (i32.store offset=8
      (local.get 4)
      (local.get 0))
    (i32.store offset=4
      (local.get 4)
      (local.get 1))
    (i32.store8 offset=3
      (local.get 4)
      (local.get 8))
    (local.set 10
      (i32.const 1293))
    (local.set 11
      (i32.const 0))
    (drop
      (call $emscripten_asm_const_iii
        (i32.const 0)
        (local.get 7)
        (local.get 11)))
    (local.set 12
      (i32.const 0))
    (local.set 13
      (i32.const 16))
    (local.set 14
      (i32.add
        (local.get 4)
        (local.get 13)))
    (global.set 0
      (local.get 14))
    (return
      (local.get 12)))
  (func $__emscripten_stdout_close (type 8) (param i32) (result i32)
    (i32.const 0))
  (func $__emscripten_stdout_seek (type 3) (param i32 i64 i32) (result i64)
    (i64.const 0))
  (func $__errno_location (type 7) (result i32)
    (i32.const 4072))
  (func $isdigit (type 8) (param i32) (result i32)
    (i32.lt_u
      (i32.add
        (local.get 0)
        (i32.const -48))
      (i32.const 10)))
  (func $pthread_self (type 7) (result i32)
    (i32.const 2796))
  (func $wcrtomb (type 0) (param i32 i32 i32) (result i32)
    (local i32)
    (local.set 3
      (i32.const 1))
    (block  ;; label = @1
      (block  ;; label = @2
        (br_if 0 (;@2;)
          (i32.eqz
            (local.get 0)))
        (br_if 1 (;@1;)
          (i32.le_u
            (local.get 1)
            (i32.const 127)))
        (block  ;; label = @3
          (block  ;; label = @4
            (br_if 0 (;@4;)
              (i32.load
                (i32.load offset=188
                  (call $__pthread_self))))
            (br_if 3 (;@1;)
              (i32.eq
                (i32.and
                  (local.get 1)
                  (i32.const -128))
                (i32.const 57216)))
            (i32.store
              (call $__errno_location)
              (i32.const 25))
            (br 1 (;@3;)))
          (block  ;; label = @5
            (br_if 0 (;@5;)
              (i32.gt_u
                (local.get 1)
                (i32.const 2047)))
            (i32.store8 offset=1
              (local.get 0)
              (i32.or
                (i32.and
                  (local.get 1)
                  (i32.const 63))
                (i32.const 128)))
            (i32.store8
              (local.get 0)
              (i32.or
                (i32.shr_u
                  (local.get 1)
                  (i32.const 6))
                (i32.const 192)))
            (return
              (i32.const 2)))
          (block  ;; label = @6
            (block  ;; label = @7
              (br_if 0 (;@7;)
                (i32.lt_u
                  (local.get 1)
                  (i32.const 55296)))
              (br_if 1 (;@6;)
                (i32.ne
                  (i32.and
                    (local.get 1)
                    (i32.const -8192))
                  (i32.const 57344))))
            (i32.store8 offset=2
              (local.get 0)
              (i32.or
                (i32.and
                  (local.get 1)
                  (i32.const 63))
                (i32.const 128)))
            (i32.store8
              (local.get 0)
              (i32.or
                (i32.shr_u
                  (local.get 1)
                  (i32.const 12))
                (i32.const 224)))
            (i32.store8 offset=1
              (local.get 0)
              (i32.or
                (i32.and
                  (i32.shr_u
                    (local.get 1)
                    (i32.const 6))
                  (i32.const 63))
                (i32.const 128)))
            (return
              (i32.const 3)))
          (block  ;; label = @8
            (br_if 0 (;@8;)
              (i32.gt_u
                (i32.add
                  (local.get 1)
                  (i32.const -65536))
                (i32.const 1048575)))
            (i32.store8 offset=3
              (local.get 0)
              (i32.or
                (i32.and
                  (local.get 1)
                  (i32.const 63))
                (i32.const 128)))
            (i32.store8
              (local.get 0)
              (i32.or
                (i32.shr_u
                  (local.get 1)
                  (i32.const 18))
                (i32.const 240)))
            (i32.store8 offset=2
              (local.get 0)
              (i32.or
                (i32.and
                  (i32.shr_u
                    (local.get 1)
                    (i32.const 6))
                  (i32.const 63))
                (i32.const 128)))
            (i32.store8 offset=1
              (local.get 0)
              (i32.or
                (i32.and
                  (i32.shr_u
                    (local.get 1)
                    (i32.const 12))
                  (i32.const 63))
                (i32.const 128)))
            (return
              (i32.const 4)))
          (i32.store
            (call $__errno_location)
            (i32.const 25)))
        (local.set 3
          (i32.const -1)))
      (return
        (local.get 3)))
    (i32.store8
      (local.get 0)
      (local.get 1))
    (i32.const 1))
  (func $__pthread_self (type 7) (result i32)
    (call $pthread_self))
  (func $wctomb (type 10) (param i32 i32) (result i32)
    (block  ;; label = @1
      (br_if 0 (;@1;)
        (local.get 0))
      (return
        (i32.const 0)))
    (call $wcrtomb
      (local.get 0)
      (local.get 1)
      (i32.const 0)))
  (func $frexp (type 11) (param f64 i32) (result f64)
    (local i32 i64)
    (block  ;; label = @1
      (br_if 0 (;@1;)
        (i32.eq
          (local.tee 2
            (i32.and
              (i32.wrap_i64
                (i64.shr_u
                  (local.tee 3
                    (i64.reinterpret_f64
                      (local.get 0)))
                  (i64.const 52)))
              (i32.const 2047)))
          (i32.const 2047)))
      (block  ;; label = @2
        (br_if 0 (;@2;)
          (local.get 2))
        (block  ;; label = @3
          (block  ;; label = @4
            (br_if 0 (;@4;)
              (f64.ne
                (local.get 0)
                (f64.const 0x0p+0 (;=0;))))
            (local.set 2
              (i32.const 0))
            (br 1 (;@3;)))
          (local.set 0
            (call $frexp
              (f64.mul
                (local.get 0)
                (f64.const 0x1p+64 (;=1.84467e+19;)))
              (local.get 1)))
          (local.set 2
            (i32.add
              (i32.load
                (local.get 1))
              (i32.const -64))))
        (i32.store
          (local.get 1)
          (local.get 2))
        (return
          (local.get 0)))
      (i32.store
        (local.get 1)
        (i32.add
          (local.get 2)
          (i32.const -1022)))
      (local.set 0
        (f64.reinterpret_i64
          (i64.or
            (i64.and
              (local.get 3)
              (i64.const -9218868437227405313))
            (i64.const 4602678819172646912)))))
    (local.get 0))
  (func $__vfprintf_internal (type 12) (param i32 i32 i32 i32 i32) (result i32)
    (local i32 i32 i32)
    (global.set 0
      (local.tee 5
        (i32.sub
          (global.get 0)
          (i32.const 208))))
    (i32.store offset=204
      (local.get 5)
      (local.get 2))
    (local.set 2
      (i32.const 0))
    (drop
      (call $memset
        (i32.add
          (local.get 5)
          (i32.const 160))
        (i32.const 0)
        (i32.const 40)))
    (i32.store offset=200
      (local.get 5)
      (i32.load offset=204
        (local.get 5)))
    (block  ;; label = @1
      (block  ;; label = @2
        (br_if 0 (;@2;)
          (i32.ge_s
            (call $printf_core
              (i32.const 0)
              (local.get 1)
              (i32.add
                (local.get 5)
                (i32.const 200))
              (i32.add
                (local.get 5)
                (i32.const 80))
              (i32.add
                (local.get 5)
                (i32.const 160))
              (local.get 3)
              (local.get 4))
            (i32.const 0)))
        (local.set 1
          (i32.const -1))
        (br 1 (;@1;)))
      (block  ;; label = @3
        (br_if 0 (;@3;)
          (i32.lt_s
            (i32.load offset=76
              (local.get 0))
            (i32.const 0)))
        (local.set 2
          (call $__lockfile
            (local.get 0))))
      (local.set 6
        (i32.load
          (local.get 0)))
      (block  ;; label = @4
        (br_if 0 (;@4;)
          (i32.gt_s
            (i32.load8_s offset=74
              (local.get 0))
            (i32.const 0)))
        (i32.store
          (local.get 0)
          (i32.and
            (local.get 6)
            (i32.const -33))))
      (local.set 6
        (i32.and
          (local.get 6)
          (i32.const 32)))
      (block  ;; label = @5
        (block  ;; label = @6
          (br_if 0 (;@6;)
            (i32.eqz
              (i32.load offset=48
                (local.get 0))))
          (local.set 1
            (call $printf_core
              (local.get 0)
              (local.get 1)
              (i32.add
                (local.get 5)
                (i32.const 200))
              (i32.add
                (local.get 5)
                (i32.const 80))
              (i32.add
                (local.get 5)
                (i32.const 160))
              (local.get 3)
              (local.get 4)))
          (br 1 (;@5;)))
        (i32.store offset=48
          (local.get 0)
          (i32.const 80))
        (i32.store offset=16
          (local.get 0)
          (i32.add
            (local.get 5)
            (i32.const 80)))
        (i32.store offset=28
          (local.get 0)
          (local.get 5))
        (i32.store offset=20
          (local.get 0)
          (local.get 5))
        (local.set 7
          (i32.load offset=44
            (local.get 0)))
        (i32.store offset=44
          (local.get 0)
          (local.get 5))
        (local.set 1
          (call $printf_core
            (local.get 0)
            (local.get 1)
            (i32.add
              (local.get 5)
              (i32.const 200))
            (i32.add
              (local.get 5)
              (i32.const 80))
            (i32.add
              (local.get 5)
              (i32.const 160))
            (local.get 3)
            (local.get 4)))
        (br_if 0 (;@6;)
          (i32.eqz
            (local.get 7)))
        (drop
          (call_indirect (type 0)
            (local.get 0)
            (i32.const 0)
            (i32.const 0)
            (i32.load offset=36
              (local.get 0))))
        (i32.store offset=48
          (local.get 0)
          (i32.const 0))
        (i32.store offset=44
          (local.get 0)
          (local.get 7))
        (i32.store offset=28
          (local.get 0)
          (i32.const 0))
        (i32.store offset=16
          (local.get 0)
          (i32.const 0))
        (local.set 3
          (i32.load offset=20
            (local.get 0)))
        (i32.store offset=20
          (local.get 0)
          (i32.const 0))
        (local.set 1
          (select
            (local.get 1)
            (i32.const -1)
            (local.get 3))))
      (i32.store
        (local.get 0)
        (i32.or
          (local.tee 3
            (i32.load
              (local.get 0)))
          (local.get 6)))
      (local.set 1
        (select
          (i32.const -1)
          (local.get 1)
          (i32.and
            (local.get 3)
            (i32.const 32))))
      (br_if 0 (;@6;)
        (i32.eqz
          (local.get 2)))
      (call $__unlockfile
        (local.get 0)))
    (global.set 0
      (i32.add
        (local.get 5)
        (i32.const 208)))
    (local.get 1))
  (func $printf_core (type 13) (param i32 i32 i32 i32 i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64)
    (global.set 0
      (local.tee 7
        (i32.sub
          (global.get 0)
          (i32.const 80))))
    (i32.store offset=76
      (local.get 7)
      (local.get 1))
    (local.set 8
      (i32.add
        (local.get 7)
        (i32.const 55)))
    (local.set 9
      (i32.add
        (local.get 7)
        (i32.const 56)))
    (local.set 10
      (i32.const 0))
    (local.set 11
      (i32.const 0))
    (local.set 1
      (i32.const 0))
    (block  ;; label = @1
      (block  ;; label = @2
        (loop  ;; label = @3
          (block  ;; label = @4
            (br_if 0 (;@4;)
              (i32.lt_s
                (local.get 11)
                (i32.const 0)))
            (block  ;; label = @5
              (br_if 0 (;@5;)
                (i32.le_s
                  (local.get 1)
                  (i32.sub
                    (i32.const 2147483647)
                    (local.get 11))))
              (i32.store
                (call $__errno_location)
                (i32.const 61))
              (local.set 11
                (i32.const -1))
              (br 1 (;@4;)))
            (local.set 11
              (i32.add
                (local.get 1)
                (local.get 11))))
          (local.set 1
            (local.tee 12
              (i32.load offset=76
                (local.get 7))))
          (block  ;; label = @6
            (block  ;; label = @7
              (block  ;; label = @8
                (block  ;; label = @9
                  (block  ;; label = @10
                    (block  ;; label = @11
                      (block  ;; label = @12
                        (block  ;; label = @13
                          (block  ;; label = @14
                            (block  ;; label = @15
                              (block  ;; label = @16
                                (block  ;; label = @17
                                  (block  ;; label = @18
                                    (block  ;; label = @19
                                      (br_if 0 (;@19;)
                                        (i32.eqz
                                          (local.tee 13
                                            (i32.load8_u
                                              (local.get 12)))))
                                      (block  ;; label = @20
                                        (loop  ;; label = @21
                                          (block  ;; label = @22
                                            (block  ;; label = @23
                                              (block  ;; label = @24
                                                (br_if 0 (;@24;)
                                                  (local.tee 13
                                                    (i32.and
                                                      (local.get 13)
                                                      (i32.const 255))))
                                                (local.set 13
                                                  (local.get 1))
                                                (br 1 (;@23;)))
                                              (br_if 1 (;@23;)
                                                (i32.ne
                                                  (local.get 13)
                                                  (i32.const 37)))
                                              (local.set 13
                                                (local.get 1))
                                              (loop  ;; label = @25
                                                (br_if 1 (;@24;)
                                                  (i32.ne
                                                    (i32.load8_u offset=1
                                                      (local.get 1))
                                                    (i32.const 37)))
                                                (i32.store offset=76
                                                  (local.get 7)
                                                  (local.tee 14
                                                    (i32.add
                                                      (local.get 1)
                                                      (i32.const 2))))
                                                (local.set 13
                                                  (i32.add
                                                    (local.get 13)
                                                    (i32.const 1)))
                                                (local.set 15
                                                  (i32.load8_u offset=2
                                                    (local.get 1)))
                                                (local.set 1
                                                  (local.get 14))
                                                (br_if 0 (;@25;)
                                                  (i32.eq
                                                    (local.get 15)
                                                    (i32.const 37)))))
                                            (local.set 1
                                              (i32.sub
                                                (local.get 13)
                                                (local.get 12)))
                                            (block  ;; label = @26
                                              (br_if 0 (;@26;)
                                                (i32.eqz
                                                  (local.get 0)))
                                              (call $out
                                                (local.get 0)
                                                (local.get 12)
                                                (local.get 1)))
                                            (br_if 17 (;@9;)
                                              (local.get 1))
                                            (local.set 14
                                              (call $isdigit
                                                (i32.load8_s offset=1
                                                  (i32.load offset=76
                                                    (local.get 7)))))
                                            (local.set 16
                                              (i32.const -1))
                                            (local.set 13
                                              (i32.const 1))
                                            (local.set 1
                                              (i32.load offset=76
                                                (local.get 7)))
                                            (block  ;; label = @27
                                              (br_if 0 (;@27;)
                                                (i32.eqz
                                                  (local.get 14)))
                                              (br_if 0 (;@27;)
                                                (i32.ne
                                                  (i32.load8_u offset=2
                                                    (local.get 1))
                                                  (i32.const 36)))
                                              (local.set 16
                                                (i32.add
                                                  (i32.load8_s offset=1
                                                    (local.get 1))
                                                  (i32.const -48)))
                                              (local.set 10
                                                (i32.const 1))
                                              (local.set 13
                                                (i32.const 3)))
                                            (i32.store offset=76
                                              (local.get 7)
                                              (local.tee 1
                                                (i32.add
                                                  (local.get 1)
                                                  (local.get 13))))
                                            (local.set 13
                                              (i32.const 0))
                                            (block  ;; label = @28
                                              (block  ;; label = @29
                                                (br_if 0 (;@29;)
                                                  (i32.le_u
                                                    (local.tee 15
                                                      (i32.add
                                                        (local.tee 17
                                                          (i32.load8_s
                                                            (local.get 1)))
                                                        (i32.const -32)))
                                                    (i32.const 31)))
                                                (local.set 14
                                                  (local.get 1))
                                                (br 1 (;@28;)))
                                              (local.set 14
                                                (local.get 1))
                                              (br_if 0 (;@29;)
                                                (i32.eqz
                                                  (i32.and
                                                    (local.tee 15
                                                      (i32.shl
                                                        (i32.const 1)
                                                        (local.get 15)))
                                                    (i32.const 75913))))
                                              (loop  ;; label = @30
                                                (i32.store offset=76
                                                  (local.get 7)
                                                  (local.tee 14
                                                    (i32.add
                                                      (local.get 1)
                                                      (i32.const 1))))
                                                (local.set 13
                                                  (i32.or
                                                    (local.get 15)
                                                    (local.get 13)))
                                                (br_if 1 (;@29;)
                                                  (i32.gt_u
                                                    (local.tee 15
                                                      (i32.add
                                                        (local.tee 17
                                                          (i32.load8_s offset=1
                                                            (local.get 1)))
                                                        (i32.const -32)))
                                                    (i32.const 31)))
                                                (local.set 1
                                                  (local.get 14))
                                                (br_if 0 (;@30;)
                                                  (i32.and
                                                    (local.tee 15
                                                      (i32.shl
                                                        (i32.const 1)
                                                        (local.get 15)))
                                                    (i32.const 75913)))))
                                            (block  ;; label = @31
                                              (block  ;; label = @32
                                                (br_if 0 (;@32;)
                                                  (i32.ne
                                                    (local.get 17)
                                                    (i32.const 42)))
                                                (block  ;; label = @33
                                                  (block  ;; label = @34
                                                    (br_if 0 (;@34;)
                                                      (i32.eqz
                                                        (call $isdigit
                                                          (i32.load8_s offset=1
                                                            (local.get 14)))))
                                                    (br_if 0 (;@34;)
                                                      (i32.ne
                                                        (i32.load8_u offset=2
                                                          (local.tee 14
                                                            (i32.load offset=76
                                                              (local.get 7))))
                                                        (i32.const 36)))
                                                    (i32.store
                                                      (i32.add
                                                        (i32.add
                                                          (i32.shl
                                                            (i32.load8_s offset=1
                                                              (local.get 14))
                                                            (i32.const 2))
                                                          (local.get 4))
                                                        (i32.const -192))
                                                      (i32.const 10))
                                                    (local.set 1
                                                      (i32.add
                                                        (local.get 14)
                                                        (i32.const 3)))
                                                    (local.set 18
                                                      (i32.load
                                                        (i32.add
                                                          (i32.add
                                                            (i32.shl
                                                              (i32.load8_s offset=1
                                                                (local.get 14))
                                                              (i32.const 3))
                                                            (local.get 3))
                                                          (i32.const -384))))
                                                    (local.set 10
                                                      (i32.const 1))
                                                    (br 1 (;@33;)))
                                                  (br_if 21 (;@13;)
                                                    (local.get 10))
                                                  (local.set 10
                                                    (i32.const 0))
                                                  (local.set 18
                                                    (i32.const 0))
                                                  (block  ;; label = @35
                                                    (br_if 0 (;@35;)
                                                      (i32.eqz
                                                        (local.get 0)))
                                                    (i32.store
                                                      (local.get 2)
                                                      (i32.add
                                                        (local.tee 1
                                                          (i32.load
                                                            (local.get 2)))
                                                        (i32.const 4)))
                                                    (local.set 18
                                                      (i32.load
                                                        (local.get 1))))
                                                  (local.set 1
                                                    (i32.add
                                                      (i32.load offset=76
                                                        (local.get 7))
                                                      (i32.const 1))))
                                                (i32.store offset=76
                                                  (local.get 7)
                                                  (local.get 1))
                                                (br_if 1 (;@34;)
                                                  (i32.gt_s
                                                    (local.get 18)
                                                    (i32.const -1)))
                                                (local.set 18
                                                  (i32.sub
                                                    (i32.const 0)
                                                    (local.get 18)))
                                                (local.set 13
                                                  (i32.or
                                                    (local.get 13)
                                                    (i32.const 8192)))
                                                (br 1 (;@34;)))
                                              (br_if 19 (;@16;)
                                                (i32.lt_s
                                                  (local.tee 18
                                                    (call $getint
                                                      (i32.add
                                                        (local.get 7)
                                                        (i32.const 76))))
                                                  (i32.const 0)))
                                              (local.set 1
                                                (i32.load offset=76
                                                  (local.get 7))))
                                            (local.set 19
                                              (i32.const -1))
                                            (block  ;; label = @36
                                              (br_if 0 (;@36;)
                                                (i32.ne
                                                  (i32.load8_u
                                                    (local.get 1))
                                                  (i32.const 46)))
                                              (block  ;; label = @37
                                                (br_if 0 (;@37;)
                                                  (i32.ne
                                                    (i32.load8_u offset=1
                                                      (local.get 1))
                                                    (i32.const 42)))
                                                (block  ;; label = @38
                                                  (br_if 0 (;@38;)
                                                    (i32.eqz
                                                      (call $isdigit
                                                        (i32.load8_s offset=2
                                                          (local.get 1)))))
                                                  (br_if 0 (;@38;)
                                                    (i32.ne
                                                      (i32.load8_u offset=3
                                                        (local.tee 1
                                                          (i32.load offset=76
                                                            (local.get 7))))
                                                      (i32.const 36)))
                                                  (i32.store
                                                    (i32.add
                                                      (i32.add
                                                        (i32.shl
                                                          (i32.load8_s offset=2
                                                            (local.get 1))
                                                          (i32.const 2))
                                                        (local.get 4))
                                                      (i32.const -192))
                                                    (i32.const 10))
                                                  (local.set 19
                                                    (i32.load
                                                      (i32.add
                                                        (i32.add
                                                          (i32.shl
                                                            (i32.load8_s offset=2
                                                              (local.get 1))
                                                            (i32.const 3))
                                                          (local.get 3))
                                                        (i32.const -384))))
                                                  (i32.store offset=76
                                                    (local.get 7)
                                                    (local.tee 1
                                                      (i32.add
                                                        (local.get 1)
                                                        (i32.const 4))))
                                                  (br 2 (;@36;)))
                                                (br_if 20 (;@18;)
                                                  (local.get 10))
                                                (block  ;; label = @39
                                                  (block  ;; label = @40
                                                    (br_if 0 (;@40;)
                                                      (local.get 0))
                                                    (local.set 19
                                                      (i32.const 0))
                                                    (br 1 (;@39;)))
                                                  (i32.store
                                                    (local.get 2)
                                                    (i32.add
                                                      (local.tee 1
                                                        (i32.load
                                                          (local.get 2)))
                                                      (i32.const 4)))
                                                  (local.set 19
                                                    (i32.load
                                                      (local.get 1))))
                                                (i32.store offset=76
                                                  (local.get 7)
                                                  (local.tee 1
                                                    (i32.add
                                                      (i32.load offset=76
                                                        (local.get 7))
                                                      (i32.const 2))))
                                                (br 1 (;@39;)))
                                              (i32.store offset=76
                                                (local.get 7)
                                                (i32.add
                                                  (local.get 1)
                                                  (i32.const 1)))
                                              (local.set 19
                                                (call $getint
                                                  (i32.add
                                                    (local.get 7)
                                                    (i32.const 76))))
                                              (local.set 1
                                                (i32.load offset=76
                                                  (local.get 7))))
                                            (local.set 14
                                              (i32.const 0))
                                            (loop  ;; label = @41
                                              (local.set 15
                                                (local.get 14))
                                              (local.set 20
                                                (i32.const -1))
                                              (br_if 20 (;@21;)
                                                (i32.gt_u
                                                  (i32.add
                                                    (i32.load8_s
                                                      (local.get 1))
                                                    (i32.const -65))
                                                  (i32.const 57)))
                                              (i32.store offset=76
                                                (local.get 7)
                                                (local.tee 17
                                                  (i32.add
                                                    (local.get 1)
                                                    (i32.const 1))))
                                              (local.set 14
                                                (i32.load8_s
                                                  (local.get 1)))
                                              (local.set 1
                                                (local.get 17))
                                              (br_if 0 (;@41;)
                                                (i32.lt_u
                                                  (i32.add
                                                    (local.tee 14
                                                      (i32.load8_u
                                                        (i32.add
                                                          (i32.add
                                                            (local.get 14)
                                                            (i32.mul
                                                              (local.get 15)
                                                              (i32.const 58)))
                                                          (i32.const 1375))))
                                                    (i32.const -1))
                                                  (i32.const 8))))
                                            (br_if 19 (;@22;)
                                              (i32.eqz
                                                (local.get 14)))
                                            (block  ;; label = @42
                                              (block  ;; label = @43
                                                (block  ;; label = @44
                                                  (block  ;; label = @45
                                                    (br_if 0 (;@45;)
                                                      (i32.ne
                                                        (local.get 14)
                                                        (i32.const 19)))
                                                    (local.set 20
                                                      (i32.const -1))
                                                    (br_if 1 (;@44;)
                                                      (i32.le_s
                                                        (local.get 16)
                                                        (i32.const -1)))
                                                    (br 23 (;@22;)))
                                                  (br_if 1 (;@44;)
                                                    (i32.lt_s
                                                      (local.get 16)
                                                      (i32.const 0)))
                                                  (i32.store
                                                    (i32.add
                                                      (local.get 4)
                                                      (i32.shl
                                                        (local.get 16)
                                                        (i32.const 2)))
                                                    (local.get 14))
                                                  (i64.store offset=64
                                                    (local.get 7)
                                                    (i64.load
                                                      (i32.add
                                                        (local.get 3)
                                                        (i32.shl
                                                          (local.get 16)
                                                          (i32.const 3))))))
                                                (local.set 1
                                                  (i32.const 0))
                                                (br_if 19 (;@26;)
                                                  (i32.eqz
                                                    (local.get 0)))
                                                (br 1 (;@44;)))
                                              (br_if 17 (;@28;)
                                                (i32.eqz
                                                  (local.get 0)))
                                              (call $pop_arg
                                                (i32.add
                                                  (local.get 7)
                                                  (i32.const 64))
                                                (local.get 14)
                                                (local.get 2)
                                                (local.get 6))
                                              (local.set 17
                                                (i32.load offset=76
                                                  (local.get 7))))
                                            (local.set 13
                                              (select
                                                (local.tee 21
                                                  (i32.and
                                                    (local.get 13)
                                                    (i32.const -65537)))
                                                (local.get 13)
                                                (i32.and
                                                  (local.get 13)
                                                  (i32.const 8192))))
                                            (local.set 20
                                              (i32.const 0))
                                            (local.set 16
                                              (i32.const 1416))
                                            (local.set 14
                                              (local.get 9))
                                            (br_if 2 (;@43;)
                                              (i32.le_u
                                                (local.tee 17
                                                  (i32.add
                                                    (local.tee 1
                                                      (select
                                                        (select
                                                          (i32.and
                                                            (local.tee 1
                                                              (i32.load8_s
                                                                (i32.add
                                                                  (local.get 17)
                                                                  (i32.const -1))))
                                                            (i32.const -33))
                                                          (local.get 1)
                                                          (i32.eq
                                                            (i32.and
                                                              (local.get 1)
                                                              (i32.const 15))
                                                            (i32.const 3)))
                                                        (local.get 1)
                                                        (local.get 15)))
                                                    (i32.const -88)))
                                                (i32.const 32)))
                                            (block  ;; label = @46
                                              (block  ;; label = @47
                                                (block  ;; label = @48
                                                  (block  ;; label = @49
                                                    (block  ;; label = @50
                                                      (br_if 0 (;@50;)
                                                        (i32.le_u
                                                          (local.tee 15
                                                            (i32.add
                                                              (local.get 1)
                                                              (i32.const -65)))
                                                          (i32.const 6)))
                                                      (br_if 20 (;@30;)
                                                        (i32.ne
                                                          (local.get 1)
                                                          (i32.const 83)))
                                                      (br_if 1 (;@49;)
                                                        (i32.eqz
                                                          (local.get 19)))
                                                      (local.set 14
                                                        (i32.load offset=64
                                                          (local.get 7)))
                                                      (br 3 (;@47;)))
                                                    (br_table 8 (;@42;) 19 (;@31;) 1 (;@49;) 19 (;@31;) 8 (;@42;) 8 (;@42;) 8 (;@42;) 8 (;@42;)
                                                      (local.get 15)))
                                                  (local.set 1
                                                    (i32.const 0))
                                                  (call $pad
                                                    (local.get 0)
                                                    (i32.const 32)
                                                    (local.get 18)
                                                    (i32.const 0)
                                                    (local.get 13))
                                                  (br 2 (;@48;)))
                                                (i32.store offset=12
                                                  (local.get 7)
                                                  (i32.const 0))
                                                (i64.store32 offset=8
                                                  (local.get 7)
                                                  (i64.load offset=64
                                                    (local.get 7)))
                                                (i32.store offset=64
                                                  (local.get 7)
                                                  (i32.add
                                                    (local.get 7)
                                                    (i32.const 8)))
                                                (local.set 19
                                                  (i32.const -1))
                                                (local.set 14
                                                  (i32.add
                                                    (local.get 7)
                                                    (i32.const 8))))
                                              (local.set 1
                                                (i32.const 0))
                                              (block  ;; label = @51
                                                (loop  ;; label = @52
                                                  (br_if 1 (;@51;)
                                                    (i32.eqz
                                                      (local.tee 15
                                                        (i32.load
                                                          (local.get 14)))))
                                                  (block  ;; label = @53
                                                    (br_if 0 (;@53;)
                                                      (local.tee 12
                                                        (i32.lt_s
                                                          (local.tee 15
                                                            (call $wctomb
                                                              (i32.add
                                                                (local.get 7)
                                                                (i32.const 4))
                                                              (local.get 15)))
                                                          (i32.const 0))))
                                                    (br_if 0 (;@53;)
                                                      (i32.gt_u
                                                        (local.get 15)
                                                        (i32.sub
                                                          (local.get 19)
                                                          (local.get 1))))
                                                    (local.set 14
                                                      (i32.add
                                                        (local.get 14)
                                                        (i32.const 4)))
                                                    (br_if 1 (;@52;)
                                                      (i32.gt_u
                                                        (local.get 19)
                                                        (local.tee 1
                                                          (i32.add
                                                            (local.get 15)
                                                            (local.get 1)))))
                                                    (br 2 (;@51;))))
                                                (local.set 20
                                                  (i32.const -1))
                                                (br_if 21 (;@32;)
                                                  (local.get 12)))
                                              (call $pad
                                                (local.get 0)
                                                (i32.const 32)
                                                (local.get 18)
                                                (local.get 1)
                                                (local.get 13))
                                              (block  ;; label = @54
                                                (br_if 0 (;@54;)
                                                  (local.get 1))
                                                (local.set 1
                                                  (i32.const 0))
                                                (br 1 (;@53;)))
                                              (local.set 15
                                                (i32.const 0))
                                              (local.set 14
                                                (i32.load offset=64
                                                  (local.get 7)))
                                              (loop  ;; label = @55
                                                (br_if 1 (;@54;)
                                                  (i32.eqz
                                                    (local.tee 12
                                                      (i32.load
                                                        (local.get 14)))))
                                                (br_if 1 (;@54;)
                                                  (i32.gt_s
                                                    (local.tee 15
                                                      (i32.add
                                                        (local.tee 12
                                                          (call $wctomb
                                                            (i32.add
                                                              (local.get 7)
                                                              (i32.const 4))
                                                            (local.get 12)))
                                                        (local.get 15)))
                                                    (local.get 1)))
                                                (call $out
                                                  (local.get 0)
                                                  (i32.add
                                                    (local.get 7)
                                                    (i32.const 4))
                                                  (local.get 12))
                                                (local.set 14
                                                  (i32.add
                                                    (local.get 14)
                                                    (i32.const 4)))
                                                (br_if 0 (;@55;)
                                                  (i32.lt_u
                                                    (local.get 15)
                                                    (local.get 1)))))
                                            (call $pad
                                              (local.get 0)
                                              (i32.const 32)
                                              (local.get 18)
                                              (local.get 1)
                                              (i32.xor
                                                (local.get 13)
                                                (i32.const 8192)))
                                            (local.set 1
                                              (select
                                                (local.get 18)
                                                (local.get 1)
                                                (i32.gt_s
                                                  (local.get 18)
                                                  (local.get 1))))
                                            (br 17 (;@38;)))
                                          (i32.store offset=76
                                            (local.get 7)
                                            (local.tee 14
                                              (i32.add
                                                (local.get 1)
                                                (i32.const 1))))
                                          (local.set 13
                                            (i32.load8_u offset=1
                                              (local.get 1)))
                                          (local.set 1
                                            (local.get 14))
                                          (br 0 (;@55;))
                                          (unreachable))
                                        (unreachable))
                                      (br_table 7 (;@48;) 12 (;@43;) 12 (;@43;) 12 (;@43;) 12 (;@43;) 12 (;@43;) 12 (;@43;) 12 (;@43;) 12 (;@43;) 1 (;@54;) 12 (;@43;) 3 (;@52;) 4 (;@51;) 1 (;@54;) 1 (;@54;) 1 (;@54;) 12 (;@43;) 4 (;@51;) 12 (;@43;) 12 (;@43;) 12 (;@43;) 12 (;@43;) 8 (;@47;) 5 (;@50;) 6 (;@49;) 12 (;@43;) 12 (;@43;) 2 (;@53;) 12 (;@43;) 9 (;@46;) 12 (;@43;) 12 (;@43;) 7 (;@48;) 7 (;@48;)
                                        (local.get 17)))
                                    (local.set 20
                                      (local.get 11))
                                    (br_if 15 (;@40;)
                                      (local.get 0))
                                    (br_if 12 (;@43;)
                                      (i32.eqz
                                        (local.get 10)))
                                    (local.set 1
                                      (i32.const 1))
                                    (block  ;; label = @56
                                      (loop  ;; label = @57
                                        (br_if 1 (;@56;)
                                          (i32.eqz
                                            (local.tee 13
                                              (i32.load
                                                (i32.add
                                                  (local.get 4)
                                                  (i32.shl
                                                    (local.get 1)
                                                    (i32.const 2)))))))
                                        (call $pop_arg
                                          (i32.add
                                            (local.get 3)
                                            (i32.shl
                                              (local.get 1)
                                              (i32.const 3)))
                                          (local.get 13)
                                          (local.get 2)
                                          (local.get 6))
                                        (local.set 20
                                          (i32.const 1))
                                        (br_if 0 (;@57;)
                                          (i32.ne
                                            (local.tee 1
                                              (i32.add
                                                (local.get 1)
                                                (i32.const 1)))
                                            (i32.const 10)))
                                        (br 17 (;@40;))
                                        (unreachable))
                                      (unreachable))
                                    (local.set 20
                                      (i32.const 1))
                                    (br_if 15 (;@42;)
                                      (i32.gt_u
                                        (local.get 1)
                                        (i32.const 9)))
                                    (local.set 20
                                      (i32.const -1))
                                    (br_if 15 (;@42;)
                                      (i32.load
                                        (i32.add
                                          (local.get 4)
                                          (i32.shl
                                            (local.get 1)
                                            (i32.const 2)))))
                                    (block  ;; label = @58
                                      (loop  ;; label = @59
                                        (br_if 1 (;@58;)
                                          (i32.eq
                                            (local.tee 1
                                              (i32.add
                                                (local.get 1)
                                                (i32.const 1)))
                                            (i32.const 10)))
                                        (br_if 0 (;@59;)
                                          (i32.eqz
                                            (i32.load
                                              (i32.add
                                                (local.get 4)
                                                (i32.shl
                                                  (local.get 1)
                                                  (i32.const 2))))))))
                                    (local.set 20
                                      (select
                                        (i32.const -1)
                                        (i32.const 1)
                                        (i32.lt_u
                                          (local.get 1)
                                          (i32.const 10))))
                                    (br 15 (;@44;)))
                                  (local.set 1
                                    (call_indirect (type 1)
                                      (local.get 0)
                                      (f64.load offset=64
                                        (local.get 7))
                                      (local.get 18)
                                      (local.get 19)
                                      (local.get 13)
                                      (local.get 1)
                                      (local.get 5)))
                                  (br 12 (;@47;)))
                                (local.set 20
                                  (i32.const 0))
                                (local.set 14
                                  (select
                                    (local.tee 1
                                      (call $memchr
                                        (local.tee 12
                                          (select
                                            (local.tee 1
                                              (i32.load offset=64
                                                (local.get 7)))
                                            (i32.const 1426)
                                            (local.get 1)))
                                        (i32.const 0)
                                        (local.get 19)))
                                    (i32.add
                                      (local.get 12)
                                      (local.get 19))
                                    (local.get 1)))
                                (local.set 13
                                  (local.get 21))
                                (local.set 19
                                  (select
                                    (i32.sub
                                      (local.get 1)
                                      (local.get 12))
                                    (local.get 19)
                                    (local.get 1)))
                                (br 9 (;@50;)))
                              (i64.store8 offset=55
                                (local.get 7)
                                (i64.load offset=64
                                  (local.get 7)))
                              (local.set 19
                                (i32.const 1))
                              (local.set 12
                                (local.get 8))
                              (local.set 14
                                (local.get 9))
                              (local.set 13
                                (local.get 21))
                              (br 8 (;@51;)))
                            (block  ;; label = @60
                              (br_if 0 (;@60;)
                                (i64.gt_s
                                  (local.tee 22
                                    (i64.load offset=64
                                      (local.get 7)))
                                  (i64.const -1)))
                              (i64.store offset=64
                                (local.get 7)
                                (local.tee 22
                                  (i64.sub
                                    (i64.const 0)
                                    (local.get 22))))
                              (local.set 20
                                (i32.const 1))
                              (local.set 16
                                (i32.const 1416))
                              (br 6 (;@54;)))
                            (block  ;; label = @61
                              (br_if 0 (;@61;)
                                (i32.eqz
                                  (i32.and
                                    (local.get 13)
                                    (i32.const 2048))))
                              (local.set 20
                                (i32.const 1))
                              (local.set 16
                                (i32.const 1417))
                              (br 6 (;@55;)))
                            (local.set 16
                              (select
                                (i32.const 1418)
                                (i32.const 1416)
                                (local.tee 20
                                  (i32.and
                                    (local.get 13)
                                    (i32.const 1)))))
                            (br 5 (;@56;)))
                          (local.set 12
                            (call $fmt_o
                              (i64.load offset=64
                                (local.get 7))
                              (local.get 9)))
                          (local.set 20
                            (i32.const 0))
                          (local.set 16
                            (i32.const 1416))
                          (br_if 5 (;@56;)
                            (i32.eqz
                              (i32.and
                                (local.get 13)
                                (i32.const 8))))
                          (local.set 19
                            (select
                              (local.get 19)
                              (i32.add
                                (local.tee 1
                                  (i32.sub
                                    (local.get 9)
                                    (local.get 12)))
                                (i32.const 1))
                              (i32.gt_s
                                (local.get 19)
                                (local.get 1))))
                          (br 5 (;@56;)))
                        (local.set 19
                          (select
                            (local.get 19)
                            (i32.const 8)
                            (i32.gt_u
                              (local.get 19)
                              (i32.const 8))))
                        (local.set 13
                          (i32.or
                            (local.get 13)
                            (i32.const 8)))
                        (local.set 1
                          (i32.const 120)))
                      (local.set 12
                        (call $fmt_x
                          (i64.load offset=64
                            (local.get 7))
                          (local.get 9)
                          (i32.and
                            (local.get 1)
                            (i32.const 32))))
                      (local.set 20
                        (i32.const 0))
                      (local.set 16
                        (i32.const 1416))
                      (br_if 3 (;@58;)
                        (i32.eqz
                          (i32.and
                            (local.get 13)
                            (i32.const 8))))
                      (br_if 3 (;@58;)
                        (i64.eqz
                          (i64.load offset=64
                            (local.get 7))))
                      (local.set 16
                        (i32.add
                          (i32.shr_u
                            (local.get 1)
                            (i32.const 4))
                          (i32.const 1416)))
                      (local.set 20
                        (i32.const 2))
                      (br 3 (;@58;)))
                    (local.set 1
                      (i32.const 0))
                    (br_if 5 (;@56;)
                      (i32.gt_u
                        (local.tee 13
                          (i32.and
                            (local.get 15)
                            (i32.const 255)))
                        (i32.const 7)))
                    (block  ;; label = @62
                      (block  ;; label = @63
                        (block  ;; label = @64
                          (block  ;; label = @65
                            (block  ;; label = @66
                              (block  ;; label = @67
                                (block  ;; label = @68
                                  (br_table 0 (;@68;) 1 (;@67;) 2 (;@66;) 3 (;@65;) 4 (;@64;) 12 (;@56;) 5 (;@63;) 6 (;@62;) 0 (;@68;)
                                    (local.get 13)))
                                (i32.store
                                  (i32.load offset=64
                                    (local.get 7))
                                  (local.get 11))
                                (br 11 (;@57;)))
                              (i32.store
                                (i32.load offset=64
                                  (local.get 7))
                                (local.get 11))
                              (br 10 (;@58;)))
                            (i64.store
                              (i32.load offset=64
                                (local.get 7))
                              (i64.extend_i32_s
                                (local.get 11)))
                            (br 9 (;@59;)))
                          (i32.store16
                            (i32.load offset=64
                              (local.get 7))
                            (local.get 11))
                          (br 8 (;@60;)))
                        (i32.store8
                          (i32.load offset=64
                            (local.get 7))
                          (local.get 11))
                        (br 7 (;@61;)))
                      (i32.store
                        (i32.load offset=64
                          (local.get 7))
                        (local.get 11))
                      (br 6 (;@62;)))
                    (i64.store
                      (i32.load offset=64
                        (local.get 7))
                      (i64.extend_i32_s
                        (local.get 11)))
                    (br 5 (;@63;)))
                  (local.set 20
                    (i32.const 0))
                  (local.set 16
                    (i32.const 1416))
                  (local.set 22
                    (i64.load offset=64
                      (local.get 7))))
                (local.set 12
                  (call $fmt_u
                    (local.get 22)
                    (local.get 9))))
              (local.set 13
                (select
                  (i32.and
                    (local.get 13)
                    (i32.const -65537))
                  (local.get 13)
                  (i32.gt_s
                    (local.get 19)
                    (i32.const -1))))
              (local.set 22
                (i64.load offset=64
                  (local.get 7)))
              (block  ;; label = @69
                (block  ;; label = @70
                  (br_if 0 (;@70;)
                    (local.get 19))
                  (br_if 0 (;@70;)
                    (i32.eqz
                      (i64.eqz
                        (local.get 22))))
                  (local.set 19
                    (i32.const 0))
                  (local.set 12
                    (local.get 9))
                  (br 1 (;@69;)))
                (local.set 19
                  (select
                    (local.get 19)
                    (local.tee 1
                      (i32.add
                        (i32.sub
                          (local.get 9)
                          (local.get 12))
                        (i64.eqz
                          (local.get 22))))
                    (i32.gt_s
                      (local.get 19)
                      (local.get 1)))))
              (local.set 14
                (local.get 9)))
            (call $pad
              (local.get 0)
              (i32.const 32)
              (local.tee 1
                (select
                  (local.tee 14
                    (i32.add
                      (local.get 20)
                      (local.tee 17
                        (select
                          (local.tee 15
                            (i32.sub
                              (local.get 14)
                              (local.get 12)))
                          (local.get 19)
                          (i32.lt_s
                            (local.get 19)
                            (local.get 15))))))
                  (local.get 18)
                  (i32.lt_s
                    (local.get 18)
                    (local.get 14))))
              (local.get 14)
              (local.get 13))
            (call $out
              (local.get 0)
              (local.get 16)
              (local.get 20))
            (call $pad
              (local.get 0)
              (i32.const 48)
              (local.get 1)
              (local.get 14)
              (i32.xor
                (local.get 13)
                (i32.const 65536)))
            (call $pad
              (local.get 0)
              (i32.const 48)
              (local.get 17)
              (local.get 15)
              (i32.const 0))
            (call $out
              (local.get 0)
              (local.get 12)
              (local.get 15))
            (call $pad
              (local.get 0)
              (i32.const 32)
              (local.get 1)
              (local.get 14)
              (i32.xor
                (local.get 13)
                (i32.const 8192)))
            (br 1 (;@69;))))
        (local.set 20
          (i32.const 0))
        (br 1 (;@69;)))
      (local.set 20
        (i32.const -1)))
    (global.set 0
      (i32.add
        (local.get 7)
        (i32.const 80)))
    (local.get 20))
  (func $out (type 14) (param i32 i32 i32)
    (block  ;; label = @1
      (br_if 0 (;@1;)
        (i32.and
          (i32.load8_u
            (local.get 0))
          (i32.const 32)))
      (drop
        (call $__fwritex
          (local.get 1)
          (local.get 2)
          (local.get 0)))))
  (func $getint (type 8) (param i32) (result i32)
    (local i32 i32 i32)
    (local.set 1
      (i32.const 0))
    (block  ;; label = @1
      (br_if 0 (;@1;)
        (i32.eqz
          (call $isdigit
            (i32.load8_s
              (i32.load
                (local.get 0))))))
      (loop  ;; label = @2
        (local.set 3
          (i32.load8_s
            (local.tee 2
              (i32.load
                (local.get 0)))))
        (i32.store
          (local.get 0)
          (i32.add
            (local.get 2)
            (i32.const 1)))
        (local.set 1
          (i32.add
            (i32.add
              (local.get 3)
              (i32.mul
                (local.get 1)
                (i32.const 10)))
            (i32.const -48)))
        (br_if 0 (;@2;)
          (call $isdigit
            (i32.load8_s offset=1
              (local.get 2))))))
    (local.get 1))
  (func $pop_arg (type 6) (param i32 i32 i32 i32)
    (block  ;; label = @1
      (br_if 0 (;@1;)
        (i32.gt_u
          (local.get 1)
          (i32.const 20)))
      (br_if 0 (;@1;)
        (i32.gt_u
          (local.tee 1
            (i32.add
              (local.get 1)
              (i32.const -9)))
          (i32.const 9)))
      (block  ;; label = @2
        (block  ;; label = @3
          (block  ;; label = @4
            (block  ;; label = @5
              (block  ;; label = @6
                (block  ;; label = @7
                  (block  ;; label = @8
                    (block  ;; label = @9
                      (block  ;; label = @10
                        (block  ;; label = @11
                          (br_table 0 (;@11;) 1 (;@10;) 2 (;@9;) 3 (;@8;) 4 (;@7;) 5 (;@6;) 6 (;@5;) 7 (;@4;) 8 (;@3;) 9 (;@2;) 0 (;@11;)
                            (local.get 1)))
                        (i32.store
                          (local.get 2)
                          (i32.add
                            (local.tee 1
                              (i32.load
                                (local.get 2)))
                            (i32.const 4)))
                        (i32.store
                          (local.get 0)
                          (i32.load
                            (local.get 1)))
                        (return))
                      (i32.store
                        (local.get 2)
                        (i32.add
                          (local.tee 1
                            (i32.load
                              (local.get 2)))
                          (i32.const 4)))
                      (i64.store
                        (local.get 0)
                        (i64.load32_s
                          (local.get 1)))
                      (return))
                    (i32.store
                      (local.get 2)
                      (i32.add
                        (local.tee 1
                          (i32.load
                            (local.get 2)))
                        (i32.const 4)))
                    (i64.store
                      (local.get 0)
                      (i64.load32_u
                        (local.get 1)))
                    (return))
                  (i32.store
                    (local.get 2)
                    (i32.add
                      (local.tee 1
                        (i32.and
                          (i32.add
                            (i32.load
                              (local.get 2))
                            (i32.const 7))
                          (i32.const -8)))
                      (i32.const 8)))
                  (i64.store
                    (local.get 0)
                    (i64.load
                      (local.get 1)))
                  (return))
                (i32.store
                  (local.get 2)
                  (i32.add
                    (local.tee 1
                      (i32.load
                        (local.get 2)))
                    (i32.const 4)))
                (i64.store
                  (local.get 0)
                  (i64.load16_s
                    (local.get 1)))
                (return))
              (i32.store
                (local.get 2)
                (i32.add
                  (local.tee 1
                    (i32.load
                      (local.get 2)))
                  (i32.const 4)))
              (i64.store
                (local.get 0)
                (i64.load16_u
                  (local.get 1)))
              (return))
            (i32.store
              (local.get 2)
              (i32.add
                (local.tee 1
                  (i32.load
                    (local.get 2)))
                (i32.const 4)))
            (i64.store
              (local.get 0)
              (i64.load8_s
                (local.get 1)))
            (return))
          (i32.store
            (local.get 2)
            (i32.add
              (local.tee 1
                (i32.load
                  (local.get 2)))
              (i32.const 4)))
          (i64.store
            (local.get 0)
            (i64.load8_u
              (local.get 1)))
          (return))
        (i32.store
          (local.get 2)
          (i32.add
            (local.tee 1
              (i32.and
                (i32.add
                  (i32.load
                    (local.get 2))
                  (i32.const 7))
                (i32.const -8)))
            (i32.const 8)))
        (i64.store
          (local.get 0)
          (i64.load
            (local.get 1)))
        (return))
      (call_indirect (type 2)
        (local.get 0)
        (local.get 2)
        (local.get 3))))
  (func $pad (type 15) (param i32 i32 i32 i32 i32)
    (local i32 i32)
    (global.set 0
      (local.tee 5
        (i32.sub
          (global.get 0)
          (i32.const 256))))
    (block  ;; label = @1
      (br_if 0 (;@1;)
        (i32.le_s
          (local.get 2)
          (local.get 3)))
      (br_if 0 (;@1;)
        (i32.and
          (local.get 4)
          (i32.const 73728)))
      (drop
        (call $memset
          (local.get 5)
          (local.get 1)
          (select
            (local.tee 4
              (i32.sub
                (local.get 2)
                (local.get 3)))
            (i32.const 256)
            (local.tee 6
              (i32.lt_u
                (local.get 4)
                (i32.const 256))))))
      (block  ;; label = @2
        (br_if 0 (;@2;)
          (local.get 6))
        (local.set 2
          (i32.sub
            (local.get 2)
            (local.get 3)))
        (loop  ;; label = @3
          (call $out
            (local.get 0)
            (local.get 5)
            (i32.const 256))
          (br_if 0 (;@3;)
            (i32.gt_u
              (local.tee 4
                (i32.add
                  (local.get 4)
                  (i32.const -256)))
              (i32.const 255))))
        (local.set 4
          (i32.and
            (local.get 2)
            (i32.const 255))))
      (call $out
        (local.get 0)
        (local.get 5)
        (local.get 4)))
    (global.set 0
      (i32.add
        (local.get 5)
        (i32.const 256))))
  (func $fmt_o (type 16) (param i64 i32) (result i32)
    (block  ;; label = @1
      (br_if 0 (;@1;)
        (i64.eqz
          (local.get 0)))
      (loop  ;; label = @2
        (i32.store8
          (local.tee 1
            (i32.add
              (local.get 1)
              (i32.const -1)))
          (i32.or
            (i32.and
              (i32.wrap_i64
                (local.get 0))
              (i32.const 7))
            (i32.const 48)))
        (br_if 0 (;@2;)
          (i64.ne
            (local.tee 0
              (i64.shr_u
                (local.get 0)
                (i64.const 3)))
            (i64.const 0)))))
    (local.get 1))
  (func $fmt_x (type 17) (param i64 i32 i32) (result i32)
    (block  ;; label = @1
      (br_if 0 (;@1;)
        (i64.eqz
          (local.get 0)))
      (loop  ;; label = @2
        (i32.store8
          (local.tee 1
            (i32.add
              (local.get 1)
              (i32.const -1)))
          (i32.or
            (i32.load8_u
              (i32.add
                (i32.and
                  (i32.wrap_i64
                    (local.get 0))
                  (i32.const 15))
                (i32.const 1904)))
            (local.get 2)))
        (br_if 0 (;@2;)
          (i64.ne
            (local.tee 0
              (i64.shr_u
                (local.get 0)
                (i64.const 4)))
            (i64.const 0)))))
    (local.get 1))
  (func $fmt_u (type 16) (param i64 i32) (result i32)
    (local i32 i32 i32 i64)
    (block  ;; label = @1
      (block  ;; label = @2
        (br_if 0 (;@2;)
          (i64.ge_u
            (local.get 0)
            (i64.const 4294967296)))
        (local.set 5
          (local.get 0))
        (br 1 (;@1;)))
      (loop  ;; label = @3
        (i32.store8
          (local.tee 1
            (i32.add
              (local.get 1)
              (i32.const -1)))
          (i32.or
            (i32.wrap_i64
              (i64.sub
                (local.get 0)
                (i64.mul
                  (local.tee 5
                    (i64.div_u
                      (local.get 0)
                      (i64.const 10)))
                  (i64.const 10))))
            (i32.const 48)))
        (local.set 2
          (i64.gt_u
            (local.get 0)
            (i64.const 42949672959)))
        (local.set 0
          (local.get 5))
        (br_if 0 (;@3;)
          (local.get 2))))
    (block  ;; label = @4
      (br_if 0 (;@4;)
        (i32.eqz
          (local.tee 2
            (i32.wrap_i64
              (local.get 5)))))
      (loop  ;; label = @5
        (i32.store8
          (local.tee 1
            (i32.add
              (local.get 1)
              (i32.const -1)))
          (i32.or
            (i32.sub
              (local.get 2)
              (i32.mul
                (local.tee 3
                  (i32.div_u
                    (local.get 2)
                    (i32.const 10)))
                (i32.const 10)))
            (i32.const 48)))
        (local.set 4
          (i32.gt_u
            (local.get 2)
            (i32.const 9)))
        (local.set 2
          (local.get 3))
        (br_if 0 (;@5;)
          (local.get 4))))
    (local.get 1))
  (func $vfprintf (type 0) (param i32 i32 i32) (result i32)
    (call $__vfprintf_internal
      (local.get 0)
      (local.get 1)
      (local.get 2)
      (i32.const 4)
      (i32.const 5)))
  (func $fmt_fp (type 1) (param i32 f64 i32 i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i64 f64)
    (global.set 0
      (local.tee 6
        (i32.sub
          (global.get 0)
          (i32.const 560))))
    (i32.store offset=44
      (local.get 6)
      (i32.const 0))
    (block  ;; label = @1
      (block  ;; label = @2
        (br_if 0 (;@2;)
          (i64.gt_s
            (local.tee 22
              (call $__DOUBLE_BITS
                (local.get 1)))
            (i64.const -1)))
        (local.set 22
          (call $__DOUBLE_BITS
            (local.tee 1
              (f64.neg
                (local.get 1)))))
        (local.set 7
          (i32.const 1))
        (local.set 8
          (i32.const 1920))
        (br 1 (;@1;)))
      (block  ;; label = @3
        (br_if 0 (;@3;)
          (i32.eqz
            (i32.and
              (local.get 4)
              (i32.const 2048))))
        (local.set 7
          (i32.const 1))
        (local.set 8
          (i32.const 1923))
        (br 1 (;@2;)))
      (local.set 8
        (select
          (i32.const 1926)
          (i32.const 1921)
          (local.tee 7
            (i32.and
              (local.get 4)
              (i32.const 1))))))
    (block  ;; label = @4
      (block  ;; label = @5
        (br_if 0 (;@5;)
          (i64.ne
            (i64.and
              (local.get 22)
              (i64.const 9218868437227405312))
            (i64.const 9218868437227405312)))
        (call $pad
          (local.get 0)
          (i32.const 32)
          (local.get 2)
          (local.tee 9
            (i32.add
              (local.get 7)
              (i32.const 3)))
          (i32.and
            (local.get 4)
            (i32.const -65537)))
        (call $out
          (local.get 0)
          (local.get 8)
          (local.get 7))
        (call $out
          (local.get 0)
          (select
            (select
              (i32.const 1947)
              (i32.const 1951)
              (local.tee 10
                (i32.and
                  (i32.shr_u
                    (local.get 5)
                    (i32.const 5))
                  (i32.const 1))))
            (select
              (i32.const 1939)
              (i32.const 1943)
              (local.get 10))
            (f64.ne
              (local.get 1)
              (local.get 1)))
          (i32.const 3))
        (call $pad
          (local.get 0)
          (i32.const 32)
          (local.get 2)
          (local.get 9)
          (i32.xor
            (local.get 4)
            (i32.const 8192)))
        (br 1 (;@4;)))
      (block  ;; label = @6
        (br_if 0 (;@6;)
          (f64.eq
            (local.tee 1
              (f64.add
                (local.tee 1
                  (call $frexp
                    (local.get 1)
                    (i32.add
                      (local.get 6)
                      (i32.const 44))))
                (local.get 1)))
            (f64.const 0x0p+0 (;=0;))))
        (i32.store offset=44
          (local.get 6)
          (i32.add
            (i32.load offset=44
              (local.get 6))
            (i32.const -1))))
      (local.set 11
        (i32.add
          (local.get 6)
          (i32.const 16)))
      (block  ;; label = @7
        (br_if 0 (;@7;)
          (i32.ne
            (local.tee 12
              (i32.or
                (local.get 5)
                (i32.const 32)))
            (i32.const 97)))
        (local.set 14
          (select
            (i32.add
              (local.get 8)
              (i32.const 9))
            (local.get 8)
            (local.tee 13
              (i32.and
                (local.get 5)
                (i32.const 32)))))
        (block  ;; label = @8
          (br_if 0 (;@8;)
            (i32.gt_u
              (local.get 3)
              (i32.const 11)))
          (br_if 0 (;@8;)
            (i32.eqz
              (local.tee 10
                (i32.sub
                  (i32.const 12)
                  (local.get 3)))))
          (local.set 24
            (f64.const 0x1p+3 (;=8;)))
          (loop  ;; label = @9
            (local.set 24
              (f64.mul
                (local.get 24)
                (f64.const 0x1p+4 (;=16;))))
            (br_if 0 (;@9;)
              (local.tee 10
                (i32.add
                  (local.get 10)
                  (i32.const -1)))))
          (block  ;; label = @10
            (br_if 0 (;@10;)
              (i32.ne
                (i32.load8_u
                  (local.get 14))
                (i32.const 45)))
            (local.set 1
              (f64.neg
                (f64.add
                  (local.get 24)
                  (f64.sub
                    (f64.neg
                      (local.get 1))
                    (local.get 24)))))
            (br 1 (;@9;)))
          (local.set 1
            (f64.sub
              (f64.add
                (local.get 1)
                (local.get 24))
              (local.get 24))))
        (block  ;; label = @11
          (br_if 0 (;@11;)
            (i32.ne
              (local.tee 10
                (call $fmt_u
                  (i64.extend_i32_u
                    (i32.xor
                      (i32.add
                        (local.tee 10
                          (i32.load offset=44
                            (local.get 6)))
                        (local.tee 10
                          (i32.shr_s
                            (local.get 10)
                            (i32.const 31))))
                      (local.get 10)))
                  (local.get 11)))
              (local.get 11)))
          (i32.store8 offset=15
            (local.get 6)
            (i32.const 48))
          (local.set 10
            (i32.add
              (local.get 6)
              (i32.const 15))))
        (local.set 15
          (i32.or
            (local.get 7)
            (i32.const 2)))
        (local.set 16
          (i32.load offset=44
            (local.get 6)))
        (i32.store8
          (local.tee 17
            (i32.add
              (local.get 10)
              (i32.const -2)))
          (i32.add
            (local.get 5)
            (i32.const 15)))
        (i32.store8
          (i32.add
            (local.get 10)
            (i32.const -1))
          (select
            (i32.const 45)
            (i32.const 43)
            (i32.lt_s
              (local.get 16)
              (i32.const 0))))
        (local.set 18
          (i32.and
            (local.get 4)
            (i32.const 8)))
        (local.set 16
          (i32.add
            (local.get 6)
            (i32.const 16)))
        (loop  ;; label = @12
          (local.set 10
            (local.get 16))
          (block  ;; label = @13
            (block  ;; label = @14
              (br_if 0 (;@14;)
                (i32.eqz
                  (f64.lt
                    (f64.abs
                      (local.get 1))
                    (f64.const 0x1p+31 (;=2.14748e+09;)))))
              (local.set 16
                (i32.trunc_f64_s
                  (local.get 1)))
              (br 1 (;@13;)))
            (local.set 16
              (i32.const -2147483648)))
          (i32.store8
            (local.get 10)
            (i32.or
              (i32.load8_u
                (i32.add
                  (local.get 16)
                  (i32.const 1904)))
              (local.get 13)))
          (local.set 1
            (f64.mul
              (f64.sub
                (local.get 1)
                (f64.convert_i32_s
                  (local.get 16)))
              (f64.const 0x1p+4 (;=16;))))
          (block  ;; label = @15
            (br_if 0 (;@15;)
              (i32.ne
                (i32.sub
                  (local.tee 16
                    (i32.add
                      (local.get 10)
                      (i32.const 1)))
                  (i32.add
                    (local.get 6)
                    (i32.const 16)))
                (i32.const 1)))
            (block  ;; label = @16
              (br_if 0 (;@16;)
                (local.get 18))
              (br_if 0 (;@16;)
                (i32.gt_s
                  (local.get 3)
                  (i32.const 0)))
              (br_if 1 (;@15;)
                (f64.eq
                  (local.get 1)
                  (f64.const 0x0p+0 (;=0;)))))
            (i32.store8 offset=1
              (local.get 10)
              (i32.const 46))
            (local.set 16
              (i32.add
                (local.get 10)
                (i32.const 2))))
          (br_if 0 (;@16;)
            (f64.ne
              (local.get 1)
              (f64.const 0x0p+0 (;=0;)))))
        (block  ;; label = @17
          (block  ;; label = @18
            (br_if 0 (;@18;)
              (i32.eqz
                (local.get 3)))
            (br_if 0 (;@18;)
              (i32.ge_s
                (i32.add
                  (i32.sub
                    (local.get 16)
                    (i32.add
                      (local.get 6)
                      (i32.const 16)))
                  (i32.const -2))
                (local.get 3)))
            (local.set 10
              (i32.add
                (i32.sub
                  (i32.add
                    (local.get 3)
                    (local.get 11))
                  (local.get 17))
                (i32.const 2)))
            (br 1 (;@17;)))
          (local.set 10
            (i32.add
              (i32.sub
                (i32.sub
                  (local.get 11)
                  (i32.add
                    (local.get 6)
                    (i32.const 16)))
                (local.get 17))
              (local.get 16))))
        (call $pad
          (local.get 0)
          (i32.const 32)
          (local.get 2)
          (local.tee 9
            (i32.add
              (local.get 10)
              (local.get 15)))
          (local.get 4))
        (call $out
          (local.get 0)
          (local.get 14)
          (local.get 15))
        (call $pad
          (local.get 0)
          (i32.const 48)
          (local.get 2)
          (local.get 9)
          (i32.xor
            (local.get 4)
            (i32.const 65536)))
        (call $out
          (local.get 0)
          (i32.add
            (local.get 6)
            (i32.const 16))
          (local.tee 16
            (i32.sub
              (local.get 16)
              (i32.add
                (local.get 6)
                (i32.const 16)))))
        (call $pad
          (local.get 0)
          (i32.const 48)
          (i32.sub
            (local.get 10)
            (i32.add
              (local.get 16)
              (local.tee 13
                (i32.sub
                  (local.get 11)
                  (local.get 17)))))
          (i32.const 0)
          (i32.const 0))
        (call $out
          (local.get 0)
          (local.get 17)
          (local.get 13))
        (call $pad
          (local.get 0)
          (i32.const 32)
          (local.get 2)
          (local.get 9)
          (i32.xor
            (local.get 4)
            (i32.const 8192)))
        (br 1 (;@17;)))
      (local.set 10
        (i32.lt_s
          (local.get 3)
          (i32.const 0)))
      (block  ;; label = @19
        (block  ;; label = @20
          (br_if 0 (;@20;)
            (f64.ne
              (local.get 1)
              (f64.const 0x0p+0 (;=0;))))
          (local.set 18
            (i32.load offset=44
              (local.get 6)))
          (br 1 (;@19;)))
        (i32.store offset=44
          (local.get 6)
          (local.tee 18
            (i32.add
              (i32.load offset=44
                (local.get 6))
              (i32.const -28))))
        (local.set 1
          (f64.mul
            (local.get 1)
            (f64.const 0x1p+28 (;=2.68435e+08;)))))
      (local.set 14
        (select
          (i32.const 6)
          (local.get 3)
          (local.get 10)))
      (local.set 13
        (local.tee 19
          (select
            (i32.add
              (local.get 6)
              (i32.const 48))
            (i32.add
              (local.get 6)
              (i32.const 336))
            (i32.lt_s
              (local.get 18)
              (i32.const 0)))))
      (loop  ;; label = @21
        (block  ;; label = @22
          (block  ;; label = @23
            (br_if 0 (;@23;)
              (i32.eqz
                (i32.and
                  (f64.lt
                    (local.get 1)
                    (f64.const 0x1p+32 (;=4.29497e+09;)))
                  (f64.ge
                    (local.get 1)
                    (f64.const 0x0p+0 (;=0;))))))
            (local.set 10
              (i32.trunc_f64_u
                (local.get 1)))
            (br 1 (;@22;)))
          (local.set 10
            (i32.const 0)))
        (i32.store
          (local.get 13)
          (local.get 10))
        (local.set 13
          (i32.add
            (local.get 13)
            (i32.const 4)))
        (br_if 0 (;@23;)
          (f64.ne
            (local.tee 1
              (f64.mul
                (f64.sub
                  (local.get 1)
                  (f64.convert_i32_u
                    (local.get 10)))
                (f64.const 0x1.dcd65p+29 (;=1e+09;))))
            (f64.const 0x0p+0 (;=0;)))))
      (block  ;; label = @24
        (block  ;; label = @25
          (br_if 0 (;@25;)
            (i32.ge_s
              (local.get 18)
              (i32.const 1)))
          (local.set 10
            (local.get 13))
          (local.set 16
            (local.get 19))
          (br 1 (;@24;)))
        (local.set 16
          (local.get 19))
        (loop  ;; label = @26
          (local.set 18
            (select
              (local.get 18)
              (i32.const 29)
              (i32.lt_s
                (local.get 18)
                (i32.const 29))))
          (block  ;; label = @27
            (br_if 0 (;@27;)
              (i32.lt_u
                (local.tee 10
                  (i32.add
                    (local.get 13)
                    (i32.const -4)))
                (local.get 16)))
            (local.set 23
              (i64.extend_i32_u
                (local.get 18)))
            (local.set 22
              (i64.const 0))
            (loop  ;; label = @28
              (i64.store32
                (local.get 10)
                (i64.sub
                  (local.tee 22
                    (i64.add
                      (i64.shl
                        (i64.load32_u
                          (local.get 10))
                        (local.get 23))
                      (i64.and
                        (local.get 22)
                        (i64.const 4294967295))))
                  (i64.mul
                    (local.tee 22
                      (i64.div_u
                        (local.get 22)
                        (i64.const 1000000000)))
                    (i64.const 1000000000))))
              (br_if 0 (;@28;)
                (i32.ge_u
                  (local.tee 10
                    (i32.add
                      (local.get 10)
                      (i32.const -4)))
                  (local.get 16))))
            (br_if 0 (;@28;)
              (i32.eqz
                (local.tee 10
                  (i32.wrap_i64
                    (local.get 22)))))
            (i32.store
              (local.tee 16
                (i32.add
                  (local.get 16)
                  (i32.const -4)))
              (local.get 10)))
          (block  ;; label = @29
            (loop  ;; label = @30
              (br_if 1 (;@29;)
                (i32.le_u
                  (local.tee 10
                    (local.get 13))
                  (local.get 16)))
              (br_if 0 (;@30;)
                (i32.eqz
                  (i32.load
                    (local.tee 13
                      (i32.add
                        (local.get 10)
                        (i32.const -4))))))))
          (i32.store offset=44
            (local.get 6)
            (local.tee 18
              (i32.sub
                (i32.load offset=44
                  (local.get 6))
                (local.get 18))))
          (local.set 13
            (local.get 10))
          (br_if 0 (;@30;)
            (i32.gt_s
              (local.get 18)
              (i32.const 0)))))
      (block  ;; label = @31
        (br_if 0 (;@31;)
          (i32.gt_s
            (local.get 18)
            (i32.const -1)))
        (local.set 20
          (i32.add
            (i32.div_s
              (i32.add
                (local.get 14)
                (i32.const 25))
              (i32.const 9))
            (i32.const 1)))
        (local.set 21
          (i32.eq
            (local.get 12)
            (i32.const 102)))
        (loop  ;; label = @32
          (local.set 9
            (select
              (i32.const 9)
              (i32.sub
                (i32.const 0)
                (local.get 18))
              (i32.lt_s
                (local.get 18)
                (i32.const -9))))
          (block  ;; label = @33
            (block  ;; label = @34
              (br_if 0 (;@34;)
                (i32.lt_u
                  (local.get 16)
                  (local.get 10)))
              (local.set 16
                (select
                  (local.get 16)
                  (i32.add
                    (local.get 16)
                    (i32.const 4))
                  (i32.load
                    (local.get 16))))
              (br 1 (;@33;)))
            (local.set 17
              (i32.shr_u
                (i32.const 1000000000)
                (local.get 9)))
            (local.set 15
              (i32.xor
                (i32.shl
                  (i32.const -1)
                  (local.get 9))
                (i32.const -1)))
            (local.set 18
              (i32.const 0))
            (local.set 13
              (local.get 16))
            (loop  ;; label = @35
              (i32.store
                (local.get 13)
                (i32.add
                  (i32.shr_u
                    (local.tee 3
                      (i32.load
                        (local.get 13)))
                    (local.get 9))
                  (local.get 18)))
              (local.set 18
                (i32.mul
                  (i32.and
                    (local.get 3)
                    (local.get 15))
                  (local.get 17)))
              (br_if 0 (;@35;)
                (i32.lt_u
                  (local.tee 13
                    (i32.add
                      (local.get 13)
                      (i32.const 4)))
                  (local.get 10))))
            (local.set 16
              (select
                (local.get 16)
                (i32.add
                  (local.get 16)
                  (i32.const 4))
                (i32.load
                  (local.get 16))))
            (br_if 0 (;@35;)
              (i32.eqz
                (local.get 18)))
            (i32.store
              (local.get 10)
              (local.get 18))
            (local.set 10
              (i32.add
                (local.get 10)
                (i32.const 4))))
          (i32.store offset=44
            (local.get 6)
            (local.tee 18
              (i32.add
                (i32.load offset=44
                  (local.get 6))
                (local.get 9))))
          (local.set 10
            (select
              (i32.add
                (local.tee 13
                  (select
                    (local.get 19)
                    (local.get 16)
                    (local.get 21)))
                (i32.shl
                  (local.get 20)
                  (i32.const 2)))
              (local.get 10)
              (i32.gt_s
                (i32.shr_s
                  (i32.sub
                    (local.get 10)
                    (local.get 13))
                  (i32.const 2))
                (local.get 20))))
          (br_if 0 (;@35;)
            (i32.lt_s
              (local.get 18)
              (i32.const 0)))))
      (local.set 13
        (i32.const 0))
      (block  ;; label = @36
        (br_if 0 (;@36;)
          (i32.ge_u
            (local.get 16)
            (local.get 10)))
        (local.set 13
          (i32.mul
            (i32.shr_s
              (i32.sub
                (local.get 19)
                (local.get 16))
              (i32.const 2))
            (i32.const 9)))
        (local.set 18
          (i32.const 10))
        (br_if 0 (;@36;)
          (i32.lt_u
            (local.tee 3
              (i32.load
                (local.get 16)))
            (i32.const 10)))
        (loop  ;; label = @37
          (local.set 13
            (i32.add
              (local.get 13)
              (i32.const 1)))
          (br_if 0 (;@37;)
            (i32.ge_u
              (local.get 3)
              (local.tee 18
                (i32.mul
                  (local.get 18)
                  (i32.const 10)))))))
      (block  ;; label = @38
        (br_if 0 (;@38;)
          (i32.ge_s
            (local.tee 18
              (i32.sub
                (i32.sub
                  (local.get 14)
                  (select
                    (i32.const 0)
                    (local.get 13)
                    (i32.eq
                      (local.get 12)
                      (i32.const 102))))
                (i32.and
                  (i32.ne
                    (local.get 14)
                    (i32.const 0))
                  (i32.eq
                    (local.get 12)
                    (i32.const 103)))))
            (i32.add
              (i32.mul
                (i32.shr_s
                  (i32.sub
                    (local.get 10)
                    (local.get 19))
                  (i32.const 2))
                (i32.const 9))
              (i32.const -9))))
        (local.set 9
          (i32.add
            (i32.add
              (i32.shl
                (local.tee 17
                  (i32.div_s
                    (local.tee 3
                      (i32.add
                        (local.get 18)
                        (i32.const 9216)))
                    (i32.const 9)))
                (i32.const 2))
              (local.get 19))
            (i32.const -4092)))
        (local.set 18
          (i32.const 10))
        (block  ;; label = @39
          (br_if 0 (;@39;)
            (i32.gt_s
              (local.tee 3
                (i32.add
                  (i32.sub
                    (local.get 3)
                    (i32.mul
                      (local.get 17)
                      (i32.const 9)))
                  (i32.const 1)))
              (i32.const 8)))
          (loop  ;; label = @40
            (local.set 18
              (i32.mul
                (local.get 18)
                (i32.const 10)))
            (br_if 0 (;@40;)
              (i32.ne
                (local.tee 3
                  (i32.add
                    (local.get 3)
                    (i32.const 1)))
                (i32.const 9)))))
        (local.set 3
          (i32.sub
            (local.tee 17
              (i32.load
                (local.get 9)))
            (i32.mul
              (local.tee 15
                (i32.div_u
                  (local.get 17)
                  (local.get 18)))
              (local.get 18))))
        (block  ;; label = @41
          (block  ;; label = @42
            (br_if 0 (;@42;)
              (i32.ne
                (local.tee 20
                  (i32.add
                    (local.get 9)
                    (i32.const 4)))
                (local.get 10)))
            (br_if 1 (;@41;)
              (i32.eqz
                (local.get 3))))
          (local.set 24
            (select
              (f64.const 0x1p-1 (;=0.5;))
              (select
                (select
                  (f64.const 0x1p+0 (;=1;))
                  (f64.const 0x1.8p+0 (;=1.5;))
                  (i32.eq
                    (local.get 3)
                    (local.tee 21
                      (i32.shr_u
                        (local.get 18)
                        (i32.const 1)))))
                (f64.const 0x1.8p+0 (;=1.5;))
                (i32.eq
                  (local.get 20)
                  (local.get 10)))
              (i32.lt_u
                (local.get 3)
                (local.get 21))))
          (local.set 1
            (select
              (f64.const 0x1.0000000000001p+53 (;=9.0072e+15;))
              (f64.const 0x1p+53 (;=9.0072e+15;))
              (i32.and
                (local.get 15)
                (i32.const 1))))
          (block  ;; label = @43
            (br_if 0 (;@43;)
              (i32.eqz
                (local.get 7)))
            (br_if 0 (;@43;)
              (i32.ne
                (i32.load8_u
                  (local.get 8))
                (i32.const 45)))
            (local.set 24
              (f64.neg
                (local.get 24)))
            (local.set 1
              (f64.neg
                (local.get 1))))
          (i32.store
            (local.get 9)
            (local.tee 3
              (i32.sub
                (local.get 17)
                (local.get 3))))
          (br_if 0 (;@43;)
            (f64.eq
              (f64.add
                (local.get 1)
                (local.get 24))
              (local.get 1)))
          (i32.store
            (local.get 9)
            (local.tee 13
              (i32.add
                (local.get 3)
                (local.get 18))))
          (block  ;; label = @44
            (br_if 0 (;@44;)
              (i32.lt_u
                (local.get 13)
                (i32.const 1000000000)))
            (loop  ;; label = @45
              (i32.store
                (local.get 9)
                (i32.const 0))
              (block  ;; label = @46
                (br_if 0 (;@46;)
                  (i32.ge_u
                    (local.tee 9
                      (i32.add
                        (local.get 9)
                        (i32.const -4)))
                    (local.get 16)))
                (i32.store
                  (local.tee 16
                    (i32.add
                      (local.get 16)
                      (i32.const -4)))
                  (i32.const 0)))
              (i32.store
                (local.get 9)
                (local.tee 13
                  (i32.add
                    (i32.load
                      (local.get 9))
                    (i32.const 1))))
              (br_if 0 (;@46;)
                (i32.gt_u
                  (local.get 13)
                  (i32.const 999999999)))))
          (local.set 13
            (i32.mul
              (i32.shr_s
                (i32.sub
                  (local.get 19)
                  (local.get 16))
                (i32.const 2))
              (i32.const 9)))
          (local.set 18
            (i32.const 10))
          (br_if 0 (;@46;)
            (i32.lt_u
              (local.tee 3
                (i32.load
                  (local.get 16)))
              (i32.const 10)))
          (loop  ;; label = @47
            (local.set 13
              (i32.add
                (local.get 13)
                (i32.const 1)))
            (br_if 0 (;@47;)
              (i32.ge_u
                (local.get 3)
                (local.tee 18
                  (i32.mul
                    (local.get 18)
                    (i32.const 10)))))))
        (local.set 10
          (select
            (local.tee 18
              (i32.add
                (local.get 9)
                (i32.const 4)))
            (local.get 10)
            (i32.gt_u
              (local.get 10)
              (local.get 18)))))
      (block  ;; label = @48
        (loop  ;; label = @49
          (block  ;; label = @50
            (br_if 0 (;@50;)
              (i32.gt_u
                (local.tee 18
                  (local.get 10))
                (local.get 16)))
            (local.set 21
              (i32.const 0))
            (br 2 (;@48;)))
          (br_if 0 (;@50;)
            (i32.eqz
              (i32.load
                (local.tee 10
                  (i32.add
                    (local.get 18)
                    (i32.const -4)))))))
        (local.set 21
          (i32.const 1)))
      (block  ;; label = @51
        (block  ;; label = @52
          (br_if 0 (;@52;)
            (i32.eq
              (local.get 12)
              (i32.const 103)))
          (local.set 15
            (i32.and
              (local.get 4)
              (i32.const 8)))
          (br 1 (;@51;)))
        (local.set 14
          (i32.add
            (select
              (i32.xor
                (local.get 13)
                (i32.const -1))
              (i32.const -1)
              (local.tee 3
                (i32.and
                  (i32.gt_s
                    (local.tee 10
                      (select
                        (local.get 14)
                        (i32.const 1)
                        (local.get 14)))
                    (local.get 13))
                  (i32.gt_s
                    (local.get 13)
                    (i32.const -5)))))
            (local.get 10)))
        (local.set 5
          (i32.add
            (select
              (i32.const -1)
              (i32.const -2)
              (local.get 3))
            (local.get 5)))
        (br_if 0 (;@52;)
          (local.tee 15
            (i32.and
              (local.get 4)
              (i32.const 8))))
        (local.set 10
          (i32.const 9))
        (block  ;; label = @53
          (br_if 0 (;@53;)
            (i32.eqz
              (local.get 21)))
          (local.set 10
            (i32.const 9))
          (br_if 0 (;@53;)
            (i32.eqz
              (local.tee 9
                (i32.load
                  (i32.add
                    (local.get 18)
                    (i32.const -4))))))
          (local.set 3
            (i32.const 10))
          (local.set 10
            (i32.const 0))
          (br_if 0 (;@53;)
            (i32.rem_u
              (local.get 9)
              (i32.const 10)))
          (loop  ;; label = @54
            (local.set 10
              (i32.add
                (local.get 10)
                (i32.const 1)))
            (br_if 0 (;@54;)
              (i32.eqz
                (i32.rem_u
                  (local.get 9)
                  (local.tee 3
                    (i32.mul
                      (local.get 3)
                      (i32.const 10))))))))
        (local.set 3
          (i32.add
            (i32.mul
              (i32.shr_s
                (i32.sub
                  (local.get 18)
                  (local.get 19))
                (i32.const 2))
              (i32.const 9))
            (i32.const -9)))
        (block  ;; label = @55
          (br_if 0 (;@55;)
            (i32.ne
              (i32.or
                (local.get 5)
                (i32.const 32))
              (i32.const 102)))
          (local.set 15
            (i32.const 0))
          (local.set 14
            (select
              (local.get 14)
              (local.tee 10
                (select
                  (local.tee 10
                    (i32.sub
                      (local.get 3)
                      (local.get 10)))
                  (i32.const 0)
                  (i32.gt_s
                    (local.get 10)
                    (i32.const 0))))
              (i32.lt_s
                (local.get 14)
                (local.get 10))))
          (br 1 (;@54;)))
        (local.set 15
          (i32.const 0))
        (local.set 14
          (select
            (local.get 14)
            (local.tee 10
              (select
                (local.tee 10
                  (i32.sub
                    (i32.add
                      (local.get 3)
                      (local.get 13))
                    (local.get 10)))
                (i32.const 0)
                (i32.gt_s
                  (local.get 10)
                  (i32.const 0))))
            (i32.lt_s
              (local.get 14)
              (local.get 10)))))
      (local.set 3
        (i32.ne
          (local.tee 12
            (i32.or
              (local.get 14)
              (local.get 15)))
          (i32.const 0)))
      (block  ;; label = @56
        (block  ;; label = @57
          (br_if 0 (;@57;)
            (i32.ne
              (local.tee 17
                (i32.or
                  (local.get 5)
                  (i32.const 32)))
              (i32.const 102)))
          (local.set 10
            (select
              (local.get 13)
              (i32.const 0)
              (i32.gt_s
                (local.get 13)
                (i32.const 0))))
          (br 1 (;@56;)))
        (block  ;; label = @58
          (br_if 0 (;@58;)
            (i32.gt_s
              (i32.sub
                (local.get 11)
                (local.tee 10
                  (call $fmt_u
                    (i64.extend_i32_u
                      (i32.xor
                        (i32.add
                          (local.get 13)
                          (local.tee 10
                            (i32.shr_s
                              (local.get 13)
                              (i32.const 31))))
                        (local.get 10)))
                    (local.get 11))))
              (i32.const 1)))
          (loop  ;; label = @59
            (i32.store8
              (local.tee 10
                (i32.add
                  (local.get 10)
                  (i32.const -1)))
              (i32.const 48))
            (br_if 0 (;@59;)
              (i32.lt_s
                (i32.sub
                  (local.get 11)
                  (local.get 10))
                (i32.const 2)))))
        (i32.store8
          (local.tee 20
            (i32.add
              (local.get 10)
              (i32.const -2)))
          (local.get 5))
        (i32.store8
          (i32.add
            (local.get 10)
            (i32.const -1))
          (select
            (i32.const 45)
            (i32.const 43)
            (i32.lt_s
              (local.get 13)
              (i32.const 0))))
        (local.set 10
          (i32.sub
            (local.get 11)
            (local.get 20))))
      (call $pad
        (local.get 0)
        (i32.const 32)
        (local.get 2)
        (local.tee 9
          (i32.add
            (i32.add
              (i32.add
                (i32.add
                  (local.get 7)
                  (local.get 14))
                (local.get 3))
              (local.get 10))
            (i32.const 1)))
        (local.get 4))
      (call $out
        (local.get 0)
        (local.get 8)
        (local.get 7))
      (call $pad
        (local.get 0)
        (i32.const 48)
        (local.get 2)
        (local.get 9)
        (i32.xor
          (local.get 4)
          (i32.const 65536)))
      (block  ;; label = @60
        (block  ;; label = @61
          (br_if 0 (;@61;)
            (i32.ne
              (local.get 17)
              (i32.const 102)))
          (local.set 17
            (i32.or
              (i32.add
                (local.get 6)
                (i32.const 16))
              (i32.const 8)))
          (local.set 13
            (i32.or
              (i32.add
                (local.get 6)
                (i32.const 16))
              (i32.const 9)))
          (local.set 16
            (local.tee 3
              (select
                (local.get 19)
                (local.get 16)
                (i32.gt_u
                  (local.get 16)
                  (local.get 19)))))
          (loop  ;; label = @62
            (local.set 10
              (call $fmt_u
                (i64.load32_u
                  (local.get 16))
                (local.get 13)))
            (block  ;; label = @63
              (block  ;; label = @64
                (br_if 0 (;@64;)
                  (i32.eq
                    (local.get 16)
                    (local.get 3)))
                (br_if 1 (;@63;)
                  (i32.le_u
                    (local.get 10)
                    (i32.add
                      (local.get 6)
                      (i32.const 16))))
                (loop  ;; label = @65
                  (i32.store8
                    (local.tee 10
                      (i32.add
                        (local.get 10)
                        (i32.const -1)))
                    (i32.const 48))
                  (br_if 0 (;@65;)
                    (i32.gt_u
                      (local.get 10)
                      (i32.add
                        (local.get 6)
                        (i32.const 16))))
                  (br 2 (;@63;))
                  (unreachable))
                (unreachable))
              (br_if 0 (;@65;)
                (i32.ne
                  (local.get 10)
                  (local.get 13)))
              (i32.store8 offset=24
                (local.get 6)
                (i32.const 48))
              (local.set 10
                (local.get 17)))
            (call $out
              (local.get 0)
              (local.get 10)
              (i32.sub
                (local.get 13)
                (local.get 10)))
            (br_if 0 (;@65;)
              (i32.le_u
                (local.tee 16
                  (i32.add
                    (local.get 16)
                    (i32.const 4)))
                (local.get 19))))
          (block  ;; label = @66
            (br_if 0 (;@66;)
              (i32.eqz
                (local.get 12)))
            (call $out
              (local.get 0)
              (i32.const 1955)
              (i32.const 1)))
          (block  ;; label = @67
            (br_if 0 (;@67;)
              (i32.ge_u
                (local.get 16)
                (local.get 18)))
            (br_if 0 (;@67;)
              (i32.lt_s
                (local.get 14)
                (i32.const 1)))
            (loop  ;; label = @68
              (block  ;; label = @69
                (br_if 0 (;@69;)
                  (i32.le_u
                    (local.tee 10
                      (call $fmt_u
                        (i64.load32_u
                          (local.get 16))
                        (local.get 13)))
                    (i32.add
                      (local.get 6)
                      (i32.const 16))))
                (loop  ;; label = @70
                  (i32.store8
                    (local.tee 10
                      (i32.add
                        (local.get 10)
                        (i32.const -1)))
                    (i32.const 48))
                  (br_if 0 (;@70;)
                    (i32.gt_u
                      (local.get 10)
                      (i32.add
                        (local.get 6)
                        (i32.const 16))))))
              (call $out
                (local.get 0)
                (local.get 10)
                (select
                  (local.get 14)
                  (i32.const 9)
                  (i32.lt_s
                    (local.get 14)
                    (i32.const 9))))
              (local.set 14
                (i32.add
                  (local.get 14)
                  (i32.const -9)))
              (br_if 1 (;@69;)
                (i32.ge_u
                  (local.tee 16
                    (i32.add
                      (local.get 16)
                      (i32.const 4)))
                  (local.get 18)))
              (br_if 0 (;@70;)
                (i32.gt_s
                  (local.get 14)
                  (i32.const 0)))))
          (call $pad
            (local.get 0)
            (i32.const 48)
            (i32.add
              (local.get 14)
              (i32.const 9))
            (i32.const 9)
            (i32.const 0))
          (br 1 (;@69;)))
        (block  ;; label = @71
          (br_if 0 (;@71;)
            (i32.lt_s
              (local.get 14)
              (i32.const 0)))
          (local.set 17
            (select
              (local.get 18)
              (i32.add
                (local.get 16)
                (i32.const 4))
              (local.get 21)))
          (local.set 19
            (i32.or
              (i32.add
                (local.get 6)
                (i32.const 16))
              (i32.const 8)))
          (local.set 18
            (i32.or
              (i32.add
                (local.get 6)
                (i32.const 16))
              (i32.const 9)))
          (local.set 13
            (local.get 16))
          (loop  ;; label = @72
            (block  ;; label = @73
              (br_if 0 (;@73;)
                (i32.ne
                  (local.tee 10
                    (call $fmt_u
                      (i64.load32_u
                        (local.get 13))
                      (local.get 18)))
                  (local.get 18)))
              (i32.store8 offset=24
                (local.get 6)
                (i32.const 48))
              (local.set 10
                (local.get 19)))
            (block  ;; label = @74
              (block  ;; label = @75
                (br_if 0 (;@75;)
                  (i32.eq
                    (local.get 13)
                    (local.get 16)))
                (br_if 1 (;@74;)
                  (i32.le_u
                    (local.get 10)
                    (i32.add
                      (local.get 6)
                      (i32.const 16))))
                (loop  ;; label = @76
                  (i32.store8
                    (local.tee 10
                      (i32.add
                        (local.get 10)
                        (i32.const -1)))
                    (i32.const 48))
                  (br_if 0 (;@76;)
                    (i32.gt_u
                      (local.get 10)
                      (i32.add
                        (local.get 6)
                        (i32.const 16))))
                  (br 2 (;@74;))
                  (unreachable))
                (unreachable))
              (call $out
                (local.get 0)
                (local.get 10)
                (i32.const 1))
              (local.set 10
                (i32.add
                  (local.get 10)
                  (i32.const 1)))
              (block  ;; label = @77
                (br_if 0 (;@77;)
                  (local.get 15))
                (br_if 1 (;@76;)
                  (i32.lt_s
                    (local.get 14)
                    (i32.const 1))))
              (call $out
                (local.get 0)
                (i32.const 1955)
                (i32.const 1)))
            (call $out
              (local.get 0)
              (local.get 10)
              (select
                (local.tee 3
                  (i32.sub
                    (local.get 18)
                    (local.get 10)))
                (local.get 14)
                (i32.gt_s
                  (local.get 14)
                  (local.get 3))))
            (local.set 14
              (i32.sub
                (local.get 14)
                (local.get 3)))
            (br_if 1 (;@76;)
              (i32.ge_u
                (local.tee 13
                  (i32.add
                    (local.get 13)
                    (i32.const 4)))
                (local.get 17)))
            (br_if 0 (;@77;)
              (i32.gt_s
                (local.get 14)
                (i32.const -1)))))
        (call $pad
          (local.get 0)
          (i32.const 48)
          (i32.add
            (local.get 14)
            (i32.const 18))
          (i32.const 18)
          (i32.const 0))
        (call $out
          (local.get 0)
          (local.get 20)
          (i32.sub
            (local.get 11)
            (local.get 20))))
      (call $pad
        (local.get 0)
        (i32.const 32)
        (local.get 2)
        (local.get 9)
        (i32.xor
          (local.get 4)
          (i32.const 8192))))
    (global.set 0
      (i32.add
        (local.get 6)
        (i32.const 560)))
    (select
      (local.get 2)
      (local.get 9)
      (i32.lt_s
        (local.get 9)
        (local.get 2))))
  (func $pop_arg_long_double (type 2) (param i32 i32)
    (local i32)
    (i32.store
      (local.get 1)
      (i32.add
        (local.tee 2
          (i32.and
            (i32.add
              (i32.load
                (local.get 1))
              (i32.const 15))
            (i32.const -16)))
        (i32.const 16)))
    (f64.store
      (local.get 0)
      (call $__trunctfdf2
        (i64.load
          (local.get 2))
        (i64.load offset=8
          (local.get 2)))))
  (func $__DOUBLE_BITS (type 18) (param f64) (result i64)
    (i64.reinterpret_f64
      (local.get 0)))
  (func $printf (type 10) (param i32 i32) (result i32)
    (local i32)
    (global.set 0
      (local.tee 2
        (i32.sub
          (global.get 0)
          (i32.const 16))))
    (i32.store offset=12
      (local.get 2)
      (local.get 1))
    (local.set 1
      (call $vfprintf
        (i32.load offset=1412
          (i32.const 0))
        (local.get 0)
        (local.get 1)))
    (global.set 0
      (i32.add
        (local.get 2)
        (i32.const 16)))
    (local.get 1))
  (func $__lockfile (type 8) (param i32) (result i32)
    (i32.const 1))
  (func $__unlockfile (type 5) (param i32))
  (func $__stdio_write (type 0) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32)
    (global.set 0
      (local.tee 3
        (i32.sub
          (global.get 0)
          (i32.const 32))))
    (i32.store offset=16
      (local.get 3)
      (local.tee 4
        (i32.load offset=28
          (local.get 0))))
    (local.set 5
      (i32.load offset=20
        (local.get 0)))
    (i32.store offset=28
      (local.get 3)
      (local.get 2))
    (i32.store offset=24
      (local.get 3)
      (local.get 1))
    (i32.store offset=20
      (local.get 3)
      (local.tee 1
        (i32.sub
          (local.get 5)
          (local.get 4))))
    (local.set 6
      (i32.add
        (local.get 1)
        (local.get 2)))
    (local.set 5
      (i32.const 2))
    (local.set 1
      (i32.add
        (local.get 3)
        (i32.const 16)))
    (loop (result i32)  ;; label = @1
      (block  ;; label = @2
        (block  ;; label = @3
          (br_if 0 (;@3;)
            (i32.eqz
              (call $__wasi_fd_write
                (i32.load offset=60
                  (local.get 0))
                (local.get 1)
                (local.get 5)
                (i32.add
                  (local.get 3)
                  (i32.const 12)))))
          (local.set 4
            (i32.const -1))
          (i32.store offset=12
            (local.get 3)
            (i32.const -1))
          (br 1 (;@2;)))
        (local.set 4
          (i32.load offset=12
            (local.get 3))))
      (block  ;; label = @4
        (block  ;; label = @5
          (block  ;; label = @6
            (br_if 0 (;@6;)
              (i32.ne
                (local.get 6)
                (local.get 4)))
            (i32.store offset=28
              (local.get 0)
              (local.tee 1
                (i32.load offset=44
                  (local.get 0))))
            (i32.store offset=20
              (local.get 0)
              (local.get 1))
            (i32.store offset=16
              (local.get 0)
              (i32.add
                (local.get 1)
                (i32.load offset=48
                  (local.get 0))))
            (local.set 4
              (local.get 2))
            (br 1 (;@5;)))
          (br_if 1 (;@5;)
            (i32.gt_s
              (local.get 4)
              (i32.const -1)))
          (local.set 4
            (i32.const 0))
          (i32.store offset=28
            (local.get 0)
            (i32.const 0))
          (i64.store offset=16
            (local.get 0)
            (i64.const 0))
          (i32.store
            (local.get 0)
            (i32.or
              (i32.load
                (local.get 0))
              (i32.const 32)))
          (br_if 0 (;@6;)
            (i32.eq
              (local.get 5)
              (i32.const 2)))
          (local.set 4
            (i32.sub
              (local.get 2)
              (i32.load offset=4
                (local.get 1)))))
        (global.set 0
          (i32.add
            (local.get 3)
            (i32.const 32)))
        (return
          (local.get 4)))
      (i32.store
        (local.tee 1
          (select
            (i32.add
              (local.get 1)
              (i32.const 8))
            (local.get 1)
            (local.tee 8
              (i32.gt_u
                (local.get 4)
                (local.tee 7
                  (i32.load offset=4
                    (local.get 1)))))))
        (i32.add
          (i32.load
            (local.get 1))
          (local.tee 7
            (i32.sub
              (local.get 4)
              (select
                (local.get 7)
                (i32.const 0)
                (local.get 8))))))
      (i32.store offset=4
        (local.get 1)
        (i32.sub
          (i32.load offset=4
            (local.get 1))
          (local.get 7)))
      (local.set 6
        (i32.sub
          (local.get 6)
          (local.get 4)))
      (local.set 5
        (i32.sub
          (local.get 5)
          (local.get 8)))
      (br 0 (;@6;))))
  (func $__towrite (type 8) (param i32) (result i32)
    (local i32)
    (i32.store8 offset=74
      (local.get 0)
      (i32.or
        (i32.add
          (local.tee 1
            (i32.load8_u offset=74
              (local.get 0)))
          (i32.const -1))
        (local.get 1)))
    (block  ;; label = @1
      (br_if 0 (;@1;)
        (i32.eqz
          (i32.and
            (local.tee 1
              (i32.load
                (local.get 0)))
            (i32.const 8))))
      (i32.store
        (local.get 0)
        (i32.or
          (local.get 1)
          (i32.const 32)))
      (return
        (i32.const -1)))
    (i64.store offset=4 align=4
      (local.get 0)
      (i64.const 0))
    (i32.store offset=28
      (local.get 0)
      (local.tee 1
        (i32.load offset=44
          (local.get 0))))
    (i32.store offset=20
      (local.get 0)
      (local.get 1))
    (i32.store offset=16
      (local.get 0)
      (i32.add
        (local.get 1)
        (i32.load offset=48
          (local.get 0))))
    (i32.const 0))
  (func $__fwritex (type 0) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32)
    (block  ;; label = @1
      (block  ;; label = @2
        (br_if 0 (;@2;)
          (local.tee 3
            (i32.load offset=16
              (local.get 2))))
        (local.set 4
          (i32.const 0))
        (br_if 1 (;@1;)
          (call $__towrite
            (local.get 2)))
        (local.set 3
          (i32.load offset=16
            (local.get 2))))
      (block  ;; label = @3
        (br_if 0 (;@3;)
          (i32.ge_u
            (i32.sub
              (local.get 3)
              (local.tee 5
                (i32.load offset=20
                  (local.get 2))))
            (local.get 1)))
        (return
          (call_indirect (type 0)
            (local.get 2)
            (local.get 0)
            (local.get 1)
            (i32.load offset=36
              (local.get 2)))))
      (local.set 6
        (i32.const 0))
      (block  ;; label = @4
        (br_if 0 (;@4;)
          (i32.lt_s
            (i32.load8_s offset=75
              (local.get 2))
            (i32.const 0)))
        (local.set 4
          (local.get 1))
        (loop  ;; label = @5
          (br_if 1 (;@4;)
            (i32.eqz
              (local.tee 3
                (local.get 4))))
          (br_if 0 (;@5;)
            (i32.ne
              (i32.load8_u
                (i32.add
                  (local.get 0)
                  (local.tee 4
                    (i32.add
                      (local.get 3)
                      (i32.const -1)))))
              (i32.const 10))))
        (br_if 1 (;@4;)
          (i32.lt_u
            (local.tee 4
              (call_indirect (type 0)
                (local.get 2)
                (local.get 0)
                (local.get 3)
                (i32.load offset=36
                  (local.get 2))))
            (local.get 3)))
        (local.set 1
          (i32.sub
            (local.get 1)
            (local.get 3)))
        (local.set 0
          (i32.add
            (local.get 0)
            (local.get 3)))
        (local.set 5
          (i32.load offset=20
            (local.get 2)))
        (local.set 6
          (local.get 3)))
      (drop
        (call $memcpy
          (local.get 5)
          (local.get 0)
          (local.get 1)))
      (i32.store offset=20
        (local.get 2)
        (i32.add
          (i32.load offset=20
            (local.get 2))
          (local.get 1)))
      (local.set 4
        (i32.add
          (local.get 6)
          (local.get 1))))
    (local.get 4))
  (func $__ofl_lock (type 7) (result i32)
    (call $__lock
      (i32.const 4140))
    (i32.const 4148))
  (func $__ofl_unlock (type 9)
    (call $__unlock
      (i32.const 4140)))
  (func $memchr (type 0) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32)
    (local.set 3
      (i32.ne
        (local.get 2)
        (i32.const 0)))
    (block  ;; label = @1
      (block  ;; label = @2
        (block  ;; label = @3
          (block  ;; label = @4
            (br_if 0 (;@4;)
              (i32.eqz
                (local.get 2)))
            (br_if 0 (;@4;)
              (i32.eqz
                (i32.and
                  (local.get 0)
                  (i32.const 3))))
            (local.set 4
              (i32.and
                (local.get 1)
                (i32.const 255)))
            (loop  ;; label = @5
              (br_if 2 (;@3;)
                (i32.eq
                  (i32.load8_u
                    (local.get 0))
                  (local.get 4)))
              (local.set 0
                (i32.add
                  (local.get 0)
                  (i32.const 1)))
              (local.set 3
                (i32.ne
                  (local.tee 2
                    (i32.add
                      (local.get 2)
                      (i32.const -1)))
                  (i32.const 0)))
              (br_if 1 (;@4;)
                (i32.eqz
                  (local.get 2)))
              (br_if 0 (;@5;)
                (i32.and
                  (local.get 0)
                  (i32.const 3)))))
          (br_if 1 (;@4;)
            (i32.eqz
              (local.get 3))))
        (br_if 1 (;@4;)
          (i32.eq
            (i32.load8_u
              (local.get 0))
            (i32.and
              (local.get 1)
              (i32.const 255))))
        (block  ;; label = @6
          (block  ;; label = @7
            (br_if 0 (;@7;)
              (i32.lt_u
                (local.get 2)
                (i32.const 4)))
            (local.set 4
              (i32.mul
                (i32.and
                  (local.get 1)
                  (i32.const 255))
                (i32.const 16843009)))
            (local.set 5
              (i32.sub
                (local.tee 3
                  (i32.add
                    (local.get 2)
                    (i32.const -4)))
                (local.tee 3
                  (i32.and
                    (local.get 3)
                    (i32.const -4)))))
            (local.set 6
              (i32.add
                (i32.add
                  (local.get 3)
                  (local.get 0))
                (i32.const 4)))
            (loop  ;; label = @8
              (br_if 2 (;@6;)
                (i32.and
                  (i32.and
                    (i32.xor
                      (local.tee 3
                        (i32.xor
                          (i32.load
                            (local.get 0))
                          (local.get 4)))
                      (i32.const -1))
                    (i32.add
                      (local.get 3)
                      (i32.const -16843009)))
                  (i32.const -2139062144)))
              (local.set 0
                (i32.add
                  (local.get 0)
                  (i32.const 4)))
              (br_if 0 (;@8;)
                (i32.gt_u
                  (local.tee 2
                    (i32.add
                      (local.get 2)
                      (i32.const -4)))
                  (i32.const 3))))
            (local.set 2
              (local.get 5))
            (local.set 0
              (local.get 6)))
          (br_if 1 (;@7;)
            (i32.eqz
              (local.get 2))))
        (local.set 3
          (i32.and
            (local.get 1)
            (i32.const 255)))
        (loop  ;; label = @9
          (br_if 2 (;@7;)
            (i32.eq
              (i32.load8_u
                (local.get 0))
              (local.get 3)))
          (local.set 0
            (i32.add
              (local.get 0)
              (i32.const 1)))
          (br_if 0 (;@9;)
            (local.tee 2
              (i32.add
                (local.get 2)
                (i32.const -1))))))
      (return
        (i32.const 0)))
    (local.get 0))
  (func $__lshrti3 (type 19) (param i32 i64 i64 i32)
    (local i64)
    (block  ;; label = @1
      (block  ;; label = @2
        (block  ;; label = @3
          (br_if 0 (;@3;)
            (i32.eqz
              (i32.and
                (local.get 3)
                (i32.const 64))))
          (local.set 1
            (i64.shr_u
              (local.get 2)
              (i64.extend_i32_u
                (i32.add
                  (local.get 3)
                  (i32.const -64)))))
          (local.set 4
            (i64.const 0))
          (local.set 2
            (i64.const 0))
          (br 1 (;@2;)))
        (br_if 1 (;@2;)
          (i32.eqz
            (local.get 3)))
        (local.set 1
          (i64.or
            (i64.shl
              (local.get 2)
              (i64.extend_i32_u
                (i32.sub
                  (i32.const 64)
                  (local.get 3))))
            (i64.shr_u
              (local.get 1)
              (local.tee 4
                (i64.extend_i32_u
                  (local.get 3))))))
        (local.set 2
          (i64.shr_u
            (local.get 2)
            (local.get 4)))
        (local.set 4
          (i64.const 0)))
      (local.set 1
        (i64.or
          (local.get 4)
          (local.get 1))))
    (i64.store
      (local.get 0)
      (local.get 1))
    (i64.store offset=8
      (local.get 0)
      (local.get 2)))
  (func $__ashlti3 (type 19) (param i32 i64 i64 i32)
    (local i64)
    (block  ;; label = @1
      (block  ;; label = @2
        (block  ;; label = @3
          (br_if 0 (;@3;)
            (i32.eqz
              (i32.and
                (local.get 3)
                (i32.const 64))))
          (local.set 2
            (i64.shl
              (local.get 1)
              (i64.extend_i32_u
                (i32.add
                  (local.get 3)
                  (i32.const -64)))))
          (local.set 1
            (i64.const 0))
          (br 1 (;@2;)))
        (br_if 1 (;@2;)
          (i32.eqz
            (local.get 3)))
        (local.set 2
          (i64.or
            (i64.shr_u
              (local.get 1)
              (i64.extend_i32_u
                (i32.sub
                  (i32.const 64)
                  (local.get 3))))
            (i64.shl
              (local.get 2)
              (local.tee 4
                (i64.extend_i32_u
                  (local.get 3))))))
        (local.set 1
          (i64.shl
            (local.get 1)
            (local.get 4))))
      (local.set 2
        (i64.or
          (local.get 2)
          (i64.const 0))))
    (i64.store
      (local.get 0)
      (local.get 1))
    (i64.store offset=8
      (local.get 0)
      (local.get 2)))
  (func $__trunctfdf2 (type 20) (param i64 i64) (result f64)
    (local i32 i32 i64 i64)
    (global.set 0
      (local.tee 2
        (i32.sub
          (global.get 0)
          (i32.const 32))))
    (block  ;; label = @1
      (block  ;; label = @2
        (br_if 0 (;@2;)
          (i64.ge_u
            (i64.add
              (local.tee 4
                (i64.and
                  (local.get 1)
                  (i64.const 9223372036854775807)))
              (i64.const -4323737117252386816))
            (i64.add
              (local.get 4)
              (i64.const -4899634919602388992))))
        (local.set 4
          (i64.or
            (i64.shr_u
              (local.get 0)
              (i64.const 60))
            (i64.shl
              (local.get 1)
              (i64.const 4))))
        (block  ;; label = @3
          (br_if 0 (;@3;)
            (i64.lt_u
              (local.tee 0
                (i64.and
                  (local.get 0)
                  (i64.const 1152921504606846975)))
              (i64.const 576460752303423489)))
          (local.set 5
            (i64.add
              (local.get 4)
              (i64.const 4611686018427387905)))
          (br 2 (;@1;)))
        (local.set 5
          (i64.add
            (local.get 4)
            (i64.const 4611686018427387904)))
        (br_if 1 (;@2;)
          (i64.ne
            (i64.xor
              (local.get 0)
              (i64.const 576460752303423488))
            (i64.const 0)))
        (local.set 5
          (i64.add
            (i64.and
              (local.get 5)
              (i64.const 1))
            (local.get 5)))
        (br 1 (;@2;)))
      (block  ;; label = @4
        (br_if 0 (;@4;)
          (select
            (i64.eqz
              (local.get 0))
            (i64.lt_u
              (local.get 4)
              (i64.const 9223090561878065152))
            (i64.eq
              (local.get 4)
              (i64.const 9223090561878065152))))
        (local.set 5
          (i64.or
            (i64.and
              (i64.or
                (i64.shr_u
                  (local.get 0)
                  (i64.const 60))
                (i64.shl
                  (local.get 1)
                  (i64.const 4)))
              (i64.const 2251799813685247))
            (i64.const 9221120237041090560)))
        (br 1 (;@3;)))
      (local.set 5
        (i64.const 9218868437227405312))
      (br_if 0 (;@4;)
        (i64.gt_u
          (local.get 4)
          (i64.const 4899634919602388991)))
      (local.set 5
        (i64.const 0))
      (br_if 0 (;@4;)
        (i32.lt_u
          (local.tee 3
            (i32.wrap_i64
              (i64.shr_u
                (local.get 4)
                (i64.const 48))))
          (i32.const 15249)))
      (call $__lshrti3
        (local.get 2)
        (local.get 0)
        (local.tee 4
          (i64.or
            (i64.and
              (local.get 1)
              (i64.const 281474976710655))
            (i64.const 281474976710656)))
        (i32.sub
          (i32.const 15361)
          (local.get 3)))
      (call $__ashlti3
        (i32.add
          (local.get 2)
          (i32.const 16))
        (local.get 0)
        (local.get 4)
        (i32.add
          (local.get 3)
          (i32.const -15233)))
      (local.set 5
        (i64.or
          (i64.shr_u
            (local.tee 4
              (i64.load
                (local.get 2)))
            (i64.const 60))
          (i64.shl
            (i64.load
              (i32.add
                (local.get 2)
                (i32.const 8)))
            (i64.const 4))))
      (block  ;; label = @5
        (br_if 0 (;@5;)
          (i64.lt_u
            (local.tee 4
              (i64.or
                (i64.and
                  (local.get 4)
                  (i64.const 1152921504606846975))
                (i64.extend_i32_u
                  (i64.ne
                    (i64.or
                      (i64.load offset=16
                        (local.get 2))
                      (i64.load
                        (i32.add
                          (i32.add
                            (local.get 2)
                            (i32.const 16))
                          (i32.const 8))))
                    (i64.const 0)))))
            (i64.const 576460752303423489)))
        (local.set 5
          (i64.add
            (local.get 5)
            (i64.const 1)))
        (br 1 (;@4;)))
      (br_if 0 (;@5;)
        (i64.ne
          (i64.xor
            (local.get 4)
            (i64.const 576460752303423488))
          (i64.const 0)))
      (local.set 5
        (i64.add
          (i64.and
            (local.get 5)
            (i64.const 1))
          (local.get 5))))
    (global.set 0
      (i32.add
        (local.get 2)
        (i32.const 32)))
    (f64.reinterpret_i64
      (i64.or
        (local.get 5)
        (i64.and
          (local.get 1)
          (i64.const -9223372036854775808)))))
  (func $malloc (type 8) (param i32) (result i32)
    (call $emmalloc_malloc_unsigned_long_
      (local.get 0)))
  (func $emmalloc_malloc_unsigned_long_ (type 8) (param i32) (result i32)
    (local i32)
    (block  ;; label = @1
      (br_if 0 (;@1;)
        (local.tee 0
          (call $tryFromFreeList_unsigned_long_
            (local.tee 1
              (select
                (local.get 0)
                (i32.const 1)
                (local.get 0))))))
      (br_if 0 (;@1;)
        (local.tee 0
          (call $newAllocation_unsigned_long_
            (local.get 1))))
      (return
        (i32.const 0)))
    (block  ;; label = @2
      (br_if 0 (;@2;)
        (i32.gt_u
          (call $getAfter_Region*_
            (local.get 0))
          (call $sbrk
            (i32.const 0))))
      (return
        (call $getPayload_Region*_
          (local.get 0))))
    (call $__assert_fail
      (i32.const 1957)
      (i32.const 1985)
      (i32.const 819)
      (i32.const 2098))
    (unreachable))
  (func $tryFromFreeList_unsigned_long_ (type 8) (param i32) (result i32)
    (local i32 i32 i32)
    (block  ;; label = @1
      (block  ;; label = @2
        (block  ;; label = @3
          (br_if 0 (;@3;)
            (i32.lt_u
              (local.tee 1
                (call $getBigEnoughFreeListIndex_unsigned_long_
                  (local.get 0)))
              (i32.const 4)))
          (block  ;; label = @4
            (br_if 0 (;@4;)
              (i32.le_u
                (call $getMinSizeForFreeListIndex_unsigned_long_
                  (local.get 1))
                (local.get 0)))
            (br_if 0 (;@4;)
              (i32.eqz
                (local.tee 2
                  (i32.load
                    (i32.add
                      (i32.shl
                        (local.get 1)
                        (i32.const 2))
                      (i32.const 4156))))))
            (local.set 3
              (i32.const 0))
            (loop  ;; label = @5
              (br_if 4 (;@1;)
                (i32.ge_u
                  (call $getMaxPayload_Region*_
                    (call $fromFreeInfo_FreeInfo*_
                      (local.get 2)))
                  (local.get 0)))
              (local.set 2
                (call $FreeInfo::next__
                  (local.get 2)))
              (br_if 1 (;@4;)
                (i32.gt_u
                  (local.tee 3
                    (i32.add
                      (local.get 3)
                      (i32.const 1)))
                  (i32.const 31)))
              (br_if 0 (;@5;)
                (local.tee 2
                  (i32.load
                    (local.get 2))))))
          (local.set 2
            (i32.const 0))
          (br_if 1 (;@4;)
            (i32.gt_u
              (local.get 1)
              (i32.const 31))))
        (block  ;; label = @6
          (loop  ;; label = @7
            (br_if 1 (;@6;)
              (local.tee 2
                (i32.load
                  (i32.add
                    (i32.shl
                      (local.get 1)
                      (i32.const 2))
                    (i32.const 4160)))))
            (br_if 0 (;@7;)
              (i32.ne
                (local.tee 1
                  (i32.add
                    (local.get 1)
                    (i32.const 1)))
                (i32.const 32))))
          (return
            (i32.const 0)))
        (local.set 2
          (call $useFreeInfo_FreeInfo*__unsigned_long_
            (local.get 2)
            (local.get 0))))
      (return
        (local.get 2)))
    (call $useFreeInfo_FreeInfo*__unsigned_long_
      (local.get 2)
      (local.get 0)))
  (func $newAllocation_unsigned_long_ (type 8) (param i32) (result i32)
    (local i32)
    (block  ;; label = @1
      (br_if 0 (;@1;)
        (i32.eqz
          (local.get 0)))
      (block  ;; label = @2
        (br_if 0 (;@2;)
          (i32.eqz
            (local.tee 1
              (i32.load offset=4292
                (i32.const 0)))))
        (br_if 0 (;@2;)
          (call $Region::getUsed__
            (local.get 1)))
        (call $Region::setUsed_unsigned_long_
          (i32.load offset=4292
            (i32.const 0))
          (i32.const 1))
        (call $removeFromFreeList_Region*_
          (i32.load offset=4292
            (i32.const 0)))
        (local.set 0
          (call $extendLastRegion_unsigned_long_
            (local.get 0)))
        (local.set 1
          (i32.load offset=4292
            (i32.const 0)))
        (block  ;; label = @3
          (br_if 0 (;@3;)
            (i32.eqz
              (local.get 0)))
          (return
            (local.get 1)))
        (call $Region::setUsed_unsigned_long_
          (local.get 1)
          (i32.const 0))
        (return
          (i32.const 0)))
      (return
        (call $allocateRegion_unsigned_long_
          (local.get 0))))
    (call $__assert_fail
      (i32.const 2114)
      (i32.const 1985)
      (i32.const 776)
      (i32.const 2444))
    (unreachable))
  (func $getAfter_Region*_ (type 8) (param i32) (result i32)
    (i32.add
      (local.get 0)
      (call $Region::getTotalSize__
        (local.get 0))))
  (func $getPayload_Region*_ (type 8) (param i32) (result i32)
    (block  ;; label = @1
      (block  ;; label = @2
        (br_if 0 (;@2;)
          (i32.ne
            (i32.sub
              (call $Region::freeInfo__
                (local.get 0))
              (local.get 0))
            (i32.const 8)))
        (br_if 1 (;@1;)
          (i32.eqz
            (call $Region::getUsed__
              (local.get 0))))
        (return
          (call $Region::payload__
            (local.get 0))))
      (call $__assert_fail
        (i32.const 2551)
        (i32.const 1985)
        (i32.const 205)
        (i32.const 2615))
      (unreachable))
    (call $__assert_fail
      (i32.const 2626)
      (i32.const 1985)
      (i32.const 206)
      (i32.const 2615))
    (unreachable))
  (func $free (type 5) (param i32)
    (call $emmalloc_free_void*_
      (local.get 0)))
  (func $emmalloc_free_void*_ (type 5) (param i32)
    (block  ;; label = @1
      (br_if 0 (;@1;)
        (i32.eqz
          (local.get 0)))
      (call $stopUsing_Region*_
        (call $fromPayload_void*_
          (local.get 0)))))
  (func $fromPayload_void*_ (type 8) (param i32) (result i32)
    (i32.add
      (local.get 0)
      (i32.const -8)))
  (func $stopUsing_Region*_ (type 5) (param i32)
    (call $Region::setUsed_unsigned_long_
      (local.get 0)
      (i32.const 0))
    (block  ;; label = @1
      (br_if 0 (;@1;)
        (call $mergeIntoExistingFreeRegion_Region*_
          (local.get 0)))
      (call $addToFreeList_Region*_
        (local.get 0))))
  (func $Region::getUsed__ (type 8) (param i32) (result i32)
    (i32.and
      (i32.load
        (local.get 0))
      (i32.const 1)))
  (func $getMaxPayload_Region*_ (type 8) (param i32) (result i32)
    (i32.add
      (call $Region::getTotalSize__
        (local.get 0))
      (i32.const -8)))
  (func $Region::setUsed_unsigned_long_ (type 2) (param i32 i32)
    (i32.store
      (local.get 0)
      (i32.or
        (i32.and
          (i32.load
            (local.get 0))
          (i32.const -2))
        (i32.and
          (local.get 1)
          (i32.const 1)))))
  (func $possiblySplitRemainder_Region*__unsigned_long_ (type 2) (param i32 i32)
    (local i32 i32)
    (block  ;; label = @1
      (block  ;; label = @2
        (br_if 0 (;@2;)
          (i32.lt_u
            (local.tee 2
              (call $getMaxPayload_Region*_
                (local.get 0)))
            (local.get 1)))
        (block  ;; label = @3
          (block  ;; label = @4
            (block  ;; label = @5
              (br_if 0 (;@5;)
                (i32.ne
                  (i32.and
                    (local.tee 3
                      (i32.sub
                        (local.get 2)
                        (local.get 1)))
                    (i32.const -8))
                  (i32.const 8)))
              (br_if 0 (;@5;)
                (i32.ne
                  (i32.load offset=4292
                    (i32.const 0))
                  (local.get 0)))
              (br_if 2 (;@3;)
                (i32.eqz
                  (call $extendLastRegion_unsigned_long_
                    (i32.add
                      (local.get 2)
                      (i32.const 8)))))
              (br_if 1 (;@4;)
                (i32.gt_u
                  (i32.add
                    (local.get 3)
                    (i32.const 8))
                  (i32.const 15)))
              (call $__assert_fail
                (i32.const 2277)
                (i32.const 1985)
                (i32.const 445)
                (i32.const 2254))
              (unreachable))
            (br_if 1 (;@4;)
              (i32.lt_u
                (local.get 3)
                (i32.const 16))))
          (local.set 2
            (call $getAfter_Region*_
              (local.get 0)))
          (call $Region::setTotalSize_unsigned_long_
            (local.get 0)
            (i32.sub
              (local.tee 1
                (call $alignUpPointer_void*_
                  (i32.add
                    (call $getPayload_Region*_
                      (local.get 0))
                    (local.get 1))))
              (local.get 0)))
          (br_if 2 (;@3;)
            (i32.le_u
              (local.tee 2
                (i32.sub
                  (local.get 2)
                  (local.get 1)))
              (i32.const 15)))
          (call $Region::setTotalSize_unsigned_long_
            (local.get 1)
            (local.get 2))
          (i32.store
            (call $Region::prev__
              (local.get 1))
            (local.get 0))
          (block  ;; label = @6
            (block  ;; label = @7
              (br_if 0 (;@7;)
                (i32.ne
                  (i32.load offset=4292
                    (i32.const 0))
                  (local.get 0)))
              (local.set 0
                (i32.const 4292))
              (br 1 (;@6;)))
            (local.set 0
              (call $Region::prev__
                (call $Region::next__
                  (local.get 1)))))
          (i32.store
            (local.get 0)
            (local.get 1))
          (call $stopUsing_Region*_
            (local.get 1)))
        (return))
      (call $__assert_fail
        (i32.const 2234)
        (i32.const 1985)
        (i32.const 428)
        (i32.const 2254))
      (unreachable))
    (call $__assert_fail
      (i32.const 2302)
      (i32.const 1985)
      (i32.const 460)
      (i32.const 2254))
    (unreachable))
  (func $Region::next__ (type 8) (param i32) (result i32)
    (local i32)
    (local.set 1
      (i32.const 0))
    (block  ;; label = @1
      (br_if 0 (;@1;)
        (i32.eq
          (i32.load offset=4292
            (i32.const 0))
          (local.get 0)))
      (local.set 1
        (i32.add
          (local.get 0)
          (call $Region::getTotalSize__
            (local.get 0)))))
    (local.get 1))
  (func $removeFromFreeList_Region*_ (type 5) (param i32)
    (local i32)
    (local.set 1
      (call $getFreeListIndex_unsigned_long_
        (call $getMaxPayload_Region*_
          (local.get 0))))
    (block  ;; label = @1
      (br_if 0 (;@1;)
        (i32.ne
          (local.tee 0
            (call $Region::freeInfo__
              (local.get 0)))
          (i32.load
            (local.tee 1
              (i32.add
                (i32.shl
                  (local.get 1)
                  (i32.const 2))
                (i32.const 4160))))))
      (i32.store
        (local.get 1)
        (i32.load
          (call $FreeInfo::next__
            (local.get 0)))))
    (block  ;; label = @2
      (br_if 0 (;@2;)
        (i32.eqz
          (i32.load
            (call $FreeInfo::prev__
              (local.get 0)))))
      (local.set 1
        (i32.load
          (call $FreeInfo::next__
            (local.get 0))))
      (i32.store
        (call $FreeInfo::next__
          (i32.load
            (call $FreeInfo::prev__
              (local.get 0))))
        (local.get 1)))
    (block  ;; label = @3
      (br_if 0 (;@3;)
        (i32.eqz
          (i32.load
            (call $FreeInfo::next__
              (local.get 0)))))
      (local.set 1
        (i32.load
          (call $FreeInfo::prev__
            (local.get 0))))
      (i32.store
        (call $FreeInfo::prev__
          (i32.load
            (call $FreeInfo::next__
              (local.get 0))))
        (local.get 1))))
  (func $Region::getTotalSize__ (type 8) (param i32) (result i32)
    (i32.shr_u
      (i32.load
        (local.get 0))
      (i32.const 1)))
  (func $Region::incTotalSize_unsigned_long_ (type 2) (param i32 i32)
    (i32.store
      (local.get 0)
      (i32.add
        (i32.load
          (local.get 0))
        (i32.shl
          (local.get 1)
          (i32.const 1)))))
  (func $Region::prev__ (type 8) (param i32) (result i32)
    (i32.add
      (local.get 0)
      (i32.const 4)))
  (func $extendLastRegion_unsigned_long_ (type 8) (param i32) (result i32)
    (local i32 i32)
    (local.set 1
      (i32.const 0))
    (local.set 2
      (call $getMaxPayload_Region*_
        (i32.load offset=4292
          (i32.const 0))))
    (block  ;; label = @1
      (block  ;; label = @2
        (br_if 0 (;@2;)
          (i32.eq
            (local.tee 2
              (call $sbrk
                (local.tee 0
                  (i32.sub
                    (call $alignUp_unsigned_long_
                      (local.get 0))
                    (local.get 2)))))
            (i32.const -1)))
        (br_if 1 (;@1;)
          (i32.ne
            (local.get 2)
            (call $getAfter_Region*_
              (i32.load offset=4292
                (i32.const 0)))))
        (call $growRegion_Region*__unsigned_long_
          (i32.load offset=4292
            (i32.const 0))
          (local.get 0))
        (local.set 1
          (i32.const 1)))
      (return
        (local.get 1)))
    (call $__assert_fail
      (i32.const 2336)
      (i32.const 1985)
      (i32.const 417)
      (i32.const 2364))
    (unreachable))
  (func $isPowerOf2_unsigned_long_ (type 8) (param i32) (result i32)
    (i32.eq
      (i32.popcnt
        (local.get 0))
      (i32.const 1)))
  (func $getBigEnoughFreeListIndex_unsigned_long_ (type 8) (param i32) (result i32)
    (block  ;; label = @1
      (br_if 0 (;@1;)
        (local.get 0))
      (call $__assert_fail
        (i32.const 2114)
        (i32.const 1985)
        (i32.const 267)
        (i32.const 2123))
      (unreachable))
    (i32.add
      (call $getFreeListIndex_unsigned_long_
        (local.get 0))
      (i32.xor
        (call $isPowerOf2_unsigned_long_
          (local.get 0))
        (i32.const 1))))
  (func $getMinSizeForFreeListIndex_unsigned_long_ (type 8) (param i32) (result i32)
    (i32.shl
      (i32.const 1)
      (local.get 0)))
  (func $fromFreeInfo_FreeInfo*_ (type 8) (param i32) (result i32)
    (i32.add
      (local.get 0)
      (i32.const -8)))
  (func $FreeInfo::next__ (type 8) (param i32) (result i32)
    (i32.add
      (local.get 0)
      (i32.const 4)))
  (func $useFreeInfo_FreeInfo*__unsigned_long_ (type 10) (param i32 i32) (result i32)
    (call $removeFromFreeList_Region*_
      (local.tee 0
        (call $fromFreeInfo_FreeInfo*_
          (local.get 0))))
    (call $useRegion_Region*__unsigned_long_
      (local.get 0)
      (local.get 1))
    (local.get 0))
  (func $allocateRegion_unsigned_long_ (type 8) (param i32) (result i32)
    (local i32 i32 i32 i32)
    (local.set 1
      (i32.const 0))
    (block  ;; label = @1
      (block  ;; label = @2
        (block  ;; label = @3
          (block  ;; label = @4
            (br_if 0 (;@4;)
              (i32.eq
                (local.tee 0
                  (call $sbrk
                    (local.tee 2
                      (i32.add
                        (call $alignUp_unsigned_long_
                          (local.get 0))
                        (i32.const 8)))))
                (i32.const -1)))
            (block  ;; label = @5
              (block  ;; label = @6
                (block  ;; label = @7
                  (block  ;; label = @8
                    (br_if 0 (;@8;)
                      (i32.eq
                        (local.get 0)
                        (local.tee 3
                          (call $alignUpPointer_void*_
                            (local.get 0)))))
                    (br_if 4 (;@4;)
                      (i32.eq
                        (local.tee 4
                          (call $sbrk
                            (i32.sub
                              (local.get 3)
                              (local.get 0))))
                        (i32.const -1)))
                    (br_if 5 (;@3;)
                      (i32.ne
                        (local.get 4)
                        (i32.add
                          (local.get 0)
                          (local.get 2))))
                    (block  ;; label = @9
                      (br_if 0 (;@9;)
                        (i32.load offset=4292
                          (i32.const 0)))
                      (local.set 0
                        (local.get 3))
                      (br_if 2 (;@7;)
                        (i32.eqz
                          (i32.load offset=4288
                            (i32.const 0))))
                      (br 8 (;@1;)))
                    (call $__assert_fail
                      (i32.const 2514)
                      (i32.const 1985)
                      (i32.const 743)
                      (i32.const 2499))
                    (unreachable))
                  (local.set 1
                    (i32.load offset=4288
                      (i32.const 0)))
                  (br_if 1 (;@8;)
                    (local.tee 4
                      (i32.load offset=4292
                        (i32.const 0))))
                  (br_if 6 (;@3;)
                    (local.get 1)))
                (i32.store offset=4288
                  (i32.const 0)
                  (local.get 3))
                (br 1 (;@8;)))
              (br_if 3 (;@6;)
                (i32.eqz
                  (local.get 1)))
              (i32.store
                (call $Region::prev__
                  (local.get 0))
                (local.get 4)))
            (i32.store offset=4292
              (i32.const 0)
              (local.get 3))
            (call $Region::setTotalSize_unsigned_long_
              (local.get 0)
              (local.get 2))
            (call $Region::setUsed_unsigned_long_
              (local.get 0)
              (i32.const 1))
            (local.set 1
              (local.get 0)))
          (return
            (local.get 1)))
        (call $__assert_fail
          (i32.const 2458)
          (i32.const 1985)
          (i32.const 741)
          (i32.const 2499))
        (unreachable))
      (call $__assert_fail
        (i32.const 2539)
        (i32.const 1985)
        (i32.const 756)
        (i32.const 2499))
      (unreachable))
    (call $__assert_fail
      (i32.const 2526)
      (i32.const 1985)
      (i32.const 752)
      (i32.const 2499))
    (unreachable))
  (func $Region::freeInfo__ (type 8) (param i32) (result i32)
    (i32.add
      (local.get 0)
      (i32.const 8)))
  (func $Region::payload__ (type 8) (param i32) (result i32)
    (i32.add
      (local.get 0)
      (i32.const 8)))
  (func $getFreeListIndex_unsigned_long_ (type 8) (param i32) (result i32)
    (block  ;; label = @1
      (block  ;; label = @2
        (br_if 0 (;@2;)
          (i32.eqz
            (local.get 0)))
        (br_if 1 (;@1;)
          (i32.ge_u
            (i32.add
              (local.tee 0
                (call $lowerBoundPowerOf2_unsigned_long_
                  (select
                    (local.get 0)
                    (i32.const 8)
                    (i32.gt_u
                      (local.get 0)
                      (i32.const 8)))))
              (i32.const -3))
            (i32.const 29)))
        (return
          (local.get 0)))
      (call $__assert_fail
        (i32.const 2114)
        (i32.const 1985)
        (i32.const 250)
        (i32.const 2149))
      (unreachable))
    (call $__assert_fail
      (i32.const 2166)
      (i32.const 1985)
      (i32.const 256)
      (i32.const 2149))
    (unreachable))
  (func $useRegion_Region*__unsigned_long_ (type 2) (param i32 i32)
    (block  ;; label = @1
      (br_if 0 (;@1;)
        (local.get 1))
      (call $__assert_fail
        (i32.const 2114)
        (i32.const 1985)
        (i32.const 479)
        (i32.const 2224))
      (unreachable))
    (call $Region::setUsed_unsigned_long_
      (local.get 0)
      (i32.const 1))
    (call $possiblySplitRemainder_Region*__unsigned_long_
      (local.get 0)
      (local.get 1)))
  (func $lowerBoundPowerOf2_unsigned_long_ (type 8) (param i32) (result i32)
    (select
      (i32.sub
        (i32.const 31)
        (i32.clz
          (local.get 0)))
      (i32.const 1)
      (local.get 0)))
  (func $FreeInfo::prev__ (type 8) (param i32) (result i32)
    (local.get 0))
  (func $alignUpPointer_void*_ (type 8) (param i32) (result i32)
    (call $alignUp_unsigned_long_
      (local.get 0)))
  (func $Region::setTotalSize_unsigned_long_ (type 2) (param i32 i32)
    (i32.store
      (local.get 0)
      (i32.or
        (i32.and
          (i32.load
            (local.get 0))
          (i32.const 1))
        (i32.shl
          (local.get 1)
          (i32.const 1)))))
  (func $alignUp_unsigned_long_ (type 8) (param i32) (result i32)
    (i32.and
      (i32.add
        (local.get 0)
        (i32.const 7))
      (i32.const -8)))
  (func $growRegion_Region*__unsigned_long_ (type 2) (param i32 i32)
    (block  ;; label = @1
      (br_if 0 (;@1;)
        (call $Region::getUsed__
          (local.get 0)))
      (call $removeFromFreeList_Region*_
        (local.get 0)))
    (call $Region::incTotalSize_unsigned_long_
      (local.get 0)
      (local.get 1))
    (block  ;; label = @2
      (br_if 0 (;@2;)
        (call $Region::getUsed__
          (local.get 0)))
      (call $addToFreeList_Region*_
        (local.get 0))))
  (func $mergeIntoExistingFreeRegion_Region*_ (type 8) (param i32) (result i32)
    (local i32 i32)
    (block  ;; label = @1
      (br_if 0 (;@1;)
        (i32.gt_u
          (call $getAfter_Region*_
            (local.get 0))
          (call $sbrk
            (i32.const 0))))
      (local.set 1
        (i32.load
          (call $Region::prev__
            (local.get 0))))
      (local.set 2
        (call $Region::next__
          (local.get 0)))
      (block  ;; label = @2
        (block  ;; label = @3
          (block  ;; label = @4
            (br_if 0 (;@4;)
              (i32.eqz
                (local.get 1)))
            (br_if 0 (;@4;)
              (call $Region::getUsed__
                (local.get 1)))
            (call $removeFromFreeList_Region*_
              (local.get 1))
            (call $Region::incTotalSize_unsigned_long_
              (local.get 1)
              (call $Region::getTotalSize__
                (local.get 0)))
            (block  ;; label = @5
              (block  ;; label = @6
                (block  ;; label = @7
                  (br_if 0 (;@7;)
                    (local.get 2))
                  (local.set 2
                    (i32.const 4292))
                  (br_if 1 (;@6;)
                    (i32.eq
                      (i32.load offset=4292
                        (i32.const 0))
                      (local.get 0)))
                  (call $__assert_fail
                    (i32.const 2423)
                    (i32.const 1985)
                    (i32.const 338)
                    (i32.const 2395))
                  (unreachable))
                (i32.store
                  (call $Region::prev__
                    (local.get 2))
                  (local.get 1))
                (br_if 1 (;@6;)
                  (call $Region::getUsed__
                    (local.get 2)))
                (call $removeFromFreeList_Region*_
                  (local.get 2))
                (call $Region::incTotalSize_unsigned_long_
                  (local.get 1)
                  (call $Region::getTotalSize__
                    (local.get 2)))
                (block  ;; label = @8
                  (br_if 0 (;@8;)
                    (i32.ne
                      (local.get 2)
                      (i32.load offset=4292
                        (i32.const 0))))
                  (local.set 2
                    (i32.const 4292))
                  (br 1 (;@7;)))
                (local.set 2
                  (call $Region::prev__
                    (call $Region::next__
                      (local.get 2)))))
              (i32.store
                (local.get 2)
                (local.get 1)))
            (call $addToFreeList_Region*_
              (local.get 1))
            (br 1 (;@7;)))
          (local.set 1
            (i32.const 0))
          (br_if 1 (;@7;)
            (i32.eqz
              (local.get 2)))
          (br_if 1 (;@7;)
            (call $Region::getUsed__
              (local.get 2)))
          (call $removeFromFreeList_Region*_
            (local.get 2))
          (call $Region::incTotalSize_unsigned_long_
            (local.get 0)
            (call $Region::getTotalSize__
              (local.get 2)))
          (block  ;; label = @9
            (block  ;; label = @10
              (br_if 0 (;@10;)
                (i32.ne
                  (local.get 2)
                  (i32.load offset=4292
                    (i32.const 0))))
              (local.set 1
                (i32.const 4292))
              (br 1 (;@9;)))
            (local.set 1
              (call $Region::prev__
                (call $Region::next__
                  (local.get 2)))))
          (i32.store
            (local.get 1)
            (local.get 0))
          (call $addToFreeList_Region*_
            (local.get 0)))
        (local.set 1
          (i32.const 1)))
      (return
        (local.get 1)))
    (call $__assert_fail
      (i32.const 1957)
      (i32.const 1985)
      (i32.const 324)
      (i32.const 2395))
    (unreachable))
  (func $addToFreeList_Region*_ (type 5) (param i32)
    (local i32 i32)
    (block  ;; label = @1
      (br_if 0 (;@1;)
        (i32.gt_u
          (call $getAfter_Region*_
            (local.get 0))
          (call $sbrk
            (i32.const 0))))
      (local.set 1
        (call $getFreeListIndex_unsigned_long_
          (call $getMaxPayload_Region*_
            (local.get 0))))
      (local.set 0
        (call $Region::freeInfo__
          (local.get 0)))
      (local.set 1
        (i32.load
          (local.tee 2
            (i32.add
              (i32.shl
                (local.get 1)
                (i32.const 2))
              (i32.const 4160)))))
      (i32.store
        (local.get 2)
        (local.get 0))
      (i32.store
        (call $FreeInfo::prev__
          (local.get 0))
        (i32.const 0))
      (i32.store
        (call $FreeInfo::next__
          (local.get 0))
        (local.get 1))
      (block  ;; label = @2
        (br_if 0 (;@2;)
          (i32.eqz
            (local.get 1)))
        (i32.store
          (call $FreeInfo::prev__
            (local.get 1))
          (local.get 0)))
      (return))
    (call $__assert_fail
      (i32.const 1957)
      (i32.const 1985)
      (i32.const 306)
      (i32.const 2381))
    (unreachable))
  (func $sbrk (type 8) (param i32) (result i32)
    (local i32 i32 i32)
    (local.set 1
      (call $emscripten_get_sbrk_ptr))
    (local.set 2
      (memory.size))
    (block  ;; label = @1
      (br_if 0 (;@1;)
        (i32.le_u
          (local.tee 0
            (i32.add
              (local.tee 3
                (i32.load
                  (local.get 1)))
              (local.get 0)))
          (i32.shl
            (local.get 2)
            (i32.const 16))))
      (br_if 0 (;@1;)
        (call $emscripten_resize_heap
          (local.get 0)))
      (i32.store
        (call $__errno_location)
        (i32.const 48))
      (return
        (i32.const -1)))
    (i32.store
      (local.get 1)
      (local.get 0))
    (local.get 3))
  (func $memcpy (type 0) (param i32 i32 i32) (result i32)
    (local i32 i32 i32)
    (block  ;; label = @1
      (br_if 0 (;@1;)
        (i32.lt_u
          (local.get 2)
          (i32.const 8192)))
      (drop
        (call $emscripten_memcpy_big
          (local.get 0)
          (local.get 1)
          (local.get 2)))
      (return
        (local.get 0)))
    (local.set 3
      (i32.add
        (local.get 0)
        (local.get 2)))
    (block  ;; label = @2
      (block  ;; label = @3
        (br_if 0 (;@3;)
          (i32.and
            (i32.xor
              (local.get 1)
              (local.get 0))
            (i32.const 3)))
        (block  ;; label = @4
          (block  ;; label = @5
            (br_if 0 (;@5;)
              (i32.ge_s
                (local.get 2)
                (i32.const 1)))
            (local.set 2
              (local.get 0))
            (br 1 (;@4;)))
          (block  ;; label = @6
            (br_if 0 (;@6;)
              (i32.and
                (local.get 0)
                (i32.const 3)))
            (local.set 2
              (local.get 0))
            (br 1 (;@5;)))
          (local.set 2
            (local.get 0))
          (loop  ;; label = @7
            (i32.store8
              (local.get 2)
              (i32.load8_u
                (local.get 1)))
            (local.set 1
              (i32.add
                (local.get 1)
                (i32.const 1)))
            (br_if 1 (;@6;)
              (i32.ge_u
                (local.tee 2
                  (i32.add
                    (local.get 2)
                    (i32.const 1)))
                (local.get 3)))
            (br_if 0 (;@7;)
              (i32.and
                (local.get 2)
                (i32.const 3)))))
        (block  ;; label = @8
          (br_if 0 (;@8;)
            (i32.lt_u
              (local.tee 4
                (i32.and
                  (local.get 3)
                  (i32.const -4)))
              (i32.const 64)))
          (br_if 0 (;@8;)
            (i32.gt_u
              (local.get 2)
              (local.tee 5
                (i32.add
                  (local.get 4)
                  (i32.const -64)))))
          (loop  ;; label = @9
            (i32.store
              (local.get 2)
              (i32.load
                (local.get 1)))
            (i32.store offset=4
              (local.get 2)
              (i32.load offset=4
                (local.get 1)))
            (i32.store offset=8
              (local.get 2)
              (i32.load offset=8
                (local.get 1)))
            (i32.store offset=12
              (local.get 2)
              (i32.load offset=12
                (local.get 1)))
            (i32.store offset=16
              (local.get 2)
              (i32.load offset=16
                (local.get 1)))
            (i32.store offset=20
              (local.get 2)
              (i32.load offset=20
                (local.get 1)))
            (i32.store offset=24
              (local.get 2)
              (i32.load offset=24
                (local.get 1)))
            (i32.store offset=28
              (local.get 2)
              (i32.load offset=28
                (local.get 1)))
            (i32.store offset=32
              (local.get 2)
              (i32.load offset=32
                (local.get 1)))
            (i32.store offset=36
              (local.get 2)
              (i32.load offset=36
                (local.get 1)))
            (i32.store offset=40
              (local.get 2)
              (i32.load offset=40
                (local.get 1)))
            (i32.store offset=44
              (local.get 2)
              (i32.load offset=44
                (local.get 1)))
            (i32.store offset=48
              (local.get 2)
              (i32.load offset=48
                (local.get 1)))
            (i32.store offset=52
              (local.get 2)
              (i32.load offset=52
                (local.get 1)))
            (i32.store offset=56
              (local.get 2)
              (i32.load offset=56
                (local.get 1)))
            (i32.store offset=60
              (local.get 2)
              (i32.load offset=60
                (local.get 1)))
            (local.set 1
              (i32.add
                (local.get 1)
                (i32.const 64)))
            (br_if 0 (;@9;)
              (i32.le_u
                (local.tee 2
                  (i32.add
                    (local.get 2)
                    (i32.const 64)))
                (local.get 5)))))
        (br_if 1 (;@8;)
          (i32.ge_u
            (local.get 2)
            (local.get 4)))
        (loop  ;; label = @10
          (i32.store
            (local.get 2)
            (i32.load
              (local.get 1)))
          (local.set 1
            (i32.add
              (local.get 1)
              (i32.const 4)))
          (br_if 0 (;@10;)
            (i32.lt_u
              (local.tee 2
                (i32.add
                  (local.get 2)
                  (i32.const 4)))
              (local.get 4)))
          (br 2 (;@8;))
          (unreachable))
        (unreachable))
      (block  ;; label = @11
        (br_if 0 (;@11;)
          (i32.ge_u
            (local.get 3)
            (i32.const 4)))
        (local.set 2
          (local.get 0))
        (br 1 (;@10;)))
      (block  ;; label = @12
        (br_if 0 (;@12;)
          (i32.ge_u
            (local.tee 4
              (i32.add
                (local.get 3)
                (i32.const -4)))
            (local.get 0)))
        (local.set 2
          (local.get 0))
        (br 1 (;@11;)))
      (local.set 2
        (local.get 0))
      (loop  ;; label = @13
        (i32.store8
          (local.get 2)
          (i32.load8_u
            (local.get 1)))
        (i32.store8 offset=1
          (local.get 2)
          (i32.load8_u offset=1
            (local.get 1)))
        (i32.store8 offset=2
          (local.get 2)
          (i32.load8_u offset=2
            (local.get 1)))
        (i32.store8 offset=3
          (local.get 2)
          (i32.load8_u offset=3
            (local.get 1)))
        (local.set 1
          (i32.add
            (local.get 1)
            (i32.const 4)))
        (br_if 0 (;@13;)
          (i32.le_u
            (local.tee 2
              (i32.add
                (local.get 2)
                (i32.const 4)))
            (local.get 4)))))
    (block  ;; label = @14
      (br_if 0 (;@14;)
        (i32.ge_u
          (local.get 2)
          (local.get 3)))
      (loop  ;; label = @15
        (i32.store8
          (local.get 2)
          (i32.load8_u
            (local.get 1)))
        (local.set 1
          (i32.add
            (local.get 1)
            (i32.const 1)))
        (br_if 0 (;@15;)
          (i32.ne
            (local.tee 2
              (i32.add
                (local.get 2)
                (i32.const 1)))
            (local.get 3)))))
    (local.get 0))
  (func $memset (type 0) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i64)
    (block  ;; label = @1
      (br_if 0 (;@1;)
        (i32.eqz
          (local.get 2)))
      (i32.store8
        (i32.add
          (local.tee 3
            (i32.add
              (local.get 2)
              (local.get 0)))
          (i32.const -1))
        (local.get 1))
      (i32.store8
        (local.get 0)
        (local.get 1))
      (br_if 0 (;@1;)
        (i32.lt_u
          (local.get 2)
          (i32.const 3)))
      (i32.store8
        (i32.add
          (local.get 3)
          (i32.const -2))
        (local.get 1))
      (i32.store8 offset=1
        (local.get 0)
        (local.get 1))
      (i32.store8
        (i32.add
          (local.get 3)
          (i32.const -3))
        (local.get 1))
      (i32.store8 offset=2
        (local.get 0)
        (local.get 1))
      (br_if 0 (;@1;)
        (i32.lt_u
          (local.get 2)
          (i32.const 7)))
      (i32.store8
        (i32.add
          (local.get 3)
          (i32.const -4))
        (local.get 1))
      (i32.store8 offset=3
        (local.get 0)
        (local.get 1))
      (br_if 0 (;@1;)
        (i32.lt_u
          (local.get 2)
          (i32.const 9)))
      (i32.store
        (local.tee 3
          (i32.add
            (local.get 0)
            (local.tee 4
              (i32.and
                (i32.sub
                  (i32.const 0)
                  (local.get 0))
                (i32.const 3)))))
        (local.tee 1
          (i32.mul
            (i32.and
              (local.get 1)
              (i32.const 255))
            (i32.const 16843009))))
      (i32.store
        (i32.add
          (local.tee 2
            (i32.add
              (local.get 3)
              (local.tee 4
                (i32.and
                  (i32.sub
                    (local.get 2)
                    (local.get 4))
                  (i32.const -4)))))
          (i32.const -4))
        (local.get 1))
      (br_if 0 (;@1;)
        (i32.lt_u
          (local.get 4)
          (i32.const 9)))
      (i32.store offset=8
        (local.get 3)
        (local.get 1))
      (i32.store offset=4
        (local.get 3)
        (local.get 1))
      (i32.store
        (i32.add
          (local.get 2)
          (i32.const -8))
        (local.get 1))
      (i32.store
        (i32.add
          (local.get 2)
          (i32.const -12))
        (local.get 1))
      (br_if 0 (;@1;)
        (i32.lt_u
          (local.get 4)
          (i32.const 25)))
      (i32.store offset=24
        (local.get 3)
        (local.get 1))
      (i32.store offset=20
        (local.get 3)
        (local.get 1))
      (i32.store offset=16
        (local.get 3)
        (local.get 1))
      (i32.store offset=12
        (local.get 3)
        (local.get 1))
      (i32.store
        (i32.add
          (local.get 2)
          (i32.const -16))
        (local.get 1))
      (i32.store
        (i32.add
          (local.get 2)
          (i32.const -20))
        (local.get 1))
      (i32.store
        (i32.add
          (local.get 2)
          (i32.const -24))
        (local.get 1))
      (i32.store
        (i32.add
          (local.get 2)
          (i32.const -28))
        (local.get 1))
      (br_if 0 (;@1;)
        (i32.lt_u
          (local.tee 2
            (i32.sub
              (local.get 4)
              (local.tee 5
                (i32.or
                  (i32.and
                    (local.get 3)
                    (i32.const 4))
                  (i32.const 24)))))
          (i32.const 32)))
      (local.set 6
        (i64.or
          (i64.shl
            (local.tee 6
              (i64.extend_i32_u
                (local.get 1)))
            (i64.const 32))
          (local.get 6)))
      (local.set 1
        (i32.add
          (local.get 3)
          (local.get 5)))
      (loop  ;; label = @2
        (i64.store offset=24
          (local.get 1)
          (local.get 6))
        (i64.store offset=16
          (local.get 1)
          (local.get 6))
        (i64.store offset=8
          (local.get 1)
          (local.get 6))
        (i64.store
          (local.get 1)
          (local.get 6))
        (local.set 1
          (i32.add
            (local.get 1)
            (i32.const 32)))
        (br_if 0 (;@2;)
          (i32.gt_u
            (local.tee 2
              (i32.add
                (local.get 2)
                (i32.const -32)))
            (i32.const 31)))))
    (local.get 0))
  (func $setThrew (type 2) (param i32 i32)
    (block  ;; label = @1
      (br_if 0 (;@1;)
        (i32.load offset=4296
          (i32.const 0)))
      (i32.store offset=4300
        (i32.const 0)
        (local.get 1))
      (i32.store offset=4296
        (i32.const 0)
        (local.get 0))))
  (func $fflush (type 8) (param i32) (result i32)
    (local i32 i32)
    (block  ;; label = @1
      (block  ;; label = @2
        (br_if 0 (;@2;)
          (i32.eqz
            (local.get 0)))
        (block  ;; label = @3
          (br_if 0 (;@3;)
            (i32.gt_s
              (i32.load offset=76
                (local.get 0))
              (i32.const -1)))
          (return
            (call $__fflush_unlocked
              (local.get 0))))
        (local.set 1
          (call $__lockfile
            (local.get 0)))
        (local.set 2
          (call $__fflush_unlocked
            (local.get 0)))
        (br_if 1 (;@2;)
          (i32.eqz
            (local.get 1)))
        (call $__unlockfile
          (local.get 0))
        (return
          (local.get 2)))
      (local.set 2
        (i32.const 0))
      (block  ;; label = @4
        (br_if 0 (;@4;)
          (i32.eqz
            (i32.load offset=2792
              (i32.const 0))))
        (local.set 2
          (call $fflush
            (i32.load offset=2792
              (i32.const 0)))))
      (block  ;; label = @5
        (br_if 0 (;@5;)
          (i32.eqz
            (local.tee 0
              (i32.load
                (call $__ofl_lock)))))
        (loop  ;; label = @6
          (local.set 1
            (i32.const 0))
          (block  ;; label = @7
            (br_if 0 (;@7;)
              (i32.lt_s
                (i32.load offset=76
                  (local.get 0))
                (i32.const 0)))
            (local.set 1
              (call $__lockfile
                (local.get 0))))
          (block  ;; label = @8
            (br_if 0 (;@8;)
              (i32.le_u
                (i32.load offset=20
                  (local.get 0))
                (i32.load offset=28
                  (local.get 0))))
            (local.set 2
              (i32.or
                (call $__fflush_unlocked
                  (local.get 0))
                (local.get 2))))
          (block  ;; label = @9
            (br_if 0 (;@9;)
              (i32.eqz
                (local.get 1)))
            (call $__unlockfile
              (local.get 0)))
          (br_if 0 (;@9;)
            (local.tee 0
              (i32.load offset=56
                (local.get 0))))))
      (call $__ofl_unlock))
    (local.get 2))
  (func $__fflush_unlocked (type 8) (param i32) (result i32)
    (local i32 i32)
    (block  ;; label = @1
      (br_if 0 (;@1;)
        (i32.le_u
          (i32.load offset=20
            (local.get 0))
          (i32.load offset=28
            (local.get 0))))
      (drop
        (call_indirect (type 0)
          (local.get 0)
          (i32.const 0)
          (i32.const 0)
          (i32.load offset=36
            (local.get 0))))
      (br_if 0 (;@1;)
        (i32.load offset=20
          (local.get 0)))
      (return
        (i32.const -1)))
    (block  ;; label = @2
      (br_if 0 (;@2;)
        (i32.ge_u
          (local.tee 1
            (i32.load offset=4
              (local.get 0)))
          (local.tee 2
            (i32.load offset=8
              (local.get 0)))))
      (drop
        (call_indirect (type 3)
          (local.get 0)
          (i64.extend_i32_s
            (i32.sub
              (local.get 1)
              (local.get 2)))
          (i32.const 1)
          (i32.load offset=40
            (local.get 0)))))
    (i32.store offset=28
      (local.get 0)
      (i32.const 0))
    (i64.store offset=16
      (local.get 0)
      (i64.const 0))
    (i64.store offset=4 align=4
      (local.get 0)
      (i64.const 0))
    (i32.const 0))
  (func $stackSave (type 27) (result i32)
    (global.get 0))
  (func $stackAlloc (type 21) (param i32) (result i32)
    (local i32)
    (global.set 0
      (local.tee 1
        (i32.and
          (i32.sub
            (global.get 0)
            (local.get 0))
          (i32.const -16))))
    (local.get 1))
  (func $stackRestore (type 26) (param i32)
    (global.set 0
      (local.get 0)))
  (func $__growWasmMemory (type 21) (param i32) (result i32)
    (memory.grow
      (local.get 0)))
  (func $dynCall_ii (type 28) (param i32 i32) (result i32)
    (call_indirect (type 21)
      (local.get 1)
      (local.get 0)))
  (func $dynCall_iiii (type 29) (param i32 i32 i32 i32) (result i32)
    (call_indirect (type 22)
      (local.get 1)
      (local.get 2)
      (local.get 3)
      (local.get 0)))
  (func $dynCall_jiji (type 30) (param i32 i32 i64 i32) (result i64)
    (call_indirect (type 23)
      (local.get 1)
      (local.get 2)
      (local.get 3)
      (local.get 0)))
  (func $dynCall_iidiiii (type 31) (param i32 i32 f64 i32 i32 i32 i32) (result i32)
    (call_indirect (type 24)
      (local.get 1)
      (local.get 2)
      (local.get 3)
      (local.get 4)
      (local.get 5)
      (local.get 6)
      (local.get 0)))
  (func $dynCall_vii (type 32) (param i32 i32 i32)
    (call_indirect (type 25)
      (local.get 1)
      (local.get 2)
      (local.get 0)))
  (func $legalstub$dynCall_jiji (type 33) (param i32 i32 i32 i32 i32) (result i32)
    (local i64)
    (local.set 5
      (call $dynCall_jiji
        (local.get 0)
        (local.get 1)
        (i64.or
          (i64.extend_i32_u
            (local.get 2))
          (i64.shl
            (i64.extend_i32_u
              (local.get 3))
            (i64.const 32)))
        (local.get 4)))
    (call $setTempRet0
      (i32.wrap_i64
        (i64.shr_u
          (local.get 5)
          (i64.const 32))))
    (i32.wrap_i64
      (local.get 5)))
  (global (;0;) (mut i32) (i32.const 5247184))
  (global (;1;) i32 (i32.const 4304))
  (export "__wasm_call_ctors" (func $__wasm_call_ctors))
  (export "main_bytes" (func $main_bytes))
  (export "malloc" (func $malloc))
  (export "free" (func $free))
  (export "main" (func $main))
  (export "__errno_location" (func $__errno_location))
  (export "fflush" (func $fflush))
  (export "setThrew" (func $setThrew))
  (export "__data_end" (global 1))
  (export "stackSave" (func $stackSave))
  (export "stackAlloc" (func $stackAlloc))
  (export "stackRestore" (func $stackRestore))
  (export "__growWasmMemory" (func $__growWasmMemory))
  (export "dynCall_ii" (func $dynCall_ii))
  (export "dynCall_iiii" (func $dynCall_iiii))
  (export "dynCall_jiji" (func $legalstub$dynCall_jiji))
  (export "dynCall_iidiiii" (func $dynCall_iidiiii))
  (export "dynCall_vii" (func $dynCall_vii))
  (elem (;0;) (i32.const 1) $__emscripten_stdout_close $__stdio_write $__emscripten_stdout_seek $fmt_fp $pop_arg_long_double)
  (data (;0;) (i32.const 1024) "%p (%lu), align=%d\0a\00NULL\0a\00region at: \00totalSize: 0x%x (%d) bytes\0a\00state:     %s\0a\00used\00free\00prev:      \00next():    \00payload at: \00payload:   \22%s\22\0a\00free_info at: \00FI.prev:   \00FI.next:   \00\0a\00input: %s\0a\00size:  %zu\0a\0a\00alloc1\0a\00alloc2\0a\00memcpy\0a\0a\00alloc2 (corrupted)\0a\00free alloc1\0a\0a\00{ window.main_bytes = function(array) { ccall(\22main_bytes\22, null, [\22array\22, \22number\22], [array, array.length]); }; }\00\00\00\00X\0a\00\00-+   0X0x\00(null)\00\00\00\00\00\00\00\00\11\00\0a\00\11\11\11\00\00\00\00\05\00\00\00\00\00\00\09\00\00\00\00\0b\00\00\00\00\00\00\00\00\11\00\0f\0a\11\11\11\03\0a\07\00\01\13\09\0b\0b\00\00\09\06\0b\00\00\0b\00\06\11\00\00\00\11\11\11\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\0b\00\00\00\00\00\00\00\00\11\00\0a\0a\11\11\11\00\0a\00\00\02\00\09\0b\00\00\00\09\00\0b\00\00\0b\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\0c\00\00\00\00\00\00\00\00\00\00\00\0c\00\00\00\00\0c\00\00\00\00\09\0c\00\00\00\00\00\0c\00\00\0c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\0e\00\00\00\00\00\00\00\00\00\00\00\0d\00\00\00\04\0d\00\00\00\00\09\0e\00\00\00\00\00\0e\00\00\0e\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\00\00\00\00\0f\00\00\00\00\0f\00\00\00\00\09\10\00\00\00\00\00\10\00\00\10\00\00\12\00\00\00\12\12\12\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\12\00\00\00\12\12\12\00\00\00\00\00\00\09\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\0b\00\00\00\00\00\00\00\00\00\00\00\0a\00\00\00\00\0a\00\00\00\00\09\0b\00\00\00\00\00\0b\00\00\0b\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\0c\00\00\00\00\00\00\00\00\00\00\00\0c\00\00\00\00\0c\00\00\00\00\09\0c\00\00\00\00\00\0c\00\00\0c\00\000123456789ABCDEF-0X+0X 0X-0x+0x 0x\00inf\00INF\00nan\00NAN\00.\00getAfter(region) <= sbrk(0)\00/mnt/Data/Downloads/2019-09-26-wasm-poc-exploits/emcc-upstream/emsdk/upstream/emscripten/system/lib/emmalloc.cpp\00emmalloc_malloc\00size > 0\00getBigEnoughFreeListIndex\00getFreeListIndex\00MIN_FREELIST_INDEX <= index && index < MAX_FREELIST_INDEX\00useRegion\00payloadSize >= size\00possiblySplitRemainder\00extra >= MIN_REGION_SIZE\00totalSplitSize >= MIN_REGION_SIZE\00ptr == getAfter(lastRegion)\00extendLastRegion\00addToFreeList\00mergeIntoExistingFreeRegion\00region == lastRegion\00newAllocation\00(char*)extraPtr == (char*)ptr + sbrkSize\00allocateRegion\00!lastRegion\00!firstRegion\00firstRegion\00((char*)&region->freeInfo()) - ((char*)region) == METADATA_SIZE\00getPayload\00region->getUsed()\00")
  (data (;1;) (i32.const 2648) "\05\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\03\00\00\00\e8\0b\00\00\00\04\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\0a\ff\ff\ff\ff\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00X\0a\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\14\10\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
  (data (;2;) (i32.const 3040) "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00"))

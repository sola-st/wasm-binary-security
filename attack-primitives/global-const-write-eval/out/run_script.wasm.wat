(module
  (type (;0;) (func (param i32 i32 i32) (result i32)))
  (type (;1;) (func (param i32)))
  (type (;2;) (func (param i32 i32 i32 i32) (result i32)))
  (type (;3;) (func (result i32)))
  (type (;4;) (func (param i32) (result i32)))
  (type (;5;) (func (param i32 i32 i32 i32)))
  (type (;6;) (func))
  (type (;7;) (func (param i32 i32) (result i32)))
  (type (;8;) (func (param i32 i64 i32) (result i64)))
  (type (;9;) (func (param i32 i32)))
  (type (;10;) (func (param i32 i32 i32 i32 i32) (result i32)))
  (type (;11;) (func (param i32)))
  (type (;12;) (func (param i32 i32 i32) (result i32)))
  (type (;13;) (func (param i32 i32)))
  (type (;14;) (func (param i32 i32 i32)))
  (import "env" "emscripten_run_script" (func $emscripten_run_script (type 1)))
  (import "wasi_unstable" "fd_write" (func $__wasi_fd_write (type 2)))
  (import "env" "emscripten_memcpy_big" (func $emscripten_memcpy_big (type 0)))
  (import "env" "emscripten_resize_heap" (func $emscripten_resize_heap (type 4)))
  (import "env" "__assert_fail" (func $__assert_fail (type 5)))
  (import "env" "setTempRet0" (func $setTempRet0 (type 1)))
  (import "env" "memory" (memory (;0;) 256 256))
  (import "env" "table" (table (;0;) 4 funcref))
  (func $__wasm_call_ctors (type 6)
    (nop))
  (func $do_something_stupid_which_allows_write_access (type 1) (param i32)
    (call $__stpcpy
      (i32.load
        (i32.const 1720))
      (local.get 0))
    (call $puts
      (i32.const 1029)))
  (func $main (type 7) (param i32 i32) (result i32)
    (call $puts
      (i32.load
        (i32.const 1720)))
    (call $puts
      (i32.const 1045))
    (call $emscripten_run_script
      (i32.const 1045))
    (i32.const 0))
  (func $puts (type 11) (param i32)
    (local i32 i32)
    (drop
      (if (result i32)  ;; label = @1
        (i32.ge_s
          (i32.load offset=76
            (local.tee 1
              (i32.load
                (i32.const 1096))))
          (i32.const 0))
        (then
          (i32.const 1))
        (else
          (local.get 2))))
    (block  ;; label = @2
      (br_if 0 (;@2;)
        (i32.lt_s
          (select
            (i32.const -1)
            (i32.const 0)
            (i32.ne
              (local.tee 2
                (call $strlen
                  (local.get 0)))
              (call $fwrite
                (local.get 0)
                (local.get 2)
                (local.get 1))))
          (i32.const 0)))
      (block  ;; label = @3
        (br_if 0 (;@3;)
          (i32.eq
            (i32.load8_u offset=75
              (local.get 1))
            (i32.const 10)))
        (br_if 0 (;@3;)
          (i32.ge_u
            (local.tee 0
              (i32.load offset=20
                (local.get 1)))
            (i32.load offset=16
              (local.get 1))))
        (i32.store offset=20
          (local.get 1)
          (i32.add
            (local.get 0)
            (i32.const 1)))
        (i32.store8
          (local.get 0)
          (i32.const 10))
        (br 1 (;@2;)))
      (call $__overflow
        (local.get 1))))
  (func $__overflow (type 11) (param i32)
    (local i32 i32 i32)
    (global.set 0
      (local.tee 1
        (i32.sub
          (global.get 0)
          (i32.const 16))))
    (i32.store8 offset=15
      (local.get 1)
      (i32.const 10))
    (block  ;; label = @1
      (if  ;; label = @2
        (i32.eqz
          (local.tee 2
            (i32.load offset=16
              (local.get 0))))
        (then
          (br_if 1 (;@1;)
            (call $__towrite
              (local.get 0)))
          (local.set 2
            (i32.load offset=16
              (local.get 0)))))
      (block  ;; label = @3
        (br_if 0 (;@3;)
          (i32.ge_u
            (local.tee 3
              (i32.load offset=20
                (local.get 0)))
            (local.get 2)))
        (br_if 0 (;@3;)
          (i32.eq
            (i32.load8_s offset=75
              (local.get 0))
            (i32.const 10)))
        (i32.store offset=20
          (local.get 0)
          (i32.add
            (local.get 3)
            (i32.const 1)))
        (i32.store8
          (local.get 3)
          (i32.const 10))
        (br 1 (;@2;)))
      (br_if 0 (;@3;)
        (i32.ne
          (call_indirect (type 0)
            (local.get 0)
            (i32.add
              (local.get 1)
              (i32.const 15))
            (i32.const 1)
            (i32.load offset=36
              (local.get 0)))
          (i32.const 1)))
      (drop
        (i32.load8_u offset=15
          (local.get 1))))
    (global.set 0
      (i32.add
        (local.get 1)
        (i32.const 16))))
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
    (loop  ;; label = @1
      (block  ;; label = @2
        (local.set 4
          (block (result i32)  ;; label = @3
            (if  ;; label = @4
              (i32.eq
                (local.get 6)
                (local.tee 4
                  (block (result i32)  ;; label = @5
                    (if  ;; label = @6
                      (call $__wasi_fd_write
                        (i32.load offset=60
                          (local.get 0))
                        (local.get 1)
                        (local.get 5)
                        (i32.add
                          (local.get 3)
                          (i32.const 12)))
                      (then
                        (i32.store offset=12
                          (local.get 3)
                          (i32.const -1))
                        (br 1 (;@5;)
                          (i32.const -1))))
                    (i32.load offset=12
                      (local.get 3)))))
              (then
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
                (br 1 (;@5;)
                  (local.get 2))))
            (i32.gt_s
              (local.get 4)
              (i32.const -1))
            (br_if 1 (;@5;))
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
            (i32.const 0)
            (br_if 0 (;@6;)
              (i32.eq
                (local.get 5)
                (i32.const 2)))
            (drop)
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
          (local.tee 7
            (i32.sub
              (local.get 4)
              (select
                (local.get 7)
                (i32.const 0)
                (local.get 8))))
          (i32.load
            (local.get 1))))
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
      (br 0 (;@6;))
      (unreachable))
    (unreachable))
  (func $__emscripten_stdout_close (type 4) (param i32) (result i32)
    (i32.const 0))
  (func $__emscripten_stdout_seek (type 8) (param i32 i64 i32) (result i64)
    (i64.const 0))
  (func $__towrite (type 4) (param i32) (result i32)
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
    (if  ;; label = @1
      (i32.and
        (local.tee 1
          (i32.load
            (local.get 0)))
        (i32.const 8))
      (then
        (i32.store
          (local.get 0)
          (i32.or
            (local.get 1)
            (i32.const 32)))
        (return
          (i32.const -1))))
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
      (if  ;; label = @2
        (i32.lt_u
          (i32.sub
            (if (result i32)  ;; label = @3
              (local.tee 3
                (i32.load offset=16
                  (local.get 2)))
              (then
                (local.get 3))
              (else
                (br_if 1 (;@2;)
                  (call $__towrite
                    (local.get 2)))
                (i32.load offset=16
                  (local.get 2))))
            (local.tee 5
              (i32.load offset=20
                (local.get 2))))
          (local.get 1))
        (then
          (return
            (call_indirect (type 0)
              (local.get 2)
              (local.get 0)
              (local.get 1)
              (i32.load offset=36
                (local.get 2))))))
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
      (call $memcpy
        (local.get 5)
        (local.get 0)
        (local.get 1))
      (i32.store offset=20
        (local.get 2)
        (i32.add
          (i32.load offset=20
            (local.get 2))
          (local.get 1)))
      (local.set 4
        (i32.add
          (local.get 1)
          (local.get 6))))
    (local.get 4))
  (func $fwrite (type 12) (param i32 i32 i32) (result i32)
    (local i32)
    (local.set 3
      (local.get 1))
    (if  ;; label = @1
      (i32.eq
        (local.get 3)
        (local.tee 0
          (block (result i32)  ;; label = @2
            (if  ;; label = @3
              (i32.le_s
                (i32.load offset=76
                  (local.get 2))
                (i32.const -1))
              (then
                (br 1 (;@2;)
                  (call $__fwritex
                    (local.get 0)
                    (local.get 3)
                    (local.get 2)))))
            (call $__fwritex
              (local.get 0)
              (local.get 3)
              (local.get 2)))))
      (then
        (return
          (local.get 1))))
    (local.get 0))
  (func $strlen (type 4) (param i32) (result i32)
    (local i32 i32 i32)
    (local.set 1
      (local.get 0))
    (block  ;; label = @1
      (block  ;; label = @2
        (br_if 0 (;@2;)
          (i32.eqz
            (i32.and
              (local.get 0)
              (i32.const 3))))
        (if  ;; label = @3
          (i32.eqz
            (i32.load8_u
              (local.get 0)))
          (then
            (br 2 (;@1;))))
        (loop  ;; label = @4
          (br_if 1 (;@3;)
            (i32.eqz
              (i32.and
                (local.tee 1
                  (i32.add
                    (local.get 1)
                    (i32.const 1)))
                (i32.const 3))))
          (br_if 0 (;@4;)
            (i32.load8_u
              (local.get 1))))
        (br 1 (;@3;)))
      (loop  ;; label = @5
        (local.set 1
          (i32.add
            (local.tee 2
              (local.get 1))
            (i32.const 4)))
        (br_if 0 (;@5;)
          (i32.eqz
            (i32.and
              (i32.and
                (i32.xor
                  (local.tee 3
                    (i32.load
                      (local.get 2)))
                  (i32.const -1))
                (i32.add
                  (local.get 3)
                  (i32.const -16843009)))
              (i32.const -2139062144)))))
      (if  ;; label = @6
        (i32.eqz
          (i32.and
            (local.get 3)
            (i32.const 255)))
        (then
          (local.set 1
            (local.get 2))
          (br 1 (;@5;))))
      (loop  ;; label = @7
        (local.set 3
          (i32.load8_u offset=1
            (local.get 2)))
        (local.set 2
          (local.tee 1
            (i32.add
              (local.get 2)
              (i32.const 1))))
        (br_if 0 (;@7;)
          (local.get 3))))
    (i32.sub
      (local.get 1)
      (local.get 0)))
  (func $__stpcpy (type 13) (param i32 i32)
    (local i32)
    (block  ;; label = @1
      (block  ;; label = @2
        (br_if 0 (;@2;)
          (i32.and
            (i32.xor
              (local.get 0)
              (local.get 1))
            (i32.const 3)))
        (if  ;; label = @3
          (i32.and
            (local.get 1)
            (i32.const 3))
          (then
            (loop  ;; label = @4
              (i32.store8
                (local.get 0)
                (local.tee 2
                  (i32.load8_u
                    (local.get 1))))
              (br_if 3 (;@1;)
                (i32.eqz
                  (local.get 2)))
              (local.set 0
                (i32.add
                  (local.get 0)
                  (i32.const 1)))
              (br_if 0 (;@4;)
                (i32.and
                  (local.tee 1
                    (i32.add
                      (local.get 1)
                      (i32.const 1)))
                  (i32.const 3))))))
        (br_if 0 (;@4;)
          (i32.and
            (i32.and
              (i32.xor
                (local.tee 2
                  (i32.load
                    (local.get 1)))
                (i32.const -1))
              (i32.add
                (local.get 2)
                (i32.const -16843009)))
            (i32.const -2139062144)))
        (loop  ;; label = @5
          (i32.store
            (local.get 0)
            (local.get 2))
          (local.set 2
            (i32.load offset=4
              (local.get 1)))
          (local.set 0
            (i32.add
              (local.get 0)
              (i32.const 4)))
          (local.set 1
            (i32.add
              (local.get 1)
              (i32.const 4)))
          (br_if 0 (;@5;)
            (i32.eqz
              (i32.and
                (i32.and
                  (i32.add
                    (local.get 2)
                    (i32.const -16843009))
                  (i32.xor
                    (local.get 2)
                    (i32.const -1)))
                (i32.const -2139062144))))))
      (i32.store8
        (local.get 0)
        (local.tee 2
          (i32.load8_u
            (local.get 1))))
      (br_if 0 (;@5;)
        (i32.eqz
          (local.get 2)))
      (loop  ;; label = @6
        (i32.store8 offset=1
          (local.get 0)
          (local.tee 2
            (i32.load8_u offset=1
              (local.get 1))))
        (local.set 0
          (i32.add
            (local.get 0)
            (i32.const 1)))
        (local.set 1
          (i32.add
            (local.get 1)
            (i32.const 1)))
        (br_if 0 (;@6;)
          (local.get 2)))))
  (func $memcpy (type 14) (param i32 i32 i32)
    (local i32 i32)
    (if  ;; label = @1
      (i32.ge_u
        (local.get 2)
        (i32.const 8192))
      (then
        (drop
          (call $emscripten_memcpy_big
            (local.get 0)
            (local.get 1)
            (local.get 2)))
        (return)))
    (local.set 3
      (i32.add
        (local.get 0)
        (local.get 2)))
    (block  ;; label = @2
      (if  ;; label = @3
        (i32.eqz
          (i32.and
            (i32.xor
              (local.get 0)
              (local.get 1))
            (i32.const 3)))
        (then
          (block  ;; label = @4
            (if  ;; label = @5
              (i32.lt_s
                (local.get 2)
                (i32.const 1))
              (then
                (local.set 2
                  (local.get 0))
                (br 1 (;@4;))))
            (if  ;; label = @6
              (i32.eqz
                (i32.and
                  (local.get 0)
                  (i32.const 3)))
              (then
                (local.set 2
                  (local.get 0))
                (br 1 (;@5;))))
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
                (local.tee 0
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
                (i32.sub
                  (local.get 1)
                  (i32.const -64)))
              (br_if 0 (;@9;)
                (i32.le_u
                  (local.tee 2
                    (i32.sub
                      (local.get 2)
                      (i32.const -64)))
                  (local.get 0)))))
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
                (local.get 4))))
          (br 1 (;@9;))))
      (if  ;; label = @11
        (i32.lt_u
          (local.get 3)
          (i32.const 4))
        (then
          (local.set 2
            (local.get 0))
          (br 1 (;@10;))))
      (if  ;; label = @12
        (i32.lt_u
          (local.tee 4
            (i32.add
              (local.get 3)
              (i32.const -4)))
          (local.get 0))
        (then
          (local.set 2
            (local.get 0))
          (br 1 (;@11;))))
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
    (if  ;; label = @14
      (i32.lt_u
        (local.get 2)
        (local.get 3))
      (then
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
              (local.get 3)))))))
  (func $__errno_location (type 3) (result i32)
    (i32.const 2904))
  (func $sbrk (type 4) (param i32) (result i32)
    (local i32 i32)
    (local.set 1
      (memory.size))
    (block  ;; label = @1
      (br_if 0 (;@1;)
        (i32.le_u
          (local.tee 0
            (i32.add
              (local.tee 2
                (i32.load
                  (i32.const 3056)))
              (local.get 0)))
          (i32.shl
            (local.get 1)
            (i32.const 16))))
      (br_if 0 (;@1;)
        (call $emscripten_resize_heap
          (local.get 0)))
      (i32.store
        (i32.const 2904)
        (i32.const 48))
      (return
        (i32.const -1)))
    (i32.store
      (i32.const 3056)
      (local.get 0))
    (local.get 2))
  (func $malloc (type 4) (param i32) (result i32)
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
      (if  ;; label = @3
        (i32.le_u
          (i32.add
            (local.get 0)
            (i32.shr_u
              (i32.load
                (local.get 0))
              (i32.const 1)))
          (call $sbrk
            (i32.const 0)))
        (then
          (br_if 1 (;@2;)
            (i32.eqz
              (i32.and
                (i32.load8_u
                  (local.get 0))
                (i32.const 1))))
          (return
            (i32.add
              (local.get 0)
              (i32.const 8)))))
      (call $__assert_fail
        (i32.const 1100)
        (i32.const 1128)
        (i32.const 819)
        (i32.const 1241))
      (unreachable))
    (call $__assert_fail
      (i32.const 1695)
      (i32.const 1128)
      (i32.const 206)
      (i32.const 1684))
    (unreachable))
  (func $tryFromFreeList_unsigned_long_ (type 4) (param i32) (result i32)
    (local i32 i32 i32 i32 i32)
    (block  ;; label = @1
      (block  ;; label = @2
        (block  ;; label = @3
          (block  ;; label = @4
            (block  ;; label = @5
              (if  ;; label = @6
                (local.get 0)
                (then
                  (br_if 1 (;@5;)
                    (i32.ge_u
                      (i32.sub
                        (i32.const 28)
                        (local.tee 1
                          (i32.clz
                            (select
                              (local.get 0)
                              (i32.const 8)
                              (i32.gt_u
                                (local.get 0)
                                (i32.const 8))))))
                      (i32.const 29)))
                  (block  ;; label = @7
                    (block  ;; label = @8
                      (block  ;; label = @9
                        (br_if 0 (;@9;)
                          (i32.lt_u
                            (local.tee 1
                              (i32.sub
                                (select
                                  (i32.const 31)
                                  (i32.const 32)
                                  (i32.eq
                                    (i32.popcnt
                                      (local.get 0))
                                    (i32.const 1)))
                                (local.get 1)))
                            (i32.const 4)))
                        (br_if 0 (;@9;)
                          (i32.shr_u
                            (local.get 0)
                            (local.get 1)))
                        (br_if 0 (;@9;)
                          (i32.eqz
                            (local.tee 2
                              (i32.load
                                (i32.add
                                  (i32.shl
                                    (local.get 1)
                                    (i32.const 2))
                                  (i32.const 2908))))))
                        (loop  ;; label = @10
                          (if  ;; label = @11
                            (i32.ge_u
                              (local.tee 4
                                (i32.add
                                  (i32.shr_u
                                    (i32.load
                                      (local.tee 3
                                        (i32.add
                                          (local.get 2)
                                          (i32.const -8))))
                                    (i32.const 1))
                                  (i32.const -8)))
                              (local.get 0))
                            (then
                              (br_if 7 (;@4;)
                                (i32.eqz
                                  (local.get 4)))
                              (br_if 8 (;@3;)
                                (i32.ge_u
                                  (i32.sub
                                    (i32.const 28)
                                    (local.tee 1
                                      (i32.clz
                                        (select
                                          (local.get 4)
                                          (i32.const 8)
                                          (i32.gt_u
                                            (local.get 4)
                                            (i32.const 8))))))
                                  (i32.const 29)))
                              (if  ;; label = @12
                                (i32.eq
                                  (local.get 2)
                                  (i32.load
                                    (local.tee 1
                                      (i32.add
                                        (i32.shl
                                          (i32.sub
                                            (i32.const 0)
                                            (local.get 1))
                                          (i32.const 2))
                                        (i32.const 3036)))))
                                (then
                                  (i32.store
                                    (local.get 1)
                                    (i32.load offset=4
                                      (local.get 2)))))
                              (if  ;; label = @13
                                (local.tee 1
                                  (i32.load
                                    (local.get 2)))
                                (then
                                  (i32.store offset=4
                                    (local.get 1)
                                    (i32.load offset=4
                                      (local.get 2)))))
                              (if  ;; label = @14
                                (local.tee 1
                                  (i32.load offset=4
                                    (local.get 2)))
                                (then
                                  (i32.store
                                    (local.get 1)
                                    (i32.load
                                      (local.get 2)))))
                              (i32.store
                                (local.get 3)
                                (i32.or
                                  (i32.load
                                    (local.get 3))
                                  (i32.const 1)))
                              (br 3 (;@11;))))
                          (br_if 1 (;@13;)
                            (i32.gt_u
                              (local.tee 5
                                (i32.add
                                  (local.get 5)
                                  (i32.const 1)))
                              (i32.const 31)))
                          (br_if 0 (;@14;)
                            (local.tee 2
                              (i32.load offset=4
                                (local.get 2))))))
                      (local.set 3
                        (i32.const 0))
                      (br_if 1 (;@13;)
                        (i32.ge_u
                          (local.get 1)
                          (i32.const 32)))
                      (loop  ;; label = @15
                        (if  ;; label = @16
                          (i32.eqz
                            (local.tee 2
                              (i32.load
                                (i32.add
                                  (i32.shl
                                    (local.get 1)
                                    (i32.const 2))
                                  (i32.const 2912)))))
                          (then
                            (br_if 1 (;@15;)
                              (i32.ne
                                (local.tee 1
                                  (i32.add
                                    (local.get 1)
                                    (i32.const 1)))
                                (i32.const 32)))
                            (br 3 (;@13;)))))
                      (br_if 6 (;@10;)
                        (i32.eqz
                          (local.tee 1
                            (i32.add
                              (i32.shr_u
                                (i32.load
                                  (local.tee 3
                                    (i32.add
                                      (local.get 2)
                                      (i32.const -8))))
                                (i32.const 1))
                              (i32.const -8)))))
                      (br_if 7 (;@9;)
                        (i32.ge_u
                          (i32.sub
                            (i32.const 28)
                            (local.tee 1
                              (i32.clz
                                (select
                                  (local.get 1)
                                  (i32.const 8)
                                  (i32.gt_u
                                    (local.get 1)
                                    (i32.const 8))))))
                          (i32.const 29)))
                      (if  ;; label = @17
                        (i32.eq
                          (local.get 2)
                          (i32.load
                            (local.tee 1
                              (i32.add
                                (i32.shl
                                  (i32.sub
                                    (i32.const 0)
                                    (local.get 1))
                                  (i32.const 2))
                                (i32.const 3036)))))
                        (then
                          (i32.store
                            (local.get 1)
                            (i32.load offset=4
                              (local.get 2)))))
                      (if  ;; label = @18
                        (local.tee 1
                          (i32.load
                            (local.get 2)))
                        (then
                          (i32.store offset=4
                            (local.get 1)
                            (i32.load offset=4
                              (local.get 2)))))
                      (if  ;; label = @19
                        (local.tee 1
                          (i32.load offset=4
                            (local.get 2)))
                        (then
                          (i32.store
                            (local.get 1)
                            (i32.load
                              (local.get 2)))))
                      (i32.store
                        (local.get 3)
                        (i32.or
                          (i32.load
                            (local.get 3))
                          (i32.const 1))))
                    (call $possiblySplitRemainder_Region*__unsigned_long_
                      (local.get 3)
                      (local.get 0)))
                  (return
                    (local.get 3))))
              (call $__assert_fail
                (i32.const 1257)
                (i32.const 1128)
                (i32.const 267)
                (i32.const 1266))
              (unreachable))
            (call $__assert_fail
              (i32.const 1309)
              (i32.const 1128)
              (i32.const 256)
              (i32.const 1292))
            (unreachable))
          (call $__assert_fail
            (i32.const 1257)
            (i32.const 1128)
            (i32.const 250)
            (i32.const 1292))
          (unreachable))
        (call $__assert_fail
          (i32.const 1309)
          (i32.const 1128)
          (i32.const 256)
          (i32.const 1292))
        (unreachable))
      (call $__assert_fail
        (i32.const 1257)
        (i32.const 1128)
        (i32.const 250)
        (i32.const 1292))
      (unreachable))
    (call $__assert_fail
      (i32.const 1309)
      (i32.const 1128)
      (i32.const 256)
      (i32.const 1292))
    (unreachable))
  (func $newAllocation_unsigned_long_ (type 4) (param i32) (result i32)
    (local i32 i32 i32)
    (block  ;; label = @1
      (block  ;; label = @2
        (if  ;; label = @3
          (local.get 0)
          (then
            (block  ;; label = @4
              (br_if 0 (;@4;)
                (i32.eqz
                  (local.tee 1
                    (i32.load
                      (i32.const 3044)))))
              (br_if 0 (;@4;)
                (i32.and
                  (local.tee 2
                    (i32.load
                      (local.get 1)))
                  (i32.const 1)))
              (i32.store
                (local.get 1)
                (i32.or
                  (local.get 2)
                  (i32.const 1)))
              (br_if 2 (;@2;)
                (i32.eqz
                  (local.tee 2
                    (i32.add
                      (i32.shr_u
                        (local.get 2)
                        (i32.const 1))
                      (i32.const -8)))))
              (br_if 3 (;@1;)
                (i32.ge_u
                  (i32.sub
                    (i32.const 28)
                    (local.tee 2
                      (i32.clz
                        (select
                          (local.get 2)
                          (i32.const 8)
                          (i32.gt_u
                            (local.get 2)
                            (i32.const 8))))))
                  (i32.const 29)))
              (if  ;; label = @5
                (i32.eq
                  (i32.load
                    (local.tee 3
                      (i32.add
                        (i32.shl
                          (i32.sub
                            (i32.const 0)
                            (local.get 2))
                          (i32.const 2))
                        (i32.const 3036))))
                  (local.tee 2
                    (i32.add
                      (local.get 1)
                      (i32.const 8))))
                (then
                  (i32.store
                    (local.get 3)
                    (i32.load offset=12
                      (local.get 1)))))
              (if  ;; label = @6
                (local.tee 3
                  (i32.load
                    (local.get 2)))
                (then
                  (i32.store offset=4
                    (local.get 3)
                    (i32.load offset=12
                      (local.get 1)))))
              (if  ;; label = @7
                (local.tee 1
                  (i32.load offset=12
                    (local.get 1)))
                (then
                  (i32.store
                    (local.get 1)
                    (i32.load
                      (local.get 2)))))
              (local.set 1
                (call $extendLastRegion_unsigned_long_
                  (local.get 0)))
              (local.set 0
                (i32.load
                  (i32.const 3044)))
              (if  ;; label = @8
                (local.get 1)
                (then
                  (return
                    (local.get 0))))
              (i32.store
                (local.get 0)
                (i32.and
                  (i32.load
                    (local.get 0))
                  (i32.const -2)))
              (return
                (i32.const 0)))
            (return
              (call $allocateRegion_unsigned_long_
                (local.get 0)))))
        (call $__assert_fail
          (i32.const 1257)
          (i32.const 1128)
          (i32.const 776)
          (i32.const 1577))
        (unreachable))
      (call $__assert_fail
        (i32.const 1257)
        (i32.const 1128)
        (i32.const 250)
        (i32.const 1292))
      (unreachable))
    (call $__assert_fail
      (i32.const 1309)
      (i32.const 1128)
      (i32.const 256)
      (i32.const 1292))
    (unreachable))
  (func $free (type 1) (param i32)
    (if  ;; label = @1
      (local.get 0)
      (then
        (call $stopUsing_Region*_
          (i32.add
            (local.get 0)
            (i32.const -8))))))
  (func $stopUsing_Region*_ (type 1) (param i32)
    (local i32 i32 i32 i32 i32 i32)
    (i32.store
      (local.get 0)
      (i32.and
        (local.tee 1
          (i32.load
            (local.get 0)))
        (i32.const -2)))
    (block  ;; label = @1
      (block  ;; label = @2
        (block  ;; label = @3
          (block  ;; label = @4
            (block  ;; label = @5
              (block  ;; label = @6
                (if  ;; label = @7
                  (i32.le_u
                    (i32.add
                      (local.get 0)
                      (i32.shr_u
                        (local.get 1)
                        (i32.const 1)))
                    (call $sbrk
                      (i32.const 0)))
                  (then
                    (local.set 1
                      (i32.load offset=4
                        (local.get 0)))
                    (if  ;; label = @8
                      (i32.eqz
                        (local.tee 3
                          (i32.eq
                            (local.tee 5
                              (i32.load
                                (i32.const 3044)))
                            (local.get 0))))
                      (then
                        (local.set 2
                          (i32.add
                            (local.get 0)
                            (i32.shr_u
                              (i32.load
                                (local.get 0))
                              (i32.const 1))))))
                    (block  ;; label = @9
                      (block  ;; label = @10
                        (br_if 0 (;@10;)
                          (i32.eqz
                            (local.get 1)))
                        (br_if 0 (;@10;)
                          (i32.and
                            (local.tee 4
                              (i32.load
                                (local.get 1)))
                            (i32.const 1)))
                        (br_if 3 (;@7;)
                          (i32.eqz
                            (local.tee 4
                              (i32.add
                                (i32.shr_u
                                  (local.get 4)
                                  (i32.const 1))
                                (i32.const -8)))))
                        (br_if 4 (;@6;)
                          (i32.ge_u
                            (i32.sub
                              (i32.const 28)
                              (local.tee 4
                                (i32.clz
                                  (select
                                    (local.get 4)
                                    (i32.const 8)
                                    (i32.gt_u
                                      (local.get 4)
                                      (i32.const 8))))))
                            (i32.const 29)))
                        (if  ;; label = @11
                          (i32.eq
                            (i32.load
                              (local.tee 6
                                (i32.add
                                  (i32.shl
                                    (i32.sub
                                      (i32.const 0)
                                      (local.get 4))
                                    (i32.const 2))
                                  (i32.const 3036))))
                            (local.tee 4
                              (i32.add
                                (local.get 1)
                                (i32.const 8))))
                          (then
                            (i32.store
                              (local.get 6)
                              (i32.load offset=12
                                (local.get 1)))))
                        (if  ;; label = @12
                          (local.tee 6
                            (i32.load
                              (local.get 4)))
                          (then
                            (i32.store offset=4
                              (local.get 6)
                              (i32.load offset=12
                                (local.get 1)))))
                        (if  ;; label = @13
                          (local.tee 6
                            (i32.load offset=12
                              (local.get 1)))
                          (then
                            (i32.store
                              (local.get 6)
                              (i32.load
                                (local.get 4)))))
                        (i32.store
                          (local.get 1)
                          (i32.add
                            (i32.load
                              (local.get 1))
                            (i32.and
                              (i32.load
                                (local.get 0))
                              (i32.const -2))))
                        (i32.store
                          (block (result i32)  ;; label = @14
                            (if  ;; label = @15
                              (i32.eqz
                                (local.get 2))
                              (then
                                (drop
                                  (br_if 1 (;@14;)
                                    (i32.const 3044)
                                    (local.get 3)))
                                (call $__assert_fail
                                  (i32.const 1556)
                                  (i32.const 1128)
                                  (i32.const 338)
                                  (i32.const 1528))
                                (unreachable)))
                            (i32.store offset=4
                              (local.get 2)
                              (local.get 1))
                            (br_if 2 (;@13;)
                              (i32.and
                                (local.tee 0
                                  (i32.load
                                    (local.get 2)))
                                (i32.const 1)))
                            (br_if 6 (;@9;)
                              (i32.eqz
                                (local.tee 0
                                  (i32.add
                                    (i32.shr_u
                                      (local.get 0)
                                      (i32.const 1))
                                    (i32.const -8)))))
                            (br_if 7 (;@8;)
                              (i32.ge_u
                                (i32.sub
                                  (i32.const 28)
                                  (local.tee 0
                                    (i32.clz
                                      (select
                                        (local.get 0)
                                        (i32.const 8)
                                        (i32.gt_u
                                          (local.get 0)
                                          (i32.const 8))))))
                                (i32.const 29)))
                            (if  ;; label = @16
                              (i32.eq
                                (i32.load
                                  (local.tee 3
                                    (i32.add
                                      (i32.shl
                                        (i32.sub
                                          (i32.const 0)
                                          (local.get 0))
                                        (i32.const 2))
                                      (i32.const 3036))))
                                (local.tee 0
                                  (i32.add
                                    (local.get 2)
                                    (i32.const 8))))
                              (then
                                (i32.store
                                  (local.get 3)
                                  (i32.load offset=12
                                    (local.get 2)))))
                            (if  ;; label = @17
                              (local.tee 3
                                (i32.load
                                  (local.get 0)))
                              (then
                                (i32.store offset=4
                                  (local.get 3)
                                  (i32.load offset=12
                                    (local.get 2)))))
                            (if  ;; label = @18
                              (local.tee 3
                                (i32.load offset=12
                                  (local.get 2)))
                              (then
                                (i32.store
                                  (local.get 3)
                                  (i32.load
                                    (local.get 0)))
                                (local.set 5
                                  (i32.load
                                    (i32.const 3044)))))
                            (i32.store
                              (local.get 1)
                              (i32.add
                                (i32.load
                                  (local.get 1))
                                (i32.and
                                  (i32.load
                                    (local.get 2))
                                  (i32.const -2))))
                            (if  ;; label = @19
                              (i32.eq
                                (local.get 2)
                                (local.get 5))
                              (then
                                (i32.store
                                  (i32.const 3044)
                                  (local.get 1))
                                (call $addToFreeList_Region*_
                                  (local.get 1))
                                (return)))
                            (i32.add
                              (i32.add
                                (local.get 2)
                                (i32.shr_u
                                  (i32.load
                                    (local.get 2))
                                  (i32.const 1)))
                              (i32.const 4)))
                          (local.get 1))
                        (call $addToFreeList_Region*_
                          (local.get 1))
                        (return))
                      (block  ;; label = @20
                        (br_if 0 (;@20;)
                          (i32.eqz
                            (local.get 2)))
                        (br_if 0 (;@20;)
                          (i32.and
                            (local.tee 1
                              (i32.load
                                (local.get 2)))
                            (i32.const 1)))
                        (br_if 7 (;@13;)
                          (i32.eqz
                            (local.tee 1
                              (i32.add
                                (i32.shr_u
                                  (local.get 1)
                                  (i32.const 1))
                                (i32.const -8)))))
                        (br_if 8 (;@12;)
                          (i32.ge_u
                            (i32.sub
                              (i32.const 28)
                              (local.tee 1
                                (i32.clz
                                  (select
                                    (local.get 1)
                                    (i32.const 8)
                                    (i32.gt_u
                                      (local.get 1)
                                      (i32.const 8))))))
                            (i32.const 29)))
                        (if  ;; label = @21
                          (i32.eq
                            (i32.load
                              (local.tee 3
                                (i32.add
                                  (i32.shl
                                    (i32.sub
                                      (i32.const 0)
                                      (local.get 1))
                                    (i32.const 2))
                                  (i32.const 3036))))
                            (local.tee 1
                              (i32.add
                                (local.get 2)
                                (i32.const 8))))
                          (then
                            (i32.store
                              (local.get 3)
                              (i32.load offset=12
                                (local.get 2)))))
                        (if  ;; label = @22
                          (local.tee 3
                            (i32.load
                              (local.get 1)))
                          (then
                            (i32.store offset=4
                              (local.get 3)
                              (i32.load offset=12
                                (local.get 2)))))
                        (if  ;; label = @23
                          (local.tee 3
                            (i32.load offset=12
                              (local.get 2)))
                          (then
                            (i32.store
                              (local.get 3)
                              (i32.load
                                (local.get 1)))
                            (local.set 5
                              (i32.load
                                (i32.const 3044)))))
                        (i32.store
                          (local.get 0)
                          (i32.add
                            (i32.load
                              (local.get 0))
                            (i32.and
                              (i32.load
                                (local.get 2))
                              (i32.const -2))))
                        (i32.store
                          (if (result i32)  ;; label = @24
                            (i32.eq
                              (local.get 2)
                              (local.get 5))
                            (then
                              (i32.const 3044))
                            (else
                              (i32.add
                                (i32.add
                                  (local.get 2)
                                  (i32.shr_u
                                    (i32.load
                                      (local.get 2))
                                    (i32.const 1)))
                                (i32.const 4))))
                          (local.get 0)))
                      (local.set 1
                        (local.get 0)))
                    (call $addToFreeList_Region*_
                      (local.get 1))
                    (return)))
                (call $__assert_fail
                  (i32.const 1100)
                  (i32.const 1128)
                  (i32.const 324)
                  (i32.const 1528))
                (unreachable))
              (call $__assert_fail
                (i32.const 1257)
                (i32.const 1128)
                (i32.const 250)
                (i32.const 1292))
              (unreachable))
            (call $__assert_fail
              (i32.const 1309)
              (i32.const 1128)
              (i32.const 256)
              (i32.const 1292))
            (unreachable))
          (call $__assert_fail
            (i32.const 1257)
            (i32.const 1128)
            (i32.const 250)
            (i32.const 1292))
          (unreachable))
        (call $__assert_fail
          (i32.const 1309)
          (i32.const 1128)
          (i32.const 256)
          (i32.const 1292))
        (unreachable))
      (call $__assert_fail
        (i32.const 1257)
        (i32.const 1128)
        (i32.const 250)
        (i32.const 1292))
      (unreachable))
    (call $__assert_fail
      (i32.const 1309)
      (i32.const 1128)
      (i32.const 256)
      (i32.const 1292))
    (unreachable))
  (func $possiblySplitRemainder_Region*__unsigned_long_ (type 9) (param i32 i32)
    (local i32 i32 i32)
    (block  ;; label = @1
      (block  ;; label = @2
        (if  ;; label = @3
          (i32.ge_u
            (local.tee 3
              (i32.add
                (local.tee 4
                  (i32.shr_u
                    (local.tee 2
                      (i32.load
                        (local.get 0)))
                    (i32.const 1)))
                (i32.const -8)))
            (local.get 1))
          (then
            (block  ;; label = @4
              (block  ;; label = @5
                (block  ;; label = @6
                  (br_if 0 (;@6;)
                    (i32.ne
                      (i32.and
                        (local.tee 3
                          (i32.sub
                            (local.get 3)
                            (local.get 1)))
                        (i32.const -8))
                      (i32.const 8)))
                  (br_if 0 (;@6;)
                    (i32.ne
                      (i32.load
                        (i32.const 3044))
                      (local.get 0)))
                  (br_if 2 (;@4;)
                    (i32.eqz
                      (call $extendLastRegion_unsigned_long_
                        (local.get 4))))
                  (if  ;; label = @7
                    (i32.ge_u
                      (i32.add
                        (local.get 3)
                        (i32.const 8))
                      (i32.const 16))
                    (then
                      (local.set 2
                        (i32.load
                          (local.get 0)))
                      (br 2 (;@5;))))
                  (call $__assert_fail
                    (i32.const 1410)
                    (i32.const 1128)
                    (i32.const 445)
                    (i32.const 1387))
                  (unreachable))
                (br_if 1 (;@6;)
                  (i32.lt_u
                    (local.get 3)
                    (i32.const 16))))
              (br_if 2 (;@5;)
                (i32.eqz
                  (local.tee 3
                    (i32.and
                      (local.get 2)
                      (i32.const 1)))))
              (i32.store
                (local.get 0)
                (i32.or
                  (local.get 3)
                  (i32.shl
                    (i32.sub
                      (local.tee 1
                        (i32.and
                          (i32.add
                            (i32.add
                              (local.get 0)
                              (local.get 1))
                            (i32.const 15))
                          (i32.const -8)))
                      (local.get 0))
                    (i32.const 1))))
              (br_if 3 (;@4;)
                (i32.le_u
                  (local.tee 2
                    (i32.sub
                      (i32.add
                        (local.get 0)
                        (i32.shr_u
                          (local.get 2)
                          (i32.const 1)))
                      (local.get 1)))
                  (i32.const 15)))
              (i32.store offset=4
                (local.get 1)
                (local.get 0))
              (i32.store
                (local.get 1)
                (i32.or
                  (i32.and
                    (i32.load
                      (local.get 1))
                    (i32.const 1))
                  (i32.shl
                    (local.get 2)
                    (i32.const 1))))
              (i32.store
                (select
                  (i32.const 3044)
                  (i32.add
                    (i32.add
                      (local.get 1)
                      (i32.and
                        (local.get 2)
                        (i32.const 2147483647)))
                    (i32.const 4))
                  (i32.eq
                    (i32.load
                      (i32.const 3044))
                    (local.get 0)))
                (local.get 1))
              (call $stopUsing_Region*_
                (local.get 1)))
            (return)))
        (call $__assert_fail
          (i32.const 1367)
          (i32.const 1128)
          (i32.const 428)
          (i32.const 1387))
        (unreachable))
      (call $__assert_fail
        (i32.const 1695)
        (i32.const 1128)
        (i32.const 206)
        (i32.const 1684))
      (unreachable))
    (call $__assert_fail
      (i32.const 1435)
      (i32.const 1128)
      (i32.const 460)
      (i32.const 1387))
    (unreachable))
  (func $extendLastRegion_unsigned_long_ (type 4) (param i32) (result i32)
    (local i32 i32 i32 i32 i32)
    (block  ;; label = @1
      (block  ;; label = @2
        (block  ;; label = @3
          (block  ;; label = @4
            (br_if 0 (;@4;)
              (i32.eq
                (local.tee 1
                  (call $sbrk
                    (local.tee 3
                      (i32.sub
                        (i32.and
                          (i32.add
                            (local.get 0)
                            (i32.const 15))
                          (i32.const -8))
                        (i32.shr_u
                          (i32.load
                            (i32.load
                              (i32.const 3044)))
                          (i32.const 1))))))
                (i32.const -1)))
            (br_if 1 (;@3;)
              (i32.ne
                (local.get 1)
                (i32.add
                  (local.tee 0
                    (i32.load
                      (i32.const 3044)))
                  (local.tee 5
                    (i32.shr_u
                      (local.tee 2
                        (i32.load
                          (local.get 0)))
                      (i32.const 1))))))
            (local.set 4
              (i32.const 1))
            (block  ;; label = @5
              (br_if 0 (;@5;)
                (i32.and
                  (local.get 2)
                  (i32.const 1)))
              (br_if 3 (;@2;)
                (i32.eqz
                  (local.tee 1
                    (i32.add
                      (local.get 5)
                      (i32.const -8)))))
              (br_if 4 (;@1;)
                (i32.ge_u
                  (i32.sub
                    (i32.const 28)
                    (local.tee 1
                      (i32.clz
                        (select
                          (local.get 1)
                          (i32.const 8)
                          (i32.gt_u
                            (local.get 1)
                            (i32.const 8))))))
                  (i32.const 29)))
              (if  ;; label = @6
                (i32.eq
                  (i32.load
                    (local.tee 2
                      (i32.add
                        (i32.shl
                          (i32.sub
                            (i32.const 0)
                            (local.get 1))
                          (i32.const 2))
                        (i32.const 3036))))
                  (local.tee 1
                    (i32.add
                      (local.get 0)
                      (i32.const 8))))
                (then
                  (i32.store
                    (local.get 2)
                    (i32.load offset=12
                      (local.get 0)))))
              (if  ;; label = @7
                (local.tee 2
                  (i32.load
                    (local.get 1)))
                (then
                  (i32.store offset=4
                    (local.get 2)
                    (i32.load offset=12
                      (local.get 0)))))
              (br_if 0 (;@7;)
                (i32.eqz
                  (local.tee 2
                    (i32.load offset=12
                      (local.get 0)))))
              (i32.store
                (local.get 2)
                (i32.load
                  (local.get 1))))
            (i32.store
              (local.get 0)
              (local.tee 3
                (i32.add
                  (i32.load
                    (local.get 0))
                  (i32.shl
                    (local.get 3)
                    (i32.const 1)))))
            (br_if 0 (;@7;)
              (i32.and
                (local.get 3)
                (i32.const 1)))
            (call $addToFreeList_Region*_
              (local.get 0)))
          (return
            (local.get 4)))
        (call $__assert_fail
          (i32.const 1469)
          (i32.const 1128)
          (i32.const 417)
          (i32.const 1497))
        (unreachable))
      (call $__assert_fail
        (i32.const 1257)
        (i32.const 1128)
        (i32.const 250)
        (i32.const 1292))
      (unreachable))
    (call $__assert_fail
      (i32.const 1309)
      (i32.const 1128)
      (i32.const 256)
      (i32.const 1292))
    (unreachable))
  (func $allocateRegion_unsigned_long_ (type 4) (param i32) (result i32)
    (local i32 i32 i32 i32)
    (block  ;; label = @1
      (block  ;; label = @2
        (block  ;; label = @3
          (block  ;; label = @4
            (br_if 0 (;@4;)
              (i32.eq
                (local.tee 1
                  (call $sbrk
                    (local.tee 3
                      (i32.and
                        (i32.add
                          (local.get 0)
                          (i32.const 15))
                        (i32.const -8)))))
                (i32.const -1)))
            (block  ;; label = @5
              (block  ;; label = @6
                (block  ;; label = @7
                  (if  ;; label = @8
                    (i32.ne
                      (local.tee 0
                        (i32.and
                          (i32.add
                            (local.get 1)
                            (i32.const 7))
                          (i32.const -8)))
                      (local.get 1))
                    (then
                      (br_if 4 (;@4;)
                        (i32.eq
                          (local.tee 4
                            (call $sbrk
                              (i32.sub
                                (local.get 0)
                                (local.get 1))))
                          (i32.const -1)))
                      (br_if 5 (;@3;)
                        (i32.ne
                          (local.get 4)
                          (i32.add
                            (local.get 1)
                            (local.get 3))))
                      (if  ;; label = @9
                        (i32.eqz
                          (i32.load
                            (i32.const 3044)))
                        (then
                          (br_if 2 (;@7;)
                            (i32.eqz
                              (i32.load
                                (i32.const 3040))))
                          (br 8 (;@1;))))
                      (call $__assert_fail
                        (i32.const 1647)
                        (i32.const 1128)
                        (i32.const 743)
                        (i32.const 1632))
                      (unreachable)))
                  (local.set 1
                    (i32.load
                      (i32.const 3040)))
                  (br_if 1 (;@8;)
                    (local.tee 2
                      (i32.load
                        (i32.const 3044))))
                  (br_if 6 (;@3;)
                    (local.get 1)))
                (i32.store
                  (i32.const 3040)
                  (local.get 0))
                (br 1 (;@8;)))
              (br_if 3 (;@6;)
                (i32.eqz
                  (local.get 1)))
              (i32.store offset=4
                (local.get 0)
                (local.get 2)))
            (i32.store
              (i32.const 3044)
              (local.get 0))
            (i32.store
              (local.get 0)
              (i32.or
                (i32.shl
                  (local.get 3)
                  (i32.const 1))
                (i32.const 1)))
            (local.set 2
              (local.get 0)))
          (return
            (local.get 2)))
        (call $__assert_fail
          (i32.const 1591)
          (i32.const 1128)
          (i32.const 741)
          (i32.const 1632))
        (unreachable))
      (call $__assert_fail
        (i32.const 1672)
        (i32.const 1128)
        (i32.const 756)
        (i32.const 1632))
      (unreachable))
    (call $__assert_fail
      (i32.const 1659)
      (i32.const 1128)
      (i32.const 752)
      (i32.const 1632))
    (unreachable))
  (func $addToFreeList_Region*_ (type 1) (param i32)
    (local i32 i32)
    (block  ;; label = @1
      (block  ;; label = @2
        (if  ;; label = @3
          (i32.le_u
            (i32.add
              (local.get 0)
              (i32.shr_u
                (i32.load
                  (local.get 0))
                (i32.const 1)))
            (call $sbrk
              (i32.const 0)))
          (then
            (br_if 1 (;@2;)
              (i32.eqz
                (local.tee 1
                  (i32.add
                    (i32.shr_u
                      (i32.load
                        (local.get 0))
                      (i32.const 1))
                    (i32.const -8)))))
            (br_if 2 (;@1;)
              (i32.ge_u
                (i32.sub
                  (i32.const 28)
                  (local.tee 1
                    (i32.clz
                      (select
                        (local.get 1)
                        (i32.const 8)
                        (i32.gt_u
                          (local.get 1)
                          (i32.const 8))))))
                (i32.const 29)))
            (local.set 1
              (i32.load
                (local.tee 2
                  (i32.add
                    (i32.shl
                      (i32.sub
                        (i32.const 0)
                        (local.get 1))
                      (i32.const 2))
                    (i32.const 3036)))))
            (i32.store
              (local.get 2)
              (local.tee 2
                (i32.add
                  (local.get 0)
                  (i32.const 8))))
            (i32.store offset=12
              (local.get 0)
              (local.get 1))
            (i32.store offset=8
              (local.get 0)
              (i32.const 0))
            (if  ;; label = @4
              (local.get 1)
              (then
                (i32.store
                  (local.get 1)
                  (local.get 2))))
            (return)))
        (call $__assert_fail
          (i32.const 1100)
          (i32.const 1128)
          (i32.const 306)
          (i32.const 1514))
        (unreachable))
      (call $__assert_fail
        (i32.const 1257)
        (i32.const 1128)
        (i32.const 250)
        (i32.const 1292))
      (unreachable))
    (call $__assert_fail
      (i32.const 1309)
      (i32.const 1128)
      (i32.const 256)
      (i32.const 1292))
    (unreachable))
  (func $setThrew (type 9) (param i32 i32)
    (if  ;; label = @1
      (i32.eqz
        (i32.load
          (i32.const 3048)))
      (then
        (i32.store
          (i32.const 3052)
          (local.get 1))
        (i32.store
          (i32.const 3048)
          (local.get 0)))))
  (func $stackSave (type 3) (result i32)
    (global.get 0))
  (func $stackAlloc (type 4) (param i32) (result i32)
    (global.set 0
      (local.tee 0
        (i32.and
          (i32.sub
            (global.get 0)
            (local.get 0))
          (i32.const -16))))
    (local.get 0))
  (func $stackRestore (type 1) (param i32)
    (global.set 0
      (local.get 0)))
  (func $__growWasmMemory (type 4) (param i32) (result i32)
    (memory.grow
      (local.get 0)))
  (func $dynCall_ii (type 7) (param i32 i32) (result i32)
    (call_indirect (type 4)
      (local.get 1)
      (local.get 0)))
  (func $dynCall_iiii (type 2) (param i32 i32 i32 i32) (result i32)
    (call_indirect (type 0)
      (local.get 1)
      (local.get 2)
      (local.get 3)
      (local.get 0)))
  (func $legalstub$dynCall_jiji (type 10) (param i32 i32 i32 i32 i32) (result i32)
    (local i64)
    (call $setTempRet0
      (i32.wrap_i64
        (i64.shr_u
          (local.tee 5
            (call_indirect (type 8)
              (local.get 1)
              (i64.or
                (i64.extend_i32_u
                  (local.get 2))
                (i64.shl
                  (i64.extend_i32_u
                    (local.get 3))
                  (i64.const 32)))
              (local.get 4)
              (local.get 0)))
          (i64.const 32))))
    (i32.wrap_i64
      (local.get 5)))
  (global (;0;) (mut i32) (i32.const 5245936))
  (global (;1;) i32 (i32.const 3056))
  (export "__wasm_call_ctors" (func $__wasm_call_ctors))
  (export "do_something_stupid_which_allows_write_access" (func $do_something_stupid_which_allows_write_access))
  (export "main" (func $main))
  (export "__errno_location" (func $__errno_location))
  (export "setThrew" (func $setThrew))
  (export "malloc" (func $malloc))
  (export "free" (func $free))
  (export "__data_end" (global 1))
  (export "stackSave" (func $stackSave))
  (export "stackAlloc" (func $stackAlloc))
  (export "stackRestore" (func $stackRestore))
  (export "__growWasmMemory" (func $__growWasmMemory))
  (export "dynCall_ii" (func $dynCall_ii))
  (export "dynCall_iiii" (func $dynCall_iiii))
  (export "dynCall_jiji" (func $legalstub$dynCall_jiji))
  (elem (;0;) (i32.const 1) $__emscripten_stdout_close $__stdio_write $__emscripten_stdout_seek)
  (data (;0;) (i32.const 1024) "AAAA\00we fucked up...\00console.log('this should be safe, shouldn\5c't it?')\00\c0\06\00\00getAfter(region) <= sbrk(0)\00/mnt/Data/Downloads/2019-09-26-wasm-poc-exploits/emcc-upstream/emsdk/upstream/emscripten/system/lib/emmalloc.cpp\00emmalloc_malloc\00size > 0\00getBigEnoughFreeListIndex\00getFreeListIndex\00MIN_FREELIST_INDEX <= index && index < MAX_FREELIST_INDEX\00payloadSize >= size\00possiblySplitRemainder\00extra >= MIN_REGION_SIZE\00totalSplitSize >= MIN_REGION_SIZE\00ptr == getAfter(lastRegion)\00extendLastRegion\00addToFreeList\00mergeIntoExistingFreeRegion\00region == lastRegion\00newAllocation\00(char*)extraPtr == (char*)ptr + sbrkSize\00allocateRegion\00!lastRegion\00!firstRegion\00firstRegion\00getPayload\00region->getUsed()")
  (data (;1;) (i32.const 1721) "\04\00\00\00\00\00\00\05")
  (data (;2;) (i32.const 1740) "\01")
  (data (;3;) (i32.const 1764) "\02\00\00\00\03\00\00\00X\07\00\00\00\04")
  (data (;4;) (i32.const 1788) "\01")
  (data (;5;) (i32.const 1803) "\0a\ff\ff\ff\ff"))

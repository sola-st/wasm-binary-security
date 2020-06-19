(module
  (type (;0;) (func (param i32 i32 i32) (result i32)))
  (type (;1;) (func (param i32 f64 i32 i32 i32 i32) (result i32)))
  (type (;2;) (func (param i32 i32)))
  (type (;3;) (func (param i32 i32 i32 i32) (result i32)))
  (type (;4;) (func (result i32)))
  (type (;5;) (func (param i32) (result i32)))
  (type (;6;) (func (param i32 i32 i32 i32)))
  (type (;7;) (func))
  (type (;8;) (func (param i32 i32) (result i32)))
  (type (;9;) (func (param i32 i64 i32) (result i64)))
  (type (;10;) (func (param i32 i32 i32)))
  (type (;11;) (func (param i32 i32 i32 i32 i32)))
  (type (;12;) (func (param i64 i32) (result i32)))
  (type (;13;) (func (param i64 i32 i32) (result i32)))
  (type (;14;) (func (param i32)))
  (type (;15;) (func (param i32 i32 i32 i32 i32) (result i32)))
  (type (;16;) (func (param i32 i32 i32)))
  (type (;17;) (func (param i32 i32 i32 i32 i32) (result i32)))
  (type (;18;) (func (param i32 i32)))
  (type (;19;) (func (param i32 i32) (result i32)))
  (import "wasi_unstable" "fd_write" (func $__wasi_fd_write (type 3)))
  (import "env" "emscripten_memcpy_big" (func $emscripten_memcpy_big (type 0)))
  (import "env" "emscripten_resize_heap" (func $emscripten_resize_heap (type 5)))
  (import "env" "__assert_fail" (func $__assert_fail (type 6)))
  (import "env" "setTempRet0" (func $setTempRet0 (type 14)))
  (import "env" "memory" (memory (;0;) 256 256))
  (import "env" "table" (table (;0;) 4 funcref))
  (func $__wasm_call_ctors (type 7)
    (nop))
  (func $print_bufs (type 2) (param i32 i32)
    (local i32)
    (global.set 0
      (local.tee 2
        (i32.sub
          (global.get 0)
          (i32.const 32))))
    (i32.store offset=20
      (local.get 2)
      (local.get 0))
    (i32.store offset=16
      (local.get 2)
      (local.get 0))
    (call $iprintf
      (i32.const 1024)
      (i32.add
        (local.get 2)
        (i32.const 16)))
    (i32.store offset=4
      (local.get 2)
      (local.get 1))
    (i32.store
      (local.get 2)
      (local.get 1))
    (call $iprintf
      (i32.const 1065)
      (local.get 2))
    (global.set 0
      (i32.add
        (local.get 2)
        (i32.const 32))))
  (func $main (type 8) (param i32 i32) (result i32)
    (global.set 0
      (local.tee 0
        (i32.sub
          (global.get 0)
          (i32.const 16))))
    (i64.store offset=8
      (local.get 0)
      (i64.const 18650200809816642))
    (call $print_bufs
      (local.get 0)
      (i32.add
        (local.get 0)
        (i32.const 8)))
    (call $print_bufs
      (block (result i32)  ;; label = @1
        (call $__stpcpy
          (local.get 0)
          (i32.load offset=4
            (local.get 1)))
        (local.get 0))
      (i32.add
        (local.get 0)
        (i32.const 8)))
    (global.set 0
      (i32.add
        (local.get 0)
        (i32.const 16)))
    (i32.const 0))
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
  (func $__emscripten_stdout_close (type 5) (param i32) (result i32)
    (i32.const 0))
  (func $__emscripten_stdout_seek (type 9) (param i32 i64 i32) (result i64)
    (i64.const 0))
  (func $__towrite (type 5) (param i32) (result i32)
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
  (func $__fwritex (type 16) (param i32 i32 i32)
    (local i32 i32 i32)
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
            (local.tee 4
              (i32.load offset=20
                (local.get 2))))
          (local.get 1))
        (then
          (drop
            (call_indirect (type 0)
              (local.get 2)
              (local.get 0)
              (local.get 1)
              (i32.load offset=36
                (local.get 2))))
          (return)))
      (block  ;; label = @4
        (br_if 0 (;@4;)
          (i32.lt_s
            (i32.load8_s offset=75
              (local.get 2))
            (i32.const 0)))
        (local.set 5
          (local.get 1))
        (loop  ;; label = @5
          (br_if 1 (;@4;)
            (i32.eqz
              (local.tee 3
                (local.get 5))))
          (br_if 0 (;@5;)
            (i32.ne
              (i32.load8_u
                (i32.add
                  (local.get 0)
                  (local.tee 5
                    (i32.add
                      (local.get 3)
                      (i32.const -1)))))
              (i32.const 10))))
        (br_if 1 (;@4;)
          (i32.lt_u
            (call_indirect (type 0)
              (local.get 2)
              (local.get 0)
              (local.get 3)
              (i32.load offset=36
                (local.get 2)))
            (local.get 3)))
        (local.set 1
          (i32.sub
            (local.get 1)
            (local.get 3)))
        (local.set 0
          (i32.add
            (local.get 0)
            (local.get 3)))
        (local.set 4
          (i32.load offset=20
            (local.get 2))))
      (call $memcpy
        (local.get 4)
        (local.get 0)
        (local.get 1))
      (i32.store offset=20
        (local.get 2)
        (i32.add
          (i32.load offset=20
            (local.get 2))
          (local.get 1)))))
  (func $__vfprintf_internal (type 16) (param i32 i32 i32)
    (local i32 i32 i32)
    (global.set 0
      (local.tee 3
        (i32.sub
          (global.get 0)
          (i32.const 208))))
    (i32.store offset=204
      (local.get 3)
      (local.get 2))
    (local.set 2
      (i32.const 0))
    (call $memset
      (i32.add
        (local.get 3)
        (i32.const 160))
      (i32.const 0)
      (i32.const 40))
    (i32.store offset=200
      (local.get 3)
      (i32.load offset=204
        (local.get 3)))
    (block  ;; label = @1
      (br_if 0 (;@1;)
        (i32.lt_s
          (call $printf_core
            (i32.const 0)
            (local.get 1)
            (i32.add
              (local.get 3)
              (i32.const 200))
            (i32.add
              (local.get 3)
              (i32.const 80))
            (i32.add
              (local.get 3)
              (i32.const 160)))
          (i32.const 0)))
      (if  ;; label = @2
        (i32.ge_s
          (i32.load offset=76
            (local.get 0))
          (i32.const 0))
        (then
          (local.set 2
            (i32.const 1))))
      (local.set 4
        (i32.load
          (local.get 0)))
      (if  ;; label = @3
        (i32.le_s
          (i32.load8_s offset=74
            (local.get 0))
          (i32.const 0))
        (then
          (i32.store
            (local.get 0)
            (i32.and
              (local.get 4)
              (i32.const -33)))))
      (local.set 4
        (i32.and
          (local.get 4)
          (i32.const 32)))
      (drop
        (block (result i32)  ;; label = @4
          (if  ;; label = @5
            (i32.load offset=48
              (local.get 0))
            (then
              (br 1 (;@4;)
                (call $printf_core
                  (local.get 0)
                  (local.get 1)
                  (i32.add
                    (local.get 3)
                    (i32.const 200))
                  (i32.add
                    (local.get 3)
                    (i32.const 80))
                  (i32.add
                    (local.get 3)
                    (i32.const 160))))))
          (i32.store offset=48
            (local.get 0)
            (i32.const 80))
          (i32.store offset=16
            (local.get 0)
            (i32.add
              (local.get 3)
              (i32.const 80)))
          (i32.store offset=28
            (local.get 0)
            (local.get 3))
          (i32.store offset=20
            (local.get 0)
            (local.get 3))
          (local.set 5
            (i32.load offset=44
              (local.get 0)))
          (i32.store offset=44
            (local.get 0)
            (local.get 3))
          (call $printf_core
            (local.get 0)
            (local.get 1)
            (i32.add
              (local.get 3)
              (i32.const 200))
            (i32.add
              (local.get 3)
              (i32.const 80))
            (i32.add
              (local.get 3)
              (i32.const 160)))
          (br_if 0 (;@5;)
            (i32.eqz
              (local.get 5)))
          (drop)
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
            (local.get 5))
          (i32.store offset=28
            (local.get 0)
            (i32.const 0))
          (i32.store offset=16
            (local.get 0)
            (i32.const 0))
          (drop
            (i32.load offset=20
              (local.get 0)))
          (i32.store offset=20
            (local.get 0)
            (i32.const 0))
          (i32.const 0)))
      (i32.store
        (local.get 0)
        (i32.or
          (i32.load
            (local.get 0))
          (local.get 4)))
      (br_if 0 (;@5;)
        (i32.eqz
          (local.get 2))))
    (global.set 0
      (i32.add
        (local.get 3)
        (i32.const 208))))
  (func $printf_core (type 17) (param i32 i32 i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64)
    (global.set 0
      (local.tee 5
        (i32.sub
          (global.get 0)
          (i32.const 80))))
    (i32.store offset=76
      (local.get 5)
      (local.get 1))
    (local.set 19
      (i32.add
        (local.get 5)
        (i32.const 55)))
    (local.set 16
      (i32.add
        (local.get 5)
        (i32.const 56)))
    (local.set 1
      (i32.const 0))
    (block  ;; label = @1
      (block  ;; label = @2
        (loop  ;; label = @3
          (block  ;; label = @4
            (br_if 0 (;@4;)
              (i32.lt_s
                (local.get 13)
                (i32.const 0)))
            (if  ;; label = @5
              (i32.gt_s
                (local.get 1)
                (i32.sub
                  (i32.const 2147483647)
                  (local.get 13)))
              (then
                (i32.store
                  (i32.const 3656)
                  (i32.const 61))
                (local.set 13
                  (i32.const -1))
                (br 1 (;@4;))))
            (local.set 13
              (i32.add
                (local.get 1)
                (local.get 13))))
          (local.set 1
            (local.tee 10
              (i32.load offset=76
                (local.get 5))))
          (block  ;; label = @6
            (block  ;; label = @7
              (block  ;; label = @8
                (local.set 15
                  (block (result i32)  ;; label = @9
                    (block  ;; label = @10
                      (block  ;; label = @11
                        (block  ;; label = @12
                          (block  ;; label = @13
                            (block  ;; label = @14
                              (block  ;; label = @15
                                (block  ;; label = @16
                                  (block  ;; label = @17
                                    (block  ;; label = @18
                                      (if  ;; label = @19
                                        (local.tee 6
                                          (i32.load8_u
                                            (local.get 10)))
                                        (then
                                          (loop  ;; label = @20
                                            (block  ;; label = @21
                                              (block  ;; label = @22
                                                (block  ;; label = @23
                                                  (if  ;; label = @24
                                                    (i32.eqz
                                                      (local.tee 6
                                                        (i32.and
                                                          (local.get 6)
                                                          (i32.const 255))))
                                                    (then
                                                      (local.set 6
                                                        (local.get 1))
                                                      (br 1 (;@23;))))
                                                  (br_if 1 (;@23;)
                                                    (i32.ne
                                                      (local.get 6)
                                                      (i32.const 37)))
                                                  (local.set 6
                                                    (local.get 1))
                                                  (loop  ;; label = @25
                                                    (br_if 1 (;@24;)
                                                      (i32.ne
                                                        (i32.load8_u offset=1
                                                          (local.get 1))
                                                        (i32.const 37)))
                                                    (i32.store offset=76
                                                      (local.get 5)
                                                      (local.tee 7
                                                        (i32.add
                                                          (local.get 1)
                                                          (i32.const 2))))
                                                    (local.set 6
                                                      (i32.add
                                                        (local.get 6)
                                                        (i32.const 1)))
                                                    (local.set 8
                                                      (i32.load8_u offset=2
                                                        (local.get 1)))
                                                    (local.set 1
                                                      (local.get 7))
                                                    (br_if 0 (;@25;)
                                                      (i32.eq
                                                        (local.get 8)
                                                        (i32.const 37)))))
                                                (local.set 1
                                                  (i32.sub
                                                    (local.get 6)
                                                    (local.get 10)))
                                                (if  ;; label = @26
                                                  (local.get 0)
                                                  (then
                                                    (call $out
                                                      (local.get 0)
                                                      (local.get 10)
                                                      (local.get 1))))
                                                (local.get 1)
                                                (br_if 17 (;@9;))
                                                (local.set 7
                                                  (call $isdigit
                                                    (i32.load8_s offset=1
                                                      (i32.load offset=76
                                                        (local.get 5)))))
                                                (local.set 15
                                                  (i32.const -1))
                                                (local.set 6
                                                  (i32.const 1))
                                                (local.set 1
                                                  (i32.load offset=76
                                                    (local.get 5)))
                                                (block  ;; label = @27
                                                  (br_if 0 (;@27;)
                                                    (i32.eqz
                                                      (local.get 7)))
                                                  (br_if 0 (;@27;)
                                                    (i32.ne
                                                      (i32.load8_u offset=2
                                                        (local.get 1))
                                                      (i32.const 36)))
                                                  (local.set 15
                                                    (i32.add
                                                      (i32.load8_s offset=1
                                                        (local.get 1))
                                                      (i32.const -48)))
                                                  (local.set 17
                                                    (i32.const 1))
                                                  (local.set 6
                                                    (i32.const 3)))
                                                (i32.store offset=76
                                                  (local.get 5)
                                                  (local.tee 1
                                                    (i32.add
                                                      (local.get 1)
                                                      (local.get 6))))
                                                (local.set 6
                                                  (i32.const 0))
                                                (block  ;; label = @28
                                                  (if  ;; label = @29
                                                    (i32.gt_u
                                                      (local.tee 8
                                                        (i32.add
                                                          (local.tee 14
                                                            (i32.load8_s
                                                              (local.get 1)))
                                                          (i32.const -32)))
                                                      (i32.const 31))
                                                    (then
                                                      (local.set 7
                                                        (local.get 1))
                                                      (br 1 (;@28;))))
                                                  (local.set 7
                                                    (local.get 1))
                                                  (br_if 0 (;@29;)
                                                    (i32.eqz
                                                      (i32.and
                                                        (local.tee 8
                                                          (i32.shl
                                                            (i32.const 1)
                                                            (local.get 8)))
                                                        (i32.const 75913))))
                                                  (loop  ;; label = @30
                                                    (i32.store offset=76
                                                      (local.get 5)
                                                      (local.tee 7
                                                        (i32.add
                                                          (local.get 1)
                                                          (i32.const 1))))
                                                    (local.set 6
                                                      (i32.or
                                                        (local.get 6)
                                                        (local.get 8)))
                                                    (br_if 1 (;@29;)
                                                      (i32.gt_u
                                                        (local.tee 8
                                                          (i32.add
                                                            (local.tee 14
                                                              (i32.load8_s offset=1
                                                                (local.get 1)))
                                                            (i32.const -32)))
                                                        (i32.const 31)))
                                                    (local.set 1
                                                      (local.get 7))
                                                    (br_if 0 (;@30;)
                                                      (i32.and
                                                        (local.tee 8
                                                          (i32.shl
                                                            (i32.const 1)
                                                            (local.get 8)))
                                                        (i32.const 75913)))))
                                                (block  ;; label = @31
                                                  (if  ;; label = @32
                                                    (i32.eq
                                                      (local.get 14)
                                                      (i32.const 42))
                                                    (then
                                                      (i32.store offset=76
                                                        (local.get 5)
                                                        (local.tee 1
                                                          (block (result i32)  ;; label = @33
                                                            (block  ;; label = @34
                                                              (br_if 0 (;@34;)
                                                                (i32.eqz
                                                                  (call $isdigit
                                                                    (i32.load8_s offset=1
                                                                      (local.get 7)))))
                                                              (br_if 0 (;@34;)
                                                                (i32.ne
                                                                  (i32.load8_u offset=2
                                                                    (local.tee 7
                                                                      (i32.load offset=76
                                                                        (local.get 5))))
                                                                  (i32.const 36)))
                                                              (i32.store
                                                                (i32.add
                                                                  (i32.add
                                                                    (i32.shl
                                                                      (i32.load8_s offset=1
                                                                        (local.get 7))
                                                                      (i32.const 2))
                                                                    (local.get 4))
                                                                  (i32.const -192))
                                                                (i32.const 10))
                                                              (local.set 12
                                                                (i32.load
                                                                  (i32.add
                                                                    (i32.add
                                                                      (i32.shl
                                                                        (i32.load8_s offset=1
                                                                          (local.get 7))
                                                                        (i32.const 3))
                                                                      (local.get 3))
                                                                    (i32.const -384))))
                                                              (local.set 17
                                                                (i32.const 1))
                                                              (br 1 (;@33;)
                                                                (i32.add
                                                                  (local.get 7)
                                                                  (i32.const 3))))
                                                            (br_if 21 (;@13;)
                                                              (local.get 17))
                                                            (local.set 17
                                                              (i32.const 0))
                                                            (local.set 12
                                                              (i32.const 0))
                                                            (if  ;; label = @35
                                                              (local.get 0)
                                                              (then
                                                                (i32.store
                                                                  (local.get 2)
                                                                  (i32.add
                                                                    (local.tee 1
                                                                      (i32.load
                                                                        (local.get 2)))
                                                                    (i32.const 4)))
                                                                (local.set 12
                                                                  (i32.load
                                                                    (local.get 1)))))
                                                            (i32.add
                                                              (i32.load offset=76
                                                                (local.get 5))
                                                              (i32.const 1)))))
                                                      (br_if 1 (;@34;)
                                                        (i32.gt_s
                                                          (local.get 12)
                                                          (i32.const -1)))
                                                      (local.set 12
                                                        (i32.sub
                                                          (i32.const 0)
                                                          (local.get 12)))
                                                      (local.set 6
                                                        (i32.or
                                                          (local.get 6)
                                                          (i32.const 8192)))
                                                      (br 1 (;@34;))))
                                                  (br_if 19 (;@16;)
                                                    (i32.lt_s
                                                      (local.tee 12
                                                        (call $getint
                                                          (i32.add
                                                            (local.get 5)
                                                            (i32.const 76))))
                                                      (i32.const 0)))
                                                  (local.set 1
                                                    (i32.load offset=76
                                                      (local.get 5))))
                                                (local.set 9
                                                  (i32.const -1))
                                                (block  ;; label = @36
                                                  (br_if 0 (;@36;)
                                                    (i32.ne
                                                      (i32.load8_u
                                                        (local.get 1))
                                                      (i32.const 46)))
                                                  (if  ;; label = @37
                                                    (i32.eq
                                                      (i32.load8_u offset=1
                                                        (local.get 1))
                                                      (i32.const 42))
                                                    (then
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
                                                                  (local.get 5))))
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
                                                        (local.set 9
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
                                                          (local.get 5)
                                                          (local.tee 1
                                                            (i32.add
                                                              (local.get 1)
                                                              (i32.const 4))))
                                                        (br 2 (;@36;)))
                                                      (br_if 20 (;@18;)
                                                        (local.get 17))
                                                      (local.set 9
                                                        (if (result i32)  ;; label = @39
                                                          (local.get 0)
                                                          (then
                                                            (i32.store
                                                              (local.get 2)
                                                              (i32.add
                                                                (local.tee 1
                                                                  (i32.load
                                                                    (local.get 2)))
                                                                (i32.const 4)))
                                                            (i32.load
                                                              (local.get 1)))
                                                          (else
                                                            (i32.const 0))))
                                                      (i32.store offset=76
                                                        (local.get 5)
                                                        (local.tee 1
                                                          (i32.add
                                                            (i32.load offset=76
                                                              (local.get 5))
                                                            (i32.const 2))))
                                                      (br 1 (;@38;))))
                                                  (i32.store offset=76
                                                    (local.get 5)
                                                    (i32.add
                                                      (local.get 1)
                                                      (i32.const 1)))
                                                  (local.set 9
                                                    (call $getint
                                                      (i32.add
                                                        (local.get 5)
                                                        (i32.const 76))))
                                                  (local.set 1
                                                    (i32.load offset=76
                                                      (local.get 5))))
                                                (local.set 7
                                                  (i32.const 0))
                                                (loop  ;; label = @40
                                                  (local.set 8
                                                    (local.get 7))
                                                  (local.set 11
                                                    (i32.const -1))
                                                  (br_if 20 (;@20;)
                                                    (i32.gt_u
                                                      (i32.add
                                                        (i32.load8_s
                                                          (local.get 1))
                                                        (i32.const -65))
                                                      (i32.const 57)))
                                                  (i32.store offset=76
                                                    (local.get 5)
                                                    (local.tee 14
                                                      (i32.add
                                                        (local.get 1)
                                                        (i32.const 1))))
                                                  (local.set 7
                                                    (i32.load8_s
                                                      (local.get 1)))
                                                  (local.set 1
                                                    (local.get 14))
                                                  (br_if 0 (;@40;)
                                                    (i32.lt_u
                                                      (i32.add
                                                        (local.tee 7
                                                          (i32.load8_u
                                                            (i32.add
                                                              (i32.add
                                                                (local.get 7)
                                                                (i32.mul
                                                                  (local.get 8)
                                                                  (i32.const 58)))
                                                              (i32.const 1071))))
                                                        (i32.const -1))
                                                      (i32.const 8))))
                                                (br_if 19 (;@21;)
                                                  (i32.eqz
                                                    (local.get 7)))
                                                (block  ;; label = @41
                                                  (block  ;; label = @42
                                                    (block  ;; label = @43
                                                      (if  ;; label = @44
                                                        (i32.eq
                                                          (local.get 7)
                                                          (i32.const 19))
                                                        (then
                                                          (br_if 1 (;@43;)
                                                            (i32.le_s
                                                              (local.get 15)
                                                              (i32.const -1)))
                                                          (br 23 (;@21;))))
                                                      (br_if 1 (;@43;)
                                                        (i32.lt_s
                                                          (local.get 15)
                                                          (i32.const 0)))
                                                      (i32.store
                                                        (i32.add
                                                          (local.get 4)
                                                          (i32.shl
                                                            (local.get 15)
                                                            (i32.const 2)))
                                                        (local.get 7))
                                                      (i64.store offset=64
                                                        (local.get 5)
                                                        (i64.load
                                                          (i32.add
                                                            (local.get 3)
                                                            (i32.shl
                                                              (local.get 15)
                                                              (i32.const 3))))))
                                                    (local.set 1
                                                      (i32.const 0))
                                                    (br_if 19 (;@25;)
                                                      (i32.eqz
                                                        (local.get 0)))
                                                    (br 1 (;@43;)))
                                                  (br_if 17 (;@27;)
                                                    (i32.eqz
                                                      (local.get 0)))
                                                  (call $pop_arg
                                                    (i32.sub
                                                      (local.get 5)
                                                      (i32.const -64))
                                                    (local.get 7)
                                                    (local.get 2))
                                                  (local.set 14
                                                    (i32.load offset=76
                                                      (local.get 5))))
                                                (local.set 6
                                                  (select
                                                    (local.tee 18
                                                      (i32.and
                                                        (local.get 6)
                                                        (i32.const -65537)))
                                                    (local.get 6)
                                                    (i32.and
                                                      (local.get 6)
                                                      (i32.const 8192))))
                                                (local.set 11
                                                  (i32.const 0))
                                                (local.set 15
                                                  (i32.const 1112))
                                                (local.set 7
                                                  (local.get 16))
                                                (br_if 1 (;@43;)
                                                  (i32.le_u
                                                    (local.tee 14
                                                      (i32.add
                                                        (local.tee 1
                                                          (select
                                                            (select
                                                              (i32.and
                                                                (local.tee 1
                                                                  (i32.load8_s
                                                                    (i32.add
                                                                      (local.get 14)
                                                                      (i32.const -1))))
                                                                (i32.const -33))
                                                              (local.get 1)
                                                              (i32.eq
                                                                (i32.and
                                                                  (local.get 1)
                                                                  (i32.const 15))
                                                                (i32.const 3)))
                                                            (local.get 1)
                                                            (local.get 8)))
                                                        (i32.const -88)))
                                                    (i32.const 32)))
                                                (block  ;; label = @45
                                                  (local.set 7
                                                    (block (result i32)  ;; label = @46
                                                      (block  ;; label = @47
                                                        (block  ;; label = @48
                                                          (if  ;; label = @49
                                                            (i32.gt_u
                                                              (local.tee 8
                                                                (i32.add
                                                                  (local.get 1)
                                                                  (i32.const -65)))
                                                              (i32.const 6))
                                                            (then
                                                              (br_if 20 (;@29;)
                                                                (i32.ne
                                                                  (local.get 1)
                                                                  (i32.const 83)))
                                                              (br_if 1 (;@48;)
                                                                (i32.eqz
                                                                  (local.get 9)))
                                                              (br 3 (;@46;)
                                                                (i32.load offset=64
                                                                  (local.get 5)))))
                                                          (br_table 19 (;@30;) 1 (;@48;) 19 (;@30;) 8 (;@41;)
                                                            (i32.sub
                                                              (local.get 8)
                                                              (i32.const 1))))
                                                        (local.set 1
                                                          (i32.const 0))
                                                        (call $pad
                                                          (local.get 0)
                                                          (i32.const 32)
                                                          (local.get 12)
                                                          (i32.const 0)
                                                          (local.get 6))
                                                        (br 2 (;@47;)))
                                                      (i32.store offset=12
                                                        (local.get 5)
                                                        (i32.const 0))
                                                      (i64.store32 offset=8
                                                        (local.get 5)
                                                        (i64.load offset=64
                                                          (local.get 5)))
                                                      (i32.store offset=64
                                                        (local.get 5)
                                                        (i32.add
                                                          (local.get 5)
                                                          (i32.const 8)))
                                                      (local.set 9
                                                        (i32.const -1))
                                                      (i32.add
                                                        (local.get 5)
                                                        (i32.const 8))))
                                                  (local.set 1
                                                    (i32.const 0))
                                                  (block  ;; label = @50
                                                    (loop  ;; label = @51
                                                      (br_if 1 (;@50;)
                                                        (i32.eqz
                                                          (local.tee 8
                                                            (i32.load
                                                              (local.get 7)))))
                                                      (block  ;; label = @52
                                                        (br_if 0 (;@52;)
                                                          (local.tee 10
                                                            (i32.lt_s
                                                              (local.tee 8
                                                                (call $wctomb
                                                                  (i32.add
                                                                    (local.get 5)
                                                                    (i32.const 4))
                                                                  (local.get 8)))
                                                              (i32.const 0))))
                                                        (br_if 0 (;@52;)
                                                          (i32.gt_u
                                                            (local.get 8)
                                                            (i32.sub
                                                              (local.get 9)
                                                              (local.get 1))))
                                                        (local.set 7
                                                          (i32.add
                                                            (local.get 7)
                                                            (i32.const 4)))
                                                        (br_if 1 (;@51;)
                                                          (i32.gt_u
                                                            (local.get 9)
                                                            (local.tee 1
                                                              (i32.add
                                                                (local.get 1)
                                                                (local.get 8)))))
                                                        (br 2 (;@50;))))
                                                    (local.set 11
                                                      (i32.const -1))
                                                    (br_if 21 (;@31;)
                                                      (local.get 10)))
                                                  (call $pad
                                                    (local.get 0)
                                                    (i32.const 32)
                                                    (local.get 12)
                                                    (local.get 1)
                                                    (local.get 6))
                                                  (if  ;; label = @53
                                                    (i32.eqz
                                                      (local.get 1))
                                                    (then
                                                      (local.set 1
                                                        (i32.const 0))
                                                      (br 1 (;@52;))))
                                                  (local.set 8
                                                    (i32.const 0))
                                                  (local.set 7
                                                    (i32.load offset=64
                                                      (local.get 5)))
                                                  (loop  ;; label = @54
                                                    (br_if 1 (;@53;)
                                                      (i32.eqz
                                                        (local.tee 10
                                                          (i32.load
                                                            (local.get 7)))))
                                                    (br_if 1 (;@53;)
                                                      (i32.gt_s
                                                        (local.tee 8
                                                          (i32.add
                                                            (local.tee 10
                                                              (call $wctomb
                                                                (i32.add
                                                                  (local.get 5)
                                                                  (i32.const 4))
                                                                (local.get 10)))
                                                            (local.get 8)))
                                                        (local.get 1)))
                                                    (call $out
                                                      (local.get 0)
                                                      (i32.add
                                                        (local.get 5)
                                                        (i32.const 4))
                                                      (local.get 10))
                                                    (local.set 7
                                                      (i32.add
                                                        (local.get 7)
                                                        (i32.const 4)))
                                                    (br_if 0 (;@54;)
                                                      (i32.lt_u
                                                        (local.get 8)
                                                        (local.get 1)))))
                                                (call $pad
                                                  (local.get 0)
                                                  (i32.const 32)
                                                  (local.get 12)
                                                  (local.get 1)
                                                  (i32.xor
                                                    (local.get 6)
                                                    (i32.const 8192)))
                                                (local.set 1
                                                  (select
                                                    (local.get 12)
                                                    (local.get 1)
                                                    (i32.gt_s
                                                      (local.get 12)
                                                      (local.get 1))))
                                                (br 17 (;@37;)))
                                              (i32.store offset=76
                                                (local.get 5)
                                                (local.tee 7
                                                  (i32.add
                                                    (local.get 1)
                                                    (i32.const 1))))
                                              (local.set 6
                                                (i32.load8_u offset=1
                                                  (local.get 1)))
                                              (local.set 1
                                                (local.get 7))
                                              (br 1 (;@53;))))
                                          (br_table 12 (;@42;) 12 (;@42;) 12 (;@42;) 12 (;@42;) 12 (;@42;) 12 (;@42;) 12 (;@42;) 12 (;@42;) 1 (;@53;) 12 (;@42;) 3 (;@51;) 4 (;@50;) 1 (;@53;) 1 (;@53;) 1 (;@53;) 12 (;@42;) 4 (;@50;) 12 (;@42;) 12 (;@42;) 12 (;@42;) 12 (;@42;) 8 (;@46;) 5 (;@49;) 6 (;@48;) 12 (;@42;) 12 (;@42;) 2 (;@52;) 12 (;@42;) 9 (;@45;) 12 (;@42;) 12 (;@42;) 7 (;@47;)
                                            (i32.sub
                                              (local.get 14)
                                              (i32.const 1)))))
                                      (local.set 11
                                        (local.get 13))
                                      (local.get 0)
                                      (br_if 15 (;@39;))
                                      (br_if 12 (;@42;)
                                        (i32.eqz
                                          (local.get 17)))
                                      (local.set 1
                                        (i32.const 1))
                                      (loop  ;; label = @55
                                        (if  ;; label = @56
                                          (local.tee 6
                                            (i32.load
                                              (i32.add
                                                (local.get 4)
                                                (i32.shl
                                                  (local.get 1)
                                                  (i32.const 2)))))
                                          (then
                                            (call $pop_arg
                                              (i32.add
                                                (local.get 3)
                                                (i32.shl
                                                  (local.get 1)
                                                  (i32.const 3)))
                                              (local.get 6)
                                              (local.get 2))
                                            (local.set 11
                                              (i32.const 1))
                                            (br_if 1 (;@55;)
                                              (i32.ne
                                                (local.tee 1
                                                  (i32.add
                                                    (local.get 1)
                                                    (i32.const 1)))
                                                (i32.const 10)))
                                            (br 17 (;@39;)))))
                                      (local.set 11
                                        (i32.const 1))
                                      (br_if 15 (;@41;)
                                        (i32.gt_u
                                          (local.get 1)
                                          (i32.const 9)))
                                      (local.set 11
                                        (i32.const -1))
                                      (br_if 15 (;@41;)
                                        (i32.load
                                          (i32.add
                                            (local.get 4)
                                            (i32.shl
                                              (local.get 1)
                                              (i32.const 2)))))
                                      (loop  ;; label = @57
                                        (if  ;; label = @58
                                          (i32.ne
                                            (local.tee 1
                                              (i32.add
                                                (local.get 1)
                                                (i32.const 1)))
                                            (i32.const 10))
                                          (then
                                            (br_if 1 (;@57;)
                                              (i32.eqz
                                                (i32.load
                                                  (i32.add
                                                    (local.get 4)
                                                    (i32.shl
                                                      (local.get 1)
                                                      (i32.const 2)))))))))
                                      (local.set 11
                                        (select
                                          (i32.const -1)
                                          (i32.const 1)
                                          (i32.lt_u
                                            (local.get 1)
                                            (i32.const 10))))
                                      (br 15 (;@43;)))
                                    (local.set 1
                                      (call_indirect (type 1)
                                        (local.get 0)
                                        (f64.load offset=64
                                          (local.get 5))
                                        (local.get 12)
                                        (local.get 9)
                                        (local.get 6)
                                        (local.get 1)
                                        (i32.const 0)))
                                    (br 12 (;@46;)))
                                  (local.set 7
                                    (select
                                      (local.tee 1
                                        (call $memchr
                                          (local.tee 10
                                            (select
                                              (local.tee 1
                                                (i32.load offset=64
                                                  (local.get 5)))
                                              (i32.const 1122)
                                              (local.get 1)))
                                          (local.get 9)))
                                      (i32.add
                                        (local.get 9)
                                        (local.get 10))
                                      (local.get 1)))
                                  (local.set 6
                                    (local.get 18))
                                  (local.set 9
                                    (select
                                      (i32.sub
                                        (local.get 1)
                                        (local.get 10))
                                      (local.get 9)
                                      (local.get 1)))
                                  (br 9 (;@49;)))
                                (i64.store8 offset=55
                                  (local.get 5)
                                  (i64.load offset=64
                                    (local.get 5)))
                                (local.set 9
                                  (i32.const 1))
                                (local.set 10
                                  (local.get 19))
                                (local.set 6
                                  (local.get 18))
                                (br 8 (;@50;)))
                              (if  ;; label = @59
                                (i64.le_s
                                  (local.tee 20
                                    (i64.load offset=64
                                      (local.get 5)))
                                  (i64.const -1))
                                (then
                                  (i64.store offset=64
                                    (local.get 5)
                                    (local.tee 20
                                      (i64.sub
                                        (i64.const 0)
                                        (local.get 20))))
                                  (local.set 11
                                    (i32.const 1))
                                  (i32.const 1112)
                                  (br 6 (;@53;))))
                              (if  ;; label = @60
                                (i32.and
                                  (local.get 6)
                                  (i32.const 2048))
                                (then
                                  (local.set 11
                                    (i32.const 1))
                                  (i32.const 1113)
                                  (br 6 (;@54;))))
                              (select
                                (i32.const 1114)
                                (i32.const 1112)
                                (local.tee 11
                                  (i32.and
                                    (local.get 6)
                                    (i32.const 1))))
                              (br 5 (;@55;)))
                            (local.set 10
                              (call $fmt_o
                                (i64.load offset=64
                                  (local.get 5))
                                (local.get 16)))
                            (br_if 5 (;@55;)
                              (i32.eqz
                                (i32.and
                                  (local.get 6)
                                  (i32.const 8))))
                            (local.set 9
                              (select
                                (local.get 9)
                                (i32.add
                                  (local.tee 1
                                    (i32.sub
                                      (local.get 16)
                                      (local.get 10)))
                                  (i32.const 1))
                                (i32.gt_s
                                  (local.get 9)
                                  (local.get 1))))
                            (br 5 (;@55;)))
                          (local.set 9
                            (select
                              (local.get 9)
                              (i32.const 8)
                              (i32.gt_u
                                (local.get 9)
                                (i32.const 8))))
                          (local.set 6
                            (i32.or
                              (local.get 6)
                              (i32.const 8)))
                          (local.set 1
                            (i32.const 120)))
                        (local.set 10
                          (call $fmt_x
                            (i64.load offset=64
                              (local.get 5))
                            (local.get 16)
                            (i32.and
                              (local.get 1)
                              (i32.const 32))))
                        (br_if 3 (;@57;)
                          (i32.eqz
                            (i32.and
                              (local.get 6)
                              (i32.const 8))))
                        (br_if 3 (;@57;)
                          (i64.eqz
                            (i64.load offset=64
                              (local.get 5))))
                        (local.set 15
                          (i32.add
                            (i32.shr_u
                              (local.get 1)
                              (i32.const 4))
                            (i32.const 1112)))
                        (local.set 11
                          (i32.const 2))
                        (br 3 (;@57;)))
                      (local.set 1
                        (i32.const 0))
                      (br_if 5 (;@55;)
                        (i32.gt_u
                          (local.tee 6
                            (i32.and
                              (local.get 8)
                              (i32.const 255)))
                          (i32.const 7)))
                      (block  ;; label = @61
                        (block  ;; label = @62
                          (block  ;; label = @63
                            (block  ;; label = @64
                              (block  ;; label = @65
                                (block  ;; label = @66
                                  (block  ;; label = @67
                                    (br_table 1 (;@66;) 2 (;@65;) 3 (;@64;) 4 (;@63;) 12 (;@55;) 5 (;@62;) 6 (;@61;) 0 (;@67;)
                                      (i32.sub
                                        (local.get 6)
                                        (i32.const 1))))
                                  (i32.store
                                    (i32.load offset=64
                                      (local.get 5))
                                    (local.get 13))
                                  (br 11 (;@56;)))
                                (i32.store
                                  (i32.load offset=64
                                    (local.get 5))
                                  (local.get 13))
                                (br 10 (;@57;)))
                              (i64.store
                                (i32.load offset=64
                                  (local.get 5))
                                (i64.extend_i32_s
                                  (local.get 13)))
                              (br 9 (;@58;)))
                            (i32.store16
                              (i32.load offset=64
                                (local.get 5))
                              (local.get 13))
                            (br 8 (;@59;)))
                          (i32.store8
                            (i32.load offset=64
                              (local.get 5))
                            (local.get 13))
                          (br 7 (;@60;)))
                        (i32.store
                          (i32.load offset=64
                            (local.get 5))
                          (local.get 13))
                        (br 6 (;@61;)))
                      (i64.store
                        (i32.load offset=64
                          (local.get 5))
                        (i64.extend_i32_s
                          (local.get 13)))
                      (br 5 (;@62;)))
                    (local.set 20
                      (i64.load offset=64
                        (local.get 5)))
                    (i32.const 1112)))
                (local.set 10
                  (call $fmt_u
                    (local.get 20)
                    (local.get 16))))
              (local.set 6
                (select
                  (i32.and
                    (local.get 6)
                    (i32.const -65537))
                  (local.get 6)
                  (i32.gt_s
                    (local.get 9)
                    (i32.const -1))))
              (local.set 20
                (i64.load offset=64
                  (local.get 5)))
              (local.set 9
                (block (result i32)  ;; label = @68
                  (block  ;; label = @69
                    (br_if 0 (;@69;)
                      (local.get 9))
                    (br_if 0 (;@69;)
                      (i32.eqz
                        (i64.eqz
                          (local.get 20))))
                    (local.set 10
                      (local.get 16))
                    (br 1 (;@68;)
                      (i32.const 0)))
                  (select
                    (local.get 9)
                    (local.tee 1
                      (i32.add
                        (i64.eqz
                          (local.get 20))
                        (i32.sub
                          (local.get 16)
                          (local.get 10))))
                    (i32.gt_s
                      (local.get 9)
                      (local.get 1))))))
            (call $pad
              (local.get 0)
              (i32.const 32)
              (local.tee 1
                (select
                  (local.tee 7
                    (i32.add
                      (local.get 11)
                      (local.tee 14
                        (select
                          (local.tee 8
                            (i32.sub
                              (local.get 7)
                              (local.get 10)))
                          (local.get 9)
                          (i32.lt_s
                            (local.get 9)
                            (local.get 8))))))
                  (local.get 12)
                  (i32.lt_s
                    (local.get 12)
                    (local.get 7))))
              (local.get 7)
              (local.get 6))
            (call $out
              (local.get 0)
              (local.get 15)
              (local.get 11))
            (call $pad
              (local.get 0)
              (i32.const 48)
              (local.get 1)
              (local.get 7)
              (i32.xor
                (local.get 6)
                (i32.const 65536)))
            (call $pad
              (local.get 0)
              (i32.const 48)
              (local.get 14)
              (local.get 8)
              (i32.const 0))
            (call $out
              (local.get 0)
              (local.get 10)
              (local.get 8))
            (call $pad
              (local.get 0)
              (i32.const 32)
              (local.get 1)
              (local.get 7)
              (i32.xor
                (local.get 6)
                (i32.const 8192)))
            (br 1 (;@68;))))
        (local.set 11
          (i32.const 0))
        (br 1 (;@68;)))
      (local.set 11
        (i32.const -1)))
    (global.set 0
      (i32.add
        (local.get 5)
        (i32.const 80)))
    (local.get 11))
  (func $out (type 10) (param i32 i32 i32)
    (if  ;; label = @1
      (i32.eqz
        (i32.and
          (i32.load8_u
            (local.get 0))
          (i32.const 32)))
      (then
        (call $__fwritex
          (local.get 1)
          (local.get 2)
          (local.get 0)))))
  (func $getint (type 5) (param i32) (result i32)
    (local i32 i32 i32)
    (if  ;; label = @1
      (call $isdigit
        (i32.load8_s
          (i32.load
            (local.get 0))))
      (then
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
                (local.get 2)))))))
    (local.get 1))
  (func $pop_arg (type 16) (param i32 i32 i32)
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
                          (br_table 1 (;@10;) 2 (;@9;) 3 (;@8;) 4 (;@7;) 5 (;@6;) 6 (;@5;) 7 (;@4;) 8 (;@3;) 9 (;@2;) 0 (;@11;)
                            (i32.sub
                              (local.get 1)
                              (i32.const 1))))
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
        (i32.const 0))))
  (func $pad (type 11) (param i32 i32 i32 i32 i32)
    (local i32)
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
      (call $memset
        (local.get 5)
        (local.get 1)
        (select
          (local.tee 4
            (i32.sub
              (local.get 2)
              (local.get 3)))
          (i32.const 256)
          (local.tee 1
            (i32.lt_u
              (local.get 4)
              (i32.const 256)))))
      (call $out
        (local.get 0)
        (local.get 5)
        (if (result i32)  ;; label = @2
          (local.get 1)
          (then
            (local.get 4))
          (else
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
            (i32.and
              (local.get 2)
              (i32.const 255))))))
    (global.set 0
      (i32.add
        (local.get 5)
        (i32.const 256))))
  (func $fmt_o (type 12) (param i64 i32) (result i32)
    (if  ;; label = @1
      (i32.eqz
        (i64.eqz
          (local.get 0)))
      (then
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
              (i64.const 0))))))
    (local.get 1))
  (func $fmt_x (type 13) (param i64 i32 i32) (result i32)
    (if  ;; label = @1
      (i32.eqz
        (i64.eqz
          (local.get 0)))
      (then
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
                  (i32.const 1600)))
              (local.get 2)))
          (br_if 0 (;@2;)
            (i64.ne
              (local.tee 0
                (i64.shr_u
                  (local.get 0)
                  (i64.const 4)))
              (i64.const 0))))))
    (local.get 1))
  (func $fmt_u (type 12) (param i64 i32) (result i32)
    (local i32 i32 i32 i64)
    (block  ;; label = @1
      (if  ;; label = @2
        (i64.lt_u
          (local.get 0)
          (i64.const 4294967296))
        (then
          (local.set 5
            (local.get 0))
          (br 1 (;@1;))))
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
    (if  ;; label = @4
      (local.tee 2
        (i32.wrap_i64
          (local.get 5)))
      (then
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
            (local.get 4)))))
    (local.get 1))
  (func $iprintf (type 18) (param i32 i32)
    (local i32)
    (global.set 0
      (local.tee 2
        (i32.sub
          (global.get 0)
          (i32.const 16))))
    (i32.store offset=12
      (local.get 2)
      (local.get 1))
    (call $__vfprintf_internal
      (i32.load
        (i32.const 1108))
      (local.get 0)
      (local.get 1))
    (global.set 0
      (i32.add
        (local.get 2)
        (i32.const 16))))
  (func $isdigit (type 5) (param i32) (result i32)
    (i32.lt_u
      (i32.add
        (local.get 0)
        (i32.const -48))
      (i32.const 10)))
  (func $memchr (type 19) (param i32 i32) (result i32)
    (local i32 i32 i32)
    (local.set 2
      (i32.ne
        (local.get 1)
        (i32.const 0)))
    (block  ;; label = @1
      (block  ;; label = @2
        (block  ;; label = @3
          (block  ;; label = @4
            (br_if 0 (;@4;)
              (i32.eqz
                (local.get 1)))
            (br_if 0 (;@4;)
              (i32.eqz
                (i32.and
                  (local.get 0)
                  (i32.const 3))))
            (loop  ;; label = @5
              (br_if 2 (;@3;)
                (i32.eqz
                  (i32.load8_u
                    (local.get 0))))
              (local.set 0
                (i32.add
                  (local.get 0)
                  (i32.const 1)))
              (local.set 2
                (i32.ne
                  (local.tee 1
                    (i32.add
                      (local.get 1)
                      (i32.const -1)))
                  (i32.const 0)))
              (br_if 1 (;@4;)
                (i32.eqz
                  (local.get 1)))
              (br_if 0 (;@5;)
                (i32.and
                  (local.get 0)
                  (i32.const 3)))))
          (br_if 1 (;@4;)
            (i32.eqz
              (local.get 2))))
        (br_if 1 (;@4;)
          (i32.eqz
            (i32.load8_u
              (local.get 0))))
        (block  ;; label = @6
          (if  ;; label = @7
            (i32.ge_u
              (local.get 1)
              (i32.const 4))
            (then
              (local.set 3
                (i32.sub
                  (local.tee 2
                    (i32.add
                      (local.get 1)
                      (i32.const -4)))
                  (local.tee 2
                    (i32.and
                      (local.get 2)
                      (i32.const -4)))))
              (local.set 4
                (i32.add
                  (i32.add
                    (local.get 0)
                    (local.get 2))
                  (i32.const 4)))
              (loop  ;; label = @8
                (br_if 2 (;@6;)
                  (i32.and
                    (i32.and
                      (i32.xor
                        (local.tee 2
                          (i32.load
                            (local.get 0)))
                        (i32.const -1))
                      (i32.add
                        (local.get 2)
                        (i32.const -16843009)))
                    (i32.const -2139062144)))
                (local.set 0
                  (i32.add
                    (local.get 0)
                    (i32.const 4)))
                (br_if 0 (;@8;)
                  (i32.gt_u
                    (local.tee 1
                      (i32.add
                        (local.get 1)
                        (i32.const -4)))
                    (i32.const 3))))
              (local.set 1
                (local.get 3))
              (local.set 0
                (local.get 4))))
          (br_if 1 (;@7;)
            (i32.eqz
              (local.get 1))))
        (loop  ;; label = @9
          (br_if 2 (;@7;)
            (i32.eqz
              (i32.load8_u
                (local.get 0))))
          (local.set 0
            (i32.add
              (local.get 0)
              (i32.const 1)))
          (br_if 0 (;@9;)
            (local.tee 1
              (i32.add
                (local.get 1)
                (i32.const -1))))))
      (return
        (i32.const 0)))
    (local.get 0))
  (func $__stpcpy (type 18) (param i32 i32)
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
  (func $wctomb (type 8) (param i32 i32) (result i32)
    (if  ;; label = @1
      (i32.eqz
        (local.get 0))
      (then
        (return
          (i32.const 0))))
    (call $wcrtomb
      (local.get 0)
      (local.get 1)))
  (func $wcrtomb (type 19) (param i32 i32) (result i32)
    (block  ;; label = @1
      (return
        (if (result i32)  ;; label = @2
          (local.get 0)
          (then
            (br_if 1 (;@1;)
              (i32.le_u
                (local.get 1)
                (i32.const 127)))
            (block  ;; label = @3
              (if  ;; label = @4
                (i32.eqz
                  (i32.load
                    (i32.load
                      (i32.const 2564))))
                (then
                  (br_if 3 (;@1;)
                    (i32.eq
                      (i32.and
                        (local.get 1)
                        (i32.const -128))
                      (i32.const 57216)))
                  (i32.store
                    (i32.const 3656)
                    (i32.const 25))
                  (br 1 (;@3;))))
              (if  ;; label = @5
                (i32.le_u
                  (local.get 1)
                  (i32.const 2047))
                (then
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
                    (i32.const 2))))
              (if  ;; label = @6
                (i32.eqz
                  (select
                    (i32.ge_u
                      (local.get 1)
                      (i32.const 55296))
                    (i32.const 0)
                    (i32.ne
                      (i32.and
                        (local.get 1)
                        (i32.const -8192))
                      (i32.const 57344))))
                (then
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
                    (i32.const 3))))
              (if  ;; label = @7
                (i32.le_u
                  (i32.add
                    (local.get 1)
                    (i32.const -65536))
                  (i32.const 1048575))
                (then
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
                    (i32.const 4))))
              (i32.store
                (i32.const 3656)
                (i32.const 25)))
            (i32.const -1))
          (else
            (i32.const 1)))))
    (i32.store8
      (local.get 0)
      (local.get 1))
    (i32.const 1))
  (func $__errno_location (type 4) (result i32)
    (i32.const 3656))
  (func $memcpy (type 16) (param i32 i32 i32)
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
  (func $memset (type 16) (param i32 i32 i32)
    (local i32 i32 i64)
    (block  ;; label = @1
      (br_if 0 (;@1;)
        (i32.eqz
          (local.get 2)))
      (i32.store8
        (i32.add
          (local.tee 3
            (i32.add
              (local.get 0)
              (local.get 2)))
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
              (local.tee 4
                (i32.or
                  (i32.and
                    (local.get 3)
                    (i32.const 4))
                  (i32.const 24)))))
          (i32.const 32)))
      (local.set 5
        (i64.or
          (i64.shl
            (local.tee 5
              (i64.extend_i32_u
                (local.get 1)))
            (i64.const 32))
          (local.get 5)))
      (local.set 1
        (i32.add
          (local.get 3)
          (local.get 4)))
      (loop  ;; label = @2
        (i64.store offset=24
          (local.get 1)
          (local.get 5))
        (i64.store offset=16
          (local.get 1)
          (local.get 5))
        (i64.store offset=8
          (local.get 1)
          (local.get 5))
        (i64.store
          (local.get 1)
          (local.get 5))
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
            (i32.const 31))))))
  (func $sbrk (type 5) (param i32) (result i32)
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
                  (i32.const 3872)))
              (local.get 0)))
          (i32.shl
            (local.get 1)
            (i32.const 16))))
      (br_if 0 (;@1;)
        (call $emscripten_resize_heap
          (local.get 0)))
      (i32.store
        (i32.const 3656)
        (i32.const 48))
      (return
        (i32.const -1)))
    (i32.store
      (i32.const 3872)
      (local.get 0))
    (local.get 2))
  (func $malloc (type 5) (param i32) (result i32)
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
        (i32.const 1616)
        (i32.const 1644)
        (i32.const 819)
        (i32.const 1757))
      (unreachable))
    (call $__assert_fail
      (i32.const 2211)
      (i32.const 1644)
      (i32.const 206)
      (i32.const 2200))
    (unreachable))
  (func $tryFromFreeList_unsigned_long_ (type 5) (param i32) (result i32)
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
                                  (i32.const 3724))))))
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
                                        (i32.const 3852)))))
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
                                  (i32.const 3728)))))
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
                                (i32.const 3852)))))
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
                (i32.const 1773)
                (i32.const 1644)
                (i32.const 267)
                (i32.const 1782))
              (unreachable))
            (call $__assert_fail
              (i32.const 1825)
              (i32.const 1644)
              (i32.const 256)
              (i32.const 1808))
            (unreachable))
          (call $__assert_fail
            (i32.const 1773)
            (i32.const 1644)
            (i32.const 250)
            (i32.const 1808))
          (unreachable))
        (call $__assert_fail
          (i32.const 1825)
          (i32.const 1644)
          (i32.const 256)
          (i32.const 1808))
        (unreachable))
      (call $__assert_fail
        (i32.const 1773)
        (i32.const 1644)
        (i32.const 250)
        (i32.const 1808))
      (unreachable))
    (call $__assert_fail
      (i32.const 1825)
      (i32.const 1644)
      (i32.const 256)
      (i32.const 1808))
    (unreachable))
  (func $newAllocation_unsigned_long_ (type 5) (param i32) (result i32)
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
                      (i32.const 3860)))))
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
                        (i32.const 3852))))
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
                  (i32.const 3860)))
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
          (i32.const 1773)
          (i32.const 1644)
          (i32.const 776)
          (i32.const 2093))
        (unreachable))
      (call $__assert_fail
        (i32.const 1773)
        (i32.const 1644)
        (i32.const 250)
        (i32.const 1808))
      (unreachable))
    (call $__assert_fail
      (i32.const 1825)
      (i32.const 1644)
      (i32.const 256)
      (i32.const 1808))
    (unreachable))
  (func $free (type 14) (param i32)
    (if  ;; label = @1
      (local.get 0)
      (then
        (call $stopUsing_Region*_
          (i32.add
            (local.get 0)
            (i32.const -8))))))
  (func $stopUsing_Region*_ (type 14) (param i32)
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
                                (i32.const 3860)))
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
                                  (i32.const 3852))))
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
                                    (i32.const 3860)
                                    (local.get 3)))
                                (call $__assert_fail
                                  (i32.const 2072)
                                  (i32.const 1644)
                                  (i32.const 338)
                                  (i32.const 2044))
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
                                      (i32.const 3852))))
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
                                    (i32.const 3860)))))
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
                                  (i32.const 3860)
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
                                  (i32.const 3852))))
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
                                (i32.const 3860)))))
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
                              (i32.const 3860))
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
                  (i32.const 1616)
                  (i32.const 1644)
                  (i32.const 324)
                  (i32.const 2044))
                (unreachable))
              (call $__assert_fail
                (i32.const 1773)
                (i32.const 1644)
                (i32.const 250)
                (i32.const 1808))
              (unreachable))
            (call $__assert_fail
              (i32.const 1825)
              (i32.const 1644)
              (i32.const 256)
              (i32.const 1808))
            (unreachable))
          (call $__assert_fail
            (i32.const 1773)
            (i32.const 1644)
            (i32.const 250)
            (i32.const 1808))
          (unreachable))
        (call $__assert_fail
          (i32.const 1825)
          (i32.const 1644)
          (i32.const 256)
          (i32.const 1808))
        (unreachable))
      (call $__assert_fail
        (i32.const 1773)
        (i32.const 1644)
        (i32.const 250)
        (i32.const 1808))
      (unreachable))
    (call $__assert_fail
      (i32.const 1825)
      (i32.const 1644)
      (i32.const 256)
      (i32.const 1808))
    (unreachable))
  (func $possiblySplitRemainder_Region*__unsigned_long_ (type 2) (param i32 i32)
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
                        (i32.const 3860))
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
                    (i32.const 1926)
                    (i32.const 1644)
                    (i32.const 445)
                    (i32.const 1903))
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
                  (i32.const 3860)
                  (i32.add
                    (i32.add
                      (local.get 1)
                      (i32.and
                        (local.get 2)
                        (i32.const 2147483647)))
                    (i32.const 4))
                  (i32.eq
                    (i32.load
                      (i32.const 3860))
                    (local.get 0)))
                (local.get 1))
              (call $stopUsing_Region*_
                (local.get 1)))
            (return)))
        (call $__assert_fail
          (i32.const 1883)
          (i32.const 1644)
          (i32.const 428)
          (i32.const 1903))
        (unreachable))
      (call $__assert_fail
        (i32.const 2211)
        (i32.const 1644)
        (i32.const 206)
        (i32.const 2200))
      (unreachable))
    (call $__assert_fail
      (i32.const 1951)
      (i32.const 1644)
      (i32.const 460)
      (i32.const 1903))
    (unreachable))
  (func $extendLastRegion_unsigned_long_ (type 5) (param i32) (result i32)
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
                              (i32.const 3860)))
                          (i32.const 1))))))
                (i32.const -1)))
            (br_if 1 (;@3;)
              (i32.ne
                (local.get 1)
                (i32.add
                  (local.tee 0
                    (i32.load
                      (i32.const 3860)))
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
                        (i32.const 3852))))
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
          (i32.const 1985)
          (i32.const 1644)
          (i32.const 417)
          (i32.const 2013))
        (unreachable))
      (call $__assert_fail
        (i32.const 1773)
        (i32.const 1644)
        (i32.const 250)
        (i32.const 1808))
      (unreachable))
    (call $__assert_fail
      (i32.const 1825)
      (i32.const 1644)
      (i32.const 256)
      (i32.const 1808))
    (unreachable))
  (func $allocateRegion_unsigned_long_ (type 5) (param i32) (result i32)
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
                            (i32.const 3860)))
                        (then
                          (br_if 2 (;@7;)
                            (i32.eqz
                              (i32.load
                                (i32.const 3856))))
                          (br 8 (;@1;))))
                      (call $__assert_fail
                        (i32.const 2163)
                        (i32.const 1644)
                        (i32.const 743)
                        (i32.const 2148))
                      (unreachable)))
                  (local.set 1
                    (i32.load
                      (i32.const 3856)))
                  (br_if 1 (;@8;)
                    (local.tee 2
                      (i32.load
                        (i32.const 3860))))
                  (br_if 6 (;@3;)
                    (local.get 1)))
                (i32.store
                  (i32.const 3856)
                  (local.get 0))
                (br 1 (;@8;)))
              (br_if 3 (;@6;)
                (i32.eqz
                  (local.get 1)))
              (i32.store offset=4
                (local.get 0)
                (local.get 2)))
            (i32.store
              (i32.const 3860)
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
          (i32.const 2107)
          (i32.const 1644)
          (i32.const 741)
          (i32.const 2148))
        (unreachable))
      (call $__assert_fail
        (i32.const 2188)
        (i32.const 1644)
        (i32.const 756)
        (i32.const 2148))
      (unreachable))
    (call $__assert_fail
      (i32.const 2175)
      (i32.const 1644)
      (i32.const 752)
      (i32.const 2148))
    (unreachable))
  (func $addToFreeList_Region*_ (type 14) (param i32)
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
                    (i32.const 3852)))))
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
          (i32.const 1616)
          (i32.const 1644)
          (i32.const 306)
          (i32.const 2030))
        (unreachable))
      (call $__assert_fail
        (i32.const 1773)
        (i32.const 1644)
        (i32.const 250)
        (i32.const 1808))
      (unreachable))
    (call $__assert_fail
      (i32.const 1825)
      (i32.const 1644)
      (i32.const 256)
      (i32.const 1808))
    (unreachable))
  (func $setThrew (type 2) (param i32 i32)
    (if  ;; label = @1
      (i32.eqz
        (i32.load
          (i32.const 3864)))
      (then
        (i32.store
          (i32.const 3868)
          (local.get 1))
        (i32.store
          (i32.const 3864)
          (local.get 0)))))
  (func $stackSave (type 4) (result i32)
    (global.get 0))
  (func $stackAlloc (type 5) (param i32) (result i32)
    (global.set 0
      (local.tee 0
        (i32.and
          (i32.sub
            (global.get 0)
            (local.get 0))
          (i32.const -16))))
    (local.get 0))
  (func $stackRestore (type 14) (param i32)
    (global.set 0
      (local.get 0)))
  (func $__growWasmMemory (type 5) (param i32) (result i32)
    (memory.grow
      (local.get 0)))
  (func $dynCall_ii (type 8) (param i32 i32) (result i32)
    (call_indirect (type 5)
      (local.get 1)
      (local.get 0)))
  (func $dynCall_iiii (type 3) (param i32 i32 i32 i32) (result i32)
    (call_indirect (type 0)
      (local.get 1)
      (local.get 2)
      (local.get 3)
      (local.get 0)))
  (func $legalstub$dynCall_jiji (type 15) (param i32 i32 i32 i32 i32) (result i32)
    (local i64)
    (call $setTempRet0
      (i32.wrap_i64
        (i64.shr_u
          (local.tee 5
            (call_indirect (type 9)
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
  (global (;0;) (mut i32) (i32.const 5246752))
  (global (;1;) i32 (i32.const 3872))
  (export "__wasm_call_ctors" (func $__wasm_call_ctors))
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
  (data (;0;) (i32.const 1024) "&buf_overflow:   %p\0a buf_overflow:   %s\0a\00&buf_other_data: %p\0a buf_other_data: %s\0a\00\00\00\b8\08\00\00-+   0X0x\00(null)")
  (data (;1;) (i32.const 1136) "\11\00\0a\00\11\11\11\00\00\00\00\05\00\00\00\00\00\00\09\00\00\00\00\0b")
  (data (;2;) (i32.const 1168) "\11\00\0f\0a\11\11\11\03\0a\07\00\01\13\09\0b\0b\00\00\09\06\0b\00\00\0b\00\06\11\00\00\00\11\11\11")
  (data (;3;) (i32.const 1217) "\0b")
  (data (;4;) (i32.const 1226) "\11\00\0a\0a\11\11\11\00\0a\00\00\02\00\09\0b\00\00\00\09\00\0b\00\00\0b")
  (data (;5;) (i32.const 1275) "\0c")
  (data (;6;) (i32.const 1287) "\0c\00\00\00\00\0c\00\00\00\00\09\0c\00\00\00\00\00\0c\00\00\0c")
  (data (;7;) (i32.const 1333) "\0e")
  (data (;8;) (i32.const 1345) "\0d\00\00\00\04\0d\00\00\00\00\09\0e\00\00\00\00\00\0e\00\00\0e")
  (data (;9;) (i32.const 1391) "\10")
  (data (;10;) (i32.const 1403) "\0f\00\00\00\00\0f\00\00\00\00\09\10\00\00\00\00\00\10\00\00\10\00\00\12\00\00\00\12\12\12")
  (data (;11;) (i32.const 1458) "\12\00\00\00\12\12\12\00\00\00\00\00\00\09")
  (data (;12;) (i32.const 1507) "\0b")
  (data (;13;) (i32.const 1519) "\0a\00\00\00\00\0a\00\00\00\00\09\0b\00\00\00\00\00\0b\00\00\0b")
  (data (;14;) (i32.const 1565) "\0c")
  (data (;15;) (i32.const 1577) "\0c\00\00\00\00\0c\00\00\00\00\09\0c\00\00\00\00\00\0c\00\00\0c\00\000123456789ABCDEFgetAfter(region) <= sbrk(0)\00/mnt/Data/Downloads/2019-09-26-wasm-poc-exploits/emcc-upstream/emsdk/upstream/emscripten/system/lib/emmalloc.cpp\00emmalloc_malloc\00size > 0\00getBigEnoughFreeListIndex\00getFreeListIndex\00MIN_FREELIST_INDEX <= index && index < MAX_FREELIST_INDEX\00payloadSize >= size\00possiblySplitRemainder\00extra >= MIN_REGION_SIZE\00totalSplitSize >= MIN_REGION_SIZE\00ptr == getAfter(lastRegion)\00extendLastRegion\00addToFreeList\00mergeIntoExistingFreeRegion\00region == lastRegion\00newAllocation\00(char*)extraPtr == (char*)ptr + sbrkSize\00allocateRegion\00!lastRegion\00!firstRegion\00firstRegion\00getPayload\00region->getUsed()")
  (data (;16;) (i32.const 2232) "\05")
  (data (;17;) (i32.const 2244) "\01")
  (data (;18;) (i32.const 2268) "\02\00\00\00\03\00\00\00H\0a\00\00\00\04")
  (data (;19;) (i32.const 2292) "\01")
  (data (;20;) (i32.const 2307) "\0a\ff\ff\ff\ff")
  (data (;21;) (i32.const 2564) "t\0e"))

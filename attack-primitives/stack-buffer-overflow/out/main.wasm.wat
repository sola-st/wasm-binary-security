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
  (type (;16;) (func))
  (type (;17;) (func (param i32)))
  (type (;18;) (func (param i32 i32) (result i32)))
  (type (;19;) (func (param i32 i32 i32)))
  (type (;20;) (func (param i32 i32 i32 i32 i32) (result i32)))
  (type (;21;) (func (param i32 i32)))
  (type (;22;) (func (result i32)))
  (import "wasi_unstable" "fd_write" (func $__wasi_fd_write (type 3)))
  (import "env" "emscripten_memcpy_big" (func $emscripten_memcpy_big (type 0)))
  (import "env" "emscripten_resize_heap" (func $emscripten_resize_heap (type 5)))
  (import "env" "__assert_fail" (func $__assert_fail (type 6)))
  (import "env" "setTempRet0" (func $setTempRet0 (type 14)))
  (import "env" "memory" (memory (;0;) 256 256))
  (import "env" "table" (table (;0;) 8 funcref))
  (func $__wasm_call_ctors (type 7)
    nop)
  (func $evil (type 14) (param i32)
    call $puts)
  (func $vulnerable (type 14) (param i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 1
    global.set 0
    local.get 1
    i32.const 8
    i32.add
    local.get 0
    call $__stpcpy
    local.get 1
    i32.const 16
    i32.add
    global.set 0)
  (func $foo (type 14) (param i32)
    nop)
  (func $main (type 8) (param i32 i32) (result i32)
    (local i32 i64)
    global.get 0
    i32.const -64
    i32.add
    local.tee 2
    global.set 0
    local.get 1
    i64.load align=4
    local.set 3
    local.get 2
    local.get 1
    i32.store offset=36
    local.get 2
    local.get 3
    i64.store offset=40
    local.get 2
    local.get 0
    i32.store offset=32
    i32.const 1024
    local.get 2
    i32.const 32
    i32.add
    call $iprintf
    local.get 2
    block (result i32)  ;; label = @1
      i32.const 1
      local.get 0
      i32.const 1338
      i32.ge_s
      br_if 0 (;@1;)
      drop
      i32.const 2
      local.get 0
      i32.const 43
      i32.ge_s
      br_if 0 (;@1;)
      drop
      i32.const 3
    end
    local.tee 0
    i32.store offset=60
    local.get 2
    local.get 0
    i32.store offset=20
    local.get 2
    local.get 2
    i32.const 60
    i32.add
    i32.store offset=16
    i32.const 1067
    local.get 2
    i32.const 16
    i32.add
    call $iprintf
    local.get 1
    i32.load offset=4
    call $vulnerable
    local.get 2
    local.get 2
    i32.load offset=60
    i32.store offset=4
    local.get 2
    local.get 2
    i32.const 60
    i32.add
    i32.store
    i32.const 1067
    local.get 2
    call $iprintf
    i32.const 1096
    local.get 2
    i32.load offset=60
    call_indirect (type 14)
    local.get 2
    i32.const -64
    i32.sub
    global.set 0
    i32.const 0)
  (func $dead_code (type 7)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 0
    global.set 0
    local.get 0
    i32.const 4
    i32.store
    i32.const 1101
    local.get 0
    call $iprintf
    local.get 0
    i32.const 16
    i32.add
    global.set 0)
  (func $puts (type 16)
    (local i32 i32)
    i32.const 1120
    i32.load
    local.tee 0
    i32.load offset=76
    i32.const 0
    i32.ge_s
    if (result i32)  ;; label = @1
      i32.const 1
    else
      local.get 1
    end
    drop
    block  ;; label = @1
      i32.const -1
      i32.const 0
      call $strlen
      local.tee 1
      local.get 1
      local.get 0
      call $fwrite
      i32.ne
      select
      i32.const 0
      i32.lt_s
      br_if 0 (;@1;)
      block  ;; label = @2
        local.get 0
        i32.load8_u offset=75
        i32.const 10
        i32.eq
        br_if 0 (;@2;)
        local.get 0
        i32.load offset=20
        local.tee 1
        local.get 0
        i32.load offset=16
        i32.ge_u
        br_if 0 (;@2;)
        local.get 0
        local.get 1
        i32.const 1
        i32.add
        i32.store offset=20
        local.get 1
        i32.const 10
        i32.store8
        br 1 (;@1;)
      end
      local.get 0
      call $__overflow
    end)
  (func $__overflow (type 17) (param i32)
    (local i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 1
    global.set 0
    local.get 1
    i32.const 10
    i32.store8 offset=15
    block  ;; label = @1
      local.get 0
      i32.load offset=16
      local.tee 2
      i32.eqz
      if  ;; label = @2
        local.get 0
        call $__towrite
        br_if 1 (;@1;)
        local.get 0
        i32.load offset=16
        local.set 2
      end
      block  ;; label = @2
        local.get 0
        i32.load offset=20
        local.tee 3
        local.get 2
        i32.ge_u
        br_if 0 (;@2;)
        local.get 0
        i32.load8_s offset=75
        i32.const 10
        i32.eq
        br_if 0 (;@2;)
        local.get 0
        local.get 3
        i32.const 1
        i32.add
        i32.store offset=20
        local.get 3
        i32.const 10
        i32.store8
        br 1 (;@1;)
      end
      local.get 0
      local.get 1
      i32.const 15
      i32.add
      i32.const 1
      local.get 0
      i32.load offset=36
      call_indirect (type 0)
      i32.const 1
      i32.ne
      br_if 0 (;@1;)
      local.get 1
      i32.load8_u offset=15
      drop
    end
    local.get 1
    i32.const 16
    i32.add
    global.set 0)
  (func $__stdio_write (type 0) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 3
    global.set 0
    local.get 3
    local.get 0
    i32.load offset=28
    local.tee 4
    i32.store offset=16
    local.get 0
    i32.load offset=20
    local.set 5
    local.get 3
    local.get 2
    i32.store offset=28
    local.get 3
    local.get 1
    i32.store offset=24
    local.get 3
    local.get 5
    local.get 4
    i32.sub
    local.tee 1
    i32.store offset=20
    local.get 1
    local.get 2
    i32.add
    local.set 6
    i32.const 2
    local.set 5
    local.get 3
    i32.const 16
    i32.add
    local.set 1
    loop  ;; label = @1
      block  ;; label = @2
        block (result i32)  ;; label = @3
          local.get 6
          block (result i32)  ;; label = @4
            local.get 0
            i32.load offset=60
            local.get 1
            local.get 5
            local.get 3
            i32.const 12
            i32.add
            call $__wasi_fd_write
            if  ;; label = @5
              local.get 3
              i32.const -1
              i32.store offset=12
              i32.const -1
              br 1 (;@4;)
            end
            local.get 3
            i32.load offset=12
          end
          local.tee 4
          i32.eq
          if  ;; label = @4
            local.get 0
            local.get 0
            i32.load offset=44
            local.tee 1
            i32.store offset=28
            local.get 0
            local.get 1
            i32.store offset=20
            local.get 0
            local.get 1
            local.get 0
            i32.load offset=48
            i32.add
            i32.store offset=16
            local.get 2
            br 1 (;@3;)
          end
          local.get 4
          i32.const -1
          i32.gt_s
          br_if 1 (;@2;)
          local.get 0
          i32.const 0
          i32.store offset=28
          local.get 0
          i64.const 0
          i64.store offset=16
          local.get 0
          local.get 0
          i32.load
          i32.const 32
          i32.or
          i32.store
          i32.const 0
          local.get 5
          i32.const 2
          i32.eq
          br_if 0 (;@3;)
          drop
          local.get 2
          local.get 1
          i32.load offset=4
          i32.sub
        end
        local.set 4
        local.get 3
        i32.const 32
        i32.add
        global.set 0
        local.get 4
        return
      end
      local.get 1
      i32.const 8
      i32.add
      local.get 1
      local.get 4
      local.get 1
      i32.load offset=4
      local.tee 7
      i32.gt_u
      local.tee 8
      select
      local.tee 1
      local.get 4
      local.get 7
      i32.const 0
      local.get 8
      select
      i32.sub
      local.tee 7
      local.get 1
      i32.load
      i32.add
      i32.store
      local.get 1
      local.get 1
      i32.load offset=4
      local.get 7
      i32.sub
      i32.store offset=4
      local.get 6
      local.get 4
      i32.sub
      local.set 6
      local.get 5
      local.get 8
      i32.sub
      local.set 5
      br 0 (;@1;)
      unreachable
    end
    unreachable)
  (func $__emscripten_stdout_close (type 5) (param i32) (result i32)
    i32.const 0)
  (func $__emscripten_stdout_seek (type 9) (param i32 i64 i32) (result i64)
    i64.const 0)
  (func $__towrite (type 5) (param i32) (result i32)
    (local i32)
    local.get 0
    local.get 0
    i32.load8_u offset=74
    local.tee 1
    i32.const -1
    i32.add
    local.get 1
    i32.or
    i32.store8 offset=74
    local.get 0
    i32.load
    local.tee 1
    i32.const 8
    i32.and
    if  ;; label = @1
      local.get 0
      local.get 1
      i32.const 32
      i32.or
      i32.store
      i32.const -1
      return
    end
    local.get 0
    i64.const 0
    i64.store offset=4 align=4
    local.get 0
    local.get 0
    i32.load offset=44
    local.tee 1
    i32.store offset=28
    local.get 0
    local.get 1
    i32.store offset=20
    local.get 0
    local.get 1
    local.get 0
    i32.load offset=48
    i32.add
    i32.store offset=16
    i32.const 0)
  (func $__fwritex (type 0) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32)
    block  ;; label = @1
      local.get 2
      i32.load offset=16
      local.tee 3
      if (result i32)  ;; label = @2
        local.get 3
      else
        local.get 2
        call $__towrite
        br_if 1 (;@1;)
        local.get 2
        i32.load offset=16
      end
      local.get 2
      i32.load offset=20
      local.tee 5
      i32.sub
      local.get 1
      i32.lt_u
      if  ;; label = @2
        local.get 2
        local.get 0
        local.get 1
        local.get 2
        i32.load offset=36
        call_indirect (type 0)
        return
      end
      block  ;; label = @2
        local.get 2
        i32.load8_s offset=75
        i32.const 0
        i32.lt_s
        br_if 0 (;@2;)
        local.get 1
        local.set 4
        loop  ;; label = @3
          local.get 4
          local.tee 3
          i32.eqz
          br_if 1 (;@2;)
          local.get 0
          local.get 3
          i32.const -1
          i32.add
          local.tee 4
          i32.add
          i32.load8_u
          i32.const 10
          i32.ne
          br_if 0 (;@3;)
        end
        local.get 2
        local.get 0
        local.get 3
        local.get 2
        i32.load offset=36
        call_indirect (type 0)
        local.tee 4
        local.get 3
        i32.lt_u
        br_if 1 (;@1;)
        local.get 1
        local.get 3
        i32.sub
        local.set 1
        local.get 0
        local.get 3
        i32.add
        local.set 0
        local.get 2
        i32.load offset=20
        local.set 5
        local.get 3
        local.set 6
      end
      local.get 5
      local.get 0
      local.get 1
      call $memcpy
      local.get 2
      local.get 2
      i32.load offset=20
      local.get 1
      i32.add
      i32.store offset=20
      local.get 1
      local.get 6
      i32.add
      local.set 4
    end
    local.get 4)
  (func $fwrite (type 18) (param i32 i32) (result i32)
    (local i32)
    local.get 0
    local.tee 2
    block (result i32)  ;; label = @1
      local.get 1
      i32.load offset=76
      i32.const -1
      i32.le_s
      if  ;; label = @2
        i32.const 1105
        local.get 2
        local.get 1
        call $__fwritex
        br 1 (;@1;)
      end
      i32.const 1105
      local.get 2
      local.get 1
      call $__fwritex
    end
    local.tee 1
    i32.eq
    if  ;; label = @1
      local.get 0
      return
    end
    local.get 1)
  (func $__vfprintf_internal (type 19) (param i32 i32 i32)
    (local i32 i32 i32)
    global.get 0
    i32.const 208
    i32.sub
    local.tee 3
    global.set 0
    local.get 3
    local.get 2
    i32.store offset=204
    i32.const 0
    local.set 2
    local.get 3
    i32.const 160
    i32.add
    i32.const 0
    i32.const 40
    call $memset
    local.get 3
    local.get 3
    i32.load offset=204
    i32.store offset=200
    block  ;; label = @1
      i32.const 0
      local.get 1
      local.get 3
      i32.const 200
      i32.add
      local.get 3
      i32.const 80
      i32.add
      local.get 3
      i32.const 160
      i32.add
      call $printf_core
      i32.const 0
      i32.lt_s
      br_if 0 (;@1;)
      local.get 0
      i32.load offset=76
      i32.const 0
      i32.ge_s
      if  ;; label = @2
        i32.const 1
        local.set 2
      end
      local.get 0
      i32.load
      local.set 4
      local.get 0
      i32.load8_s offset=74
      i32.const 0
      i32.le_s
      if  ;; label = @2
        local.get 0
        local.get 4
        i32.const -33
        i32.and
        i32.store
      end
      local.get 4
      i32.const 32
      i32.and
      local.set 4
      block (result i32)  ;; label = @2
        local.get 0
        i32.load offset=48
        if  ;; label = @3
          local.get 0
          local.get 1
          local.get 3
          i32.const 200
          i32.add
          local.get 3
          i32.const 80
          i32.add
          local.get 3
          i32.const 160
          i32.add
          call $printf_core
          br 1 (;@2;)
        end
        local.get 0
        i32.const 80
        i32.store offset=48
        local.get 0
        local.get 3
        i32.const 80
        i32.add
        i32.store offset=16
        local.get 0
        local.get 3
        i32.store offset=28
        local.get 0
        local.get 3
        i32.store offset=20
        local.get 0
        i32.load offset=44
        local.set 5
        local.get 0
        local.get 3
        i32.store offset=44
        local.get 0
        local.get 1
        local.get 3
        i32.const 200
        i32.add
        local.get 3
        i32.const 80
        i32.add
        local.get 3
        i32.const 160
        i32.add
        call $printf_core
        local.get 5
        i32.eqz
        br_if 0 (;@2;)
        drop
        local.get 0
        i32.const 0
        i32.const 0
        local.get 0
        i32.load offset=36
        call_indirect (type 0)
        drop
        local.get 0
        i32.const 0
        i32.store offset=48
        local.get 0
        local.get 5
        i32.store offset=44
        local.get 0
        i32.const 0
        i32.store offset=28
        local.get 0
        i32.const 0
        i32.store offset=16
        local.get 0
        i32.load offset=20
        drop
        local.get 0
        i32.const 0
        i32.store offset=20
        i32.const 0
      end
      drop
      local.get 0
      local.get 0
      i32.load
      local.get 4
      i32.or
      i32.store
      local.get 2
      i32.eqz
      br_if 0 (;@1;)
    end
    local.get 3
    i32.const 208
    i32.add
    global.set 0)
  (func $printf_core (type 20) (param i32 i32 i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64)
    global.get 0
    i32.const 80
    i32.sub
    local.tee 5
    global.set 0
    local.get 5
    local.get 1
    i32.store offset=76
    local.get 5
    i32.const 55
    i32.add
    local.set 19
    local.get 5
    i32.const 56
    i32.add
    local.set 16
    i32.const 0
    local.set 1
    block  ;; label = @1
      block  ;; label = @2
        loop  ;; label = @3
          block  ;; label = @4
            local.get 13
            i32.const 0
            i32.lt_s
            br_if 0 (;@4;)
            local.get 1
            i32.const 2147483647
            local.get 13
            i32.sub
            i32.gt_s
            if  ;; label = @5
              i32.const 3672
              i32.const 61
              i32.store
              i32.const -1
              local.set 13
              br 1 (;@4;)
            end
            local.get 1
            local.get 13
            i32.add
            local.set 13
          end
          local.get 5
          i32.load offset=76
          local.tee 10
          local.set 1
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block (result i32)  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                block  ;; label = @15
                                  block  ;; label = @16
                                    local.get 10
                                    i32.load8_u
                                    local.tee 6
                                    if  ;; label = @17
                                      loop  ;; label = @18
                                        block  ;; label = @19
                                          block  ;; label = @20
                                            block  ;; label = @21
                                              local.get 6
                                              i32.const 255
                                              i32.and
                                              local.tee 6
                                              i32.eqz
                                              if  ;; label = @22
                                                local.get 1
                                                local.set 6
                                                br 1 (;@21;)
                                              end
                                              local.get 6
                                              i32.const 37
                                              i32.ne
                                              br_if 1 (;@20;)
                                              local.get 1
                                              local.set 6
                                              loop  ;; label = @22
                                                local.get 1
                                                i32.load8_u offset=1
                                                i32.const 37
                                                i32.ne
                                                br_if 1 (;@21;)
                                                local.get 5
                                                local.get 1
                                                i32.const 2
                                                i32.add
                                                local.tee 7
                                                i32.store offset=76
                                                local.get 6
                                                i32.const 1
                                                i32.add
                                                local.set 6
                                                local.get 1
                                                i32.load8_u offset=2
                                                local.set 8
                                                local.get 7
                                                local.set 1
                                                local.get 8
                                                i32.const 37
                                                i32.eq
                                                br_if 0 (;@22;)
                                              end
                                            end
                                            local.get 6
                                            local.get 10
                                            i32.sub
                                            local.set 1
                                            local.get 0
                                            if  ;; label = @21
                                              local.get 0
                                              local.get 10
                                              local.get 1
                                              call $out
                                            end
                                            local.get 1
                                            br_if 17 (;@3;)
                                            local.get 5
                                            i32.load offset=76
                                            i32.load8_s offset=1
                                            call $isdigit
                                            local.set 7
                                            i32.const -1
                                            local.set 15
                                            i32.const 1
                                            local.set 6
                                            local.get 5
                                            i32.load offset=76
                                            local.set 1
                                            block  ;; label = @21
                                              local.get 7
                                              i32.eqz
                                              br_if 0 (;@21;)
                                              local.get 1
                                              i32.load8_u offset=2
                                              i32.const 36
                                              i32.ne
                                              br_if 0 (;@21;)
                                              local.get 1
                                              i32.load8_s offset=1
                                              i32.const -48
                                              i32.add
                                              local.set 15
                                              i32.const 1
                                              local.set 17
                                              i32.const 3
                                              local.set 6
                                            end
                                            local.get 5
                                            local.get 1
                                            local.get 6
                                            i32.add
                                            local.tee 1
                                            i32.store offset=76
                                            i32.const 0
                                            local.set 6
                                            block  ;; label = @21
                                              local.get 1
                                              i32.load8_s
                                              local.tee 14
                                              i32.const -32
                                              i32.add
                                              local.tee 8
                                              i32.const 31
                                              i32.gt_u
                                              if  ;; label = @22
                                                local.get 1
                                                local.set 7
                                                br 1 (;@21;)
                                              end
                                              local.get 1
                                              local.set 7
                                              i32.const 1
                                              local.get 8
                                              i32.shl
                                              local.tee 8
                                              i32.const 75913
                                              i32.and
                                              i32.eqz
                                              br_if 0 (;@21;)
                                              loop  ;; label = @22
                                                local.get 5
                                                local.get 1
                                                i32.const 1
                                                i32.add
                                                local.tee 7
                                                i32.store offset=76
                                                local.get 6
                                                local.get 8
                                                i32.or
                                                local.set 6
                                                local.get 1
                                                i32.load8_s offset=1
                                                local.tee 14
                                                i32.const -32
                                                i32.add
                                                local.tee 8
                                                i32.const 31
                                                i32.gt_u
                                                br_if 1 (;@21;)
                                                local.get 7
                                                local.set 1
                                                i32.const 1
                                                local.get 8
                                                i32.shl
                                                local.tee 8
                                                i32.const 75913
                                                i32.and
                                                br_if 0 (;@22;)
                                              end
                                            end
                                            block  ;; label = @21
                                              local.get 14
                                              i32.const 42
                                              i32.eq
                                              if  ;; label = @22
                                                local.get 5
                                                block (result i32)  ;; label = @23
                                                  block  ;; label = @24
                                                    local.get 7
                                                    i32.load8_s offset=1
                                                    call $isdigit
                                                    i32.eqz
                                                    br_if 0 (;@24;)
                                                    local.get 5
                                                    i32.load offset=76
                                                    local.tee 7
                                                    i32.load8_u offset=2
                                                    i32.const 36
                                                    i32.ne
                                                    br_if 0 (;@24;)
                                                    local.get 7
                                                    i32.load8_s offset=1
                                                    i32.const 2
                                                    i32.shl
                                                    local.get 4
                                                    i32.add
                                                    i32.const -192
                                                    i32.add
                                                    i32.const 10
                                                    i32.store
                                                    local.get 7
                                                    i32.load8_s offset=1
                                                    i32.const 3
                                                    i32.shl
                                                    local.get 3
                                                    i32.add
                                                    i32.const -384
                                                    i32.add
                                                    i32.load
                                                    local.set 12
                                                    i32.const 1
                                                    local.set 17
                                                    local.get 7
                                                    i32.const 3
                                                    i32.add
                                                    br 1 (;@23;)
                                                  end
                                                  local.get 17
                                                  br_if 21 (;@2;)
                                                  i32.const 0
                                                  local.set 17
                                                  i32.const 0
                                                  local.set 12
                                                  local.get 0
                                                  if  ;; label = @24
                                                    local.get 2
                                                    local.get 2
                                                    i32.load
                                                    local.tee 1
                                                    i32.const 4
                                                    i32.add
                                                    i32.store
                                                    local.get 1
                                                    i32.load
                                                    local.set 12
                                                  end
                                                  local.get 5
                                                  i32.load offset=76
                                                  i32.const 1
                                                  i32.add
                                                end
                                                local.tee 1
                                                i32.store offset=76
                                                local.get 12
                                                i32.const -1
                                                i32.gt_s
                                                br_if 1 (;@21;)
                                                i32.const 0
                                                local.get 12
                                                i32.sub
                                                local.set 12
                                                local.get 6
                                                i32.const 8192
                                                i32.or
                                                local.set 6
                                                br 1 (;@21;)
                                              end
                                              local.get 5
                                              i32.const 76
                                              i32.add
                                              call $getint
                                              local.tee 12
                                              i32.const 0
                                              i32.lt_s
                                              br_if 19 (;@2;)
                                              local.get 5
                                              i32.load offset=76
                                              local.set 1
                                            end
                                            i32.const -1
                                            local.set 9
                                            block  ;; label = @21
                                              local.get 1
                                              i32.load8_u
                                              i32.const 46
                                              i32.ne
                                              br_if 0 (;@21;)
                                              local.get 1
                                              i32.load8_u offset=1
                                              i32.const 42
                                              i32.eq
                                              if  ;; label = @22
                                                block  ;; label = @23
                                                  local.get 1
                                                  i32.load8_s offset=2
                                                  call $isdigit
                                                  i32.eqz
                                                  br_if 0 (;@23;)
                                                  local.get 5
                                                  i32.load offset=76
                                                  local.tee 1
                                                  i32.load8_u offset=3
                                                  i32.const 36
                                                  i32.ne
                                                  br_if 0 (;@23;)
                                                  local.get 1
                                                  i32.load8_s offset=2
                                                  i32.const 2
                                                  i32.shl
                                                  local.get 4
                                                  i32.add
                                                  i32.const -192
                                                  i32.add
                                                  i32.const 10
                                                  i32.store
                                                  local.get 1
                                                  i32.load8_s offset=2
                                                  i32.const 3
                                                  i32.shl
                                                  local.get 3
                                                  i32.add
                                                  i32.const -384
                                                  i32.add
                                                  i32.load
                                                  local.set 9
                                                  local.get 5
                                                  local.get 1
                                                  i32.const 4
                                                  i32.add
                                                  local.tee 1
                                                  i32.store offset=76
                                                  br 2 (;@21;)
                                                end
                                                local.get 17
                                                br_if 20 (;@2;)
                                                local.get 0
                                                if (result i32)  ;; label = @23
                                                  local.get 2
                                                  local.get 2
                                                  i32.load
                                                  local.tee 1
                                                  i32.const 4
                                                  i32.add
                                                  i32.store
                                                  local.get 1
                                                  i32.load
                                                else
                                                  i32.const 0
                                                end
                                                local.set 9
                                                local.get 5
                                                local.get 5
                                                i32.load offset=76
                                                i32.const 2
                                                i32.add
                                                local.tee 1
                                                i32.store offset=76
                                                br 1 (;@21;)
                                              end
                                              local.get 5
                                              local.get 1
                                              i32.const 1
                                              i32.add
                                              i32.store offset=76
                                              local.get 5
                                              i32.const 76
                                              i32.add
                                              call $getint
                                              local.set 9
                                              local.get 5
                                              i32.load offset=76
                                              local.set 1
                                            end
                                            i32.const 0
                                            local.set 7
                                            loop  ;; label = @21
                                              local.get 7
                                              local.set 8
                                              i32.const -1
                                              local.set 11
                                              local.get 1
                                              i32.load8_s
                                              i32.const -65
                                              i32.add
                                              i32.const 57
                                              i32.gt_u
                                              br_if 20 (;@1;)
                                              local.get 5
                                              local.get 1
                                              i32.const 1
                                              i32.add
                                              local.tee 14
                                              i32.store offset=76
                                              local.get 1
                                              i32.load8_s
                                              local.set 7
                                              local.get 14
                                              local.set 1
                                              local.get 7
                                              local.get 8
                                              i32.const 58
                                              i32.mul
                                              i32.add
                                              i32.const 1087
                                              i32.add
                                              i32.load8_u
                                              local.tee 7
                                              i32.const -1
                                              i32.add
                                              i32.const 8
                                              i32.lt_u
                                              br_if 0 (;@21;)
                                            end
                                            local.get 7
                                            i32.eqz
                                            br_if 19 (;@1;)
                                            block  ;; label = @21
                                              block  ;; label = @22
                                                block  ;; label = @23
                                                  local.get 7
                                                  i32.const 19
                                                  i32.eq
                                                  if  ;; label = @24
                                                    local.get 15
                                                    i32.const -1
                                                    i32.le_s
                                                    br_if 1 (;@23;)
                                                    br 23 (;@1;)
                                                  end
                                                  local.get 15
                                                  i32.const 0
                                                  i32.lt_s
                                                  br_if 1 (;@22;)
                                                  local.get 4
                                                  local.get 15
                                                  i32.const 2
                                                  i32.shl
                                                  i32.add
                                                  local.get 7
                                                  i32.store
                                                  local.get 5
                                                  local.get 3
                                                  local.get 15
                                                  i32.const 3
                                                  i32.shl
                                                  i32.add
                                                  i64.load
                                                  i64.store offset=64
                                                end
                                                i32.const 0
                                                local.set 1
                                                local.get 0
                                                i32.eqz
                                                br_if 19 (;@3;)
                                                br 1 (;@21;)
                                              end
                                              local.get 0
                                              i32.eqz
                                              br_if 17 (;@4;)
                                              local.get 5
                                              i32.const -64
                                              i32.sub
                                              local.get 7
                                              local.get 2
                                              call $pop_arg
                                              local.get 5
                                              i32.load offset=76
                                              local.set 14
                                            end
                                            local.get 6
                                            i32.const -65537
                                            i32.and
                                            local.tee 18
                                            local.get 6
                                            local.get 6
                                            i32.const 8192
                                            i32.and
                                            select
                                            local.set 6
                                            i32.const 0
                                            local.set 11
                                            i32.const 1124
                                            local.set 15
                                            local.get 16
                                            local.set 7
                                            local.get 14
                                            i32.const -1
                                            i32.add
                                            i32.load8_s
                                            local.tee 1
                                            i32.const -33
                                            i32.and
                                            local.get 1
                                            local.get 1
                                            i32.const 15
                                            i32.and
                                            i32.const 3
                                            i32.eq
                                            select
                                            local.get 1
                                            local.get 8
                                            select
                                            local.tee 1
                                            i32.const -88
                                            i32.add
                                            local.tee 14
                                            i32.const 32
                                            i32.le_u
                                            br_if 1 (;@19;)
                                            block  ;; label = @21
                                              block (result i32)  ;; label = @22
                                                block  ;; label = @23
                                                  block  ;; label = @24
                                                    local.get 1
                                                    i32.const -65
                                                    i32.add
                                                    local.tee 8
                                                    i32.const 6
                                                    i32.gt_u
                                                    if  ;; label = @25
                                                      local.get 1
                                                      i32.const 83
                                                      i32.ne
                                                      br_if 20 (;@5;)
                                                      local.get 9
                                                      i32.eqz
                                                      br_if 1 (;@24;)
                                                      local.get 5
                                                      i32.load offset=64
                                                      br 3 (;@22;)
                                                    end
                                                    local.get 8
                                                    i32.const 1
                                                    i32.sub
                                                    br_table 19 (;@5;) 1 (;@23;) 19 (;@5;) 8 (;@16;)
                                                  end
                                                  i32.const 0
                                                  local.set 1
                                                  local.get 0
                                                  i32.const 32
                                                  local.get 12
                                                  i32.const 0
                                                  local.get 6
                                                  call $pad
                                                  br 2 (;@21;)
                                                end
                                                local.get 5
                                                i32.const 0
                                                i32.store offset=12
                                                local.get 5
                                                local.get 5
                                                i64.load offset=64
                                                i64.store32 offset=8
                                                local.get 5
                                                local.get 5
                                                i32.const 8
                                                i32.add
                                                i32.store offset=64
                                                i32.const -1
                                                local.set 9
                                                local.get 5
                                                i32.const 8
                                                i32.add
                                              end
                                              local.set 7
                                              i32.const 0
                                              local.set 1
                                              block  ;; label = @22
                                                loop  ;; label = @23
                                                  local.get 7
                                                  i32.load
                                                  local.tee 8
                                                  i32.eqz
                                                  br_if 1 (;@22;)
                                                  block  ;; label = @24
                                                    local.get 5
                                                    i32.const 4
                                                    i32.add
                                                    local.get 8
                                                    call $wctomb
                                                    local.tee 8
                                                    i32.const 0
                                                    i32.lt_s
                                                    local.tee 10
                                                    br_if 0 (;@24;)
                                                    local.get 8
                                                    local.get 9
                                                    local.get 1
                                                    i32.sub
                                                    i32.gt_u
                                                    br_if 0 (;@24;)
                                                    local.get 7
                                                    i32.const 4
                                                    i32.add
                                                    local.set 7
                                                    local.get 9
                                                    local.get 1
                                                    local.get 8
                                                    i32.add
                                                    local.tee 1
                                                    i32.gt_u
                                                    br_if 1 (;@23;)
                                                    br 2 (;@22;)
                                                  end
                                                end
                                                i32.const -1
                                                local.set 11
                                                local.get 10
                                                br_if 21 (;@1;)
                                              end
                                              local.get 0
                                              i32.const 32
                                              local.get 12
                                              local.get 1
                                              local.get 6
                                              call $pad
                                              local.get 1
                                              i32.eqz
                                              if  ;; label = @22
                                                i32.const 0
                                                local.set 1
                                                br 1 (;@21;)
                                              end
                                              i32.const 0
                                              local.set 8
                                              local.get 5
                                              i32.load offset=64
                                              local.set 7
                                              loop  ;; label = @22
                                                local.get 7
                                                i32.load
                                                local.tee 10
                                                i32.eqz
                                                br_if 1 (;@21;)
                                                local.get 5
                                                i32.const 4
                                                i32.add
                                                local.get 10
                                                call $wctomb
                                                local.tee 10
                                                local.get 8
                                                i32.add
                                                local.tee 8
                                                local.get 1
                                                i32.gt_s
                                                br_if 1 (;@21;)
                                                local.get 0
                                                local.get 5
                                                i32.const 4
                                                i32.add
                                                local.get 10
                                                call $out
                                                local.get 7
                                                i32.const 4
                                                i32.add
                                                local.set 7
                                                local.get 8
                                                local.get 1
                                                i32.lt_u
                                                br_if 0 (;@22;)
                                              end
                                            end
                                            local.get 0
                                            i32.const 32
                                            local.get 12
                                            local.get 1
                                            local.get 6
                                            i32.const 8192
                                            i32.xor
                                            call $pad
                                            local.get 12
                                            local.get 1
                                            local.get 12
                                            local.get 1
                                            i32.gt_s
                                            select
                                            local.set 1
                                            br 17 (;@3;)
                                          end
                                          local.get 5
                                          local.get 1
                                          i32.const 1
                                          i32.add
                                          local.tee 7
                                          i32.store offset=76
                                          local.get 1
                                          i32.load8_u offset=1
                                          local.set 6
                                          local.get 7
                                          local.set 1
                                          br 1 (;@18;)
                                        end
                                      end
                                      local.get 14
                                      i32.const 1
                                      i32.sub
                                      br_table 12 (;@5;) 12 (;@5;) 12 (;@5;) 12 (;@5;) 12 (;@5;) 12 (;@5;) 12 (;@5;) 12 (;@5;) 1 (;@16;) 12 (;@5;) 3 (;@14;) 4 (;@13;) 1 (;@16;) 1 (;@16;) 1 (;@16;) 12 (;@5;) 4 (;@13;) 12 (;@5;) 12 (;@5;) 12 (;@5;) 12 (;@5;) 8 (;@9;) 5 (;@12;) 6 (;@11;) 12 (;@5;) 12 (;@5;) 2 (;@15;) 12 (;@5;) 9 (;@8;) 12 (;@5;) 12 (;@5;) 7 (;@10;)
                                    end
                                    local.get 13
                                    local.set 11
                                    local.get 0
                                    br_if 15 (;@1;)
                                    local.get 17
                                    i32.eqz
                                    br_if 12 (;@4;)
                                    i32.const 1
                                    local.set 1
                                    loop  ;; label = @17
                                      local.get 4
                                      local.get 1
                                      i32.const 2
                                      i32.shl
                                      i32.add
                                      i32.load
                                      local.tee 6
                                      if  ;; label = @18
                                        local.get 3
                                        local.get 1
                                        i32.const 3
                                        i32.shl
                                        i32.add
                                        local.get 6
                                        local.get 2
                                        call $pop_arg
                                        i32.const 1
                                        local.set 11
                                        local.get 1
                                        i32.const 1
                                        i32.add
                                        local.tee 1
                                        i32.const 10
                                        i32.ne
                                        br_if 1 (;@17;)
                                        br 17 (;@1;)
                                      end
                                    end
                                    i32.const 1
                                    local.set 11
                                    local.get 1
                                    i32.const 9
                                    i32.gt_u
                                    br_if 15 (;@1;)
                                    i32.const -1
                                    local.set 11
                                    local.get 4
                                    local.get 1
                                    i32.const 2
                                    i32.shl
                                    i32.add
                                    i32.load
                                    br_if 15 (;@1;)
                                    loop  ;; label = @17
                                      local.get 1
                                      i32.const 1
                                      i32.add
                                      local.tee 1
                                      i32.const 10
                                      i32.ne
                                      if  ;; label = @18
                                        local.get 4
                                        local.get 1
                                        i32.const 2
                                        i32.shl
                                        i32.add
                                        i32.load
                                        i32.eqz
                                        br_if 1 (;@17;)
                                      end
                                    end
                                    i32.const -1
                                    i32.const 1
                                    local.get 1
                                    i32.const 10
                                    i32.lt_u
                                    select
                                    local.set 11
                                    br 15 (;@1;)
                                  end
                                  local.get 0
                                  local.get 5
                                  f64.load offset=64
                                  local.get 12
                                  local.get 9
                                  local.get 6
                                  local.get 1
                                  i32.const 0
                                  call_indirect (type 1)
                                  local.set 1
                                  br 12 (;@3;)
                                end
                                local.get 5
                                i32.load offset=64
                                local.tee 1
                                i32.const 1134
                                local.get 1
                                select
                                local.tee 10
                                local.get 9
                                call $memchr
                                local.tee 1
                                local.get 9
                                local.get 10
                                i32.add
                                local.get 1
                                select
                                local.set 7
                                local.get 18
                                local.set 6
                                local.get 1
                                local.get 10
                                i32.sub
                                local.get 9
                                local.get 1
                                select
                                local.set 9
                                br 9 (;@5;)
                              end
                              local.get 5
                              local.get 5
                              i64.load offset=64
                              i64.store8 offset=55
                              i32.const 1
                              local.set 9
                              local.get 19
                              local.set 10
                              local.get 18
                              local.set 6
                              br 8 (;@5;)
                            end
                            local.get 5
                            i64.load offset=64
                            local.tee 20
                            i64.const -1
                            i64.le_s
                            if  ;; label = @13
                              local.get 5
                              i64.const 0
                              local.get 20
                              i64.sub
                              local.tee 20
                              i64.store offset=64
                              i32.const 1
                              local.set 11
                              i32.const 1124
                              br 6 (;@7;)
                            end
                            local.get 6
                            i32.const 2048
                            i32.and
                            if  ;; label = @13
                              i32.const 1
                              local.set 11
                              i32.const 1125
                              br 6 (;@7;)
                            end
                            i32.const 1126
                            i32.const 1124
                            local.get 6
                            i32.const 1
                            i32.and
                            local.tee 11
                            select
                            br 5 (;@7;)
                          end
                          local.get 5
                          i64.load offset=64
                          local.get 16
                          call $fmt_o
                          local.set 10
                          local.get 6
                          i32.const 8
                          i32.and
                          i32.eqz
                          br_if 5 (;@6;)
                          local.get 9
                          local.get 16
                          local.get 10
                          i32.sub
                          local.tee 1
                          i32.const 1
                          i32.add
                          local.get 9
                          local.get 1
                          i32.gt_s
                          select
                          local.set 9
                          br 5 (;@6;)
                        end
                        local.get 9
                        i32.const 8
                        local.get 9
                        i32.const 8
                        i32.gt_u
                        select
                        local.set 9
                        local.get 6
                        i32.const 8
                        i32.or
                        local.set 6
                        i32.const 120
                        local.set 1
                      end
                      local.get 5
                      i64.load offset=64
                      local.get 16
                      local.get 1
                      i32.const 32
                      i32.and
                      call $fmt_x
                      local.set 10
                      local.get 6
                      i32.const 8
                      i32.and
                      i32.eqz
                      br_if 3 (;@6;)
                      local.get 5
                      i64.load offset=64
                      i64.eqz
                      br_if 3 (;@6;)
                      local.get 1
                      i32.const 4
                      i32.shr_u
                      i32.const 1124
                      i32.add
                      local.set 15
                      i32.const 2
                      local.set 11
                      br 3 (;@6;)
                    end
                    i32.const 0
                    local.set 1
                    local.get 8
                    i32.const 255
                    i32.and
                    local.tee 6
                    i32.const 7
                    i32.gt_u
                    br_if 5 (;@3;)
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                block  ;; label = @15
                                  local.get 6
                                  i32.const 1
                                  i32.sub
                                  br_table 1 (;@14;) 2 (;@13;) 3 (;@12;) 4 (;@11;) 12 (;@3;) 5 (;@10;) 6 (;@9;) 0 (;@15;)
                                end
                                local.get 5
                                i32.load offset=64
                                local.get 13
                                i32.store
                                br 11 (;@3;)
                              end
                              local.get 5
                              i32.load offset=64
                              local.get 13
                              i32.store
                              br 10 (;@3;)
                            end
                            local.get 5
                            i32.load offset=64
                            local.get 13
                            i64.extend_i32_s
                            i64.store
                            br 9 (;@3;)
                          end
                          local.get 5
                          i32.load offset=64
                          local.get 13
                          i32.store16
                          br 8 (;@3;)
                        end
                        local.get 5
                        i32.load offset=64
                        local.get 13
                        i32.store8
                        br 7 (;@3;)
                      end
                      local.get 5
                      i32.load offset=64
                      local.get 13
                      i32.store
                      br 6 (;@3;)
                    end
                    local.get 5
                    i32.load offset=64
                    local.get 13
                    i64.extend_i32_s
                    i64.store
                    br 5 (;@3;)
                  end
                  local.get 5
                  i64.load offset=64
                  local.set 20
                  i32.const 1124
                end
                local.set 15
                local.get 20
                local.get 16
                call $fmt_u
                local.set 10
              end
              local.get 6
              i32.const -65537
              i32.and
              local.get 6
              local.get 9
              i32.const -1
              i32.gt_s
              select
              local.set 6
              local.get 5
              i64.load offset=64
              local.set 20
              block (result i32)  ;; label = @6
                block  ;; label = @7
                  local.get 9
                  br_if 0 (;@7;)
                  local.get 20
                  i64.eqz
                  i32.eqz
                  br_if 0 (;@7;)
                  local.get 16
                  local.set 10
                  i32.const 0
                  br 1 (;@6;)
                end
                local.get 9
                local.get 20
                i64.eqz
                local.get 16
                local.get 10
                i32.sub
                i32.add
                local.tee 1
                local.get 9
                local.get 1
                i32.gt_s
                select
              end
              local.set 9
            end
            local.get 0
            i32.const 32
            local.get 11
            local.get 7
            local.get 10
            i32.sub
            local.tee 8
            local.get 9
            local.get 9
            local.get 8
            i32.lt_s
            select
            local.tee 14
            i32.add
            local.tee 7
            local.get 12
            local.get 12
            local.get 7
            i32.lt_s
            select
            local.tee 1
            local.get 7
            local.get 6
            call $pad
            local.get 0
            local.get 15
            local.get 11
            call $out
            local.get 0
            i32.const 48
            local.get 1
            local.get 7
            local.get 6
            i32.const 65536
            i32.xor
            call $pad
            local.get 0
            i32.const 48
            local.get 14
            local.get 8
            i32.const 0
            call $pad
            local.get 0
            local.get 10
            local.get 8
            call $out
            local.get 0
            i32.const 32
            local.get 1
            local.get 7
            local.get 6
            i32.const 8192
            i32.xor
            call $pad
            br 1 (;@3;)
          end
        end
        i32.const 0
        local.set 11
        br 1 (;@1;)
      end
      i32.const -1
      local.set 11
    end
    local.get 5
    i32.const 80
    i32.add
    global.set 0
    local.get 11)
  (func $out (type 10) (param i32 i32 i32)
    local.get 0
    i32.load8_u
    i32.const 32
    i32.and
    i32.eqz
    if  ;; label = @1
      local.get 1
      local.get 2
      local.get 0
      call $__fwritex
      drop
    end)
  (func $getint (type 5) (param i32) (result i32)
    (local i32 i32 i32)
    local.get 0
    i32.load
    i32.load8_s
    call $isdigit
    if  ;; label = @1
      loop  ;; label = @2
        local.get 0
        i32.load
        local.tee 2
        i32.load8_s
        local.set 3
        local.get 0
        local.get 2
        i32.const 1
        i32.add
        i32.store
        local.get 3
        local.get 1
        i32.const 10
        i32.mul
        i32.add
        i32.const -48
        i32.add
        local.set 1
        local.get 2
        i32.load8_s offset=1
        call $isdigit
        br_if 0 (;@2;)
      end
    end
    local.get 1)
  (func $pop_arg (type 19) (param i32 i32 i32)
    block  ;; label = @1
      local.get 1
      i32.const 20
      i32.gt_u
      br_if 0 (;@1;)
      local.get 1
      i32.const -9
      i32.add
      local.tee 1
      i32.const 9
      i32.gt_u
      br_if 0 (;@1;)
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          local.get 1
                          i32.const 1
                          i32.sub
                          br_table 1 (;@10;) 2 (;@9;) 3 (;@8;) 4 (;@7;) 5 (;@6;) 6 (;@5;) 7 (;@4;) 8 (;@3;) 9 (;@2;) 0 (;@11;)
                        end
                        local.get 2
                        local.get 2
                        i32.load
                        local.tee 1
                        i32.const 4
                        i32.add
                        i32.store
                        local.get 0
                        local.get 1
                        i32.load
                        i32.store
                        return
                      end
                      local.get 2
                      local.get 2
                      i32.load
                      local.tee 1
                      i32.const 4
                      i32.add
                      i32.store
                      local.get 0
                      local.get 1
                      i64.load32_s
                      i64.store
                      return
                    end
                    local.get 2
                    local.get 2
                    i32.load
                    local.tee 1
                    i32.const 4
                    i32.add
                    i32.store
                    local.get 0
                    local.get 1
                    i64.load32_u
                    i64.store
                    return
                  end
                  local.get 2
                  local.get 2
                  i32.load
                  i32.const 7
                  i32.add
                  i32.const -8
                  i32.and
                  local.tee 1
                  i32.const 8
                  i32.add
                  i32.store
                  local.get 0
                  local.get 1
                  i64.load
                  i64.store
                  return
                end
                local.get 2
                local.get 2
                i32.load
                local.tee 1
                i32.const 4
                i32.add
                i32.store
                local.get 0
                local.get 1
                i64.load16_s
                i64.store
                return
              end
              local.get 2
              local.get 2
              i32.load
              local.tee 1
              i32.const 4
              i32.add
              i32.store
              local.get 0
              local.get 1
              i64.load16_u
              i64.store
              return
            end
            local.get 2
            local.get 2
            i32.load
            local.tee 1
            i32.const 4
            i32.add
            i32.store
            local.get 0
            local.get 1
            i64.load8_s
            i64.store
            return
          end
          local.get 2
          local.get 2
          i32.load
          local.tee 1
          i32.const 4
          i32.add
          i32.store
          local.get 0
          local.get 1
          i64.load8_u
          i64.store
          return
        end
        local.get 2
        local.get 2
        i32.load
        i32.const 7
        i32.add
        i32.const -8
        i32.and
        local.tee 1
        i32.const 8
        i32.add
        i32.store
        local.get 0
        local.get 1
        i64.load
        i64.store
        return
      end
      local.get 0
      local.get 2
      i32.const 0
      call_indirect (type 2)
    end)
  (func $pad (type 11) (param i32 i32 i32 i32 i32)
    (local i32)
    global.get 0
    i32.const 256
    i32.sub
    local.tee 5
    global.set 0
    block  ;; label = @1
      local.get 2
      local.get 3
      i32.le_s
      br_if 0 (;@1;)
      local.get 4
      i32.const 73728
      i32.and
      br_if 0 (;@1;)
      local.get 5
      local.get 1
      local.get 2
      local.get 3
      i32.sub
      local.tee 4
      i32.const 256
      local.get 4
      i32.const 256
      i32.lt_u
      local.tee 1
      select
      call $memset
      local.get 0
      local.get 5
      local.get 1
      if (result i32)  ;; label = @2
        local.get 4
      else
        local.get 2
        local.get 3
        i32.sub
        local.set 2
        loop  ;; label = @3
          local.get 0
          local.get 5
          i32.const 256
          call $out
          local.get 4
          i32.const -256
          i32.add
          local.tee 4
          i32.const 255
          i32.gt_u
          br_if 0 (;@3;)
        end
        local.get 2
        i32.const 255
        i32.and
      end
      call $out
    end
    local.get 5
    i32.const 256
    i32.add
    global.set 0)
  (func $fmt_o (type 12) (param i64 i32) (result i32)
    local.get 0
    i64.eqz
    i32.eqz
    if  ;; label = @1
      loop  ;; label = @2
        local.get 1
        i32.const -1
        i32.add
        local.tee 1
        local.get 0
        i32.wrap_i64
        i32.const 7
        i32.and
        i32.const 48
        i32.or
        i32.store8
        local.get 0
        i64.const 3
        i64.shr_u
        local.tee 0
        i64.const 0
        i64.ne
        br_if 0 (;@2;)
      end
    end
    local.get 1)
  (func $fmt_x (type 13) (param i64 i32 i32) (result i32)
    local.get 0
    i64.eqz
    i32.eqz
    if  ;; label = @1
      loop  ;; label = @2
        local.get 1
        i32.const -1
        i32.add
        local.tee 1
        local.get 0
        i32.wrap_i64
        i32.const 15
        i32.and
        i32.const 1616
        i32.add
        i32.load8_u
        local.get 2
        i32.or
        i32.store8
        local.get 0
        i64.const 4
        i64.shr_u
        local.tee 0
        i64.const 0
        i64.ne
        br_if 0 (;@2;)
      end
    end
    local.get 1)
  (func $fmt_u (type 12) (param i64 i32) (result i32)
    (local i32 i32 i32 i64)
    block  ;; label = @1
      local.get 0
      i64.const 4294967296
      i64.lt_u
      if  ;; label = @2
        local.get 0
        local.set 5
        br 1 (;@1;)
      end
      loop  ;; label = @2
        local.get 1
        i32.const -1
        i32.add
        local.tee 1
        local.get 0
        local.get 0
        i64.const 10
        i64.div_u
        local.tee 5
        i64.const 10
        i64.mul
        i64.sub
        i32.wrap_i64
        i32.const 48
        i32.or
        i32.store8
        local.get 0
        i64.const 42949672959
        i64.gt_u
        local.set 2
        local.get 5
        local.set 0
        local.get 2
        br_if 0 (;@2;)
      end
    end
    local.get 5
    i32.wrap_i64
    local.tee 2
    if  ;; label = @1
      loop  ;; label = @2
        local.get 1
        i32.const -1
        i32.add
        local.tee 1
        local.get 2
        local.get 2
        i32.const 10
        i32.div_u
        local.tee 3
        i32.const 10
        i32.mul
        i32.sub
        i32.const 48
        i32.or
        i32.store8
        local.get 2
        i32.const 9
        i32.gt_u
        local.set 4
        local.get 3
        local.set 2
        local.get 4
        br_if 0 (;@2;)
      end
    end
    local.get 1)
  (func $iprintf (type 21) (param i32 i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    local.get 1
    i32.store offset=12
    i32.const 1120
    i32.load
    local.get 0
    local.get 1
    call $__vfprintf_internal
    local.get 2
    i32.const 16
    i32.add
    global.set 0)
  (func $isdigit (type 5) (param i32) (result i32)
    local.get 0
    i32.const -48
    i32.add
    i32.const 10
    i32.lt_u)
  (func $strlen (type 22) (result i32)
    (local i32 i32 i32)
    i32.const 1105
    local.set 0
    block  ;; label = @1
      i32.const 1105
      i32.load8_u
      i32.eqz
      br_if 0 (;@1;)
      block  ;; label = @2
        loop  ;; label = @3
          local.get 0
          i32.const 1
          i32.add
          local.tee 0
          i32.const 3
          i32.and
          i32.eqz
          br_if 1 (;@2;)
          local.get 0
          i32.load8_u
          br_if 0 (;@3;)
        end
        br 1 (;@1;)
      end
      loop  ;; label = @2
        local.get 0
        local.tee 1
        i32.const 4
        i32.add
        local.set 0
        local.get 1
        i32.load
        local.tee 2
        i32.const -1
        i32.xor
        local.get 2
        i32.const -16843009
        i32.add
        i32.and
        i32.const -2139062144
        i32.and
        i32.eqz
        br_if 0 (;@2;)
      end
      local.get 2
      i32.const 255
      i32.and
      i32.eqz
      if  ;; label = @2
        local.get 1
        local.set 0
        br 1 (;@1;)
      end
      loop  ;; label = @2
        local.get 1
        i32.load8_u offset=1
        local.set 2
        local.get 1
        i32.const 1
        i32.add
        local.tee 0
        local.set 1
        local.get 2
        br_if 0 (;@2;)
      end
    end
    local.get 0
    i32.const 1105
    i32.sub)
  (func $memchr (type 18) (param i32 i32) (result i32)
    (local i32 i32 i32)
    local.get 1
    i32.const 0
    i32.ne
    local.set 2
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 1
            i32.eqz
            br_if 0 (;@4;)
            local.get 0
            i32.const 3
            i32.and
            i32.eqz
            br_if 0 (;@4;)
            loop  ;; label = @5
              local.get 0
              i32.load8_u
              i32.eqz
              br_if 2 (;@3;)
              local.get 0
              i32.const 1
              i32.add
              local.set 0
              local.get 1
              i32.const -1
              i32.add
              local.tee 1
              i32.const 0
              i32.ne
              local.set 2
              local.get 1
              i32.eqz
              br_if 1 (;@4;)
              local.get 0
              i32.const 3
              i32.and
              br_if 0 (;@5;)
            end
          end
          local.get 2
          i32.eqz
          br_if 1 (;@2;)
        end
        local.get 0
        i32.load8_u
        i32.eqz
        br_if 1 (;@1;)
        block  ;; label = @3
          local.get 1
          i32.const 4
          i32.ge_u
          if  ;; label = @4
            local.get 1
            i32.const -4
            i32.add
            local.tee 2
            local.get 2
            i32.const -4
            i32.and
            local.tee 2
            i32.sub
            local.set 3
            local.get 0
            local.get 2
            i32.add
            i32.const 4
            i32.add
            local.set 4
            loop  ;; label = @5
              local.get 0
              i32.load
              local.tee 2
              i32.const -1
              i32.xor
              local.get 2
              i32.const -16843009
              i32.add
              i32.and
              i32.const -2139062144
              i32.and
              br_if 2 (;@3;)
              local.get 0
              i32.const 4
              i32.add
              local.set 0
              local.get 1
              i32.const -4
              i32.add
              local.tee 1
              i32.const 3
              i32.gt_u
              br_if 0 (;@5;)
            end
            local.get 3
            local.set 1
            local.get 4
            local.set 0
          end
          local.get 1
          i32.eqz
          br_if 1 (;@2;)
        end
        loop  ;; label = @3
          local.get 0
          i32.load8_u
          i32.eqz
          br_if 2 (;@1;)
          local.get 0
          i32.const 1
          i32.add
          local.set 0
          local.get 1
          i32.const -1
          i32.add
          local.tee 1
          br_if 0 (;@3;)
        end
      end
      i32.const 0
      return
    end
    local.get 0)
  (func $__stpcpy (type 21) (param i32 i32)
    (local i32)
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        local.get 1
        i32.xor
        i32.const 3
        i32.and
        br_if 0 (;@2;)
        local.get 1
        i32.const 3
        i32.and
        if  ;; label = @3
          loop  ;; label = @4
            local.get 0
            local.get 1
            i32.load8_u
            local.tee 2
            i32.store8
            local.get 2
            i32.eqz
            br_if 3 (;@1;)
            local.get 0
            i32.const 1
            i32.add
            local.set 0
            local.get 1
            i32.const 1
            i32.add
            local.tee 1
            i32.const 3
            i32.and
            br_if 0 (;@4;)
          end
        end
        local.get 1
        i32.load
        local.tee 2
        i32.const -1
        i32.xor
        local.get 2
        i32.const -16843009
        i32.add
        i32.and
        i32.const -2139062144
        i32.and
        br_if 0 (;@2;)
        loop  ;; label = @3
          local.get 0
          local.get 2
          i32.store
          local.get 1
          i32.load offset=4
          local.set 2
          local.get 0
          i32.const 4
          i32.add
          local.set 0
          local.get 1
          i32.const 4
          i32.add
          local.set 1
          local.get 2
          i32.const -16843009
          i32.add
          local.get 2
          i32.const -1
          i32.xor
          i32.and
          i32.const -2139062144
          i32.and
          i32.eqz
          br_if 0 (;@3;)
        end
      end
      local.get 0
      local.get 1
      i32.load8_u
      local.tee 2
      i32.store8
      local.get 2
      i32.eqz
      br_if 0 (;@1;)
      loop  ;; label = @2
        local.get 0
        local.get 1
        i32.load8_u offset=1
        local.tee 2
        i32.store8 offset=1
        local.get 0
        i32.const 1
        i32.add
        local.set 0
        local.get 1
        i32.const 1
        i32.add
        local.set 1
        local.get 2
        br_if 0 (;@2;)
      end
    end)
  (func $wctomb (type 8) (param i32 i32) (result i32)
    local.get 0
    i32.eqz
    if  ;; label = @1
      i32.const 0
      return
    end
    local.get 0
    local.get 1
    call $wcrtomb)
  (func $wcrtomb (type 18) (param i32 i32) (result i32)
    block  ;; label = @1
      local.get 0
      if (result i32)  ;; label = @2
        local.get 1
        i32.const 127
        i32.le_u
        br_if 1 (;@1;)
        block  ;; label = @3
          i32.const 2580
          i32.load
          i32.load
          i32.eqz
          if  ;; label = @4
            local.get 1
            i32.const -128
            i32.and
            i32.const 57216
            i32.eq
            br_if 3 (;@1;)
            i32.const 3672
            i32.const 25
            i32.store
            br 1 (;@3;)
          end
          local.get 1
          i32.const 2047
          i32.le_u
          if  ;; label = @4
            local.get 0
            local.get 1
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=1
            local.get 0
            local.get 1
            i32.const 6
            i32.shr_u
            i32.const 192
            i32.or
            i32.store8
            i32.const 2
            return
          end
          local.get 1
          i32.const 55296
          i32.ge_u
          i32.const 0
          local.get 1
          i32.const -8192
          i32.and
          i32.const 57344
          i32.ne
          select
          i32.eqz
          if  ;; label = @4
            local.get 0
            local.get 1
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=2
            local.get 0
            local.get 1
            i32.const 12
            i32.shr_u
            i32.const 224
            i32.or
            i32.store8
            local.get 0
            local.get 1
            i32.const 6
            i32.shr_u
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=1
            i32.const 3
            return
          end
          local.get 1
          i32.const -65536
          i32.add
          i32.const 1048575
          i32.le_u
          if  ;; label = @4
            local.get 0
            local.get 1
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=3
            local.get 0
            local.get 1
            i32.const 18
            i32.shr_u
            i32.const 240
            i32.or
            i32.store8
            local.get 0
            local.get 1
            i32.const 6
            i32.shr_u
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=2
            local.get 0
            local.get 1
            i32.const 12
            i32.shr_u
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=1
            i32.const 4
            return
          end
          i32.const 3672
          i32.const 25
          i32.store
        end
        i32.const -1
      else
        i32.const 1
      end
      return
    end
    local.get 0
    local.get 1
    i32.store8
    i32.const 1)
  (func $__errno_location (type 4) (result i32)
    i32.const 3672)
  (func $memcpy (type 19) (param i32 i32 i32)
    (local i32 i32)
    local.get 2
    i32.const 8192
    i32.ge_u
    if  ;; label = @1
      local.get 0
      local.get 1
      local.get 2
      call $emscripten_memcpy_big
      drop
      return
    end
    local.get 0
    local.get 2
    i32.add
    local.set 3
    block  ;; label = @1
      local.get 0
      local.get 1
      i32.xor
      i32.const 3
      i32.and
      i32.eqz
      if  ;; label = @2
        block  ;; label = @3
          local.get 2
          i32.const 1
          i32.lt_s
          if  ;; label = @4
            local.get 0
            local.set 2
            br 1 (;@3;)
          end
          local.get 0
          i32.const 3
          i32.and
          i32.eqz
          if  ;; label = @4
            local.get 0
            local.set 2
            br 1 (;@3;)
          end
          local.get 0
          local.set 2
          loop  ;; label = @4
            local.get 2
            local.get 1
            i32.load8_u
            i32.store8
            local.get 1
            i32.const 1
            i32.add
            local.set 1
            local.get 2
            i32.const 1
            i32.add
            local.tee 2
            local.get 3
            i32.ge_u
            br_if 1 (;@3;)
            local.get 2
            i32.const 3
            i32.and
            br_if 0 (;@4;)
          end
        end
        block  ;; label = @3
          local.get 3
          i32.const -4
          i32.and
          local.tee 4
          i32.const 64
          i32.lt_u
          br_if 0 (;@3;)
          local.get 2
          local.get 4
          i32.const -64
          i32.add
          local.tee 0
          i32.gt_u
          br_if 0 (;@3;)
          loop  ;; label = @4
            local.get 2
            local.get 1
            i32.load
            i32.store
            local.get 2
            local.get 1
            i32.load offset=4
            i32.store offset=4
            local.get 2
            local.get 1
            i32.load offset=8
            i32.store offset=8
            local.get 2
            local.get 1
            i32.load offset=12
            i32.store offset=12
            local.get 2
            local.get 1
            i32.load offset=16
            i32.store offset=16
            local.get 2
            local.get 1
            i32.load offset=20
            i32.store offset=20
            local.get 2
            local.get 1
            i32.load offset=24
            i32.store offset=24
            local.get 2
            local.get 1
            i32.load offset=28
            i32.store offset=28
            local.get 2
            local.get 1
            i32.load offset=32
            i32.store offset=32
            local.get 2
            local.get 1
            i32.load offset=36
            i32.store offset=36
            local.get 2
            local.get 1
            i32.load offset=40
            i32.store offset=40
            local.get 2
            local.get 1
            i32.load offset=44
            i32.store offset=44
            local.get 2
            local.get 1
            i32.load offset=48
            i32.store offset=48
            local.get 2
            local.get 1
            i32.load offset=52
            i32.store offset=52
            local.get 2
            local.get 1
            i32.load offset=56
            i32.store offset=56
            local.get 2
            local.get 1
            i32.load offset=60
            i32.store offset=60
            local.get 1
            i32.const -64
            i32.sub
            local.set 1
            local.get 2
            i32.const -64
            i32.sub
            local.tee 2
            local.get 0
            i32.le_u
            br_if 0 (;@4;)
          end
        end
        local.get 2
        local.get 4
        i32.ge_u
        br_if 1 (;@1;)
        loop  ;; label = @3
          local.get 2
          local.get 1
          i32.load
          i32.store
          local.get 1
          i32.const 4
          i32.add
          local.set 1
          local.get 2
          i32.const 4
          i32.add
          local.tee 2
          local.get 4
          i32.lt_u
          br_if 0 (;@3;)
        end
        br 1 (;@1;)
      end
      local.get 3
      i32.const 4
      i32.lt_u
      if  ;; label = @2
        local.get 0
        local.set 2
        br 1 (;@1;)
      end
      local.get 3
      i32.const -4
      i32.add
      local.tee 4
      local.get 0
      i32.lt_u
      if  ;; label = @2
        local.get 0
        local.set 2
        br 1 (;@1;)
      end
      local.get 0
      local.set 2
      loop  ;; label = @2
        local.get 2
        local.get 1
        i32.load8_u
        i32.store8
        local.get 2
        local.get 1
        i32.load8_u offset=1
        i32.store8 offset=1
        local.get 2
        local.get 1
        i32.load8_u offset=2
        i32.store8 offset=2
        local.get 2
        local.get 1
        i32.load8_u offset=3
        i32.store8 offset=3
        local.get 1
        i32.const 4
        i32.add
        local.set 1
        local.get 2
        i32.const 4
        i32.add
        local.tee 2
        local.get 4
        i32.le_u
        br_if 0 (;@2;)
      end
    end
    local.get 2
    local.get 3
    i32.lt_u
    if  ;; label = @1
      loop  ;; label = @2
        local.get 2
        local.get 1
        i32.load8_u
        i32.store8
        local.get 1
        i32.const 1
        i32.add
        local.set 1
        local.get 2
        i32.const 1
        i32.add
        local.tee 2
        local.get 3
        i32.ne
        br_if 0 (;@2;)
      end
    end)
  (func $memset (type 19) (param i32 i32 i32)
    (local i32 i32 i64)
    block  ;; label = @1
      local.get 2
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      local.get 2
      i32.add
      local.tee 3
      i32.const -1
      i32.add
      local.get 1
      i32.store8
      local.get 0
      local.get 1
      i32.store8
      local.get 2
      i32.const 3
      i32.lt_u
      br_if 0 (;@1;)
      local.get 3
      i32.const -2
      i32.add
      local.get 1
      i32.store8
      local.get 0
      local.get 1
      i32.store8 offset=1
      local.get 3
      i32.const -3
      i32.add
      local.get 1
      i32.store8
      local.get 0
      local.get 1
      i32.store8 offset=2
      local.get 2
      i32.const 7
      i32.lt_u
      br_if 0 (;@1;)
      local.get 3
      i32.const -4
      i32.add
      local.get 1
      i32.store8
      local.get 0
      local.get 1
      i32.store8 offset=3
      local.get 2
      i32.const 9
      i32.lt_u
      br_if 0 (;@1;)
      local.get 0
      i32.const 0
      local.get 0
      i32.sub
      i32.const 3
      i32.and
      local.tee 4
      i32.add
      local.tee 3
      local.get 1
      i32.const 255
      i32.and
      i32.const 16843009
      i32.mul
      local.tee 1
      i32.store
      local.get 3
      local.get 2
      local.get 4
      i32.sub
      i32.const -4
      i32.and
      local.tee 4
      i32.add
      local.tee 2
      i32.const -4
      i32.add
      local.get 1
      i32.store
      local.get 4
      i32.const 9
      i32.lt_u
      br_if 0 (;@1;)
      local.get 3
      local.get 1
      i32.store offset=8
      local.get 3
      local.get 1
      i32.store offset=4
      local.get 2
      i32.const -8
      i32.add
      local.get 1
      i32.store
      local.get 2
      i32.const -12
      i32.add
      local.get 1
      i32.store
      local.get 4
      i32.const 25
      i32.lt_u
      br_if 0 (;@1;)
      local.get 3
      local.get 1
      i32.store offset=24
      local.get 3
      local.get 1
      i32.store offset=20
      local.get 3
      local.get 1
      i32.store offset=16
      local.get 3
      local.get 1
      i32.store offset=12
      local.get 2
      i32.const -16
      i32.add
      local.get 1
      i32.store
      local.get 2
      i32.const -20
      i32.add
      local.get 1
      i32.store
      local.get 2
      i32.const -24
      i32.add
      local.get 1
      i32.store
      local.get 2
      i32.const -28
      i32.add
      local.get 1
      i32.store
      local.get 4
      local.get 3
      i32.const 4
      i32.and
      i32.const 24
      i32.or
      local.tee 4
      i32.sub
      local.tee 2
      i32.const 32
      i32.lt_u
      br_if 0 (;@1;)
      local.get 1
      i64.extend_i32_u
      local.tee 5
      i64.const 32
      i64.shl
      local.get 5
      i64.or
      local.set 5
      local.get 3
      local.get 4
      i32.add
      local.set 1
      loop  ;; label = @2
        local.get 1
        local.get 5
        i64.store offset=24
        local.get 1
        local.get 5
        i64.store offset=16
        local.get 1
        local.get 5
        i64.store offset=8
        local.get 1
        local.get 5
        i64.store
        local.get 1
        i32.const 32
        i32.add
        local.set 1
        local.get 2
        i32.const -32
        i32.add
        local.tee 2
        i32.const 31
        i32.gt_u
        br_if 0 (;@2;)
      end
    end)
  (func $sbrk (type 5) (param i32) (result i32)
    (local i32 i32)
    memory.size
    local.set 1
    block  ;; label = @1
      i32.const 3888
      i32.load
      local.tee 2
      local.get 0
      i32.add
      local.tee 0
      local.get 1
      i32.const 16
      i32.shl
      i32.le_u
      br_if 0 (;@1;)
      local.get 0
      call $emscripten_resize_heap
      br_if 0 (;@1;)
      i32.const 3672
      i32.const 48
      i32.store
      i32.const -1
      return
    end
    i32.const 3888
    local.get 0
    i32.store
    local.get 2)
  (func $malloc (type 5) (param i32) (result i32)
    (local i32)
    block  ;; label = @1
      local.get 0
      i32.const 1
      local.get 0
      select
      local.tee 1
      call $tryFromFreeList_unsigned_long_
      local.tee 0
      br_if 0 (;@1;)
      local.get 1
      call $newAllocation_unsigned_long_
      local.tee 0
      br_if 0 (;@1;)
      i32.const 0
      return
    end
    block  ;; label = @1
      local.get 0
      local.get 0
      i32.load
      i32.const 1
      i32.shr_u
      i32.add
      i32.const 0
      call $sbrk
      i32.le_u
      if  ;; label = @2
        local.get 0
        i32.load8_u
        i32.const 1
        i32.and
        i32.eqz
        br_if 1 (;@1;)
        local.get 0
        i32.const 8
        i32.add
        return
      end
      i32.const 1632
      i32.const 1660
      i32.const 819
      i32.const 1773
      call $__assert_fail
      unreachable
    end
    i32.const 2227
    i32.const 1660
    i32.const 206
    i32.const 2216
    call $__assert_fail
    unreachable)
  (func $tryFromFreeList_unsigned_long_ (type 5) (param i32) (result i32)
    (local i32 i32 i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 0
              if  ;; label = @6
                i32.const 28
                local.get 0
                i32.const 8
                local.get 0
                i32.const 8
                i32.gt_u
                select
                i32.clz
                local.tee 1
                i32.sub
                i32.const 29
                i32.ge_u
                br_if 1 (;@5;)
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      i32.const 31
                      i32.const 32
                      local.get 0
                      i32.popcnt
                      i32.const 1
                      i32.eq
                      select
                      local.get 1
                      i32.sub
                      local.tee 1
                      i32.const 4
                      i32.lt_u
                      br_if 0 (;@9;)
                      local.get 0
                      local.get 1
                      i32.shr_u
                      br_if 0 (;@9;)
                      local.get 1
                      i32.const 2
                      i32.shl
                      i32.const 3740
                      i32.add
                      i32.load
                      local.tee 2
                      i32.eqz
                      br_if 0 (;@9;)
                      loop  ;; label = @10
                        local.get 2
                        i32.const -8
                        i32.add
                        local.tee 3
                        i32.load
                        i32.const 1
                        i32.shr_u
                        i32.const -8
                        i32.add
                        local.tee 4
                        local.get 0
                        i32.ge_u
                        if  ;; label = @11
                          local.get 4
                          i32.eqz
                          br_if 7 (;@4;)
                          i32.const 28
                          local.get 4
                          i32.const 8
                          local.get 4
                          i32.const 8
                          i32.gt_u
                          select
                          i32.clz
                          local.tee 1
                          i32.sub
                          i32.const 29
                          i32.ge_u
                          br_if 8 (;@3;)
                          local.get 2
                          i32.const 0
                          local.get 1
                          i32.sub
                          i32.const 2
                          i32.shl
                          i32.const 3868
                          i32.add
                          local.tee 1
                          i32.load
                          i32.eq
                          if  ;; label = @12
                            local.get 1
                            local.get 2
                            i32.load offset=4
                            i32.store
                          end
                          local.get 2
                          i32.load
                          local.tee 1
                          if  ;; label = @12
                            local.get 1
                            local.get 2
                            i32.load offset=4
                            i32.store offset=4
                          end
                          local.get 2
                          i32.load offset=4
                          local.tee 1
                          if  ;; label = @12
                            local.get 1
                            local.get 2
                            i32.load
                            i32.store
                          end
                          local.get 3
                          local.get 3
                          i32.load
                          i32.const 1
                          i32.or
                          i32.store
                          br 3 (;@8;)
                        end
                        local.get 5
                        i32.const 1
                        i32.add
                        local.tee 5
                        i32.const 31
                        i32.gt_u
                        br_if 1 (;@9;)
                        local.get 2
                        i32.load offset=4
                        local.tee 2
                        br_if 0 (;@10;)
                      end
                    end
                    i32.const 0
                    local.set 3
                    local.get 1
                    i32.const 32
                    i32.ge_u
                    br_if 1 (;@7;)
                    loop  ;; label = @9
                      local.get 1
                      i32.const 2
                      i32.shl
                      i32.const 3744
                      i32.add
                      i32.load
                      local.tee 2
                      i32.eqz
                      if  ;; label = @10
                        local.get 1
                        i32.const 1
                        i32.add
                        local.tee 1
                        i32.const 32
                        i32.ne
                        br_if 1 (;@9;)
                        br 3 (;@7;)
                      end
                    end
                    local.get 2
                    i32.const -8
                    i32.add
                    local.tee 3
                    i32.load
                    i32.const 1
                    i32.shr_u
                    i32.const -8
                    i32.add
                    local.tee 1
                    i32.eqz
                    br_if 6 (;@2;)
                    i32.const 28
                    local.get 1
                    i32.const 8
                    local.get 1
                    i32.const 8
                    i32.gt_u
                    select
                    i32.clz
                    local.tee 1
                    i32.sub
                    i32.const 29
                    i32.ge_u
                    br_if 7 (;@1;)
                    local.get 2
                    i32.const 0
                    local.get 1
                    i32.sub
                    i32.const 2
                    i32.shl
                    i32.const 3868
                    i32.add
                    local.tee 1
                    i32.load
                    i32.eq
                    if  ;; label = @9
                      local.get 1
                      local.get 2
                      i32.load offset=4
                      i32.store
                    end
                    local.get 2
                    i32.load
                    local.tee 1
                    if  ;; label = @9
                      local.get 1
                      local.get 2
                      i32.load offset=4
                      i32.store offset=4
                    end
                    local.get 2
                    i32.load offset=4
                    local.tee 1
                    if  ;; label = @9
                      local.get 1
                      local.get 2
                      i32.load
                      i32.store
                    end
                    local.get 3
                    local.get 3
                    i32.load
                    i32.const 1
                    i32.or
                    i32.store
                  end
                  local.get 3
                  local.get 0
                  call $possiblySplitRemainder_Region*__unsigned_long_
                end
                local.get 3
                return
              end
              i32.const 1789
              i32.const 1660
              i32.const 267
              i32.const 1798
              call $__assert_fail
              unreachable
            end
            i32.const 1841
            i32.const 1660
            i32.const 256
            i32.const 1824
            call $__assert_fail
            unreachable
          end
          i32.const 1789
          i32.const 1660
          i32.const 250
          i32.const 1824
          call $__assert_fail
          unreachable
        end
        i32.const 1841
        i32.const 1660
        i32.const 256
        i32.const 1824
        call $__assert_fail
        unreachable
      end
      i32.const 1789
      i32.const 1660
      i32.const 250
      i32.const 1824
      call $__assert_fail
      unreachable
    end
    i32.const 1841
    i32.const 1660
    i32.const 256
    i32.const 1824
    call $__assert_fail
    unreachable)
  (func $newAllocation_unsigned_long_ (type 5) (param i32) (result i32)
    (local i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        if  ;; label = @3
          block  ;; label = @4
            i32.const 3876
            i32.load
            local.tee 1
            i32.eqz
            br_if 0 (;@4;)
            local.get 1
            i32.load
            local.tee 2
            i32.const 1
            i32.and
            br_if 0 (;@4;)
            local.get 1
            local.get 2
            i32.const 1
            i32.or
            i32.store
            local.get 2
            i32.const 1
            i32.shr_u
            i32.const -8
            i32.add
            local.tee 2
            i32.eqz
            br_if 2 (;@2;)
            i32.const 28
            local.get 2
            i32.const 8
            local.get 2
            i32.const 8
            i32.gt_u
            select
            i32.clz
            local.tee 2
            i32.sub
            i32.const 29
            i32.ge_u
            br_if 3 (;@1;)
            i32.const 0
            local.get 2
            i32.sub
            i32.const 2
            i32.shl
            i32.const 3868
            i32.add
            local.tee 3
            i32.load
            local.get 1
            i32.const 8
            i32.add
            local.tee 2
            i32.eq
            if  ;; label = @5
              local.get 3
              local.get 1
              i32.load offset=12
              i32.store
            end
            local.get 2
            i32.load
            local.tee 3
            if  ;; label = @5
              local.get 3
              local.get 1
              i32.load offset=12
              i32.store offset=4
            end
            local.get 1
            i32.load offset=12
            local.tee 1
            if  ;; label = @5
              local.get 1
              local.get 2
              i32.load
              i32.store
            end
            local.get 0
            call $extendLastRegion_unsigned_long_
            local.set 1
            i32.const 3876
            i32.load
            local.set 0
            local.get 1
            if  ;; label = @5
              local.get 0
              return
            end
            local.get 0
            local.get 0
            i32.load
            i32.const -2
            i32.and
            i32.store
            i32.const 0
            return
          end
          local.get 0
          call $allocateRegion_unsigned_long_
          return
        end
        i32.const 1789
        i32.const 1660
        i32.const 776
        i32.const 2109
        call $__assert_fail
        unreachable
      end
      i32.const 1789
      i32.const 1660
      i32.const 250
      i32.const 1824
      call $__assert_fail
      unreachable
    end
    i32.const 1841
    i32.const 1660
    i32.const 256
    i32.const 1824
    call $__assert_fail
    unreachable)
  (func $free (type 14) (param i32)
    local.get 0
    if  ;; label = @1
      local.get 0
      i32.const -8
      i32.add
      call $stopUsing_Region*_
    end)
  (func $stopUsing_Region*_ (type 14) (param i32)
    (local i32 i32 i32 i32 i32 i32)
    local.get 0
    local.get 0
    i32.load
    local.tee 1
    i32.const -2
    i32.and
    i32.store
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 0
                local.get 1
                i32.const 1
                i32.shr_u
                i32.add
                i32.const 0
                call $sbrk
                i32.le_u
                if  ;; label = @7
                  local.get 0
                  i32.load offset=4
                  local.set 1
                  i32.const 3876
                  i32.load
                  local.tee 5
                  local.get 0
                  i32.eq
                  local.tee 3
                  i32.eqz
                  if  ;; label = @8
                    local.get 0
                    local.get 0
                    i32.load
                    i32.const 1
                    i32.shr_u
                    i32.add
                    local.set 2
                  end
                  block  ;; label = @8
                    block  ;; label = @9
                      local.get 1
                      i32.eqz
                      br_if 0 (;@9;)
                      local.get 1
                      i32.load
                      local.tee 4
                      i32.const 1
                      i32.and
                      br_if 0 (;@9;)
                      local.get 4
                      i32.const 1
                      i32.shr_u
                      i32.const -8
                      i32.add
                      local.tee 4
                      i32.eqz
                      br_if 3 (;@6;)
                      i32.const 28
                      local.get 4
                      i32.const 8
                      local.get 4
                      i32.const 8
                      i32.gt_u
                      select
                      i32.clz
                      local.tee 4
                      i32.sub
                      i32.const 29
                      i32.ge_u
                      br_if 4 (;@5;)
                      i32.const 0
                      local.get 4
                      i32.sub
                      i32.const 2
                      i32.shl
                      i32.const 3868
                      i32.add
                      local.tee 6
                      i32.load
                      local.get 1
                      i32.const 8
                      i32.add
                      local.tee 4
                      i32.eq
                      if  ;; label = @10
                        local.get 6
                        local.get 1
                        i32.load offset=12
                        i32.store
                      end
                      local.get 4
                      i32.load
                      local.tee 6
                      if  ;; label = @10
                        local.get 6
                        local.get 1
                        i32.load offset=12
                        i32.store offset=4
                      end
                      local.get 1
                      i32.load offset=12
                      local.tee 6
                      if  ;; label = @10
                        local.get 6
                        local.get 4
                        i32.load
                        i32.store
                      end
                      local.get 1
                      local.get 1
                      i32.load
                      local.get 0
                      i32.load
                      i32.const -2
                      i32.and
                      i32.add
                      i32.store
                      block (result i32)  ;; label = @10
                        local.get 2
                        i32.eqz
                        if  ;; label = @11
                          i32.const 3876
                          local.get 3
                          br_if 1 (;@10;)
                          drop
                          i32.const 2088
                          i32.const 1660
                          i32.const 338
                          i32.const 2060
                          call $__assert_fail
                          unreachable
                        end
                        local.get 2
                        local.get 1
                        i32.store offset=4
                        local.get 2
                        i32.load
                        local.tee 0
                        i32.const 1
                        i32.and
                        br_if 2 (;@8;)
                        local.get 0
                        i32.const 1
                        i32.shr_u
                        i32.const -8
                        i32.add
                        local.tee 0
                        i32.eqz
                        br_if 6 (;@4;)
                        i32.const 28
                        local.get 0
                        i32.const 8
                        local.get 0
                        i32.const 8
                        i32.gt_u
                        select
                        i32.clz
                        local.tee 0
                        i32.sub
                        i32.const 29
                        i32.ge_u
                        br_if 7 (;@3;)
                        i32.const 0
                        local.get 0
                        i32.sub
                        i32.const 2
                        i32.shl
                        i32.const 3868
                        i32.add
                        local.tee 3
                        i32.load
                        local.get 2
                        i32.const 8
                        i32.add
                        local.tee 0
                        i32.eq
                        if  ;; label = @11
                          local.get 3
                          local.get 2
                          i32.load offset=12
                          i32.store
                        end
                        local.get 0
                        i32.load
                        local.tee 3
                        if  ;; label = @11
                          local.get 3
                          local.get 2
                          i32.load offset=12
                          i32.store offset=4
                        end
                        local.get 2
                        i32.load offset=12
                        local.tee 3
                        if  ;; label = @11
                          local.get 3
                          local.get 0
                          i32.load
                          i32.store
                          i32.const 3876
                          i32.load
                          local.set 5
                        end
                        local.get 1
                        local.get 1
                        i32.load
                        local.get 2
                        i32.load
                        i32.const -2
                        i32.and
                        i32.add
                        i32.store
                        local.get 2
                        local.get 5
                        i32.eq
                        if  ;; label = @11
                          i32.const 3876
                          local.get 1
                          i32.store
                          local.get 1
                          call $addToFreeList_Region*_
                          return
                        end
                        local.get 2
                        local.get 2
                        i32.load
                        i32.const 1
                        i32.shr_u
                        i32.add
                        i32.const 4
                        i32.add
                      end
                      local.get 1
                      i32.store
                      local.get 1
                      call $addToFreeList_Region*_
                      return
                    end
                    block  ;; label = @9
                      local.get 2
                      i32.eqz
                      br_if 0 (;@9;)
                      local.get 2
                      i32.load
                      local.tee 1
                      i32.const 1
                      i32.and
                      br_if 0 (;@9;)
                      local.get 1
                      i32.const 1
                      i32.shr_u
                      i32.const -8
                      i32.add
                      local.tee 1
                      i32.eqz
                      br_if 7 (;@2;)
                      i32.const 28
                      local.get 1
                      i32.const 8
                      local.get 1
                      i32.const 8
                      i32.gt_u
                      select
                      i32.clz
                      local.tee 1
                      i32.sub
                      i32.const 29
                      i32.ge_u
                      br_if 8 (;@1;)
                      i32.const 0
                      local.get 1
                      i32.sub
                      i32.const 2
                      i32.shl
                      i32.const 3868
                      i32.add
                      local.tee 3
                      i32.load
                      local.get 2
                      i32.const 8
                      i32.add
                      local.tee 1
                      i32.eq
                      if  ;; label = @10
                        local.get 3
                        local.get 2
                        i32.load offset=12
                        i32.store
                      end
                      local.get 1
                      i32.load
                      local.tee 3
                      if  ;; label = @10
                        local.get 3
                        local.get 2
                        i32.load offset=12
                        i32.store offset=4
                      end
                      local.get 2
                      i32.load offset=12
                      local.tee 3
                      if  ;; label = @10
                        local.get 3
                        local.get 1
                        i32.load
                        i32.store
                        i32.const 3876
                        i32.load
                        local.set 5
                      end
                      local.get 0
                      local.get 0
                      i32.load
                      local.get 2
                      i32.load
                      i32.const -2
                      i32.and
                      i32.add
                      i32.store
                      local.get 2
                      local.get 5
                      i32.eq
                      if (result i32)  ;; label = @10
                        i32.const 3876
                      else
                        local.get 2
                        local.get 2
                        i32.load
                        i32.const 1
                        i32.shr_u
                        i32.add
                        i32.const 4
                        i32.add
                      end
                      local.get 0
                      i32.store
                    end
                    local.get 0
                    local.set 1
                  end
                  local.get 1
                  call $addToFreeList_Region*_
                  return
                end
                i32.const 1632
                i32.const 1660
                i32.const 324
                i32.const 2060
                call $__assert_fail
                unreachable
              end
              i32.const 1789
              i32.const 1660
              i32.const 250
              i32.const 1824
              call $__assert_fail
              unreachable
            end
            i32.const 1841
            i32.const 1660
            i32.const 256
            i32.const 1824
            call $__assert_fail
            unreachable
          end
          i32.const 1789
          i32.const 1660
          i32.const 250
          i32.const 1824
          call $__assert_fail
          unreachable
        end
        i32.const 1841
        i32.const 1660
        i32.const 256
        i32.const 1824
        call $__assert_fail
        unreachable
      end
      i32.const 1789
      i32.const 1660
      i32.const 250
      i32.const 1824
      call $__assert_fail
      unreachable
    end
    i32.const 1841
    i32.const 1660
    i32.const 256
    i32.const 1824
    call $__assert_fail
    unreachable)
  (func $possiblySplitRemainder_Region*__unsigned_long_ (type 2) (param i32 i32)
    (local i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.load
        local.tee 2
        i32.const 1
        i32.shr_u
        local.tee 4
        i32.const -8
        i32.add
        local.tee 3
        local.get 1
        i32.ge_u
        if  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 3
                local.get 1
                i32.sub
                local.tee 3
                i32.const -8
                i32.and
                i32.const 8
                i32.ne
                br_if 0 (;@6;)
                i32.const 3876
                i32.load
                local.get 0
                i32.ne
                br_if 0 (;@6;)
                local.get 4
                call $extendLastRegion_unsigned_long_
                i32.eqz
                br_if 2 (;@4;)
                local.get 3
                i32.const 8
                i32.add
                i32.const 16
                i32.ge_u
                if  ;; label = @7
                  local.get 0
                  i32.load
                  local.set 2
                  br 2 (;@5;)
                end
                i32.const 1942
                i32.const 1660
                i32.const 445
                i32.const 1919
                call $__assert_fail
                unreachable
              end
              local.get 3
              i32.const 16
              i32.lt_u
              br_if 1 (;@4;)
            end
            local.get 2
            i32.const 1
            i32.and
            local.tee 3
            i32.eqz
            br_if 2 (;@2;)
            local.get 0
            local.get 3
            local.get 0
            local.get 1
            i32.add
            i32.const 15
            i32.add
            i32.const -8
            i32.and
            local.tee 1
            local.get 0
            i32.sub
            i32.const 1
            i32.shl
            i32.or
            i32.store
            local.get 0
            local.get 2
            i32.const 1
            i32.shr_u
            i32.add
            local.get 1
            i32.sub
            local.tee 2
            i32.const 15
            i32.le_u
            br_if 3 (;@1;)
            local.get 1
            local.get 0
            i32.store offset=4
            local.get 1
            local.get 1
            i32.load
            i32.const 1
            i32.and
            local.get 2
            i32.const 1
            i32.shl
            i32.or
            i32.store
            i32.const 3876
            local.get 1
            local.get 2
            i32.const 2147483647
            i32.and
            i32.add
            i32.const 4
            i32.add
            i32.const 3876
            i32.load
            local.get 0
            i32.eq
            select
            local.get 1
            i32.store
            local.get 1
            call $stopUsing_Region*_
          end
          return
        end
        i32.const 1899
        i32.const 1660
        i32.const 428
        i32.const 1919
        call $__assert_fail
        unreachable
      end
      i32.const 2227
      i32.const 1660
      i32.const 206
      i32.const 2216
      call $__assert_fail
      unreachable
    end
    i32.const 1967
    i32.const 1660
    i32.const 460
    i32.const 1919
    call $__assert_fail
    unreachable)
  (func $extendLastRegion_unsigned_long_ (type 5) (param i32) (result i32)
    (local i32 i32 i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 0
            i32.const 15
            i32.add
            i32.const -8
            i32.and
            i32.const 3876
            i32.load
            i32.load
            i32.const 1
            i32.shr_u
            i32.sub
            local.tee 3
            call $sbrk
            local.tee 1
            i32.const -1
            i32.eq
            br_if 0 (;@4;)
            local.get 1
            i32.const 3876
            i32.load
            local.tee 0
            local.get 0
            i32.load
            local.tee 2
            i32.const 1
            i32.shr_u
            local.tee 5
            i32.add
            i32.ne
            br_if 1 (;@3;)
            i32.const 1
            local.set 4
            block  ;; label = @5
              local.get 2
              i32.const 1
              i32.and
              br_if 0 (;@5;)
              local.get 5
              i32.const -8
              i32.add
              local.tee 1
              i32.eqz
              br_if 3 (;@2;)
              i32.const 28
              local.get 1
              i32.const 8
              local.get 1
              i32.const 8
              i32.gt_u
              select
              i32.clz
              local.tee 1
              i32.sub
              i32.const 29
              i32.ge_u
              br_if 4 (;@1;)
              i32.const 0
              local.get 1
              i32.sub
              i32.const 2
              i32.shl
              i32.const 3868
              i32.add
              local.tee 2
              i32.load
              local.get 0
              i32.const 8
              i32.add
              local.tee 1
              i32.eq
              if  ;; label = @6
                local.get 2
                local.get 0
                i32.load offset=12
                i32.store
              end
              local.get 1
              i32.load
              local.tee 2
              if  ;; label = @6
                local.get 2
                local.get 0
                i32.load offset=12
                i32.store offset=4
              end
              local.get 0
              i32.load offset=12
              local.tee 2
              i32.eqz
              br_if 0 (;@5;)
              local.get 2
              local.get 1
              i32.load
              i32.store
            end
            local.get 0
            local.get 0
            i32.load
            local.get 3
            i32.const 1
            i32.shl
            i32.add
            local.tee 3
            i32.store
            local.get 3
            i32.const 1
            i32.and
            br_if 0 (;@4;)
            local.get 0
            call $addToFreeList_Region*_
          end
          local.get 4
          return
        end
        i32.const 2001
        i32.const 1660
        i32.const 417
        i32.const 2029
        call $__assert_fail
        unreachable
      end
      i32.const 1789
      i32.const 1660
      i32.const 250
      i32.const 1824
      call $__assert_fail
      unreachable
    end
    i32.const 1841
    i32.const 1660
    i32.const 256
    i32.const 1824
    call $__assert_fail
    unreachable)
  (func $allocateRegion_unsigned_long_ (type 5) (param i32) (result i32)
    (local i32 i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 0
            i32.const 15
            i32.add
            i32.const -8
            i32.and
            local.tee 3
            call $sbrk
            local.tee 1
            i32.const -1
            i32.eq
            br_if 0 (;@4;)
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  local.get 1
                  i32.const 7
                  i32.add
                  i32.const -8
                  i32.and
                  local.tee 0
                  local.get 1
                  i32.ne
                  if  ;; label = @8
                    local.get 0
                    local.get 1
                    i32.sub
                    call $sbrk
                    local.tee 4
                    i32.const -1
                    i32.eq
                    br_if 4 (;@4;)
                    local.get 4
                    local.get 1
                    local.get 3
                    i32.add
                    i32.ne
                    br_if 5 (;@3;)
                    i32.const 3876
                    i32.load
                    i32.eqz
                    if  ;; label = @9
                      i32.const 3872
                      i32.load
                      i32.eqz
                      br_if 2 (;@7;)
                      br 8 (;@1;)
                    end
                    i32.const 2179
                    i32.const 1660
                    i32.const 743
                    i32.const 2164
                    call $__assert_fail
                    unreachable
                  end
                  i32.const 3872
                  i32.load
                  local.set 1
                  i32.const 3876
                  i32.load
                  local.tee 2
                  br_if 1 (;@6;)
                  local.get 1
                  br_if 6 (;@1;)
                end
                i32.const 3872
                local.get 0
                i32.store
                br 1 (;@5;)
              end
              local.get 1
              i32.eqz
              br_if 3 (;@2;)
              local.get 0
              local.get 2
              i32.store offset=4
            end
            i32.const 3876
            local.get 0
            i32.store
            local.get 0
            local.get 3
            i32.const 1
            i32.shl
            i32.const 1
            i32.or
            i32.store
            local.get 0
            local.set 2
          end
          local.get 2
          return
        end
        i32.const 2123
        i32.const 1660
        i32.const 741
        i32.const 2164
        call $__assert_fail
        unreachable
      end
      i32.const 2204
      i32.const 1660
      i32.const 756
      i32.const 2164
      call $__assert_fail
      unreachable
    end
    i32.const 2191
    i32.const 1660
    i32.const 752
    i32.const 2164
    call $__assert_fail
    unreachable)
  (func $addToFreeList_Region*_ (type 14) (param i32)
    (local i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        local.get 0
        i32.load
        i32.const 1
        i32.shr_u
        i32.add
        i32.const 0
        call $sbrk
        i32.le_u
        if  ;; label = @3
          local.get 0
          i32.load
          i32.const 1
          i32.shr_u
          i32.const -8
          i32.add
          local.tee 1
          i32.eqz
          br_if 1 (;@2;)
          i32.const 28
          local.get 1
          i32.const 8
          local.get 1
          i32.const 8
          i32.gt_u
          select
          i32.clz
          local.tee 1
          i32.sub
          i32.const 29
          i32.ge_u
          br_if 2 (;@1;)
          i32.const 0
          local.get 1
          i32.sub
          i32.const 2
          i32.shl
          i32.const 3868
          i32.add
          local.tee 2
          i32.load
          local.set 1
          local.get 2
          local.get 0
          i32.const 8
          i32.add
          local.tee 2
          i32.store
          local.get 0
          local.get 1
          i32.store offset=12
          local.get 0
          i32.const 0
          i32.store offset=8
          local.get 1
          if  ;; label = @4
            local.get 1
            local.get 2
            i32.store
          end
          return
        end
        i32.const 1632
        i32.const 1660
        i32.const 306
        i32.const 2046
        call $__assert_fail
        unreachable
      end
      i32.const 1789
      i32.const 1660
      i32.const 250
      i32.const 1824
      call $__assert_fail
      unreachable
    end
    i32.const 1841
    i32.const 1660
    i32.const 256
    i32.const 1824
    call $__assert_fail
    unreachable)
  (func $setThrew (type 2) (param i32 i32)
    i32.const 3880
    i32.load
    i32.eqz
    if  ;; label = @1
      i32.const 3884
      local.get 1
      i32.store
      i32.const 3880
      local.get 0
      i32.store
    end)
  (func $stackSave (type 4) (result i32)
    global.get 0)
  (func $stackAlloc (type 5) (param i32) (result i32)
    global.get 0
    local.get 0
    i32.sub
    i32.const -16
    i32.and
    local.tee 0
    global.set 0
    local.get 0)
  (func $stackRestore (type 14) (param i32)
    local.get 0
    global.set 0)
  (func $__growWasmMemory (type 5) (param i32) (result i32)
    local.get 0
    memory.grow)
  (func $dynCall_vi (type 2) (param i32 i32)
    local.get 1
    local.get 0
    call_indirect (type 14))
  (func $dynCall_ii (type 8) (param i32 i32) (result i32)
    local.get 1
    local.get 0
    call_indirect (type 5))
  (func $dynCall_iiii (type 3) (param i32 i32 i32 i32) (result i32)
    local.get 1
    local.get 2
    local.get 3
    local.get 0
    call_indirect (type 0))
  (func $legalstub$dynCall_jiji (type 15) (param i32 i32 i32 i32 i32) (result i32)
    (local i64)
    local.get 1
    local.get 2
    i64.extend_i32_u
    local.get 3
    i64.extend_i32_u
    i64.const 32
    i64.shl
    i64.or
    local.get 4
    local.get 0
    call_indirect (type 9)
    local.tee 5
    i64.const 32
    i64.shr_u
    i32.wrap_i64
    call $setTempRet0
    local.get 5
    i32.wrap_i64)
  (global (;0;) (mut i32) (i32.const 5246768))
  (global (;1;) i32 (i32.const 3888))
  (export "__wasm_call_ctors" (func $__wasm_call_ctors))
  (export "main" (func $main))
  (export "dead_code" (func $dead_code))
  (export "__errno_location" (func $__errno_location))
  (export "setThrew" (func $setThrew))
  (export "malloc" (func $malloc))
  (export "free" (func $free))
  (export "__data_end" (global 1))
  (export "stackSave" (func $stackSave))
  (export "stackAlloc" (func $stackAlloc))
  (export "stackRestore" (func $stackRestore))
  (export "__growWasmMemory" (func $__growWasmMemory))
  (export "dynCall_vi" (func $dynCall_vi))
  (export "dynCall_ii" (func $dynCall_ii))
  (export "dynCall_iiii" (func $dynCall_iiii))
  (export "dynCall_jiji" (func $legalstub$dynCall_jiji))
  (elem (;0;) (i32.const 1) $foo $foo $vulnerable $evil $__emscripten_stdout_close $__stdio_write $__emscripten_stdout_seek)
  (data (;0;) (i32.const 1024) "argc: %d\0aargv: %p\0aargv[0]: %s\0aargv[1]: %s\0a\00&func_ptr: %p\0afunc_ptr:  %p\0a\00aaaa\00%p\0a\00evil called\00\00\00\00\c8\08\00\00-+   0X0x\00(null)")
  (data (;1;) (i32.const 1152) "\11\00\0a\00\11\11\11\00\00\00\00\05\00\00\00\00\00\00\09\00\00\00\00\0b")
  (data (;2;) (i32.const 1184) "\11\00\0f\0a\11\11\11\03\0a\07\00\01\13\09\0b\0b\00\00\09\06\0b\00\00\0b\00\06\11\00\00\00\11\11\11")
  (data (;3;) (i32.const 1233) "\0b")
  (data (;4;) (i32.const 1242) "\11\00\0a\0a\11\11\11\00\0a\00\00\02\00\09\0b\00\00\00\09\00\0b\00\00\0b")
  (data (;5;) (i32.const 1291) "\0c")
  (data (;6;) (i32.const 1303) "\0c\00\00\00\00\0c\00\00\00\00\09\0c\00\00\00\00\00\0c\00\00\0c")
  (data (;7;) (i32.const 1349) "\0e")
  (data (;8;) (i32.const 1361) "\0d\00\00\00\04\0d\00\00\00\00\09\0e\00\00\00\00\00\0e\00\00\0e")
  (data (;9;) (i32.const 1407) "\10")
  (data (;10;) (i32.const 1419) "\0f\00\00\00\00\0f\00\00\00\00\09\10\00\00\00\00\00\10\00\00\10\00\00\12\00\00\00\12\12\12")
  (data (;11;) (i32.const 1474) "\12\00\00\00\12\12\12\00\00\00\00\00\00\09")
  (data (;12;) (i32.const 1523) "\0b")
  (data (;13;) (i32.const 1535) "\0a\00\00\00\00\0a\00\00\00\00\09\0b\00\00\00\00\00\0b\00\00\0b")
  (data (;14;) (i32.const 1581) "\0c")
  (data (;15;) (i32.const 1593) "\0c\00\00\00\00\0c\00\00\00\00\09\0c\00\00\00\00\00\0c\00\00\0c\00\000123456789ABCDEFgetAfter(region) <= sbrk(0)\00/mnt/Data/Downloads/2019-09-26-wasm-poc-exploits/emcc-upstream/emsdk/upstream/emscripten/system/lib/emmalloc.cpp\00emmalloc_malloc\00size > 0\00getBigEnoughFreeListIndex\00getFreeListIndex\00MIN_FREELIST_INDEX <= index && index < MAX_FREELIST_INDEX\00payloadSize >= size\00possiblySplitRemainder\00extra >= MIN_REGION_SIZE\00totalSplitSize >= MIN_REGION_SIZE\00ptr == getAfter(lastRegion)\00extendLastRegion\00addToFreeList\00mergeIntoExistingFreeRegion\00region == lastRegion\00newAllocation\00(char*)extraPtr == (char*)ptr + sbrkSize\00allocateRegion\00!lastRegion\00!firstRegion\00firstRegion\00getPayload\00region->getUsed()")
  (data (;16;) (i32.const 2248) "\05")
  (data (;17;) (i32.const 2260) "\05")
  (data (;18;) (i32.const 2284) "\06\00\00\00\07\00\00\00X\0a\00\00\00\04")
  (data (;19;) (i32.const 2308) "\01")
  (data (;20;) (i32.const 2323) "\0a\ff\ff\ff\ff")
  (data (;21;) (i32.const 2580) "\84\0e"))

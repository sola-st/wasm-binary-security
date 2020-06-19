(module
  (type $t0 (func (param i32) (result i32)))
  (type $t1 (func (param i32 i32 i32) (result i32)))
  (type $t2 (func (param i32)))
  (type $t3 (func (param i32 i32 i32)))
  (type $t4 (func (param i32 i32) (result i32)))
  (type $t5 (func (param i32 i32)))
  (type $t6 (func (result i32)))
  (type $t7 (func (param i32 i32 i32 i32) (result i32)))
  (type $t8 (func (param i32 i32 i32 i32 i32) (result i32)))
  (type $t9 (func (param i64 i32) (result i32)))
  (type $t10 (func (param i32 i64 i32) (result i64)))
  (type $t11 (func))
  (type $t12 (func (param i32 i32 i32 i32 i32)))
  (type $t13 (func (param i32 f64 i32 i32 i32 i32) (result i32)))
  (type $t14 (func (param i64 i32 i32) (result i32)))
  (import "wasi_snapshot_preview1" "fd_write" (func $wasi_snapshot_preview1.fd_write (type $t7)))
  (import "env" "emscripten_resize_heap" (func $env.emscripten_resize_heap (type $t0)))
  (import "env" "emscripten_memcpy_big" (func $env.emscripten_memcpy_big (type $t1)))
  (import "env" "setTempRet0" (func $env.setTempRet0 (type $t2)))
  (import "env" "memory" (memory $env.memory 256 256))
  (import "env" "table" (table $env.table 4 funcref))
  (func $__wasm_call_ctors (type $t11)
    nop)
  (func $f5 (type $t3) (param $p0 i32) (param $p1 i32) (param $p2 i32)
    (local $l3 i32) (local $l4 i32)
    global.get $g0
    i32.const 96
    i32.sub
    local.tee $l3
    global.set $g0
    local.get $l3
    i32.const 42
    i32.store offset=92
    i32.const 1242
    call $f26
    local.get $l3
    i32.const 1800
    i32.load
    local.tee $l4
    i32.store offset=80
    local.get $l3
    local.get $l4
    i32.store offset=84
    local.get $l3
    local.get $l4
    i32.store offset=88
    i32.const 1044
    local.get $l3
    i32.const 80
    i32.add
    call $f8
    local.get $l3
    local.get $p1
    i32.store offset=72
    local.get $l3
    local.get $p1
    i32.store offset=68
    local.get $l3
    local.get $p1
    i32.store offset=64
    i32.const 1044
    local.get $l3
    i32.const -64
    i32.sub
    call $f8
    local.get $l3
    local.get $l3
    i32.const 92
    i32.add
    i32.store offset=52
    local.get $l3
    local.get $l3
    i32.const 92
    i32.add
    i32.store offset=48
    i32.const 1068
    local.get $l3
    i32.const 48
    i32.add
    call $f8
    local.get $l3
    local.get $l3
    i32.const 92
    i32.add
    local.get $p1
    i32.sub
    i32.store offset=32
    i32.const 1120
    local.get $l3
    i32.const 32
    i32.add
    call $f8
    local.get $l3
    local.get $p2
    i32.store offset=24
    local.get $l3
    local.get $p2
    i32.store offset=20
    local.get $l3
    local.get $p2
    i32.store offset=16
    i32.const 1044
    local.get $l3
    i32.const 16
    i32.add
    call $f8
    local.get $l3
    local.get $p0
    i32.store offset=8
    local.get $l3
    local.get $p0
    i32.store offset=4
    local.get $l3
    local.get $p0
    i32.store
    i32.const 1142
    local.get $l3
    call $f8
    local.get $l3
    i32.const 96
    i32.add
    global.set $g0)
  (func $f6 (type $t2) (param $p0 i32)
    (local $l1 i32) (local $l2 i32)
    global.get $g0
    i32.const -64
    i32.add
    local.tee $l1
    global.set $g0
    local.get $l1
    i32.const 1198
    i64.load align=1
    i64.store offset=23 align=1
    local.get $l1
    i32.const 1191
    i64.load align=1
    i64.store offset=16
    local.get $l1
    i32.const 1183
    i64.load align=1
    i64.store offset=8
    local.get $l1
    i32.const 1175
    i64.load align=1
    i64.store
    i32.const 64
    call $malloc
    local.tee $l2
    i32.const 1238
    i32.load align=1
    i32.store offset=32 align=1
    local.get $l2
    i32.const 1230
    i64.load align=1
    i64.store offset=24 align=1
    local.get $l2
    i32.const 1222
    i64.load align=1
    i64.store offset=16 align=1
    local.get $l2
    i32.const 1214
    i64.load align=1
    i64.store offset=8 align=1
    local.get $l2
    i32.const 1206
    i64.load align=1
    i64.store align=1
    i32.const 1254
    call $f26
    local.get $p0
    local.get $l1
    local.get $l2
    call $f5
    local.get $l1
    i32.const -64
    i32.sub
    global.set $g0)
  (func $main (type $t4) (param $p0 i32) (param $p1 i32) (result i32)
    i32.const 1274
    call $f26
    local.get $p1
    i32.load
    call $f6
    i32.const 0)
  (func $f8 (type $t5) (param $p0 i32) (param $p1 i32)
    (local $l2 i32)
    global.get $g0
    i32.const 16
    i32.sub
    local.tee $l2
    global.set $g0
    local.get $l2
    local.get $p1
    i32.store offset=12
    i32.const 1792
    i32.load
    local.get $p0
    local.get $p1
    call $f16
    local.get $l2
    i32.const 16
    i32.add
    global.set $g0)
  (func $__errno_location (type $t6) (result i32)
    i32.const 2192)
  (func $f10 (type $t0) (param $p0 i32) (result i32)
    local.get $p0
    i32.const -48
    i32.add
    i32.const 10
    i32.lt_u)
  (func $f11 (type $t4) (param $p0 i32) (param $p1 i32) (result i32)
    block $B0
      local.get $p0
      if $I1 (result i32)
        local.get $p1
        i32.const 127
        i32.le_u
        br_if $B0
        block $B2
          i32.const 1980
          i32.load
          i32.load
          i32.eqz
          if $I3
            local.get $p1
            i32.const -128
            i32.and
            i32.const 57216
            i32.eq
            br_if $B0
            i32.const 2192
            i32.const 25
            i32.store
            br $B2
          end
          local.get $p1
          i32.const 2047
          i32.le_u
          if $I4
            local.get $p0
            local.get $p1
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=1
            local.get $p0
            local.get $p1
            i32.const 6
            i32.shr_u
            i32.const 192
            i32.or
            i32.store8
            i32.const 2
            return
          end
          local.get $p1
          i32.const 55296
          i32.ge_u
          i32.const 0
          local.get $p1
          i32.const -8192
          i32.and
          i32.const 57344
          i32.ne
          select
          i32.eqz
          if $I5
            local.get $p0
            local.get $p1
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=2
            local.get $p0
            local.get $p1
            i32.const 12
            i32.shr_u
            i32.const 224
            i32.or
            i32.store8
            local.get $p0
            local.get $p1
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
          local.get $p1
          i32.const -65536
          i32.add
          i32.const 1048575
          i32.le_u
          if $I6
            local.get $p0
            local.get $p1
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=3
            local.get $p0
            local.get $p1
            i32.const 18
            i32.shr_u
            i32.const 240
            i32.or
            i32.store8
            local.get $p0
            local.get $p1
            i32.const 6
            i32.shr_u
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=2
            local.get $p0
            local.get $p1
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
          i32.const 2192
          i32.const 25
          i32.store
        end
        i32.const -1
      else
        i32.const 1
      end
      return
    end
    local.get $p0
    local.get $p1
    i32.store8
    i32.const 1)
  (func $f12 (type $t4) (param $p0 i32) (param $p1 i32) (result i32)
    local.get $p0
    i32.eqz
    if $I0
      i32.const 0
      return
    end
    local.get $p0
    local.get $p1
    call $f11)
  (func $f13 (type $t4) (param $p0 i32) (param $p1 i32) (result i32)
    (local $l2 i32) (local $l3 i32) (local $l4 i32)
    local.get $p1
    i32.const 0
    i32.ne
    local.set $l2
    block $B0
      block $B1
        block $B2
          block $B3
            local.get $p1
            i32.eqz
            br_if $B3
            local.get $p0
            i32.const 3
            i32.and
            i32.eqz
            br_if $B3
            loop $L4
              local.get $p0
              i32.load8_u
              i32.eqz
              br_if $B2
              local.get $p0
              i32.const 1
              i32.add
              local.set $p0
              local.get $p1
              i32.const -1
              i32.add
              local.tee $p1
              i32.const 0
              i32.ne
              local.set $l2
              local.get $p1
              i32.eqz
              br_if $B3
              local.get $p0
              i32.const 3
              i32.and
              br_if $L4
            end
          end
          local.get $l2
          i32.eqz
          br_if $B1
        end
        local.get $p0
        i32.load8_u
        i32.eqz
        br_if $B0
        block $B5
          local.get $p1
          i32.const 4
          i32.ge_u
          if $I6
            local.get $p1
            i32.const -4
            i32.add
            local.tee $l2
            i32.const 3
            i32.and
            local.set $l3
            local.get $l2
            i32.const -4
            i32.and
            local.get $p0
            i32.add
            i32.const 4
            i32.add
            local.set $l4
            loop $L7
              local.get $p0
              i32.load
              local.tee $l2
              i32.const -1
              i32.xor
              local.get $l2
              i32.const -16843009
              i32.add
              i32.and
              i32.const -2139062144
              i32.and
              br_if $B5
              local.get $p0
              i32.const 4
              i32.add
              local.set $p0
              local.get $p1
              i32.const -4
              i32.add
              local.tee $p1
              i32.const 3
              i32.gt_u
              br_if $L7
            end
            local.get $l3
            local.set $p1
            local.get $l4
            local.set $p0
          end
          local.get $p1
          i32.eqz
          br_if $B1
        end
        loop $L8
          local.get $p0
          i32.load8_u
          i32.eqz
          br_if $B0
          local.get $p0
          i32.const 1
          i32.add
          local.set $p0
          local.get $p1
          i32.const -1
          i32.add
          local.tee $p1
          br_if $L8
        end
      end
      i32.const 0
      return
    end
    local.get $p0)
  (func $f14 (type $t1) (param $p0 i32) (param $p1 i32) (param $p2 i32) (result i32)
    (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32)
    block $B0
      local.get $p2
      i32.load offset=16
      local.tee $l3
      if $I1 (result i32)
        local.get $l3
      else
        local.get $p2
        call $f25
        br_if $B0
        local.get $p2
        i32.load offset=16
      end
      local.get $p2
      i32.load offset=20
      local.tee $l5
      i32.sub
      local.get $p1
      i32.lt_u
      if $I2
        local.get $p2
        local.get $p0
        local.get $p1
        local.get $p2
        i32.load offset=36
        call_indirect (type $t1) $env.table
        return
      end
      block $B3
        local.get $p2
        i32.load8_s offset=75
        i32.const 0
        i32.lt_s
        br_if $B3
        local.get $p1
        local.set $l4
        loop $L4
          local.get $l4
          local.tee $l3
          i32.eqz
          br_if $B3
          local.get $p0
          local.get $l3
          i32.const -1
          i32.add
          local.tee $l4
          i32.add
          i32.load8_u
          i32.const 10
          i32.ne
          br_if $L4
        end
        local.get $p2
        local.get $p0
        local.get $l3
        local.get $p2
        i32.load offset=36
        call_indirect (type $t1) $env.table
        local.tee $l4
        local.get $l3
        i32.lt_u
        br_if $B0
        local.get $p1
        local.get $l3
        i32.sub
        local.set $p1
        local.get $p0
        local.get $l3
        i32.add
        local.set $p0
        local.get $p2
        i32.load offset=20
        local.set $l5
        local.get $l3
        local.set $l6
      end
      local.get $l5
      local.get $p0
      local.get $p1
      call $f35
      local.get $p2
      local.get $p2
      i32.load offset=20
      local.get $p1
      i32.add
      i32.store offset=20
      local.get $p1
      local.get $l6
      i32.add
      local.set $l4
    end
    local.get $l4)
  (func $f15 (type $t1) (param $p0 i32) (param $p1 i32) (param $p2 i32) (result i32)
    (local $l3 i32)
    local.get $p1
    local.set $l3
    local.get $l3
    block $B0 (result i32)
      local.get $p2
      i32.load offset=76
      i32.const -1
      i32.le_s
      if $I1
        local.get $p0
        local.get $l3
        local.get $p2
        call $f14
        br $B0
      end
      local.get $p0
      local.get $l3
      local.get $p2
      call $f14
    end
    local.tee $p0
    i32.eq
    if $I2
      local.get $p1
      return
    end
    local.get $p0)
  (func $f16 (type $t3) (param $p0 i32) (param $p1 i32) (param $p2 i32)
    (local $l3 i32) (local $l4 i32) (local $l5 i32)
    global.get $g0
    i32.const 208
    i32.sub
    local.tee $l3
    global.set $g0
    local.get $l3
    local.get $p2
    i32.store offset=204
    i32.const 0
    local.set $p2
    local.get $l3
    i32.const 160
    i32.add
    i32.const 0
    i32.const 40
    call $f36
    local.get $l3
    local.get $l3
    i32.load offset=204
    i32.store offset=200
    block $B0
      i32.const 0
      local.get $p1
      local.get $l3
      i32.const 200
      i32.add
      local.get $l3
      i32.const 80
      i32.add
      local.get $l3
      i32.const 160
      i32.add
      call $f17
      i32.const 0
      i32.lt_s
      br_if $B0
      local.get $p0
      i32.load offset=76
      i32.const 0
      i32.ge_s
      if $I1
        i32.const 1
        local.set $p2
      end
      local.get $p0
      i32.load
      local.set $l4
      local.get $p0
      i32.load8_s offset=74
      i32.const 0
      i32.le_s
      if $I2
        local.get $p0
        local.get $l4
        i32.const -33
        i32.and
        i32.store
      end
      local.get $l4
      i32.const 32
      i32.and
      local.set $l4
      block $B3 (result i32)
        local.get $p0
        i32.load offset=48
        if $I4
          local.get $p0
          local.get $p1
          local.get $l3
          i32.const 200
          i32.add
          local.get $l3
          i32.const 80
          i32.add
          local.get $l3
          i32.const 160
          i32.add
          call $f17
          br $B3
        end
        local.get $p0
        i32.const 80
        i32.store offset=48
        local.get $p0
        local.get $l3
        i32.const 80
        i32.add
        i32.store offset=16
        local.get $p0
        local.get $l3
        i32.store offset=28
        local.get $p0
        local.get $l3
        i32.store offset=20
        local.get $p0
        i32.load offset=44
        local.set $l5
        local.get $p0
        local.get $l3
        i32.store offset=44
        local.get $p0
        local.get $p1
        local.get $l3
        i32.const 200
        i32.add
        local.get $l3
        i32.const 80
        i32.add
        local.get $l3
        i32.const 160
        i32.add
        call $f17
        local.get $l5
        i32.eqz
        br_if $B3
        drop
        local.get $p0
        i32.const 0
        i32.const 0
        local.get $p0
        i32.load offset=36
        call_indirect (type $t1) $env.table
        drop
        local.get $p0
        i32.const 0
        i32.store offset=48
        local.get $p0
        local.get $l5
        i32.store offset=44
        local.get $p0
        i32.const 0
        i32.store offset=28
        local.get $p0
        i32.const 0
        i32.store offset=16
        local.get $p0
        i32.load offset=20
        drop
        local.get $p0
        i32.const 0
        i32.store offset=20
        i32.const 0
      end
      drop
      local.get $p0
      local.get $p0
      i32.load
      local.get $l4
      i32.or
      i32.store
      local.get $p2
      i32.eqz
      br_if $B0
    end
    local.get $l3
    i32.const 208
    i32.add
    global.set $g0)
  (func $f17 (type $t8) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32) (param $p4 i32) (result i32)
    (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32) (local $l9 i32) (local $l10 i32) (local $l11 i32) (local $l12 i32) (local $l13 i32) (local $l14 i32) (local $l15 i32) (local $l16 i32) (local $l17 i32) (local $l18 i32) (local $l19 i32) (local $l20 i64)
    global.get $g0
    i32.const 80
    i32.sub
    local.tee $l5
    global.set $g0
    local.get $l5
    local.get $p1
    i32.store offset=76
    local.get $l5
    i32.const 55
    i32.add
    local.set $l19
    local.get $l5
    i32.const 56
    i32.add
    local.set $l16
    i32.const 0
    local.set $p1
    block $B0
      loop $L1
        block $B2
          local.get $l13
          i32.const 0
          i32.lt_s
          br_if $B2
          local.get $p1
          i32.const 2147483647
          local.get $l13
          i32.sub
          i32.gt_s
          if $I3
            i32.const 2192
            i32.const 61
            i32.store
            i32.const -1
            local.set $l13
            br $B2
          end
          local.get $p1
          local.get $l13
          i32.add
          local.set $l13
        end
        local.get $l5
        i32.load offset=76
        local.tee $l10
        local.set $p1
        block $B4
          block $B5
            block $B6
              block $B7 (result i32)
                block $B8
                  block $B9
                    block $B10
                      block $B11
                        block $B12
                          block $B13
                            block $B14
                              block $B15
                                block $B16
                                  block $B17
                                    local.get $l10
                                    i32.load8_u
                                    local.tee $l6
                                    if $I18
                                      loop $L19
                                        block $B20
                                          block $B21
                                            block $B22
                                              local.get $l6
                                              i32.const 255
                                              i32.and
                                              local.tee $l6
                                              i32.eqz
                                              if $I23
                                                local.get $p1
                                                local.set $l6
                                                br $B22
                                              end
                                              local.get $l6
                                              i32.const 37
                                              i32.ne
                                              br_if $B21
                                              local.get $p1
                                              local.set $l6
                                              loop $L24
                                                local.get $p1
                                                i32.load8_u offset=1
                                                i32.const 37
                                                i32.ne
                                                br_if $B22
                                                local.get $l5
                                                local.get $p1
                                                i32.const 2
                                                i32.add
                                                local.tee $l7
                                                i32.store offset=76
                                                local.get $l6
                                                i32.const 1
                                                i32.add
                                                local.set $l6
                                                local.get $p1
                                                i32.load8_u offset=2
                                                local.set $l8
                                                local.get $l7
                                                local.set $p1
                                                local.get $l8
                                                i32.const 37
                                                i32.eq
                                                br_if $L24
                                              end
                                            end
                                            local.get $l6
                                            local.get $l10
                                            i32.sub
                                            local.set $p1
                                            local.get $p0
                                            if $I25
                                              local.get $p0
                                              local.get $l10
                                              local.get $p1
                                              call $f18
                                            end
                                            local.get $p1
                                            br_if $L1
                                            local.get $l5
                                            i32.load offset=76
                                            i32.load8_s offset=1
                                            call $f10
                                            local.set $l7
                                            i32.const -1
                                            local.set $l15
                                            i32.const 1
                                            local.set $l6
                                            local.get $l5
                                            i32.load offset=76
                                            local.set $p1
                                            block $B26
                                              local.get $l7
                                              i32.eqz
                                              br_if $B26
                                              local.get $p1
                                              i32.load8_u offset=2
                                              i32.const 36
                                              i32.ne
                                              br_if $B26
                                              local.get $p1
                                              i32.load8_s offset=1
                                              i32.const -48
                                              i32.add
                                              local.set $l15
                                              i32.const 1
                                              local.set $l17
                                              i32.const 3
                                              local.set $l6
                                            end
                                            local.get $l5
                                            local.get $p1
                                            local.get $l6
                                            i32.add
                                            local.tee $p1
                                            i32.store offset=76
                                            i32.const 0
                                            local.set $l6
                                            block $B27
                                              local.get $p1
                                              i32.load8_s
                                              local.tee $l14
                                              i32.const -32
                                              i32.add
                                              local.tee $l8
                                              i32.const 31
                                              i32.gt_u
                                              if $I28
                                                local.get $p1
                                                local.set $l7
                                                br $B27
                                              end
                                              local.get $p1
                                              local.set $l7
                                              i32.const 1
                                              local.get $l8
                                              i32.shl
                                              local.tee $l8
                                              i32.const 75913
                                              i32.and
                                              i32.eqz
                                              br_if $B27
                                              loop $L29
                                                local.get $l5
                                                local.get $p1
                                                i32.const 1
                                                i32.add
                                                local.tee $l7
                                                i32.store offset=76
                                                local.get $l6
                                                local.get $l8
                                                i32.or
                                                local.set $l6
                                                local.get $p1
                                                i32.load8_s offset=1
                                                local.tee $l14
                                                i32.const -32
                                                i32.add
                                                local.tee $l8
                                                i32.const 31
                                                i32.gt_u
                                                br_if $B27
                                                local.get $l7
                                                local.set $p1
                                                i32.const 1
                                                local.get $l8
                                                i32.shl
                                                local.tee $l8
                                                i32.const 75913
                                                i32.and
                                                br_if $L29
                                              end
                                            end
                                            block $B30
                                              local.get $l14
                                              i32.const 42
                                              i32.eq
                                              if $I31
                                                local.get $l5
                                                block $B32 (result i32)
                                                  block $B33
                                                    local.get $l7
                                                    i32.load8_s offset=1
                                                    call $f10
                                                    i32.eqz
                                                    br_if $B33
                                                    local.get $l5
                                                    i32.load offset=76
                                                    local.tee $l7
                                                    i32.load8_u offset=2
                                                    i32.const 36
                                                    i32.ne
                                                    br_if $B33
                                                    local.get $l7
                                                    i32.load8_s offset=1
                                                    i32.const 2
                                                    i32.shl
                                                    local.get $p4
                                                    i32.add
                                                    i32.const -192
                                                    i32.add
                                                    i32.const 10
                                                    i32.store
                                                    local.get $l7
                                                    i32.load8_s offset=1
                                                    i32.const 3
                                                    i32.shl
                                                    local.get $p3
                                                    i32.add
                                                    i32.const -384
                                                    i32.add
                                                    i32.load
                                                    local.set $l11
                                                    i32.const 1
                                                    local.set $l17
                                                    local.get $l7
                                                    i32.const 3
                                                    i32.add
                                                    br $B32
                                                  end
                                                  local.get $l17
                                                  br_if $B17
                                                  i32.const 0
                                                  local.set $l17
                                                  i32.const 0
                                                  local.set $l11
                                                  local.get $p0
                                                  if $I34
                                                    local.get $p2
                                                    local.get $p2
                                                    i32.load
                                                    local.tee $p1
                                                    i32.const 4
                                                    i32.add
                                                    i32.store
                                                    local.get $p1
                                                    i32.load
                                                    local.set $l11
                                                  end
                                                  local.get $l5
                                                  i32.load offset=76
                                                  i32.const 1
                                                  i32.add
                                                end
                                                local.tee $p1
                                                i32.store offset=76
                                                local.get $l11
                                                i32.const -1
                                                i32.gt_s
                                                br_if $B30
                                                i32.const 0
                                                local.get $l11
                                                i32.sub
                                                local.set $l11
                                                local.get $l6
                                                i32.const 8192
                                                i32.or
                                                local.set $l6
                                                br $B30
                                              end
                                              local.get $l5
                                              i32.const 76
                                              i32.add
                                              call $f19
                                              local.tee $l11
                                              i32.const 0
                                              i32.lt_s
                                              br_if $B17
                                              local.get $l5
                                              i32.load offset=76
                                              local.set $p1
                                            end
                                            i32.const -1
                                            local.set $l9
                                            block $B35
                                              local.get $p1
                                              i32.load8_u
                                              i32.const 46
                                              i32.ne
                                              br_if $B35
                                              local.get $p1
                                              i32.load8_u offset=1
                                              i32.const 42
                                              i32.eq
                                              if $I36
                                                block $B37
                                                  local.get $p1
                                                  i32.load8_s offset=2
                                                  call $f10
                                                  i32.eqz
                                                  br_if $B37
                                                  local.get $l5
                                                  i32.load offset=76
                                                  local.tee $p1
                                                  i32.load8_u offset=3
                                                  i32.const 36
                                                  i32.ne
                                                  br_if $B37
                                                  local.get $p1
                                                  i32.load8_s offset=2
                                                  i32.const 2
                                                  i32.shl
                                                  local.get $p4
                                                  i32.add
                                                  i32.const -192
                                                  i32.add
                                                  i32.const 10
                                                  i32.store
                                                  local.get $p1
                                                  i32.load8_s offset=2
                                                  i32.const 3
                                                  i32.shl
                                                  local.get $p3
                                                  i32.add
                                                  i32.const -384
                                                  i32.add
                                                  i32.load
                                                  local.set $l9
                                                  local.get $l5
                                                  local.get $p1
                                                  i32.const 4
                                                  i32.add
                                                  local.tee $p1
                                                  i32.store offset=76
                                                  br $B35
                                                end
                                                local.get $l17
                                                br_if $B17
                                                local.get $p0
                                                if $I38 (result i32)
                                                  local.get $p2
                                                  local.get $p2
                                                  i32.load
                                                  local.tee $p1
                                                  i32.const 4
                                                  i32.add
                                                  i32.store
                                                  local.get $p1
                                                  i32.load
                                                else
                                                  i32.const 0
                                                end
                                                local.set $l9
                                                local.get $l5
                                                local.get $l5
                                                i32.load offset=76
                                                i32.const 2
                                                i32.add
                                                local.tee $p1
                                                i32.store offset=76
                                                br $B35
                                              end
                                              local.get $l5
                                              local.get $p1
                                              i32.const 1
                                              i32.add
                                              i32.store offset=76
                                              local.get $l5
                                              i32.const 76
                                              i32.add
                                              call $f19
                                              local.set $l9
                                              local.get $l5
                                              i32.load offset=76
                                              local.set $p1
                                            end
                                            i32.const 0
                                            local.set $l7
                                            loop $L39
                                              local.get $l7
                                              local.set $l8
                                              i32.const -1
                                              local.set $l12
                                              local.get $p1
                                              i32.load8_s
                                              i32.const -65
                                              i32.add
                                              i32.const 57
                                              i32.gt_u
                                              br_if $B0
                                              local.get $l5
                                              local.get $p1
                                              i32.const 1
                                              i32.add
                                              local.tee $l14
                                              i32.store offset=76
                                              local.get $p1
                                              i32.load8_s
                                              local.set $l7
                                              local.get $l14
                                              local.set $p1
                                              local.get $l7
                                              local.get $l8
                                              i32.const 58
                                              i32.mul
                                              i32.add
                                              i32.const 1247
                                              i32.add
                                              i32.load8_u
                                              local.tee $l7
                                              i32.const -1
                                              i32.add
                                              i32.const 8
                                              i32.lt_u
                                              br_if $L39
                                            end
                                            local.get $l7
                                            i32.eqz
                                            br_if $B0
                                            block $B40
                                              block $B41
                                                block $B42
                                                  local.get $l7
                                                  i32.const 19
                                                  i32.eq
                                                  if $I43
                                                    local.get $l15
                                                    i32.const -1
                                                    i32.le_s
                                                    br_if $B42
                                                    br $B0
                                                  end
                                                  local.get $l15
                                                  i32.const 0
                                                  i32.lt_s
                                                  br_if $B41
                                                  local.get $p4
                                                  local.get $l15
                                                  i32.const 2
                                                  i32.shl
                                                  i32.add
                                                  local.get $l7
                                                  i32.store
                                                  local.get $l5
                                                  local.get $p3
                                                  local.get $l15
                                                  i32.const 3
                                                  i32.shl
                                                  i32.add
                                                  i64.load
                                                  i64.store offset=64
                                                end
                                                i32.const 0
                                                local.set $p1
                                                local.get $p0
                                                i32.eqz
                                                br_if $L1
                                                br $B40
                                              end
                                              local.get $p0
                                              i32.eqz
                                              br_if $B4
                                              local.get $l5
                                              i32.const -64
                                              i32.sub
                                              local.get $l7
                                              local.get $p2
                                              call $f20
                                              local.get $l5
                                              i32.load offset=76
                                              local.set $l14
                                            end
                                            local.get $l6
                                            i32.const -65537
                                            i32.and
                                            local.tee $l18
                                            local.get $l6
                                            local.get $l6
                                            i32.const 8192
                                            i32.and
                                            select
                                            local.set $l6
                                            i32.const 0
                                            local.set $l12
                                            i32.const 1286
                                            local.set $l15
                                            local.get $l16
                                            local.set $l7
                                            local.get $l14
                                            i32.const -1
                                            i32.add
                                            i32.load8_s
                                            local.tee $p1
                                            i32.const -33
                                            i32.and
                                            local.get $p1
                                            local.get $p1
                                            i32.const 15
                                            i32.and
                                            i32.const 3
                                            i32.eq
                                            select
                                            local.get $p1
                                            local.get $l8
                                            select
                                            local.tee $p1
                                            i32.const -88
                                            i32.add
                                            local.tee $l14
                                            i32.const 32
                                            i32.le_u
                                            br_if $B20
                                            block $B44
                                              block $B45 (result i32)
                                                block $B46
                                                  block $B47
                                                    local.get $p1
                                                    i32.const -65
                                                    i32.add
                                                    local.tee $l8
                                                    i32.const 6
                                                    i32.gt_u
                                                    if $I48
                                                      local.get $p1
                                                      i32.const 83
                                                      i32.ne
                                                      br_if $B5
                                                      local.get $l9
                                                      i32.eqz
                                                      br_if $B47
                                                      local.get $l5
                                                      i32.load offset=64
                                                      br $B45
                                                    end
                                                    local.get $l8
                                                    i32.const 1
                                                    i32.sub
                                                    br_table $B5 $B46 $B5 $B16
                                                  end
                                                  i32.const 0
                                                  local.set $p1
                                                  local.get $p0
                                                  i32.const 32
                                                  local.get $l11
                                                  i32.const 0
                                                  local.get $l6
                                                  call $f21
                                                  br $B44
                                                end
                                                local.get $l5
                                                i32.const 0
                                                i32.store offset=12
                                                local.get $l5
                                                local.get $l5
                                                i64.load offset=64
                                                i64.store32 offset=8
                                                local.get $l5
                                                local.get $l5
                                                i32.const 8
                                                i32.add
                                                i32.store offset=64
                                                i32.const -1
                                                local.set $l9
                                                local.get $l5
                                                i32.const 8
                                                i32.add
                                              end
                                              local.set $l7
                                              i32.const 0
                                              local.set $p1
                                              block $B49
                                                loop $L50
                                                  local.get $l7
                                                  i32.load
                                                  local.tee $l8
                                                  i32.eqz
                                                  br_if $B49
                                                  block $B51
                                                    local.get $l5
                                                    i32.const 4
                                                    i32.add
                                                    local.get $l8
                                                    call $f12
                                                    local.tee $l8
                                                    i32.const 0
                                                    i32.lt_s
                                                    local.tee $l10
                                                    br_if $B51
                                                    local.get $l8
                                                    local.get $l9
                                                    local.get $p1
                                                    i32.sub
                                                    i32.gt_u
                                                    br_if $B51
                                                    local.get $l7
                                                    i32.const 4
                                                    i32.add
                                                    local.set $l7
                                                    local.get $l9
                                                    local.get $p1
                                                    local.get $l8
                                                    i32.add
                                                    local.tee $p1
                                                    i32.gt_u
                                                    br_if $L50
                                                    br $B49
                                                  end
                                                end
                                                i32.const -1
                                                local.set $l12
                                                local.get $l10
                                                br_if $B0
                                              end
                                              local.get $p0
                                              i32.const 32
                                              local.get $l11
                                              local.get $p1
                                              local.get $l6
                                              call $f21
                                              local.get $p1
                                              i32.eqz
                                              if $I52
                                                i32.const 0
                                                local.set $p1
                                                br $B44
                                              end
                                              i32.const 0
                                              local.set $l8
                                              local.get $l5
                                              i32.load offset=64
                                              local.set $l7
                                              loop $L53
                                                local.get $l7
                                                i32.load
                                                local.tee $l10
                                                i32.eqz
                                                br_if $B44
                                                local.get $l5
                                                i32.const 4
                                                i32.add
                                                local.get $l10
                                                call $f12
                                                local.tee $l10
                                                local.get $l8
                                                i32.add
                                                local.tee $l8
                                                local.get $p1
                                                i32.gt_s
                                                br_if $B44
                                                local.get $p0
                                                local.get $l5
                                                i32.const 4
                                                i32.add
                                                local.get $l10
                                                call $f18
                                                local.get $l7
                                                i32.const 4
                                                i32.add
                                                local.set $l7
                                                local.get $l8
                                                local.get $p1
                                                i32.lt_u
                                                br_if $L53
                                              end
                                            end
                                            local.get $p0
                                            i32.const 32
                                            local.get $l11
                                            local.get $p1
                                            local.get $l6
                                            i32.const 8192
                                            i32.xor
                                            call $f21
                                            local.get $l11
                                            local.get $p1
                                            local.get $l11
                                            local.get $p1
                                            i32.gt_s
                                            select
                                            local.set $p1
                                            br $L1
                                          end
                                          local.get $l5
                                          local.get $p1
                                          i32.const 1
                                          i32.add
                                          local.tee $l7
                                          i32.store offset=76
                                          local.get $p1
                                          i32.load8_u offset=1
                                          local.set $l6
                                          local.get $l7
                                          local.set $p1
                                          br $L19
                                        end
                                      end
                                      local.get $l14
                                      i32.const 1
                                      i32.sub
                                      br_table $B5 $B5 $B5 $B5 $B5 $B5 $B5 $B5 $B16 $B5 $B14 $B13 $B16 $B16 $B16 $B5 $B13 $B5 $B5 $B5 $B5 $B9 $B12 $B11 $B5 $B5 $B15 $B5 $B8 $B5 $B5 $B10
                                    end
                                    local.get $l13
                                    local.set $l12
                                    local.get $p0
                                    br_if $B0
                                    local.get $l17
                                    i32.eqz
                                    br_if $B4
                                    i32.const 1
                                    local.set $p1
                                    loop $L54
                                      local.get $p4
                                      local.get $p1
                                      i32.const 2
                                      i32.shl
                                      i32.add
                                      i32.load
                                      local.tee $l6
                                      if $I55
                                        local.get $p3
                                        local.get $p1
                                        i32.const 3
                                        i32.shl
                                        i32.add
                                        local.get $l6
                                        local.get $p2
                                        call $f20
                                        i32.const 1
                                        local.set $l12
                                        local.get $p1
                                        i32.const 1
                                        i32.add
                                        local.tee $p1
                                        i32.const 10
                                        i32.ne
                                        br_if $L54
                                        br $B0
                                      end
                                    end
                                    i32.const 1
                                    local.set $l12
                                    local.get $p1
                                    i32.const 10
                                    i32.ge_u
                                    br_if $B0
                                    loop $L56
                                      local.get $p4
                                      local.get $p1
                                      i32.const 2
                                      i32.shl
                                      i32.add
                                      i32.load
                                      br_if $B17
                                      local.get $p1
                                      i32.const 8
                                      i32.gt_u
                                      local.set $l6
                                      local.get $p1
                                      i32.const 1
                                      i32.add
                                      local.set $p1
                                      local.get $l6
                                      i32.eqz
                                      br_if $L56
                                    end
                                    br $B0
                                  end
                                  i32.const -1
                                  local.set $l12
                                  br $B0
                                end
                                local.get $p0
                                local.get $l5
                                f64.load offset=64
                                local.get $l11
                                local.get $l9
                                local.get $l6
                                local.get $p1
                                i32.const 0
                                call_indirect (type $t13) $env.table
                                local.set $p1
                                br $L1
                              end
                              local.get $l5
                              i32.load offset=64
                              local.tee $p1
                              i32.const 1296
                              local.get $p1
                              select
                              local.tee $l10
                              local.get $l9
                              call $f13
                              local.tee $p1
                              local.get $l9
                              local.get $l10
                              i32.add
                              local.get $p1
                              select
                              local.set $l7
                              local.get $l18
                              local.set $l6
                              local.get $p1
                              local.get $l10
                              i32.sub
                              local.get $l9
                              local.get $p1
                              select
                              local.set $l9
                              br $B5
                            end
                            local.get $l5
                            local.get $l5
                            i64.load offset=64
                            i64.store8 offset=55
                            i32.const 1
                            local.set $l9
                            local.get $l19
                            local.set $l10
                            local.get $l18
                            local.set $l6
                            br $B5
                          end
                          local.get $l5
                          i64.load offset=64
                          local.tee $l20
                          i64.const -1
                          i64.le_s
                          if $I57
                            local.get $l5
                            i64.const 0
                            local.get $l20
                            i64.sub
                            local.tee $l20
                            i64.store offset=64
                            i32.const 1
                            local.set $l12
                            i32.const 1286
                            br $B7
                          end
                          local.get $l6
                          i32.const 2048
                          i32.and
                          if $I58
                            i32.const 1
                            local.set $l12
                            i32.const 1287
                            br $B7
                          end
                          i32.const 1288
                          i32.const 1286
                          local.get $l6
                          i32.const 1
                          i32.and
                          local.tee $l12
                          select
                          br $B7
                        end
                        local.get $l5
                        i64.load offset=64
                        local.get $l16
                        call $f22
                        local.set $l10
                        local.get $l6
                        i32.const 8
                        i32.and
                        i32.eqz
                        br_if $B6
                        local.get $l9
                        local.get $l16
                        local.get $l10
                        i32.sub
                        local.tee $p1
                        i32.const 1
                        i32.add
                        local.get $l9
                        local.get $p1
                        i32.gt_s
                        select
                        local.set $l9
                        br $B6
                      end
                      local.get $l9
                      i32.const 8
                      local.get $l9
                      i32.const 8
                      i32.gt_u
                      select
                      local.set $l9
                      local.get $l6
                      i32.const 8
                      i32.or
                      local.set $l6
                      i32.const 120
                      local.set $p1
                    end
                    local.get $l5
                    i64.load offset=64
                    local.get $l16
                    local.get $p1
                    i32.const 32
                    i32.and
                    call $f23
                    local.set $l10
                    local.get $l6
                    i32.const 8
                    i32.and
                    i32.eqz
                    br_if $B6
                    local.get $l5
                    i64.load offset=64
                    i64.eqz
                    br_if $B6
                    local.get $p1
                    i32.const 4
                    i32.shr_u
                    i32.const 1286
                    i32.add
                    local.set $l15
                    i32.const 2
                    local.set $l12
                    br $B6
                  end
                  i32.const 0
                  local.set $p1
                  local.get $l8
                  i32.const 255
                  i32.and
                  local.tee $l6
                  i32.const 7
                  i32.gt_u
                  br_if $L1
                  block $B59
                    block $B60
                      block $B61
                        block $B62
                          block $B63
                            block $B64
                              block $B65
                                local.get $l6
                                i32.const 1
                                i32.sub
                                br_table $B64 $B63 $B62 $B61 $L1 $B60 $B59 $B65
                              end
                              local.get $l5
                              i32.load offset=64
                              local.get $l13
                              i32.store
                              br $L1
                            end
                            local.get $l5
                            i32.load offset=64
                            local.get $l13
                            i32.store
                            br $L1
                          end
                          local.get $l5
                          i32.load offset=64
                          local.get $l13
                          i64.extend_i32_s
                          i64.store
                          br $L1
                        end
                        local.get $l5
                        i32.load offset=64
                        local.get $l13
                        i32.store16
                        br $L1
                      end
                      local.get $l5
                      i32.load offset=64
                      local.get $l13
                      i32.store8
                      br $L1
                    end
                    local.get $l5
                    i32.load offset=64
                    local.get $l13
                    i32.store
                    br $L1
                  end
                  local.get $l5
                  i32.load offset=64
                  local.get $l13
                  i64.extend_i32_s
                  i64.store
                  br $L1
                end
                local.get $l5
                i64.load offset=64
                local.set $l20
                i32.const 1286
              end
              local.set $l15
              local.get $l20
              local.get $l16
              call $f24
              local.set $l10
            end
            local.get $l6
            i32.const -65537
            i32.and
            local.get $l6
            local.get $l9
            i32.const -1
            i32.gt_s
            select
            local.set $l6
            local.get $l5
            i64.load offset=64
            local.set $l20
            block $B66 (result i32)
              block $B67
                local.get $l9
                br_if $B67
                local.get $l20
                i64.eqz
                i32.eqz
                br_if $B67
                local.get $l16
                local.set $l10
                i32.const 0
                br $B66
              end
              local.get $l9
              local.get $l20
              i64.eqz
              local.get $l16
              local.get $l10
              i32.sub
              i32.add
              local.tee $p1
              local.get $l9
              local.get $p1
              i32.gt_s
              select
            end
            local.set $l9
          end
          local.get $p0
          i32.const 32
          local.get $l12
          local.get $l7
          local.get $l10
          i32.sub
          local.tee $l8
          local.get $l9
          local.get $l9
          local.get $l8
          i32.lt_s
          select
          local.tee $l14
          i32.add
          local.tee $l7
          local.get $l11
          local.get $l11
          local.get $l7
          i32.lt_s
          select
          local.tee $p1
          local.get $l7
          local.get $l6
          call $f21
          local.get $p0
          local.get $l15
          local.get $l12
          call $f18
          local.get $p0
          i32.const 48
          local.get $p1
          local.get $l7
          local.get $l6
          i32.const 65536
          i32.xor
          call $f21
          local.get $p0
          i32.const 48
          local.get $l14
          local.get $l8
          i32.const 0
          call $f21
          local.get $p0
          local.get $l10
          local.get $l8
          call $f18
          local.get $p0
          i32.const 32
          local.get $p1
          local.get $l7
          local.get $l6
          i32.const 8192
          i32.xor
          call $f21
          br $L1
        end
      end
      i32.const 0
      local.set $l12
    end
    local.get $l5
    i32.const 80
    i32.add
    global.set $g0
    local.get $l12)
  (func $f18 (type $t3) (param $p0 i32) (param $p1 i32) (param $p2 i32)
    local.get $p0
    i32.load8_u
    i32.const 32
    i32.and
    i32.eqz
    if $I0
      local.get $p1
      local.get $p2
      local.get $p0
      call $f14
      drop
    end)
  (func $f19 (type $t0) (param $p0 i32) (result i32)
    (local $l1 i32) (local $l2 i32) (local $l3 i32)
    local.get $p0
    i32.load
    i32.load8_s
    call $f10
    if $I0
      loop $L1
        local.get $p0
        i32.load
        local.tee $l2
        i32.load8_s
        local.set $l3
        local.get $p0
        local.get $l2
        i32.const 1
        i32.add
        i32.store
        local.get $l3
        local.get $l1
        i32.const 10
        i32.mul
        i32.add
        i32.const -48
        i32.add
        local.set $l1
        local.get $l2
        i32.load8_s offset=1
        call $f10
        br_if $L1
      end
    end
    local.get $l1)
  (func $f20 (type $t3) (param $p0 i32) (param $p1 i32) (param $p2 i32)
    block $B0
      local.get $p1
      i32.const 20
      i32.gt_u
      br_if $B0
      local.get $p1
      i32.const -9
      i32.add
      local.tee $p1
      i32.const 9
      i32.gt_u
      br_if $B0
      block $B1
        block $B2
          block $B3
            block $B4
              block $B5
                block $B6
                  block $B7
                    block $B8
                      block $B9
                        block $B10
                          local.get $p1
                          i32.const 1
                          i32.sub
                          br_table $B9 $B8 $B7 $B6 $B5 $B4 $B3 $B2 $B1 $B10
                        end
                        local.get $p2
                        local.get $p2
                        i32.load
                        local.tee $p1
                        i32.const 4
                        i32.add
                        i32.store
                        local.get $p0
                        local.get $p1
                        i32.load
                        i32.store
                        return
                      end
                      local.get $p2
                      local.get $p2
                      i32.load
                      local.tee $p1
                      i32.const 4
                      i32.add
                      i32.store
                      local.get $p0
                      local.get $p1
                      i64.load32_s
                      i64.store
                      return
                    end
                    local.get $p2
                    local.get $p2
                    i32.load
                    local.tee $p1
                    i32.const 4
                    i32.add
                    i32.store
                    local.get $p0
                    local.get $p1
                    i64.load32_u
                    i64.store
                    return
                  end
                  local.get $p2
                  local.get $p2
                  i32.load
                  i32.const 7
                  i32.add
                  i32.const -8
                  i32.and
                  local.tee $p1
                  i32.const 8
                  i32.add
                  i32.store
                  local.get $p0
                  local.get $p1
                  i64.load
                  i64.store
                  return
                end
                local.get $p2
                local.get $p2
                i32.load
                local.tee $p1
                i32.const 4
                i32.add
                i32.store
                local.get $p0
                local.get $p1
                i64.load16_s
                i64.store
                return
              end
              local.get $p2
              local.get $p2
              i32.load
              local.tee $p1
              i32.const 4
              i32.add
              i32.store
              local.get $p0
              local.get $p1
              i64.load16_u
              i64.store
              return
            end
            local.get $p2
            local.get $p2
            i32.load
            local.tee $p1
            i32.const 4
            i32.add
            i32.store
            local.get $p0
            local.get $p1
            i64.load8_s
            i64.store
            return
          end
          local.get $p2
          local.get $p2
          i32.load
          local.tee $p1
          i32.const 4
          i32.add
          i32.store
          local.get $p0
          local.get $p1
          i64.load8_u
          i64.store
          return
        end
        local.get $p2
        local.get $p2
        i32.load
        i32.const 7
        i32.add
        i32.const -8
        i32.and
        local.tee $p1
        i32.const 8
        i32.add
        i32.store
        local.get $p0
        local.get $p1
        i64.load
        i64.store
        return
      end
      local.get $p0
      local.get $p2
      i32.const 0
      call_indirect (type $t5) $env.table
    end)
  (func $f21 (type $t12) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32) (param $p4 i32)
    (local $l5 i32)
    global.get $g0
    i32.const 256
    i32.sub
    local.tee $l5
    global.set $g0
    block $B0
      local.get $p2
      local.get $p3
      i32.le_s
      br_if $B0
      local.get $p4
      i32.const 73728
      i32.and
      br_if $B0
      local.get $l5
      local.get $p1
      local.get $p2
      local.get $p3
      i32.sub
      local.tee $p4
      i32.const 256
      local.get $p4
      i32.const 256
      i32.lt_u
      local.tee $p1
      select
      call $f36
      local.get $p0
      local.get $l5
      local.get $p1
      if $I1 (result i32)
        local.get $p4
      else
        local.get $p2
        local.get $p3
        i32.sub
        local.set $p2
        loop $L2
          local.get $p0
          local.get $l5
          i32.const 256
          call $f18
          local.get $p4
          i32.const -256
          i32.add
          local.tee $p4
          i32.const 255
          i32.gt_u
          br_if $L2
        end
        local.get $p2
        i32.const 255
        i32.and
      end
      call $f18
    end
    local.get $l5
    i32.const 256
    i32.add
    global.set $g0)
  (func $f22 (type $t9) (param $p0 i64) (param $p1 i32) (result i32)
    local.get $p0
    i64.eqz
    i32.eqz
    if $I0
      loop $L1
        local.get $p1
        i32.const -1
        i32.add
        local.tee $p1
        local.get $p0
        i32.wrap_i64
        i32.const 7
        i32.and
        i32.const 48
        i32.or
        i32.store8
        local.get $p0
        i64.const 3
        i64.shr_u
        local.tee $p0
        i64.const 0
        i64.ne
        br_if $L1
      end
    end
    local.get $p1)
  (func $f23 (type $t14) (param $p0 i64) (param $p1 i32) (param $p2 i32) (result i32)
    local.get $p0
    i64.eqz
    i32.eqz
    if $I0
      loop $L1
        local.get $p1
        i32.const -1
        i32.add
        local.tee $p1
        local.get $p0
        i32.wrap_i64
        i32.const 15
        i32.and
        i32.const 1776
        i32.add
        i32.load8_u
        local.get $p2
        i32.or
        i32.store8
        local.get $p0
        i64.const 4
        i64.shr_u
        local.tee $p0
        i64.const 0
        i64.ne
        br_if $L1
      end
    end
    local.get $p1)
  (func $f24 (type $t9) (param $p0 i64) (param $p1 i32) (result i32)
    (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i64)
    block $B0
      local.get $p0
      i64.const 4294967296
      i64.lt_u
      if $I1
        local.get $p0
        local.set $l5
        br $B0
      end
      loop $L2
        local.get $p1
        i32.const -1
        i32.add
        local.tee $p1
        local.get $p0
        local.get $p0
        i64.const 10
        i64.div_u
        local.tee $l5
        i64.const 10
        i64.mul
        i64.sub
        i32.wrap_i64
        i32.const 48
        i32.or
        i32.store8
        local.get $p0
        i64.const 42949672959
        i64.gt_u
        local.set $l2
        local.get $l5
        local.set $p0
        local.get $l2
        br_if $L2
      end
    end
    local.get $l5
    i32.wrap_i64
    local.tee $l2
    if $I3
      loop $L4
        local.get $p1
        i32.const -1
        i32.add
        local.tee $p1
        local.get $l2
        local.get $l2
        i32.const 10
        i32.div_u
        local.tee $l3
        i32.const 10
        i32.mul
        i32.sub
        i32.const 48
        i32.or
        i32.store8
        local.get $l2
        i32.const 9
        i32.gt_u
        local.set $l4
        local.get $l3
        local.set $l2
        local.get $l4
        br_if $L4
      end
    end
    local.get $p1)
  (func $f25 (type $t0) (param $p0 i32) (result i32)
    (local $l1 i32)
    local.get $p0
    local.get $p0
    i32.load8_u offset=74
    local.tee $l1
    i32.const -1
    i32.add
    local.get $l1
    i32.or
    i32.store8 offset=74
    local.get $p0
    i32.load
    local.tee $l1
    i32.const 8
    i32.and
    if $I0
      local.get $p0
      local.get $l1
      i32.const 32
      i32.or
      i32.store
      i32.const -1
      return
    end
    local.get $p0
    i64.const 0
    i64.store offset=4 align=4
    local.get $p0
    local.get $p0
    i32.load offset=44
    local.tee $l1
    i32.store offset=28
    local.get $p0
    local.get $l1
    i32.store offset=20
    local.get $p0
    local.get $l1
    local.get $p0
    i32.load offset=48
    i32.add
    i32.store offset=16
    i32.const 0)
  (func $f26 (type $t2) (param $p0 i32)
    (local $l1 i32) (local $l2 i32)
    i32.const 1792
    i32.load
    local.tee $l1
    i32.load offset=76
    i32.const 0
    i32.ge_s
    if $I0 (result i32)
      i32.const 1
    else
      local.get $l2
    end
    drop
    block $B1
      i32.const -1
      i32.const 0
      local.get $p0
      call $f27
      local.tee $l2
      local.get $p0
      local.get $l2
      local.get $l1
      call $f15
      i32.ne
      select
      i32.const 0
      i32.lt_s
      br_if $B1
      block $B2
        local.get $l1
        i32.load8_u offset=75
        i32.const 10
        i32.eq
        br_if $B2
        local.get $l1
        i32.load offset=20
        local.tee $p0
        local.get $l1
        i32.load offset=16
        i32.ge_u
        br_if $B2
        local.get $l1
        local.get $p0
        i32.const 1
        i32.add
        i32.store offset=20
        local.get $p0
        i32.const 10
        i32.store8
        br $B1
      end
      local.get $l1
      call $f31
    end)
  (func $f27 (type $t0) (param $p0 i32) (result i32)
    (local $l1 i32) (local $l2 i32) (local $l3 i32)
    local.get $p0
    local.set $l1
    block $B0
      block $B1
        local.get $p0
        i32.const 3
        i32.and
        i32.eqz
        br_if $B1
        local.get $p0
        i32.load8_u
        i32.eqz
        if $I2
          br $B0
        end
        loop $L3
          local.get $l1
          i32.const 1
          i32.add
          local.tee $l1
          i32.const 3
          i32.and
          i32.eqz
          br_if $B1
          local.get $l1
          i32.load8_u
          br_if $L3
        end
        br $B0
      end
      loop $L4
        local.get $l1
        local.tee $l2
        i32.const 4
        i32.add
        local.set $l1
        local.get $l2
        i32.load
        local.tee $l3
        i32.const -1
        i32.xor
        local.get $l3
        i32.const -16843009
        i32.add
        i32.and
        i32.const -2139062144
        i32.and
        i32.eqz
        br_if $L4
      end
      local.get $l3
      i32.const 255
      i32.and
      i32.eqz
      if $I5
        local.get $l2
        local.set $l1
        br $B0
      end
      loop $L6
        local.get $l2
        i32.load8_u offset=1
        local.set $l3
        local.get $l2
        i32.const 1
        i32.add
        local.tee $l1
        local.set $l2
        local.get $l3
        br_if $L6
      end
    end
    local.get $l1
    local.get $p0
    i32.sub)
  (func $f28 (type $t0) (param $p0 i32) (result i32)
    i32.const 0)
  (func $f29 (type $t10) (param $p0 i32) (param $p1 i64) (param $p2 i32) (result i64)
    i64.const 0)
  (func $f30 (type $t1) (param $p0 i32) (param $p1 i32) (param $p2 i32) (result i32)
    (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32)
    global.get $g0
    i32.const 32
    i32.sub
    local.tee $l4
    global.set $g0
    local.get $l4
    local.get $p0
    i32.load offset=28
    local.tee $l3
    i32.store offset=16
    local.get $p0
    i32.load offset=20
    local.set $l5
    local.get $l4
    local.get $p2
    i32.store offset=28
    local.get $l4
    local.get $p1
    i32.store offset=24
    local.get $l4
    local.get $l5
    local.get $l3
    i32.sub
    local.tee $p1
    i32.store offset=20
    local.get $p1
    local.get $p2
    i32.add
    local.set $l6
    i32.const 2
    local.set $l5
    local.get $l4
    i32.const 16
    i32.add
    local.set $p1
    loop $L0
      block $B1
        block $B2 (result i32)
          local.get $l6
          block $B3 (result i32)
            block $B4 (result i32)
              i32.const 0
              local.get $p0
              i32.load offset=60
              local.get $p1
              local.get $l5
              local.get $l4
              i32.const 12
              i32.add
              call $wasi_snapshot_preview1.fd_write
              local.tee $l3
              i32.eqz
              br_if $B4
              drop
              i32.const 2192
              local.get $l3
              i32.store
              i32.const -1
            end
            if $I5
              local.get $l4
              i32.const -1
              i32.store offset=12
              i32.const -1
              br $B3
            end
            local.get $l4
            i32.load offset=12
          end
          local.tee $l3
          i32.eq
          if $I6
            local.get $p0
            local.get $p0
            i32.load offset=44
            local.tee $p1
            i32.store offset=28
            local.get $p0
            local.get $p1
            i32.store offset=20
            local.get $p0
            local.get $p1
            local.get $p0
            i32.load offset=48
            i32.add
            i32.store offset=16
            local.get $p2
            br $B2
          end
          local.get $l3
          i32.const -1
          i32.gt_s
          br_if $B1
          local.get $p0
          i32.const 0
          i32.store offset=28
          local.get $p0
          i64.const 0
          i64.store offset=16
          local.get $p0
          local.get $p0
          i32.load
          i32.const 32
          i32.or
          i32.store
          i32.const 0
          local.get $l5
          i32.const 2
          i32.eq
          br_if $B2
          drop
          local.get $p2
          local.get $p1
          i32.load offset=4
          i32.sub
        end
        local.set $l3
        local.get $l4
        i32.const 32
        i32.add
        global.set $g0
        local.get $l3
        return
      end
      local.get $p1
      i32.const 8
      i32.add
      local.get $p1
      local.get $l3
      local.get $p1
      i32.load offset=4
      local.tee $l7
      i32.gt_u
      local.tee $l8
      select
      local.tee $p1
      local.get $l3
      local.get $l7
      i32.const 0
      local.get $l8
      select
      i32.sub
      local.tee $l7
      local.get $p1
      i32.load
      i32.add
      i32.store
      local.get $p1
      local.get $p1
      i32.load offset=4
      local.get $l7
      i32.sub
      i32.store offset=4
      local.get $l6
      local.get $l3
      i32.sub
      local.set $l6
      local.get $l5
      local.get $l8
      i32.sub
      local.set $l5
      br $L0
      unreachable
    end
    unreachable)
  (func $f31 (type $t2) (param $p0 i32)
    (local $l1 i32) (local $l2 i32) (local $l3 i32)
    global.get $g0
    i32.const 16
    i32.sub
    local.tee $l1
    global.set $g0
    local.get $l1
    i32.const 10
    i32.store8 offset=15
    block $B0
      local.get $p0
      i32.load offset=16
      local.tee $l2
      i32.eqz
      if $I1
        local.get $p0
        call $f25
        br_if $B0
        local.get $p0
        i32.load offset=16
        local.set $l2
      end
      block $B2
        local.get $p0
        i32.load offset=20
        local.tee $l3
        local.get $l2
        i32.ge_u
        br_if $B2
        local.get $p0
        i32.load8_s offset=75
        i32.const 10
        i32.eq
        br_if $B2
        local.get $p0
        local.get $l3
        i32.const 1
        i32.add
        i32.store offset=20
        local.get $l3
        i32.const 10
        i32.store8
        br $B0
      end
      local.get $p0
      local.get $l1
      i32.const 15
      i32.add
      i32.const 1
      local.get $p0
      i32.load offset=36
      call_indirect (type $t1) $env.table
      i32.const 1
      i32.ne
      br_if $B0
      local.get $l1
      i32.load8_u offset=15
      drop
    end
    local.get $l1
    i32.const 16
    i32.add
    global.set $g0)
  (func $malloc (type $t0) (param $p0 i32) (result i32)
    (local $l1 i32) (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32) (local $l9 i32) (local $l10 i32) (local $l11 i32)
    global.get $g0
    i32.const 16
    i32.sub
    local.tee $l11
    global.set $g0
    block $B0
      block $B1
        block $B2
          block $B3
            block $B4
              block $B5
                block $B6
                  block $B7
                    block $B8
                      block $B9
                        block $B10
                          local.get $p0
                          i32.const 244
                          i32.le_u
                          if $I11
                            i32.const 3304
                            i32.load
                            local.tee $l6
                            i32.const 16
                            local.get $p0
                            i32.const 11
                            i32.add
                            i32.const -8
                            i32.and
                            local.get $p0
                            i32.const 11
                            i32.lt_u
                            select
                            local.tee $l4
                            i32.const 3
                            i32.shr_u
                            local.tee $l1
                            i32.shr_u
                            local.tee $p0
                            i32.const 3
                            i32.and
                            if $I12
                              local.get $p0
                              i32.const -1
                              i32.xor
                              i32.const 1
                              i32.and
                              local.get $l1
                              i32.add
                              local.tee $l4
                              i32.const 3
                              i32.shl
                              local.tee $l2
                              i32.const 3352
                              i32.add
                              i32.load
                              local.tee $l1
                              i32.const 8
                              i32.add
                              local.set $p0
                              block $B13
                                local.get $l1
                                i32.load offset=8
                                local.tee $l3
                                local.get $l2
                                i32.const 3344
                                i32.add
                                local.tee $l2
                                i32.eq
                                if $I14
                                  i32.const 3304
                                  local.get $l6
                                  i32.const -2
                                  local.get $l4
                                  i32.rotl
                                  i32.and
                                  i32.store
                                  br $B13
                                end
                                i32.const 3320
                                i32.load
                                drop
                                local.get $l3
                                local.get $l2
                                i32.store offset=12
                                local.get $l2
                                local.get $l3
                                i32.store offset=8
                              end
                              local.get $l1
                              local.get $l4
                              i32.const 3
                              i32.shl
                              local.tee $l3
                              i32.const 3
                              i32.or
                              i32.store offset=4
                              local.get $l1
                              local.get $l3
                              i32.add
                              local.tee $l1
                              local.get $l1
                              i32.load offset=4
                              i32.const 1
                              i32.or
                              i32.store offset=4
                              br $B0
                            end
                            local.get $l4
                            i32.const 3312
                            i32.load
                            local.tee $l8
                            i32.le_u
                            br_if $B10
                            local.get $p0
                            if $I15
                              block $B16
                                local.get $p0
                                local.get $l1
                                i32.shl
                                i32.const 2
                                local.get $l1
                                i32.shl
                                local.tee $p0
                                i32.const 0
                                local.get $p0
                                i32.sub
                                i32.or
                                i32.and
                                local.tee $p0
                                i32.const 0
                                local.get $p0
                                i32.sub
                                i32.and
                                i32.const -1
                                i32.add
                                local.tee $p0
                                local.get $p0
                                i32.const 12
                                i32.shr_u
                                i32.const 16
                                i32.and
                                local.tee $p0
                                i32.shr_u
                                local.tee $l1
                                i32.const 5
                                i32.shr_u
                                i32.const 8
                                i32.and
                                local.tee $l3
                                local.get $p0
                                i32.or
                                local.get $l1
                                local.get $l3
                                i32.shr_u
                                local.tee $p0
                                i32.const 2
                                i32.shr_u
                                i32.const 4
                                i32.and
                                local.tee $l1
                                i32.or
                                local.get $p0
                                local.get $l1
                                i32.shr_u
                                local.tee $p0
                                i32.const 1
                                i32.shr_u
                                i32.const 2
                                i32.and
                                local.tee $l1
                                i32.or
                                local.get $p0
                                local.get $l1
                                i32.shr_u
                                local.tee $p0
                                i32.const 1
                                i32.shr_u
                                i32.const 1
                                i32.and
                                local.tee $l1
                                i32.or
                                local.get $p0
                                local.get $l1
                                i32.shr_u
                                i32.add
                                local.tee $l3
                                i32.const 3
                                i32.shl
                                local.tee $l2
                                i32.const 3352
                                i32.add
                                i32.load
                                local.tee $l1
                                i32.load offset=8
                                local.tee $p0
                                local.get $l2
                                i32.const 3344
                                i32.add
                                local.tee $l2
                                i32.eq
                                if $I17
                                  i32.const 3304
                                  local.get $l6
                                  i32.const -2
                                  local.get $l3
                                  i32.rotl
                                  i32.and
                                  local.tee $l6
                                  i32.store
                                  br $B16
                                end
                                i32.const 3320
                                i32.load
                                drop
                                local.get $p0
                                local.get $l2
                                i32.store offset=12
                                local.get $l2
                                local.get $p0
                                i32.store offset=8
                              end
                              local.get $l1
                              i32.const 8
                              i32.add
                              local.set $p0
                              local.get $l1
                              local.get $l4
                              i32.const 3
                              i32.or
                              i32.store offset=4
                              local.get $l1
                              local.get $l4
                              i32.add
                              local.tee $l2
                              local.get $l3
                              i32.const 3
                              i32.shl
                              local.tee $l5
                              local.get $l4
                              i32.sub
                              local.tee $l3
                              i32.const 1
                              i32.or
                              i32.store offset=4
                              local.get $l1
                              local.get $l5
                              i32.add
                              local.get $l3
                              i32.store
                              local.get $l8
                              if $I18
                                local.get $l8
                                i32.const 3
                                i32.shr_u
                                local.tee $l5
                                i32.const 3
                                i32.shl
                                i32.const 3344
                                i32.add
                                local.set $l4
                                i32.const 3324
                                i32.load
                                local.set $l1
                                block $B19 (result i32)
                                  local.get $l6
                                  i32.const 1
                                  local.get $l5
                                  i32.shl
                                  local.tee $l5
                                  i32.and
                                  i32.eqz
                                  if $I20
                                    i32.const 3304
                                    local.get $l5
                                    local.get $l6
                                    i32.or
                                    i32.store
                                    local.get $l4
                                    br $B19
                                  end
                                  local.get $l4
                                  i32.load offset=8
                                end
                                local.set $l5
                                local.get $l4
                                local.get $l1
                                i32.store offset=8
                                local.get $l5
                                local.get $l1
                                i32.store offset=12
                                local.get $l1
                                local.get $l4
                                i32.store offset=12
                                local.get $l1
                                local.get $l5
                                i32.store offset=8
                              end
                              i32.const 3324
                              local.get $l2
                              i32.store
                              i32.const 3312
                              local.get $l3
                              i32.store
                              br $B0
                            end
                            i32.const 3308
                            i32.load
                            local.tee $l9
                            i32.eqz
                            br_if $B10
                            local.get $l9
                            i32.const 0
                            local.get $l9
                            i32.sub
                            i32.and
                            i32.const -1
                            i32.add
                            local.tee $p0
                            local.get $p0
                            i32.const 12
                            i32.shr_u
                            i32.const 16
                            i32.and
                            local.tee $p0
                            i32.shr_u
                            local.tee $l1
                            i32.const 5
                            i32.shr_u
                            i32.const 8
                            i32.and
                            local.tee $l3
                            local.get $p0
                            i32.or
                            local.get $l1
                            local.get $l3
                            i32.shr_u
                            local.tee $p0
                            i32.const 2
                            i32.shr_u
                            i32.const 4
                            i32.and
                            local.tee $l1
                            i32.or
                            local.get $p0
                            local.get $l1
                            i32.shr_u
                            local.tee $p0
                            i32.const 1
                            i32.shr_u
                            i32.const 2
                            i32.and
                            local.tee $l1
                            i32.or
                            local.get $p0
                            local.get $l1
                            i32.shr_u
                            local.tee $p0
                            i32.const 1
                            i32.shr_u
                            i32.const 1
                            i32.and
                            local.tee $l1
                            i32.or
                            local.get $p0
                            local.get $l1
                            i32.shr_u
                            i32.add
                            i32.const 2
                            i32.shl
                            i32.const 3608
                            i32.add
                            i32.load
                            local.tee $l2
                            i32.load offset=4
                            i32.const -8
                            i32.and
                            local.get $l4
                            i32.sub
                            local.set $l1
                            local.get $l2
                            local.set $l3
                            loop $L21
                              block $B22
                                local.get $l3
                                i32.load offset=16
                                local.tee $p0
                                i32.eqz
                                if $I23
                                  local.get $l3
                                  i32.load offset=20
                                  local.tee $p0
                                  i32.eqz
                                  br_if $B22
                                end
                                local.get $p0
                                i32.load offset=4
                                i32.const -8
                                i32.and
                                local.get $l4
                                i32.sub
                                local.tee $l3
                                local.get $l1
                                local.get $l3
                                local.get $l1
                                i32.lt_u
                                local.tee $l3
                                select
                                local.set $l1
                                local.get $p0
                                local.get $l2
                                local.get $l3
                                select
                                local.set $l2
                                local.get $p0
                                local.set $l3
                                br $L21
                              end
                            end
                            local.get $l2
                            i32.load offset=24
                            local.set $l10
                            local.get $l2
                            local.get $l2
                            i32.load offset=12
                            local.tee $l5
                            i32.ne
                            if $I24
                              i32.const 3320
                              i32.load
                              local.get $l2
                              i32.load offset=8
                              local.tee $p0
                              i32.le_u
                              if $I25
                                local.get $p0
                                i32.load offset=12
                                drop
                              end
                              local.get $p0
                              local.get $l5
                              i32.store offset=12
                              local.get $l5
                              local.get $p0
                              i32.store offset=8
                              br $B1
                            end
                            local.get $l2
                            i32.const 20
                            i32.add
                            local.tee $l3
                            i32.load
                            local.tee $p0
                            i32.eqz
                            if $I26
                              local.get $l2
                              i32.load offset=16
                              local.tee $p0
                              i32.eqz
                              br_if $B9
                              local.get $l2
                              i32.const 16
                              i32.add
                              local.set $l3
                            end
                            loop $L27
                              local.get $l3
                              local.set $l7
                              local.get $p0
                              local.tee $l5
                              i32.const 20
                              i32.add
                              local.tee $l3
                              i32.load
                              local.tee $p0
                              br_if $L27
                              local.get $l5
                              i32.const 16
                              i32.add
                              local.set $l3
                              local.get $l5
                              i32.load offset=16
                              local.tee $p0
                              br_if $L27
                            end
                            local.get $l7
                            i32.const 0
                            i32.store
                            br $B1
                          end
                          i32.const -1
                          local.set $l4
                          local.get $p0
                          i32.const -65
                          i32.gt_u
                          br_if $B10
                          local.get $p0
                          i32.const 11
                          i32.add
                          local.tee $p0
                          i32.const -8
                          i32.and
                          local.set $l4
                          i32.const 3308
                          i32.load
                          local.tee $l8
                          i32.eqz
                          br_if $B10
                          block $B28 (result i32)
                            i32.const 0
                            local.get $p0
                            i32.const 8
                            i32.shr_u
                            local.tee $p0
                            i32.eqz
                            br_if $B28
                            drop
                            i32.const 31
                            local.get $l4
                            i32.const 16777215
                            i32.gt_u
                            br_if $B28
                            drop
                            local.get $p0
                            local.get $p0
                            i32.const 1048320
                            i32.add
                            i32.const 16
                            i32.shr_u
                            i32.const 8
                            i32.and
                            local.tee $l1
                            i32.shl
                            local.tee $p0
                            local.get $p0
                            i32.const 520192
                            i32.add
                            i32.const 16
                            i32.shr_u
                            i32.const 4
                            i32.and
                            local.tee $p0
                            i32.shl
                            local.tee $l3
                            local.get $l3
                            i32.const 245760
                            i32.add
                            i32.const 16
                            i32.shr_u
                            i32.const 2
                            i32.and
                            local.tee $l3
                            i32.shl
                            i32.const 15
                            i32.shr_u
                            local.get $p0
                            local.get $l1
                            i32.or
                            local.get $l3
                            i32.or
                            i32.sub
                            local.tee $p0
                            i32.const 1
                            i32.shl
                            local.get $l4
                            local.get $p0
                            i32.const 21
                            i32.add
                            i32.shr_u
                            i32.const 1
                            i32.and
                            i32.or
                            i32.const 28
                            i32.add
                          end
                          local.set $l7
                          i32.const 0
                          local.get $l4
                          i32.sub
                          local.set $l3
                          block $B29
                            block $B30
                              block $B31
                                local.get $l7
                                i32.const 2
                                i32.shl
                                i32.const 3608
                                i32.add
                                i32.load
                                local.tee $l1
                                i32.eqz
                                if $I32
                                  i32.const 0
                                  local.set $p0
                                  br $B31
                                end
                                local.get $l4
                                i32.const 0
                                i32.const 25
                                local.get $l7
                                i32.const 1
                                i32.shr_u
                                i32.sub
                                local.get $l7
                                i32.const 31
                                i32.eq
                                select
                                i32.shl
                                local.set $l2
                                i32.const 0
                                local.set $p0
                                loop $L33
                                  block $B34
                                    local.get $l1
                                    i32.load offset=4
                                    i32.const -8
                                    i32.and
                                    local.get $l4
                                    i32.sub
                                    local.tee $l6
                                    local.get $l3
                                    i32.ge_u
                                    br_if $B34
                                    local.get $l1
                                    local.set $l5
                                    local.get $l6
                                    local.tee $l3
                                    br_if $B34
                                    i32.const 0
                                    local.set $l3
                                    local.get $l1
                                    local.set $p0
                                    br $B30
                                  end
                                  local.get $p0
                                  local.get $l1
                                  i32.load offset=20
                                  local.tee $l6
                                  local.get $l6
                                  local.get $l1
                                  local.get $l2
                                  i32.const 29
                                  i32.shr_u
                                  i32.const 4
                                  i32.and
                                  i32.add
                                  i32.load offset=16
                                  local.tee $l1
                                  i32.eq
                                  select
                                  local.get $p0
                                  local.get $l6
                                  select
                                  local.set $p0
                                  local.get $l2
                                  local.get $l1
                                  i32.const 0
                                  i32.ne
                                  i32.shl
                                  local.set $l2
                                  local.get $l1
                                  br_if $L33
                                end
                              end
                              local.get $p0
                              local.get $l5
                              i32.or
                              i32.eqz
                              if $I35
                                i32.const 2
                                local.get $l7
                                i32.shl
                                local.tee $p0
                                i32.const 0
                                local.get $p0
                                i32.sub
                                i32.or
                                local.get $l8
                                i32.and
                                local.tee $p0
                                i32.eqz
                                br_if $B10
                                local.get $p0
                                i32.const 0
                                local.get $p0
                                i32.sub
                                i32.and
                                i32.const -1
                                i32.add
                                local.tee $p0
                                local.get $p0
                                i32.const 12
                                i32.shr_u
                                i32.const 16
                                i32.and
                                local.tee $p0
                                i32.shr_u
                                local.tee $l1
                                i32.const 5
                                i32.shr_u
                                i32.const 8
                                i32.and
                                local.tee $l2
                                local.get $p0
                                i32.or
                                local.get $l1
                                local.get $l2
                                i32.shr_u
                                local.tee $p0
                                i32.const 2
                                i32.shr_u
                                i32.const 4
                                i32.and
                                local.tee $l1
                                i32.or
                                local.get $p0
                                local.get $l1
                                i32.shr_u
                                local.tee $p0
                                i32.const 1
                                i32.shr_u
                                i32.const 2
                                i32.and
                                local.tee $l1
                                i32.or
                                local.get $p0
                                local.get $l1
                                i32.shr_u
                                local.tee $p0
                                i32.const 1
                                i32.shr_u
                                i32.const 1
                                i32.and
                                local.tee $l1
                                i32.or
                                local.get $p0
                                local.get $l1
                                i32.shr_u
                                i32.add
                                i32.const 2
                                i32.shl
                                i32.const 3608
                                i32.add
                                i32.load
                                local.set $p0
                              end
                              local.get $p0
                              i32.eqz
                              br_if $B29
                            end
                            loop $L36
                              local.get $p0
                              i32.load offset=4
                              i32.const -8
                              i32.and
                              local.get $l4
                              i32.sub
                              local.tee $l6
                              local.get $l3
                              i32.lt_u
                              local.set $l2
                              local.get $l6
                              local.get $l3
                              local.get $l2
                              select
                              local.set $l3
                              local.get $p0
                              local.get $l5
                              local.get $l2
                              select
                              local.set $l5
                              local.get $p0
                              i32.load offset=16
                              local.tee $l1
                              if $I37 (result i32)
                                local.get $l1
                              else
                                local.get $p0
                                i32.load offset=20
                              end
                              local.tee $p0
                              br_if $L36
                            end
                          end
                          local.get $l5
                          i32.eqz
                          br_if $B10
                          local.get $l3
                          i32.const 3312
                          i32.load
                          local.get $l4
                          i32.sub
                          i32.ge_u
                          br_if $B10
                          local.get $l5
                          i32.load offset=24
                          local.set $l7
                          local.get $l5
                          local.get $l5
                          i32.load offset=12
                          local.tee $l2
                          i32.ne
                          if $I38
                            i32.const 3320
                            i32.load
                            local.get $l5
                            i32.load offset=8
                            local.tee $p0
                            i32.le_u
                            if $I39
                              local.get $p0
                              i32.load offset=12
                              drop
                            end
                            local.get $p0
                            local.get $l2
                            i32.store offset=12
                            local.get $l2
                            local.get $p0
                            i32.store offset=8
                            br $B2
                          end
                          local.get $l5
                          i32.const 20
                          i32.add
                          local.tee $l1
                          i32.load
                          local.tee $p0
                          i32.eqz
                          if $I40
                            local.get $l5
                            i32.load offset=16
                            local.tee $p0
                            i32.eqz
                            br_if $B8
                            local.get $l5
                            i32.const 16
                            i32.add
                            local.set $l1
                          end
                          loop $L41
                            local.get $l1
                            local.set $l6
                            local.get $p0
                            local.tee $l2
                            i32.const 20
                            i32.add
                            local.tee $l1
                            i32.load
                            local.tee $p0
                            br_if $L41
                            local.get $l2
                            i32.const 16
                            i32.add
                            local.set $l1
                            local.get $l2
                            i32.load offset=16
                            local.tee $p0
                            br_if $L41
                          end
                          local.get $l6
                          i32.const 0
                          i32.store
                          br $B2
                        end
                        i32.const 3312
                        i32.load
                        local.tee $p0
                        local.get $l4
                        i32.ge_u
                        if $I42
                          i32.const 3324
                          i32.load
                          local.set $l1
                          block $B43
                            local.get $p0
                            local.get $l4
                            i32.sub
                            local.tee $l3
                            i32.const 16
                            i32.ge_u
                            if $I44
                              i32.const 3312
                              local.get $l3
                              i32.store
                              i32.const 3324
                              local.get $l1
                              local.get $l4
                              i32.add
                              local.tee $l2
                              i32.store
                              local.get $l2
                              local.get $l3
                              i32.const 1
                              i32.or
                              i32.store offset=4
                              local.get $p0
                              local.get $l1
                              i32.add
                              local.get $l3
                              i32.store
                              local.get $l1
                              local.get $l4
                              i32.const 3
                              i32.or
                              i32.store offset=4
                              br $B43
                            end
                            i32.const 3324
                            i32.const 0
                            i32.store
                            i32.const 3312
                            i32.const 0
                            i32.store
                            local.get $l1
                            local.get $p0
                            i32.const 3
                            i32.or
                            i32.store offset=4
                            local.get $p0
                            local.get $l1
                            i32.add
                            local.tee $p0
                            local.get $p0
                            i32.load offset=4
                            i32.const 1
                            i32.or
                            i32.store offset=4
                          end
                          local.get $l1
                          i32.const 8
                          i32.add
                          local.set $p0
                          br $B0
                        end
                        i32.const 3316
                        i32.load
                        local.tee $l2
                        local.get $l4
                        i32.gt_u
                        if $I45
                          i32.const 3316
                          local.get $l2
                          local.get $l4
                          i32.sub
                          local.tee $l1
                          i32.store
                          i32.const 3328
                          i32.const 3328
                          i32.load
                          local.tee $p0
                          local.get $l4
                          i32.add
                          local.tee $l3
                          i32.store
                          local.get $l3
                          local.get $l1
                          i32.const 1
                          i32.or
                          i32.store offset=4
                          local.get $p0
                          local.get $l4
                          i32.const 3
                          i32.or
                          i32.store offset=4
                          local.get $p0
                          i32.const 8
                          i32.add
                          local.set $p0
                          br $B0
                        end
                        i32.const 0
                        local.set $p0
                        local.get $l4
                        i32.const 47
                        i32.add
                        local.tee $l8
                        block $B46 (result i32)
                          i32.const 3776
                          i32.load
                          if $I47
                            i32.const 3784
                            i32.load
                            br $B46
                          end
                          i32.const 3788
                          i64.const -1
                          i64.store align=4
                          i32.const 3780
                          i64.const 17592186048512
                          i64.store align=4
                          i32.const 3776
                          local.get $l11
                          i32.const 12
                          i32.add
                          i32.const -16
                          i32.and
                          i32.const 1431655768
                          i32.xor
                          i32.store
                          i32.const 3796
                          i32.const 0
                          i32.store
                          i32.const 3748
                          i32.const 0
                          i32.store
                          i32.const 4096
                        end
                        local.tee $l1
                        i32.add
                        local.tee $l6
                        i32.const 0
                        local.get $l1
                        i32.sub
                        local.tee $l7
                        i32.and
                        local.tee $l5
                        local.get $l4
                        i32.le_u
                        br_if $B0
                        i32.const 3744
                        i32.load
                        local.tee $l1
                        if $I48
                          i32.const 3736
                          i32.load
                          local.tee $l3
                          local.get $l5
                          i32.add
                          local.tee $l9
                          local.get $l3
                          i32.le_u
                          br_if $B0
                          local.get $l9
                          local.get $l1
                          i32.gt_u
                          br_if $B0
                        end
                        i32.const 3748
                        i32.load8_u
                        i32.const 4
                        i32.and
                        br_if $B5
                        block $B49
                          block $B50
                            i32.const 3328
                            i32.load
                            local.tee $l1
                            if $I51
                              i32.const 3752
                              local.set $p0
                              loop $L52
                                local.get $p0
                                i32.load
                                local.tee $l3
                                local.get $l1
                                i32.le_u
                                if $I53
                                  local.get $l3
                                  local.get $p0
                                  i32.load offset=4
                                  i32.add
                                  local.get $l1
                                  i32.gt_u
                                  br_if $B50
                                end
                                local.get $p0
                                i32.load offset=8
                                local.tee $p0
                                br_if $L52
                              end
                            end
                            i32.const 0
                            call $f34
                            local.tee $l2
                            i32.const -1
                            i32.eq
                            br_if $B6
                            local.get $l5
                            local.set $l6
                            i32.const 3780
                            i32.load
                            local.tee $p0
                            i32.const -1
                            i32.add
                            local.tee $l1
                            local.get $l2
                            i32.and
                            if $I54
                              local.get $l5
                              local.get $l2
                              i32.sub
                              local.get $l1
                              local.get $l2
                              i32.add
                              i32.const 0
                              local.get $p0
                              i32.sub
                              i32.and
                              i32.add
                              local.set $l6
                            end
                            local.get $l6
                            local.get $l4
                            i32.le_u
                            br_if $B6
                            local.get $l6
                            i32.const 2147483646
                            i32.gt_u
                            br_if $B6
                            i32.const 3744
                            i32.load
                            local.tee $p0
                            if $I55
                              i32.const 3736
                              i32.load
                              local.tee $l1
                              local.get $l6
                              i32.add
                              local.tee $l3
                              local.get $l1
                              i32.le_u
                              br_if $B6
                              local.get $l3
                              local.get $p0
                              i32.gt_u
                              br_if $B6
                            end
                            local.get $l6
                            call $f34
                            local.tee $p0
                            local.get $l2
                            i32.ne
                            br_if $B49
                            br $B4
                          end
                          local.get $l6
                          local.get $l2
                          i32.sub
                          local.get $l7
                          i32.and
                          local.tee $l6
                          i32.const 2147483646
                          i32.gt_u
                          br_if $B6
                          local.get $l6
                          call $f34
                          local.tee $l2
                          local.get $p0
                          i32.load
                          local.get $p0
                          i32.load offset=4
                          i32.add
                          i32.eq
                          br_if $B7
                          local.get $l2
                          local.set $p0
                        end
                        local.get $p0
                        local.set $l2
                        block $B56
                          local.get $l4
                          i32.const 48
                          i32.add
                          local.get $l6
                          i32.le_u
                          br_if $B56
                          local.get $l6
                          i32.const 2147483646
                          i32.gt_u
                          br_if $B56
                          local.get $l2
                          i32.const -1
                          i32.eq
                          br_if $B56
                          i32.const 3784
                          i32.load
                          local.tee $p0
                          local.get $l8
                          local.get $l6
                          i32.sub
                          i32.add
                          i32.const 0
                          local.get $p0
                          i32.sub
                          i32.and
                          local.tee $p0
                          i32.const 2147483646
                          i32.gt_u
                          br_if $B4
                          local.get $p0
                          call $f34
                          i32.const -1
                          i32.ne
                          if $I57
                            local.get $p0
                            local.get $l6
                            i32.add
                            local.set $l6
                            br $B4
                          end
                          i32.const 0
                          local.get $l6
                          i32.sub
                          call $f34
                          drop
                          br $B6
                        end
                        local.get $l2
                        i32.const -1
                        i32.ne
                        br_if $B4
                        br $B6
                      end
                      i32.const 0
                      local.set $l5
                      br $B1
                    end
                    i32.const 0
                    local.set $l2
                    br $B2
                  end
                  local.get $l2
                  i32.const -1
                  i32.ne
                  br_if $B4
                end
                i32.const 3748
                i32.const 3748
                i32.load
                i32.const 4
                i32.or
                i32.store
              end
              local.get $l5
              i32.const 2147483646
              i32.gt_u
              br_if $B3
              local.get $l5
              call $f34
              local.tee $l2
              i32.const 0
              call $f34
              local.tee $p0
              i32.ge_u
              br_if $B3
              local.get $l2
              i32.const -1
              i32.eq
              br_if $B3
              local.get $p0
              i32.const -1
              i32.eq
              br_if $B3
              local.get $p0
              local.get $l2
              i32.sub
              local.tee $l6
              local.get $l4
              i32.const 40
              i32.add
              i32.le_u
              br_if $B3
            end
            i32.const 3736
            i32.const 3736
            i32.load
            local.get $l6
            i32.add
            local.tee $p0
            i32.store
            local.get $p0
            i32.const 3740
            i32.load
            i32.gt_u
            if $I58
              i32.const 3740
              local.get $p0
              i32.store
            end
            block $B59
              block $B60
                block $B61
                  i32.const 3328
                  i32.load
                  local.tee $l1
                  if $I62
                    i32.const 3752
                    local.set $p0
                    loop $L63
                      local.get $l2
                      local.get $p0
                      i32.load
                      local.tee $l3
                      local.get $p0
                      i32.load offset=4
                      local.tee $l5
                      i32.add
                      i32.eq
                      br_if $B61
                      local.get $p0
                      i32.load offset=8
                      local.tee $p0
                      br_if $L63
                    end
                    br $B60
                  end
                  i32.const 3320
                  i32.load
                  local.tee $p0
                  i32.const 0
                  local.get $l2
                  local.get $p0
                  i32.ge_u
                  select
                  i32.eqz
                  if $I64
                    i32.const 3320
                    local.get $l2
                    i32.store
                  end
                  i32.const 0
                  local.set $p0
                  i32.const 3756
                  local.get $l6
                  i32.store
                  i32.const 3752
                  local.get $l2
                  i32.store
                  i32.const 3336
                  i32.const -1
                  i32.store
                  i32.const 3340
                  i32.const 3776
                  i32.load
                  i32.store
                  i32.const 3764
                  i32.const 0
                  i32.store
                  loop $L65
                    local.get $p0
                    i32.const 3
                    i32.shl
                    local.tee $l1
                    i32.const 3352
                    i32.add
                    local.get $l1
                    i32.const 3344
                    i32.add
                    local.tee $l3
                    i32.store
                    local.get $l1
                    i32.const 3356
                    i32.add
                    local.get $l3
                    i32.store
                    local.get $p0
                    i32.const 1
                    i32.add
                    local.tee $p0
                    i32.const 32
                    i32.ne
                    br_if $L65
                  end
                  i32.const 3316
                  local.get $l6
                  i32.const -40
                  i32.add
                  local.tee $p0
                  i32.const -8
                  local.get $l2
                  i32.sub
                  i32.const 7
                  i32.and
                  i32.const 0
                  local.get $l2
                  i32.const 8
                  i32.add
                  i32.const 7
                  i32.and
                  select
                  local.tee $l1
                  i32.sub
                  local.tee $l3
                  i32.store
                  i32.const 3328
                  local.get $l1
                  local.get $l2
                  i32.add
                  local.tee $l1
                  i32.store
                  local.get $l1
                  local.get $l3
                  i32.const 1
                  i32.or
                  i32.store offset=4
                  local.get $p0
                  local.get $l2
                  i32.add
                  i32.const 40
                  i32.store offset=4
                  i32.const 3332
                  i32.const 3792
                  i32.load
                  i32.store
                  br $B59
                end
                local.get $p0
                i32.load8_u offset=12
                i32.const 8
                i32.and
                br_if $B60
                local.get $l2
                local.get $l1
                i32.le_u
                br_if $B60
                local.get $l3
                local.get $l1
                i32.gt_u
                br_if $B60
                local.get $p0
                local.get $l5
                local.get $l6
                i32.add
                i32.store offset=4
                i32.const 3328
                local.get $l1
                i32.const -8
                local.get $l1
                i32.sub
                i32.const 7
                i32.and
                i32.const 0
                local.get $l1
                i32.const 8
                i32.add
                i32.const 7
                i32.and
                select
                local.tee $p0
                i32.add
                local.tee $l3
                i32.store
                i32.const 3316
                i32.const 3316
                i32.load
                local.get $l6
                i32.add
                local.tee $l2
                local.get $p0
                i32.sub
                local.tee $p0
                i32.store
                local.get $l3
                local.get $p0
                i32.const 1
                i32.or
                i32.store offset=4
                local.get $l1
                local.get $l2
                i32.add
                i32.const 40
                i32.store offset=4
                i32.const 3332
                i32.const 3792
                i32.load
                i32.store
                br $B59
              end
              local.get $l2
              i32.const 3320
              i32.load
              local.tee $l5
              i32.lt_u
              if $I66
                i32.const 3320
                local.get $l2
                i32.store
                local.get $l2
                local.set $l5
              end
              local.get $l2
              local.get $l6
              i32.add
              local.set $l3
              i32.const 3752
              local.set $p0
              block $B67
                block $B68
                  block $B69
                    block $B70
                      block $B71
                        block $B72
                          loop $L73
                            local.get $l3
                            local.get $p0
                            i32.load
                            i32.ne
                            if $I74
                              local.get $p0
                              i32.load offset=8
                              local.tee $p0
                              br_if $L73
                              br $B72
                            end
                          end
                          local.get $p0
                          i32.load8_u offset=12
                          i32.const 8
                          i32.and
                          i32.eqz
                          br_if $B71
                        end
                        i32.const 3752
                        local.set $p0
                        loop $L75
                          local.get $p0
                          i32.load
                          local.tee $l3
                          local.get $l1
                          i32.le_u
                          if $I76
                            local.get $l3
                            local.get $p0
                            i32.load offset=4
                            i32.add
                            local.tee $l3
                            local.get $l1
                            i32.gt_u
                            br_if $B70
                          end
                          local.get $p0
                          i32.load offset=8
                          local.set $p0
                          br $L75
                          unreachable
                        end
                        unreachable
                      end
                      local.get $p0
                      local.get $l2
                      i32.store
                      local.get $p0
                      local.get $p0
                      i32.load offset=4
                      local.get $l6
                      i32.add
                      i32.store offset=4
                      local.get $l2
                      i32.const -8
                      local.get $l2
                      i32.sub
                      i32.const 7
                      i32.and
                      i32.const 0
                      local.get $l2
                      i32.const 8
                      i32.add
                      i32.const 7
                      i32.and
                      select
                      i32.add
                      local.tee $l7
                      local.get $l4
                      i32.const 3
                      i32.or
                      i32.store offset=4
                      local.get $l3
                      i32.const -8
                      local.get $l3
                      i32.sub
                      i32.const 7
                      i32.and
                      i32.const 0
                      local.get $l3
                      i32.const 8
                      i32.add
                      i32.const 7
                      i32.and
                      select
                      i32.add
                      local.tee $l2
                      local.get $l7
                      i32.sub
                      local.get $l4
                      i32.sub
                      local.set $p0
                      local.get $l4
                      local.get $l7
                      i32.add
                      local.set $l3
                      local.get $l1
                      local.get $l2
                      i32.eq
                      if $I77
                        i32.const 3328
                        local.get $l3
                        i32.store
                        i32.const 3316
                        i32.const 3316
                        i32.load
                        local.get $p0
                        i32.add
                        local.tee $p0
                        i32.store
                        local.get $l3
                        local.get $p0
                        i32.const 1
                        i32.or
                        i32.store offset=4
                        br $B68
                      end
                      local.get $l2
                      i32.const 3324
                      i32.load
                      i32.eq
                      if $I78
                        i32.const 3324
                        local.get $l3
                        i32.store
                        i32.const 3312
                        i32.const 3312
                        i32.load
                        local.get $p0
                        i32.add
                        local.tee $p0
                        i32.store
                        local.get $l3
                        local.get $p0
                        i32.const 1
                        i32.or
                        i32.store offset=4
                        local.get $p0
                        local.get $l3
                        i32.add
                        local.get $p0
                        i32.store
                        br $B68
                      end
                      local.get $l2
                      i32.load offset=4
                      local.tee $l1
                      i32.const 3
                      i32.and
                      i32.const 1
                      i32.eq
                      if $I79
                        local.get $l1
                        i32.const -8
                        i32.and
                        local.set $l8
                        block $B80
                          local.get $l1
                          i32.const 255
                          i32.le_u
                          if $I81
                            local.get $l2
                            i32.load offset=8
                            local.tee $l6
                            local.get $l1
                            i32.const 3
                            i32.shr_u
                            local.tee $l9
                            i32.const 3
                            i32.shl
                            i32.const 3344
                            i32.add
                            i32.ne
                            drop
                            local.get $l2
                            i32.load offset=12
                            local.tee $l4
                            local.get $l6
                            i32.eq
                            if $I82
                              i32.const 3304
                              i32.const 3304
                              i32.load
                              i32.const -2
                              local.get $l9
                              i32.rotl
                              i32.and
                              i32.store
                              br $B80
                            end
                            local.get $l6
                            local.get $l4
                            i32.store offset=12
                            local.get $l4
                            local.get $l6
                            i32.store offset=8
                            br $B80
                          end
                          local.get $l2
                          i32.load offset=24
                          local.set $l9
                          block $B83
                            local.get $l2
                            local.get $l2
                            i32.load offset=12
                            local.tee $l6
                            i32.ne
                            if $I84
                              local.get $l5
                              local.get $l2
                              i32.load offset=8
                              local.tee $l1
                              i32.le_u
                              if $I85
                                local.get $l1
                                i32.load offset=12
                                drop
                              end
                              local.get $l1
                              local.get $l6
                              i32.store offset=12
                              local.get $l6
                              local.get $l1
                              i32.store offset=8
                              br $B83
                            end
                            block $B86
                              local.get $l2
                              i32.const 20
                              i32.add
                              local.tee $l1
                              i32.load
                              local.tee $l4
                              br_if $B86
                              local.get $l2
                              i32.const 16
                              i32.add
                              local.tee $l1
                              i32.load
                              local.tee $l4
                              br_if $B86
                              i32.const 0
                              local.set $l6
                              br $B83
                            end
                            loop $L87
                              local.get $l1
                              local.set $l5
                              local.get $l4
                              local.tee $l6
                              i32.const 20
                              i32.add
                              local.tee $l1
                              i32.load
                              local.tee $l4
                              br_if $L87
                              local.get $l6
                              i32.const 16
                              i32.add
                              local.set $l1
                              local.get $l6
                              i32.load offset=16
                              local.tee $l4
                              br_if $L87
                            end
                            local.get $l5
                            i32.const 0
                            i32.store
                          end
                          local.get $l9
                          i32.eqz
                          br_if $B80
                          block $B88
                            local.get $l2
                            local.get $l2
                            i32.load offset=28
                            local.tee $l4
                            i32.const 2
                            i32.shl
                            i32.const 3608
                            i32.add
                            local.tee $l1
                            i32.load
                            i32.eq
                            if $I89
                              local.get $l1
                              local.get $l6
                              i32.store
                              local.get $l6
                              br_if $B88
                              i32.const 3308
                              i32.const 3308
                              i32.load
                              i32.const -2
                              local.get $l4
                              i32.rotl
                              i32.and
                              i32.store
                              br $B80
                            end
                            local.get $l9
                            i32.const 16
                            i32.const 20
                            local.get $l9
                            i32.load offset=16
                            local.get $l2
                            i32.eq
                            select
                            i32.add
                            local.get $l6
                            i32.store
                            local.get $l6
                            i32.eqz
                            br_if $B80
                          end
                          local.get $l6
                          local.get $l9
                          i32.store offset=24
                          local.get $l2
                          i32.load offset=16
                          local.tee $l1
                          if $I90
                            local.get $l6
                            local.get $l1
                            i32.store offset=16
                            local.get $l1
                            local.get $l6
                            i32.store offset=24
                          end
                          local.get $l2
                          i32.load offset=20
                          local.tee $l1
                          i32.eqz
                          br_if $B80
                          local.get $l6
                          local.get $l1
                          i32.store offset=20
                          local.get $l1
                          local.get $l6
                          i32.store offset=24
                        end
                        local.get $l2
                        local.get $l8
                        i32.add
                        local.set $l2
                        local.get $p0
                        local.get $l8
                        i32.add
                        local.set $p0
                      end
                      local.get $l2
                      local.get $l2
                      i32.load offset=4
                      i32.const -2
                      i32.and
                      i32.store offset=4
                      local.get $l3
                      local.get $p0
                      i32.const 1
                      i32.or
                      i32.store offset=4
                      local.get $p0
                      local.get $l3
                      i32.add
                      local.get $p0
                      i32.store
                      local.get $p0
                      i32.const 255
                      i32.le_u
                      if $I91
                        local.get $p0
                        i32.const 3
                        i32.shr_u
                        local.tee $l1
                        i32.const 3
                        i32.shl
                        i32.const 3344
                        i32.add
                        local.set $p0
                        block $B92 (result i32)
                          i32.const 3304
                          i32.load
                          local.tee $l4
                          i32.const 1
                          local.get $l1
                          i32.shl
                          local.tee $l1
                          i32.and
                          i32.eqz
                          if $I93
                            i32.const 3304
                            local.get $l1
                            local.get $l4
                            i32.or
                            i32.store
                            local.get $p0
                            br $B92
                          end
                          local.get $p0
                          i32.load offset=8
                        end
                        local.set $l1
                        local.get $p0
                        local.get $l3
                        i32.store offset=8
                        local.get $l1
                        local.get $l3
                        i32.store offset=12
                        local.get $l3
                        local.get $p0
                        i32.store offset=12
                        local.get $l3
                        local.get $l1
                        i32.store offset=8
                        br $B68
                      end
                      local.get $l3
                      block $B94 (result i32)
                        i32.const 0
                        local.get $p0
                        i32.const 8
                        i32.shr_u
                        local.tee $l4
                        i32.eqz
                        br_if $B94
                        drop
                        i32.const 31
                        local.get $p0
                        i32.const 16777215
                        i32.gt_u
                        br_if $B94
                        drop
                        local.get $l4
                        local.get $l4
                        i32.const 1048320
                        i32.add
                        i32.const 16
                        i32.shr_u
                        i32.const 8
                        i32.and
                        local.tee $l1
                        i32.shl
                        local.tee $l4
                        local.get $l4
                        i32.const 520192
                        i32.add
                        i32.const 16
                        i32.shr_u
                        i32.const 4
                        i32.and
                        local.tee $l4
                        i32.shl
                        local.tee $l2
                        local.get $l2
                        i32.const 245760
                        i32.add
                        i32.const 16
                        i32.shr_u
                        i32.const 2
                        i32.and
                        local.tee $l2
                        i32.shl
                        i32.const 15
                        i32.shr_u
                        local.get $l1
                        local.get $l4
                        i32.or
                        local.get $l2
                        i32.or
                        i32.sub
                        local.tee $l1
                        i32.const 1
                        i32.shl
                        local.get $p0
                        local.get $l1
                        i32.const 21
                        i32.add
                        i32.shr_u
                        i32.const 1
                        i32.and
                        i32.or
                        i32.const 28
                        i32.add
                      end
                      local.tee $l1
                      i32.store offset=28
                      local.get $l3
                      i64.const 0
                      i64.store offset=16 align=4
                      local.get $l1
                      i32.const 2
                      i32.shl
                      i32.const 3608
                      i32.add
                      local.set $l4
                      block $B95
                        i32.const 3308
                        i32.load
                        local.tee $l2
                        i32.const 1
                        local.get $l1
                        i32.shl
                        local.tee $l5
                        i32.and
                        i32.eqz
                        if $I96
                          i32.const 3308
                          local.get $l2
                          local.get $l5
                          i32.or
                          i32.store
                          local.get $l4
                          local.get $l3
                          i32.store
                          local.get $l3
                          local.get $l4
                          i32.store offset=24
                          br $B95
                        end
                        local.get $p0
                        i32.const 0
                        i32.const 25
                        local.get $l1
                        i32.const 1
                        i32.shr_u
                        i32.sub
                        local.get $l1
                        i32.const 31
                        i32.eq
                        select
                        i32.shl
                        local.set $l1
                        local.get $l4
                        i32.load
                        local.set $l2
                        loop $L97
                          local.get $l2
                          local.tee $l4
                          i32.load offset=4
                          i32.const -8
                          i32.and
                          local.get $p0
                          i32.eq
                          br_if $B69
                          local.get $l1
                          i32.const 29
                          i32.shr_u
                          local.set $l2
                          local.get $l1
                          i32.const 1
                          i32.shl
                          local.set $l1
                          local.get $l4
                          local.get $l2
                          i32.const 4
                          i32.and
                          i32.add
                          i32.const 16
                          i32.add
                          local.tee $l5
                          i32.load
                          local.tee $l2
                          br_if $L97
                        end
                        local.get $l5
                        local.get $l3
                        i32.store
                        local.get $l3
                        local.get $l4
                        i32.store offset=24
                      end
                      local.get $l3
                      local.get $l3
                      i32.store offset=12
                      local.get $l3
                      local.get $l3
                      i32.store offset=8
                      br $B68
                    end
                    i32.const 3316
                    local.get $l6
                    i32.const -40
                    i32.add
                    local.tee $p0
                    i32.const -8
                    local.get $l2
                    i32.sub
                    i32.const 7
                    i32.and
                    i32.const 0
                    local.get $l2
                    i32.const 8
                    i32.add
                    i32.const 7
                    i32.and
                    select
                    local.tee $l5
                    i32.sub
                    local.tee $l7
                    i32.store
                    i32.const 3328
                    local.get $l2
                    local.get $l5
                    i32.add
                    local.tee $l5
                    i32.store
                    local.get $l5
                    local.get $l7
                    i32.const 1
                    i32.or
                    i32.store offset=4
                    local.get $p0
                    local.get $l2
                    i32.add
                    i32.const 40
                    i32.store offset=4
                    i32.const 3332
                    i32.const 3792
                    i32.load
                    i32.store
                    local.get $l1
                    local.get $l3
                    i32.const 39
                    local.get $l3
                    i32.sub
                    i32.const 7
                    i32.and
                    i32.const 0
                    local.get $l3
                    i32.const -39
                    i32.add
                    i32.const 7
                    i32.and
                    select
                    i32.add
                    i32.const -47
                    i32.add
                    local.tee $p0
                    local.get $p0
                    local.get $l1
                    i32.const 16
                    i32.add
                    i32.lt_u
                    select
                    local.tee $l5
                    i32.const 27
                    i32.store offset=4
                    local.get $l5
                    i32.const 3760
                    i64.load align=4
                    i64.store offset=16 align=4
                    local.get $l5
                    i32.const 3752
                    i64.load align=4
                    i64.store offset=8 align=4
                    i32.const 3760
                    local.get $l5
                    i32.const 8
                    i32.add
                    i32.store
                    i32.const 3756
                    local.get $l6
                    i32.store
                    i32.const 3752
                    local.get $l2
                    i32.store
                    i32.const 3764
                    i32.const 0
                    i32.store
                    local.get $l5
                    i32.const 24
                    i32.add
                    local.set $p0
                    loop $L98
                      local.get $p0
                      i32.const 7
                      i32.store offset=4
                      local.get $p0
                      i32.const 8
                      i32.add
                      local.set $l2
                      local.get $p0
                      i32.const 4
                      i32.add
                      local.set $p0
                      local.get $l3
                      local.get $l2
                      i32.gt_u
                      br_if $L98
                    end
                    local.get $l1
                    local.get $l5
                    i32.eq
                    br_if $B59
                    local.get $l5
                    local.get $l5
                    i32.load offset=4
                    i32.const -2
                    i32.and
                    i32.store offset=4
                    local.get $l1
                    local.get $l5
                    local.get $l1
                    i32.sub
                    local.tee $l6
                    i32.const 1
                    i32.or
                    i32.store offset=4
                    local.get $l5
                    local.get $l6
                    i32.store
                    local.get $l6
                    i32.const 255
                    i32.le_u
                    if $I99
                      local.get $l6
                      i32.const 3
                      i32.shr_u
                      local.tee $l3
                      i32.const 3
                      i32.shl
                      i32.const 3344
                      i32.add
                      local.set $p0
                      block $B100 (result i32)
                        i32.const 3304
                        i32.load
                        local.tee $l2
                        i32.const 1
                        local.get $l3
                        i32.shl
                        local.tee $l3
                        i32.and
                        i32.eqz
                        if $I101
                          i32.const 3304
                          local.get $l2
                          local.get $l3
                          i32.or
                          i32.store
                          local.get $p0
                          br $B100
                        end
                        local.get $p0
                        i32.load offset=8
                      end
                      local.set $l3
                      local.get $p0
                      local.get $l1
                      i32.store offset=8
                      local.get $l3
                      local.get $l1
                      i32.store offset=12
                      local.get $l1
                      local.get $p0
                      i32.store offset=12
                      local.get $l1
                      local.get $l3
                      i32.store offset=8
                      br $B59
                    end
                    local.get $l1
                    i64.const 0
                    i64.store offset=16 align=4
                    local.get $l1
                    block $B102 (result i32)
                      i32.const 0
                      local.get $l6
                      i32.const 8
                      i32.shr_u
                      local.tee $l3
                      i32.eqz
                      br_if $B102
                      drop
                      i32.const 31
                      local.get $l6
                      i32.const 16777215
                      i32.gt_u
                      br_if $B102
                      drop
                      local.get $l3
                      local.get $l3
                      i32.const 1048320
                      i32.add
                      i32.const 16
                      i32.shr_u
                      i32.const 8
                      i32.and
                      local.tee $p0
                      i32.shl
                      local.tee $l3
                      local.get $l3
                      i32.const 520192
                      i32.add
                      i32.const 16
                      i32.shr_u
                      i32.const 4
                      i32.and
                      local.tee $l3
                      i32.shl
                      local.tee $l2
                      local.get $l2
                      i32.const 245760
                      i32.add
                      i32.const 16
                      i32.shr_u
                      i32.const 2
                      i32.and
                      local.tee $l2
                      i32.shl
                      i32.const 15
                      i32.shr_u
                      local.get $p0
                      local.get $l3
                      i32.or
                      local.get $l2
                      i32.or
                      i32.sub
                      local.tee $p0
                      i32.const 1
                      i32.shl
                      local.get $l6
                      local.get $p0
                      i32.const 21
                      i32.add
                      i32.shr_u
                      i32.const 1
                      i32.and
                      i32.or
                      i32.const 28
                      i32.add
                    end
                    local.tee $p0
                    i32.store offset=28
                    local.get $p0
                    i32.const 2
                    i32.shl
                    i32.const 3608
                    i32.add
                    local.set $l3
                    block $B103
                      i32.const 3308
                      i32.load
                      local.tee $l2
                      i32.const 1
                      local.get $p0
                      i32.shl
                      local.tee $l5
                      i32.and
                      i32.eqz
                      if $I104
                        i32.const 3308
                        local.get $l2
                        local.get $l5
                        i32.or
                        i32.store
                        local.get $l3
                        local.get $l1
                        i32.store
                        local.get $l1
                        local.get $l3
                        i32.store offset=24
                        br $B103
                      end
                      local.get $l6
                      i32.const 0
                      i32.const 25
                      local.get $p0
                      i32.const 1
                      i32.shr_u
                      i32.sub
                      local.get $p0
                      i32.const 31
                      i32.eq
                      select
                      i32.shl
                      local.set $p0
                      local.get $l3
                      i32.load
                      local.set $l2
                      loop $L105
                        local.get $l2
                        local.tee $l3
                        i32.load offset=4
                        i32.const -8
                        i32.and
                        local.get $l6
                        i32.eq
                        br_if $B67
                        local.get $p0
                        i32.const 29
                        i32.shr_u
                        local.set $l2
                        local.get $p0
                        i32.const 1
                        i32.shl
                        local.set $p0
                        local.get $l3
                        local.get $l2
                        i32.const 4
                        i32.and
                        i32.add
                        i32.const 16
                        i32.add
                        local.tee $l5
                        i32.load
                        local.tee $l2
                        br_if $L105
                      end
                      local.get $l5
                      local.get $l1
                      i32.store
                      local.get $l1
                      local.get $l3
                      i32.store offset=24
                    end
                    local.get $l1
                    local.get $l1
                    i32.store offset=12
                    local.get $l1
                    local.get $l1
                    i32.store offset=8
                    br $B59
                  end
                  local.get $l4
                  i32.load offset=8
                  local.tee $p0
                  local.get $l3
                  i32.store offset=12
                  local.get $l4
                  local.get $l3
                  i32.store offset=8
                  local.get $l3
                  i32.const 0
                  i32.store offset=24
                  local.get $l3
                  local.get $l4
                  i32.store offset=12
                  local.get $l3
                  local.get $p0
                  i32.store offset=8
                end
                local.get $l7
                i32.const 8
                i32.add
                local.set $p0
                br $B0
              end
              local.get $l3
              i32.load offset=8
              local.tee $p0
              local.get $l1
              i32.store offset=12
              local.get $l3
              local.get $l1
              i32.store offset=8
              local.get $l1
              i32.const 0
              i32.store offset=24
              local.get $l1
              local.get $l3
              i32.store offset=12
              local.get $l1
              local.get $p0
              i32.store offset=8
            end
            i32.const 3316
            i32.load
            local.tee $p0
            local.get $l4
            i32.le_u
            br_if $B3
            i32.const 3316
            local.get $p0
            local.get $l4
            i32.sub
            local.tee $l1
            i32.store
            i32.const 3328
            i32.const 3328
            i32.load
            local.tee $p0
            local.get $l4
            i32.add
            local.tee $l3
            i32.store
            local.get $l3
            local.get $l1
            i32.const 1
            i32.or
            i32.store offset=4
            local.get $p0
            local.get $l4
            i32.const 3
            i32.or
            i32.store offset=4
            local.get $p0
            i32.const 8
            i32.add
            local.set $p0
            br $B0
          end
          i32.const 2192
          i32.const 48
          i32.store
          i32.const 0
          local.set $p0
          br $B0
        end
        block $B106
          local.get $l7
          i32.eqz
          br_if $B106
          block $B107
            local.get $l5
            i32.load offset=28
            local.tee $l1
            i32.const 2
            i32.shl
            i32.const 3608
            i32.add
            local.tee $p0
            i32.load
            local.get $l5
            i32.eq
            if $I108
              local.get $p0
              local.get $l2
              i32.store
              local.get $l2
              br_if $B107
              i32.const 3308
              local.get $l8
              i32.const -2
              local.get $l1
              i32.rotl
              i32.and
              local.tee $l8
              i32.store
              br $B106
            end
            local.get $l7
            i32.const 16
            i32.const 20
            local.get $l7
            i32.load offset=16
            local.get $l5
            i32.eq
            select
            i32.add
            local.get $l2
            i32.store
            local.get $l2
            i32.eqz
            br_if $B106
          end
          local.get $l2
          local.get $l7
          i32.store offset=24
          local.get $l5
          i32.load offset=16
          local.tee $p0
          if $I109
            local.get $l2
            local.get $p0
            i32.store offset=16
            local.get $p0
            local.get $l2
            i32.store offset=24
          end
          local.get $l5
          i32.load offset=20
          local.tee $p0
          i32.eqz
          br_if $B106
          local.get $l2
          local.get $p0
          i32.store offset=20
          local.get $p0
          local.get $l2
          i32.store offset=24
        end
        block $B110
          local.get $l3
          i32.const 15
          i32.le_u
          if $I111
            local.get $l5
            local.get $l3
            local.get $l4
            i32.add
            local.tee $p0
            i32.const 3
            i32.or
            i32.store offset=4
            local.get $p0
            local.get $l5
            i32.add
            local.tee $p0
            local.get $p0
            i32.load offset=4
            i32.const 1
            i32.or
            i32.store offset=4
            br $B110
          end
          local.get $l5
          local.get $l4
          i32.const 3
          i32.or
          i32.store offset=4
          local.get $l4
          local.get $l5
          i32.add
          local.tee $l2
          local.get $l3
          i32.const 1
          i32.or
          i32.store offset=4
          local.get $l2
          local.get $l3
          i32.add
          local.get $l3
          i32.store
          local.get $l3
          i32.const 255
          i32.le_u
          if $I112
            local.get $l3
            i32.const 3
            i32.shr_u
            local.tee $l1
            i32.const 3
            i32.shl
            i32.const 3344
            i32.add
            local.set $p0
            block $B113 (result i32)
              i32.const 3304
              i32.load
              local.tee $l3
              i32.const 1
              local.get $l1
              i32.shl
              local.tee $l1
              i32.and
              i32.eqz
              if $I114
                i32.const 3304
                local.get $l1
                local.get $l3
                i32.or
                i32.store
                local.get $p0
                br $B113
              end
              local.get $p0
              i32.load offset=8
            end
            local.set $l1
            local.get $p0
            local.get $l2
            i32.store offset=8
            local.get $l1
            local.get $l2
            i32.store offset=12
            local.get $l2
            local.get $p0
            i32.store offset=12
            local.get $l2
            local.get $l1
            i32.store offset=8
            br $B110
          end
          local.get $l2
          block $B115 (result i32)
            i32.const 0
            local.get $l3
            i32.const 8
            i32.shr_u
            local.tee $l1
            i32.eqz
            br_if $B115
            drop
            i32.const 31
            local.get $l3
            i32.const 16777215
            i32.gt_u
            br_if $B115
            drop
            local.get $l1
            local.get $l1
            i32.const 1048320
            i32.add
            i32.const 16
            i32.shr_u
            i32.const 8
            i32.and
            local.tee $p0
            i32.shl
            local.tee $l1
            local.get $l1
            i32.const 520192
            i32.add
            i32.const 16
            i32.shr_u
            i32.const 4
            i32.and
            local.tee $l1
            i32.shl
            local.tee $l4
            local.get $l4
            i32.const 245760
            i32.add
            i32.const 16
            i32.shr_u
            i32.const 2
            i32.and
            local.tee $l4
            i32.shl
            i32.const 15
            i32.shr_u
            local.get $p0
            local.get $l1
            i32.or
            local.get $l4
            i32.or
            i32.sub
            local.tee $p0
            i32.const 1
            i32.shl
            local.get $l3
            local.get $p0
            i32.const 21
            i32.add
            i32.shr_u
            i32.const 1
            i32.and
            i32.or
            i32.const 28
            i32.add
          end
          local.tee $p0
          i32.store offset=28
          local.get $l2
          i64.const 0
          i64.store offset=16 align=4
          local.get $p0
          i32.const 2
          i32.shl
          i32.const 3608
          i32.add
          local.set $l1
          block $B116
            block $B117
              local.get $l8
              i32.const 1
              local.get $p0
              i32.shl
              local.tee $l4
              i32.and
              i32.eqz
              if $I118
                i32.const 3308
                local.get $l4
                local.get $l8
                i32.or
                i32.store
                local.get $l1
                local.get $l2
                i32.store
                local.get $l2
                local.get $l1
                i32.store offset=24
                br $B117
              end
              local.get $l3
              i32.const 0
              i32.const 25
              local.get $p0
              i32.const 1
              i32.shr_u
              i32.sub
              local.get $p0
              i32.const 31
              i32.eq
              select
              i32.shl
              local.set $p0
              local.get $l1
              i32.load
              local.set $l4
              loop $L119
                local.get $l4
                local.tee $l1
                i32.load offset=4
                i32.const -8
                i32.and
                local.get $l3
                i32.eq
                br_if $B116
                local.get $p0
                i32.const 29
                i32.shr_u
                local.set $l4
                local.get $p0
                i32.const 1
                i32.shl
                local.set $p0
                local.get $l1
                local.get $l4
                i32.const 4
                i32.and
                i32.add
                i32.const 16
                i32.add
                local.tee $l6
                i32.load
                local.tee $l4
                br_if $L119
              end
              local.get $l6
              local.get $l2
              i32.store
              local.get $l2
              local.get $l1
              i32.store offset=24
            end
            local.get $l2
            local.get $l2
            i32.store offset=12
            local.get $l2
            local.get $l2
            i32.store offset=8
            br $B110
          end
          local.get $l1
          i32.load offset=8
          local.tee $p0
          local.get $l2
          i32.store offset=12
          local.get $l1
          local.get $l2
          i32.store offset=8
          local.get $l2
          i32.const 0
          i32.store offset=24
          local.get $l2
          local.get $l1
          i32.store offset=12
          local.get $l2
          local.get $p0
          i32.store offset=8
        end
        local.get $l5
        i32.const 8
        i32.add
        local.set $p0
        br $B0
      end
      block $B120
        local.get $l10
        i32.eqz
        br_if $B120
        block $B121
          local.get $l2
          i32.load offset=28
          local.tee $l3
          i32.const 2
          i32.shl
          i32.const 3608
          i32.add
          local.tee $p0
          i32.load
          local.get $l2
          i32.eq
          if $I122
            local.get $p0
            local.get $l5
            i32.store
            local.get $l5
            br_if $B121
            i32.const 3308
            local.get $l9
            i32.const -2
            local.get $l3
            i32.rotl
            i32.and
            i32.store
            br $B120
          end
          local.get $l10
          i32.const 16
          i32.const 20
          local.get $l10
          i32.load offset=16
          local.get $l2
          i32.eq
          select
          i32.add
          local.get $l5
          i32.store
          local.get $l5
          i32.eqz
          br_if $B120
        end
        local.get $l5
        local.get $l10
        i32.store offset=24
        local.get $l2
        i32.load offset=16
        local.tee $p0
        if $I123
          local.get $l5
          local.get $p0
          i32.store offset=16
          local.get $p0
          local.get $l5
          i32.store offset=24
        end
        local.get $l2
        i32.load offset=20
        local.tee $p0
        i32.eqz
        br_if $B120
        local.get $l5
        local.get $p0
        i32.store offset=20
        local.get $p0
        local.get $l5
        i32.store offset=24
      end
      block $B124
        local.get $l1
        i32.const 15
        i32.le_u
        if $I125
          local.get $l2
          local.get $l1
          local.get $l4
          i32.add
          local.tee $p0
          i32.const 3
          i32.or
          i32.store offset=4
          local.get $p0
          local.get $l2
          i32.add
          local.tee $p0
          local.get $p0
          i32.load offset=4
          i32.const 1
          i32.or
          i32.store offset=4
          br $B124
        end
        local.get $l2
        local.get $l4
        i32.const 3
        i32.or
        i32.store offset=4
        local.get $l2
        local.get $l4
        i32.add
        local.tee $l3
        local.get $l1
        i32.const 1
        i32.or
        i32.store offset=4
        local.get $l1
        local.get $l3
        i32.add
        local.get $l1
        i32.store
        local.get $l8
        if $I126
          local.get $l8
          i32.const 3
          i32.shr_u
          local.tee $l5
          i32.const 3
          i32.shl
          i32.const 3344
          i32.add
          local.set $l4
          i32.const 3324
          i32.load
          local.set $p0
          block $B127 (result i32)
            i32.const 1
            local.get $l5
            i32.shl
            local.tee $l5
            local.get $l6
            i32.and
            i32.eqz
            if $I128
              i32.const 3304
              local.get $l5
              local.get $l6
              i32.or
              i32.store
              local.get $l4
              br $B127
            end
            local.get $l4
            i32.load offset=8
          end
          local.set $l5
          local.get $l4
          local.get $p0
          i32.store offset=8
          local.get $l5
          local.get $p0
          i32.store offset=12
          local.get $p0
          local.get $l4
          i32.store offset=12
          local.get $p0
          local.get $l5
          i32.store offset=8
        end
        i32.const 3324
        local.get $l3
        i32.store
        i32.const 3312
        local.get $l1
        i32.store
      end
      local.get $l2
      i32.const 8
      i32.add
      local.set $p0
    end
    local.get $l11
    i32.const 16
    i32.add
    global.set $g0
    local.get $p0)
  (func $free (type $t2) (param $p0 i32)
    (local $l1 i32) (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32)
    block $B0
      local.get $p0
      i32.eqz
      br_if $B0
      local.get $p0
      i32.const -8
      i32.add
      local.tee $l2
      local.get $p0
      i32.const -4
      i32.add
      i32.load
      local.tee $l1
      i32.const -8
      i32.and
      local.tee $p0
      i32.add
      local.set $l5
      block $B1
        local.get $l1
        i32.const 1
        i32.and
        br_if $B1
        local.get $l1
        i32.const 3
        i32.and
        i32.eqz
        br_if $B0
        local.get $l2
        local.get $l2
        i32.load
        local.tee $l1
        i32.sub
        local.tee $l2
        i32.const 3320
        i32.load
        local.tee $l4
        i32.lt_u
        br_if $B0
        local.get $p0
        local.get $l1
        i32.add
        local.set $p0
        local.get $l2
        i32.const 3324
        i32.load
        i32.ne
        if $I2
          local.get $l1
          i32.const 255
          i32.le_u
          if $I3
            local.get $l2
            i32.load offset=8
            local.tee $l7
            local.get $l1
            i32.const 3
            i32.shr_u
            local.tee $l6
            i32.const 3
            i32.shl
            i32.const 3344
            i32.add
            i32.ne
            drop
            local.get $l7
            local.get $l2
            i32.load offset=12
            local.tee $l3
            i32.eq
            if $I4
              i32.const 3304
              i32.const 3304
              i32.load
              i32.const -2
              local.get $l6
              i32.rotl
              i32.and
              i32.store
              br $B1
            end
            local.get $l7
            local.get $l3
            i32.store offset=12
            local.get $l3
            local.get $l7
            i32.store offset=8
            br $B1
          end
          local.get $l2
          i32.load offset=24
          local.set $l6
          block $B5
            local.get $l2
            local.get $l2
            i32.load offset=12
            local.tee $l3
            i32.ne
            if $I6
              local.get $l4
              local.get $l2
              i32.load offset=8
              local.tee $l1
              i32.le_u
              if $I7
                local.get $l1
                i32.load offset=12
                drop
              end
              local.get $l1
              local.get $l3
              i32.store offset=12
              local.get $l3
              local.get $l1
              i32.store offset=8
              br $B5
            end
            block $B8
              local.get $l2
              i32.const 20
              i32.add
              local.tee $l1
              i32.load
              local.tee $l4
              br_if $B8
              local.get $l2
              i32.const 16
              i32.add
              local.tee $l1
              i32.load
              local.tee $l4
              br_if $B8
              i32.const 0
              local.set $l3
              br $B5
            end
            loop $L9
              local.get $l1
              local.set $l7
              local.get $l4
              local.tee $l3
              i32.const 20
              i32.add
              local.tee $l1
              i32.load
              local.tee $l4
              br_if $L9
              local.get $l3
              i32.const 16
              i32.add
              local.set $l1
              local.get $l3
              i32.load offset=16
              local.tee $l4
              br_if $L9
            end
            local.get $l7
            i32.const 0
            i32.store
          end
          local.get $l6
          i32.eqz
          br_if $B1
          block $B10
            local.get $l2
            local.get $l2
            i32.load offset=28
            local.tee $l4
            i32.const 2
            i32.shl
            i32.const 3608
            i32.add
            local.tee $l1
            i32.load
            i32.eq
            if $I11
              local.get $l1
              local.get $l3
              i32.store
              local.get $l3
              br_if $B10
              i32.const 3308
              i32.const 3308
              i32.load
              i32.const -2
              local.get $l4
              i32.rotl
              i32.and
              i32.store
              br $B1
            end
            local.get $l6
            i32.const 16
            i32.const 20
            local.get $l6
            i32.load offset=16
            local.get $l2
            i32.eq
            select
            i32.add
            local.get $l3
            i32.store
            local.get $l3
            i32.eqz
            br_if $B1
          end
          local.get $l3
          local.get $l6
          i32.store offset=24
          local.get $l2
          i32.load offset=16
          local.tee $l1
          if $I12
            local.get $l3
            local.get $l1
            i32.store offset=16
            local.get $l1
            local.get $l3
            i32.store offset=24
          end
          local.get $l2
          i32.load offset=20
          local.tee $l1
          i32.eqz
          br_if $B1
          local.get $l3
          local.get $l1
          i32.store offset=20
          local.get $l1
          local.get $l3
          i32.store offset=24
          br $B1
        end
        local.get $l5
        i32.load offset=4
        local.tee $l1
        i32.const 3
        i32.and
        i32.const 3
        i32.ne
        br_if $B1
        i32.const 3312
        local.get $p0
        i32.store
        local.get $l5
        local.get $l1
        i32.const -2
        i32.and
        i32.store offset=4
        local.get $l2
        local.get $p0
        i32.const 1
        i32.or
        i32.store offset=4
        local.get $p0
        local.get $l2
        i32.add
        local.get $p0
        i32.store
        return
      end
      local.get $l5
      local.get $l2
      i32.le_u
      br_if $B0
      local.get $l5
      i32.load offset=4
      local.tee $l1
      i32.const 1
      i32.and
      i32.eqz
      br_if $B0
      block $B13
        local.get $l1
        i32.const 2
        i32.and
        i32.eqz
        if $I14
          local.get $l5
          i32.const 3328
          i32.load
          i32.eq
          if $I15
            i32.const 3328
            local.get $l2
            i32.store
            i32.const 3316
            i32.const 3316
            i32.load
            local.get $p0
            i32.add
            local.tee $p0
            i32.store
            local.get $l2
            local.get $p0
            i32.const 1
            i32.or
            i32.store offset=4
            local.get $l2
            i32.const 3324
            i32.load
            i32.ne
            br_if $B0
            i32.const 3312
            i32.const 0
            i32.store
            i32.const 3324
            i32.const 0
            i32.store
            return
          end
          local.get $l5
          i32.const 3324
          i32.load
          i32.eq
          if $I16
            i32.const 3324
            local.get $l2
            i32.store
            i32.const 3312
            i32.const 3312
            i32.load
            local.get $p0
            i32.add
            local.tee $p0
            i32.store
            local.get $l2
            local.get $p0
            i32.const 1
            i32.or
            i32.store offset=4
            local.get $p0
            local.get $l2
            i32.add
            local.get $p0
            i32.store
            return
          end
          local.get $l1
          i32.const -8
          i32.and
          local.get $p0
          i32.add
          local.set $p0
          block $B17
            local.get $l1
            i32.const 255
            i32.le_u
            if $I18
              local.get $l5
              i32.load offset=12
              local.set $l4
              local.get $l5
              i32.load offset=8
              local.tee $l3
              local.get $l1
              i32.const 3
              i32.shr_u
              local.tee $l5
              i32.const 3
              i32.shl
              i32.const 3344
              i32.add
              local.tee $l1
              i32.ne
              if $I19
                i32.const 3320
                i32.load
                drop
              end
              local.get $l3
              local.get $l4
              i32.eq
              if $I20
                i32.const 3304
                i32.const 3304
                i32.load
                i32.const -2
                local.get $l5
                i32.rotl
                i32.and
                i32.store
                br $B17
              end
              local.get $l1
              local.get $l4
              i32.ne
              if $I21
                i32.const 3320
                i32.load
                drop
              end
              local.get $l3
              local.get $l4
              i32.store offset=12
              local.get $l4
              local.get $l3
              i32.store offset=8
              br $B17
            end
            local.get $l5
            i32.load offset=24
            local.set $l6
            block $B22
              local.get $l5
              local.get $l5
              i32.load offset=12
              local.tee $l3
              i32.ne
              if $I23
                i32.const 3320
                i32.load
                local.get $l5
                i32.load offset=8
                local.tee $l1
                i32.le_u
                if $I24
                  local.get $l1
                  i32.load offset=12
                  drop
                end
                local.get $l1
                local.get $l3
                i32.store offset=12
                local.get $l3
                local.get $l1
                i32.store offset=8
                br $B22
              end
              block $B25
                local.get $l5
                i32.const 20
                i32.add
                local.tee $l1
                i32.load
                local.tee $l4
                br_if $B25
                local.get $l5
                i32.const 16
                i32.add
                local.tee $l1
                i32.load
                local.tee $l4
                br_if $B25
                i32.const 0
                local.set $l3
                br $B22
              end
              loop $L26
                local.get $l1
                local.set $l7
                local.get $l4
                local.tee $l3
                i32.const 20
                i32.add
                local.tee $l1
                i32.load
                local.tee $l4
                br_if $L26
                local.get $l3
                i32.const 16
                i32.add
                local.set $l1
                local.get $l3
                i32.load offset=16
                local.tee $l4
                br_if $L26
              end
              local.get $l7
              i32.const 0
              i32.store
            end
            local.get $l6
            i32.eqz
            br_if $B17
            block $B27
              local.get $l5
              local.get $l5
              i32.load offset=28
              local.tee $l4
              i32.const 2
              i32.shl
              i32.const 3608
              i32.add
              local.tee $l1
              i32.load
              i32.eq
              if $I28
                local.get $l1
                local.get $l3
                i32.store
                local.get $l3
                br_if $B27
                i32.const 3308
                i32.const 3308
                i32.load
                i32.const -2
                local.get $l4
                i32.rotl
                i32.and
                i32.store
                br $B17
              end
              local.get $l6
              i32.const 16
              i32.const 20
              local.get $l6
              i32.load offset=16
              local.get $l5
              i32.eq
              select
              i32.add
              local.get $l3
              i32.store
              local.get $l3
              i32.eqz
              br_if $B17
            end
            local.get $l3
            local.get $l6
            i32.store offset=24
            local.get $l5
            i32.load offset=16
            local.tee $l1
            if $I29
              local.get $l3
              local.get $l1
              i32.store offset=16
              local.get $l1
              local.get $l3
              i32.store offset=24
            end
            local.get $l5
            i32.load offset=20
            local.tee $l1
            i32.eqz
            br_if $B17
            local.get $l3
            local.get $l1
            i32.store offset=20
            local.get $l1
            local.get $l3
            i32.store offset=24
          end
          local.get $l2
          local.get $p0
          i32.const 1
          i32.or
          i32.store offset=4
          local.get $p0
          local.get $l2
          i32.add
          local.get $p0
          i32.store
          local.get $l2
          i32.const 3324
          i32.load
          i32.ne
          br_if $B13
          i32.const 3312
          local.get $p0
          i32.store
          return
        end
        local.get $l5
        local.get $l1
        i32.const -2
        i32.and
        i32.store offset=4
        local.get $l2
        local.get $p0
        i32.const 1
        i32.or
        i32.store offset=4
        local.get $p0
        local.get $l2
        i32.add
        local.get $p0
        i32.store
      end
      local.get $p0
      i32.const 255
      i32.le_u
      if $I30
        local.get $p0
        i32.const 3
        i32.shr_u
        local.tee $l1
        i32.const 3
        i32.shl
        i32.const 3344
        i32.add
        local.set $p0
        block $B31 (result i32)
          i32.const 3304
          i32.load
          local.tee $l4
          i32.const 1
          local.get $l1
          i32.shl
          local.tee $l1
          i32.and
          i32.eqz
          if $I32
            i32.const 3304
            local.get $l1
            local.get $l4
            i32.or
            i32.store
            local.get $p0
            br $B31
          end
          local.get $p0
          i32.load offset=8
        end
        local.set $l1
        local.get $p0
        local.get $l2
        i32.store offset=8
        local.get $l1
        local.get $l2
        i32.store offset=12
        local.get $l2
        local.get $p0
        i32.store offset=12
        local.get $l2
        local.get $l1
        i32.store offset=8
        return
      end
      local.get $l2
      i64.const 0
      i64.store offset=16 align=4
      local.get $l2
      block $B33 (result i32)
        i32.const 0
        local.get $p0
        i32.const 8
        i32.shr_u
        local.tee $l4
        i32.eqz
        br_if $B33
        drop
        i32.const 31
        local.get $p0
        i32.const 16777215
        i32.gt_u
        br_if $B33
        drop
        local.get $l4
        local.get $l4
        i32.const 1048320
        i32.add
        i32.const 16
        i32.shr_u
        i32.const 8
        i32.and
        local.tee $l1
        i32.shl
        local.tee $l4
        local.get $l4
        i32.const 520192
        i32.add
        i32.const 16
        i32.shr_u
        i32.const 4
        i32.and
        local.tee $l4
        i32.shl
        local.tee $l3
        local.get $l3
        i32.const 245760
        i32.add
        i32.const 16
        i32.shr_u
        i32.const 2
        i32.and
        local.tee $l3
        i32.shl
        i32.const 15
        i32.shr_u
        local.get $l1
        local.get $l4
        i32.or
        local.get $l3
        i32.or
        i32.sub
        local.tee $l1
        i32.const 1
        i32.shl
        local.get $p0
        local.get $l1
        i32.const 21
        i32.add
        i32.shr_u
        i32.const 1
        i32.and
        i32.or
        i32.const 28
        i32.add
      end
      local.tee $l1
      i32.store offset=28
      local.get $l1
      i32.const 2
      i32.shl
      i32.const 3608
      i32.add
      local.set $l4
      block $B34
        block $B35
          block $B36
            i32.const 3308
            i32.load
            local.tee $l3
            i32.const 1
            local.get $l1
            i32.shl
            local.tee $l5
            i32.and
            i32.eqz
            if $I37
              i32.const 3308
              local.get $l3
              local.get $l5
              i32.or
              i32.store
              local.get $l4
              local.get $l2
              i32.store
              local.get $l2
              local.get $l4
              i32.store offset=24
              br $B36
            end
            local.get $p0
            i32.const 0
            i32.const 25
            local.get $l1
            i32.const 1
            i32.shr_u
            i32.sub
            local.get $l1
            i32.const 31
            i32.eq
            select
            i32.shl
            local.set $l1
            local.get $l4
            i32.load
            local.set $l3
            loop $L38
              local.get $l3
              local.tee $l4
              i32.load offset=4
              i32.const -8
              i32.and
              local.get $p0
              i32.eq
              br_if $B35
              local.get $l1
              i32.const 29
              i32.shr_u
              local.set $l3
              local.get $l1
              i32.const 1
              i32.shl
              local.set $l1
              local.get $l4
              local.get $l3
              i32.const 4
              i32.and
              i32.add
              i32.const 16
              i32.add
              local.tee $l5
              i32.load
              local.tee $l3
              br_if $L38
            end
            local.get $l5
            local.get $l2
            i32.store
            local.get $l2
            local.get $l4
            i32.store offset=24
          end
          local.get $l2
          local.get $l2
          i32.store offset=12
          local.get $l2
          local.get $l2
          i32.store offset=8
          br $B34
        end
        local.get $l4
        i32.load offset=8
        local.tee $p0
        local.get $l2
        i32.store offset=12
        local.get $l4
        local.get $l2
        i32.store offset=8
        local.get $l2
        i32.const 0
        i32.store offset=24
        local.get $l2
        local.get $l4
        i32.store offset=12
        local.get $l2
        local.get $p0
        i32.store offset=8
      end
      i32.const 3336
      i32.const 3336
      i32.load
      i32.const -1
      i32.add
      local.tee $l2
      i32.store
      local.get $l2
      br_if $B0
      i32.const 3760
      local.set $l2
      loop $L39
        local.get $l2
        i32.load
        local.tee $p0
        i32.const 8
        i32.add
        local.set $l2
        local.get $p0
        br_if $L39
      end
      i32.const 3336
      i32.const -1
      i32.store
    end)
  (func $f34 (type $t0) (param $p0 i32) (result i32)
    (local $l1 i32)
    i32.const 3808
    i32.load
    local.tee $l1
    local.get $p0
    i32.const 3
    i32.add
    i32.const -4
    i32.and
    i32.add
    local.tee $p0
    i32.const -1
    i32.le_s
    if $I0
      i32.const 2192
      i32.const 48
      i32.store
      i32.const -1
      return
    end
    block $B1
      local.get $p0
      memory.size
      i32.const 16
      i32.shl
      i32.le_u
      br_if $B1
      local.get $p0
      call $env.emscripten_resize_heap
      br_if $B1
      i32.const 2192
      i32.const 48
      i32.store
      i32.const -1
      return
    end
    i32.const 3808
    local.get $p0
    i32.store
    local.get $l1)
  (func $f35 (type $t3) (param $p0 i32) (param $p1 i32) (param $p2 i32)
    (local $l3 i32) (local $l4 i32)
    local.get $p2
    i32.const 8192
    i32.ge_u
    if $I0
      local.get $p0
      local.get $p1
      local.get $p2
      call $env.emscripten_memcpy_big
      drop
      return
    end
    local.get $p0
    local.get $p2
    i32.add
    local.set $l3
    block $B1
      local.get $p0
      local.get $p1
      i32.xor
      i32.const 3
      i32.and
      i32.eqz
      if $I2
        block $B3
          local.get $p2
          i32.const 1
          i32.lt_s
          if $I4
            local.get $p0
            local.set $p2
            br $B3
          end
          local.get $p0
          i32.const 3
          i32.and
          i32.eqz
          if $I5
            local.get $p0
            local.set $p2
            br $B3
          end
          local.get $p0
          local.set $p2
          loop $L6
            local.get $p2
            local.get $p1
            i32.load8_u
            i32.store8
            local.get $p1
            i32.const 1
            i32.add
            local.set $p1
            local.get $p2
            i32.const 1
            i32.add
            local.tee $p2
            local.get $l3
            i32.ge_u
            br_if $B3
            local.get $p2
            i32.const 3
            i32.and
            br_if $L6
          end
        end
        block $B7
          local.get $l3
          i32.const -4
          i32.and
          local.tee $l4
          i32.const 64
          i32.lt_u
          br_if $B7
          local.get $p2
          local.get $l4
          i32.const -64
          i32.add
          local.tee $p0
          i32.gt_u
          br_if $B7
          loop $L8
            local.get $p2
            local.get $p1
            i32.load
            i32.store
            local.get $p2
            local.get $p1
            i32.load offset=4
            i32.store offset=4
            local.get $p2
            local.get $p1
            i32.load offset=8
            i32.store offset=8
            local.get $p2
            local.get $p1
            i32.load offset=12
            i32.store offset=12
            local.get $p2
            local.get $p1
            i32.load offset=16
            i32.store offset=16
            local.get $p2
            local.get $p1
            i32.load offset=20
            i32.store offset=20
            local.get $p2
            local.get $p1
            i32.load offset=24
            i32.store offset=24
            local.get $p2
            local.get $p1
            i32.load offset=28
            i32.store offset=28
            local.get $p2
            local.get $p1
            i32.load offset=32
            i32.store offset=32
            local.get $p2
            local.get $p1
            i32.load offset=36
            i32.store offset=36
            local.get $p2
            local.get $p1
            i32.load offset=40
            i32.store offset=40
            local.get $p2
            local.get $p1
            i32.load offset=44
            i32.store offset=44
            local.get $p2
            local.get $p1
            i32.load offset=48
            i32.store offset=48
            local.get $p2
            local.get $p1
            i32.load offset=52
            i32.store offset=52
            local.get $p2
            local.get $p1
            i32.load offset=56
            i32.store offset=56
            local.get $p2
            local.get $p1
            i32.load offset=60
            i32.store offset=60
            local.get $p1
            i32.const -64
            i32.sub
            local.set $p1
            local.get $p2
            i32.const -64
            i32.sub
            local.tee $p2
            local.get $p0
            i32.le_u
            br_if $L8
          end
        end
        local.get $p2
        local.get $l4
        i32.ge_u
        br_if $B1
        loop $L9
          local.get $p2
          local.get $p1
          i32.load
          i32.store
          local.get $p1
          i32.const 4
          i32.add
          local.set $p1
          local.get $p2
          i32.const 4
          i32.add
          local.tee $p2
          local.get $l4
          i32.lt_u
          br_if $L9
        end
        br $B1
      end
      local.get $l3
      i32.const 4
      i32.lt_u
      if $I10
        local.get $p0
        local.set $p2
        br $B1
      end
      local.get $l3
      i32.const -4
      i32.add
      local.tee $l4
      local.get $p0
      i32.lt_u
      if $I11
        local.get $p0
        local.set $p2
        br $B1
      end
      local.get $p0
      local.set $p2
      loop $L12
        local.get $p2
        local.get $p1
        i32.load8_u
        i32.store8
        local.get $p2
        local.get $p1
        i32.load8_u offset=1
        i32.store8 offset=1
        local.get $p2
        local.get $p1
        i32.load8_u offset=2
        i32.store8 offset=2
        local.get $p2
        local.get $p1
        i32.load8_u offset=3
        i32.store8 offset=3
        local.get $p1
        i32.const 4
        i32.add
        local.set $p1
        local.get $p2
        i32.const 4
        i32.add
        local.tee $p2
        local.get $l4
        i32.le_u
        br_if $L12
      end
    end
    local.get $p2
    local.get $l3
    i32.lt_u
    if $I13
      loop $L14
        local.get $p2
        local.get $p1
        i32.load8_u
        i32.store8
        local.get $p1
        i32.const 1
        i32.add
        local.set $p1
        local.get $p2
        i32.const 1
        i32.add
        local.tee $p2
        local.get $l3
        i32.ne
        br_if $L14
      end
    end)
  (func $f36 (type $t3) (param $p0 i32) (param $p1 i32) (param $p2 i32)
    (local $l3 i32) (local $l4 i32) (local $l5 i64)
    block $B0
      local.get $p2
      i32.eqz
      br_if $B0
      local.get $p0
      local.get $p2
      i32.add
      local.tee $l3
      i32.const -1
      i32.add
      local.get $p1
      i32.store8
      local.get $p0
      local.get $p1
      i32.store8
      local.get $p2
      i32.const 3
      i32.lt_u
      br_if $B0
      local.get $l3
      i32.const -2
      i32.add
      local.get $p1
      i32.store8
      local.get $p0
      local.get $p1
      i32.store8 offset=1
      local.get $l3
      i32.const -3
      i32.add
      local.get $p1
      i32.store8
      local.get $p0
      local.get $p1
      i32.store8 offset=2
      local.get $p2
      i32.const 7
      i32.lt_u
      br_if $B0
      local.get $l3
      i32.const -4
      i32.add
      local.get $p1
      i32.store8
      local.get $p0
      local.get $p1
      i32.store8 offset=3
      local.get $p2
      i32.const 9
      i32.lt_u
      br_if $B0
      local.get $p0
      i32.const 0
      local.get $p0
      i32.sub
      i32.const 3
      i32.and
      local.tee $l4
      i32.add
      local.tee $l3
      local.get $p1
      i32.const 255
      i32.and
      i32.const 16843009
      i32.mul
      local.tee $p1
      i32.store
      local.get $l3
      local.get $p2
      local.get $l4
      i32.sub
      i32.const -4
      i32.and
      local.tee $l4
      i32.add
      local.tee $p2
      i32.const -4
      i32.add
      local.get $p1
      i32.store
      local.get $l4
      i32.const 9
      i32.lt_u
      br_if $B0
      local.get $l3
      local.get $p1
      i32.store offset=8
      local.get $l3
      local.get $p1
      i32.store offset=4
      local.get $p2
      i32.const -8
      i32.add
      local.get $p1
      i32.store
      local.get $p2
      i32.const -12
      i32.add
      local.get $p1
      i32.store
      local.get $l4
      i32.const 25
      i32.lt_u
      br_if $B0
      local.get $l3
      local.get $p1
      i32.store offset=24
      local.get $l3
      local.get $p1
      i32.store offset=20
      local.get $l3
      local.get $p1
      i32.store offset=16
      local.get $l3
      local.get $p1
      i32.store offset=12
      local.get $p2
      i32.const -16
      i32.add
      local.get $p1
      i32.store
      local.get $p2
      i32.const -20
      i32.add
      local.get $p1
      i32.store
      local.get $p2
      i32.const -24
      i32.add
      local.get $p1
      i32.store
      local.get $p2
      i32.const -28
      i32.add
      local.get $p1
      i32.store
      local.get $l4
      local.get $l3
      i32.const 4
      i32.and
      i32.const 24
      i32.or
      local.tee $l4
      i32.sub
      local.tee $p2
      i32.const 32
      i32.lt_u
      br_if $B0
      local.get $p1
      i64.extend_i32_u
      local.tee $l5
      i64.const 32
      i64.shl
      local.get $l5
      i64.or
      local.set $l5
      local.get $l3
      local.get $l4
      i32.add
      local.set $p1
      loop $L1
        local.get $p1
        local.get $l5
        i64.store offset=24
        local.get $p1
        local.get $l5
        i64.store offset=16
        local.get $p1
        local.get $l5
        i64.store offset=8
        local.get $p1
        local.get $l5
        i64.store
        local.get $p1
        i32.const 32
        i32.add
        local.set $p1
        local.get $p2
        i32.const -32
        i32.add
        local.tee $p2
        i32.const 31
        i32.gt_u
        br_if $L1
      end
    end)
  (func $setThrew (type $t5) (param $p0 i32) (param $p1 i32)
    i32.const 3800
    i32.load
    i32.eqz
    if $I0
      i32.const 3804
      local.get $p1
      i32.store
      i32.const 3800
      local.get $p0
      i32.store
    end)
  (func $stackSave (type $t6) (result i32)
    global.get $g0)
  (func $stackAlloc (type $t0) (param $p0 i32) (result i32)
    global.get $g0
    local.get $p0
    i32.sub
    i32.const -16
    i32.and
    local.tee $p0
    global.set $g0
    local.get $p0)
  (func $stackRestore (type $t2) (param $p0 i32)
    local.get $p0
    global.set $g0)
  (func $__growWasmMemory (type $t0) (param $p0 i32) (result i32)
    local.get $p0
    memory.grow)
  (func $dynCall_ii (type $t4) (param $p0 i32) (param $p1 i32) (result i32)
    local.get $p1
    local.get $p0
    call_indirect (type $t0) $env.table)
  (func $dynCall_iiii (type $t7) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32) (result i32)
    local.get $p1
    local.get $p2
    local.get $p3
    local.get $p0
    call_indirect (type $t1) $env.table)
  (func $dynCall_jiji (type $t8) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32) (param $p4 i32) (result i32)
    (local $l5 i64)
    local.get $p1
    local.get $p2
    i64.extend_i32_u
    local.get $p3
    i64.extend_i32_u
    i64.const 32
    i64.shl
    i64.or
    local.get $p4
    local.get $p0
    call_indirect (type $t10) $env.table
    local.tee $l5
    i64.const 32
    i64.shr_u
    i32.wrap_i64
    call $env.setTempRet0
    local.get $l5
    i32.wrap_i64)
  (global $g0 (mut i32) (i32.const 5246688))
  (global $__data_end i32 (i32.const 3808))
  (export "__wasm_call_ctors" (func $__wasm_call_ctors))
  (export "malloc" (func $malloc))
  (export "main" (func $main))
  (export "__errno_location" (func $__errno_location))
  (export "setThrew" (func $setThrew))
  (export "free" (func $free))
  (export "__data_end" (global 1))
  (export "stackSave" (func $stackSave))
  (export "stackAlloc" (func $stackAlloc))
  (export "stackRestore" (func $stackRestore))
  (export "__growWasmMemory" (func $__growWasmMemory))
  (export "dynCall_ii" (func $dynCall_ii))
  (export "dynCall_iiii" (func $dynCall_iiii))
  (export "dynCall_jiji" (func $dynCall_jiji))
  (elem $e0 (i32.const 1) $f28 $f30 $f29)
  (data $d0 (i32.const 1024) "global const string\00    %s, addr: %p (%lu)\0a\00    stack value in leaf() function, addr: %p (%lu)\0a\00    stack grows: %ld\0a\00    argv[0]: %s, addr: %p (%lu)\0a\00stack-allocated (local) string\00dynamically (heap) allocated string\00  in leaf()\00  in intermediate()\00  in main()\00-+   0X0x\00(null)")
  (data $d1 (i32.const 1312) "\11\00\0a\00\11\11\11\00\00\00\00\05\00\00\00\00\00\00\09\00\00\00\00\0b\00\00\00\00\00\00\00\00\11\00\0f\0a\11\11\11\03\0a\07\00\01\13\09\0b\0b\00\00\09\06\0b\00\00\0b\00\06\11\00\00\00\11\11\11")
  (data $d2 (i32.const 1393) "\0b\00\00\00\00\00\00\00\00\11\00\0a\0a\11\11\11\00\0a\00\00\02\00\09\0b\00\00\00\09\00\0b\00\00\0b")
  (data $d3 (i32.const 1451) "\0c")
  (data $d4 (i32.const 1463) "\0c\00\00\00\00\0c\00\00\00\00\09\0c\00\00\00\00\00\0c\00\00\0c")
  (data $d5 (i32.const 1509) "\0e")
  (data $d6 (i32.const 1521) "\0d\00\00\00\04\0d\00\00\00\00\09\0e\00\00\00\00\00\0e\00\00\0e")
  (data $d7 (i32.const 1567) "\10")
  (data $d8 (i32.const 1579) "\0f\00\00\00\00\0f\00\00\00\00\09\10\00\00\00\00\00\10\00\00\10\00\00\12\00\00\00\12\12\12")
  (data $d9 (i32.const 1634) "\12\00\00\00\12\12\12\00\00\00\00\00\00\09")
  (data $d10 (i32.const 1683) "\0b")
  (data $d11 (i32.const 1695) "\0a\00\00\00\00\0a\00\00\00\00\09\0b\00\00\00\00\00\0b\00\00\0b")
  (data $d12 (i32.const 1741) "\0c")
  (data $d13 (i32.const 1753) "\0c\00\00\00\00\0c\00\00\00\00\09\0c\00\00\00\00\00\0c\00\00\0c\00\000123456789ABCDEF\f8\07")
  (data $d14 (i32.const 1801) "\04")
  (data $d15 (i32.const 1980) "\bc\08")
  (data $d16 (i32.const 2040) "\05")
  (data $d17 (i32.const 2052) "\01")
  (data $d18 (i32.const 2076) "\02\00\00\00\03\00\00\00\e8\08\00\00\00\04")
  (data $d19 (i32.const 2100) "\01")
  (data $d20 (i32.const 2115) "\0a\ff\ff\ff\ff"))

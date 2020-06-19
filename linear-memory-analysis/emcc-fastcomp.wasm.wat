(module
  (type $t0 (func (param i32) (result i32)))
  (type $t1 (func (param i32 i32 i32) (result i32)))
  (type $t2 (func (param i32)))
  (type $t3 (func (param i32 i32)))
  (type $t4 (func (param i32 i32 i32)))
  (type $t5 (func (param i32 i32) (result i32)))
  (type $t6 (func (result i32)))
  (type $t7 (func (param i32 f64 i32 i32 i32 i32) (result i32)))
  (type $t8 (func (param i32 i64 i32) (result i64)))
  (type $t9 (func (param i32 i32 i32 i32) (result i32)))
  (type $t10 (func (param i32 i32 i32 i32 i32) (result i32)))
  (type $t11 (func (param i64 i32) (result i32)))
  (type $t12 (func (param i32 i32 i32 i32 i32)))
  (type $t13 (func (param i32 i32 f64 i32 i32 i32 i32) (result i32)))
  (type $t14 (func (param i64 i32 i32) (result i32)))
  (type $t15 (func (param f64 i32) (result f64)))
  (import "env" "abort" (func $env.abort (type $t2)))
  (import "env" "___wasi_fd_write" (func $env.___wasi_fd_write (type $t9)))
  (import "env" "_emscripten_get_heap_size" (func $env._emscripten_get_heap_size (type $t6)))
  (import "env" "_emscripten_memcpy_big" (func $env._emscripten_memcpy_big (type $t1)))
  (import "env" "_emscripten_resize_heap" (func $env._emscripten_resize_heap (type $t0)))
  (import "env" "setTempRet0" (func $env.setTempRet0 (type $t2)))
  (import "env" "__table_base" (global $env.__table_base i32))
  (import "env" "memory" (memory $env.memory 256 256))
  (import "env" "table" (table $env.table 10 10 funcref))
  (func $stackAlloc (type $t0) (param $p0 i32) (result i32)
    (local $l1 i32)
    global.get $g1
    local.set $l1
    local.get $p0
    global.get $g1
    i32.add
    global.set $g1
    global.get $g1
    i32.const 15
    i32.add
    i32.const -16
    i32.and
    global.set $g1
    local.get $l1)
  (func $stackSave (type $t6) (result i32)
    global.get $g1)
  (func $stackRestore (type $t2) (param $p0 i32)
    local.get $p0
    global.set $g1)
  (func $f9 (type $t4) (param $p0 i32) (param $p1 i32) (param $p2 i32)
    (local $l3 i32) (local $l4 i32) (local $l5 i32)
    global.get $g1
    local.set $l3
    global.get $g1
    i32.const 80
    i32.add
    global.set $g1
    local.get $l3
    i32.const 76
    i32.add
    local.tee $l5
    i32.const 42
    i32.store
    i32.const 2102
    call $f38
    local.get $l3
    i32.const 1884
    i32.store
    local.get $l3
    i32.const 4
    i32.add
    i32.const 1884
    i32.store
    local.get $l3
    i32.const 8
    i32.add
    i32.const 1884
    i32.store
    i32.const 1904
    local.get $l3
    call $f37
    local.get $l3
    i32.const 16
    i32.add
    local.tee $l4
    local.get $p1
    i32.store
    local.get $l4
    i32.const 4
    i32.add
    local.get $p1
    i32.store
    local.get $l4
    i32.const 8
    i32.add
    local.get $p1
    i32.store
    i32.const 1904
    local.get $l4
    call $f37
    local.get $l3
    i32.const 32
    i32.add
    local.tee $l4
    local.get $l5
    i32.store
    local.get $l4
    i32.const 4
    i32.add
    local.get $l5
    i32.store
    i32.const 1928
    local.get $l4
    call $f37
    local.get $l3
    i32.const 40
    i32.add
    local.tee $l4
    local.get $l5
    local.get $p1
    i32.sub
    i32.store
    i32.const 1980
    local.get $l4
    call $f37
    local.get $l3
    i32.const 48
    i32.add
    local.tee $p1
    local.get $p2
    i32.store
    local.get $p1
    i32.const 4
    i32.add
    local.get $p2
    i32.store
    local.get $p1
    i32.const 8
    i32.add
    local.get $p2
    i32.store
    i32.const 1904
    local.get $p1
    call $f37
    local.get $l3
    i32.const -64
    i32.sub
    local.tee $p1
    local.get $p0
    i32.store
    local.get $p1
    i32.const 4
    i32.add
    local.get $p0
    i32.store
    local.get $p1
    i32.const 8
    i32.add
    local.get $p0
    i32.store
    i32.const 2002
    local.get $p1
    call $f37
    local.get $l3
    global.set $g1)
  (func $f10 (type $t2) (param $p0 i32)
    (local $l1 i32) (local $l2 i32)
    global.get $g1
    local.set $l1
    global.get $g1
    i32.const -64
    i32.sub
    global.set $g1
    local.get $l1
    i32.const 2035
    i64.load align=1
    i64.store align=1
    local.get $l1
    i32.const 2043
    i64.load align=1
    i64.store offset=8 align=1
    local.get $l1
    i32.const 2051
    i64.load align=1
    i64.store offset=16 align=1
    local.get $l1
    i32.const 2059
    i32.load align=1
    i32.store offset=24 align=1
    local.get $l1
    i32.const 2063
    i32.load16_s align=1
    i32.store16 offset=28 align=1
    local.get $l1
    i32.const 2065
    i32.load8_s
    i32.store8 offset=30
    i32.const 64
    call $_malloc
    local.tee $l2
    i32.const 2066
    i64.load align=1
    i64.store align=1
    local.get $l2
    i32.const 2074
    i64.load align=1
    i64.store offset=8 align=1
    local.get $l2
    i32.const 2082
    i64.load align=1
    i64.store offset=16 align=1
    local.get $l2
    i32.const 2090
    i64.load align=1
    i64.store offset=24 align=1
    local.get $l2
    i32.const 2098
    i32.load align=1
    i32.store offset=32 align=1
    i32.const 2114
    call $f38
    local.get $p0
    local.get $l1
    local.get $l2
    call $f9
    local.get $l1
    global.set $g1)
  (func $_main (type $t5) (param $p0 i32) (param $p1 i32) (result i32)
    i32.const 2134
    call $f38
    local.get $p1
    i32.load
    call $f10
    i32.const 0)
  (func $f12 (type $t1) (param $p0 i32) (param $p1 i32) (param $p2 i32) (result i32)
    (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32) (local $l9 i32) (local $l10 i32) (local $l11 i32) (local $l12 i32) (local $l13 i32)
    global.get $g1
    local.set $l6
    global.get $g1
    i32.const 32
    i32.add
    global.set $g1
    local.get $l6
    i32.const 16
    i32.add
    local.set $l7
    local.get $l6
    local.tee $l3
    local.get $p0
    i32.const 28
    i32.add
    local.tee $l9
    i32.load
    local.tee $l4
    i32.store
    local.get $l3
    local.get $p0
    i32.const 20
    i32.add
    local.tee $l10
    i32.load
    local.get $l4
    i32.sub
    local.tee $l5
    i32.store offset=4
    local.get $l3
    local.get $p1
    i32.store offset=8
    local.get $l3
    local.get $p2
    i32.store offset=12
    local.get $p0
    i32.const 60
    i32.add
    local.set $l12
    local.get $l3
    local.set $p1
    i32.const 2
    local.set $l4
    local.get $p2
    local.get $l5
    i32.add
    local.set $l5
    block $B0
      block $B1
        loop $L2
          local.get $l5
          local.get $l12
          i32.load
          local.get $p1
          local.get $l4
          local.get $l7
          call $env.___wasi_fd_write
          local.tee $l3
          i32.const 65535
          i32.and
          if $I3 (result i32)
            i32.const 3312
            local.get $l3
            i32.const 65535
            i32.and
            i32.store
            i32.const -1
          else
            i32.const 0
          end
          if $I4 (result i32)
            local.get $l7
            i32.const -1
            i32.store
            i32.const -1
          else
            local.get $l7
            i32.load
          end
          local.tee $l3
          i32.ne
          if $I5
            local.get $l3
            i32.const 0
            i32.lt_s
            br_if $B1
            local.get $p1
            i32.const 8
            i32.add
            local.get $p1
            local.get $l3
            local.get $p1
            i32.load offset=4
            local.tee $l8
            i32.gt_u
            local.tee $l11
            select
            local.tee $p1
            local.get $l3
            local.get $l8
            i32.const 0
            local.get $l11
            select
            i32.sub
            local.tee $l8
            local.get $p1
            i32.load
            i32.add
            i32.store
            local.get $p1
            i32.const 4
            i32.add
            local.tee $l13
            local.get $l13
            i32.load
            local.get $l8
            i32.sub
            i32.store
            local.get $l11
            i32.const 31
            i32.shl
            i32.const 31
            i32.shr_s
            local.get $l4
            i32.add
            local.set $l4
            local.get $l5
            local.get $l3
            i32.sub
            local.set $l5
            br $L2
          end
        end
        local.get $p0
        local.get $p0
        i32.load offset=44
        local.tee $p1
        local.get $p0
        i32.load offset=48
        i32.add
        i32.store offset=16
        local.get $l9
        local.get $p1
        i32.store
        local.get $l10
        local.get $p1
        i32.store
        br $B0
      end
      local.get $p0
      i32.const 0
      i32.store offset=16
      local.get $l9
      i32.const 0
      i32.store
      local.get $l10
      i32.const 0
      i32.store
      local.get $p0
      local.get $p0
      i32.load
      i32.const 32
      i32.or
      i32.store
      local.get $l4
      i32.const 2
      i32.eq
      if $I6 (result i32)
        i32.const 0
      else
        local.get $p2
        local.get $p1
        i32.load offset=4
        i32.sub
      end
      local.set $p2
    end
    local.get $l6
    global.set $g1
    local.get $p2)
  (func $___errno_location (type $t6) (result i32)
    i32.const 3312)
  (func $f14 (type $t0) (param $p0 i32) (result i32)
    i32.const 0)
  (func $f15 (type $t8) (param $p0 i32) (param $p1 i64) (param $p2 i32) (result i64)
    i64.const 0)
  (func $f16 (type $t0) (param $p0 i32) (result i32)
    local.get $p0
    i32.const -48
    i32.add
    i32.const 10
    i32.lt_u)
  (func $f17 (type $t0) (param $p0 i32) (result i32)
    (local $l1 i32) (local $l2 i32) (local $l3 i32)
    block $B0
      block $B1
        local.get $p0
        local.tee $l2
        i32.const 3
        i32.and
        i32.eqz
        br_if $B1
        local.get $l2
        local.set $l1
        loop $L2
          block $B3
            local.get $p0
            i32.load8_s
            i32.eqz
            if $I4
              local.get $l1
              local.set $p0
              br $B3
            end
            local.get $p0
            i32.const 1
            i32.add
            local.tee $p0
            local.tee $l1
            i32.const 3
            i32.and
            br_if $L2
            br $B1
          end
        end
        br $B0
      end
      loop $L5
        local.get $p0
        i32.const 4
        i32.add
        local.set $l1
        local.get $p0
        i32.load
        local.tee $l3
        i32.const -2139062144
        i32.and
        i32.const -2139062144
        i32.xor
        local.get $l3
        i32.const -16843009
        i32.add
        i32.and
        i32.eqz
        if $I6
          local.get $l1
          local.set $p0
          br $L5
        end
      end
      local.get $l3
      i32.const 255
      i32.and
      if $I7
        loop $L8
          local.get $p0
          i32.const 1
          i32.add
          local.tee $p0
          i32.load8_s
          br_if $L8
        end
      end
    end
    local.get $p0
    local.get $l2
    i32.sub)
  (func $f18 (type $t7) (param $p0 i32) (param $p1 f64) (param $p2 i32) (param $p3 i32) (param $p4 i32) (param $p5 i32) (result i32)
    (local $l6 i32) (local $l7 i32) (local $l8 i32) (local $l9 i32) (local $l10 i32) (local $l11 i32) (local $l12 i32) (local $l13 i32) (local $l14 i32) (local $l15 i32) (local $l16 i32) (local $l17 i32) (local $l18 i32) (local $l19 i32) (local $l20 i32) (local $l21 i32) (local $l22 i32) (local $l23 i32) (local $l24 i32) (local $l25 i64) (local $l26 i64) (local $l27 i64) (local $l28 f64)
    global.get $g1
    local.set $l21
    global.get $g1
    i32.const 560
    i32.add
    global.set $g1
    local.get $l21
    i32.const 536
    i32.add
    local.tee $l9
    i32.const 0
    i32.store
    local.get $p1
    i64.reinterpret_f64
    local.tee $l25
    i64.const 0
    i64.lt_s
    if $I0 (result i32)
      local.get $p1
      f64.neg
      local.tee $p1
      i64.reinterpret_f64
      local.set $l25
      i32.const 2163
      local.set $l19
      i32.const 1
    else
      i32.const 2166
      i32.const 2169
      i32.const 2164
      local.get $p4
      i32.const 1
      i32.and
      select
      local.get $p4
      i32.const 2048
      i32.and
      select
      local.set $l19
      local.get $p4
      i32.const 2049
      i32.and
      i32.const 0
      i32.ne
    end
    local.set $l20
    local.get $l21
    i32.const 32
    i32.add
    local.set $l6
    local.get $l21
    local.tee $l12
    local.set $l17
    local.get $l12
    i32.const 540
    i32.add
    local.tee $l8
    i32.const 12
    i32.add
    local.set $l16
    local.get $l25
    i64.const 9218868437227405312
    i64.and
    i64.const 9218868437227405312
    i64.eq
    if $I1 (result i32)
      local.get $p0
      i32.const 32
      local.get $p2
      local.get $l20
      i32.const 3
      i32.add
      local.tee $p3
      local.get $p4
      i32.const -65537
      i32.and
      call $f29
      local.get $p0
      local.get $l19
      local.get $l20
      call $f22
      local.get $p0
      i32.const 2190
      i32.const 2194
      local.get $p5
      i32.const 32
      i32.and
      i32.const 0
      i32.ne
      local.tee $p5
      select
      i32.const 2182
      i32.const 2186
      local.get $p5
      select
      local.get $p1
      local.get $p1
      f64.ne
      select
      i32.const 3
      call $f22
      local.get $p0
      i32.const 32
      local.get $p2
      local.get $p3
      local.get $p4
      i32.const 8192
      i32.xor
      call $f29
      local.get $p3
    else
      block $B2 (result i32)
        local.get $p1
        local.get $l9
        call $f34
        f64.const 0x1p+1 (;=2;)
        f64.mul
        local.tee $p1
        f64.const 0x0p+0 (;=0;)
        f64.ne
        local.tee $l7
        if $I3
          local.get $l9
          local.get $l9
          i32.load
          i32.const -1
          i32.add
          i32.store
        end
        local.get $p5
        i32.const 32
        i32.or
        local.tee $l15
        i32.const 97
        i32.eq
        if $I4
          local.get $l19
          i32.const 9
          i32.add
          local.get $l19
          local.get $p5
          i32.const 32
          i32.and
          local.tee $l11
          select
          local.set $l13
          i32.const 12
          local.get $p3
          i32.sub
          local.tee $l7
          i32.eqz
          local.get $p3
          i32.const 11
          i32.gt_u
          i32.or
          i32.eqz
          if $I5
            f64.const 0x1p+3 (;=8;)
            local.set $l28
            loop $L6
              local.get $l28
              f64.const 0x1p+4 (;=16;)
              f64.mul
              local.set $l28
              local.get $l7
              i32.const -1
              i32.add
              local.tee $l7
              br_if $L6
            end
            local.get $l13
            i32.load8_s
            i32.const 45
            i32.eq
            if $I7 (result f64)
              local.get $l28
              local.get $p1
              f64.neg
              local.get $l28
              f64.sub
              f64.add
              f64.neg
            else
              local.get $p1
              local.get $l28
              f64.add
              local.get $l28
              f64.sub
            end
            local.set $p1
          end
          local.get $l16
          i32.const 0
          local.get $l9
          i32.load
          local.tee $l6
          i32.sub
          local.get $l6
          local.get $l6
          i32.const 0
          i32.lt_s
          select
          i64.extend_i32_s
          local.get $l16
          call $f27
          local.tee $l7
          i32.eq
          if $I8
            local.get $l8
            i32.const 11
            i32.add
            local.tee $l7
            i32.const 48
            i32.store8
          end
          local.get $l20
          i32.const 2
          i32.or
          local.set $l10
          local.get $l7
          i32.const -1
          i32.add
          local.get $l6
          i32.const 31
          i32.shr_s
          i32.const 2
          i32.and
          i32.const 43
          i32.add
          i32.store8
          local.get $l7
          i32.const -2
          i32.add
          local.tee $l7
          local.get $p5
          i32.const 15
          i32.add
          i32.store8
          local.get $p3
          i32.const 1
          i32.lt_s
          local.set $l8
          local.get $p4
          i32.const 8
          i32.and
          i32.eqz
          local.set $l9
          local.get $l12
          local.set $p5
          loop $L9
            local.get $p5
            local.get $l11
            local.get $p1
            i32.trunc_f64_s
            local.tee $l6
            i32.const 1488
            i32.add
            i32.load8_u
            i32.or
            i32.store8
            local.get $p1
            local.get $l6
            f64.convert_i32_s
            f64.sub
            f64.const 0x1p+4 (;=16;)
            f64.mul
            local.set $p1
            local.get $p5
            i32.const 1
            i32.add
            local.tee $l6
            local.get $l17
            i32.sub
            i32.const 1
            i32.eq
            if $I10 (result i32)
              local.get $l8
              local.get $p1
              f64.const 0x0p+0 (;=0;)
              f64.eq
              i32.and
              local.get $l9
              i32.and
              if $I11 (result i32)
                local.get $l6
              else
                local.get $l6
                i32.const 46
                i32.store8
                local.get $p5
                i32.const 2
                i32.add
              end
            else
              local.get $l6
            end
            local.set $p5
            local.get $p1
            f64.const 0x0p+0 (;=0;)
            f64.ne
            br_if $L9
          end
          block $B12 (result i32)
            block $B13
              local.get $p3
              i32.eqz
              br_if $B13
              local.get $p5
              i32.const -2
              local.get $l17
              i32.sub
              i32.add
              local.get $p3
              i32.ge_s
              br_if $B13
              local.get $l16
              local.get $p3
              i32.const 2
              i32.add
              i32.add
              local.get $l7
              i32.sub
              local.set $l8
              local.get $l7
              br $B12
            end
            local.get $p5
            local.get $l16
            local.get $l17
            i32.sub
            local.get $l7
            i32.sub
            i32.add
            local.set $l8
            local.get $l7
          end
          local.set $p3
          local.get $p0
          i32.const 32
          local.get $p2
          local.get $l8
          local.get $l10
          i32.add
          local.tee $l6
          local.get $p4
          call $f29
          local.get $p0
          local.get $l13
          local.get $l10
          call $f22
          local.get $p0
          i32.const 48
          local.get $p2
          local.get $l6
          local.get $p4
          i32.const 65536
          i32.xor
          call $f29
          local.get $p0
          local.get $l12
          local.get $p5
          local.get $l17
          i32.sub
          local.tee $p5
          call $f22
          local.get $p0
          i32.const 48
          local.get $l8
          local.get $p5
          local.get $l16
          local.get $p3
          i32.sub
          local.tee $p3
          i32.add
          i32.sub
          i32.const 0
          i32.const 0
          call $f29
          local.get $p0
          local.get $l7
          local.get $p3
          call $f22
          local.get $p0
          i32.const 32
          local.get $p2
          local.get $l6
          local.get $p4
          i32.const 8192
          i32.xor
          call $f29
          local.get $l6
          br $B2
        end
        local.get $l7
        if $I14
          local.get $l9
          local.get $l9
          i32.load
          i32.const -28
          i32.add
          local.tee $l7
          i32.store
          local.get $p1
          f64.const 0x1p+28 (;=2.68435e+08;)
          f64.mul
          local.set $p1
        else
          local.get $l9
          i32.load
          local.set $l7
        end
        local.get $l6
        local.get $l6
        i32.const 288
        i32.add
        local.get $l7
        i32.const 0
        i32.lt_s
        select
        local.tee $l13
        local.set $l6
        loop $L15
          local.get $l6
          local.get $p1
          i32.trunc_f64_u
          local.tee $l8
          i32.store
          local.get $l6
          i32.const 4
          i32.add
          local.set $l6
          local.get $p1
          local.get $l8
          f64.convert_i32_u
          f64.sub
          f64.const 0x1.dcd65p+29 (;=1e+09;)
          f64.mul
          local.tee $p1
          f64.const 0x0p+0 (;=0;)
          f64.ne
          br_if $L15
        end
        local.get $l7
        i32.const 0
        i32.gt_s
        if $I16
          local.get $l7
          local.set $l8
          local.get $l13
          local.set $l7
          loop $L17
            local.get $l8
            i32.const 29
            local.get $l8
            i32.const 29
            i32.lt_s
            select
            local.set $l11
            local.get $l6
            i32.const -4
            i32.add
            local.tee $l8
            local.get $l7
            i32.ge_u
            if $I18
              local.get $l11
              i64.extend_i32_u
              local.set $l26
              i32.const 0
              local.set $l10
              loop $L19
                local.get $l10
                i64.extend_i32_u
                local.get $l8
                i32.load
                i64.extend_i32_u
                local.get $l26
                i64.shl
                i64.add
                local.tee $l27
                i64.const 1000000000
                i64.div_u
                local.set $l25
                local.get $l8
                local.get $l27
                local.get $l25
                i64.const 1000000000
                i64.mul
                i64.sub
                i64.store32
                local.get $l25
                i32.wrap_i64
                local.set $l10
                local.get $l8
                i32.const -4
                i32.add
                local.tee $l8
                local.get $l7
                i32.ge_u
                br_if $L19
              end
              local.get $l10
              if $I20
                local.get $l7
                i32.const -4
                i32.add
                local.tee $l7
                local.get $l10
                i32.store
              end
            end
            local.get $l6
            local.get $l7
            i32.gt_u
            if $I21
              block $B22
                loop $L23 (result i32)
                  local.get $l6
                  i32.const -4
                  i32.add
                  local.tee $l8
                  i32.load
                  br_if $B22
                  local.get $l8
                  local.get $l7
                  i32.gt_u
                  if $I24 (result i32)
                    local.get $l8
                    local.set $l6
                    br $L23
                  else
                    local.get $l8
                  end
                end
                local.set $l6
              end
            end
            local.get $l9
            local.get $l9
            i32.load
            local.get $l11
            i32.sub
            local.tee $l8
            i32.store
            local.get $l8
            i32.const 0
            i32.gt_s
            br_if $L17
          end
        else
          local.get $l7
          local.set $l8
          local.get $l13
          local.set $l7
        end
        i32.const 6
        local.get $p3
        local.get $p3
        i32.const 0
        i32.lt_s
        select
        local.set $l11
        local.get $l8
        i32.const 0
        i32.lt_s
        if $I25 (result i32)
          local.get $l11
          i32.const 25
          i32.add
          i32.const 9
          i32.div_s
          i32.const 1
          i32.add
          local.set $l18
          local.get $l15
          i32.const 102
          i32.eq
          local.set $l22
          local.get $l6
          local.set $p3
          loop $L26 (result i32)
            i32.const 0
            local.get $l8
            i32.sub
            local.tee $l6
            i32.const 9
            local.get $l6
            i32.const 9
            i32.lt_s
            select
            local.set $l14
            local.get $l7
            local.get $p3
            i32.lt_u
            if $I27
              i32.const 1
              local.get $l14
              i32.shl
              i32.const -1
              i32.add
              local.set $l10
              i32.const 1000000000
              local.get $l14
              i32.shr_u
              local.set $l23
              i32.const 0
              local.set $l8
              local.get $l7
              local.set $l6
              loop $L28
                local.get $l6
                local.get $l8
                local.get $l6
                i32.load
                local.tee $l8
                local.get $l14
                i32.shr_u
                i32.add
                i32.store
                local.get $l8
                local.get $l10
                i32.and
                local.get $l23
                i32.mul
                local.set $l8
                local.get $l6
                i32.const 4
                i32.add
                local.tee $l6
                local.get $p3
                i32.lt_u
                br_if $L28
              end
              local.get $l7
              local.get $l7
              i32.const 4
              i32.add
              local.get $l7
              i32.load
              select
              local.set $l7
              local.get $l8
              if $I29
                local.get $p3
                local.get $l8
                i32.store
                local.get $p3
                i32.const 4
                i32.add
                local.set $p3
              end
            else
              local.get $l7
              local.get $l7
              i32.const 4
              i32.add
              local.get $l7
              i32.load
              select
              local.set $l7
            end
            local.get $l13
            local.get $l7
            local.get $l22
            select
            local.tee $l6
            local.get $l18
            i32.const 2
            i32.shl
            i32.add
            local.get $p3
            local.get $p3
            local.get $l6
            i32.sub
            i32.const 2
            i32.shr_s
            local.get $l18
            i32.gt_s
            select
            local.set $l10
            local.get $l9
            local.get $l9
            i32.load
            local.get $l14
            i32.add
            local.tee $l8
            i32.store
            local.get $l8
            i32.const 0
            i32.lt_s
            if $I30 (result i32)
              local.get $l10
              local.set $p3
              br $L26
            else
              local.get $l7
            end
          end
        else
          local.get $l6
          local.set $l10
          local.get $l7
        end
        local.set $p3
        local.get $l13
        local.set $l14
        local.get $p3
        local.get $l10
        i32.lt_u
        if $I31
          local.get $l14
          local.get $p3
          i32.sub
          i32.const 2
          i32.shr_s
          i32.const 9
          i32.mul
          local.set $l7
          local.get $p3
          i32.load
          local.tee $l8
          i32.const 10
          i32.ge_u
          if $I32
            i32.const 10
            local.set $l6
            loop $L33
              local.get $l7
              i32.const 1
              i32.add
              local.set $l7
              local.get $l8
              local.get $l6
              i32.const 10
              i32.mul
              local.tee $l6
              i32.ge_u
              br_if $L33
            end
          end
        else
          i32.const 0
          local.set $l7
        end
        local.get $l11
        i32.const 0
        local.get $l7
        local.get $l15
        i32.const 102
        i32.eq
        select
        i32.sub
        local.get $l15
        i32.const 103
        i32.eq
        local.tee $l22
        local.get $l11
        i32.const 0
        i32.ne
        local.tee $l23
        i32.and
        i32.const 31
        i32.shl
        i32.const 31
        i32.shr_s
        i32.add
        local.tee $l6
        local.get $l10
        local.get $l14
        i32.sub
        i32.const 2
        i32.shr_s
        i32.const 9
        i32.mul
        i32.const -9
        i32.add
        i32.lt_s
        if $I34 (result i32)
          local.get $l6
          i32.const 9216
          i32.add
          local.tee $l6
          i32.const 9
          i32.div_s
          local.set $l15
          local.get $l6
          local.get $l15
          i32.const 9
          i32.mul
          i32.sub
          local.tee $l6
          i32.const 8
          i32.lt_s
          if $I35
            i32.const 10
            local.set $l8
            loop $L36
              local.get $l6
              i32.const 1
              i32.add
              local.set $l9
              local.get $l8
              i32.const 10
              i32.mul
              local.set $l8
              local.get $l6
              i32.const 7
              i32.lt_s
              if $I37
                local.get $l9
                local.set $l6
                br $L36
              end
            end
          else
            i32.const 10
            local.set $l8
          end
          local.get $l15
          i32.const 2
          i32.shl
          local.get $l13
          i32.add
          i32.const -4092
          i32.add
          local.tee $l6
          i32.load
          local.tee $l15
          local.get $l8
          i32.div_u
          local.set $l18
          local.get $l6
          i32.const 4
          i32.add
          local.get $l10
          i32.eq
          local.tee $l24
          local.get $l15
          local.get $l8
          local.get $l18
          i32.mul
          i32.sub
          local.tee $l9
          i32.eqz
          i32.and
          i32.eqz
          if $I38
            f64.const 0x1.0000000000001p+53 (;=9.0072e+15;)
            f64.const 0x1p+53 (;=9.0072e+15;)
            local.get $l18
            i32.const 1
            i32.and
            select
            local.set $p1
            f64.const 0x1p-1 (;=0.5;)
            f64.const 0x1p+0 (;=1;)
            f64.const 0x1.8p+0 (;=1.5;)
            local.get $l24
            local.get $l9
            local.get $l8
            i32.const 1
            i32.shr_u
            local.tee $l18
            i32.eq
            i32.and
            select
            local.get $l9
            local.get $l18
            i32.lt_u
            select
            local.set $l28
            local.get $l20
            if $I39
              local.get $p1
              f64.neg
              local.get $p1
              local.get $l19
              i32.load8_s
              i32.const 45
              i32.eq
              local.tee $l18
              select
              local.set $p1
              local.get $l28
              f64.neg
              local.get $l28
              local.get $l18
              select
              local.set $l28
            end
            local.get $l6
            local.get $l15
            local.get $l9
            i32.sub
            local.tee $l9
            i32.store
            local.get $p1
            local.get $l28
            f64.add
            local.get $p1
            f64.ne
            if $I40
              local.get $l6
              local.get $l8
              local.get $l9
              i32.add
              local.tee $l7
              i32.store
              local.get $l7
              i32.const 999999999
              i32.gt_u
              if $I41
                loop $L42
                  local.get $l6
                  i32.const 0
                  i32.store
                  local.get $l6
                  i32.const -4
                  i32.add
                  local.tee $l6
                  local.get $p3
                  i32.lt_u
                  if $I43
                    local.get $p3
                    i32.const -4
                    i32.add
                    local.tee $p3
                    i32.const 0
                    i32.store
                  end
                  local.get $l6
                  local.get $l6
                  i32.load
                  i32.const 1
                  i32.add
                  local.tee $l7
                  i32.store
                  local.get $l7
                  i32.const 999999999
                  i32.gt_u
                  br_if $L42
                end
              end
              local.get $l14
              local.get $p3
              i32.sub
              i32.const 2
              i32.shr_s
              i32.const 9
              i32.mul
              local.set $l7
              local.get $p3
              i32.load
              local.tee $l9
              i32.const 10
              i32.ge_u
              if $I44
                i32.const 10
                local.set $l8
                loop $L45
                  local.get $l7
                  i32.const 1
                  i32.add
                  local.set $l7
                  local.get $l9
                  local.get $l8
                  i32.const 10
                  i32.mul
                  local.tee $l8
                  i32.ge_u
                  br_if $L45
                end
              end
            end
          end
          local.get $p3
          local.set $l8
          local.get $l7
          local.set $l9
          local.get $l6
          i32.const 4
          i32.add
          local.tee $p3
          local.get $l10
          local.get $l10
          local.get $p3
          i32.gt_u
          select
        else
          local.get $p3
          local.set $l8
          local.get $l7
          local.set $l9
          local.get $l10
        end
        local.tee $p3
        local.get $l8
        i32.gt_u
        if $I46 (result i32)
          loop $L47 (result i32)
            block $B48 (result i32)
              local.get $p3
              i32.const -4
              i32.add
              local.tee $l7
              i32.load
              if $I49
                local.get $p3
                local.set $l7
                i32.const 1
                br $B48
              end
              local.get $l7
              local.get $l8
              i32.gt_u
              if $I50 (result i32)
                local.get $l7
                local.set $p3
                br $L47
              else
                i32.const 0
              end
            end
          end
        else
          local.get $p3
          local.set $l7
          i32.const 0
        end
        local.set $l15
        local.get $l22
        if $I51 (result i32)
          local.get $l23
          i32.const 1
          i32.xor
          i32.const 1
          i32.and
          local.get $l11
          i32.add
          local.tee $p3
          local.get $l9
          i32.gt_s
          local.get $l9
          i32.const -5
          i32.gt_s
          i32.and
          if $I52 (result i32)
            local.get $p3
            i32.const -1
            i32.add
            local.get $l9
            i32.sub
            local.set $l10
            local.get $p5
            i32.const -1
            i32.add
          else
            local.get $p3
            i32.const -1
            i32.add
            local.set $l10
            local.get $p5
            i32.const -2
            i32.add
          end
          local.set $p5
          local.get $p4
          i32.const 8
          i32.and
          if $I53 (result i32)
            local.get $l10
          else
            local.get $l15
            if $I54
              local.get $l7
              i32.const -4
              i32.add
              i32.load
              local.tee $l11
              if $I55
                local.get $l11
                i32.const 10
                i32.rem_u
                if $I56
                  i32.const 0
                  local.set $p3
                else
                  i32.const 10
                  local.set $l6
                  i32.const 0
                  local.set $p3
                  loop $L57
                    local.get $p3
                    i32.const 1
                    i32.add
                    local.set $p3
                    local.get $l11
                    local.get $l6
                    i32.const 10
                    i32.mul
                    local.tee $l6
                    i32.rem_u
                    i32.eqz
                    br_if $L57
                  end
                end
              else
                i32.const 9
                local.set $p3
              end
            else
              i32.const 9
              local.set $p3
            end
            local.get $l7
            local.get $l14
            i32.sub
            i32.const 2
            i32.shr_s
            i32.const 9
            i32.mul
            i32.const -9
            i32.add
            local.set $l6
            local.get $p5
            i32.const 32
            i32.or
            i32.const 102
            i32.eq
            if $I58 (result i32)
              local.get $l10
              local.get $l6
              local.get $p3
              i32.sub
              local.tee $p3
              i32.const 0
              local.get $p3
              i32.const 0
              i32.gt_s
              select
              local.tee $p3
              local.get $l10
              local.get $p3
              i32.lt_s
              select
            else
              local.get $l10
              local.get $l6
              local.get $l9
              i32.add
              local.get $p3
              i32.sub
              local.tee $p3
              i32.const 0
              local.get $p3
              i32.const 0
              i32.gt_s
              select
              local.tee $p3
              local.get $l10
              local.get $p3
              i32.lt_s
              select
            end
          end
        else
          local.get $l11
        end
        local.set $p3
        i32.const 0
        local.get $l9
        i32.sub
        local.set $l6
        local.get $p0
        i32.const 32
        local.get $p2
        local.get $p5
        i32.const 32
        i32.or
        i32.const 102
        i32.eq
        local.tee $l11
        if $I59 (result i32)
          i32.const 0
          local.set $l10
          local.get $l9
          i32.const 0
          local.get $l9
          i32.const 0
          i32.gt_s
          select
        else
          local.get $l16
          local.tee $l10
          local.get $l6
          local.get $l9
          local.get $l9
          i32.const 0
          i32.lt_s
          select
          i64.extend_i32_s
          local.get $l10
          call $f27
          local.tee $l6
          i32.sub
          i32.const 2
          i32.lt_s
          if $I60
            loop $L61
              local.get $l6
              i32.const -1
              i32.add
              local.tee $l6
              i32.const 48
              i32.store8
              local.get $l10
              local.get $l6
              i32.sub
              i32.const 2
              i32.lt_s
              br_if $L61
            end
          end
          local.get $l6
          i32.const -1
          i32.add
          local.get $l9
          i32.const 31
          i32.shr_s
          i32.const 2
          i32.and
          i32.const 43
          i32.add
          i32.store8
          local.get $l6
          i32.const -2
          i32.add
          local.tee $l6
          local.get $p5
          i32.store8
          local.get $l10
          local.get $l6
          local.tee $l10
          i32.sub
        end
        local.get $l20
        i32.const 1
        i32.add
        local.get $p3
        i32.add
        i32.const 1
        local.get $p4
        i32.const 3
        i32.shr_u
        i32.const 1
        i32.and
        local.get $p3
        i32.const 0
        i32.ne
        local.tee $l14
        select
        i32.add
        i32.add
        local.tee $l9
        local.get $p4
        call $f29
        local.get $p0
        local.get $l19
        local.get $l20
        call $f22
        local.get $p0
        i32.const 48
        local.get $p2
        local.get $l9
        local.get $p4
        i32.const 65536
        i32.xor
        call $f29
        local.get $l11
        if $I62
          local.get $l12
          i32.const 9
          i32.add
          local.tee $l10
          local.set $l11
          local.get $l12
          i32.const 8
          i32.add
          local.set $l16
          local.get $l13
          local.get $l8
          local.get $l8
          local.get $l13
          i32.gt_u
          select
          local.tee $l8
          local.set $l6
          loop $L63
            local.get $l6
            i32.load
            i64.extend_i32_u
            local.get $l10
            call $f27
            local.set $p5
            local.get $l6
            local.get $l8
            i32.eq
            if $I64
              local.get $p5
              local.get $l10
              i32.eq
              if $I65
                local.get $l16
                i32.const 48
                i32.store8
                local.get $l16
                local.set $p5
              end
            else
              local.get $p5
              local.get $l12
              i32.gt_u
              if $I66
                local.get $l12
                i32.const 48
                local.get $p5
                local.get $l17
                i32.sub
                call $_memset
                drop
                loop $L67
                  local.get $p5
                  i32.const -1
                  i32.add
                  local.tee $p5
                  local.get $l12
                  i32.gt_u
                  br_if $L67
                end
              end
            end
            local.get $p0
            local.get $p5
            local.get $l11
            local.get $p5
            i32.sub
            call $f22
            local.get $l6
            i32.const 4
            i32.add
            local.tee $p5
            local.get $l13
            i32.le_u
            if $I68
              local.get $p5
              local.set $l6
              br $L63
            end
          end
          local.get $p4
          i32.const 8
          i32.and
          i32.eqz
          local.get $l14
          i32.const 1
          i32.xor
          i32.and
          i32.eqz
          if $I69
            local.get $p0
            i32.const 2198
            i32.const 1
            call $f22
          end
          local.get $p0
          i32.const 48
          local.get $p5
          local.get $l7
          i32.lt_u
          local.get $p3
          i32.const 0
          i32.gt_s
          i32.and
          if $I70 (result i32)
            loop $L71 (result i32)
              local.get $p5
              i32.load
              i64.extend_i32_u
              local.get $l10
              call $f27
              local.tee $l6
              local.get $l12
              i32.gt_u
              if $I72
                local.get $l12
                i32.const 48
                local.get $l6
                local.get $l17
                i32.sub
                call $_memset
                drop
                loop $L73
                  local.get $l6
                  i32.const -1
                  i32.add
                  local.tee $l6
                  local.get $l12
                  i32.gt_u
                  br_if $L73
                end
              end
              local.get $p0
              local.get $l6
              local.get $p3
              i32.const 9
              local.get $p3
              i32.const 9
              i32.lt_s
              select
              call $f22
              local.get $p3
              i32.const -9
              i32.add
              local.set $l6
              local.get $p5
              i32.const 4
              i32.add
              local.tee $p5
              local.get $l7
              i32.lt_u
              local.get $p3
              i32.const 9
              i32.gt_s
              i32.and
              if $I74 (result i32)
                local.get $l6
                local.set $p3
                br $L71
              else
                local.get $l6
              end
            end
          else
            local.get $p3
          end
          i32.const 9
          i32.add
          i32.const 9
          i32.const 0
          call $f29
        else
          local.get $p0
          i32.const 48
          local.get $l8
          local.get $l7
          local.get $l8
          i32.const 4
          i32.add
          local.get $l15
          select
          local.tee $l14
          i32.lt_u
          local.get $p3
          i32.const -1
          i32.gt_s
          i32.and
          if $I75 (result i32)
            local.get $p4
            i32.const 8
            i32.and
            i32.eqz
            local.set $l20
            local.get $l12
            i32.const 9
            i32.add
            local.tee $l11
            local.set $l19
            i32.const 0
            local.get $l17
            i32.sub
            local.set $l17
            local.get $l12
            i32.const 8
            i32.add
            local.set $l13
            local.get $l8
            local.set $l7
            local.get $p3
            local.set $p5
            loop $L76 (result i32)
              local.get $l11
              local.get $l7
              i32.load
              i64.extend_i32_u
              local.get $l11
              call $f27
              local.tee $p3
              i32.eq
              if $I77
                local.get $l13
                i32.const 48
                i32.store8
                local.get $l13
                local.set $p3
              end
              block $B78
                local.get $l7
                local.get $l8
                i32.eq
                if $I79
                  local.get $p3
                  i32.const 1
                  i32.add
                  local.set $l6
                  local.get $p0
                  local.get $p3
                  i32.const 1
                  call $f22
                  local.get $p5
                  i32.const 1
                  i32.lt_s
                  local.get $l20
                  i32.and
                  if $I80
                    local.get $l6
                    local.set $p3
                    br $B78
                  end
                  local.get $p0
                  i32.const 2198
                  i32.const 1
                  call $f22
                  local.get $l6
                  local.set $p3
                else
                  local.get $p3
                  local.get $l12
                  i32.le_u
                  br_if $B78
                  local.get $l12
                  i32.const 48
                  local.get $p3
                  local.get $l17
                  i32.add
                  call $_memset
                  drop
                  loop $L81
                    local.get $p3
                    i32.const -1
                    i32.add
                    local.tee $p3
                    local.get $l12
                    i32.gt_u
                    br_if $L81
                  end
                end
              end
              local.get $p0
              local.get $p3
              local.get $l19
              local.get $p3
              i32.sub
              local.tee $p3
              local.get $p5
              local.get $p5
              local.get $p3
              i32.gt_s
              select
              call $f22
              local.get $l7
              i32.const 4
              i32.add
              local.tee $l7
              local.get $l14
              i32.lt_u
              local.get $p5
              local.get $p3
              i32.sub
              local.tee $p5
              i32.const -1
              i32.gt_s
              i32.and
              br_if $L76
              local.get $p5
            end
          else
            local.get $p3
          end
          i32.const 18
          i32.add
          i32.const 18
          i32.const 0
          call $f29
          local.get $p0
          local.get $l10
          local.get $l16
          local.get $l10
          i32.sub
          call $f22
        end
        local.get $p0
        i32.const 32
        local.get $p2
        local.get $l9
        local.get $p4
        i32.const 8192
        i32.xor
        call $f29
        local.get $l9
      end
    end
    local.set $p0
    local.get $l21
    global.set $g1
    local.get $p2
    local.get $p0
    local.get $p0
    local.get $p2
    i32.lt_s
    select)
  (func $f19 (type $t3) (param $p0 i32) (param $p1 i32)
    (local $l2 i32) (local $l3 f64)
    local.get $p1
    i32.load
    i32.const 7
    i32.add
    i32.const -8
    i32.and
    local.tee $l2
    f64.load
    local.set $l3
    local.get $p1
    local.get $l2
    i32.const 8
    i32.add
    i32.store
    local.get $p0
    local.get $l3
    f64.store)
  (func $f20 (type $t4) (param $p0 i32) (param $p1 i32) (param $p2 i32)
    (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32) (local $l9 i32) (local $l10 i32) (local $l11 i32) (local $l12 i32) (local $l13 i32)
    global.get $g1
    local.set $l4
    global.get $g1
    i32.const 224
    i32.add
    global.set $g1
    local.get $l4
    local.set $l5
    local.get $l4
    i32.const 160
    i32.add
    local.tee $l3
    i64.const 0
    i64.store
    local.get $l3
    i64.const 0
    i64.store offset=8
    local.get $l3
    i64.const 0
    i64.store offset=16
    local.get $l3
    i64.const 0
    i64.store offset=24
    local.get $l3
    i64.const 0
    i64.store offset=32
    local.get $l4
    i32.const 208
    i32.add
    local.tee $l6
    local.get $p2
    i32.load
    i32.store
    i32.const 0
    local.get $p1
    local.get $l6
    local.get $l4
    i32.const 80
    i32.add
    local.tee $p2
    local.get $l3
    call $f21
    i32.const 0
    i32.lt_s
    if $I0 (result i32)
      i32.const -1
    else
      local.get $p0
      i32.load offset=76
      i32.const -1
      i32.gt_s
      if $I1 (result i32)
        i32.const 1
      else
        i32.const 0
      end
      drop
      local.get $p0
      i32.load
      local.set $l7
      local.get $p0
      i32.load8_s offset=74
      i32.const 1
      i32.lt_s
      if $I2
        local.get $p0
        local.get $l7
        i32.const -33
        i32.and
        i32.store
      end
      local.get $p0
      i32.const 48
      i32.add
      local.tee $l8
      i32.load
      if $I3
        local.get $p0
        local.get $p1
        local.get $l6
        local.get $p2
        local.get $l3
        call $f21
        drop
      else
        local.get $p0
        i32.const 44
        i32.add
        local.tee $l9
        i32.load
        local.set $l10
        local.get $l9
        local.get $l5
        i32.store
        local.get $p0
        i32.const 28
        i32.add
        local.tee $l12
        local.get $l5
        i32.store
        local.get $p0
        i32.const 20
        i32.add
        local.tee $l11
        local.get $l5
        i32.store
        local.get $l8
        i32.const 80
        i32.store
        local.get $p0
        i32.const 16
        i32.add
        local.tee $l13
        local.get $l5
        i32.const 80
        i32.add
        i32.store
        local.get $p0
        local.get $p1
        local.get $l6
        local.get $p2
        local.get $l3
        call $f21
        drop
        local.get $l10
        if $I4
          local.get $p0
          i32.const 0
          i32.const 0
          local.get $p0
          i32.load offset=36
          i32.const 1
          i32.and
          i32.const 4
          i32.add
          call_indirect (type $t1) $env.table
          drop
          local.get $l11
          i32.load
          drop
          local.get $l9
          local.get $l10
          i32.store
          local.get $l8
          i32.const 0
          i32.store
          local.get $l13
          i32.const 0
          i32.store
          local.get $l12
          i32.const 0
          i32.store
          local.get $l11
          i32.const 0
          i32.store
        end
      end
      local.get $p0
      local.get $p0
      i32.load
      local.get $l7
      i32.const 32
      i32.and
      i32.or
      i32.store
      i32.const 0
    end
    drop
    local.get $l4
    global.set $g1)
  (func $f21 (type $t10) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32) (param $p4 i32) (result i32)
    (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32) (local $l9 i32) (local $l10 i32) (local $l11 i32) (local $l12 i32) (local $l13 i32) (local $l14 i32) (local $l15 i32) (local $l16 i32) (local $l17 i32) (local $l18 i32) (local $l19 i32) (local $l20 i32) (local $l21 i32) (local $l22 i32) (local $l23 i32) (local $l24 i32) (local $l25 i32) (local $l26 i64)
    global.get $g1
    local.set $l17
    global.get $g1
    i32.const -64
    i32.sub
    global.set $g1
    local.get $l17
    i32.const 40
    i32.add
    local.set $l10
    local.get $l17
    i32.const 60
    i32.add
    local.set $l22
    local.get $l17
    i32.const 56
    i32.add
    local.tee $l12
    local.get $p1
    i32.store
    local.get $p0
    i32.const 0
    i32.ne
    local.set $l19
    local.get $l17
    i32.const 40
    i32.add
    local.tee $l21
    local.set $l20
    local.get $l17
    i32.const 39
    i32.add
    local.set $l23
    local.get $l17
    i32.const 48
    i32.add
    local.tee $l24
    i32.const 4
    i32.add
    local.set $l25
    i32.const 0
    local.set $p1
    block $B0
      block $B1
        loop $L2
          block $B3
            loop $L4
              local.get $l9
              i32.const -1
              i32.gt_s
              if $I5
                local.get $p1
                i32.const 2147483647
                local.get $l9
                i32.sub
                i32.gt_s
                if $I6 (result i32)
                  i32.const 3312
                  i32.const 61
                  i32.store
                  i32.const -1
                else
                  local.get $p1
                  local.get $l9
                  i32.add
                end
                local.set $l9
              end
              local.get $l12
              i32.load
              local.tee $l8
              i32.load8_s
              local.tee $l11
              i32.eqz
              br_if $B1
              local.get $l8
              local.set $p1
              block $B7
                block $B8
                  loop $L9
                    block $B10
                      block $B11
                        local.get $l11
                        i32.const 24
                        i32.shl
                        i32.const 24
                        i32.shr_s
                        br_table $B10 $B11 $B11 $B11 $B11 $B11 $B11 $B11 $B11 $B11 $B11 $B11 $B11 $B11 $B11 $B11 $B11 $B11 $B11 $B11 $B11 $B11 $B11 $B11 $B11 $B11 $B11 $B11 $B11 $B11 $B11 $B11 $B11 $B11 $B11 $B11 $B11 $B8 $B11
                      end
                      local.get $l12
                      local.get $p1
                      i32.const 1
                      i32.add
                      local.tee $p1
                      i32.store
                      local.get $p1
                      i32.load8_s
                      local.set $l11
                      br $L9
                    end
                  end
                  br $B7
                end
                local.get $p1
                local.set $l11
                loop $L12
                  local.get $l11
                  i32.load8_s offset=1
                  i32.const 37
                  i32.ne
                  br_if $B7
                  local.get $p1
                  i32.const 1
                  i32.add
                  local.set $p1
                  local.get $l12
                  local.get $l11
                  i32.const 2
                  i32.add
                  local.tee $l11
                  i32.store
                  local.get $l11
                  i32.load8_s
                  i32.const 37
                  i32.eq
                  br_if $L12
                end
              end
              local.get $p1
              local.get $l8
              i32.sub
              local.set $p1
              local.get $l19
              if $I13
                local.get $p0
                local.get $l8
                local.get $p1
                call $f22
              end
              local.get $p1
              br_if $L4
            end
            local.get $l12
            i32.load
            i32.load8_s offset=1
            call $f16
            i32.eqz
            local.set $l11
            local.get $l12
            local.get $l12
            i32.load
            local.tee $p1
            local.get $l11
            if $I14 (result i32)
              i32.const -1
              local.set $l15
              i32.const 1
            else
              local.get $p1
              i32.load8_s offset=2
              i32.const 36
              i32.eq
              if $I15 (result i32)
                local.get $p1
                i32.load8_s offset=1
                i32.const -48
                i32.add
                local.set $l15
                i32.const 1
                local.set $l5
                i32.const 3
              else
                i32.const -1
                local.set $l15
                i32.const 1
              end
            end
            i32.add
            local.tee $p1
            i32.store
            local.get $p1
            i32.load8_s
            local.tee $l6
            i32.const -32
            i32.add
            local.tee $l11
            i32.const 31
            i32.gt_u
            i32.const 1
            local.get $l11
            i32.shl
            i32.const 75913
            i32.and
            i32.eqz
            i32.or
            if $I16
              i32.const 0
              local.set $l11
            else
              i32.const 0
              local.set $l6
              loop $L17
                local.get $l6
                i32.const 1
                local.get $l11
                i32.shl
                i32.or
                local.set $l11
                local.get $l12
                local.get $p1
                i32.const 1
                i32.add
                local.tee $p1
                i32.store
                local.get $p1
                i32.load8_s
                local.tee $l6
                i32.const -32
                i32.add
                local.tee $l7
                i32.const 31
                i32.gt_u
                i32.const 1
                local.get $l7
                i32.shl
                i32.const 75913
                i32.and
                i32.eqz
                i32.or
                i32.eqz
                if $I18
                  local.get $l11
                  local.set $l6
                  local.get $l7
                  local.set $l11
                  br $L17
                end
              end
            end
            local.get $l6
            i32.const 255
            i32.and
            i32.const 42
            i32.eq
            if $I19 (result i32)
              block $B20 (result i32)
                block $B21
                  local.get $p1
                  i32.load8_s offset=1
                  call $f16
                  i32.eqz
                  br_if $B21
                  local.get $l12
                  i32.load
                  local.tee $p1
                  i32.load8_s offset=2
                  i32.const 36
                  i32.ne
                  br_if $B21
                  local.get $p1
                  i32.const 1
                  i32.add
                  local.tee $l5
                  i32.load8_s
                  i32.const -48
                  i32.add
                  i32.const 2
                  i32.shl
                  local.get $p4
                  i32.add
                  i32.const 10
                  i32.store
                  i32.const 1
                  local.set $l7
                  local.get $p1
                  i32.const 3
                  i32.add
                  local.set $l6
                  local.get $l5
                  i32.load8_s
                  i32.const -48
                  i32.add
                  i32.const 3
                  i32.shl
                  local.get $p3
                  i32.add
                  i64.load
                  i32.wrap_i64
                  br $B20
                end
                local.get $l5
                if $I22
                  i32.const -1
                  local.set $l9
                  br $B3
                end
                local.get $l19
                if $I23
                  local.get $p2
                  i32.load
                  i32.const 3
                  i32.add
                  i32.const -4
                  i32.and
                  local.tee $l5
                  i32.load
                  local.set $p1
                  local.get $p2
                  local.get $l5
                  i32.const 4
                  i32.add
                  i32.store
                else
                  i32.const 0
                  local.set $p1
                end
                i32.const 0
                local.set $l7
                local.get $l12
                i32.load
                i32.const 1
                i32.add
                local.set $l6
                local.get $p1
              end
              local.set $l5
              local.get $l12
              local.get $l6
              i32.store
              local.get $l6
              local.set $p1
              local.get $l11
              i32.const 8192
              i32.or
              local.get $l11
              local.get $l5
              i32.const 0
              i32.lt_s
              local.tee $l6
              select
              local.set $l13
              i32.const 0
              local.get $l5
              i32.sub
              local.get $l5
              local.get $l6
              select
              local.set $l16
              local.get $l7
            else
              local.get $l12
              call $f23
              local.tee $l16
              i32.const 0
              i32.lt_s
              if $I24
                i32.const -1
                local.set $l9
                br $B3
              end
              local.get $l12
              i32.load
              local.set $p1
              local.get $l11
              local.set $l13
              local.get $l5
            end
            local.set $l11
            local.get $p1
            i32.load8_s
            i32.const 46
            i32.eq
            if $I25
              block $B26
                local.get $p1
                i32.const 1
                i32.add
                local.tee $l5
                i32.load8_s
                i32.const 42
                i32.ne
                if $I27
                  local.get $l12
                  local.get $l5
                  i32.store
                  local.get $l12
                  call $f23
                  local.set $p1
                  local.get $l12
                  i32.load
                  local.set $l5
                  br $B26
                end
                local.get $p1
                i32.load8_s offset=2
                call $f16
                if $I28
                  local.get $l12
                  i32.load
                  local.tee $l5
                  i32.load8_s offset=3
                  i32.const 36
                  i32.eq
                  if $I29
                    local.get $l5
                    i32.const 2
                    i32.add
                    local.tee $p1
                    i32.load8_s
                    i32.const -48
                    i32.add
                    i32.const 2
                    i32.shl
                    local.get $p4
                    i32.add
                    i32.const 10
                    i32.store
                    local.get $p1
                    i32.load8_s
                    i32.const -48
                    i32.add
                    i32.const 3
                    i32.shl
                    local.get $p3
                    i32.add
                    i64.load
                    i32.wrap_i64
                    local.set $p1
                    local.get $l12
                    local.get $l5
                    i32.const 4
                    i32.add
                    local.tee $l5
                    i32.store
                    br $B26
                  end
                end
                local.get $l11
                if $I30
                  i32.const -1
                  local.set $l9
                  br $B3
                end
                local.get $l19
                if $I31
                  local.get $p2
                  i32.load
                  i32.const 3
                  i32.add
                  i32.const -4
                  i32.and
                  local.tee $l5
                  i32.load
                  local.set $p1
                  local.get $p2
                  local.get $l5
                  i32.const 4
                  i32.add
                  i32.store
                else
                  i32.const 0
                  local.set $p1
                end
                local.get $l12
                local.get $l12
                i32.load
                i32.const 2
                i32.add
                local.tee $l5
                i32.store
              end
            else
              local.get $p1
              local.set $l5
              i32.const -1
              local.set $p1
            end
            i32.const 0
            local.set $l14
            loop $L32
              local.get $l5
              i32.load8_s
              i32.const -65
              i32.add
              i32.const 57
              i32.gt_u
              if $I33
                i32.const -1
                local.set $l9
                br $B3
              end
              local.get $l12
              local.get $l5
              i32.const 1
              i32.add
              local.tee $l6
              i32.store
              local.get $l5
              i32.load8_s
              local.get $l14
              i32.const 58
              i32.mul
              i32.add
              i32.load8_s offset=959
              local.tee $l5
              i32.const 255
              i32.and
              local.tee $l7
              i32.const -1
              i32.add
              i32.const 8
              i32.lt_u
              if $I34
                local.get $l6
                local.set $l5
                local.get $l7
                local.set $l14
                br $L32
              end
            end
            local.get $l5
            i32.eqz
            if $I35
              i32.const -1
              local.set $l9
              br $B3
            end
            local.get $l15
            i32.const -1
            i32.gt_s
            local.set $l18
            block $B36
              block $B37
                local.get $l5
                i32.const 19
                i32.eq
                if $I38
                  local.get $l18
                  if $I39
                    i32.const -1
                    local.set $l9
                    br $B3
                  end
                else
                  block $B40
                    local.get $l18
                    if $I41
                      local.get $l15
                      i32.const 2
                      i32.shl
                      local.get $p4
                      i32.add
                      local.get $l7
                      i32.store
                      local.get $l10
                      local.get $l15
                      i32.const 3
                      i32.shl
                      local.get $p3
                      i32.add
                      i64.load
                      i64.store
                      br $B40
                    end
                    local.get $l19
                    i32.eqz
                    if $I42
                      i32.const 0
                      local.set $l9
                      br $B3
                    end
                    local.get $l10
                    local.get $l7
                    local.get $p2
                    call $f24
                    local.get $l12
                    i32.load
                    local.set $l6
                    br $B37
                  end
                end
                local.get $l19
                br_if $B37
                i32.const 0
                local.set $p1
                br $B36
              end
              local.get $l13
              i32.const -65537
              i32.and
              local.tee $l7
              local.get $l13
              local.get $l13
              i32.const 8192
              i32.and
              select
              local.set $l5
              block $B43
                block $B44
                  block $B45
                    block $B46
                      block $B47
                        block $B48
                          block $B49
                            block $B50
                              block $B51
                                block $B52
                                  block $B53
                                    block $B54
                                      block $B55
                                        block $B56
                                          block $B57
                                            block $B58
                                              block $B59
                                                local.get $l6
                                                i32.const -1
                                                i32.add
                                                i32.load8_s
                                                local.tee $l6
                                                i32.const -33
                                                i32.and
                                                local.get $l6
                                                local.get $l6
                                                i32.const 15
                                                i32.and
                                                i32.const 3
                                                i32.eq
                                                local.get $l14
                                                i32.const 0
                                                i32.ne
                                                i32.and
                                                select
                                                local.tee $l6
                                                i32.const 65
                                                i32.sub
                                                br_table $B50 $B49 $B52 $B49 $B50 $B50 $B50 $B49 $B49 $B49 $B49 $B49 $B49 $B49 $B49 $B49 $B49 $B49 $B51 $B49 $B49 $B49 $B49 $B48 $B49 $B49 $B49 $B49 $B49 $B49 $B49 $B49 $B50 $B49 $B54 $B56 $B50 $B50 $B50 $B49 $B56 $B49 $B49 $B49 $B49 $B59 $B57 $B58 $B49 $B49 $B53 $B49 $B55 $B49 $B49 $B48 $B49
                                              end
                                              block $B60
                                                block $B61
                                                  block $B62
                                                    block $B63
                                                      block $B64
                                                        block $B65
                                                          block $B66
                                                            block $B67
                                                              local.get $l14
                                                              i32.const 255
                                                              i32.and
                                                              i32.const 24
                                                              i32.shl
                                                              i32.const 24
                                                              i32.shr_s
                                                              br_table $B67 $B66 $B65 $B64 $B63 $B60 $B62 $B61 $B60
                                                            end
                                                            local.get $l10
                                                            i32.load
                                                            local.get $l9
                                                            i32.store
                                                            i32.const 0
                                                            local.set $p1
                                                            br $B36
                                                          end
                                                          local.get $l10
                                                          i32.load
                                                          local.get $l9
                                                          i32.store
                                                          i32.const 0
                                                          local.set $p1
                                                          br $B36
                                                        end
                                                        local.get $l10
                                                        i32.load
                                                        local.get $l9
                                                        i64.extend_i32_s
                                                        i64.store
                                                        i32.const 0
                                                        local.set $p1
                                                        br $B36
                                                      end
                                                      local.get $l10
                                                      i32.load
                                                      local.get $l9
                                                      i32.store16
                                                      i32.const 0
                                                      local.set $p1
                                                      br $B36
                                                    end
                                                    local.get $l10
                                                    i32.load
                                                    local.get $l9
                                                    i32.store8
                                                    i32.const 0
                                                    local.set $p1
                                                    br $B36
                                                  end
                                                  local.get $l10
                                                  i32.load
                                                  local.get $l9
                                                  i32.store
                                                  i32.const 0
                                                  local.set $p1
                                                  br $B36
                                                end
                                                local.get $l10
                                                i32.load
                                                local.get $l9
                                                i64.extend_i32_s
                                                i64.store
                                                i32.const 0
                                                local.set $p1
                                                br $B36
                                              end
                                              i32.const 0
                                              local.set $p1
                                              br $B36
                                            end
                                            local.get $l5
                                            i32.const 8
                                            i32.or
                                            local.set $l5
                                            local.get $p1
                                            i32.const 8
                                            local.get $p1
                                            i32.const 8
                                            i32.gt_u
                                            select
                                            local.set $p1
                                            i32.const 120
                                            local.set $l6
                                            br $B48
                                          end
                                          local.get $l5
                                          local.set $l8
                                          local.get $p1
                                          local.get $l20
                                          local.get $l10
                                          i64.load
                                          local.get $l21
                                          call $f26
                                          local.tee $l13
                                          i32.sub
                                          local.tee $l6
                                          i32.const 1
                                          i32.add
                                          local.get $l5
                                          i32.const 8
                                          i32.and
                                          i32.eqz
                                          local.get $p1
                                          local.get $l6
                                          i32.gt_s
                                          i32.or
                                          select
                                          local.set $p1
                                          i32.const 0
                                          local.set $l7
                                          i32.const 2146
                                          local.set $l14
                                          br $B45
                                        end
                                        local.get $l10
                                        i64.load
                                        local.tee $l26
                                        i64.const 0
                                        i64.lt_s
                                        if $I68
                                          local.get $l10
                                          i64.const 0
                                          local.get $l26
                                          i64.sub
                                          local.tee $l26
                                          i64.store
                                          i32.const 1
                                          local.set $l7
                                          i32.const 2146
                                          local.set $l14
                                          br $B47
                                        else
                                          local.get $l5
                                          i32.const 2049
                                          i32.and
                                          i32.const 0
                                          i32.ne
                                          local.set $l7
                                          i32.const 2147
                                          i32.const 2148
                                          i32.const 2146
                                          local.get $l5
                                          i32.const 1
                                          i32.and
                                          select
                                          local.get $l5
                                          i32.const 2048
                                          i32.and
                                          select
                                          local.set $l14
                                          br $B47
                                        end
                                        unreachable
                                      end
                                      local.get $l10
                                      i64.load
                                      local.set $l26
                                      i32.const 0
                                      local.set $l7
                                      i32.const 2146
                                      local.set $l14
                                      br $B47
                                    end
                                    local.get $l23
                                    local.get $l10
                                    i64.load
                                    i64.store8
                                    local.get $l23
                                    local.set $l6
                                    local.get $l7
                                    local.set $l5
                                    i32.const 1
                                    local.set $l8
                                    i32.const 0
                                    local.set $l7
                                    i32.const 2146
                                    local.set $l14
                                    local.get $l20
                                    local.set $p1
                                    br $B43
                                  end
                                  local.get $l10
                                  i32.load
                                  local.tee $l5
                                  i32.const 2156
                                  local.get $l5
                                  select
                                  local.tee $l13
                                  local.get $p1
                                  call $f28
                                  local.tee $l15
                                  i32.eqz
                                  local.set $l18
                                  local.get $l7
                                  local.set $l5
                                  local.get $p1
                                  local.get $l15
                                  local.get $l13
                                  local.tee $l6
                                  i32.sub
                                  local.get $l18
                                  select
                                  local.set $l8
                                  i32.const 0
                                  local.set $l7
                                  i32.const 2146
                                  local.set $l14
                                  local.get $p1
                                  local.get $l6
                                  i32.add
                                  local.get $l15
                                  local.get $l18
                                  select
                                  local.set $p1
                                  br $B43
                                end
                                local.get $l24
                                local.get $l10
                                i64.load
                                i64.store32
                                local.get $l25
                                i32.const 0
                                i32.store
                                local.get $l10
                                local.get $l24
                                i32.store
                                i32.const -1
                                local.set $l8
                                br $B46
                              end
                              local.get $p1
                              if $I69
                                local.get $p1
                                local.set $l8
                                br $B46
                              else
                                local.get $p0
                                i32.const 32
                                local.get $l16
                                i32.const 0
                                local.get $l5
                                call $f29
                                i32.const 0
                                local.set $p1
                                br $B44
                              end
                              unreachable
                            end
                            local.get $p0
                            local.get $l10
                            f64.load
                            local.get $l16
                            local.get $p1
                            local.get $l5
                            local.get $l6
                            i32.const 3
                            call_indirect (type $t7) $env.table
                            local.set $p1
                            br $B36
                          end
                          local.get $l8
                          local.set $l6
                          local.get $p1
                          local.set $l8
                          i32.const 0
                          local.set $l7
                          i32.const 2146
                          local.set $l14
                          local.get $l20
                          local.set $p1
                          br $B43
                        end
                        local.get $l10
                        i64.load
                        local.get $l21
                        local.get $l6
                        i32.const 32
                        i32.and
                        call $f25
                        local.set $l13
                        i32.const 0
                        i32.const 2
                        local.get $l5
                        local.tee $l8
                        i32.const 8
                        i32.and
                        i32.eqz
                        local.get $l10
                        i64.load
                        i64.eqz
                        i32.or
                        local.tee $l5
                        select
                        local.set $l7
                        i32.const 2146
                        local.get $l6
                        i32.const 4
                        i32.shr_u
                        i32.const 2146
                        i32.add
                        local.get $l5
                        select
                        local.set $l14
                        br $B45
                      end
                      local.get $l26
                      local.get $l21
                      call $f27
                      local.set $l13
                      local.get $l5
                      local.set $l8
                      br $B45
                    end
                    i32.const 0
                    local.set $p1
                    local.get $l10
                    i32.load
                    local.set $l6
                    block $B70
                      block $B71
                        loop $L72
                          local.get $l6
                          i32.load
                          local.tee $l7
                          if $I73
                            local.get $l22
                            local.get $l7
                            call $f30
                            local.tee $l7
                            i32.const 0
                            i32.lt_s
                            local.tee $l14
                            local.get $l7
                            local.get $l8
                            local.get $p1
                            i32.sub
                            i32.gt_u
                            i32.or
                            br_if $B71
                            local.get $l6
                            i32.const 4
                            i32.add
                            local.set $l6
                            local.get $l8
                            local.get $p1
                            local.get $l7
                            i32.add
                            local.tee $p1
                            i32.gt_u
                            br_if $L72
                          end
                        end
                        br $B70
                      end
                      local.get $l14
                      if $I74
                        i32.const -1
                        local.set $l9
                        br $B3
                      end
                    end
                    local.get $p0
                    i32.const 32
                    local.get $l16
                    local.get $p1
                    local.get $l5
                    call $f29
                    local.get $p1
                    if $I75
                      i32.const 0
                      local.set $l8
                      local.get $l10
                      i32.load
                      local.set $l6
                      loop $L76
                        local.get $l6
                        i32.load
                        local.tee $l7
                        i32.eqz
                        br_if $B44
                        local.get $l22
                        local.get $l7
                        call $f30
                        local.tee $l7
                        local.get $l8
                        i32.add
                        local.tee $l8
                        local.get $p1
                        i32.gt_s
                        br_if $B44
                        local.get $l6
                        i32.const 4
                        i32.add
                        local.set $l6
                        local.get $p0
                        local.get $l22
                        local.get $l7
                        call $f22
                        local.get $l8
                        local.get $p1
                        i32.lt_u
                        br_if $L76
                      end
                      br $B44
                    else
                      i32.const 0
                      local.set $p1
                      br $B44
                    end
                    unreachable
                  end
                  local.get $l13
                  local.get $l21
                  local.get $l10
                  i64.load
                  i64.const 0
                  i64.ne
                  local.tee $l15
                  local.get $p1
                  i32.const 0
                  i32.ne
                  i32.or
                  local.tee $l18
                  select
                  local.set $l6
                  local.get $l8
                  i32.const -65537
                  i32.and
                  local.get $l8
                  local.get $p1
                  i32.const -1
                  i32.gt_s
                  select
                  local.set $l5
                  local.get $p1
                  local.get $l20
                  local.get $l13
                  i32.sub
                  local.get $l15
                  i32.const 1
                  i32.xor
                  i32.const 1
                  i32.and
                  i32.add
                  local.tee $l8
                  local.get $p1
                  local.get $l8
                  i32.gt_s
                  select
                  i32.const 0
                  local.get $l18
                  select
                  local.set $l8
                  local.get $l20
                  local.set $p1
                  br $B43
                end
                local.get $p0
                i32.const 32
                local.get $l16
                local.get $p1
                local.get $l5
                i32.const 8192
                i32.xor
                call $f29
                local.get $l16
                local.get $p1
                local.get $l16
                local.get $p1
                i32.gt_s
                select
                local.set $p1
                br $B36
              end
              local.get $p0
              i32.const 32
              local.get $l7
              local.get $p1
              local.get $l6
              i32.sub
              local.tee $l13
              local.get $l8
              local.get $l8
              local.get $l13
              i32.lt_s
              select
              local.tee $l15
              i32.add
              local.tee $l8
              local.get $l16
              local.get $l16
              local.get $l8
              i32.lt_s
              select
              local.tee $p1
              local.get $l8
              local.get $l5
              call $f29
              local.get $p0
              local.get $l14
              local.get $l7
              call $f22
              local.get $p0
              i32.const 48
              local.get $p1
              local.get $l8
              local.get $l5
              i32.const 65536
              i32.xor
              call $f29
              local.get $p0
              i32.const 48
              local.get $l15
              local.get $l13
              i32.const 0
              call $f29
              local.get $p0
              local.get $l6
              local.get $l13
              call $f22
              local.get $p0
              i32.const 32
              local.get $p1
              local.get $l8
              local.get $l5
              i32.const 8192
              i32.xor
              call $f29
            end
            local.get $l11
            local.set $l5
            br $L2
          end
        end
        br $B0
      end
      local.get $p0
      i32.eqz
      if $I77
        local.get $l5
        if $I78 (result i32)
          i32.const 1
          local.set $p0
          loop $L79
            local.get $p0
            i32.const 2
            i32.shl
            local.get $p4
            i32.add
            i32.load
            local.tee $p1
            if $I80
              local.get $p0
              i32.const 3
              i32.shl
              local.get $p3
              i32.add
              local.get $p1
              local.get $p2
              call $f24
              local.get $p0
              i32.const 1
              i32.add
              local.tee $p0
              i32.const 10
              i32.lt_u
              br_if $L79
              i32.const 1
              local.set $l9
              br $B0
            end
          end
          loop $L81 (result i32)
            local.get $p0
            i32.const 2
            i32.shl
            local.get $p4
            i32.add
            i32.load
            if $I82
              i32.const -1
              local.set $l9
              br $B0
            end
            local.get $p0
            i32.const 1
            i32.add
            local.tee $p0
            i32.const 10
            i32.lt_u
            br_if $L81
            i32.const 1
          end
        else
          i32.const 0
        end
        local.set $l9
      end
    end
    local.get $l17
    global.set $g1
    local.get $l9)
  (func $f22 (type $t4) (param $p0 i32) (param $p1 i32) (param $p2 i32)
    local.get $p0
    i32.load
    i32.const 32
    i32.and
    i32.eqz
    if $I0
      local.get $p1
      local.get $p2
      local.get $p0
      call $f32
      drop
    end)
  (func $f23 (type $t0) (param $p0 i32) (result i32)
    (local $l1 i32) (local $l2 i32)
    local.get $p0
    i32.load
    i32.load8_s
    call $f16
    if $I0
      loop $L1
        local.get $p0
        i32.load
        local.tee $l2
        i32.load8_s
        local.get $l1
        i32.const 10
        i32.mul
        i32.const -48
        i32.add
        i32.add
        local.set $l1
        local.get $p0
        local.get $l2
        i32.const 1
        i32.add
        local.tee $l2
        i32.store
        local.get $l2
        i32.load8_s
        call $f16
        br_if $L1
      end
    end
    local.get $l1)
  (func $f24 (type $t4) (param $p0 i32) (param $p1 i32) (param $p2 i32)
    (local $l3 i32) (local $l4 i64) (local $l5 f64)
    local.get $p1
    i32.const 20
    i32.le_u
    if $I0
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
                          block $B11
                            local.get $p1
                            i32.const 9
                            i32.sub
                            br_table $B11 $B10 $B9 $B8 $B7 $B6 $B5 $B4 $B3 $B2 $B1
                          end
                          local.get $p2
                          i32.load
                          i32.const 3
                          i32.add
                          i32.const -4
                          i32.and
                          local.tee $p1
                          i32.load
                          local.set $l3
                          local.get $p2
                          local.get $p1
                          i32.const 4
                          i32.add
                          i32.store
                          local.get $p0
                          local.get $l3
                          i32.store
                          br $B1
                        end
                        local.get $p2
                        i32.load
                        i32.const 3
                        i32.add
                        i32.const -4
                        i32.and
                        local.tee $p1
                        i32.load
                        local.set $l3
                        local.get $p2
                        local.get $p1
                        i32.const 4
                        i32.add
                        i32.store
                        local.get $p0
                        local.get $l3
                        i64.extend_i32_s
                        i64.store
                        br $B1
                      end
                      local.get $p2
                      i32.load
                      i32.const 3
                      i32.add
                      i32.const -4
                      i32.and
                      local.tee $p1
                      i32.load
                      local.set $l3
                      local.get $p2
                      local.get $p1
                      i32.const 4
                      i32.add
                      i32.store
                      local.get $p0
                      local.get $l3
                      i64.extend_i32_u
                      i64.store
                      br $B1
                    end
                    local.get $p2
                    i32.load
                    i32.const 7
                    i32.add
                    i32.const -8
                    i32.and
                    local.tee $p1
                    i64.load
                    local.set $l4
                    local.get $p2
                    local.get $p1
                    i32.const 8
                    i32.add
                    i32.store
                    local.get $p0
                    local.get $l4
                    i64.store
                    br $B1
                  end
                  local.get $p2
                  i32.load
                  i32.const 3
                  i32.add
                  i32.const -4
                  i32.and
                  local.tee $p1
                  i32.load
                  local.set $l3
                  local.get $p2
                  local.get $p1
                  i32.const 4
                  i32.add
                  i32.store
                  local.get $p0
                  local.get $l3
                  i32.const 65535
                  i32.and
                  i32.const 16
                  i32.shl
                  i32.const 16
                  i32.shr_s
                  i64.extend_i32_s
                  i64.store
                  br $B1
                end
                local.get $p2
                i32.load
                i32.const 3
                i32.add
                i32.const -4
                i32.and
                local.tee $p1
                i32.load
                local.set $l3
                local.get $p2
                local.get $p1
                i32.const 4
                i32.add
                i32.store
                local.get $p0
                local.get $l3
                i32.const 65535
                i32.and
                i64.extend_i32_u
                i64.store
                br $B1
              end
              local.get $p2
              i32.load
              i32.const 3
              i32.add
              i32.const -4
              i32.and
              local.tee $p1
              i32.load
              local.set $l3
              local.get $p2
              local.get $p1
              i32.const 4
              i32.add
              i32.store
              local.get $p0
              local.get $l3
              i32.const 255
              i32.and
              i32.const 24
              i32.shl
              i32.const 24
              i32.shr_s
              i64.extend_i32_s
              i64.store
              br $B1
            end
            local.get $p2
            i32.load
            i32.const 3
            i32.add
            i32.const -4
            i32.and
            local.tee $p1
            i32.load
            local.set $l3
            local.get $p2
            local.get $p1
            i32.const 4
            i32.add
            i32.store
            local.get $p0
            local.get $l3
            i32.const 255
            i32.and
            i64.extend_i32_u
            i64.store
            br $B1
          end
          local.get $p2
          i32.load
          i32.const 7
          i32.add
          i32.const -8
          i32.and
          local.tee $p1
          f64.load
          local.set $l5
          local.get $p2
          local.get $p1
          i32.const 8
          i32.add
          i32.store
          local.get $p0
          local.get $l5
          f64.store
          br $B1
        end
        local.get $p0
        local.get $p2
        i32.const 9
        call_indirect (type $t3) $env.table
      end
    end)
  (func $f25 (type $t14) (param $p0 i64) (param $p1 i32) (param $p2 i32) (result i32)
    local.get $p0
    i64.eqz
    i32.eqz
    if $I0
      loop $L1
        local.get $p1
        i32.const -1
        i32.add
        local.tee $p1
        local.get $p2
        local.get $p0
        i32.wrap_i64
        i32.const 15
        i32.and
        i32.const 1488
        i32.add
        i32.load8_u
        i32.or
        i32.store8
        local.get $p0
        i64.const 4
        i64.shr_u
        local.tee $p0
        i64.eqz
        i32.eqz
        br_if $L1
      end
    end
    local.get $p1)
  (func $f26 (type $t11) (param $p0 i64) (param $p1 i32) (result i32)
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
        i64.eqz
        i32.eqz
        br_if $L1
      end
    end
    local.get $p1)
  (func $f27 (type $t11) (param $p0 i64) (param $p1 i32) (result i32)
    (local $l2 i32) (local $l3 i32) (local $l4 i64)
    local.get $p0
    i32.wrap_i64
    local.set $l2
    local.get $p0
    i64.const 4294967295
    i64.gt_u
    if $I0
      loop $L1
        local.get $p1
        i32.const -1
        i32.add
        local.tee $p1
        local.get $p0
        local.get $p0
        i64.const 10
        i64.div_u
        local.tee $l4
        i64.const 10
        i64.mul
        i64.sub
        i32.wrap_i64
        i32.const 255
        i32.and
        i32.const 48
        i32.or
        i32.store8
        local.get $p0
        i64.const 42949672959
        i64.gt_u
        if $I2
          local.get $l4
          local.set $p0
          br $L1
        end
      end
      local.get $l4
      i32.wrap_i64
      local.set $l2
    end
    local.get $l2
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
        i32.const 10
        i32.ge_u
        if $I5
          local.get $l3
          local.set $l2
          br $L4
        end
      end
    end
    local.get $p1)
  (func $f28 (type $t5) (param $p0 i32) (param $p1 i32) (result i32)
    (local $l2 i32)
    block $B0
      block $B1
        block $B2
          local.get $p1
          i32.const 0
          i32.ne
          local.tee $l2
          local.get $p0
          i32.const 3
          i32.and
          i32.const 0
          i32.ne
          i32.and
          if $I3
            loop $L4
              local.get $p0
              i32.load8_u
              i32.eqz
              br_if $B2
              local.get $p1
              i32.const -1
              i32.add
              local.tee $p1
              i32.const 0
              i32.ne
              local.tee $l2
              local.get $p0
              i32.const 1
              i32.add
              local.tee $p0
              i32.const 3
              i32.and
              i32.const 0
              i32.ne
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
        if $I5
          local.get $p1
          i32.eqz
          br_if $B1
          br $B0
        end
        block $B6
          block $B7
            local.get $p1
            i32.const 3
            i32.le_u
            br_if $B7
            loop $L8
              local.get $p0
              i32.load
              local.tee $l2
              i32.const -2139062144
              i32.and
              i32.const -2139062144
              i32.xor
              local.get $l2
              i32.const -16843009
              i32.add
              i32.and
              i32.eqz
              if $I9
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
                br_if $L8
                br $B7
              end
            end
            br $B6
          end
          local.get $p1
          i32.eqz
          br_if $B1
        end
        loop $L10
          local.get $p0
          i32.load8_u
          i32.eqz
          br_if $B0
          local.get $p1
          i32.const -1
          i32.add
          local.tee $p1
          i32.eqz
          br_if $B1
          local.get $p0
          i32.const 1
          i32.add
          local.set $p0
          br $L10
        end
        unreachable
      end
      i32.const 0
      local.set $p0
    end
    local.get $p0)
  (func $f29 (type $t12) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32) (param $p4 i32)
    (local $l5 i32) (local $l6 i32)
    global.get $g1
    local.set $l6
    global.get $g1
    i32.const 256
    i32.add
    global.set $g1
    local.get $l6
    local.set $l5
    local.get $p4
    i32.const 73728
    i32.and
    i32.eqz
    local.get $p2
    local.get $p3
    i32.gt_s
    i32.and
    if $I0
      local.get $l5
      local.get $p1
      i32.const 24
      i32.shl
      i32.const 24
      i32.shr_s
      local.get $p2
      local.get $p3
      i32.sub
      local.tee $p1
      i32.const 256
      local.get $p1
      i32.const 256
      i32.lt_u
      select
      call $_memset
      drop
      local.get $p1
      i32.const 255
      i32.gt_u
      if $I1
        local.get $p2
        local.get $p3
        i32.sub
        local.set $p2
        loop $L2
          local.get $p0
          local.get $l5
          i32.const 256
          call $f22
          local.get $p1
          i32.const -256
          i32.add
          local.tee $p1
          i32.const 255
          i32.gt_u
          br_if $L2
        end
        local.get $p2
        i32.const 255
        i32.and
        local.set $p1
      end
      local.get $p0
      local.get $l5
      local.get $p1
      call $f22
    end
    local.get $l6
    global.set $g1)
  (func $f30 (type $t5) (param $p0 i32) (param $p1 i32) (result i32)
    local.get $p0
    if $I0 (result i32)
      local.get $p0
      local.get $p1
      call $f31
    else
      i32.const 0
    end)
  (func $f31 (type $t5) (param $p0 i32) (param $p1 i32) (result i32)
    local.get $p0
    if $I0 (result i32)
      block $B1 (result i32)
        local.get $p1
        i32.const 128
        i32.lt_u
        if $I2
          local.get $p0
          local.get $p1
          i32.store8
          i32.const 1
          br $B1
        end
        i32.const 1828
        i32.load
        i32.load
        i32.eqz
        if $I3
          local.get $p1
          i32.const -128
          i32.and
          i32.const 57216
          i32.eq
          if $I4
            local.get $p0
            local.get $p1
            i32.store8
            i32.const 1
            br $B1
          else
            i32.const 3312
            i32.const 25
            i32.store
            i32.const -1
            br $B1
          end
          unreachable
        end
        local.get $p1
        i32.const 2048
        i32.lt_u
        if $I5
          local.get $p0
          local.get $p1
          i32.const 6
          i32.shr_u
          i32.const 192
          i32.or
          i32.store8
          local.get $p0
          local.get $p1
          i32.const 63
          i32.and
          i32.const 128
          i32.or
          i32.store8 offset=1
          i32.const 2
          br $B1
        end
        local.get $p1
        i32.const -8192
        i32.and
        i32.const 57344
        i32.eq
        local.get $p1
        i32.const 55296
        i32.lt_u
        i32.or
        if $I6
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
          local.get $p0
          local.get $p1
          i32.const 63
          i32.and
          i32.const 128
          i32.or
          i32.store8 offset=2
          i32.const 3
          br $B1
        end
        local.get $p1
        i32.const -65536
        i32.add
        i32.const 1048576
        i32.lt_u
        if $I7 (result i32)
          local.get $p0
          local.get $p1
          i32.const 18
          i32.shr_u
          i32.const 240
          i32.or
          i32.store8
          local.get $p0
          local.get $p1
          i32.const 12
          i32.shr_u
          i32.const 63
          i32.and
          i32.const 128
          i32.or
          i32.store8 offset=1
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
          i32.const 63
          i32.and
          i32.const 128
          i32.or
          i32.store8 offset=3
          i32.const 4
        else
          i32.const 3312
          i32.const 25
          i32.store
          i32.const -1
        end
      end
    else
      i32.const 1
    end)
  (func $f32 (type $t1) (param $p0 i32) (param $p1 i32) (param $p2 i32) (result i32)
    (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32)
    block $B0
      block $B1
        local.get $p2
        i32.const 16
        i32.add
        local.tee $l4
        i32.load
        local.tee $l3
        br_if $B1
        local.get $p2
        call $f33
        if $I2 (result i32)
          i32.const 0
        else
          local.get $l4
          i32.load
          local.set $l3
          br $B1
        end
        local.set $p2
        br $B0
      end
      local.get $l3
      local.get $p2
      i32.const 20
      i32.add
      local.tee $l5
      i32.load
      local.tee $l4
      i32.sub
      local.get $p1
      i32.lt_u
      if $I3
        local.get $p2
        i32.const 36
        i32.add
        i32.load
        local.set $l3
        local.get $p2
        local.get $p0
        local.get $p1
        local.get $l3
        i32.const 1
        i32.and
        i32.const 4
        i32.add
        call_indirect (type $t1) $env.table
        local.set $p2
        br $B0
      end
      local.get $p1
      i32.eqz
      local.get $p2
      i32.const 75
      i32.add
      i32.load8_s
      i32.const 0
      i32.lt_s
      i32.or
      if $I4 (result i32)
        i32.const 0
      else
        block $B5 (result i32)
          local.get $p1
          local.set $l3
          loop $L6
            local.get $p0
            local.get $l3
            i32.const -1
            i32.add
            local.tee $l6
            i32.add
            i32.load8_s
            i32.const 10
            i32.ne
            if $I7
              local.get $l6
              if $I8
                local.get $l6
                local.set $l3
                br $L6
              else
                i32.const 0
                br $B5
              end
              unreachable
            end
          end
          local.get $p2
          i32.const 36
          i32.add
          i32.load
          local.set $l4
          local.get $p2
          local.get $p0
          local.get $l3
          local.get $l4
          i32.const 1
          i32.and
          i32.const 4
          i32.add
          call_indirect (type $t1) $env.table
          local.tee $p2
          local.get $l3
          i32.lt_u
          br_if $B0
          local.get $l5
          i32.load
          local.set $l4
          local.get $p1
          local.get $l3
          i32.sub
          local.set $p1
          local.get $p0
          local.get $l3
          i32.add
          local.set $p0
          local.get $l3
        end
      end
      local.set $p2
      local.get $l4
      local.get $p0
      local.get $p1
      call $_memcpy
      drop
      local.get $l5
      local.get $l5
      i32.load
      local.get $p1
      i32.add
      i32.store
      local.get $p1
      local.get $p2
      i32.add
      local.set $p2
    end
    local.get $p2)
  (func $f33 (type $t0) (param $p0 i32) (result i32)
    (local $l1 i32) (local $l2 i32)
    local.get $p0
    i32.const 74
    i32.add
    local.tee $l2
    i32.load8_s
    local.set $l1
    local.get $l2
    local.get $l1
    local.get $l1
    i32.const 255
    i32.add
    i32.or
    i32.store8
    local.get $p0
    i32.load
    local.tee $l1
    i32.const 8
    i32.and
    if $I0 (result i32)
      local.get $p0
      local.get $l1
      i32.const 32
      i32.or
      i32.store
      i32.const -1
    else
      local.get $p0
      i32.const 8
      i32.add
      i32.const 0
      i32.store
      local.get $p0
      i32.const 4
      i32.add
      i32.const 0
      i32.store
      local.get $p0
      i32.const 28
      i32.add
      local.get $p0
      i32.const 44
      i32.add
      i32.load
      local.tee $l1
      i32.store
      local.get $p0
      i32.const 20
      i32.add
      local.get $l1
      i32.store
      local.get $p0
      i32.const 16
      i32.add
      local.get $l1
      local.get $p0
      i32.const 48
      i32.add
      i32.load
      i32.add
      i32.store
      i32.const 0
    end)
  (func $f34 (type $t15) (param $p0 f64) (param $p1 i32) (result f64)
    (local $l2 i32) (local $l3 i64) (local $l4 i64)
    block $B0
      block $B1
        local.get $p0
        i64.reinterpret_f64
        local.tee $l3
        i64.const 52
        i64.shr_u
        local.tee $l4
        i32.wrap_i64
        i32.const 2047
        i32.and
        local.tee $l2
        if $I2
          local.get $l2
          i32.const 2047
          i32.eq
          if $I3
            br $B0
          else
            br $B1
          end
          unreachable
        end
        local.get $p1
        local.get $p0
        f64.const 0x0p+0 (;=0;)
        f64.ne
        if $I4 (result i32)
          local.get $p0
          f64.const 0x1p+64 (;=1.84467e+19;)
          f64.mul
          local.get $p1
          call $f34
          local.set $p0
          local.get $p1
          i32.load
          i32.const -64
          i32.add
        else
          i32.const 0
        end
        i32.store
        br $B0
      end
      local.get $p1
      local.get $l4
      i32.wrap_i64
      i32.const 2047
      i32.and
      i32.const -1022
      i32.add
      i32.store
      local.get $l3
      i64.const -9218868437227405313
      i64.and
      i64.const 4602678819172646912
      i64.or
      f64.reinterpret_i64
      local.set $p0
    end
    local.get $p0)
  (func $f35 (type $t1) (param $p0 i32) (param $p1 i32) (param $p2 i32) (result i32)
    (local $l3 i32)
    local.get $p1
    local.set $l3
    local.get $p2
    i32.load offset=76
    drop
    local.get $p0
    local.get $l3
    local.get $p2
    call $f32
    local.tee $p0
    local.get $p1
    local.get $p0
    local.get $l3
    i32.ne
    select)
  (func $f36 (type $t0) (param $p0 i32) (result i32)
    (local $l1 i32) (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32)
    global.get $g1
    local.set $l3
    global.get $g1
    i32.const 16
    i32.add
    global.set $g1
    local.get $l3
    local.tee $l4
    i32.const 10
    i32.store8
    block $B0
      block $B1
        local.get $p0
        i32.const 16
        i32.add
        local.tee $l2
        i32.load
        local.tee $l1
        br_if $B1
        local.get $p0
        call $f33
        if $I2 (result i32)
          i32.const -1
        else
          local.get $l2
          i32.load
          local.set $l1
          br $B1
        end
        local.set $l1
        br $B0
      end
      local.get $p0
      i32.const 20
      i32.add
      local.tee $l2
      i32.load
      local.tee $l5
      local.get $l1
      i32.lt_u
      if $I3
        i32.const 10
        local.tee $l1
        local.get $p0
        i32.load8_s offset=75
        i32.ne
        if $I4
          local.get $l2
          local.get $l5
          i32.const 1
          i32.add
          i32.store
          local.get $l5
          i32.const 10
          i32.store8
          br $B0
        end
      end
      local.get $p0
      local.get $l4
      i32.const 1
      local.get $p0
      i32.load offset=36
      i32.const 1
      i32.and
      i32.const 4
      i32.add
      call_indirect (type $t1) $env.table
      i32.const 1
      i32.eq
      if $I5 (result i32)
        local.get $l4
        i32.load8_u
      else
        i32.const -1
      end
      local.set $l1
    end
    local.get $l3
    global.set $g1
    local.get $l1)
  (func $f37 (type $t3) (param $p0 i32) (param $p1 i32)
    (local $l2 i32)
    global.get $g1
    local.set $l2
    global.get $g1
    i32.const 16
    i32.add
    global.set $g1
    local.get $l2
    local.get $p1
    i32.store
    i32.const 1648
    i32.load
    local.get $p0
    local.get $l2
    call $f20
    local.get $l2
    global.set $g1)
  (func $f38 (type $t2) (param $p0 i32)
    (local $l1 i32) (local $l2 i32)
    i32.const 1648
    i32.load
    local.tee $l1
    i32.load offset=76
    i32.const -1
    i32.gt_s
    if $I0 (result i32)
      i32.const 1
    else
      i32.const 0
    end
    drop
    local.get $p0
    call $f17
    local.tee $l2
    local.get $p0
    local.get $l2
    local.get $l1
    call $f35
    i32.ne
    i32.const 31
    i32.shl
    i32.const 31
    i32.shr_s
    i32.const 0
    i32.lt_s
    if $I1 (result i32)
      i32.const -1
    else
      block $B2 (result i32)
        local.get $l1
        i32.load8_s offset=75
        i32.const 10
        i32.ne
        if $I3
          local.get $l1
          i32.const 20
          i32.add
          local.tee $l2
          i32.load
          local.tee $p0
          local.get $l1
          i32.load offset=16
          i32.lt_u
          if $I4
            local.get $l2
            local.get $p0
            i32.const 1
            i32.add
            i32.store
            local.get $p0
            i32.const 10
            i32.store8
            i32.const 0
            br $B2
          end
        end
        local.get $l1
        call $f36
      end
    end
    drop)
  (func $_malloc (type $t0) (param $p0 i32) (result i32)
    (local $l1 i32) (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32) (local $l9 i32) (local $l10 i32) (local $l11 i32) (local $l12 i32)
    global.get $g1
    local.set $l10
    global.get $g1
    i32.const 16
    i32.add
    global.set $g1
    local.get $p0
    i32.const 245
    i32.lt_u
    if $I0 (result i32)
      i32.const 3316
      i32.load
      local.tee $l3
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
      local.tee $l2
      i32.const 3
      i32.shr_u
      local.tee $p0
      i32.shr_u
      local.tee $l1
      i32.const 3
      i32.and
      if $I1
        local.get $l1
        i32.const 1
        i32.and
        i32.const 1
        i32.xor
        local.get $p0
        i32.add
        local.tee $p0
        i32.const 3
        i32.shl
        i32.const 3356
        i32.add
        local.tee $l1
        i32.const 8
        i32.add
        local.tee $l6
        i32.load
        local.tee $l2
        i32.const 8
        i32.add
        local.tee $l5
        i32.load
        local.tee $l4
        local.get $l1
        i32.eq
        if $I2
          i32.const 3316
          local.get $l3
          i32.const 1
          local.get $p0
          i32.shl
          i32.const -1
          i32.xor
          i32.and
          i32.store
        else
          local.get $l4
          local.get $l1
          i32.store offset=12
          local.get $l6
          local.get $l4
          i32.store
        end
        local.get $l2
        local.get $p0
        i32.const 3
        i32.shl
        local.tee $p0
        i32.const 3
        i32.or
        i32.store offset=4
        local.get $p0
        local.get $l2
        i32.add
        i32.const 4
        i32.add
        local.tee $p0
        local.get $p0
        i32.load
        i32.const 1
        i32.or
        i32.store
        local.get $l10
        global.set $g1
        local.get $l5
        return
      end
      local.get $l2
      i32.const 3324
      i32.load
      local.tee $l7
      i32.gt_u
      if $I3 (result i32)
        local.get $l1
        if $I4
          i32.const 2
          local.get $p0
          i32.shl
          local.tee $l4
          i32.const 0
          local.get $l4
          i32.sub
          i32.or
          local.get $l1
          local.get $p0
          i32.shl
          i32.and
          local.tee $p0
          i32.const 0
          local.get $p0
          i32.sub
          i32.and
          i32.const -1
          i32.add
          local.tee $p0
          i32.const 12
          i32.shr_u
          i32.const 16
          i32.and
          local.tee $l1
          local.get $p0
          local.get $l1
          i32.shr_u
          local.tee $p0
          i32.const 5
          i32.shr_u
          i32.const 8
          i32.and
          local.tee $l1
          i32.or
          local.get $p0
          local.get $l1
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
          local.tee $l4
          i32.const 3
          i32.shl
          i32.const 3356
          i32.add
          local.tee $p0
          i32.const 8
          i32.add
          local.tee $l5
          i32.load
          local.tee $l1
          i32.const 8
          i32.add
          local.tee $l8
          i32.load
          local.tee $l6
          local.get $p0
          i32.eq
          if $I5
            i32.const 3316
            local.get $l3
            i32.const 1
            local.get $l4
            i32.shl
            i32.const -1
            i32.xor
            i32.and
            local.tee $p0
            i32.store
          else
            local.get $l6
            local.get $p0
            i32.store offset=12
            local.get $l5
            local.get $l6
            i32.store
            local.get $l3
            local.set $p0
          end
          local.get $l1
          local.get $l2
          i32.const 3
          i32.or
          i32.store offset=4
          local.get $l1
          local.get $l2
          i32.add
          local.tee $l6
          local.get $l4
          i32.const 3
          i32.shl
          local.tee $l4
          local.get $l2
          i32.sub
          local.tee $l3
          i32.const 1
          i32.or
          i32.store offset=4
          local.get $l1
          local.get $l4
          i32.add
          local.get $l3
          i32.store
          local.get $l7
          if $I6
            i32.const 3336
            i32.load
            local.set $l2
            local.get $l7
            i32.const 3
            i32.shr_u
            local.tee $l4
            i32.const 3
            i32.shl
            i32.const 3356
            i32.add
            local.set $l1
            local.get $p0
            i32.const 1
            local.get $l4
            i32.shl
            local.tee $l4
            i32.and
            if $I7 (result i32)
              local.get $l1
              i32.const 8
              i32.add
              local.tee $p0
              local.set $l4
              local.get $p0
              i32.load
            else
              i32.const 3316
              local.get $p0
              local.get $l4
              i32.or
              i32.store
              local.get $l1
              i32.const 8
              i32.add
              local.set $l4
              local.get $l1
            end
            local.set $p0
            local.get $l4
            local.get $l2
            i32.store
            local.get $p0
            local.get $l2
            i32.store offset=12
            local.get $l2
            local.get $p0
            i32.store offset=8
            local.get $l2
            local.get $l1
            i32.store offset=12
          end
          i32.const 3324
          local.get $l3
          i32.store
          i32.const 3336
          local.get $l6
          i32.store
          local.get $l10
          global.set $g1
          local.get $l8
          return
        end
        i32.const 3320
        i32.load
        local.tee $l11
        if $I8 (result i32)
          local.get $l11
          i32.const 0
          local.get $l11
          i32.sub
          i32.and
          i32.const -1
          i32.add
          local.tee $p0
          i32.const 12
          i32.shr_u
          i32.const 16
          i32.and
          local.tee $l1
          local.get $p0
          local.get $l1
          i32.shr_u
          local.tee $p0
          i32.const 5
          i32.shr_u
          i32.const 8
          i32.and
          local.tee $l1
          i32.or
          local.get $p0
          local.get $l1
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
          i32.const 3620
          i32.add
          i32.load
          local.tee $p0
          i32.load offset=4
          i32.const -8
          i32.and
          local.get $l2
          i32.sub
          local.set $l8
          local.get $p0
          local.set $l5
          loop $L9
            block $B10
              local.get $p0
              i32.load offset=16
              local.tee $l1
              if $I11
                local.get $l1
                local.set $p0
              else
                local.get $p0
                i32.load offset=20
                local.tee $p0
                i32.eqz
                br_if $B10
              end
              local.get $p0
              i32.load offset=4
              i32.const -8
              i32.and
              local.get $l2
              i32.sub
              local.tee $l4
              local.get $l8
              i32.lt_u
              local.set $l1
              local.get $l4
              local.get $l8
              local.get $l1
              select
              local.set $l8
              local.get $p0
              local.get $l5
              local.get $l1
              select
              local.set $l5
              br $L9
            end
          end
          local.get $l2
          local.get $l5
          i32.add
          local.tee $l12
          local.get $l5
          i32.gt_u
          if $I12 (result i32)
            local.get $l5
            i32.load offset=24
            local.set $l9
            local.get $l5
            i32.load offset=12
            local.tee $p0
            local.get $l5
            i32.eq
            if $I13
              block $B14
                local.get $l5
                i32.const 20
                i32.add
                local.tee $l1
                i32.load
                local.tee $p0
                i32.eqz
                if $I15
                  local.get $l5
                  i32.const 16
                  i32.add
                  local.tee $l1
                  i32.load
                  local.tee $p0
                  i32.eqz
                  if $I16
                    i32.const 0
                    local.set $p0
                    br $B14
                  end
                end
                loop $L17
                  block $B18
                    local.get $p0
                    i32.const 20
                    i32.add
                    local.tee $l4
                    i32.load
                    local.tee $l6
                    if $I19 (result i32)
                      local.get $l4
                      local.set $l1
                      local.get $l6
                    else
                      local.get $p0
                      i32.const 16
                      i32.add
                      local.tee $l4
                      i32.load
                      local.tee $l6
                      i32.eqz
                      br_if $B18
                      local.get $l4
                      local.set $l1
                      local.get $l6
                    end
                    local.set $p0
                    br $L17
                  end
                end
                local.get $l1
                i32.const 0
                i32.store
              end
            else
              local.get $l5
              i32.load offset=8
              local.tee $l1
              local.get $p0
              i32.store offset=12
              local.get $p0
              local.get $l1
              i32.store offset=8
            end
            local.get $l9
            if $I20
              block $B21
                local.get $l5
                i32.load offset=28
                local.tee $l1
                i32.const 2
                i32.shl
                i32.const 3620
                i32.add
                local.tee $l4
                i32.load
                local.get $l5
                i32.eq
                if $I22
                  local.get $l4
                  local.get $p0
                  i32.store
                  local.get $p0
                  i32.eqz
                  if $I23
                    i32.const 3320
                    local.get $l11
                    i32.const 1
                    local.get $l1
                    i32.shl
                    i32.const -1
                    i32.xor
                    i32.and
                    i32.store
                    br $B21
                  end
                else
                  local.get $l9
                  i32.const 16
                  i32.add
                  local.tee $l1
                  local.get $l9
                  i32.const 20
                  i32.add
                  local.get $l1
                  i32.load
                  local.get $l5
                  i32.eq
                  select
                  local.get $p0
                  i32.store
                  local.get $p0
                  i32.eqz
                  br_if $B21
                end
                local.get $p0
                local.get $l9
                i32.store offset=24
                local.get $l5
                i32.load offset=16
                local.tee $l1
                if $I24
                  local.get $p0
                  local.get $l1
                  i32.store offset=16
                  local.get $l1
                  local.get $p0
                  i32.store offset=24
                end
                local.get $l5
                i32.load offset=20
                local.tee $l1
                if $I25
                  local.get $p0
                  local.get $l1
                  i32.store offset=20
                  local.get $l1
                  local.get $p0
                  i32.store offset=24
                end
              end
            end
            local.get $l8
            i32.const 16
            i32.lt_u
            if $I26
              local.get $l5
              local.get $l2
              local.get $l8
              i32.add
              local.tee $p0
              i32.const 3
              i32.or
              i32.store offset=4
              local.get $p0
              local.get $l5
              i32.add
              i32.const 4
              i32.add
              local.tee $p0
              local.get $p0
              i32.load
              i32.const 1
              i32.or
              i32.store
            else
              local.get $l5
              local.get $l2
              i32.const 3
              i32.or
              i32.store offset=4
              local.get $l12
              local.get $l8
              i32.const 1
              i32.or
              i32.store offset=4
              local.get $l8
              local.get $l12
              i32.add
              local.get $l8
              i32.store
              local.get $l7
              if $I27
                i32.const 3336
                i32.load
                local.set $l2
                local.get $l7
                i32.const 3
                i32.shr_u
                local.tee $l1
                i32.const 3
                i32.shl
                i32.const 3356
                i32.add
                local.set $p0
                local.get $l3
                i32.const 1
                local.get $l1
                i32.shl
                local.tee $l1
                i32.and
                if $I28 (result i32)
                  local.get $p0
                  i32.const 8
                  i32.add
                  local.tee $l1
                  local.set $l3
                  local.get $l1
                  i32.load
                else
                  i32.const 3316
                  local.get $l1
                  local.get $l3
                  i32.or
                  i32.store
                  local.get $p0
                  i32.const 8
                  i32.add
                  local.set $l3
                  local.get $p0
                end
                local.set $l1
                local.get $l3
                local.get $l2
                i32.store
                local.get $l1
                local.get $l2
                i32.store offset=12
                local.get $l2
                local.get $l1
                i32.store offset=8
                local.get $l2
                local.get $p0
                i32.store offset=12
              end
              i32.const 3324
              local.get $l8
              i32.store
              i32.const 3336
              local.get $l12
              i32.store
            end
            local.get $l10
            global.set $g1
            local.get $l5
            i32.const 8
            i32.add
            return
          else
            local.get $l2
          end
        else
          local.get $l2
        end
      else
        local.get $l2
      end
    else
      local.get $p0
      i32.const -65
      i32.gt_u
      if $I29 (result i32)
        i32.const -1
      else
        block $B30 (result i32)
          local.get $p0
          i32.const 11
          i32.add
          local.tee $p0
          i32.const -8
          i32.and
          local.set $l1
          i32.const 3320
          i32.load
          local.tee $l4
          if $I31 (result i32)
            local.get $p0
            i32.const 8
            i32.shr_u
            local.tee $p0
            if $I32 (result i32)
              local.get $l1
              i32.const 16777215
              i32.gt_u
              if $I33 (result i32)
                i32.const 31
              else
                local.get $p0
                local.get $p0
                i32.const 1048320
                i32.add
                i32.const 16
                i32.shr_u
                i32.const 8
                i32.and
                local.tee $l3
                i32.shl
                local.tee $l2
                i32.const 520192
                i32.add
                i32.const 16
                i32.shr_u
                i32.const 4
                i32.and
                local.set $p0
                local.get $l1
                i32.const 14
                local.get $l2
                local.get $p0
                i32.shl
                local.tee $l6
                i32.const 245760
                i32.add
                i32.const 16
                i32.shr_u
                i32.const 2
                i32.and
                local.tee $l2
                local.get $p0
                local.get $l3
                i32.or
                i32.or
                i32.sub
                local.get $l6
                local.get $l2
                i32.shl
                i32.const 15
                i32.shr_u
                i32.add
                local.tee $p0
                i32.const 7
                i32.add
                i32.shr_u
                i32.const 1
                i32.and
                local.get $p0
                i32.const 1
                i32.shl
                i32.or
              end
            else
              i32.const 0
            end
            local.set $l7
            i32.const 0
            local.get $l1
            i32.sub
            local.set $l2
            block $B34
              block $B35
                local.get $l7
                i32.const 2
                i32.shl
                i32.const 3620
                i32.add
                i32.load
                local.tee $p0
                if $I36
                  local.get $l1
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
                  local.set $l6
                  i32.const 0
                  local.set $l3
                  loop $L37
                    local.get $p0
                    i32.load offset=4
                    i32.const -8
                    i32.and
                    local.get $l1
                    i32.sub
                    local.tee $l8
                    local.get $l2
                    i32.lt_u
                    if $I38
                      local.get $l8
                      if $I39 (result i32)
                        local.get $p0
                        local.set $l3
                        local.get $l8
                      else
                        i32.const 0
                        local.set $l3
                        local.get $p0
                        local.set $l2
                        br $B35
                      end
                      local.set $l2
                    end
                    local.get $l5
                    local.get $p0
                    i32.load offset=20
                    local.tee $l5
                    local.get $l5
                    i32.eqz
                    local.get $l5
                    local.get $p0
                    i32.const 16
                    i32.add
                    local.get $l6
                    i32.const 31
                    i32.shr_u
                    i32.const 2
                    i32.shl
                    i32.add
                    i32.load
                    local.tee $l8
                    i32.eq
                    i32.or
                    select
                    local.set $p0
                    local.get $l6
                    i32.const 1
                    i32.shl
                    local.set $l6
                    local.get $l8
                    if $I40
                      local.get $p0
                      local.set $l5
                      local.get $l8
                      local.set $p0
                      br $L37
                    end
                  end
                else
                  i32.const 0
                  local.set $p0
                  i32.const 0
                  local.set $l3
                end
                local.get $p0
                local.get $l3
                i32.or
                if $I41 (result i32)
                  local.get $p0
                  local.set $l6
                  local.get $l3
                else
                  local.get $l1
                  local.get $l4
                  i32.const 2
                  local.get $l7
                  i32.shl
                  local.tee $p0
                  i32.const 0
                  local.get $p0
                  i32.sub
                  i32.or
                  i32.and
                  local.tee $p0
                  i32.eqz
                  br_if $B30
                  drop
                  local.get $p0
                  i32.const 0
                  local.get $p0
                  i32.sub
                  i32.and
                  i32.const -1
                  i32.add
                  local.tee $p0
                  i32.const 12
                  i32.shr_u
                  i32.const 16
                  i32.and
                  local.tee $l3
                  local.get $p0
                  local.get $l3
                  i32.shr_u
                  local.tee $p0
                  i32.const 5
                  i32.shr_u
                  i32.const 8
                  i32.and
                  local.tee $l3
                  i32.or
                  local.get $p0
                  local.get $l3
                  i32.shr_u
                  local.tee $p0
                  i32.const 2
                  i32.shr_u
                  i32.const 4
                  i32.and
                  local.tee $l3
                  i32.or
                  local.get $p0
                  local.get $l3
                  i32.shr_u
                  local.tee $p0
                  i32.const 1
                  i32.shr_u
                  i32.const 2
                  i32.and
                  local.tee $l3
                  i32.or
                  local.get $p0
                  local.get $l3
                  i32.shr_u
                  local.tee $p0
                  i32.const 1
                  i32.shr_u
                  i32.const 1
                  i32.and
                  local.tee $l3
                  i32.or
                  local.get $p0
                  local.get $l3
                  i32.shr_u
                  i32.add
                  i32.const 2
                  i32.shl
                  i32.const 3620
                  i32.add
                  i32.load
                  local.set $l6
                  i32.const 0
                end
                local.set $p0
                local.get $l6
                if $I42 (result i32)
                  local.get $l2
                  local.set $l3
                  local.get $l6
                  local.set $l2
                  br $B35
                else
                  local.get $p0
                  local.set $l6
                  local.get $l2
                end
                local.set $l3
                br $B34
              end
              local.get $p0
              local.set $l6
              loop $L43
                local.get $l2
                i32.load offset=4
                i32.const -8
                i32.and
                local.get $l1
                i32.sub
                local.tee $l8
                local.get $l3
                i32.lt_u
                local.set $l5
                local.get $l8
                local.get $l3
                local.get $l5
                select
                local.set $l3
                local.get $l2
                local.get $l6
                local.get $l5
                select
                local.set $l6
                local.get $l2
                i32.load offset=16
                local.tee $p0
                i32.eqz
                if $I44
                  local.get $l2
                  i32.load offset=20
                  local.set $p0
                end
                local.get $p0
                if $I45
                  local.get $p0
                  local.set $l2
                  br $L43
                end
              end
            end
            local.get $l6
            if $I46 (result i32)
              local.get $l3
              i32.const 3324
              i32.load
              local.get $l1
              i32.sub
              i32.lt_u
              if $I47 (result i32)
                local.get $l1
                local.get $l6
                i32.add
                local.tee $l7
                local.get $l6
                i32.gt_u
                if $I48 (result i32)
                  local.get $l6
                  i32.load offset=24
                  local.set $l9
                  local.get $l6
                  i32.load offset=12
                  local.tee $p0
                  local.get $l6
                  i32.eq
                  if $I49
                    block $B50
                      local.get $l6
                      i32.const 20
                      i32.add
                      local.tee $l2
                      i32.load
                      local.tee $p0
                      i32.eqz
                      if $I51
                        local.get $l6
                        i32.const 16
                        i32.add
                        local.tee $l2
                        i32.load
                        local.tee $p0
                        i32.eqz
                        if $I52
                          i32.const 0
                          local.set $p0
                          br $B50
                        end
                      end
                      loop $L53
                        block $B54
                          local.get $p0
                          i32.const 20
                          i32.add
                          local.tee $l5
                          i32.load
                          local.tee $l8
                          if $I55 (result i32)
                            local.get $l5
                            local.set $l2
                            local.get $l8
                          else
                            local.get $p0
                            i32.const 16
                            i32.add
                            local.tee $l5
                            i32.load
                            local.tee $l8
                            i32.eqz
                            br_if $B54
                            local.get $l5
                            local.set $l2
                            local.get $l8
                          end
                          local.set $p0
                          br $L53
                        end
                      end
                      local.get $l2
                      i32.const 0
                      i32.store
                    end
                  else
                    local.get $l6
                    i32.load offset=8
                    local.tee $l2
                    local.get $p0
                    i32.store offset=12
                    local.get $p0
                    local.get $l2
                    i32.store offset=8
                  end
                  local.get $l9
                  if $I56
                    block $B57
                      local.get $l6
                      i32.load offset=28
                      local.tee $l2
                      i32.const 2
                      i32.shl
                      i32.const 3620
                      i32.add
                      local.tee $l5
                      i32.load
                      local.get $l6
                      i32.eq
                      if $I58
                        local.get $l5
                        local.get $p0
                        i32.store
                        local.get $p0
                        i32.eqz
                        if $I59
                          i32.const 3320
                          local.get $l4
                          i32.const 1
                          local.get $l2
                          i32.shl
                          i32.const -1
                          i32.xor
                          i32.and
                          local.tee $p0
                          i32.store
                          br $B57
                        end
                      else
                        local.get $l9
                        i32.const 16
                        i32.add
                        local.tee $l2
                        local.get $l9
                        i32.const 20
                        i32.add
                        local.get $l2
                        i32.load
                        local.get $l6
                        i32.eq
                        select
                        local.get $p0
                        i32.store
                        local.get $p0
                        i32.eqz
                        if $I60
                          local.get $l4
                          local.set $p0
                          br $B57
                        end
                      end
                      local.get $p0
                      local.get $l9
                      i32.store offset=24
                      local.get $l6
                      i32.load offset=16
                      local.tee $l2
                      if $I61
                        local.get $p0
                        local.get $l2
                        i32.store offset=16
                        local.get $l2
                        local.get $p0
                        i32.store offset=24
                      end
                      local.get $l6
                      i32.load offset=20
                      local.tee $l2
                      if $I62 (result i32)
                        local.get $p0
                        local.get $l2
                        i32.store offset=20
                        local.get $l2
                        local.get $p0
                        i32.store offset=24
                        local.get $l4
                      else
                        local.get $l4
                      end
                      local.set $p0
                    end
                  else
                    local.get $l4
                    local.set $p0
                  end
                  local.get $l3
                  i32.const 16
                  i32.lt_u
                  if $I63
                    local.get $l6
                    local.get $l1
                    local.get $l3
                    i32.add
                    local.tee $p0
                    i32.const 3
                    i32.or
                    i32.store offset=4
                    local.get $p0
                    local.get $l6
                    i32.add
                    i32.const 4
                    i32.add
                    local.tee $p0
                    local.get $p0
                    i32.load
                    i32.const 1
                    i32.or
                    i32.store
                  else
                    block $B64
                      local.get $l6
                      local.get $l1
                      i32.const 3
                      i32.or
                      i32.store offset=4
                      local.get $l7
                      local.get $l3
                      i32.const 1
                      i32.or
                      i32.store offset=4
                      local.get $l3
                      local.get $l7
                      i32.add
                      local.get $l3
                      i32.store
                      local.get $l3
                      i32.const 3
                      i32.shr_u
                      local.set $l1
                      local.get $l3
                      i32.const 256
                      i32.lt_u
                      if $I65
                        local.get $l1
                        i32.const 3
                        i32.shl
                        i32.const 3356
                        i32.add
                        local.set $p0
                        i32.const 3316
                        i32.load
                        local.tee $l2
                        i32.const 1
                        local.get $l1
                        i32.shl
                        local.tee $l1
                        i32.and
                        if $I66 (result i32)
                          local.get $p0
                          i32.const 8
                          i32.add
                          local.tee $l1
                          local.set $l2
                          local.get $l1
                          i32.load
                        else
                          i32.const 3316
                          local.get $l1
                          local.get $l2
                          i32.or
                          i32.store
                          local.get $p0
                          i32.const 8
                          i32.add
                          local.set $l2
                          local.get $p0
                        end
                        local.set $l1
                        local.get $l2
                        local.get $l7
                        i32.store
                        local.get $l1
                        local.get $l7
                        i32.store offset=12
                        local.get $l7
                        local.get $l1
                        i32.store offset=8
                        local.get $l7
                        local.get $p0
                        i32.store offset=12
                        br $B64
                      end
                      local.get $l3
                      i32.const 8
                      i32.shr_u
                      local.tee $l1
                      if $I67 (result i32)
                        local.get $l3
                        i32.const 16777215
                        i32.gt_u
                        if $I68 (result i32)
                          i32.const 31
                        else
                          local.get $l1
                          local.get $l1
                          i32.const 1048320
                          i32.add
                          i32.const 16
                          i32.shr_u
                          i32.const 8
                          i32.and
                          local.tee $l4
                          i32.shl
                          local.tee $l2
                          i32.const 520192
                          i32.add
                          i32.const 16
                          i32.shr_u
                          i32.const 4
                          i32.and
                          local.set $l1
                          local.get $l3
                          i32.const 14
                          local.get $l2
                          local.get $l1
                          i32.shl
                          local.tee $l5
                          i32.const 245760
                          i32.add
                          i32.const 16
                          i32.shr_u
                          i32.const 2
                          i32.and
                          local.tee $l2
                          local.get $l1
                          local.get $l4
                          i32.or
                          i32.or
                          i32.sub
                          local.get $l5
                          local.get $l2
                          i32.shl
                          i32.const 15
                          i32.shr_u
                          i32.add
                          local.tee $l1
                          i32.const 7
                          i32.add
                          i32.shr_u
                          i32.const 1
                          i32.and
                          local.get $l1
                          i32.const 1
                          i32.shl
                          i32.or
                        end
                      else
                        i32.const 0
                      end
                      local.tee $l1
                      i32.const 2
                      i32.shl
                      i32.const 3620
                      i32.add
                      local.set $l2
                      local.get $l7
                      local.get $l1
                      i32.store offset=28
                      local.get $l7
                      i32.const 16
                      i32.add
                      local.tee $l4
                      i32.const 0
                      i32.store offset=4
                      local.get $l4
                      i32.const 0
                      i32.store
                      local.get $p0
                      i32.const 1
                      local.get $l1
                      i32.shl
                      local.tee $l4
                      i32.and
                      i32.eqz
                      if $I69
                        i32.const 3320
                        local.get $p0
                        local.get $l4
                        i32.or
                        i32.store
                        local.get $l2
                        local.get $l7
                        i32.store
                        local.get $l7
                        local.get $l2
                        i32.store offset=24
                        local.get $l7
                        local.get $l7
                        i32.store offset=12
                        local.get $l7
                        local.get $l7
                        i32.store offset=8
                        br $B64
                      end
                      local.get $l2
                      i32.load
                      local.tee $p0
                      i32.load offset=4
                      i32.const -8
                      i32.and
                      local.get $l3
                      i32.eq
                      if $I70
                        local.get $p0
                        local.set $l1
                      else
                        block $B71
                          local.get $l3
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
                          local.set $l2
                          loop $L72
                            local.get $p0
                            i32.const 16
                            i32.add
                            local.get $l2
                            i32.const 31
                            i32.shr_u
                            i32.const 2
                            i32.shl
                            i32.add
                            local.tee $l4
                            i32.load
                            local.tee $l1
                            if $I73
                              local.get $l2
                              i32.const 1
                              i32.shl
                              local.set $l2
                              local.get $l1
                              i32.load offset=4
                              i32.const -8
                              i32.and
                              local.get $l3
                              i32.eq
                              br_if $B71
                              local.get $l1
                              local.set $p0
                              br $L72
                            end
                          end
                          local.get $l4
                          local.get $l7
                          i32.store
                          local.get $l7
                          local.get $p0
                          i32.store offset=24
                          local.get $l7
                          local.get $l7
                          i32.store offset=12
                          local.get $l7
                          local.get $l7
                          i32.store offset=8
                          br $B64
                        end
                      end
                      local.get $l1
                      i32.const 8
                      i32.add
                      local.tee $p0
                      i32.load
                      local.tee $l2
                      local.get $l7
                      i32.store offset=12
                      local.get $p0
                      local.get $l7
                      i32.store
                      local.get $l7
                      local.get $l2
                      i32.store offset=8
                      local.get $l7
                      local.get $l1
                      i32.store offset=12
                      local.get $l7
                      i32.const 0
                      i32.store offset=24
                    end
                  end
                  local.get $l10
                  global.set $g1
                  local.get $l6
                  i32.const 8
                  i32.add
                  return
                else
                  local.get $l1
                end
              else
                local.get $l1
              end
            else
              local.get $l1
            end
          else
            local.get $l1
          end
        end
      end
    end
    local.set $p0
    i32.const 3324
    i32.load
    local.tee $l2
    local.get $p0
    i32.ge_u
    if $I74
      i32.const 3336
      i32.load
      local.set $l1
      local.get $l2
      local.get $p0
      i32.sub
      local.tee $l3
      i32.const 15
      i32.gt_u
      if $I75
        i32.const 3336
        local.get $p0
        local.get $l1
        i32.add
        local.tee $l4
        i32.store
        i32.const 3324
        local.get $l3
        i32.store
        local.get $l4
        local.get $l3
        i32.const 1
        i32.or
        i32.store offset=4
        local.get $l1
        local.get $l2
        i32.add
        local.get $l3
        i32.store
        local.get $l1
        local.get $p0
        i32.const 3
        i32.or
        i32.store offset=4
      else
        i32.const 3324
        i32.const 0
        i32.store
        i32.const 3336
        i32.const 0
        i32.store
        local.get $l1
        local.get $l2
        i32.const 3
        i32.or
        i32.store offset=4
        local.get $l1
        local.get $l2
        i32.add
        i32.const 4
        i32.add
        local.tee $p0
        local.get $p0
        i32.load
        i32.const 1
        i32.or
        i32.store
      end
      local.get $l10
      global.set $g1
      local.get $l1
      i32.const 8
      i32.add
      return
    end
    i32.const 3328
    i32.load
    local.tee $l2
    local.get $p0
    i32.gt_u
    if $I76
      i32.const 3328
      local.get $l2
      local.get $p0
      i32.sub
      local.tee $l2
      i32.store
      i32.const 3340
      i32.const 3340
      i32.load
      local.tee $l1
      local.get $p0
      i32.add
      local.tee $l3
      i32.store
      local.get $l3
      local.get $l2
      i32.const 1
      i32.or
      i32.store offset=4
      local.get $l1
      local.get $p0
      i32.const 3
      i32.or
      i32.store offset=4
      local.get $l10
      global.set $g1
      local.get $l1
      i32.const 8
      i32.add
      return
    end
    local.get $l10
    local.set $l1
    i32.const 3788
    i32.load
    if $I77 (result i32)
      i32.const 3796
      i32.load
    else
      i32.const 3796
      i32.const 4096
      i32.store
      i32.const 3792
      i32.const 4096
      i32.store
      i32.const 3800
      i32.const -1
      i32.store
      i32.const 3804
      i32.const -1
      i32.store
      i32.const 3808
      i32.const 0
      i32.store
      i32.const 3760
      i32.const 0
      i32.store
      i32.const 3788
      local.get $l1
      i32.const -16
      i32.and
      i32.const 1431655768
      i32.xor
      i32.store
      i32.const 4096
    end
    local.tee $l1
    local.get $p0
    i32.const 47
    i32.add
    local.tee $l6
    i32.add
    local.tee $l5
    i32.const 0
    local.get $l1
    i32.sub
    local.tee $l8
    i32.and
    local.tee $l4
    local.get $p0
    i32.le_u
    if $I78
      local.get $l10
      global.set $g1
      i32.const 0
      return
    end
    i32.const 3756
    i32.load
    local.tee $l1
    if $I79
      i32.const 3748
      i32.load
      local.tee $l3
      local.get $l4
      i32.add
      local.tee $l7
      local.get $l3
      i32.le_u
      local.get $l7
      local.get $l1
      i32.gt_u
      i32.or
      if $I80
        local.get $l10
        global.set $g1
        i32.const 0
        return
      end
    end
    local.get $p0
    i32.const 48
    i32.add
    local.set $l7
    block $B81
      block $B82
        i32.const 3760
        i32.load
        i32.const 4
        i32.and
        if $I83
          i32.const 0
          local.set $l2
        else
          block $B84
            block $B85
              block $B86
                i32.const 3340
                i32.load
                local.tee $l1
                i32.eqz
                br_if $B86
                i32.const 3764
                local.set $l3
                loop $L87
                  block $B88
                    local.get $l3
                    i32.load
                    local.tee $l9
                    local.get $l1
                    i32.le_u
                    if $I89
                      local.get $l9
                      local.get $l3
                      i32.load offset=4
                      i32.add
                      local.get $l1
                      i32.gt_u
                      br_if $B88
                    end
                    local.get $l3
                    i32.load offset=8
                    local.tee $l3
                    br_if $L87
                    br $B86
                  end
                end
                local.get $l5
                local.get $l2
                i32.sub
                local.get $l8
                i32.and
                local.tee $l2
                i32.const 2147483647
                i32.lt_u
                if $I90
                  local.get $l2
                  call $f41
                  local.set $l1
                  local.get $l1
                  local.get $l3
                  i32.load
                  local.get $l3
                  i32.load offset=4
                  i32.add
                  i32.ne
                  br_if $B85
                  local.get $l1
                  i32.const -1
                  i32.ne
                  br_if $B82
                else
                  i32.const 0
                  local.set $l2
                end
                br $B84
              end
              i32.const 0
              call $f41
              local.tee $l1
              i32.const -1
              i32.eq
              if $I91 (result i32)
                i32.const 0
              else
                i32.const 3748
                i32.load
                local.tee $l5
                local.get $l1
                i32.const 3792
                i32.load
                local.tee $l2
                i32.const -1
                i32.add
                local.tee $l3
                i32.add
                i32.const 0
                local.get $l2
                i32.sub
                i32.and
                local.get $l1
                i32.sub
                i32.const 0
                local.get $l1
                local.get $l3
                i32.and
                select
                local.get $l4
                i32.add
                local.tee $l2
                i32.add
                local.set $l3
                local.get $l2
                i32.const 2147483647
                i32.lt_u
                local.get $l2
                local.get $p0
                i32.gt_u
                i32.and
                if $I92 (result i32)
                  i32.const 3756
                  i32.load
                  local.tee $l8
                  if $I93
                    local.get $l3
                    local.get $l5
                    i32.le_u
                    local.get $l3
                    local.get $l8
                    i32.gt_u
                    i32.or
                    if $I94
                      i32.const 0
                      local.set $l2
                      br $B84
                    end
                  end
                  local.get $l1
                  local.get $l2
                  call $f41
                  local.tee $l3
                  i32.eq
                  br_if $B82
                  local.get $l3
                  local.set $l1
                  br $B85
                else
                  i32.const 0
                end
              end
              local.set $l2
              br $B84
            end
            local.get $l1
            i32.const -1
            i32.ne
            local.get $l2
            i32.const 2147483647
            i32.lt_u
            i32.and
            local.get $l7
            local.get $l2
            i32.gt_u
            i32.and
            i32.eqz
            if $I95
              local.get $l1
              i32.const -1
              i32.eq
              if $I96
                i32.const 0
                local.set $l2
                br $B84
              else
                br $B82
              end
              unreachable
            end
            i32.const 3796
            i32.load
            local.tee $l3
            local.get $l6
            local.get $l2
            i32.sub
            i32.add
            i32.const 0
            local.get $l3
            i32.sub
            i32.and
            local.tee $l3
            i32.const 2147483647
            i32.ge_u
            br_if $B82
            i32.const 0
            local.get $l2
            i32.sub
            local.set $l6
            local.get $l3
            call $f41
            i32.const -1
            i32.eq
            if $I97 (result i32)
              local.get $l6
              call $f41
              drop
              i32.const 0
            else
              local.get $l2
              local.get $l3
              i32.add
              local.set $l2
              br $B82
            end
            local.set $l2
          end
          i32.const 3760
          i32.const 3760
          i32.load
          i32.const 4
          i32.or
          i32.store
        end
        local.get $l4
        i32.const 2147483647
        i32.lt_u
        if $I98
          local.get $l4
          call $f41
          local.set $l1
          i32.const 0
          call $f41
          local.tee $l3
          local.get $l1
          i32.sub
          local.tee $l6
          local.get $p0
          i32.const 40
          i32.add
          i32.gt_u
          local.set $l4
          local.get $l6
          local.get $l2
          local.get $l4
          select
          local.set $l2
          local.get $l4
          i32.const 1
          i32.xor
          local.get $l1
          i32.const -1
          i32.eq
          i32.or
          local.get $l1
          i32.const -1
          i32.ne
          local.get $l3
          i32.const -1
          i32.ne
          i32.and
          local.get $l1
          local.get $l3
          i32.lt_u
          i32.and
          i32.const 1
          i32.xor
          i32.or
          i32.eqz
          br_if $B82
        end
        br $B81
      end
      i32.const 3748
      i32.const 3748
      i32.load
      local.get $l2
      i32.add
      local.tee $l3
      i32.store
      local.get $l3
      i32.const 3752
      i32.load
      i32.gt_u
      if $I99
        i32.const 3752
        local.get $l3
        i32.store
      end
      i32.const 3340
      i32.load
      local.tee $l4
      if $I100
        block $B101
          i32.const 3764
          local.set $l3
          block $B102
            block $B103
              loop $L104
                local.get $l3
                i32.load
                local.tee $l6
                local.get $l3
                i32.load offset=4
                local.tee $l5
                i32.add
                local.get $l1
                i32.eq
                br_if $B103
                local.get $l3
                i32.load offset=8
                local.tee $l3
                br_if $L104
              end
              br $B102
            end
            local.get $l3
            i32.const 4
            i32.add
            local.set $l8
            local.get $l3
            i32.load offset=12
            i32.const 8
            i32.and
            i32.eqz
            if $I105
              local.get $l6
              local.get $l4
              i32.le_u
              local.get $l1
              local.get $l4
              i32.gt_u
              i32.and
              if $I106
                local.get $l8
                local.get $l2
                local.get $l5
                i32.add
                i32.store
                local.get $l4
                i32.const 0
                local.get $l4
                i32.const 8
                i32.add
                local.tee $l1
                i32.sub
                i32.const 7
                i32.and
                i32.const 0
                local.get $l1
                i32.const 7
                i32.and
                select
                local.tee $l3
                i32.add
                local.set $l1
                i32.const 3328
                i32.load
                local.get $l2
                i32.add
                local.tee $l6
                local.get $l3
                i32.sub
                local.set $l2
                i32.const 3340
                local.get $l1
                i32.store
                i32.const 3328
                local.get $l2
                i32.store
                local.get $l1
                local.get $l2
                i32.const 1
                i32.or
                i32.store offset=4
                local.get $l4
                local.get $l6
                i32.add
                i32.const 40
                i32.store offset=4
                i32.const 3344
                i32.const 3804
                i32.load
                i32.store
                br $B101
              end
            end
          end
          local.get $l1
          i32.const 3332
          i32.load
          i32.lt_u
          if $I107
            i32.const 3332
            local.get $l1
            i32.store
          end
          local.get $l1
          local.get $l2
          i32.add
          local.set $l6
          i32.const 3764
          local.set $l3
          block $B108
            block $B109
              loop $L110
                local.get $l3
                i32.load
                local.get $l6
                i32.eq
                br_if $B109
                local.get $l3
                i32.load offset=8
                local.tee $l3
                br_if $L110
              end
              br $B108
            end
            local.get $l3
            i32.load offset=12
            i32.const 8
            i32.and
            i32.eqz
            if $I111
              local.get $l3
              local.get $l1
              i32.store
              local.get $l3
              i32.const 4
              i32.add
              local.tee $l3
              local.get $l3
              i32.load
              local.get $l2
              i32.add
              i32.store
              i32.const 0
              local.get $l1
              i32.const 8
              i32.add
              local.tee $l2
              i32.sub
              i32.const 7
              i32.and
              i32.const 0
              local.get $l2
              i32.const 7
              i32.and
              select
              local.get $l1
              i32.add
              local.tee $l7
              local.get $p0
              i32.add
              local.set $l5
              local.get $l6
              i32.const 0
              local.get $l6
              i32.const 8
              i32.add
              local.tee $l1
              i32.sub
              i32.const 7
              i32.and
              i32.const 0
              local.get $l1
              i32.const 7
              i32.and
              select
              i32.add
              local.tee $l2
              local.get $l7
              i32.sub
              local.get $p0
              i32.sub
              local.set $l3
              local.get $l7
              local.get $p0
              i32.const 3
              i32.or
              i32.store offset=4
              local.get $l2
              local.get $l4
              i32.eq
              if $I112
                i32.const 3328
                i32.const 3328
                i32.load
                local.get $l3
                i32.add
                local.tee $p0
                i32.store
                i32.const 3340
                local.get $l5
                i32.store
                local.get $l5
                local.get $p0
                i32.const 1
                i32.or
                i32.store offset=4
              else
                block $B113
                  i32.const 3336
                  i32.load
                  local.get $l2
                  i32.eq
                  if $I114
                    i32.const 3324
                    i32.const 3324
                    i32.load
                    local.get $l3
                    i32.add
                    local.tee $p0
                    i32.store
                    i32.const 3336
                    local.get $l5
                    i32.store
                    local.get $l5
                    local.get $p0
                    i32.const 1
                    i32.or
                    i32.store offset=4
                    local.get $p0
                    local.get $l5
                    i32.add
                    local.get $p0
                    i32.store
                    br $B113
                  end
                  local.get $l2
                  i32.load offset=4
                  local.tee $l9
                  i32.const 3
                  i32.and
                  i32.const 1
                  i32.eq
                  if $I115
                    local.get $l9
                    i32.const 3
                    i32.shr_u
                    local.set $l4
                    local.get $l9
                    i32.const 256
                    i32.lt_u
                    if $I116
                      local.get $l2
                      i32.load offset=8
                      local.tee $p0
                      local.get $l2
                      i32.load offset=12
                      local.tee $l1
                      i32.eq
                      if $I117
                        i32.const 3316
                        i32.const 3316
                        i32.load
                        i32.const 1
                        local.get $l4
                        i32.shl
                        i32.const -1
                        i32.xor
                        i32.and
                        i32.store
                      else
                        local.get $p0
                        local.get $l1
                        i32.store offset=12
                        local.get $l1
                        local.get $p0
                        i32.store offset=8
                      end
                    else
                      block $B118
                        local.get $l2
                        i32.load offset=24
                        local.set $l8
                        local.get $l2
                        i32.load offset=12
                        local.tee $p0
                        local.get $l2
                        i32.eq
                        if $I119
                          block $B120
                            local.get $l2
                            i32.const 16
                            i32.add
                            local.tee $l1
                            i32.const 4
                            i32.add
                            local.tee $l4
                            i32.load
                            local.tee $p0
                            if $I121
                              local.get $l4
                              local.set $l1
                            else
                              local.get $l1
                              i32.load
                              local.tee $p0
                              i32.eqz
                              if $I122
                                i32.const 0
                                local.set $p0
                                br $B120
                              end
                            end
                            loop $L123
                              block $B124
                                local.get $p0
                                i32.const 20
                                i32.add
                                local.tee $l4
                                i32.load
                                local.tee $l6
                                if $I125 (result i32)
                                  local.get $l4
                                  local.set $l1
                                  local.get $l6
                                else
                                  local.get $p0
                                  i32.const 16
                                  i32.add
                                  local.tee $l4
                                  i32.load
                                  local.tee $l6
                                  i32.eqz
                                  br_if $B124
                                  local.get $l4
                                  local.set $l1
                                  local.get $l6
                                end
                                local.set $p0
                                br $L123
                              end
                            end
                            local.get $l1
                            i32.const 0
                            i32.store
                          end
                        else
                          local.get $l2
                          i32.load offset=8
                          local.tee $l1
                          local.get $p0
                          i32.store offset=12
                          local.get $p0
                          local.get $l1
                          i32.store offset=8
                        end
                        local.get $l8
                        i32.eqz
                        br_if $B118
                        local.get $l2
                        i32.load offset=28
                        local.tee $l1
                        i32.const 2
                        i32.shl
                        i32.const 3620
                        i32.add
                        local.tee $l4
                        i32.load
                        local.get $l2
                        i32.eq
                        if $I126
                          block $B127
                            local.get $l4
                            local.get $p0
                            i32.store
                            local.get $p0
                            br_if $B127
                            i32.const 3320
                            i32.const 3320
                            i32.load
                            i32.const 1
                            local.get $l1
                            i32.shl
                            i32.const -1
                            i32.xor
                            i32.and
                            i32.store
                            br $B118
                          end
                        else
                          local.get $l8
                          i32.const 16
                          i32.add
                          local.tee $l1
                          local.get $l8
                          i32.const 20
                          i32.add
                          local.get $l1
                          i32.load
                          local.get $l2
                          i32.eq
                          select
                          local.get $p0
                          i32.store
                          local.get $p0
                          i32.eqz
                          br_if $B118
                        end
                        local.get $p0
                        local.get $l8
                        i32.store offset=24
                        local.get $l2
                        i32.const 16
                        i32.add
                        local.tee $l4
                        i32.load
                        local.tee $l1
                        if $I128
                          local.get $p0
                          local.get $l1
                          i32.store offset=16
                          local.get $l1
                          local.get $p0
                          i32.store offset=24
                        end
                        local.get $l4
                        i32.load offset=4
                        local.tee $l1
                        i32.eqz
                        br_if $B118
                        local.get $p0
                        local.get $l1
                        i32.store offset=20
                        local.get $l1
                        local.get $p0
                        i32.store offset=24
                      end
                    end
                    local.get $l2
                    local.get $l9
                    i32.const -8
                    i32.and
                    local.tee $p0
                    i32.add
                    local.set $l2
                    local.get $p0
                    local.get $l3
                    i32.add
                    local.set $l3
                  end
                  local.get $l2
                  i32.const 4
                  i32.add
                  local.tee $p0
                  local.get $p0
                  i32.load
                  i32.const -2
                  i32.and
                  i32.store
                  local.get $l5
                  local.get $l3
                  i32.const 1
                  i32.or
                  i32.store offset=4
                  local.get $l3
                  local.get $l5
                  i32.add
                  local.get $l3
                  i32.store
                  local.get $l3
                  i32.const 3
                  i32.shr_u
                  local.set $l1
                  local.get $l3
                  i32.const 256
                  i32.lt_u
                  if $I129
                    local.get $l1
                    i32.const 3
                    i32.shl
                    i32.const 3356
                    i32.add
                    local.set $p0
                    i32.const 3316
                    i32.load
                    local.tee $l2
                    i32.const 1
                    local.get $l1
                    i32.shl
                    local.tee $l1
                    i32.and
                    if $I130 (result i32)
                      local.get $p0
                      i32.const 8
                      i32.add
                      local.tee $l1
                      local.set $l2
                      local.get $l1
                      i32.load
                    else
                      i32.const 3316
                      local.get $l1
                      local.get $l2
                      i32.or
                      i32.store
                      local.get $p0
                      i32.const 8
                      i32.add
                      local.set $l2
                      local.get $p0
                    end
                    local.set $l1
                    local.get $l2
                    local.get $l5
                    i32.store
                    local.get $l1
                    local.get $l5
                    i32.store offset=12
                    local.get $l5
                    local.get $l1
                    i32.store offset=8
                    local.get $l5
                    local.get $p0
                    i32.store offset=12
                    br $B113
                  end
                  local.get $l3
                  i32.const 8
                  i32.shr_u
                  local.tee $p0
                  if $I131 (result i32)
                    local.get $l3
                    i32.const 16777215
                    i32.gt_u
                    if $I132 (result i32)
                      i32.const 31
                    else
                      local.get $p0
                      local.get $p0
                      i32.const 1048320
                      i32.add
                      i32.const 16
                      i32.shr_u
                      i32.const 8
                      i32.and
                      local.tee $l2
                      i32.shl
                      local.tee $l1
                      i32.const 520192
                      i32.add
                      i32.const 16
                      i32.shr_u
                      i32.const 4
                      i32.and
                      local.set $p0
                      local.get $l3
                      i32.const 14
                      local.get $l1
                      local.get $p0
                      i32.shl
                      local.tee $l4
                      i32.const 245760
                      i32.add
                      i32.const 16
                      i32.shr_u
                      i32.const 2
                      i32.and
                      local.tee $l1
                      local.get $p0
                      local.get $l2
                      i32.or
                      i32.or
                      i32.sub
                      local.get $l4
                      local.get $l1
                      i32.shl
                      i32.const 15
                      i32.shr_u
                      i32.add
                      local.tee $p0
                      i32.const 7
                      i32.add
                      i32.shr_u
                      i32.const 1
                      i32.and
                      local.get $p0
                      i32.const 1
                      i32.shl
                      i32.or
                    end
                  else
                    i32.const 0
                  end
                  local.tee $l1
                  i32.const 2
                  i32.shl
                  i32.const 3620
                  i32.add
                  local.set $p0
                  local.get $l5
                  local.get $l1
                  i32.store offset=28
                  local.get $l5
                  i32.const 16
                  i32.add
                  local.tee $l2
                  i32.const 0
                  i32.store offset=4
                  local.get $l2
                  i32.const 0
                  i32.store
                  i32.const 3320
                  i32.load
                  local.tee $l2
                  i32.const 1
                  local.get $l1
                  i32.shl
                  local.tee $l4
                  i32.and
                  i32.eqz
                  if $I133
                    i32.const 3320
                    local.get $l2
                    local.get $l4
                    i32.or
                    i32.store
                    local.get $p0
                    local.get $l5
                    i32.store
                    local.get $l5
                    local.get $p0
                    i32.store offset=24
                    local.get $l5
                    local.get $l5
                    i32.store offset=12
                    local.get $l5
                    local.get $l5
                    i32.store offset=8
                    br $B113
                  end
                  local.get $p0
                  i32.load
                  local.tee $p0
                  i32.load offset=4
                  i32.const -8
                  i32.and
                  local.get $l3
                  i32.eq
                  if $I134
                    local.get $p0
                    local.set $l1
                  else
                    block $B135
                      local.get $l3
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
                      local.set $l2
                      loop $L136
                        local.get $p0
                        i32.const 16
                        i32.add
                        local.get $l2
                        i32.const 31
                        i32.shr_u
                        i32.const 2
                        i32.shl
                        i32.add
                        local.tee $l4
                        i32.load
                        local.tee $l1
                        if $I137
                          local.get $l2
                          i32.const 1
                          i32.shl
                          local.set $l2
                          local.get $l1
                          i32.load offset=4
                          i32.const -8
                          i32.and
                          local.get $l3
                          i32.eq
                          br_if $B135
                          local.get $l1
                          local.set $p0
                          br $L136
                        end
                      end
                      local.get $l4
                      local.get $l5
                      i32.store
                      local.get $l5
                      local.get $p0
                      i32.store offset=24
                      local.get $l5
                      local.get $l5
                      i32.store offset=12
                      local.get $l5
                      local.get $l5
                      i32.store offset=8
                      br $B113
                    end
                  end
                  local.get $l1
                  i32.const 8
                  i32.add
                  local.tee $p0
                  i32.load
                  local.tee $l2
                  local.get $l5
                  i32.store offset=12
                  local.get $p0
                  local.get $l5
                  i32.store
                  local.get $l5
                  local.get $l2
                  i32.store offset=8
                  local.get $l5
                  local.get $l1
                  i32.store offset=12
                  local.get $l5
                  i32.const 0
                  i32.store offset=24
                end
              end
              local.get $l10
              global.set $g1
              local.get $l7
              i32.const 8
              i32.add
              return
            end
          end
          i32.const 3764
          local.set $l3
          loop $L138
            block $B139
              local.get $l3
              i32.load
              local.tee $l6
              local.get $l4
              i32.le_u
              if $I140
                local.get $l6
                local.get $l3
                i32.load offset=4
                i32.add
                local.tee $l5
                local.get $l4
                i32.gt_u
                br_if $B139
              end
              local.get $l3
              i32.load offset=8
              local.set $l3
              br $L138
            end
          end
          local.get $l4
          i32.const 0
          local.get $l5
          i32.const -47
          i32.add
          local.tee $l6
          i32.const 8
          i32.add
          local.tee $l3
          i32.sub
          i32.const 7
          i32.and
          i32.const 0
          local.get $l3
          i32.const 7
          i32.and
          select
          local.get $l6
          i32.add
          local.tee $l3
          local.get $l3
          local.get $l4
          i32.const 16
          i32.add
          local.tee $l7
          i32.lt_u
          select
          local.tee $l3
          i32.const 8
          i32.add
          local.set $l6
          i32.const 3340
          i32.const 0
          local.get $l1
          i32.const 8
          i32.add
          local.tee $l8
          i32.sub
          i32.const 7
          i32.and
          i32.const 0
          local.get $l8
          i32.const 7
          i32.and
          select
          local.tee $l8
          local.get $l1
          i32.add
          local.tee $l9
          i32.store
          i32.const 3328
          local.get $l2
          i32.const -40
          i32.add
          local.tee $l11
          local.get $l8
          i32.sub
          local.tee $l8
          i32.store
          local.get $l9
          local.get $l8
          i32.const 1
          i32.or
          i32.store offset=4
          local.get $l1
          local.get $l11
          i32.add
          i32.const 40
          i32.store offset=4
          i32.const 3344
          i32.const 3804
          i32.load
          i32.store
          local.get $l3
          i32.const 4
          i32.add
          local.tee $l8
          i32.const 27
          i32.store
          local.get $l6
          i32.const 3764
          i64.load align=4
          i64.store align=4
          local.get $l6
          i32.const 3772
          i64.load align=4
          i64.store offset=8 align=4
          i32.const 3764
          local.get $l1
          i32.store
          i32.const 3768
          local.get $l2
          i32.store
          i32.const 3776
          i32.const 0
          i32.store
          i32.const 3772
          local.get $l6
          i32.store
          local.get $l3
          i32.const 24
          i32.add
          local.set $l1
          loop $L141
            local.get $l1
            i32.const 4
            i32.add
            local.tee $l2
            i32.const 7
            i32.store
            local.get $l1
            i32.const 8
            i32.add
            local.get $l5
            i32.lt_u
            if $I142
              local.get $l2
              local.set $l1
              br $L141
            end
          end
          local.get $l3
          local.get $l4
          i32.ne
          if $I143
            local.get $l8
            local.get $l8
            i32.load
            i32.const -2
            i32.and
            i32.store
            local.get $l4
            local.get $l3
            local.get $l4
            i32.sub
            local.tee $l6
            i32.const 1
            i32.or
            i32.store offset=4
            local.get $l3
            local.get $l6
            i32.store
            local.get $l6
            i32.const 3
            i32.shr_u
            local.set $l2
            local.get $l6
            i32.const 256
            i32.lt_u
            if $I144
              local.get $l2
              i32.const 3
              i32.shl
              i32.const 3356
              i32.add
              local.set $l1
              i32.const 3316
              i32.load
              local.tee $l3
              i32.const 1
              local.get $l2
              i32.shl
              local.tee $l2
              i32.and
              if $I145 (result i32)
                local.get $l1
                i32.const 8
                i32.add
                local.tee $l2
                local.set $l3
                local.get $l2
                i32.load
              else
                i32.const 3316
                local.get $l2
                local.get $l3
                i32.or
                i32.store
                local.get $l1
                i32.const 8
                i32.add
                local.set $l3
                local.get $l1
              end
              local.set $l2
              local.get $l3
              local.get $l4
              i32.store
              local.get $l2
              local.get $l4
              i32.store offset=12
              local.get $l4
              local.get $l2
              i32.store offset=8
              local.get $l4
              local.get $l1
              i32.store offset=12
              br $B101
            end
            local.get $l6
            i32.const 8
            i32.shr_u
            local.tee $l1
            if $I146 (result i32)
              local.get $l6
              i32.const 16777215
              i32.gt_u
              if $I147 (result i32)
                i32.const 31
              else
                local.get $l1
                local.get $l1
                i32.const 1048320
                i32.add
                i32.const 16
                i32.shr_u
                i32.const 8
                i32.and
                local.tee $l3
                i32.shl
                local.tee $l2
                i32.const 520192
                i32.add
                i32.const 16
                i32.shr_u
                i32.const 4
                i32.and
                local.set $l1
                local.get $l6
                i32.const 14
                local.get $l2
                local.get $l1
                i32.shl
                local.tee $l5
                i32.const 245760
                i32.add
                i32.const 16
                i32.shr_u
                i32.const 2
                i32.and
                local.tee $l2
                local.get $l1
                local.get $l3
                i32.or
                i32.or
                i32.sub
                local.get $l5
                local.get $l2
                i32.shl
                i32.const 15
                i32.shr_u
                i32.add
                local.tee $l1
                i32.const 7
                i32.add
                i32.shr_u
                i32.const 1
                i32.and
                local.get $l1
                i32.const 1
                i32.shl
                i32.or
              end
            else
              i32.const 0
            end
            local.tee $l2
            i32.const 2
            i32.shl
            i32.const 3620
            i32.add
            local.set $l1
            local.get $l4
            local.get $l2
            i32.store offset=28
            local.get $l4
            i32.const 0
            i32.store offset=20
            local.get $l7
            i32.const 0
            i32.store
            i32.const 3320
            i32.load
            local.tee $l3
            i32.const 1
            local.get $l2
            i32.shl
            local.tee $l5
            i32.and
            i32.eqz
            if $I148
              i32.const 3320
              local.get $l3
              local.get $l5
              i32.or
              i32.store
              local.get $l1
              local.get $l4
              i32.store
              local.get $l4
              local.get $l1
              i32.store offset=24
              local.get $l4
              local.get $l4
              i32.store offset=12
              local.get $l4
              local.get $l4
              i32.store offset=8
              br $B101
            end
            local.get $l1
            i32.load
            local.tee $l1
            i32.load offset=4
            i32.const -8
            i32.and
            local.get $l6
            i32.eq
            if $I149
              local.get $l1
              local.set $l2
            else
              block $B150
                local.get $l6
                i32.const 0
                i32.const 25
                local.get $l2
                i32.const 1
                i32.shr_u
                i32.sub
                local.get $l2
                i32.const 31
                i32.eq
                select
                i32.shl
                local.set $l3
                loop $L151
                  local.get $l1
                  i32.const 16
                  i32.add
                  local.get $l3
                  i32.const 31
                  i32.shr_u
                  i32.const 2
                  i32.shl
                  i32.add
                  local.tee $l5
                  i32.load
                  local.tee $l2
                  if $I152
                    local.get $l3
                    i32.const 1
                    i32.shl
                    local.set $l3
                    local.get $l2
                    i32.load offset=4
                    i32.const -8
                    i32.and
                    local.get $l6
                    i32.eq
                    br_if $B150
                    local.get $l2
                    local.set $l1
                    br $L151
                  end
                end
                local.get $l5
                local.get $l4
                i32.store
                local.get $l4
                local.get $l1
                i32.store offset=24
                local.get $l4
                local.get $l4
                i32.store offset=12
                local.get $l4
                local.get $l4
                i32.store offset=8
                br $B101
              end
            end
            local.get $l2
            i32.const 8
            i32.add
            local.tee $l1
            i32.load
            local.tee $l3
            local.get $l4
            i32.store offset=12
            local.get $l1
            local.get $l4
            i32.store
            local.get $l4
            local.get $l3
            i32.store offset=8
            local.get $l4
            local.get $l2
            i32.store offset=12
            local.get $l4
            i32.const 0
            i32.store offset=24
          end
        end
      else
        i32.const 3332
        i32.load
        local.tee $l3
        i32.eqz
        local.get $l1
        local.get $l3
        i32.lt_u
        i32.or
        if $I153
          i32.const 3332
          local.get $l1
          i32.store
        end
        i32.const 3764
        local.get $l1
        i32.store
        i32.const 3768
        local.get $l2
        i32.store
        i32.const 3776
        i32.const 0
        i32.store
        i32.const 3352
        i32.const 3788
        i32.load
        i32.store
        i32.const 3348
        i32.const -1
        i32.store
        i32.const 3368
        i32.const 3356
        i32.store
        i32.const 3364
        i32.const 3356
        i32.store
        i32.const 3376
        i32.const 3364
        i32.store
        i32.const 3372
        i32.const 3364
        i32.store
        i32.const 3384
        i32.const 3372
        i32.store
        i32.const 3380
        i32.const 3372
        i32.store
        i32.const 3392
        i32.const 3380
        i32.store
        i32.const 3388
        i32.const 3380
        i32.store
        i32.const 3400
        i32.const 3388
        i32.store
        i32.const 3396
        i32.const 3388
        i32.store
        i32.const 3408
        i32.const 3396
        i32.store
        i32.const 3404
        i32.const 3396
        i32.store
        i32.const 3416
        i32.const 3404
        i32.store
        i32.const 3412
        i32.const 3404
        i32.store
        i32.const 3424
        i32.const 3412
        i32.store
        i32.const 3420
        i32.const 3412
        i32.store
        i32.const 3432
        i32.const 3420
        i32.store
        i32.const 3428
        i32.const 3420
        i32.store
        i32.const 3440
        i32.const 3428
        i32.store
        i32.const 3436
        i32.const 3428
        i32.store
        i32.const 3448
        i32.const 3436
        i32.store
        i32.const 3444
        i32.const 3436
        i32.store
        i32.const 3456
        i32.const 3444
        i32.store
        i32.const 3452
        i32.const 3444
        i32.store
        i32.const 3464
        i32.const 3452
        i32.store
        i32.const 3460
        i32.const 3452
        i32.store
        i32.const 3472
        i32.const 3460
        i32.store
        i32.const 3468
        i32.const 3460
        i32.store
        i32.const 3480
        i32.const 3468
        i32.store
        i32.const 3476
        i32.const 3468
        i32.store
        i32.const 3488
        i32.const 3476
        i32.store
        i32.const 3484
        i32.const 3476
        i32.store
        i32.const 3496
        i32.const 3484
        i32.store
        i32.const 3492
        i32.const 3484
        i32.store
        i32.const 3504
        i32.const 3492
        i32.store
        i32.const 3500
        i32.const 3492
        i32.store
        i32.const 3512
        i32.const 3500
        i32.store
        i32.const 3508
        i32.const 3500
        i32.store
        i32.const 3520
        i32.const 3508
        i32.store
        i32.const 3516
        i32.const 3508
        i32.store
        i32.const 3528
        i32.const 3516
        i32.store
        i32.const 3524
        i32.const 3516
        i32.store
        i32.const 3536
        i32.const 3524
        i32.store
        i32.const 3532
        i32.const 3524
        i32.store
        i32.const 3544
        i32.const 3532
        i32.store
        i32.const 3540
        i32.const 3532
        i32.store
        i32.const 3552
        i32.const 3540
        i32.store
        i32.const 3548
        i32.const 3540
        i32.store
        i32.const 3560
        i32.const 3548
        i32.store
        i32.const 3556
        i32.const 3548
        i32.store
        i32.const 3568
        i32.const 3556
        i32.store
        i32.const 3564
        i32.const 3556
        i32.store
        i32.const 3576
        i32.const 3564
        i32.store
        i32.const 3572
        i32.const 3564
        i32.store
        i32.const 3584
        i32.const 3572
        i32.store
        i32.const 3580
        i32.const 3572
        i32.store
        i32.const 3592
        i32.const 3580
        i32.store
        i32.const 3588
        i32.const 3580
        i32.store
        i32.const 3600
        i32.const 3588
        i32.store
        i32.const 3596
        i32.const 3588
        i32.store
        i32.const 3608
        i32.const 3596
        i32.store
        i32.const 3604
        i32.const 3596
        i32.store
        i32.const 3616
        i32.const 3604
        i32.store
        i32.const 3612
        i32.const 3604
        i32.store
        i32.const 3340
        i32.const 0
        local.get $l1
        i32.const 8
        i32.add
        local.tee $l3
        i32.sub
        i32.const 7
        i32.and
        i32.const 0
        local.get $l3
        i32.const 7
        i32.and
        select
        local.tee $l3
        local.get $l1
        i32.add
        local.tee $l4
        i32.store
        i32.const 3328
        local.get $l2
        i32.const -40
        i32.add
        local.tee $l2
        local.get $l3
        i32.sub
        local.tee $l3
        i32.store
        local.get $l4
        local.get $l3
        i32.const 1
        i32.or
        i32.store offset=4
        local.get $l1
        local.get $l2
        i32.add
        i32.const 40
        i32.store offset=4
        i32.const 3344
        i32.const 3804
        i32.load
        i32.store
      end
      i32.const 3328
      i32.load
      local.tee $l1
      local.get $p0
      i32.gt_u
      if $I154
        i32.const 3328
        local.get $l1
        local.get $p0
        i32.sub
        local.tee $l2
        i32.store
        i32.const 3340
        i32.const 3340
        i32.load
        local.tee $l1
        local.get $p0
        i32.add
        local.tee $l3
        i32.store
        local.get $l3
        local.get $l2
        i32.const 1
        i32.or
        i32.store offset=4
        local.get $l1
        local.get $p0
        i32.const 3
        i32.or
        i32.store offset=4
        local.get $l10
        global.set $g1
        local.get $l1
        i32.const 8
        i32.add
        return
      end
    end
    i32.const 3312
    i32.const 48
    i32.store
    local.get $l10
    global.set $g1
    i32.const 0)
  (func $_free (type $t2) (param $p0 i32)
    (local $l1 i32) (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32) (local $l9 i32)
    local.get $p0
    i32.eqz
    if $I0
      return
    end
    i32.const 3332
    i32.load
    local.set $l4
    local.get $p0
    i32.const -8
    i32.add
    local.tee $l1
    local.get $p0
    i32.const -4
    i32.add
    i32.load
    local.tee $p0
    i32.const -8
    i32.and
    local.tee $l3
    i32.add
    local.set $l6
    local.get $p0
    i32.const 1
    i32.and
    if $I1 (result i32)
      local.get $l1
      local.set $l2
      local.get $l3
    else
      block $B2 (result i32)
        local.get $l1
        i32.load
        local.set $l2
        local.get $p0
        i32.const 3
        i32.and
        i32.eqz
        if $I3
          return
        end
        local.get $l1
        local.get $l2
        i32.sub
        local.tee $p0
        local.get $l4
        i32.lt_u
        if $I4
          return
        end
        local.get $l2
        local.get $l3
        i32.add
        local.set $l3
        i32.const 3336
        i32.load
        local.get $p0
        i32.eq
        if $I5
          local.get $l6
          i32.const 4
          i32.add
          local.tee $l1
          i32.load
          local.tee $l2
          i32.const 3
          i32.and
          i32.const 3
          i32.ne
          if $I6
            local.get $p0
            local.set $l1
            local.get $p0
            local.set $l2
            local.get $l3
            br $B2
          end
          i32.const 3324
          local.get $l3
          i32.store
          local.get $l1
          local.get $l2
          i32.const -2
          i32.and
          i32.store
          local.get $p0
          i32.const 4
          i32.add
          local.get $l3
          i32.const 1
          i32.or
          i32.store
          local.get $p0
          local.get $l3
          i32.add
          local.get $l3
          i32.store
          return
        end
        local.get $l2
        i32.const 3
        i32.shr_u
        local.set $l4
        local.get $l2
        i32.const 256
        i32.lt_u
        if $I7
          local.get $p0
          i32.const 8
          i32.add
          i32.load
          local.tee $l1
          local.get $p0
          i32.const 12
          i32.add
          i32.load
          local.tee $l2
          i32.eq
          if $I8
            i32.const 3316
            i32.const 3316
            i32.load
            i32.const 1
            local.get $l4
            i32.shl
            i32.const -1
            i32.xor
            i32.and
            i32.store
            local.get $p0
            local.set $l1
            local.get $p0
            local.set $l2
            local.get $l3
            br $B2
          else
            local.get $l1
            i32.const 12
            i32.add
            local.get $l2
            i32.store
            local.get $l2
            i32.const 8
            i32.add
            local.get $l1
            i32.store
            local.get $p0
            local.set $l1
            local.get $p0
            local.set $l2
            local.get $l3
            br $B2
          end
          unreachable
        end
        local.get $p0
        i32.const 24
        i32.add
        i32.load
        local.set $l7
        local.get $p0
        i32.const 12
        i32.add
        i32.load
        local.tee $l1
        local.get $p0
        i32.eq
        if $I9
          block $B10
            local.get $p0
            i32.const 16
            i32.add
            local.tee $l2
            i32.const 4
            i32.add
            local.tee $l4
            i32.load
            local.tee $l1
            if $I11
              local.get $l4
              local.set $l2
            else
              local.get $l2
              i32.load
              local.tee $l1
              i32.eqz
              if $I12
                i32.const 0
                local.set $l1
                br $B10
              end
            end
            loop $L13
              block $B14
                local.get $l1
                i32.const 20
                i32.add
                local.tee $l4
                i32.load
                local.tee $l5
                if $I15 (result i32)
                  local.get $l4
                  local.set $l2
                  local.get $l5
                else
                  local.get $l1
                  i32.const 16
                  i32.add
                  local.tee $l4
                  i32.load
                  local.tee $l5
                  i32.eqz
                  br_if $B14
                  local.get $l4
                  local.set $l2
                  local.get $l5
                end
                local.set $l1
                br $L13
              end
            end
            local.get $l2
            i32.const 0
            i32.store
          end
        else
          local.get $p0
          i32.const 8
          i32.add
          i32.load
          local.tee $l2
          i32.const 12
          i32.add
          local.get $l1
          i32.store
          local.get $l1
          i32.const 8
          i32.add
          local.get $l2
          i32.store
        end
        local.get $l7
        if $I16 (result i32)
          local.get $p0
          i32.const 28
          i32.add
          i32.load
          local.tee $l2
          i32.const 2
          i32.shl
          i32.const 3620
          i32.add
          local.tee $l4
          i32.load
          local.get $p0
          i32.eq
          if $I17
            local.get $l4
            local.get $l1
            i32.store
            local.get $l1
            i32.eqz
            if $I18
              i32.const 3320
              i32.const 3320
              i32.load
              i32.const 1
              local.get $l2
              i32.shl
              i32.const -1
              i32.xor
              i32.and
              i32.store
              local.get $p0
              local.set $l1
              local.get $p0
              local.set $l2
              local.get $l3
              br $B2
            end
          else
            local.get $l7
            i32.const 16
            i32.add
            local.tee $l2
            local.get $l7
            i32.const 20
            i32.add
            local.get $l2
            i32.load
            local.get $p0
            i32.eq
            select
            local.get $l1
            i32.store
            local.get $l1
            i32.eqz
            if $I19
              local.get $p0
              local.set $l1
              local.get $p0
              local.set $l2
              local.get $l3
              br $B2
            end
          end
          local.get $l1
          i32.const 24
          i32.add
          local.get $l7
          i32.store
          local.get $p0
          i32.const 16
          i32.add
          local.tee $l4
          i32.load
          local.tee $l2
          if $I20
            local.get $l1
            i32.const 16
            i32.add
            local.get $l2
            i32.store
            local.get $l2
            i32.const 24
            i32.add
            local.get $l1
            i32.store
          end
          local.get $l4
          i32.const 4
          i32.add
          i32.load
          local.tee $l2
          if $I21 (result i32)
            local.get $l1
            i32.const 20
            i32.add
            local.get $l2
            i32.store
            local.get $l2
            i32.const 24
            i32.add
            local.get $l1
            i32.store
            local.get $p0
            local.set $l1
            local.get $p0
            local.set $l2
            local.get $l3
          else
            local.get $p0
            local.set $l1
            local.get $p0
            local.set $l2
            local.get $l3
          end
        else
          local.get $p0
          local.set $l1
          local.get $p0
          local.set $l2
          local.get $l3
        end
      end
    end
    local.set $p0
    local.get $l1
    local.get $l6
    i32.ge_u
    if $I22
      return
    end
    local.get $l6
    i32.const 4
    i32.add
    local.tee $l3
    i32.load
    local.tee $l8
    i32.const 1
    i32.and
    i32.eqz
    if $I23
      return
    end
    local.get $l8
    i32.const 2
    i32.and
    if $I24
      local.get $l3
      local.get $l8
      i32.const -2
      i32.and
      i32.store
      local.get $l2
      i32.const 4
      i32.add
      local.get $p0
      i32.const 1
      i32.or
      i32.store
      local.get $p0
      local.get $l1
      i32.add
      local.get $p0
      i32.store
      local.get $p0
      local.set $l3
    else
      i32.const 3340
      i32.load
      local.get $l6
      i32.eq
      if $I25
        i32.const 3328
        i32.const 3328
        i32.load
        local.get $p0
        i32.add
        local.tee $p0
        i32.store
        i32.const 3340
        local.get $l2
        i32.store
        local.get $l2
        i32.const 4
        i32.add
        local.get $p0
        i32.const 1
        i32.or
        i32.store
        local.get $l2
        i32.const 3336
        i32.load
        i32.ne
        if $I26
          return
        end
        i32.const 3336
        i32.const 0
        i32.store
        i32.const 3324
        i32.const 0
        i32.store
        return
      end
      i32.const 3336
      i32.load
      local.get $l6
      i32.eq
      if $I27
        i32.const 3324
        i32.const 3324
        i32.load
        local.get $p0
        i32.add
        local.tee $p0
        i32.store
        i32.const 3336
        local.get $l1
        i32.store
        local.get $l2
        i32.const 4
        i32.add
        local.get $p0
        i32.const 1
        i32.or
        i32.store
        local.get $p0
        local.get $l1
        i32.add
        local.get $p0
        i32.store
        return
      end
      local.get $l8
      i32.const 3
      i32.shr_u
      local.set $l5
      local.get $l8
      i32.const 256
      i32.lt_u
      if $I28
        local.get $l6
        i32.const 8
        i32.add
        i32.load
        local.tee $l3
        local.get $l6
        i32.const 12
        i32.add
        i32.load
        local.tee $l4
        i32.eq
        if $I29
          i32.const 3316
          i32.const 3316
          i32.load
          i32.const 1
          local.get $l5
          i32.shl
          i32.const -1
          i32.xor
          i32.and
          i32.store
        else
          local.get $l3
          i32.const 12
          i32.add
          local.get $l4
          i32.store
          local.get $l4
          i32.const 8
          i32.add
          local.get $l3
          i32.store
        end
      else
        block $B30
          local.get $l6
          i32.const 24
          i32.add
          i32.load
          local.set $l9
          local.get $l6
          i32.const 12
          i32.add
          i32.load
          local.tee $l3
          local.get $l6
          i32.eq
          if $I31
            block $B32
              local.get $l6
              i32.const 16
              i32.add
              local.tee $l4
              i32.const 4
              i32.add
              local.tee $l5
              i32.load
              local.tee $l3
              if $I33
                local.get $l5
                local.set $l4
              else
                local.get $l4
                i32.load
                local.tee $l3
                i32.eqz
                if $I34
                  i32.const 0
                  local.set $l3
                  br $B32
                end
              end
              loop $L35
                block $B36
                  local.get $l3
                  i32.const 20
                  i32.add
                  local.tee $l5
                  i32.load
                  local.tee $l7
                  if $I37 (result i32)
                    local.get $l5
                    local.set $l4
                    local.get $l7
                  else
                    local.get $l3
                    i32.const 16
                    i32.add
                    local.tee $l5
                    i32.load
                    local.tee $l7
                    i32.eqz
                    br_if $B36
                    local.get $l5
                    local.set $l4
                    local.get $l7
                  end
                  local.set $l3
                  br $L35
                end
              end
              local.get $l4
              i32.const 0
              i32.store
            end
          else
            local.get $l6
            i32.const 8
            i32.add
            i32.load
            local.tee $l4
            i32.const 12
            i32.add
            local.get $l3
            i32.store
            local.get $l3
            i32.const 8
            i32.add
            local.get $l4
            i32.store
          end
          local.get $l9
          if $I38
            local.get $l6
            i32.const 28
            i32.add
            i32.load
            local.tee $l4
            i32.const 2
            i32.shl
            i32.const 3620
            i32.add
            local.tee $l5
            i32.load
            local.get $l6
            i32.eq
            if $I39
              local.get $l5
              local.get $l3
              i32.store
              local.get $l3
              i32.eqz
              if $I40
                i32.const 3320
                i32.const 3320
                i32.load
                i32.const 1
                local.get $l4
                i32.shl
                i32.const -1
                i32.xor
                i32.and
                i32.store
                br $B30
              end
            else
              local.get $l9
              i32.const 16
              i32.add
              local.tee $l4
              local.get $l9
              i32.const 20
              i32.add
              local.get $l4
              i32.load
              local.get $l6
              i32.eq
              select
              local.get $l3
              i32.store
              local.get $l3
              i32.eqz
              br_if $B30
            end
            local.get $l3
            i32.const 24
            i32.add
            local.get $l9
            i32.store
            local.get $l6
            i32.const 16
            i32.add
            local.tee $l5
            i32.load
            local.tee $l4
            if $I41
              local.get $l3
              i32.const 16
              i32.add
              local.get $l4
              i32.store
              local.get $l4
              i32.const 24
              i32.add
              local.get $l3
              i32.store
            end
            local.get $l5
            i32.const 4
            i32.add
            i32.load
            local.tee $l4
            if $I42
              local.get $l3
              i32.const 20
              i32.add
              local.get $l4
              i32.store
              local.get $l4
              i32.const 24
              i32.add
              local.get $l3
              i32.store
            end
          end
        end
      end
      local.get $l2
      i32.const 4
      i32.add
      local.get $l8
      i32.const -8
      i32.and
      local.get $p0
      i32.add
      local.tee $l3
      i32.const 1
      i32.or
      i32.store
      local.get $l1
      local.get $l3
      i32.add
      local.get $l3
      i32.store
      i32.const 3336
      i32.load
      local.get $l2
      i32.eq
      if $I43
        i32.const 3324
        local.get $l3
        i32.store
        return
      end
    end
    local.get $l3
    i32.const 3
    i32.shr_u
    local.set $l1
    local.get $l3
    i32.const 256
    i32.lt_u
    if $I44
      local.get $l1
      i32.const 3
      i32.shl
      i32.const 3356
      i32.add
      local.set $p0
      i32.const 3316
      i32.load
      local.tee $l3
      i32.const 1
      local.get $l1
      i32.shl
      local.tee $l1
      i32.and
      if $I45 (result i32)
        local.get $p0
        i32.const 8
        i32.add
        local.tee $l1
        local.set $l3
        local.get $l1
        i32.load
      else
        i32.const 3316
        local.get $l1
        local.get $l3
        i32.or
        i32.store
        local.get $p0
        i32.const 8
        i32.add
        local.set $l3
        local.get $p0
      end
      local.set $l1
      local.get $l3
      local.get $l2
      i32.store
      local.get $l1
      i32.const 12
      i32.add
      local.get $l2
      i32.store
      local.get $l2
      i32.const 8
      i32.add
      local.get $l1
      i32.store
      local.get $l2
      i32.const 12
      i32.add
      local.get $p0
      i32.store
      return
    end
    local.get $l3
    i32.const 8
    i32.shr_u
    local.tee $p0
    if $I46 (result i32)
      local.get $l3
      i32.const 16777215
      i32.gt_u
      if $I47 (result i32)
        i32.const 31
      else
        local.get $p0
        local.get $p0
        i32.const 1048320
        i32.add
        i32.const 16
        i32.shr_u
        i32.const 8
        i32.and
        local.tee $l4
        i32.shl
        local.tee $l1
        i32.const 520192
        i32.add
        i32.const 16
        i32.shr_u
        i32.const 4
        i32.and
        local.set $p0
        local.get $l1
        local.get $p0
        i32.shl
        local.tee $l5
        i32.const 245760
        i32.add
        i32.const 16
        i32.shr_u
        i32.const 2
        i32.and
        local.set $l1
        local.get $l3
        i32.const 14
        local.get $p0
        local.get $l4
        i32.or
        local.get $l1
        i32.or
        i32.sub
        local.get $l5
        local.get $l1
        i32.shl
        i32.const 15
        i32.shr_u
        i32.add
        local.tee $p0
        i32.const 7
        i32.add
        i32.shr_u
        i32.const 1
        i32.and
        local.get $p0
        i32.const 1
        i32.shl
        i32.or
      end
    else
      i32.const 0
    end
    local.tee $l1
    i32.const 2
    i32.shl
    i32.const 3620
    i32.add
    local.set $p0
    local.get $l2
    i32.const 28
    i32.add
    local.get $l1
    i32.store
    local.get $l2
    i32.const 20
    i32.add
    i32.const 0
    i32.store
    local.get $l2
    i32.const 16
    i32.add
    i32.const 0
    i32.store
    i32.const 3320
    i32.load
    local.tee $l4
    i32.const 1
    local.get $l1
    i32.shl
    local.tee $l5
    i32.and
    if $I48
      block $B49
        local.get $p0
        i32.load
        local.tee $p0
        i32.const 4
        i32.add
        i32.load
        i32.const -8
        i32.and
        local.get $l3
        i32.eq
        if $I50
          local.get $p0
          local.set $l1
        else
          block $B51
            local.get $l3
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
            local.set $l4
            loop $L52
              local.get $p0
              i32.const 16
              i32.add
              local.get $l4
              i32.const 31
              i32.shr_u
              i32.const 2
              i32.shl
              i32.add
              local.tee $l5
              i32.load
              local.tee $l1
              if $I53
                local.get $l4
                i32.const 1
                i32.shl
                local.set $l4
                local.get $l1
                i32.const 4
                i32.add
                i32.load
                i32.const -8
                i32.and
                local.get $l3
                i32.eq
                br_if $B51
                local.get $l1
                local.set $p0
                br $L52
              end
            end
            local.get $l5
            local.get $l2
            i32.store
            local.get $l2
            i32.const 24
            i32.add
            local.get $p0
            i32.store
            local.get $l2
            i32.const 12
            i32.add
            local.get $l2
            i32.store
            local.get $l2
            i32.const 8
            i32.add
            local.get $l2
            i32.store
            br $B49
          end
        end
        local.get $l1
        i32.const 8
        i32.add
        local.tee $p0
        i32.load
        local.tee $l3
        i32.const 12
        i32.add
        local.get $l2
        i32.store
        local.get $p0
        local.get $l2
        i32.store
        local.get $l2
        i32.const 8
        i32.add
        local.get $l3
        i32.store
        local.get $l2
        i32.const 12
        i32.add
        local.get $l1
        i32.store
        local.get $l2
        i32.const 24
        i32.add
        i32.const 0
        i32.store
      end
    else
      i32.const 3320
      local.get $l4
      local.get $l5
      i32.or
      i32.store
      local.get $p0
      local.get $l2
      i32.store
      local.get $l2
      i32.const 24
      i32.add
      local.get $p0
      i32.store
      local.get $l2
      i32.const 12
      i32.add
      local.get $l2
      i32.store
      local.get $l2
      i32.const 8
      i32.add
      local.get $l2
      i32.store
    end
    i32.const 3348
    i32.const 3348
    i32.load
    i32.const -1
    i32.add
    local.tee $p0
    i32.store
    local.get $p0
    if $I54
      return
    end
    i32.const 3772
    local.set $p0
    loop $L55
      local.get $p0
      i32.load
      local.tee $l1
      i32.const 8
      i32.add
      local.set $p0
      local.get $l1
      br_if $L55
    end
    i32.const 3348
    i32.const -1
    i32.store)
  (func $f41 (type $t0) (param $p0 i32) (result i32)
    (local $l1 i32)
    i32.const 4848
    i32.load
    local.tee $l1
    local.get $p0
    i32.const 3
    i32.add
    i32.const -4
    i32.and
    i32.add
    local.tee $p0
    i32.const 0
    i32.lt_s
    if $I0
      i32.const 3312
      i32.const 48
      i32.store
      i32.const -1
      return
    end
    local.get $p0
    call $env._emscripten_get_heap_size
    i32.gt_u
    if $I1
      local.get $p0
      call $env._emscripten_resize_heap
      i32.eqz
      if $I2
        i32.const 3312
        i32.const 48
        i32.store
        i32.const -1
        return
      end
    end
    i32.const 4848
    local.get $p0
    i32.store
    local.get $l1)
  (func $_emscripten_get_sbrk_ptr (type $t6) (result i32)
    i32.const 4848)
  (func $_memcpy (type $t1) (param $p0 i32) (param $p1 i32) (param $p2 i32) (result i32)
    (local $l3 i32) (local $l4 i32) (local $l5 i32)
    local.get $p2
    i32.const 8192
    i32.ge_s
    if $I0
      local.get $p0
      local.get $p1
      local.get $p2
      call $env._emscripten_memcpy_big
      drop
      local.get $p0
      return
    end
    local.get $p0
    local.set $l4
    local.get $p0
    local.get $p2
    i32.add
    local.set $l3
    local.get $p0
    i32.const 3
    i32.and
    local.get $p1
    i32.const 3
    i32.and
    i32.eq
    if $I1
      loop $L2
        local.get $p0
        i32.const 3
        i32.and
        if $I3
          local.get $p2
          i32.eqz
          if $I4
            local.get $l4
            return
          end
          local.get $p0
          local.get $p1
          i32.load8_s
          i32.store8
          local.get $p0
          i32.const 1
          i32.add
          local.set $p0
          local.get $p1
          i32.const 1
          i32.add
          local.set $p1
          local.get $p2
          i32.const 1
          i32.sub
          local.set $p2
          br $L2
        end
      end
      local.get $l3
      i32.const -4
      i32.and
      local.tee $p2
      i32.const -64
      i32.add
      local.set $l5
      loop $L5
        local.get $p0
        local.get $l5
        i32.le_s
        if $I6
          local.get $p0
          local.get $p1
          i32.load
          i32.store
          local.get $p0
          local.get $p1
          i32.load offset=4
          i32.store offset=4
          local.get $p0
          local.get $p1
          i32.load offset=8
          i32.store offset=8
          local.get $p0
          local.get $p1
          i32.load offset=12
          i32.store offset=12
          local.get $p0
          local.get $p1
          i32.load offset=16
          i32.store offset=16
          local.get $p0
          local.get $p1
          i32.load offset=20
          i32.store offset=20
          local.get $p0
          local.get $p1
          i32.load offset=24
          i32.store offset=24
          local.get $p0
          local.get $p1
          i32.load offset=28
          i32.store offset=28
          local.get $p0
          local.get $p1
          i32.load offset=32
          i32.store offset=32
          local.get $p0
          local.get $p1
          i32.load offset=36
          i32.store offset=36
          local.get $p0
          local.get $p1
          i32.load offset=40
          i32.store offset=40
          local.get $p0
          local.get $p1
          i32.load offset=44
          i32.store offset=44
          local.get $p0
          local.get $p1
          i32.load offset=48
          i32.store offset=48
          local.get $p0
          local.get $p1
          i32.load offset=52
          i32.store offset=52
          local.get $p0
          local.get $p1
          i32.load offset=56
          i32.store offset=56
          local.get $p0
          local.get $p1
          i32.load offset=60
          i32.store offset=60
          local.get $p0
          i32.const -64
          i32.sub
          local.set $p0
          local.get $p1
          i32.const -64
          i32.sub
          local.set $p1
          br $L5
        end
      end
      loop $L7
        local.get $p0
        local.get $p2
        i32.lt_s
        if $I8
          local.get $p0
          local.get $p1
          i32.load
          i32.store
          local.get $p0
          i32.const 4
          i32.add
          local.set $p0
          local.get $p1
          i32.const 4
          i32.add
          local.set $p1
          br $L7
        end
      end
    else
      local.get $l3
      i32.const 4
      i32.sub
      local.set $p2
      loop $L9
        local.get $p0
        local.get $p2
        i32.lt_s
        if $I10
          local.get $p0
          local.get $p1
          i32.load8_s
          i32.store8
          local.get $p0
          local.get $p1
          i32.load8_s offset=1
          i32.store8 offset=1
          local.get $p0
          local.get $p1
          i32.load8_s offset=2
          i32.store8 offset=2
          local.get $p0
          local.get $p1
          i32.load8_s offset=3
          i32.store8 offset=3
          local.get $p0
          i32.const 4
          i32.add
          local.set $p0
          local.get $p1
          i32.const 4
          i32.add
          local.set $p1
          br $L9
        end
      end
    end
    loop $L11
      local.get $p0
      local.get $l3
      i32.lt_s
      if $I12
        local.get $p0
        local.get $p1
        i32.load8_s
        i32.store8
        local.get $p0
        i32.const 1
        i32.add
        local.set $p0
        local.get $p1
        i32.const 1
        i32.add
        local.set $p1
        br $L11
      end
    end
    local.get $l4)
  (func $_memset (type $t1) (param $p0 i32) (param $p1 i32) (param $p2 i32) (result i32)
    (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32)
    local.get $p0
    local.get $p2
    i32.add
    local.set $l4
    local.get $p1
    i32.const 255
    i32.and
    local.set $p1
    local.get $p2
    i32.const 67
    i32.ge_s
    if $I0
      loop $L1
        local.get $p0
        i32.const 3
        i32.and
        if $I2
          local.get $p0
          local.get $p1
          i32.store8
          local.get $p0
          i32.const 1
          i32.add
          local.set $p0
          br $L1
        end
      end
      local.get $p1
      i32.const 8
      i32.shl
      local.get $p1
      i32.or
      local.get $p1
      i32.const 16
      i32.shl
      i32.or
      local.get $p1
      i32.const 24
      i32.shl
      i32.or
      local.set $l3
      local.get $l4
      i32.const -4
      i32.and
      local.tee $l5
      i32.const -64
      i32.add
      local.set $l6
      loop $L3
        local.get $p0
        local.get $l6
        i32.le_s
        if $I4
          local.get $p0
          local.get $l3
          i32.store
          local.get $p0
          local.get $l3
          i32.store offset=4
          local.get $p0
          local.get $l3
          i32.store offset=8
          local.get $p0
          local.get $l3
          i32.store offset=12
          local.get $p0
          local.get $l3
          i32.store offset=16
          local.get $p0
          local.get $l3
          i32.store offset=20
          local.get $p0
          local.get $l3
          i32.store offset=24
          local.get $p0
          local.get $l3
          i32.store offset=28
          local.get $p0
          local.get $l3
          i32.store offset=32
          local.get $p0
          local.get $l3
          i32.store offset=36
          local.get $p0
          local.get $l3
          i32.store offset=40
          local.get $p0
          local.get $l3
          i32.store offset=44
          local.get $p0
          local.get $l3
          i32.store offset=48
          local.get $p0
          local.get $l3
          i32.store offset=52
          local.get $p0
          local.get $l3
          i32.store offset=56
          local.get $p0
          local.get $l3
          i32.store offset=60
          local.get $p0
          i32.const -64
          i32.sub
          local.set $p0
          br $L3
        end
      end
      loop $L5
        local.get $p0
        local.get $l5
        i32.lt_s
        if $I6
          local.get $p0
          local.get $l3
          i32.store
          local.get $p0
          i32.const 4
          i32.add
          local.set $p0
          br $L5
        end
      end
    end
    loop $L7
      local.get $p0
      local.get $l4
      i32.lt_s
      if $I8
        local.get $p0
        local.get $p1
        i32.store8
        local.get $p0
        i32.const 1
        i32.add
        local.set $p0
        br $L7
      end
    end
    local.get $l4
    local.get $p2
    i32.sub)
  (func $dynCall_ii (type $t5) (param $p0 i32) (param $p1 i32) (result i32)
    local.get $p1
    local.get $p0
    i32.const 1
    i32.and
    call_indirect (type $t0) $env.table)
  (func $dynCall_iidiiii (type $t13) (param $p0 i32) (param $p1 i32) (param $p2 f64) (param $p3 i32) (param $p4 i32) (param $p5 i32) (param $p6 i32) (result i32)
    local.get $p1
    local.get $p2
    local.get $p3
    local.get $p4
    local.get $p5
    local.get $p6
    local.get $p0
    i32.const 1
    i32.and
    i32.const 2
    i32.add
    call_indirect (type $t7) $env.table)
  (func $dynCall_iiii (type $t9) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32) (result i32)
    local.get $p1
    local.get $p2
    local.get $p3
    local.get $p0
    i32.const 1
    i32.and
    i32.const 4
    i32.add
    call_indirect (type $t1) $env.table)
  (func $dynCall_vii (type $t4) (param $p0 i32) (param $p1 i32) (param $p2 i32)
    local.get $p1
    local.get $p2
    local.get $p0
    i32.const 1
    i32.and
    i32.const 8
    i32.add
    call_indirect (type $t3) $env.table)
  (func $f49 (type $t0) (param $p0 i32) (result i32)
    i32.const 0
    call $env.abort
    i32.const 0)
  (func $f50 (type $t7) (param $p0 i32) (param $p1 f64) (param $p2 i32) (param $p3 i32) (param $p4 i32) (param $p5 i32) (result i32)
    i32.const 1
    call $env.abort
    i32.const 0)
  (func $f51 (type $t1) (param $p0 i32) (param $p1 i32) (param $p2 i32) (result i32)
    i32.const 2
    call $env.abort
    i32.const 0)
  (func $f52 (type $t8) (param $p0 i32) (param $p1 i64) (param $p2 i32) (result i64)
    i32.const 3
    call $env.abort
    i64.const 0)
  (func $f53 (type $t3) (param $p0 i32) (param $p1 i32)
    i32.const 4
    call $env.abort)
  (func $dynCall_jiji (type $t10) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32) (param $p4 i32) (result i32)
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
    i32.const 1
    i32.and
    i32.const 6
    i32.add
    call_indirect (type $t8) $env.table
    local.tee $l5
    i64.const 32
    i64.shr_u
    i32.wrap_i64
    call $env.setTempRet0
    local.get $l5
    i32.wrap_i64)
  (global $g1 (mut i32) (i32.const 5040))
  (export "___errno_location" (func $___errno_location))
  (export "_emscripten_get_sbrk_ptr" (func $_emscripten_get_sbrk_ptr))
  (export "_free" (func $_free))
  (export "_main" (func $_main))
  (export "_malloc" (func $_malloc))
  (export "_memcpy" (func $_memcpy))
  (export "_memset" (func $_memset))
  (export "dynCall_ii" (func $dynCall_ii))
  (export "dynCall_iidiiii" (func $dynCall_iidiiii))
  (export "dynCall_iiii" (func $dynCall_iiii))
  (export "dynCall_jiji" (func $dynCall_jiji))
  (export "dynCall_vii" (func $dynCall_vii))
  (export "stackAlloc" (func $stackAlloc))
  (export "stackRestore" (func $stackRestore))
  (export "stackSave" (func $stackSave))
  (elem $e0 (global.get $env.__table_base) $f49 $f14 $f50 $f18 $f51 $f12 $f52 $f15 $f53 $f19)
  (data $d0 (i32.const 1024) "\11\00\0a\00\11\11\11\00\00\00\00\05\00\00\00\00\00\00\09\00\00\00\00\0b\00\00\00\00\00\00\00\00\11\00\0f\0a\11\11\11\03\0a\07\00\01\13\09\0b\0b\00\00\09\06\0b\00\00\0b\00\06\11\00\00\00\11\11\11")
  (data $d1 (i32.const 1105) "\0b\00\00\00\00\00\00\00\00\11\00\0a\0a\11\11\11\00\0a\00\00\02\00\09\0b\00\00\00\09\00\0b\00\00\0b")
  (data $d2 (i32.const 1163) "\0c")
  (data $d3 (i32.const 1175) "\0c\00\00\00\00\0c\00\00\00\00\09\0c\00\00\00\00\00\0c\00\00\0c")
  (data $d4 (i32.const 1221) "\0e")
  (data $d5 (i32.const 1233) "\0d\00\00\00\04\0d\00\00\00\00\09\0e\00\00\00\00\00\0e\00\00\0e")
  (data $d6 (i32.const 1279) "\10")
  (data $d7 (i32.const 1291) "\0f\00\00\00\00\0f\00\00\00\00\09\10\00\00\00\00\00\10\00\00\10\00\00\12\00\00\00\12\12\12")
  (data $d8 (i32.const 1346) "\12\00\00\00\12\12\12\00\00\00\00\00\00\09")
  (data $d9 (i32.const 1395) "\0b")
  (data $d10 (i32.const 1407) "\0a\00\00\00\00\0a\00\00\00\00\09\0b\00\00\00\00\00\0b\00\00\0b")
  (data $d11 (i32.const 1453) "\0c")
  (data $d12 (i32.const 1465) "\0c\00\00\00\00\0c\00\00\00\00\09\0c\00\00\00\00\00\0c\00\00\0c\00\000123456789ABCDEF\05")
  (data $d13 (i32.const 1516) "\01")
  (data $d14 (i32.const 1540) "\01\00\00\00\01\00\00\00\a8\08\00\00\00\04")
  (data $d15 (i32.const 1564) "\01")
  (data $d16 (i32.const 1579) "\0a\ff\ff\ff\ff")
  (data $d17 (i32.const 1648) "\e0\05")
  (data $d18 (i32.const 1828) "\d8\0c")
  (data $d19 (i32.const 1884) "global const string\00    %s, addr: %p (%lu)\0a\00    stack value in leaf() function, addr: %p (%lu)\0a\00    stack grows: %ld\0a\00    argv[0]: %s, addr: %p (%lu)\0a\00stack-allocated (local) string\00dynamically (heap) allocated string\00  in leaf()\00  in intermediate()\00  in main()\00-+   0X0x\00(null)\00-0X+0X 0X-0x+0x 0x\00inf\00INF\00nan\00NAN\00."))

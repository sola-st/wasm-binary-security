(module
  (type $t0 (func))
  (type $t1 (func (param i32)))
  (type $t2 (func (param i32) (result i64)))
  (type $t3 (func (param i32 i32) (result i32)))
  (type $t4 (func (param i32 i32 i32 i32)))
  (type $t5 (func (param i32 i32)))
  (type $t6 (func (param i32 i32 i32)))
  (type $t7 (func (param i32) (result i32)))
  (type $t8 (func (param i32 i32 i32) (result i32)))
  (type $t9 (func (param i32 i32 i32 i32) (result i32)))
  (type $t10 (func (param i32 i32 i32 i32 i32)))
  (type $t11 (func (result i32)))
  (type $t12 (func (param i32 i32 i32 i32 i32) (result i32)))
  (type $t13 (func (param i64 i32 i32) (result i32)))
  (type $t14 (func (param i32 i32 i32 i32 i32 i32) (result i32)))
  (type $t15 (func (param i32 i32 i32 i32 i32 i32 i32) (result i32)))
  (import "wasi_snapshot_preview1" "proc_exit" (func $__wasi_proc_exit (type $t1)))
  (import "wasi_snapshot_preview1" "args_get" (func $args_get (type $t3)))
  (import "wasi_snapshot_preview1" "args_sizes_get" (func $args_sizes_get (type $t3)))
  (import "wasi_snapshot_preview1" "fd_write" (func $fd_write (type $t9)))
  (import "wasi_snapshot_preview1" "fd_prestat_get" (func $__wasi_fd_prestat_get (type $t3)))
  (import "wasi_snapshot_preview1" "fd_prestat_dir_name" (func $__wasi_fd_prestat_dir_name (type $t8)))
  (import "wasi_snapshot_preview1" "environ_sizes_get" (func $__wasi_environ_sizes_get (type $t3)))
  (import "wasi_snapshot_preview1" "environ_get" (func $__wasi_environ_get (type $t3)))
  (func $__wasm_call_ctors (type $t0)
    call $__wasilibc_populate_environ
    call $__wasilibc_populate_libpreopen)
  (func $_start (type $t0)
    (local $l0 i32)
    call $__wasm_call_ctors
    call $__original_main
    local.set $l0
    call $__prepare_for_exit
    block $B0
      local.get $l0
      i32.eqz
      br_if $B0
      local.get $l0
      call $__wasi_proc_exit
      unreachable
    end)
  (func $_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17hcf0a53e73a737b14E (type $t7) (param $p0 i32) (result i32)
    (local $l1 i32)
    global.get $g0
    i32.const 16
    i32.sub
    local.tee $l1
    global.set $g0
    local.get $p0
    i32.load
    call_indirect (type $t0) $T0
    local.get $l1
    i32.const 0
    i32.store8 offset=15
    local.get $l1
    i32.const 15
    i32.add
    call $_ZN3std3sys4wasi7process8ExitCode6as_i3217h1909ac59d2547a0aE
    local.set $p0
    local.get $l1
    i32.const 16
    i32.add
    global.set $g0
    local.get $p0)
  (func $_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17h7181aab030b356c7E (type $t7) (param $p0 i32) (result i32)
    (local $l1 i32)
    global.get $g0
    i32.const 16
    i32.sub
    local.tee $l1
    global.set $g0
    local.get $p0
    i32.load
    call_indirect (type $t0) $T0
    local.get $l1
    i32.const 0
    i32.store8 offset=15
    local.get $l1
    i32.const 15
    i32.add
    call $_ZN3std3sys4wasi7process8ExitCode6as_i3217h1909ac59d2547a0aE
    local.set $p0
    local.get $l1
    i32.const 16
    i32.add
    global.set $g0
    local.get $p0)
  (func $_ZN4core3ptr18real_drop_in_place17h5b9eb712c953141eE (type $t1) (param $p0 i32))
  (func $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve17ha2198ae13467cc95E (type $t6) (param $p0 i32) (param $p1 i32) (param $p2 i32)
    (local $l3 i32)
    block $B0
      block $B1
        block $B2
          local.get $p0
          i32.load offset=4
          local.tee $l3
          local.get $p1
          i32.sub
          local.get $p2
          i32.ge_u
          br_if $B2
          local.get $p1
          local.get $p2
          i32.add
          local.tee $p2
          local.get $p1
          i32.lt_u
          br_if $B0
          local.get $l3
          i32.const 1
          i32.shl
          local.tee $p1
          local.get $p2
          local.get $p1
          local.get $p2
          i32.gt_u
          select
          local.tee $p1
          i32.const 0
          i32.lt_s
          br_if $B0
          block $B3
            block $B4
              local.get $l3
              br_if $B4
              local.get $p1
              i32.const 1
              call $__rust_alloc
              local.set $p2
              br $B3
            end
            local.get $p0
            i32.load
            local.get $l3
            i32.const 1
            local.get $p1
            call $__rust_realloc
            local.set $p2
          end
          local.get $p2
          i32.eqz
          br_if $B1
          local.get $p0
          local.get $p1
          i32.store offset=4
          local.get $p0
          local.get $p2
          i32.store
        end
        return
      end
      local.get $p1
      i32.const 1
      call $_ZN5alloc5alloc18handle_alloc_error17h372aacb639e2de27E
      unreachable
    end
    call $_ZN5alloc7raw_vec17capacity_overflow17h545b4b1a9ba97ff8E
    unreachable)
  (func $_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$isize$GT$3fmt17hf4e921414d427e32E (type $t3) (param $p0 i32) (param $p1 i32) (result i32)
    block $B0
      local.get $p1
      call $_ZN4core3fmt9Formatter15debug_lower_hex17ha70a7ac18ca965afE
      br_if $B0
      block $B1
        local.get $p1
        call $_ZN4core3fmt9Formatter15debug_upper_hex17h5b80b9b67b737f51E
        br_if $B1
        local.get $p0
        local.get $p1
        call $_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17ha3fe23ff267fac81E
        return
      end
      local.get $p0
      local.get $p1
      call $_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$i32$GT$3fmt17he6067a6f8103a390E
      return
    end
    local.get $p0
    local.get $p1
    call $_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i32$GT$3fmt17h58623d8131b79122E)
  (func $_ZN4main4leaf17he80d23a2a9f2228bE (type $t10) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32) (param $p4 i32)
    (local $l5 i32)
    global.get $g0
    i32.const 96
    i32.sub
    local.tee $l5
    global.set $g0
    local.get $l5
    local.get $p1
    i32.store offset=4
    local.get $l5
    local.get $p0
    i32.store
    local.get $l5
    i32.const 30
    i32.store offset=12
    local.get $l5
    local.get $p2
    i32.store offset=8
    local.get $l5
    local.get $p4
    i32.store offset=20
    local.get $l5
    local.get $p3
    i32.store offset=16
    local.get $l5
    i32.const 42
    i32.store offset=24
    local.get $l5
    local.get $l5
    i32.const 24
    i32.add
    i32.store offset=28
    local.get $l5
    i64.const 4
    i64.store offset=72
    local.get $l5
    i64.const 1
    i64.store offset=60 align=4
    local.get $l5
    i32.const 1048744
    i32.store offset=56
    local.get $l5
    i32.const 56
    i32.add
    call $_ZN3std2io5stdio6_print17hd34db9e38b7e5054E
    local.get $l5
    i32.const 32
    i32.add
    i32.const 20
    i32.add
    local.tee $p4
    i32.const 3
    i32.store
    local.get $l5
    i32.const 56
    i32.add
    i32.const 20
    i32.add
    local.tee $p3
    i32.const 4
    i32.store
    local.get $l5
    i32.const 56
    i32.add
    i32.const 12
    i32.add
    local.tee $p0
    i32.const 5
    i32.store
    local.get $l5
    i64.const 4
    i64.store offset=36 align=4
    local.get $l5
    i32.const 1048768
    i32.store offset=32
    local.get $l5
    i32.const 1048820
    i32.store offset=64
    local.get $l5
    i32.const 6
    i32.store offset=60
    local.get $l5
    i32.const 1048820
    i32.store offset=56
    local.get $l5
    i32.const 1048800
    i32.store offset=80
    local.get $l5
    local.get $l5
    i32.const 56
    i32.add
    i32.store offset=48
    local.get $l5
    local.get $l5
    i32.const 80
    i32.add
    i32.store offset=72
    local.get $l5
    i32.const 32
    i32.add
    call $_ZN3std2io5stdio6_print17hd34db9e38b7e5054E
    local.get $p4
    i32.const 3
    i32.store
    local.get $p3
    i32.const 4
    i32.store
    local.get $p0
    i32.const 5
    i32.store
    local.get $l5
    i32.const 30
    i32.store offset=84
    local.get $l5
    local.get $p2
    i32.store offset=80
    local.get $l5
    i64.const 4
    i64.store offset=36 align=4
    local.get $l5
    i32.const 1048768
    i32.store offset=32
    local.get $l5
    i32.const 6
    i32.store offset=60
    local.get $l5
    local.get $p2
    i32.store offset=92
    local.get $l5
    local.get $l5
    i32.const 56
    i32.add
    i32.store offset=48
    local.get $l5
    local.get $l5
    i32.const 92
    i32.add
    i32.store offset=72
    local.get $l5
    local.get $l5
    i32.const 80
    i32.add
    i32.store offset=64
    local.get $l5
    local.get $l5
    i32.const 8
    i32.add
    i32.store offset=56
    local.get $l5
    i32.const 32
    i32.add
    call $_ZN3std2io5stdio6_print17hd34db9e38b7e5054E
    local.get $p3
    i32.const 2
    i32.store
    local.get $l5
    i32.const 32
    i32.add
    i32.const 12
    i32.add
    i32.const 4
    i32.store
    local.get $l5
    i64.const 3
    i64.store offset=60 align=4
    local.get $l5
    i32.const 1048872
    i32.store offset=56
    local.get $l5
    i32.const 7
    i32.store offset=36
    local.get $l5
    local.get $l5
    i32.load offset=28
    i32.store offset=80
    local.get $l5
    local.get $l5
    i32.const 32
    i32.add
    i32.store offset=72
    local.get $l5
    local.get $l5
    i32.const 80
    i32.add
    i32.store offset=40
    local.get $l5
    local.get $l5
    i32.const 28
    i32.add
    i32.store offset=32
    local.get $l5
    i32.const 56
    i32.add
    call $_ZN3std2io5stdio6_print17hd34db9e38b7e5054E
    local.get $p3
    i32.const 1
    i32.store
    local.get $l5
    i64.const 2
    i64.store offset=60 align=4
    local.get $l5
    i32.const 1048916
    i32.store offset=56
    local.get $l5
    i32.const 8
    i32.store offset=36
    local.get $l5
    local.get $l5
    i32.load offset=28
    local.get $l5
    i32.load offset=8
    i32.sub
    i32.store offset=80
    local.get $l5
    local.get $l5
    i32.const 32
    i32.add
    i32.store offset=72
    local.get $l5
    local.get $l5
    i32.const 80
    i32.add
    i32.store offset=32
    local.get $l5
    i32.const 56
    i32.add
    call $_ZN3std2io5stdio6_print17hd34db9e38b7e5054E
    local.get $p4
    i32.const 3
    i32.store
    local.get $p3
    i32.const 4
    i32.store
    local.get $p0
    i32.const 5
    i32.store
    local.get $l5
    local.get $l5
    i32.load offset=20
    i32.store offset=84
    local.get $l5
    local.get $l5
    i32.load offset=16
    local.tee $p2
    i32.store offset=80
    local.get $l5
    i64.const 4
    i64.store offset=36 align=4
    local.get $l5
    i32.const 1048768
    i32.store offset=32
    local.get $l5
    i32.const 6
    i32.store offset=60
    local.get $l5
    local.get $p2
    i32.store offset=92
    local.get $l5
    local.get $l5
    i32.const 56
    i32.add
    i32.store offset=48
    local.get $l5
    local.get $l5
    i32.const 92
    i32.add
    i32.store offset=72
    local.get $l5
    local.get $l5
    i32.const 80
    i32.add
    i32.store offset=64
    local.get $l5
    local.get $l5
    i32.const 16
    i32.add
    i32.store offset=56
    local.get $l5
    i32.const 32
    i32.add
    call $_ZN3std2io5stdio6_print17hd34db9e38b7e5054E
    local.get $p4
    i32.const 3
    i32.store
    local.get $p3
    i32.const 4
    i32.store
    local.get $p0
    i32.const 5
    i32.store
    local.get $l5
    local.get $l5
    i32.load offset=4
    i32.store offset=84
    local.get $l5
    local.get $l5
    i32.load
    local.tee $p3
    i32.store offset=80
    local.get $l5
    i64.const 4
    i64.store offset=36 align=4
    local.get $l5
    i32.const 1048944
    i32.store offset=32
    local.get $l5
    i32.const 6
    i32.store offset=60
    local.get $l5
    local.get $p3
    i32.store offset=92
    local.get $l5
    local.get $l5
    i32.const 56
    i32.add
    i32.store offset=48
    local.get $l5
    local.get $l5
    i32.const 92
    i32.add
    i32.store offset=72
    local.get $l5
    local.get $l5
    i32.const 80
    i32.add
    i32.store offset=64
    local.get $l5
    local.get $l5
    i32.store offset=56
    local.get $l5
    i32.const 32
    i32.add
    call $_ZN3std2io5stdio6_print17hd34db9e38b7e5054E
    local.get $l5
    i32.const 96
    i32.add
    global.set $g0)
  (func $_ZN4main12intermediate17h1a902bac6af2874cE (type $t5) (param $p0 i32) (param $p1 i32)
    (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32)
    global.get $g0
    i32.const 64
    i32.sub
    local.tee $l2
    global.set $g0
    local.get $l2
    i32.const 30
    i32.add
    i32.const 0
    i64.load offset=1048998 align=1
    i64.store align=2
    local.get $l2
    i32.const 24
    i32.add
    i32.const 0
    i64.load offset=1048992 align=1
    i64.store
    local.get $l2
    i32.const 16
    i32.add
    i32.const 0
    i64.load offset=1048984 align=1
    i64.store
    local.get $l2
    i32.const 0
    i64.load offset=1048976 align=1
    i64.store offset=8
    block $B0
      i32.const 35
      i32.const 1
      call $__rust_alloc
      local.tee $l3
      i32.eqz
      br_if $B0
      local.get $l2
      i64.const 35
      i64.store offset=44 align=4
      local.get $l2
      local.get $l3
      i32.store offset=40
      local.get $l2
      i32.const 40
      i32.add
      i32.const 0
      i32.const 35
      call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve17ha2198ae13467cc95E
      local.get $l2
      local.get $l2
      i32.load offset=48
      local.tee $l3
      i32.const 35
      i32.add
      i32.store offset=48
      local.get $l3
      local.get $l2
      i32.load offset=40
      i32.add
      i32.const 35
      i32.const 1049006
      i32.const 35
      call $_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h9c08b7267d289810E
      local.get $l2
      i32.load offset=44
      local.set $l3
      local.get $l2
      i32.load offset=48
      local.set $l4
      local.get $l2
      i32.load offset=40
      local.set $l5
      local.get $l2
      i64.const 4
      i64.store offset=56
      local.get $l2
      i64.const 1
      i64.store offset=44 align=4
      local.get $l2
      i32.const 1049064
      i32.store offset=40
      local.get $l2
      i32.const 40
      i32.add
      call $_ZN3std2io5stdio6_print17hd34db9e38b7e5054E
      local.get $p0
      local.get $p1
      local.get $l2
      i32.const 8
      i32.add
      local.get $l5
      local.get $l4
      call $_ZN4main4leaf17he80d23a2a9f2228bE
      block $B1
        local.get $l3
        i32.eqz
        br_if $B1
        local.get $l5
        local.get $l3
        i32.const 1
        call $__rust_dealloc
      end
      local.get $l2
      i32.const 64
      i32.add
      global.set $g0
      return
    end
    i32.const 35
    i32.const 1
    call $_ZN5alloc5alloc18handle_alloc_error17h372aacb639e2de27E
    unreachable)
  (func $_ZN4main4main17h9e0ea2b04575dfdbE (type $t0)
    (local $l0 i32) (local $l1 i32) (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32)
    global.get $g0
    i32.const 48
    i32.sub
    local.tee $l0
    global.set $g0
    local.get $l0
    i64.const 4
    i64.store offset=24
    local.get $l0
    i64.const 1
    i64.store offset=12 align=4
    local.get $l0
    i32.const 1049084
    i32.store offset=8
    local.get $l0
    i32.const 8
    i32.add
    call $_ZN3std2io5stdio6_print17hd34db9e38b7e5054E
    local.get $l0
    i32.const 8
    i32.add
    call $_ZN3std3env4args17h5d6872dcdc60322aE
    local.get $l0
    i32.const 32
    i32.add
    local.get $l0
    i32.const 8
    i32.add
    call $_ZN73_$LT$std..env..Args$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h130ad00728ed1b35E
    block $B0
      block $B1
        local.get $l0
        i32.load offset=32
        local.tee $l1
        i32.eqz
        br_if $B1
        local.get $l0
        i32.load offset=36
        local.set $l2
        local.get $l1
        local.get $l0
        i32.const 40
        i32.add
        i32.load
        call $_ZN4main12intermediate17h1a902bac6af2874cE
        block $B2
          local.get $l2
          i32.eqz
          br_if $B2
          local.get $l1
          local.get $l2
          i32.const 1
          call $__rust_dealloc
        end
        local.get $l0
        i32.load offset=16
        local.tee $l1
        local.get $l0
        i32.load offset=20
        local.tee $l3
        i32.eq
        br_if $B0
        loop $L3
          local.get $l0
          local.get $l1
          i32.const 12
          i32.add
          local.tee $l4
          i32.store offset=16
          local.get $l1
          i32.load
          local.tee $l5
          i32.eqz
          br_if $B0
          local.get $l1
          i32.load offset=4
          local.set $l2
          local.get $l4
          local.set $l1
          block $B4
            local.get $l2
            i32.eqz
            br_if $B4
            local.get $l5
            local.get $l2
            i32.const 1
            call $__rust_dealloc
            local.get $l0
            i32.load offset=20
            local.set $l3
            local.get $l0
            i32.load offset=16
            local.set $l1
          end
          local.get $l1
          local.get $l3
          i32.ne
          br_if $L3
          br $B0
        end
      end
      i32.const 1048600
      i32.const 43
      i32.const 1048716
      call $_ZN4core9panicking5panic17hc60400b47c695700E
      unreachable
    end
    block $B5
      local.get $l0
      i32.load offset=12
      local.tee $l1
      i32.eqz
      br_if $B5
      local.get $l0
      i32.load offset=8
      local.get $l1
      i32.const 12
      i32.mul
      i32.const 4
      call $__rust_dealloc
    end
    local.get $l0
    i32.const 48
    i32.add
    global.set $g0)
  (func $__original_main (type $t11) (result i32)
    (local $l0 i32) (local $l1 i32)
    global.get $g0
    i32.const 16
    i32.sub
    local.tee $l0
    global.set $g0
    local.get $l0
    i32.const 9
    i32.store offset=12
    local.get $l0
    i32.const 12
    i32.add
    i32.const 1048576
    i32.const 0
    i32.const 0
    call $_ZN3std2rt19lang_start_internal17hb21784bb01c7c753E
    local.set $l1
    local.get $l0
    i32.const 16
    i32.add
    global.set $g0
    local.get $l1)
  (func $main (type $t3) (param $p0 i32) (param $p1 i32) (result i32)
    call $__original_main)
  (func $_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h9c08b7267d289810E (type $t4) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32)
    (local $l4 i32)
    global.get $g0
    i32.const 96
    i32.sub
    local.tee $l4
    global.set $g0
    local.get $l4
    local.get $p1
    i32.store offset=8
    local.get $l4
    local.get $p3
    i32.store offset=12
    block $B0
      local.get $p1
      local.get $p3
      i32.ne
      br_if $B0
      local.get $p0
      local.get $p2
      local.get $p1
      call $memcpy
      drop
      local.get $l4
      i32.const 96
      i32.add
      global.set $g0
      return
    end
    local.get $l4
    i32.const 40
    i32.add
    i32.const 20
    i32.add
    i32.const 10
    i32.store
    local.get $l4
    i32.const 52
    i32.add
    i32.const 11
    i32.store
    local.get $l4
    i32.const 16
    i32.add
    i32.const 20
    i32.add
    i32.const 3
    i32.store
    local.get $l4
    i64.const 3
    i64.store offset=20 align=4
    local.get $l4
    i32.const 1049152
    i32.store offset=16
    local.get $l4
    i32.const 11
    i32.store offset=44
    local.get $l4
    local.get $l4
    i32.const 8
    i32.add
    i32.store offset=64
    local.get $l4
    local.get $l4
    i32.const 12
    i32.add
    i32.store offset=68
    local.get $l4
    i64.const 4
    i64.store offset=88
    local.get $l4
    i64.const 1
    i64.store offset=76 align=4
    local.get $l4
    i32.const 1049228
    i32.store offset=72
    local.get $l4
    local.get $l4
    i32.const 40
    i32.add
    i32.store offset=32
    local.get $l4
    local.get $l4
    i32.const 72
    i32.add
    i32.store offset=56
    local.get $l4
    local.get $l4
    i32.const 68
    i32.add
    i32.store offset=48
    local.get $l4
    local.get $l4
    i32.const 64
    i32.add
    i32.store offset=40
    local.get $l4
    i32.const 16
    i32.add
    i32.const 1049312
    call $_ZN4core9panicking9panic_fmt17h8eef3a14480998beE
    unreachable)
  (func $_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h97a4b0741912e1acE (type $t3) (param $p0 i32) (param $p1 i32) (result i32)
    local.get $p0
    i32.load
    local.set $p0
    block $B0
      local.get $p1
      call $_ZN4core3fmt9Formatter15debug_lower_hex17ha70a7ac18ca965afE
      br_if $B0
      block $B1
        local.get $p1
        call $_ZN4core3fmt9Formatter15debug_upper_hex17h5b80b9b67b737f51E
        br_if $B1
        local.get $p0
        local.get $p1
        call $_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h81afefe9a006429dE
        return
      end
      local.get $p0
      local.get $p1
      call $_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$i32$GT$3fmt17he6067a6f8103a390E
      return
    end
    local.get $p0
    local.get $p1
    call $_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i32$GT$3fmt17h58623d8131b79122E)
  (func $_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hcb50ccd46cfffa86E (type $t3) (param $p0 i32) (param $p1 i32) (result i32)
    local.get $p0
    i32.load
    local.get $p0
    i32.load offset=4
    local.get $p1
    call $_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17h1f0b63dac53d0aecE)
  (func $_ZN52_$LT$$BP$const$u20$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h36ad9990371e35ecE (type $t3) (param $p0 i32) (param $p1 i32) (result i32)
    (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32)
    global.get $g0
    i32.const 16
    i32.sub
    local.tee $l2
    global.set $g0
    local.get $p1
    i32.const 12
    i32.add
    i32.load
    local.set $l3
    local.get $p1
    i32.load
    local.set $l4
    local.get $p1
    i32.load offset=8
    local.set $l5
    local.get $p1
    call $_ZN4core3fmt9Formatter9alternate17haad4b8880f5e5b7bE
    local.set $l6
    local.get $p1
    i32.load
    local.set $l7
    block $B0
      local.get $l6
      i32.eqz
      br_if $B0
      local.get $p1
      local.get $l7
      i32.const 8
      i32.or
      local.tee $l7
      i32.store
      local.get $p1
      i32.load offset=8
      i32.const 1
      i32.eq
      br_if $B0
      local.get $p1
      i64.const 42949672961
      i64.store offset=8 align=4
    end
    local.get $p1
    local.get $l7
    i32.const 4
    i32.or
    i32.store
    local.get $l2
    local.get $p0
    i32.load
    i32.store offset=12
    local.get $l2
    i32.const 12
    i32.add
    local.get $p1
    call $_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i32$GT$3fmt17h58623d8131b79122E
    local.set $l7
    local.get $p1
    local.get $l3
    i32.store offset=12
    local.get $p1
    local.get $l5
    i32.store offset=8
    local.get $p1
    local.get $l4
    i32.store
    local.get $l2
    i32.const 16
    i32.add
    global.set $g0
    local.get $l7)
  (func $_ZN52_$LT$$BP$const$u20$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h9743d9e05b4bdf6eE (type $t3) (param $p0 i32) (param $p1 i32) (result i32)
    (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32)
    global.get $g0
    i32.const 16
    i32.sub
    local.tee $l2
    global.set $g0
    local.get $p1
    i32.const 12
    i32.add
    i32.load
    local.set $l3
    local.get $p1
    i32.load
    local.set $l4
    local.get $p1
    i32.load offset=8
    local.set $l5
    local.get $p1
    call $_ZN4core3fmt9Formatter9alternate17haad4b8880f5e5b7bE
    local.set $l6
    local.get $p1
    i32.load
    local.set $l7
    block $B0
      local.get $l6
      i32.eqz
      br_if $B0
      local.get $p1
      local.get $l7
      i32.const 8
      i32.or
      local.tee $l7
      i32.store
      local.get $p1
      i32.load offset=8
      i32.const 1
      i32.eq
      br_if $B0
      local.get $p1
      i64.const 42949672961
      i64.store offset=8 align=4
    end
    local.get $p1
    local.get $l7
    i32.const 4
    i32.or
    i32.store
    local.get $l2
    local.get $p0
    i32.load
    i32.store offset=12
    local.get $l2
    i32.const 12
    i32.add
    local.get $p1
    call $_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i32$GT$3fmt17h58623d8131b79122E
    local.set $l7
    local.get $p1
    local.get $l3
    i32.store offset=12
    local.get $p1
    local.get $l5
    i32.store offset=8
    local.get $p1
    local.get $l4
    i32.store
    local.get $l2
    i32.const 16
    i32.add
    global.set $g0
    local.get $l7)
  (func $__rust_alloc (type $t3) (param $p0 i32) (param $p1 i32) (result i32)
    (local $l2 i32)
    local.get $p0
    local.get $p1
    call $__rdl_alloc
    local.set $l2
    local.get $l2
    return)
  (func $__rust_dealloc (type $t6) (param $p0 i32) (param $p1 i32) (param $p2 i32)
    local.get $p0
    local.get $p1
    local.get $p2
    call $__rdl_dealloc
    return)
  (func $__rust_realloc (type $t9) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32) (result i32)
    (local $l4 i32)
    local.get $p0
    local.get $p1
    local.get $p2
    local.get $p3
    call $__rdl_realloc
    local.set $l4
    local.get $l4
    return)
  (func $_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17h0f8d2bd32519b0bcE (type $t2) (param $p0 i32) (result i64)
    i64.const -7270236786431142833)
  (func $_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17h168fc26cbdda1442E (type $t2) (param $p0 i32) (result i64)
    i64.const 1229646359891580772)
  (func $_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17h5d6a88253efd5b28E (type $t2) (param $p0 i32) (result i64)
    i64.const -3690083165842148393)
  (func $_ZN73_$LT$std..sys_common..os_str_bytes..Slice$u20$as$u20$core..fmt..Debug$GT$3fmt17h4065989a45dde40cE (type $t8) (param $p0 i32) (param $p1 i32) (param $p2 i32) (result i32)
    (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32) (local $l9 i32) (local $l10 i32) (local $l11 i32) (local $l12 i64)
    global.get $g0
    i32.const 80
    i32.sub
    local.tee $l3
    global.set $g0
    i32.const 1
    local.set $l4
    block $B0
      local.get $p2
      i32.const 1050416
      i32.const 1
      call $_ZN4core3fmt9Formatter9write_str17haa5886101a13330aE
      br_if $B0
      local.get $l3
      i32.const 8
      i32.add
      local.get $p0
      local.get $p1
      call $_ZN4core3str5lossy9Utf8Lossy10from_bytes17h7dab23bdc987c3f1E
      local.get $l3
      local.get $l3
      i32.load offset=8
      local.get $l3
      i32.load offset=12
      call $_ZN4core3str5lossy9Utf8Lossy6chunks17h678e80bba7d8a004E
      local.get $l3
      local.get $l3
      i64.load
      i64.store offset=16
      local.get $l3
      i32.const 40
      i32.add
      local.get $l3
      i32.const 16
      i32.add
      call $_ZN96_$LT$core..str..lossy..Utf8LossyChunksIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3cc4f6dc97be609eE
      block $B1
        local.get $l3
        i32.load offset=40
        local.tee $l4
        i32.eqz
        br_if $B1
        local.get $l3
        i32.const 48
        i32.add
        local.set $l5
        local.get $l3
        i32.const 64
        i32.add
        local.set $l6
        loop $L2
          local.get $l3
          i32.load offset=52
          local.set $l7
          local.get $l3
          i32.load offset=48
          local.set $l8
          local.get $l3
          i32.load offset=44
          local.set $p0
          local.get $l3
          i32.const 4
          i32.store offset=64
          local.get $l3
          i32.const 4
          i32.store offset=48
          local.get $l3
          local.get $l4
          i32.store offset=40
          local.get $l3
          local.get $l4
          local.get $p0
          i32.add
          i32.store offset=44
          i32.const 4
          local.set $l4
          block $B3
            loop $L4
              block $B5
                block $B6
                  block $B7
                    block $B8
                      block $B9
                        block $B10
                          block $B11
                            block $B12
                              block $B13
                                block $B14
                                  block $B15
                                    block $B16
                                      local.get $l4
                                      i32.const 4
                                      i32.eq
                                      br_if $B16
                                      local.get $l5
                                      call $_ZN82_$LT$core..char..EscapeDebug$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0ef1301de9a0af9aE
                                      local.tee $l4
                                      i32.const 1114112
                                      i32.ne
                                      br_if $B15
                                    end
                                    block $B17
                                      local.get $l3
                                      i32.load offset=40
                                      local.tee $l4
                                      local.get $l3
                                      i32.load offset=44
                                      local.tee $p0
                                      i32.eq
                                      br_if $B17
                                      local.get $l3
                                      local.get $l4
                                      i32.const 1
                                      i32.add
                                      local.tee $l9
                                      i32.store offset=40
                                      block $B18
                                        block $B19
                                          local.get $l4
                                          i32.load8_s
                                          local.tee $p1
                                          i32.const -1
                                          i32.le_s
                                          br_if $B19
                                          local.get $p1
                                          i32.const 255
                                          i32.and
                                          local.set $p0
                                          br $B18
                                        end
                                        block $B20
                                          block $B21
                                            local.get $l9
                                            local.get $p0
                                            i32.ne
                                            br_if $B21
                                            i32.const 0
                                            local.set $l4
                                            local.get $p0
                                            local.set $l9
                                            br $B20
                                          end
                                          local.get $l3
                                          local.get $l4
                                          i32.const 2
                                          i32.add
                                          local.tee $l9
                                          i32.store offset=40
                                          local.get $l4
                                          i32.load8_u offset=1
                                          i32.const 63
                                          i32.and
                                          local.set $l4
                                        end
                                        local.get $p1
                                        i32.const 31
                                        i32.and
                                        local.set $l10
                                        block $B22
                                          local.get $p1
                                          i32.const 255
                                          i32.and
                                          local.tee $p1
                                          i32.const 223
                                          i32.gt_u
                                          br_if $B22
                                          local.get $l4
                                          local.get $l10
                                          i32.const 6
                                          i32.shl
                                          i32.or
                                          local.set $p0
                                          br $B18
                                        end
                                        block $B23
                                          block $B24
                                            local.get $l9
                                            local.get $p0
                                            i32.ne
                                            br_if $B24
                                            i32.const 0
                                            local.set $l9
                                            local.get $p0
                                            local.set $l11
                                            br $B23
                                          end
                                          local.get $l3
                                          local.get $l9
                                          i32.const 1
                                          i32.add
                                          local.tee $l11
                                          i32.store offset=40
                                          local.get $l9
                                          i32.load8_u
                                          i32.const 63
                                          i32.and
                                          local.set $l9
                                        end
                                        local.get $l9
                                        local.get $l4
                                        i32.const 6
                                        i32.shl
                                        i32.or
                                        local.set $l4
                                        block $B25
                                          local.get $p1
                                          i32.const 240
                                          i32.ge_u
                                          br_if $B25
                                          local.get $l4
                                          local.get $l10
                                          i32.const 12
                                          i32.shl
                                          i32.or
                                          local.set $p0
                                          br $B18
                                        end
                                        block $B26
                                          block $B27
                                            local.get $l11
                                            local.get $p0
                                            i32.ne
                                            br_if $B27
                                            i32.const 0
                                            local.set $p0
                                            br $B26
                                          end
                                          local.get $l3
                                          local.get $l11
                                          i32.const 1
                                          i32.add
                                          i32.store offset=40
                                          local.get $l11
                                          i32.load8_u
                                          i32.const 63
                                          i32.and
                                          local.set $p0
                                        end
                                        local.get $l4
                                        i32.const 6
                                        i32.shl
                                        local.get $l10
                                        i32.const 18
                                        i32.shl
                                        i32.const 1835008
                                        i32.and
                                        i32.or
                                        local.get $p0
                                        i32.or
                                        local.set $p0
                                      end
                                      i32.const 2
                                      local.set $l4
                                      local.get $p0
                                      i32.const -9
                                      i32.add
                                      local.tee $l9
                                      i32.const 30
                                      i32.le_u
                                      br_if $B12
                                      local.get $p0
                                      i32.const 92
                                      i32.eq
                                      br_if $B10
                                      local.get $p0
                                      i32.const 1114112
                                      i32.ne
                                      br_if $B11
                                    end
                                    local.get $l3
                                    i32.load offset=64
                                    i32.const 4
                                    i32.eq
                                    br_if $B14
                                    local.get $l6
                                    call $_ZN82_$LT$core..char..EscapeDebug$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0ef1301de9a0af9aE
                                    local.tee $l4
                                    i32.const 1114112
                                    i32.eq
                                    br_if $B14
                                  end
                                  local.get $p2
                                  local.get $l4
                                  call $_ZN57_$LT$core..fmt..Formatter$u20$as$u20$core..fmt..Write$GT$10write_char17hd0c803174082e12eE
                                  br_if $B13
                                  local.get $l3
                                  i32.load offset=48
                                  local.set $l4
                                  br $L4
                                end
                                loop $L28
                                  local.get $l7
                                  i32.eqz
                                  br_if $B3
                                  local.get $l3
                                  local.get $l8
                                  i32.store offset=28
                                  local.get $l3
                                  i32.const 1
                                  i32.store offset=60
                                  local.get $l3
                                  i32.const 1
                                  i32.store offset=52
                                  local.get $l3
                                  i32.const 1051716
                                  i32.store offset=48
                                  local.get $l3
                                  i32.const 1
                                  i32.store offset=44
                                  local.get $l3
                                  i32.const 1051708
                                  i32.store offset=40
                                  local.get $l3
                                  i32.const 12
                                  i32.store offset=36
                                  local.get $l7
                                  i32.const -1
                                  i32.add
                                  local.set $l7
                                  local.get $l8
                                  i32.const 1
                                  i32.add
                                  local.set $l8
                                  local.get $l3
                                  local.get $l3
                                  i32.const 32
                                  i32.add
                                  i32.store offset=56
                                  local.get $l3
                                  local.get $l3
                                  i32.const 28
                                  i32.add
                                  i32.store offset=32
                                  local.get $p2
                                  local.get $l3
                                  i32.const 40
                                  i32.add
                                  call $_ZN4core3fmt9Formatter9write_fmt17h703d37c837f1e686E
                                  i32.eqz
                                  br_if $L28
                                end
                              end
                              i32.const 1
                              local.set $l4
                              br $B0
                            end
                            i32.const 116
                            local.set $p1
                            block $B29
                              local.get $l9
                              br_table $B5 $B7 $B11 $B11 $B29 $B11 $B11 $B11 $B11 $B11 $B11 $B11 $B11 $B11 $B11 $B11 $B11 $B11 $B11 $B11 $B11 $B11 $B11 $B11 $B11 $B10 $B11 $B11 $B11 $B11 $B10 $B5
                            end
                            i32.const 114
                            local.set $p1
                            br $B6
                          end
                          block $B30
                            local.get $p0
                            call $_ZN4core7unicode6tables16derived_property15Grapheme_Extend17hae9f1cc446db1bb7E
                            i32.eqz
                            br_if $B30
                            local.get $p0
                            i32.const 1
                            i32.or
                            i32.clz
                            i32.const 2
                            i32.shr_u
                            i32.const 7
                            i32.xor
                            i64.extend_i32_u
                            i64.const 21474836480
                            i64.or
                            local.set $l12
                            br $B8
                          end
                          i32.const 1
                          local.set $l4
                          local.get $p0
                          call $_ZN4core7unicode9printable12is_printable17hed06e069218dc178E
                          i32.eqz
                          br_if $B9
                        end
                        local.get $p0
                        local.set $p1
                        br $B5
                      end
                      local.get $p0
                      i32.const 1
                      i32.or
                      i32.clz
                      i32.const 2
                      i32.shr_u
                      i32.const 7
                      i32.xor
                      i64.extend_i32_u
                      i64.const 21474836480
                      i64.or
                      local.set $l12
                    end
                    i32.const 3
                    local.set $l4
                    local.get $p0
                    local.set $p1
                    br $B5
                  end
                  i32.const 110
                  local.set $p1
                end
              end
              local.get $l3
              local.get $l12
              i64.store offset=56
              local.get $l3
              local.get $p1
              i32.store offset=52
              local.get $l3
              local.get $l4
              i32.store offset=48
              br $L4
            end
          end
          local.get $l3
          i32.const 40
          i32.add
          local.get $l3
          i32.const 16
          i32.add
          call $_ZN96_$LT$core..str..lossy..Utf8LossyChunksIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3cc4f6dc97be609eE
          local.get $l3
          i32.load offset=40
          local.tee $l4
          br_if $L2
        end
      end
      local.get $p2
      i32.const 1050416
      i32.const 1
      call $_ZN4core3fmt9Formatter9write_str17haa5886101a13330aE
      local.set $l4
    end
    local.get $l3
    i32.const 80
    i32.add
    global.set $g0
    local.get $l4)
  (func $_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h33e9d5b249d20379E (type $t3) (param $p0 i32) (param $p1 i32) (result i32)
    local.get $p0
    i32.load
    local.set $p0
    block $B0
      local.get $p1
      call $_ZN4core3fmt9Formatter15debug_lower_hex17ha70a7ac18ca965afE
      br_if $B0
      block $B1
        local.get $p1
        call $_ZN4core3fmt9Formatter15debug_upper_hex17h5b80b9b67b737f51E
        br_if $B1
        local.get $p0
        local.get $p1
        call $_ZN4core3fmt3num3imp51_$LT$impl$u20$core..fmt..Display$u20$for$u20$u8$GT$3fmt17h6bbc810392989f25E
        return
      end
      local.get $p0
      local.get $p1
      call $_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$i8$GT$3fmt17hb07de94750255221E
      return
    end
    local.get $p0
    local.get $p1
    call $_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i8$GT$3fmt17hc0bd685e8a486811E)
  (func $_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h9153e35d1f393cc8E (type $t3) (param $p0 i32) (param $p1 i32) (result i32)
    local.get $p0
    i32.load
    local.set $p0
    block $B0
      local.get $p1
      call $_ZN4core3fmt9Formatter15debug_lower_hex17ha70a7ac18ca965afE
      br_if $B0
      block $B1
        local.get $p1
        call $_ZN4core3fmt9Formatter15debug_upper_hex17h5b80b9b67b737f51E
        br_if $B1
        local.get $p0
        local.get $p1
        call $_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h81afefe9a006429dE
        return
      end
      local.get $p0
      local.get $p1
      call $_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$i32$GT$3fmt17he6067a6f8103a390E
      return
    end
    local.get $p0
    local.get $p1
    call $_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i32$GT$3fmt17h58623d8131b79122E)
  (func $_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hf6db0e1716810508E (type $t3) (param $p0 i32) (param $p1 i32) (result i32)
    (local $l2 i32) (local $l3 i32)
    global.get $g0
    i32.const 16
    i32.sub
    local.tee $l2
    global.set $g0
    local.get $p0
    i32.load
    local.tee $p0
    i32.load offset=8
    local.set $l3
    local.get $p0
    i32.load
    local.set $p0
    local.get $l2
    local.get $p1
    call $_ZN4core3fmt9Formatter10debug_list17h3e245a8d65529e2cE
    block $B0
      local.get $l3
      i32.eqz
      br_if $B0
      loop $L1
        local.get $l2
        local.get $p0
        i32.store offset=12
        local.get $l2
        local.get $l2
        i32.const 12
        i32.add
        i32.const 1049400
        call $_ZN4core3fmt8builders8DebugSet5entry17hf39c7622bed830d6E
        drop
        local.get $p0
        i32.const 1
        i32.add
        local.set $p0
        local.get $l3
        i32.const -1
        i32.add
        local.tee $l3
        br_if $L1
      end
    end
    local.get $l2
    call $_ZN4core3fmt8builders9DebugList6finish17h8425cc974c8800a1E
    local.set $p0
    local.get $l2
    i32.const 16
    i32.add
    global.set $g0
    local.get $p0)
  (func $_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hcd40a1afa9d9ce57E (type $t3) (param $p0 i32) (param $p1 i32) (result i32)
    local.get $p0
    i32.load
    local.get $p1
    call $_ZN60_$LT$core..panic..Location$u20$as$u20$core..fmt..Display$GT$3fmt17h907319866752d049E)
  (func $_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hcec0264094fa939fE (type $t3) (param $p0 i32) (param $p1 i32) (result i32)
    local.get $p0
    i32.load
    local.get $p0
    i32.load offset=4
    local.get $p1
    call $_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17h1f0b63dac53d0aecE)
  (func $_ZN45_$LT$$RF$T$u20$as$u20$core..fmt..UpperHex$GT$3fmt17h56eb96d5732f91c6E (type $t3) (param $p0 i32) (param $p1 i32) (result i32)
    local.get $p0
    i32.load
    local.get $p1
    call $_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$i8$GT$3fmt17hb07de94750255221E)
  (func $_ZN4core3fmt5Write10write_char17h60efdbdfd77cd04aE (type $t3) (param $p0 i32) (param $p1 i32) (result i32)
    (local $l2 i32) (local $l3 i64) (local $l4 i32) (local $l5 i32)
    global.get $g0
    i32.const 16
    i32.sub
    local.tee $l2
    global.set $g0
    local.get $l2
    i32.const 0
    i32.store offset=4
    block $B0
      block $B1
        block $B2
          local.get $p1
          i32.const 128
          i32.lt_u
          br_if $B2
          local.get $p1
          i32.const 2048
          i32.lt_u
          br_if $B1
          block $B3
            local.get $p1
            i32.const 65536
            i32.ge_u
            br_if $B3
            local.get $l2
            local.get $p1
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=6
            local.get $l2
            local.get $p1
            i32.const 6
            i32.shr_u
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=5
            local.get $l2
            local.get $p1
            i32.const 12
            i32.shr_u
            i32.const 15
            i32.and
            i32.const 224
            i32.or
            i32.store8 offset=4
            i32.const 3
            local.set $p1
            br $B0
          end
          local.get $l2
          local.get $p1
          i32.const 63
          i32.and
          i32.const 128
          i32.or
          i32.store8 offset=7
          local.get $l2
          local.get $p1
          i32.const 18
          i32.shr_u
          i32.const 240
          i32.or
          i32.store8 offset=4
          local.get $l2
          local.get $p1
          i32.const 6
          i32.shr_u
          i32.const 63
          i32.and
          i32.const 128
          i32.or
          i32.store8 offset=6
          local.get $l2
          local.get $p1
          i32.const 12
          i32.shr_u
          i32.const 63
          i32.and
          i32.const 128
          i32.or
          i32.store8 offset=5
          i32.const 4
          local.set $p1
          br $B0
        end
        local.get $l2
        local.get $p1
        i32.store8 offset=4
        i32.const 1
        local.set $p1
        br $B0
      end
      local.get $l2
      local.get $p1
      i32.const 63
      i32.and
      i32.const 128
      i32.or
      i32.store8 offset=5
      local.get $l2
      local.get $p1
      i32.const 6
      i32.shr_u
      i32.const 31
      i32.and
      i32.const 192
      i32.or
      i32.store8 offset=4
      i32.const 2
      local.set $p1
    end
    local.get $l2
    i32.const 8
    i32.add
    local.get $p0
    i32.load
    local.get $l2
    i32.const 4
    i32.add
    local.get $p1
    call $_ZN3std2io5Write9write_all17h2b497641c383c1c2E
    i32.const 0
    local.set $p1
    block $B4
      local.get $l2
      i32.load8_u offset=8
      i32.const 3
      i32.eq
      br_if $B4
      local.get $l2
      i64.load offset=8
      local.set $l3
      block $B5
        block $B6
          i32.const 0
          br_if $B6
          local.get $p0
          i32.load8_u offset=4
          i32.const 2
          i32.ne
          br_if $B5
        end
        local.get $p0
        i32.const 8
        i32.add
        i32.load
        local.tee $p1
        i32.load
        local.get $p1
        i32.load offset=4
        i32.load
        call_indirect (type $t1) $T0
        block $B7
          local.get $p1
          i32.load offset=4
          local.tee $l4
          i32.load offset=4
          local.tee $l5
          i32.eqz
          br_if $B7
          local.get $p1
          i32.load
          local.get $l5
          local.get $l4
          i32.load offset=8
          call $__rust_dealloc
        end
        local.get $p0
        i32.load offset=8
        i32.const 12
        i32.const 4
        call $__rust_dealloc
      end
      local.get $p0
      local.get $l3
      i64.store offset=4 align=4
      i32.const 1
      local.set $p1
    end
    local.get $l2
    i32.const 16
    i32.add
    global.set $g0
    local.get $p1)
  (func $_ZN3std2io5Write9write_all17h2b497641c383c1c2E (type $t4) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32)
    (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32)
    global.get $g0
    i32.const 32
    i32.sub
    local.tee $l4
    global.set $g0
    block $B0
      block $B1
        block $B2
          block $B3
            block $B4
              block $B5
                block $B6
                  block $B7
                    local.get $p3
                    i32.eqz
                    br_if $B7
                    loop $L8
                      local.get $p1
                      i32.load
                      local.tee $l5
                      i32.load offset=4
                      br_if $B4
                      local.get $l5
                      i32.const -1
                      i32.store offset=4
                      local.get $l4
                      i32.const 8
                      i32.add
                      local.get $l5
                      i32.const 8
                      i32.add
                      local.get $p2
                      local.get $p3
                      call $_ZN73_$LT$std..io..buffered..LineWriter$LT$W$GT$$u20$as$u20$std..io..Write$GT$5write17h88167627bef1f5b5E
                      local.get $l5
                      local.get $l5
                      i32.load offset=4
                      i32.const 1
                      i32.add
                      i32.store offset=4
                      block $B9
                        block $B10
                          local.get $l4
                          i32.load offset=8
                          i32.const 1
                          i32.eq
                          br_if $B10
                          block $B11
                            local.get $l4
                            i32.load offset=12
                            local.tee $l5
                            br_if $B11
                            i32.const 28
                            i32.const 1
                            call $__rust_alloc
                            local.tee $l5
                            i32.eqz
                            br_if $B3
                            local.get $l5
                            i32.const 24
                            i32.add
                            i32.const 0
                            i32.load offset=1050970 align=1
                            i32.store align=1
                            local.get $l5
                            i32.const 16
                            i32.add
                            i32.const 0
                            i64.load offset=1050962 align=1
                            i64.store align=1
                            local.get $l5
                            i32.const 8
                            i32.add
                            i32.const 0
                            i64.load offset=1050954 align=1
                            i64.store align=1
                            local.get $l5
                            i32.const 0
                            i64.load offset=1050946 align=1
                            i64.store align=1
                            i32.const 12
                            i32.const 4
                            call $__rust_alloc
                            local.tee $p3
                            i32.eqz
                            br_if $B2
                            local.get $p3
                            i64.const 120259084316
                            i64.store offset=4 align=4
                            local.get $p3
                            local.get $l5
                            i32.store
                            i32.const 12
                            i32.const 4
                            call $__rust_alloc
                            local.tee $l5
                            br_if $B5
                            i32.const 12
                            i32.const 4
                            call $_ZN5alloc5alloc18handle_alloc_error17h372aacb639e2de27E
                            unreachable
                          end
                          local.get $p3
                          local.get $l5
                          i32.lt_u
                          br_if $B1
                          local.get $p2
                          local.get $l5
                          i32.add
                          local.set $p2
                          local.get $p3
                          local.get $l5
                          i32.sub
                          local.set $p3
                          br $B9
                        end
                        block $B12
                          block $B13
                            block $B14
                              block $B15
                                local.get $l4
                                i32.load8_u offset=12
                                local.tee $l6
                                br_table $B15 $B13 $B14 $B15
                              end
                              local.get $l4
                              i32.load offset=16
                              call $_ZN3std3sys4wasi17decode_error_kind17haa3a99fbe8bf835fE
                              i32.const 255
                              i32.and
                              local.set $l5
                              br $B12
                            end
                            local.get $l4
                            i32.load offset=16
                            i32.load8_u offset=8
                            local.set $l5
                            br $B12
                          end
                          local.get $l4
                          i32.load8_u offset=13
                          local.set $l5
                        end
                        local.get $l5
                        i32.const 255
                        i32.and
                        i32.const 15
                        i32.ne
                        br_if $B6
                        local.get $l6
                        i32.const 2
                        i32.lt_u
                        br_if $B9
                        local.get $l4
                        i32.load offset=16
                        local.tee $l5
                        i32.load
                        local.get $l5
                        i32.load offset=4
                        i32.load
                        call_indirect (type $t1) $T0
                        block $B16
                          local.get $l5
                          i32.load offset=4
                          local.tee $l6
                          i32.load offset=4
                          local.tee $l7
                          i32.eqz
                          br_if $B16
                          local.get $l5
                          i32.load
                          local.get $l7
                          local.get $l6
                          i32.load offset=8
                          call $__rust_dealloc
                        end
                        local.get $l5
                        i32.const 12
                        i32.const 4
                        call $__rust_dealloc
                      end
                      local.get $p3
                      br_if $L8
                    end
                  end
                  local.get $p0
                  i32.const 3
                  i32.store8
                  br $B0
                end
                local.get $p0
                local.get $l4
                i64.load offset=12 align=4
                i64.store align=4
                br $B0
              end
              local.get $l5
              i32.const 14
              i32.store8 offset=8
              local.get $l5
              i32.const 1050376
              i32.store offset=4
              local.get $l5
              local.get $p3
              i32.store
              local.get $l5
              local.get $l4
              i32.load16_u offset=24 align=1
              i32.store16 offset=9 align=1
              local.get $l5
              i32.const 11
              i32.add
              local.get $l4
              i32.const 24
              i32.add
              i32.const 2
              i32.add
              i32.load8_u
              i32.store8
              local.get $p0
              i32.const 4
              i32.add
              local.get $l5
              i32.store
              local.get $p0
              i32.const 2
              i32.store
              br $B0
            end
            i32.const 1049416
            i32.const 16
            local.get $l4
            i32.const 24
            i32.add
            i32.const 1049716
            call $_ZN4core6result13unwrap_failed17h89d8c4399f5be1adE
            unreachable
          end
          i32.const 28
          i32.const 1
          call $_ZN5alloc5alloc18handle_alloc_error17h372aacb639e2de27E
          unreachable
        end
        i32.const 12
        i32.const 4
        call $_ZN5alloc5alloc18handle_alloc_error17h372aacb639e2de27E
        unreachable
      end
      local.get $l5
      local.get $p3
      call $_ZN4core5slice22slice_index_order_fail17heebd88c1be3dadefE
      unreachable
    end
    local.get $l4
    i32.const 32
    i32.add
    global.set $g0)
  (func $_ZN4core3fmt5Write10write_char17hc15d9e049e32c338E (type $t3) (param $p0 i32) (param $p1 i32) (result i32)
    (local $l2 i32) (local $l3 i64) (local $l4 i32) (local $l5 i32)
    global.get $g0
    i32.const 16
    i32.sub
    local.tee $l2
    global.set $g0
    local.get $l2
    i32.const 0
    i32.store offset=4
    block $B0
      block $B1
        block $B2
          local.get $p1
          i32.const 128
          i32.lt_u
          br_if $B2
          local.get $p1
          i32.const 2048
          i32.lt_u
          br_if $B1
          block $B3
            local.get $p1
            i32.const 65536
            i32.ge_u
            br_if $B3
            local.get $l2
            local.get $p1
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=6
            local.get $l2
            local.get $p1
            i32.const 6
            i32.shr_u
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=5
            local.get $l2
            local.get $p1
            i32.const 12
            i32.shr_u
            i32.const 15
            i32.and
            i32.const 224
            i32.or
            i32.store8 offset=4
            i32.const 3
            local.set $p1
            br $B0
          end
          local.get $l2
          local.get $p1
          i32.const 63
          i32.and
          i32.const 128
          i32.or
          i32.store8 offset=7
          local.get $l2
          local.get $p1
          i32.const 18
          i32.shr_u
          i32.const 240
          i32.or
          i32.store8 offset=4
          local.get $l2
          local.get $p1
          i32.const 6
          i32.shr_u
          i32.const 63
          i32.and
          i32.const 128
          i32.or
          i32.store8 offset=6
          local.get $l2
          local.get $p1
          i32.const 12
          i32.shr_u
          i32.const 63
          i32.and
          i32.const 128
          i32.or
          i32.store8 offset=5
          i32.const 4
          local.set $p1
          br $B0
        end
        local.get $l2
        local.get $p1
        i32.store8 offset=4
        i32.const 1
        local.set $p1
        br $B0
      end
      local.get $l2
      local.get $p1
      i32.const 63
      i32.and
      i32.const 128
      i32.or
      i32.store8 offset=5
      local.get $l2
      local.get $p1
      i32.const 6
      i32.shr_u
      i32.const 31
      i32.and
      i32.const 192
      i32.or
      i32.store8 offset=4
      i32.const 2
      local.set $p1
    end
    local.get $l2
    i32.const 8
    i32.add
    local.get $p0
    i32.load
    local.get $l2
    i32.const 4
    i32.add
    local.get $p1
    call $_ZN3std2io5Write9write_all17h4c673540e22a7825E
    i32.const 0
    local.set $p1
    block $B4
      local.get $l2
      i32.load8_u offset=8
      i32.const 3
      i32.eq
      br_if $B4
      local.get $l2
      i64.load offset=8
      local.set $l3
      block $B5
        block $B6
          i32.const 0
          br_if $B6
          local.get $p0
          i32.load8_u offset=4
          i32.const 2
          i32.ne
          br_if $B5
        end
        local.get $p0
        i32.const 8
        i32.add
        i32.load
        local.tee $p1
        i32.load
        local.get $p1
        i32.load offset=4
        i32.load
        call_indirect (type $t1) $T0
        block $B7
          local.get $p1
          i32.load offset=4
          local.tee $l4
          i32.load offset=4
          local.tee $l5
          i32.eqz
          br_if $B7
          local.get $p1
          i32.load
          local.get $l5
          local.get $l4
          i32.load offset=8
          call $__rust_dealloc
        end
        local.get $p0
        i32.load offset=8
        i32.const 12
        i32.const 4
        call $__rust_dealloc
      end
      local.get $p0
      local.get $l3
      i64.store offset=4 align=4
      i32.const 1
      local.set $p1
    end
    local.get $l2
    i32.const 16
    i32.add
    global.set $g0
    local.get $p1)
  (func $_ZN3std2io5Write9write_all17h4c673540e22a7825E (type $t4) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32)
    (local $l4 i32) (local $l5 i32)
    global.get $g0
    i32.const 32
    i32.sub
    local.tee $l4
    global.set $g0
    block $B0
      block $B1
        block $B2
          block $B3
            block $B4
              block $B5
                block $B6
                  local.get $p3
                  i32.eqz
                  br_if $B6
                  loop $L7
                    local.get $l4
                    local.get $p3
                    i32.store offset=12
                    local.get $l4
                    local.get $p2
                    i32.store offset=8
                    local.get $l4
                    i32.const 16
                    i32.add
                    i32.const 2
                    local.get $l4
                    i32.const 8
                    i32.add
                    i32.const 1
                    call $_ZN4wasi13lib_generated8fd_write17hcbb26a9193d90ff3E
                    block $B8
                      block $B9
                        local.get $l4
                        i32.load16_u offset=16
                        i32.const 1
                        i32.eq
                        br_if $B9
                        block $B10
                          local.get $l4
                          i32.load offset=20
                          local.tee $l5
                          br_if $B10
                          i32.const 28
                          i32.const 1
                          call $__rust_alloc
                          local.tee $p3
                          i32.eqz
                          br_if $B2
                          local.get $p3
                          i32.const 24
                          i32.add
                          i32.const 0
                          i32.load offset=1050970 align=1
                          i32.store align=1
                          local.get $p3
                          i32.const 16
                          i32.add
                          i32.const 0
                          i64.load offset=1050962 align=1
                          i64.store align=1
                          local.get $p3
                          i32.const 8
                          i32.add
                          i32.const 0
                          i64.load offset=1050954 align=1
                          i64.store align=1
                          local.get $p3
                          i32.const 0
                          i64.load offset=1050946 align=1
                          i64.store align=1
                          i32.const 12
                          i32.const 4
                          call $__rust_alloc
                          local.tee $p2
                          i32.eqz
                          br_if $B1
                          local.get $p2
                          i64.const 120259084316
                          i64.store offset=4 align=4
                          local.get $p2
                          local.get $p3
                          i32.store
                          i32.const 12
                          i32.const 4
                          call $__rust_alloc
                          local.tee $p3
                          br_if $B4
                          i32.const 12
                          i32.const 4
                          call $_ZN5alloc5alloc18handle_alloc_error17h372aacb639e2de27E
                          unreachable
                        end
                        local.get $p3
                        local.get $l5
                        i32.lt_u
                        br_if $B0
                        local.get $p2
                        local.get $l5
                        i32.add
                        local.set $p2
                        local.get $p3
                        local.get $l5
                        i32.sub
                        local.set $p3
                        br $B8
                      end
                      local.get $l4
                      local.get $l4
                      i32.load16_u offset=18
                      i32.store16 offset=30
                      local.get $l4
                      i32.const 30
                      i32.add
                      call $_ZN4wasi5error5Error9raw_error17ha81beb7b4fa33a3dE
                      i32.const 65535
                      i32.and
                      local.tee $l5
                      call $_ZN3std3sys4wasi17decode_error_kind17haa3a99fbe8bf835fE
                      i32.const 255
                      i32.and
                      i32.const 15
                      i32.ne
                      br_if $B5
                    end
                    local.get $p3
                    br_if $L7
                  end
                end
                local.get $p0
                i32.const 3
                i32.store8
                br $B3
              end
              local.get $p0
              i32.const 0
              i32.store
              local.get $p0
              i32.const 4
              i32.add
              local.get $l5
              i32.store
              br $B3
            end
            local.get $p3
            i32.const 14
            i32.store8 offset=8
            local.get $p3
            i32.const 1050376
            i32.store offset=4
            local.get $p3
            local.get $p2
            i32.store
            local.get $p3
            local.get $l4
            i32.load16_u offset=16 align=1
            i32.store16 offset=9 align=1
            local.get $p3
            i32.const 11
            i32.add
            local.get $l4
            i32.const 16
            i32.add
            i32.const 2
            i32.add
            i32.load8_u
            i32.store8
            local.get $p0
            i32.const 4
            i32.add
            local.get $p3
            i32.store
            local.get $p0
            i32.const 2
            i32.store
          end
          local.get $l4
          i32.const 32
          i32.add
          global.set $g0
          return
        end
        i32.const 28
        i32.const 1
        call $_ZN5alloc5alloc18handle_alloc_error17h372aacb639e2de27E
        unreachable
      end
      i32.const 12
      i32.const 4
      call $_ZN5alloc5alloc18handle_alloc_error17h372aacb639e2de27E
      unreachable
    end
    local.get $l5
    local.get $p3
    call $_ZN4core5slice22slice_index_order_fail17heebd88c1be3dadefE
    unreachable)
  (func $_ZN4core3fmt5Write9write_fmt17h2438519d8d7db450E (type $t3) (param $p0 i32) (param $p1 i32) (result i32)
    (local $l2 i32)
    global.get $g0
    i32.const 32
    i32.sub
    local.tee $l2
    global.set $g0
    local.get $l2
    local.get $p0
    i32.store offset=4
    local.get $l2
    i32.const 8
    i32.add
    i32.const 16
    i32.add
    local.get $p1
    i32.const 16
    i32.add
    i64.load align=4
    i64.store
    local.get $l2
    i32.const 8
    i32.add
    i32.const 8
    i32.add
    local.get $p1
    i32.const 8
    i32.add
    i64.load align=4
    i64.store
    local.get $l2
    local.get $p1
    i64.load align=4
    i64.store offset=8
    local.get $l2
    i32.const 4
    i32.add
    i32.const 1049328
    local.get $l2
    i32.const 8
    i32.add
    call $_ZN4core3fmt5write17h8876819fabc0b258E
    local.set $p1
    local.get $l2
    i32.const 32
    i32.add
    global.set $g0
    local.get $p1)
  (func $_ZN4core3fmt5Write9write_fmt17h9ac7a778133567cdE (type $t3) (param $p0 i32) (param $p1 i32) (result i32)
    (local $l2 i32)
    global.get $g0
    i32.const 32
    i32.sub
    local.tee $l2
    global.set $g0
    local.get $l2
    local.get $p0
    i32.store offset=4
    local.get $l2
    i32.const 8
    i32.add
    i32.const 16
    i32.add
    local.get $p1
    i32.const 16
    i32.add
    i64.load align=4
    i64.store
    local.get $l2
    i32.const 8
    i32.add
    i32.const 8
    i32.add
    local.get $p1
    i32.const 8
    i32.add
    i64.load align=4
    i64.store
    local.get $l2
    local.get $p1
    i64.load align=4
    i64.store offset=8
    local.get $l2
    i32.const 4
    i32.add
    i32.const 1049376
    local.get $l2
    i32.const 8
    i32.add
    call $_ZN4core3fmt5write17h8876819fabc0b258E
    local.set $p1
    local.get $l2
    i32.const 32
    i32.add
    global.set $g0
    local.get $p1)
  (func $_ZN3std9panicking12default_hook17had55ad0811906711E (type $t1) (param $p0 i32)
    (local $l1 i32) (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i64) (local $l7 i32)
    global.get $g0
    i32.const 96
    i32.sub
    local.tee $l1
    global.set $g0
    i32.const 1
    local.set $l2
    block $B0
      block $B1
        block $B2
          i32.const 0
          i32.load offset=1060584
          i32.const 1
          i32.eq
          br_if $B2
          i32.const 0
          i64.const 1
          i64.store offset=1060584
          br $B1
        end
        i32.const 0
        i32.load offset=1060588
        i32.const 1
        i32.gt_u
        br_if $B0
      end
      block $B3
        i32.const 0
        i32.load offset=1060516
        local.tee $l2
        i32.const 2
        i32.le_u
        br_if $B3
        i32.const 1
        local.set $l2
        br $B0
      end
      block $B4
        block $B5
          block $B6
            local.get $l2
            br_table $B6 $B5 $B4 $B6
          end
          local.get $l1
          i32.const 64
          i32.add
          i32.const 1050272
          i32.const 14
          call $_ZN3std3env7_var_os17h654abe0d5110b1baE
          block $B7
            block $B8
              local.get $l1
              i32.load offset=64
              local.tee $l3
              br_if $B8
              i32.const 5
              local.set $l2
              br $B7
            end
            local.get $l1
            i32.load offset=68
            local.set $l4
            block $B9
              block $B10
                local.get $l1
                i32.const 72
                i32.add
                i32.load
                i32.const -1
                i32.add
                local.tee $l2
                i32.const 3
                i32.gt_u
                br_if $B10
                block $B11
                  block $B12
                    local.get $l2
                    br_table $B12 $B10 $B10 $B11 $B12
                  end
                  i32.const 4
                  local.set $l2
                  i32.const 1
                  local.set $l5
                  local.get $l3
                  i32.const 1050286
                  i32.eq
                  br_if $B9
                  local.get $l3
                  i32.load8_u
                  i32.const 48
                  i32.ne
                  br_if $B10
                  br $B9
                end
                i32.const 1
                local.set $l2
                i32.const 3
                local.set $l5
                local.get $l3
                i32.const 1051536
                i32.eq
                br_if $B9
                local.get $l3
                i32.load align=1
                i32.const 1819047270
                i32.eq
                br_if $B9
              end
              i32.const 0
              local.set $l2
              i32.const 2
              local.set $l5
            end
            local.get $l4
            i32.eqz
            br_if $B7
            local.get $l3
            local.get $l4
            i32.const 1
            call $__rust_dealloc
          end
          i32.const 0
          i32.const 1
          local.get $l5
          local.get $l2
          i32.const 5
          i32.eq
          local.tee $l3
          select
          i32.store offset=1060516
          i32.const 4
          local.get $l2
          local.get $l3
          select
          local.set $l2
          br $B0
        end
        i32.const 4
        local.set $l2
        br $B0
      end
      i32.const 0
      local.set $l2
    end
    local.get $l1
    local.get $l2
    i32.store8 offset=35
    block $B13
      block $B14
        block $B15
          local.get $p0
          call $_ZN4core5panic9PanicInfo8location17h198cc11e8ca65b7cE
          local.tee $l2
          i32.eqz
          br_if $B15
          local.get $l1
          local.get $l2
          i32.store offset=36
          local.get $l1
          i32.const 24
          i32.add
          local.get $p0
          call $_ZN4core5panic8Location4file17h916ad762787e0b09E
          local.get $l1
          i32.load offset=24
          local.tee $l2
          local.get $l1
          i32.load offset=28
          i32.load offset=12
          call_indirect (type $t2) $T0
          local.set $l6
          block $B16
            local.get $l2
            i32.eqz
            br_if $B16
            local.get $l6
            i64.const 1229646359891580772
            i64.eq
            br_if $B14
          end
          local.get $l1
          i32.const 16
          i32.add
          local.get $p0
          call $_ZN4core5panic8Location4file17h916ad762787e0b09E
          local.get $l1
          i32.load offset=16
          local.tee $l2
          local.get $l1
          i32.load offset=20
          i32.load offset=12
          call_indirect (type $t2) $T0
          local.set $l6
          i32.const 8
          local.set $p0
          i32.const 1051820
          local.set $l5
          block $B17
            local.get $l2
            i32.eqz
            br_if $B17
            local.get $l6
            i64.const -3690083165842148393
            i64.ne
            br_if $B17
            local.get $l2
            i32.load offset=8
            local.set $p0
            local.get $l2
            i32.load
            local.set $l5
          end
          local.get $l1
          local.get $l5
          i32.store offset=40
          br $B13
        end
        i32.const 1049672
        i32.const 43
        i32.const 1049612
        call $_ZN4core9panicking5panic17hc60400b47c695700E
        unreachable
      end
      local.get $l1
      local.get $l2
      i32.load
      i32.store offset=40
      local.get $l2
      i32.load offset=4
      local.set $p0
    end
    local.get $l1
    local.get $p0
    i32.store offset=44
    i32.const 0
    local.set $p0
    block $B18
      i32.const 0
      i32.load offset=1060572
      i32.const 1
      i32.eq
      br_if $B18
      i32.const 0
      i64.const 1
      i64.store offset=1060572 align=4
      i32.const 0
      i32.const 0
      i32.store offset=1060580
    end
    local.get $l1
    i32.const 1060576
    call $_ZN3std10sys_common11thread_info10ThreadInfo4with28_$u7b$$u7b$closure$u7d$$u7d$17he4fbfdba5ffe7524E
    local.tee $l2
    i32.store offset=52
    block $B19
      block $B20
        block $B21
          local.get $l2
          i32.load offset=16
          local.tee $l5
          br_if $B21
          br $B20
        end
        local.get $l2
        i32.const 16
        i32.add
        i32.const 0
        local.get $l5
        select
        local.tee $p0
        i32.load offset=4
        local.tee $l3
        i32.const -1
        i32.add
        local.set $l5
        local.get $l3
        i32.eqz
        br_if $B19
        local.get $p0
        i32.load
        local.set $p0
      end
      local.get $l1
      local.get $l5
      i32.const 9
      local.get $p0
      select
      i32.store offset=60
      local.get $l1
      local.get $p0
      i32.const 1051828
      local.get $p0
      select
      i32.store offset=56
      local.get $l1
      local.get $l1
      i32.const 35
      i32.add
      i32.store offset=76
      local.get $l1
      local.get $l1
      i32.const 36
      i32.add
      i32.store offset=72
      local.get $l1
      local.get $l1
      i32.const 40
      i32.add
      i32.store offset=68
      local.get $l1
      local.get $l1
      i32.const 56
      i32.add
      i32.store offset=64
      i32.const 0
      local.set $l3
      local.get $l1
      i32.const 8
      i32.add
      i32.const 0
      local.get $l1
      call $_ZN3std2io5stdio9set_panic17h667ab54a2f5594a1E
      local.get $l1
      i32.load offset=12
      local.set $l5
      block $B22
        block $B23
          local.get $l1
          i32.load offset=8
          local.tee $p0
          i32.eqz
          br_if $B23
          local.get $l1
          local.get $l5
          i32.store offset=84
          local.get $l1
          local.get $p0
          i32.store offset=80
          local.get $l1
          i32.const 64
          i32.add
          local.get $l1
          i32.const 80
          i32.add
          i32.const 1051876
          call $_ZN3std9panicking12default_hook28_$u7b$$u7b$closure$u7d$$u7d$17haed2194222b3e512E
          local.get $l1
          local.get $l1
          i32.load offset=80
          local.get $l1
          i32.load offset=84
          call $_ZN3std2io5stdio9set_panic17h667ab54a2f5594a1E
          block $B24
            local.get $l1
            i32.load
            local.tee $l3
            i32.eqz
            br_if $B24
            local.get $l3
            local.get $l1
            i32.load offset=4
            local.tee $l4
            i32.load
            call_indirect (type $t1) $T0
            local.get $l4
            i32.load offset=4
            local.tee $l7
            i32.eqz
            br_if $B24
            local.get $l3
            local.get $l7
            local.get $l4
            i32.load offset=8
            call $__rust_dealloc
          end
          i32.const 1
          local.set $l3
          br $B22
        end
        local.get $l1
        i32.const 64
        i32.add
        local.get $l1
        i32.const 88
        i32.add
        i32.const 1051840
        call $_ZN3std9panicking12default_hook28_$u7b$$u7b$closure$u7d$$u7d$17haed2194222b3e512E
      end
      local.get $l2
      local.get $l2
      i32.load
      local.tee $l4
      i32.const -1
      i32.add
      i32.store
      block $B25
        local.get $l4
        i32.const 1
        i32.ne
        br_if $B25
        local.get $l1
        i32.const 52
        i32.add
        call $_ZN5alloc4sync12Arc$LT$T$GT$9drop_slow17hd1e1a2ec6dd20ab9E
      end
      block $B26
        local.get $p0
        i32.const 0
        i32.ne
        local.get $l3
        i32.const 1
        i32.xor
        i32.and
        i32.eqz
        br_if $B26
        local.get $p0
        local.get $l5
        i32.load
        call_indirect (type $t1) $T0
        local.get $l5
        i32.load offset=4
        local.tee $l2
        i32.eqz
        br_if $B26
        local.get $p0
        local.get $l2
        local.get $l5
        i32.load offset=8
        call $__rust_dealloc
      end
      local.get $l1
      i32.const 96
      i32.add
      global.set $g0
      return
    end
    local.get $l5
    i32.const 0
    call $_ZN4core5slice20slice_index_len_fail17hfc4485e8c33f2d47E
    unreachable)
  (func $_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17h5217946a25668fdeE (type $t5) (param $p0 i32) (param $p1 i32)
    (local $l2 i32)
    global.get $g0
    i32.const 16
    i32.sub
    local.tee $l2
    global.set $g0
    local.get $l2
    local.get $p0
    i32.load
    i32.store offset=12
    local.get $l2
    i32.const 12
    i32.add
    local.get $p1
    call $_ZN3std4sync4once4Once9call_once28_$u7b$$u7b$closure$u7d$$u7d$17hca3f28696bfe6018E
    local.get $l2
    i32.const 16
    i32.add
    global.set $g0)
  (func $_ZN3std4sync4once4Once9call_once28_$u7b$$u7b$closure$u7d$$u7d$17hca3f28696bfe6018E (type $t5) (param $p0 i32) (param $p1 i32)
    (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32) (local $l9 i32)
    local.get $p0
    i32.load
    local.tee $p0
    i32.load8_u
    local.set $l2
    local.get $p0
    i32.const 0
    i32.store8
    block $B0
      local.get $l2
      i32.const 1
      i32.and
      i32.eqz
      br_if $B0
      i32.const 1
      local.set $l3
      loop $L1
        block $B2
          block $B3
            block $B4
              block $B5
                i32.const 0
                i32.load8_u offset=1060593
                br_if $B5
                i32.const 0
                i32.load offset=1060512
                local.set $l4
                i32.const 0
                local.get $l3
                i32.const 10
                i32.eq
                i32.store offset=1060512
                i32.const 0
                i32.const 0
                i32.store8 offset=1060593
                block $B6
                  local.get $l4
                  i32.const 1
                  i32.gt_u
                  br_if $B6
                  block $B7
                    local.get $l4
                    br_table $B2 $B7 $B2
                  end
                  i32.const 1051388
                  i32.const 31
                  i32.const 1051372
                  call $_ZN3std9panicking11begin_panic17h4c37f88b45d6339dE
                  unreachable
                end
                local.get $l4
                i32.load
                local.tee $l5
                local.get $l4
                i32.load offset=8
                local.tee $l2
                i32.const 3
                i32.shl
                i32.add
                local.set $l6
                local.get $l4
                i32.load offset=4
                local.set $l7
                local.get $l5
                local.set $p0
                local.get $l2
                i32.eqz
                br_if $B4
                local.get $l5
                local.set $p0
                loop $L8
                  block $B9
                    local.get $p0
                    i32.load
                    local.tee $l2
                    br_if $B9
                    local.get $p0
                    i32.const 8
                    i32.add
                    local.set $p0
                    br $B4
                  end
                  local.get $l2
                  local.get $p0
                  i32.const 4
                  i32.add
                  i32.load
                  call $_ZN83_$LT$alloc..boxed..Box$LT$F$GT$$u20$as$u20$core..ops..function..FnOnce$LT$A$GT$$GT$9call_once17h471dcd76e3cc0616E
                  local.get $p0
                  i32.const 8
                  i32.add
                  local.tee $p0
                  local.get $l6
                  i32.ne
                  br_if $L8
                  br $B3
                end
              end
              i32.const 1052448
              i32.const 32
              i32.const 1052432
              call $_ZN3std9panicking11begin_panic17h4c37f88b45d6339dE
              unreachable
            end
            local.get $p0
            local.get $l6
            i32.eq
            br_if $B3
            loop $L10
              local.get $p0
              i32.load
              local.tee $l2
              i32.eqz
              br_if $B3
              local.get $l2
              local.get $p0
              i32.const 4
              i32.add
              i32.load
              local.tee $l8
              i32.load
              call_indirect (type $t1) $T0
              block $B11
                local.get $l8
                i32.load offset=4
                local.tee $l9
                i32.eqz
                br_if $B11
                local.get $l2
                local.get $l9
                local.get $l8
                i32.load offset=8
                call $__rust_dealloc
              end
              local.get $p0
              i32.const 8
              i32.add
              local.tee $p0
              local.get $l6
              i32.ne
              br_if $L10
            end
          end
          block $B12
            local.get $l7
            i32.eqz
            br_if $B12
            local.get $l5
            local.get $l7
            i32.const 3
            i32.shl
            i32.const 4
            call $__rust_dealloc
          end
          local.get $l4
          i32.const 12
          i32.const 4
          call $__rust_dealloc
        end
        local.get $l3
        local.get $l3
        i32.const 10
        i32.lt_u
        local.tee $p0
        i32.add
        local.set $l3
        local.get $p0
        br_if $L1
      end
      return
    end
    i32.const 1049672
    i32.const 43
    i32.const 1049612
    call $_ZN4core9panicking5panic17hc60400b47c695700E
    unreachable)
  (func $_ZN3std9panicking11begin_panic17h4c37f88b45d6339dE (type $t6) (param $p0 i32) (param $p1 i32) (param $p2 i32)
    (local $l3 i32)
    global.get $g0
    i32.const 16
    i32.sub
    local.tee $l3
    global.set $g0
    local.get $l3
    local.get $p1
    i32.store offset=12
    local.get $l3
    local.get $p0
    i32.store offset=8
    local.get $l3
    i32.const 8
    i32.add
    i32.const 1052096
    i32.const 0
    local.get $p2
    call $_ZN3std9panicking20rust_panic_with_hook17h7f90b1acd5ff521cE
    unreachable)
  (func $_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17h9eb7082a48580bd9E (type $t8) (param $p0 i32) (param $p1 i32) (param $p2 i32) (result i32)
    (local $l3 i32) (local $l4 i32)
    global.get $g0
    i32.const 32
    i32.sub
    local.tee $l3
    global.set $g0
    block $B0
      block $B1
        local.get $p2
        i32.load
        i32.const 1
        i32.ne
        br_if $B1
        i32.const 1051540
        local.set $p2
        i32.const 9
        local.set $l4
        br $B0
      end
      local.get $l3
      i32.const 16
      i32.add
      local.get $p2
      i32.load offset=4
      local.get $p2
      i32.const 8
      i32.add
      i32.load
      call $_ZN4core3str9from_utf817hc9d846e05f440661E
      i32.const 1051540
      local.get $l3
      i32.load offset=20
      local.get $l3
      i32.load offset=16
      i32.const 1
      i32.eq
      local.tee $l4
      select
      local.set $p2
      i32.const 9
      local.get $l3
      i32.const 16
      i32.add
      i32.const 8
      i32.add
      i32.load
      local.get $l4
      select
      local.set $l4
    end
    local.get $l3
    i32.const 8
    i32.add
    local.get $p2
    local.get $l4
    call $_ZN4core3str5lossy9Utf8Lossy10from_bytes17h7dab23bdc987c3f1E
    local.get $l3
    i32.load offset=8
    local.get $l3
    i32.load offset=12
    local.get $p1
    call $_ZN66_$LT$core..str..lossy..Utf8Lossy$u20$as$u20$core..fmt..Display$GT$3fmt17h01e01d86d9c10b50E
    local.set $p2
    block $B2
      local.get $p0
      i32.load
      local.tee $p1
      i32.eqz
      br_if $B2
      local.get $p0
      i32.load offset=4
      local.tee $p0
      i32.eqz
      br_if $B2
      local.get $p1
      local.get $p0
      i32.const 1
      call $__rust_dealloc
    end
    local.get $l3
    i32.const 32
    i32.add
    global.set $g0
    local.get $p2)
  (func $_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17hab3cb5efd3f8166fE (type $t1) (param $p0 i32)
    (local $l1 i32)
    block $B0
      local.get $p0
      i32.load
      local.tee $p0
      i32.load8_u offset=4
      br_if $B0
      local.get $p0
      i32.const 0
      i32.store8 offset=4
      local.get $p0
      i32.load
      local.set $l1
      local.get $p0
      i32.const 1
      i32.store
      local.get $l1
      i32.load
      local.tee $p0
      local.get $p0
      i32.load
      local.tee $p0
      i32.const -1
      i32.add
      i32.store
      block $B1
        local.get $p0
        i32.const 1
        i32.ne
        br_if $B1
        local.get $l1
        call $_ZN5alloc4sync12Arc$LT$T$GT$9drop_slow17h75d572a3085302edE
      end
      local.get $l1
      i32.const 4
      i32.const 4
      call $__rust_dealloc
      return
    end
    i32.const 1052448
    i32.const 32
    i32.const 1052432
    call $_ZN3std9panicking11begin_panic17h4c37f88b45d6339dE
    unreachable)
  (func $_ZN5alloc4sync12Arc$LT$T$GT$9drop_slow17h75d572a3085302edE (type $t1) (param $p0 i32)
    (local $l1 i32) (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32)
    global.get $g0
    i32.const 16
    i32.sub
    local.tee $l1
    global.set $g0
    local.get $p0
    i32.load
    local.tee $l2
    i32.const 16
    i32.add
    local.set $l3
    block $B0
      local.get $l2
      i32.const 28
      i32.add
      i32.load8_u
      i32.const 2
      i32.eq
      br_if $B0
      local.get $l2
      i32.const 29
      i32.add
      i32.load8_u
      br_if $B0
      local.get $l1
      i32.const 8
      i32.add
      local.get $l3
      call $_ZN3std2io8buffered18BufWriter$LT$W$GT$9flush_buf17h1e803465f6444bc3E
      block $B1
        i32.const 0
        br_if $B1
        local.get $l1
        i32.load8_u offset=8
        i32.const 2
        i32.ne
        br_if $B0
      end
      local.get $l1
      i32.load offset=12
      local.tee $l4
      i32.load
      local.get $l4
      i32.load offset=4
      i32.load
      call_indirect (type $t1) $T0
      block $B2
        local.get $l4
        i32.load offset=4
        local.tee $l5
        i32.load offset=4
        local.tee $l6
        i32.eqz
        br_if $B2
        local.get $l4
        i32.load
        local.get $l6
        local.get $l5
        i32.load offset=8
        call $__rust_dealloc
      end
      local.get $l4
      i32.const 12
      i32.const 4
      call $__rust_dealloc
    end
    block $B3
      local.get $l2
      i32.const 20
      i32.add
      i32.load
      local.tee $l2
      i32.eqz
      br_if $B3
      local.get $l3
      i32.load
      local.get $l2
      i32.const 1
      call $__rust_dealloc
    end
    local.get $p0
    i32.load
    local.tee $l2
    local.get $l2
    i32.load offset=4
    local.tee $l2
    i32.const -1
    i32.add
    i32.store offset=4
    block $B4
      local.get $l2
      i32.const 1
      i32.ne
      br_if $B4
      local.get $p0
      i32.load
      i32.const 40
      i32.const 4
      call $__rust_dealloc
    end
    local.get $l1
    i32.const 16
    i32.add
    global.set $g0)
  (func $_ZN4core3ptr18real_drop_in_place17h002503b23174cca1E (type $t1) (param $p0 i32))
  (func $_ZN4core3ptr18real_drop_in_place17h1008d021a780f350E (type $t1) (param $p0 i32)
    (local $l1 i32)
    block $B0
      local.get $p0
      i32.load offset=4
      local.tee $l1
      i32.eqz
      br_if $B0
      local.get $p0
      i32.load
      local.get $l1
      i32.const 1
      call $__rust_dealloc
    end)
  (func $_ZN4core3ptr18real_drop_in_place17h14c964a2795c8756E (type $t1) (param $p0 i32)
    (local $l1 i32)
    block $B0
      local.get $p0
      i32.load offset=4
      local.tee $l1
      i32.eqz
      br_if $B0
      local.get $p0
      i32.const 8
      i32.add
      i32.load
      local.tee $p0
      i32.eqz
      br_if $B0
      local.get $l1
      local.get $p0
      i32.const 1
      call $__rust_dealloc
    end)
  (func $_ZN4core3ptr18real_drop_in_place17h1a273616ec4b5ac9E (type $t1) (param $p0 i32))
  (func $_ZN4core3ptr18real_drop_in_place17h2b3b83b2a1406e9dE (type $t1) (param $p0 i32)
    block $B0
      local.get $p0
      i32.load8_u offset=4
      br_if $B0
      block $B1
        i32.const 0
        i32.load offset=1060584
        i32.const 1
        i32.eq
        br_if $B1
        i32.const 0
        i64.const 1
        i64.store offset=1060584
        br $B0
      end
      i32.const 0
      i32.load offset=1060588
      i32.eqz
      br_if $B0
      local.get $p0
      i32.load
      i32.const 1
      i32.store8 offset=4
    end
    local.get $p0
    i32.load
    i32.load
    i32.const 0
    i32.store8)
  (func $_ZN4core3ptr18real_drop_in_place17h3e8a74f436f6b428E (type $t1) (param $p0 i32)
    (local $l1 i32) (local $l2 i32) (local $l3 i32)
    block $B0
      block $B1
        i32.const 0
        br_if $B1
        local.get $p0
        i32.load8_u offset=4
        i32.const 2
        i32.ne
        br_if $B0
      end
      local.get $p0
      i32.const 8
      i32.add
      i32.load
      local.tee $l1
      i32.load
      local.get $l1
      i32.load offset=4
      i32.load
      call_indirect (type $t1) $T0
      block $B2
        local.get $l1
        i32.load offset=4
        local.tee $l2
        i32.load offset=4
        local.tee $l3
        i32.eqz
        br_if $B2
        local.get $l1
        i32.load
        local.get $l3
        local.get $l2
        i32.load offset=8
        call $__rust_dealloc
      end
      local.get $p0
      i32.load offset=8
      i32.const 12
      i32.const 4
      call $__rust_dealloc
    end)
  (func $_ZN4core3ptr18real_drop_in_place17ha7c2802620da5d36E (type $t1) (param $p0 i32)
    (local $l1 i32)
    block $B0
      local.get $p0
      i32.const 8
      i32.add
      i32.load
      local.tee $l1
      i32.eqz
      br_if $B0
      local.get $p0
      i32.load offset=4
      local.get $l1
      i32.const 1
      call $__rust_dealloc
    end)
  (func $_ZN4core3ptr18real_drop_in_place17hd65976e8626b1b88E (type $t1) (param $p0 i32)
    (local $l1 i32)
    block $B0
      local.get $p0
      i32.load
      local.tee $l1
      i32.eqz
      br_if $B0
      local.get $p0
      i32.load offset=4
      local.tee $p0
      i32.eqz
      br_if $B0
      local.get $l1
      local.get $p0
      i32.const 1
      call $__rust_dealloc
    end)
  (func $_ZN4core3ptr18real_drop_in_place17hffd50c820102285cE (type $t1) (param $p0 i32)
    (local $l1 i32) (local $l2 i32)
    local.get $p0
    i32.load
    local.get $p0
    i32.load offset=4
    i32.load
    call_indirect (type $t1) $T0
    block $B0
      local.get $p0
      i32.load offset=4
      local.tee $l1
      i32.load offset=4
      local.tee $l2
      i32.eqz
      br_if $B0
      local.get $p0
      i32.load
      local.get $l2
      local.get $l1
      i32.load offset=8
      call $__rust_dealloc
    end)
  (func $_ZN4core6option15Option$LT$T$GT$6unwrap17h3f1ff6c63ca75a16E (type $t7) (param $p0 i32) (result i32)
    block $B0
      local.get $p0
      br_if $B0
      i32.const 1049672
      i32.const 43
      i32.const 1049612
      call $_ZN4core9panicking5panic17hc60400b47c695700E
      unreachable
    end
    local.get $p0)
  (func $_ZN4core6option15Option$LT$T$GT$6unwrap17hbe87f8a73e0525b2E (type $t7) (param $p0 i32) (result i32)
    block $B0
      local.get $p0
      br_if $B0
      i32.const 1049672
      i32.const 43
      i32.const 1049612
      call $_ZN4core9panicking5panic17hc60400b47c695700E
      unreachable
    end
    local.get $p0)
  (func $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h3ae93dd1c0eae2d8E (type $t3) (param $p0 i32) (param $p1 i32) (result i32)
    local.get $p0
    i32.load
    local.get $p1
    call $_ZN4core3fmt5Write10write_char17hc15d9e049e32c338E)
  (func $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h52ab12c1a9a7ed26E (type $t3) (param $p0 i32) (param $p1 i32) (result i32)
    local.get $p0
    i32.load
    local.get $p1
    call $_ZN4core3fmt5Write10write_char17h60efdbdfd77cd04aE)
  (func $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h56a1257173aa70e6E (type $t3) (param $p0 i32) (param $p1 i32) (result i32)
    (local $l2 i32) (local $l3 i32)
    global.get $g0
    i32.const 16
    i32.sub
    local.tee $l2
    global.set $g0
    local.get $p0
    i32.load
    local.set $p0
    block $B0
      block $B1
        block $B2
          block $B3
            local.get $p1
            i32.const 128
            i32.lt_u
            br_if $B3
            local.get $l2
            i32.const 0
            i32.store offset=12
            local.get $p1
            i32.const 2048
            i32.lt_u
            br_if $B2
            block $B4
              local.get $p1
              i32.const 65536
              i32.ge_u
              br_if $B4
              local.get $l2
              local.get $p1
              i32.const 63
              i32.and
              i32.const 128
              i32.or
              i32.store8 offset=14
              local.get $l2
              local.get $p1
              i32.const 6
              i32.shr_u
              i32.const 63
              i32.and
              i32.const 128
              i32.or
              i32.store8 offset=13
              local.get $l2
              local.get $p1
              i32.const 12
              i32.shr_u
              i32.const 15
              i32.and
              i32.const 224
              i32.or
              i32.store8 offset=12
              i32.const 3
              local.set $p1
              br $B1
            end
            local.get $l2
            local.get $p1
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=15
            local.get $l2
            local.get $p1
            i32.const 18
            i32.shr_u
            i32.const 240
            i32.or
            i32.store8 offset=12
            local.get $l2
            local.get $p1
            i32.const 6
            i32.shr_u
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=14
            local.get $l2
            local.get $p1
            i32.const 12
            i32.shr_u
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=13
            i32.const 4
            local.set $p1
            br $B1
          end
          block $B5
            local.get $p0
            i32.load offset=8
            local.tee $l3
            local.get $p0
            i32.load offset=4
            i32.ne
            br_if $B5
            local.get $p0
            i32.const 1
            call $_ZN5alloc3vec12Vec$LT$T$GT$7reserve17hb25b281955882348E
            local.get $p0
            i32.load offset=8
            local.set $l3
          end
          local.get $p0
          i32.load
          local.get $l3
          i32.add
          local.get $p1
          i32.store8
          local.get $p0
          local.get $p0
          i32.load offset=8
          i32.const 1
          i32.add
          i32.store offset=8
          br $B0
        end
        local.get $l2
        local.get $p1
        i32.const 63
        i32.and
        i32.const 128
        i32.or
        i32.store8 offset=13
        local.get $l2
        local.get $p1
        i32.const 6
        i32.shr_u
        i32.const 31
        i32.and
        i32.const 192
        i32.or
        i32.store8 offset=12
        i32.const 2
        local.set $p1
      end
      local.get $p0
      local.get $p1
      call $_ZN5alloc3vec12Vec$LT$T$GT$7reserve17hb25b281955882348E
      local.get $p0
      local.get $p0
      i32.load offset=8
      local.tee $l3
      local.get $p1
      i32.add
      i32.store offset=8
      local.get $l3
      local.get $p0
      i32.load
      i32.add
      local.get $l2
      i32.const 12
      i32.add
      local.get $p1
      call $memcpy
      drop
    end
    local.get $l2
    i32.const 16
    i32.add
    global.set $g0
    i32.const 0)
  (func $_ZN5alloc3vec12Vec$LT$T$GT$7reserve17hb25b281955882348E (type $t5) (param $p0 i32) (param $p1 i32)
    (local $l2 i32) (local $l3 i32)
    block $B0
      block $B1
        block $B2
          local.get $p0
          i32.load offset=4
          local.tee $l2
          local.get $p0
          i32.load offset=8
          local.tee $l3
          i32.sub
          local.get $p1
          i32.ge_u
          br_if $B2
          local.get $l3
          local.get $p1
          i32.add
          local.tee $p1
          local.get $l3
          i32.lt_u
          br_if $B0
          local.get $l2
          i32.const 1
          i32.shl
          local.tee $l3
          local.get $p1
          local.get $l3
          local.get $p1
          i32.gt_u
          select
          local.tee $p1
          i32.const 0
          i32.lt_s
          br_if $B0
          block $B3
            block $B4
              local.get $l2
              br_if $B4
              local.get $p1
              i32.const 1
              call $__rust_alloc
              local.set $l2
              br $B3
            end
            local.get $p0
            i32.load
            local.get $l2
            i32.const 1
            local.get $p1
            call $__rust_realloc
            local.set $l2
          end
          local.get $l2
          i32.eqz
          br_if $B1
          local.get $p0
          local.get $p1
          i32.store offset=4
          local.get $p0
          local.get $l2
          i32.store
        end
        return
      end
      local.get $p1
      i32.const 1
      call $_ZN5alloc5alloc18handle_alloc_error17h372aacb639e2de27E
      unreachable
    end
    call $_ZN5alloc7raw_vec17capacity_overflow17h545b4b1a9ba97ff8E
    unreachable)
  (func $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_fmt17h84d4595f10c6e9bdE (type $t3) (param $p0 i32) (param $p1 i32) (result i32)
    (local $l2 i32)
    global.get $g0
    i32.const 32
    i32.sub
    local.tee $l2
    global.set $g0
    local.get $l2
    local.get $p0
    i32.load
    i32.store offset=4
    local.get $l2
    i32.const 8
    i32.add
    i32.const 16
    i32.add
    local.get $p1
    i32.const 16
    i32.add
    i64.load align=4
    i64.store
    local.get $l2
    i32.const 8
    i32.add
    i32.const 8
    i32.add
    local.get $p1
    i32.const 8
    i32.add
    i64.load align=4
    i64.store
    local.get $l2
    local.get $p1
    i64.load align=4
    i64.store offset=8
    local.get $l2
    i32.const 4
    i32.add
    i32.const 1049328
    local.get $l2
    i32.const 8
    i32.add
    call $_ZN4core3fmt5write17h8876819fabc0b258E
    local.set $p1
    local.get $l2
    i32.const 32
    i32.add
    global.set $g0
    local.get $p1)
  (func $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_fmt17he9274de8420ffd84E (type $t3) (param $p0 i32) (param $p1 i32) (result i32)
    (local $l2 i32)
    global.get $g0
    i32.const 32
    i32.sub
    local.tee $l2
    global.set $g0
    local.get $l2
    local.get $p0
    i32.load
    i32.store offset=4
    local.get $l2
    i32.const 8
    i32.add
    i32.const 16
    i32.add
    local.get $p1
    i32.const 16
    i32.add
    i64.load align=4
    i64.store
    local.get $l2
    i32.const 8
    i32.add
    i32.const 8
    i32.add
    local.get $p1
    i32.const 8
    i32.add
    i64.load align=4
    i64.store
    local.get $l2
    local.get $p1
    i64.load align=4
    i64.store offset=8
    local.get $l2
    i32.const 4
    i32.add
    i32.const 1049376
    local.get $l2
    i32.const 8
    i32.add
    call $_ZN4core3fmt5write17h8876819fabc0b258E
    local.set $p1
    local.get $l2
    i32.const 32
    i32.add
    global.set $g0
    local.get $p1)
  (func $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_fmt17hf2a77fb1f44d03b9E (type $t3) (param $p0 i32) (param $p1 i32) (result i32)
    (local $l2 i32)
    global.get $g0
    i32.const 32
    i32.sub
    local.tee $l2
    global.set $g0
    local.get $l2
    local.get $p0
    i32.load
    i32.store offset=4
    local.get $l2
    i32.const 8
    i32.add
    i32.const 16
    i32.add
    local.get $p1
    i32.const 16
    i32.add
    i64.load align=4
    i64.store
    local.get $l2
    i32.const 8
    i32.add
    i32.const 8
    i32.add
    local.get $p1
    i32.const 8
    i32.add
    i64.load align=4
    i64.store
    local.get $l2
    local.get $p1
    i64.load align=4
    i64.store offset=8
    local.get $l2
    i32.const 4
    i32.add
    i32.const 1049352
    local.get $l2
    i32.const 8
    i32.add
    call $_ZN4core3fmt5write17h8876819fabc0b258E
    local.set $p1
    local.get $l2
    i32.const 32
    i32.add
    global.set $g0
    local.get $p1)
  (func $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h343be05a3736b678E (type $t8) (param $p0 i32) (param $p1 i32) (param $p2 i32) (result i32)
    (local $l3 i32) (local $l4 i64) (local $l5 i32)
    global.get $g0
    i32.const 16
    i32.sub
    local.tee $l3
    global.set $g0
    local.get $l3
    i32.const 8
    i32.add
    local.get $p0
    i32.load
    local.tee $p0
    i32.load
    local.get $p1
    local.get $p2
    call $_ZN3std2io5Write9write_all17h2b497641c383c1c2E
    i32.const 0
    local.set $p1
    block $B0
      local.get $l3
      i32.load8_u offset=8
      i32.const 3
      i32.eq
      br_if $B0
      local.get $l3
      i64.load offset=8
      local.set $l4
      block $B1
        block $B2
          i32.const 0
          br_if $B2
          local.get $p0
          i32.load8_u offset=4
          i32.const 2
          i32.ne
          br_if $B1
        end
        local.get $p0
        i32.const 8
        i32.add
        i32.load
        local.tee $p1
        i32.load
        local.get $p1
        i32.load offset=4
        i32.load
        call_indirect (type $t1) $T0
        block $B3
          local.get $p1
          i32.load offset=4
          local.tee $p2
          i32.load offset=4
          local.tee $l5
          i32.eqz
          br_if $B3
          local.get $p1
          i32.load
          local.get $l5
          local.get $p2
          i32.load offset=8
          call $__rust_dealloc
        end
        local.get $p0
        i32.load offset=8
        i32.const 12
        i32.const 4
        call $__rust_dealloc
      end
      local.get $p0
      local.get $l4
      i64.store offset=4 align=4
      i32.const 1
      local.set $p1
    end
    local.get $l3
    i32.const 16
    i32.add
    global.set $g0
    local.get $p1)
  (func $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h7543301949989357E (type $t8) (param $p0 i32) (param $p1 i32) (param $p2 i32) (result i32)
    (local $l3 i32)
    local.get $p0
    i32.load
    local.tee $p0
    local.get $p2
    call $_ZN5alloc3vec12Vec$LT$T$GT$7reserve17hb25b281955882348E
    local.get $p0
    local.get $p0
    i32.load offset=8
    local.tee $l3
    local.get $p2
    i32.add
    i32.store offset=8
    local.get $l3
    local.get $p0
    i32.load
    i32.add
    local.get $p1
    local.get $p2
    call $memcpy
    drop
    i32.const 0)
  (func $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h7b56425ef82031b0E (type $t8) (param $p0 i32) (param $p1 i32) (param $p2 i32) (result i32)
    (local $l3 i32) (local $l4 i64) (local $l5 i32)
    global.get $g0
    i32.const 16
    i32.sub
    local.tee $l3
    global.set $g0
    local.get $l3
    i32.const 8
    i32.add
    local.get $p0
    i32.load
    local.tee $p0
    i32.load
    local.get $p1
    local.get $p2
    call $_ZN3std2io5Write9write_all17h4c673540e22a7825E
    i32.const 0
    local.set $p1
    block $B0
      local.get $l3
      i32.load8_u offset=8
      i32.const 3
      i32.eq
      br_if $B0
      local.get $l3
      i64.load offset=8
      local.set $l4
      block $B1
        block $B2
          i32.const 0
          br_if $B2
          local.get $p0
          i32.load8_u offset=4
          i32.const 2
          i32.ne
          br_if $B1
        end
        local.get $p0
        i32.const 8
        i32.add
        i32.load
        local.tee $p1
        i32.load
        local.get $p1
        i32.load offset=4
        i32.load
        call_indirect (type $t1) $T0
        block $B3
          local.get $p1
          i32.load offset=4
          local.tee $p2
          i32.load offset=4
          local.tee $l5
          i32.eqz
          br_if $B3
          local.get $p1
          i32.load
          local.get $l5
          local.get $p2
          i32.load offset=8
          call $__rust_dealloc
        end
        local.get $p0
        i32.load offset=8
        i32.const 12
        i32.const 4
        call $__rust_dealloc
      end
      local.get $p0
      local.get $l4
      i64.store offset=4 align=4
      i32.const 1
      local.set $p1
    end
    local.get $l3
    i32.const 16
    i32.add
    global.set $g0
    local.get $p1)
  (func $_ZN5alloc4sync12Arc$LT$T$GT$9drop_slow17hd1e1a2ec6dd20ab9E (type $t1) (param $p0 i32)
    (local $l1 i32) (local $l2 i32)
    block $B0
      local.get $p0
      i32.load
      local.tee $l1
      i32.const 16
      i32.add
      i32.load
      local.tee $l2
      i32.eqz
      br_if $B0
      local.get $l2
      i32.const 0
      i32.store8
      local.get $l1
      i32.const 20
      i32.add
      i32.load
      local.tee $l2
      i32.eqz
      br_if $B0
      local.get $l1
      i32.load offset=16
      local.get $l2
      i32.const 1
      call $__rust_dealloc
    end
    local.get $l1
    i32.const 28
    i32.add
    i32.load
    i32.const 1
    i32.const 1
    call $__rust_dealloc
    local.get $p0
    i32.load
    local.tee $l1
    local.get $l1
    i32.load offset=4
    local.tee $l1
    i32.const -1
    i32.add
    i32.store offset=4
    block $B1
      local.get $l1
      i32.const 1
      i32.ne
      br_if $B1
      local.get $p0
      i32.load
      i32.const 48
      i32.const 8
      call $__rust_dealloc
    end)
  (func $_ZN3std2io8buffered18BufWriter$LT$W$GT$9flush_buf17h1e803465f6444bc3E (type $t5) (param $p0 i32) (param $p1 i32)
    (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32)
    global.get $g0
    i32.const 32
    i32.sub
    local.tee $l2
    global.set $g0
    block $B0
      block $B1
        block $B2
          local.get $p1
          i32.load offset=8
          local.tee $l3
          br_if $B2
          i32.const 3
          local.set $l4
          br $B1
        end
        i32.const 0
        local.set $l5
        block $B3
          loop $L4
            local.get $p1
            i32.const 1
            i32.store8 offset=13
            block $B5
              block $B6
                block $B7
                  block $B8
                    local.get $p1
                    i32.load8_u offset=12
                    local.tee $l6
                    i32.const 2
                    i32.eq
                    br_if $B8
                    local.get $p1
                    i32.load offset=8
                    local.tee $l4
                    local.get $l5
                    i32.lt_u
                    br_if $B7
                    local.get $l4
                    local.get $l5
                    i32.sub
                    local.set $l4
                    block $B9
                      local.get $l6
                      i32.const 1
                      i32.eq
                      br_if $B9
                      local.get $p1
                      i32.load
                      local.set $l6
                      local.get $l2
                      local.get $l4
                      i32.store offset=12
                      local.get $l2
                      local.get $l6
                      local.get $l5
                      i32.add
                      i32.store offset=8
                      local.get $l2
                      i32.const 16
                      i32.add
                      i32.const 1
                      local.get $l2
                      i32.const 8
                      i32.add
                      i32.const 1
                      call $_ZN4wasi13lib_generated8fd_write17hcbb26a9193d90ff3E
                      block $B10
                        local.get $l2
                        i32.load16_u offset=16
                        i32.const 1
                        i32.ne
                        br_if $B10
                        local.get $l2
                        local.get $l2
                        i32.load16_u offset=18
                        i32.store16 offset=30
                        local.get $l2
                        i32.const 30
                        i32.add
                        call $_ZN4wasi5error5Error9raw_error17ha81beb7b4fa33a3dE
                        i32.const 65535
                        i32.and
                        local.tee $l6
                        i32.const 8
                        i32.eq
                        br_if $B9
                        i32.const 0
                        local.set $l4
                        local.get $p1
                        i32.const 0
                        i32.store8 offset=13
                        local.get $l6
                        call $_ZN3std3sys4wasi17decode_error_kind17haa3a99fbe8bf835fE
                        i32.const 255
                        i32.and
                        i32.const 15
                        i32.ne
                        br_if $B3
                        br $B5
                      end
                      local.get $l2
                      i32.load offset=20
                      local.set $l4
                    end
                    local.get $p1
                    i32.const 0
                    i32.store8 offset=13
                    local.get $l4
                    i32.eqz
                    br_if $B6
                    local.get $l4
                    local.get $l5
                    i32.add
                    local.set $l5
                    br $B5
                  end
                  i32.const 1049672
                  i32.const 43
                  i32.const 1049612
                  call $_ZN4core9panicking5panic17hc60400b47c695700E
                  unreachable
                end
                local.get $l5
                local.get $l4
                call $_ZN4core5slice22slice_index_order_fail17heebd88c1be3dadefE
                unreachable
              end
              block $B11
                block $B12
                  i32.const 33
                  i32.const 1
                  call $__rust_alloc
                  local.tee $l4
                  i32.eqz
                  br_if $B12
                  local.get $l4
                  i32.const 32
                  i32.add
                  i32.const 0
                  i32.load8_u offset=1050482
                  i32.store8
                  local.get $l4
                  i32.const 24
                  i32.add
                  i32.const 0
                  i64.load offset=1050474 align=1
                  i64.store align=1
                  local.get $l4
                  i32.const 16
                  i32.add
                  i32.const 0
                  i64.load offset=1050466 align=1
                  i64.store align=1
                  local.get $l4
                  i32.const 8
                  i32.add
                  i32.const 0
                  i64.load offset=1050458 align=1
                  i64.store align=1
                  local.get $l4
                  i32.const 0
                  i64.load offset=1050450 align=1
                  i64.store align=1
                  i32.const 12
                  i32.const 4
                  call $__rust_alloc
                  local.tee $l3
                  i32.eqz
                  br_if $B11
                  local.get $l3
                  i64.const 141733920801
                  i64.store offset=4 align=4
                  local.get $l3
                  local.get $l4
                  i32.store
                  block $B13
                    i32.const 12
                    i32.const 4
                    call $__rust_alloc
                    local.tee $l6
                    br_if $B13
                    i32.const 12
                    i32.const 4
                    call $_ZN5alloc5alloc18handle_alloc_error17h372aacb639e2de27E
                    unreachable
                  end
                  local.get $l6
                  i32.const 14
                  i32.store8 offset=8
                  local.get $l6
                  i32.const 1050376
                  i32.store offset=4
                  local.get $l6
                  local.get $l3
                  i32.store
                  local.get $l6
                  local.get $l2
                  i32.load16_u offset=16 align=1
                  i32.store16 offset=9 align=1
                  i32.const 2
                  local.set $l4
                  local.get $l6
                  i32.const 11
                  i32.add
                  local.get $l2
                  i32.const 16
                  i32.add
                  i32.const 2
                  i32.add
                  i32.load8_u
                  i32.store8
                  br $B3
                end
                i32.const 33
                i32.const 1
                call $_ZN5alloc5alloc18handle_alloc_error17h372aacb639e2de27E
                unreachable
              end
              i32.const 12
              i32.const 4
              call $_ZN5alloc5alloc18handle_alloc_error17h372aacb639e2de27E
              unreachable
            end
            local.get $l5
            local.get $l3
            i32.lt_u
            br_if $L4
          end
          i32.const 3
          local.set $l4
        end
        local.get $l5
        i32.eqz
        br_if $B1
        local.get $p1
        i32.load offset=8
        local.tee $l3
        local.get $l5
        i32.lt_u
        br_if $B0
        local.get $p1
        i32.const 0
        i32.store offset=8
        local.get $l3
        local.get $l5
        i32.sub
        local.tee $l3
        i32.eqz
        br_if $B1
        local.get $p1
        i32.load
        local.tee $l7
        local.get $l7
        local.get $l5
        i32.add
        local.get $l3
        call $memmove
        drop
        local.get $p1
        local.get $l3
        i32.store offset=8
      end
      local.get $p0
      local.get $l4
      i32.store
      local.get $p0
      i32.const 4
      i32.add
      local.get $l6
      i32.store
      local.get $l2
      i32.const 32
      i32.add
      global.set $g0
      return
    end
    i32.const 1049904
    i32.const 28
    i32.const 1049888
    call $_ZN4core9panicking5panic17hc60400b47c695700E
    unreachable)
  (func $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$11allocate_in28_$u7b$$u7b$closure$u7d$$u7d$17h31c8dbb160d31216E (type $t0)
    call $_ZN5alloc7raw_vec17capacity_overflow17h545b4b1a9ba97ff8E
    unreachable)
  (func $_ZN60_$LT$alloc..string..String$u20$as$u20$core..fmt..Display$GT$3fmt17h8bf31a0875beb2d8E (type $t3) (param $p0 i32) (param $p1 i32) (result i32)
    local.get $p0
    i32.load
    local.get $p0
    i32.load offset=8
    local.get $p1
    call $_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17h1f0b63dac53d0aecE)
  (func $_ZN83_$LT$alloc..boxed..Box$LT$F$GT$$u20$as$u20$core..ops..function..FnOnce$LT$A$GT$$GT$9call_once17h471dcd76e3cc0616E (type $t5) (param $p0 i32) (param $p1 i32)
    (local $l2 i32) (local $l3 i32) (local $l4 i32)
    global.get $g0
    local.tee $l2
    local.set $l3
    local.get $l2
    local.get $p1
    i32.load offset=4
    local.tee $l4
    i32.const 15
    i32.add
    i32.const -16
    i32.and
    i32.sub
    local.tee $l2
    global.set $g0
    local.get $l2
    local.get $p0
    local.get $l4
    call $memcpy
    local.get $p1
    i32.load offset=12
    call_indirect (type $t1) $T0
    block $B0
      local.get $l4
      i32.eqz
      br_if $B0
      local.get $p0
      local.get $l4
      local.get $p1
      i32.load offset=8
      call $__rust_dealloc
    end
    local.get $l3
    global.set $g0)
  (func $_ZN3std10sys_common11thread_info10ThreadInfo4with28_$u7b$$u7b$closure$u7d$$u7d$17he4fbfdba5ffe7524E (type $t7) (param $p0 i32) (result i32)
    (local $l1 i32) (local $l2 i32) (local $l3 i32) (local $l4 i32)
    global.get $g0
    i32.const 32
    i32.sub
    local.tee $l1
    global.set $g0
    block $B0
      block $B1
        block $B2
          block $B3
            local.get $p0
            i32.load
            local.tee $l2
            i32.const 1
            i32.add
            i32.const 0
            i32.le_s
            br_if $B3
            local.get $p0
            local.get $l2
            i32.store
            block $B4
              local.get $p0
              i32.load offset=4
              local.tee $l3
              br_if $B4
              local.get $l1
              i32.const 0
              i32.store offset=8
              local.get $l1
              i32.const 8
              i32.add
              call $_ZN3std6thread6Thread3new17h6e1b1f283a53e9ccE
              local.set $l3
              local.get $p0
              i32.load
              br_if $B2
              local.get $p0
              i32.const -1
              i32.store
              block $B5
                local.get $p0
                i32.load offset=4
                local.tee $l2
                i32.eqz
                br_if $B5
                local.get $l2
                local.get $l2
                i32.load
                local.tee $l4
                i32.const -1
                i32.add
                i32.store
                local.get $l4
                i32.const 1
                i32.ne
                br_if $B5
                local.get $p0
                i32.const 4
                i32.add
                call $_ZN5alloc4sync12Arc$LT$T$GT$9drop_slow17hd1e1a2ec6dd20ab9E
              end
              local.get $p0
              local.get $l3
              i32.store offset=4
              local.get $p0
              local.get $p0
              i32.load
              i32.const 1
              i32.add
              local.tee $l2
              i32.store
            end
            local.get $l2
            br_if $B1
            local.get $p0
            i32.const -1
            i32.store
            local.get $l3
            local.get $l3
            i32.load
            local.tee $l2
            i32.const 1
            i32.add
            i32.store
            local.get $l2
            i32.const -1
            i32.le_s
            br_if $B0
            local.get $p0
            local.get $p0
            i32.load
            i32.const 1
            i32.add
            i32.store
            local.get $l1
            i32.const 32
            i32.add
            global.set $g0
            local.get $l3
            return
          end
          i32.const 1049432
          i32.const 24
          local.get $l1
          i32.const 24
          i32.add
          i32.const 1049732
          call $_ZN4core6result13unwrap_failed17h89d8c4399f5be1adE
          unreachable
        end
        i32.const 1049416
        i32.const 16
        local.get $l1
        i32.const 24
        i32.add
        i32.const 1049716
        call $_ZN4core6result13unwrap_failed17h89d8c4399f5be1adE
        unreachable
      end
      i32.const 1049416
      i32.const 16
      local.get $l1
      i32.const 24
      i32.add
      i32.const 1049716
      call $_ZN4core6result13unwrap_failed17h89d8c4399f5be1adE
      unreachable
    end
    unreachable
    unreachable)
  (func $_ZN3std6thread4park17hfc506fb04ca50a64E (type $t0)
    (local $l0 i32) (local $l1 i32) (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32)
    global.get $g0
    i32.const 96
    i32.sub
    local.tee $l0
    global.set $g0
    block $B0
      i32.const 0
      i32.load offset=1060572
      i32.const 1
      i32.eq
      br_if $B0
      i32.const 0
      i64.const 1
      i64.store offset=1060572 align=4
      i32.const 0
      i32.const 0
      i32.store offset=1060580
    end
    i32.const 1060576
    call $_ZN3std10sys_common11thread_info10ThreadInfo4with28_$u7b$$u7b$closure$u7d$$u7d$17he4fbfdba5ffe7524E
    local.tee $l1
    i32.const 0
    local.get $l1
    i32.load offset=24
    local.tee $l2
    local.get $l2
    i32.const 2
    i32.eq
    local.tee $l2
    select
    i32.store offset=24
    local.get $l0
    local.get $l1
    i32.store offset=8
    block $B1
      local.get $l2
      br_if $B1
      block $B2
        block $B3
          block $B4
            local.get $l0
            i32.load offset=8
            local.tee $l3
            i32.const 28
            i32.add
            local.tee $l4
            i32.load
            local.tee $l1
            i32.load8_u
            br_if $B4
            local.get $l1
            i32.const 1
            i32.store8
            i32.const 0
            local.set $l2
            block $B5
              block $B6
                i32.const 0
                i32.load offset=1060584
                i32.const 1
                i32.ne
                br_if $B6
                i32.const 0
                i32.load offset=1060588
                local.set $l2
                br $B5
              end
              i32.const 0
              i64.const 1
              i64.store offset=1060584
            end
            i32.const 0
            local.get $l2
            i32.store offset=1060588
            local.get $l3
            i32.const 32
            i32.add
            i32.load8_u
            br_if $B3
            local.get $l3
            i32.const 24
            i32.add
            local.tee $l1
            local.get $l1
            i32.load
            local.tee $l1
            i32.const 1
            local.get $l1
            select
            i32.store
            block $B7
              local.get $l1
              i32.eqz
              br_if $B7
              block $B8
                local.get $l1
                i32.const 2
                i32.eq
                br_if $B8
                i32.const 1050024
                i32.const 23
                i32.const 1050008
                call $_ZN3std9panicking11begin_panic17h4c37f88b45d6339dE
                unreachable
              end
              local.get $l0
              i32.load offset=8
              i32.const 24
              i32.add
              local.tee $l5
              i32.load
              local.set $l1
              local.get $l5
              i32.const 0
              i32.store
              local.get $l0
              local.get $l1
              i32.store offset=12
              local.get $l1
              i32.const 2
              i32.ne
              br_if $B2
              block $B9
                local.get $l2
                br_if $B9
                block $B10
                  i32.const 0
                  i32.load offset=1060584
                  i32.const 1
                  i32.eq
                  br_if $B10
                  i32.const 0
                  i64.const 1
                  i64.store offset=1060584
                  br $B9
                end
                i32.const 0
                i32.load offset=1060588
                i32.eqz
                br_if $B9
                local.get $l3
                i32.const 1
                i32.store8 offset=32
              end
              local.get $l4
              i32.load
              i32.const 0
              i32.store8
              br $B1
            end
            local.get $l0
            i32.load offset=8
            i32.const 36
            i32.add
            local.tee $l0
            local.get $l4
            i32.load
            local.tee $l1
            call $_ZN3std4sync7condvar7Condvar6verify17he54d47cc2b03c159E
            local.get $l0
            i32.load
            local.get $l1
            call $_ZN3std10sys_common7condvar7Condvar4wait17h4a05f079cb079294E
            unreachable
          end
          i32.const 1052448
          i32.const 32
          i32.const 1052432
          call $_ZN3std9panicking11begin_panic17h4c37f88b45d6339dE
          unreachable
        end
        local.get $l0
        local.get $l4
        i32.store offset=72
        local.get $l0
        local.get $l2
        i32.const 0
        i32.ne
        i32.store8 offset=76
        i32.const 1049764
        i32.const 43
        local.get $l0
        i32.const 72
        i32.add
        i32.const 1049840
        call $_ZN4core6result13unwrap_failed17h89d8c4399f5be1adE
        unreachable
      end
      local.get $l0
      i32.const 40
      i32.add
      i32.const 20
      i32.add
      i32.const 10
      i32.store
      local.get $l0
      i32.const 52
      i32.add
      i32.const 13
      i32.store
      local.get $l0
      i32.const 16
      i32.add
      i32.const 20
      i32.add
      i32.const 3
      i32.store
      local.get $l0
      local.get $l0
      i32.const 12
      i32.add
      i32.store offset=64
      local.get $l0
      i32.const 1050048
      i32.store offset=68
      local.get $l0
      i64.const 3
      i64.store offset=20 align=4
      local.get $l0
      i32.const 1049648
      i32.store offset=16
      local.get $l0
      i32.const 13
      i32.store offset=44
      local.get $l0
      i64.const 4
      i64.store offset=88
      local.get $l0
      i64.const 1
      i64.store offset=76 align=4
      local.get $l0
      i32.const 1050084
      i32.store offset=72
      local.get $l0
      local.get $l0
      i32.const 40
      i32.add
      i32.store offset=32
      local.get $l0
      local.get $l0
      i32.const 72
      i32.add
      i32.store offset=56
      local.get $l0
      local.get $l0
      i32.const 68
      i32.add
      i32.store offset=48
      local.get $l0
      local.get $l0
      i32.const 64
      i32.add
      i32.store offset=40
      local.get $l0
      i32.const 16
      i32.add
      i32.const 1050092
      call $_ZN3std9panicking15begin_panic_fmt17h6ebfed9e714cf511E
      unreachable
    end
    local.get $l0
    i32.load offset=8
    local.tee $l1
    local.get $l1
    i32.load
    local.tee $l1
    i32.const -1
    i32.add
    i32.store
    block $B11
      local.get $l1
      i32.const 1
      i32.ne
      br_if $B11
      local.get $l0
      i32.const 8
      i32.add
      call $_ZN5alloc4sync12Arc$LT$T$GT$9drop_slow17hd1e1a2ec6dd20ab9E
    end
    local.get $l0
    i32.const 96
    i32.add
    global.set $g0)
  (func $_ZN3std4sync7condvar7Condvar6verify17he54d47cc2b03c159E (type $t5) (param $p0 i32) (param $p1 i32)
    (local $l2 i32)
    local.get $p0
    local.get $p0
    i32.load offset=4
    local.tee $l2
    local.get $p1
    local.get $l2
    select
    i32.store offset=4
    block $B0
      local.get $l2
      i32.eqz
      br_if $B0
      local.get $l2
      local.get $p1
      i32.eq
      br_if $B0
      i32.const 1051084
      i32.const 54
      i32.const 1051068
      call $_ZN3std9panicking11begin_panic17h4c37f88b45d6339dE
      unreachable
    end)
  (func $_ZN3std10sys_common7condvar7Condvar4wait17h4a05f079cb079294E (type $t5) (param $p0 i32) (param $p1 i32)
    (local $l2 i32)
    local.get $l2
    local.get $l2
    call $_ZN3std3sys4wasi7condvar7Condvar4wait17ha1fd694d92639d58E
    unreachable)
  (func $_ZN3std9panicking15begin_panic_fmt17h6ebfed9e714cf511E (type $t5) (param $p0 i32) (param $p1 i32)
    (local $l2 i32)
    global.get $g0
    i32.const 32
    i32.sub
    local.tee $l2
    global.set $g0
    local.get $l2
    local.get $p1
    i32.load
    local.get $p1
    i32.load offset=4
    local.get $p1
    i32.load offset=8
    local.get $p1
    i32.load offset=12
    call $_ZN4core5panic8Location20internal_constructor17h907b86da1c041b0eE
    local.get $l2
    local.get $p0
    i32.store offset=24
    local.get $l2
    i32.const 1049628
    i32.store offset=20
    local.get $l2
    i32.const 1
    i32.store offset=16
    local.get $l2
    local.get $l2
    i32.store offset=28
    local.get $l2
    i32.const 16
    i32.add
    call $rust_begin_unwind
    unreachable)
  (func $_ZN3std6thread6Thread3new17h6e1b1f283a53e9ccE (type $t7) (param $p0 i32) (result i32)
    (local $l1 i32) (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i64)
    global.get $g0
    i32.const 48
    i32.sub
    local.tee $l1
    global.set $g0
    block $B0
      block $B1
        block $B2
          block $B3
            block $B4
              block $B5
                local.get $p0
                i32.load
                local.tee $l2
                br_if $B5
                i32.const 0
                local.set $l3
                br $B4
              end
              local.get $l1
              local.get $p0
              i64.load offset=4 align=4
              i64.store offset=36 align=4
              local.get $l1
              local.get $l2
              i32.store offset=32
              local.get $l1
              i32.const 16
              i32.add
              local.get $l1
              i32.const 32
              i32.add
              call $_ZN5alloc6string104_$LT$impl$u20$core..convert..From$LT$alloc..string..String$GT$$u20$for$u20$alloc..vec..Vec$LT$u8$GT$$GT$4from17h8c28c811a2a829ddE
              local.get $l1
              i32.const 8
              i32.add
              i32.const 0
              local.get $l1
              i32.load offset=16
              local.tee $p0
              local.get $l1
              i32.load offset=24
              call $_ZN4core5slice6memchr6memchr17h244fba075962fc22E
              local.get $l1
              i32.load offset=8
              br_if $B3
              local.get $l1
              i32.const 32
              i32.add
              i32.const 8
              i32.add
              local.get $l1
              i32.const 16
              i32.add
              i32.const 8
              i32.add
              i32.load
              i32.store
              local.get $l1
              local.get $l1
              i64.load offset=16
              i64.store offset=32
              local.get $l1
              local.get $l1
              i32.const 32
              i32.add
              call $_ZN3std3ffi5c_str7CString18from_vec_unchecked17h5e469fd28170e461E
              local.get $l1
              i32.load offset=4
              local.set $l4
              local.get $l1
              i32.load
              local.set $l3
            end
            i32.const 0
            i32.load8_u offset=1060592
            br_if $B2
            i32.const 0
            i32.const 1
            i32.store8 offset=1060592
            block $B6
              block $B7
                i32.const 0
                i64.load offset=1060488
                local.tee $l5
                i64.const -1
                i64.eq
                br_if $B7
                i32.const 0
                local.get $l5
                i64.const 1
                i64.add
                i64.store offset=1060488
                local.get $l5
                i64.const 0
                i64.ne
                br_if $B6
                i32.const 1049672
                i32.const 43
                i32.const 1049612
                call $_ZN4core9panicking5panic17hc60400b47c695700E
                unreachable
              end
              i32.const 1050124
              i32.const 55
              i32.const 1050108
              call $_ZN3std9panicking11begin_panic17h4c37f88b45d6339dE
              unreachable
            end
            i32.const 0
            i32.const 0
            i32.store8 offset=1060592
            i32.const 1
            i32.const 1
            call $__rust_alloc
            local.tee $l2
            i32.eqz
            br_if $B1
            local.get $l2
            i32.const 0
            i32.store8
            i32.const 48
            i32.const 8
            call $__rust_alloc
            local.tee $p0
            i32.eqz
            br_if $B0
            local.get $p0
            i64.const 1
            i64.store offset=36 align=4
            local.get $p0
            i32.const 0
            i32.store offset=24
            local.get $p0
            local.get $l4
            i32.store offset=20
            local.get $p0
            local.get $l3
            i32.store offset=16
            local.get $p0
            local.get $l5
            i64.store offset=8
            local.get $p0
            i64.const 4294967297
            i64.store
            local.get $p0
            local.get $l2
            i64.extend_i32_u
            i64.store offset=28 align=4
            local.get $l1
            i32.const 48
            i32.add
            global.set $g0
            local.get $p0
            return
          end
          local.get $l1
          i32.load offset=12
          local.set $l2
          local.get $l1
          i32.const 40
          i32.add
          local.get $l1
          i64.load offset=20 align=4
          i64.store
          local.get $l1
          local.get $p0
          i32.store offset=36
          local.get $l1
          local.get $l2
          i32.store offset=32
          i32.const 1050179
          i32.const 47
          local.get $l1
          i32.const 32
          i32.add
          i32.const 1049748
          call $_ZN4core6result13unwrap_failed17h89d8c4399f5be1adE
          unreachable
        end
        i32.const 1052448
        i32.const 32
        i32.const 1052432
        call $_ZN3std9panicking11begin_panic17h4c37f88b45d6339dE
        unreachable
      end
      i32.const 1
      i32.const 1
      call $_ZN5alloc5alloc18handle_alloc_error17h372aacb639e2de27E
      unreachable
    end
    i32.const 48
    i32.const 8
    call $_ZN5alloc5alloc18handle_alloc_error17h372aacb639e2de27E
    unreachable)
  (func $_ZN3std3ffi5c_str7CString18from_vec_unchecked17h5e469fd28170e461E (type $t5) (param $p0 i32) (param $p1 i32)
    (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32)
    block $B0
      block $B1
        block $B2
          block $B3
            block $B4
              local.get $p1
              i32.load offset=4
              local.tee $l2
              local.get $p1
              i32.load offset=8
              local.tee $l3
              i32.ne
              br_if $B4
              local.get $l3
              i32.const 1
              i32.add
              local.tee $l2
              local.get $l3
              i32.lt_u
              br_if $B2
              local.get $l2
              i32.const 0
              i32.lt_s
              br_if $B2
              block $B5
                block $B6
                  local.get $l3
                  br_if $B6
                  local.get $l2
                  i32.const 1
                  call $__rust_alloc
                  local.set $l4
                  br $B5
                end
                local.get $p1
                i32.load
                local.get $l3
                i32.const 1
                local.get $l2
                call $__rust_realloc
                local.set $l4
              end
              local.get $l4
              i32.eqz
              br_if $B3
              local.get $p1
              local.get $l2
              i32.store offset=4
              local.get $p1
              local.get $l4
              i32.store
            end
            block $B7
              local.get $l3
              local.get $l2
              i32.ne
              br_if $B7
              local.get $p1
              i32.const 1
              call $_ZN5alloc3vec12Vec$LT$T$GT$7reserve17hb25b281955882348E
              local.get $p1
              i32.load offset=4
              local.set $l2
              local.get $p1
              i32.load offset=8
              local.set $l3
            end
            local.get $p1
            local.get $l3
            i32.const 1
            i32.add
            local.tee $l4
            i32.store offset=8
            local.get $p1
            i32.load
            local.tee $l5
            local.get $l3
            i32.add
            i32.const 0
            i32.store8
            block $B8
              local.get $l2
              local.get $l4
              i32.ne
              br_if $B8
              local.get $l5
              local.set $p1
              local.get $l2
              local.set $l4
              br $B0
            end
            local.get $l2
            local.get $l4
            i32.lt_u
            br_if $B1
            block $B9
              local.get $l4
              br_if $B9
              i32.const 0
              local.set $l4
              i32.const 1
              local.set $p1
              local.get $l2
              i32.eqz
              br_if $B0
              local.get $l5
              local.get $l2
              i32.const 1
              call $__rust_dealloc
              br $B0
            end
            local.get $l5
            local.get $l2
            i32.const 1
            local.get $l4
            call $__rust_realloc
            local.tee $p1
            br_if $B0
            local.get $l4
            i32.const 1
            call $_ZN5alloc5alloc18handle_alloc_error17h372aacb639e2de27E
            unreachable
          end
          local.get $l2
          i32.const 1
          call $_ZN5alloc5alloc18handle_alloc_error17h372aacb639e2de27E
          unreachable
        end
        call $_ZN5alloc7raw_vec17capacity_overflow17h545b4b1a9ba97ff8E
        unreachable
      end
      i32.const 1049932
      i32.const 36
      i32.const 1049888
      call $_ZN4core9panicking5panic17hc60400b47c695700E
      unreachable
    end
    local.get $p0
    local.get $l4
    i32.store offset=4
    local.get $p0
    local.get $p1
    i32.store)
  (func $_ZN3std6thread6Thread6unpark17h94e6706e18930922E (type $t1) (param $p0 i32)
    (local $l1 i32) (local $l2 i32) (local $l3 i32)
    global.get $g0
    i32.const 16
    i32.sub
    local.tee $l1
    global.set $g0
    local.get $p0
    i32.load
    i32.const 24
    i32.add
    local.tee $l2
    i32.load
    local.set $l3
    local.get $l2
    i32.const 2
    i32.store
    block $B0
      block $B1
        block $B2
          block $B3
            block $B4
              local.get $l3
              i32.const 2
              i32.gt_u
              br_if $B4
              local.get $l3
              br_table $B2 $B3 $B2 $B2
            end
            i32.const 1050244
            i32.const 28
            i32.const 1050228
            call $_ZN3std9panicking11begin_panic17h4c37f88b45d6339dE
            unreachable
          end
          local.get $p0
          i32.load
          local.tee $p0
          i32.const 28
          i32.add
          local.tee $l2
          i32.load
          local.tee $l3
          i32.load8_u
          br_if $B1
          local.get $l3
          i32.const 1
          i32.store8
          i32.const 0
          local.set $l3
          block $B5
            block $B6
              i32.const 0
              i32.load offset=1060584
              i32.const 1
              i32.ne
              br_if $B6
              i32.const 0
              i32.load offset=1060588
              local.set $l3
              br $B5
            end
            i32.const 0
            i64.const 1
            i64.store offset=1060584
          end
          i32.const 0
          local.get $l3
          i32.store offset=1060588
          local.get $p0
          i32.const 32
          i32.add
          i32.load8_u
          br_if $B0
          local.get $l2
          i32.load
          i32.const 0
          i32.store8
        end
        local.get $l1
        i32.const 16
        i32.add
        global.set $g0
        return
      end
      i32.const 1052448
      i32.const 32
      i32.const 1052432
      call $_ZN3std9panicking11begin_panic17h4c37f88b45d6339dE
      unreachable
    end
    local.get $l1
    local.get $l2
    i32.store offset=8
    local.get $l1
    local.get $l3
    i32.const 0
    i32.ne
    i32.store8 offset=12
    i32.const 1049764
    i32.const 43
    local.get $l1
    i32.const 8
    i32.add
    i32.const 1049840
    call $_ZN4core6result13unwrap_failed17h89d8c4399f5be1adE
    unreachable)
  (func $_ZN3std3env7_var_os17h654abe0d5110b1baE (type $t6) (param $p0 i32) (param $p1 i32) (param $p2 i32)
    (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32) (local $l9 i64)
    global.get $g0
    i32.const 80
    i32.sub
    local.tee $l3
    global.set $g0
    local.get $l3
    local.get $p2
    i32.store offset=28
    local.get $l3
    local.get $p1
    i32.store offset=24
    block $B0
      block $B1
        block $B2
          local.get $p2
          i32.const 1
          i32.add
          local.tee $l4
          i32.const -1
          i32.le_s
          br_if $B2
          block $B3
            block $B4
              local.get $l4
              i32.eqz
              br_if $B4
              local.get $l4
              i32.const 1
              call $__rust_alloc
              local.tee $l5
              br_if $B3
              local.get $l4
              i32.const 1
              call $_ZN5alloc5alloc18handle_alloc_error17h372aacb639e2de27E
              unreachable
            end
            call $_ZN5alloc7raw_vec17capacity_overflow17h545b4b1a9ba97ff8E
            unreachable
          end
          i32.const 0
          local.set $l6
          local.get $l3
          i32.const 16
          i32.add
          i32.const 0
          local.get $l5
          local.get $p1
          local.get $p2
          call $memcpy
          local.tee $p1
          local.get $p2
          call $_ZN4core5slice6memchr6memchr17h244fba075962fc22E
          block $B5
            block $B6
              block $B7
                local.get $l3
                i32.load offset=16
                br_if $B7
                local.get $l3
                local.get $p2
                i32.store offset=48
                local.get $l3
                local.get $l4
                i32.store offset=44
                local.get $l3
                local.get $p1
                i32.store offset=40
                local.get $l3
                i32.const 8
                i32.add
                local.get $l3
                i32.const 40
                i32.add
                call $_ZN3std3ffi5c_str7CString18from_vec_unchecked17h5e469fd28170e461E
                local.get $l3
                i32.load offset=12
                local.set $l7
                local.get $l3
                i32.load offset=8
                local.tee $l8
                call $getenv
                local.tee $l5
                br_if $B6
                br $B5
              end
              local.get $l3
              i32.load offset=20
              local.set $l6
              local.get $l3
              i32.const 40
              i32.add
              i32.const 12
              i32.add
              local.get $p2
              i32.store
              local.get $l3
              i32.const 48
              i32.add
              local.get $l4
              i32.store
              local.get $l3
              local.get $p1
              i32.store offset=44
              local.get $l3
              local.get $l6
              i32.store offset=40
              local.get $l3
              i32.const 64
              i32.add
              local.get $l3
              i32.const 40
              i32.add
              call $_ZN3std3ffi5c_str104_$LT$impl$u20$core..convert..From$LT$std..ffi..c_str..NulError$GT$$u20$for$u20$std..io..error..Error$GT$4from17h68453f96202dc28eE
              local.get $l3
              local.get $l3
              i64.load offset=64
              i64.store offset=32
              local.get $l3
              i32.const 60
              i32.add
              i32.const 2
              i32.store
              local.get $l3
              i32.const 64
              i32.add
              i32.const 12
              i32.add
              i32.const 14
              i32.store
              local.get $l3
              i64.const 2
              i64.store offset=44 align=4
              local.get $l3
              i32.const 1050324
              i32.store offset=40
              local.get $l3
              i32.const 15
              i32.store offset=68
              local.get $l3
              local.get $l3
              i32.const 64
              i32.add
              i32.store offset=56
              local.get $l3
              local.get $l3
              i32.const 32
              i32.add
              i32.store offset=72
              local.get $l3
              local.get $l3
              i32.const 24
              i32.add
              i32.store offset=64
              local.get $l3
              i32.const 40
              i32.add
              i32.const 1050360
              call $_ZN3std9panicking15begin_panic_fmt17h6ebfed9e714cf511E
              unreachable
            end
            block $B8
              block $B9
                block $B10
                  local.get $l5
                  i32.load8_u
                  i32.eqz
                  br_if $B10
                  local.get $l5
                  i32.const 1
                  i32.add
                  local.set $l6
                  i32.const 0
                  local.set $p2
                  loop $L11
                    local.get $l6
                    local.get $p2
                    i32.add
                    local.set $l4
                    local.get $p2
                    i32.const 1
                    i32.add
                    local.tee $p1
                    local.set $p2
                    local.get $l4
                    i32.load8_u
                    br_if $L11
                  end
                  local.get $p1
                  i32.const -1
                  i32.eq
                  br_if $B1
                  local.get $p1
                  i32.const -1
                  i32.le_s
                  br_if $B2
                  local.get $p1
                  br_if $B9
                end
                i32.const 1
                local.set $l6
                i32.const 0
                local.set $p1
                br $B8
              end
              local.get $p1
              i32.const 1
              call $__rust_alloc
              local.tee $l6
              i32.eqz
              br_if $B0
            end
            local.get $l6
            local.get $l5
            local.get $p1
            call $memcpy
            drop
            local.get $p1
            i64.extend_i32_u
            local.tee $l9
            i64.const 32
            i64.shl
            local.get $l9
            i64.or
            local.set $l9
          end
          local.get $l8
          i32.const 0
          i32.store8
          local.get $l9
          i64.const 32
          i64.shr_u
          i32.wrap_i64
          local.set $p2
          local.get $l9
          i32.wrap_i64
          local.set $l4
          block $B12
            local.get $l7
            i32.eqz
            br_if $B12
            local.get $l8
            local.get $l7
            i32.const 1
            call $__rust_dealloc
          end
          local.get $p0
          local.get $l4
          i32.store offset=4
          local.get $p0
          local.get $l6
          i32.store
          local.get $p0
          i32.const 8
          i32.add
          local.get $p2
          i32.store
          local.get $l3
          i32.const 80
          i32.add
          global.set $g0
          return
        end
        call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$11allocate_in28_$u7b$$u7b$closure$u7d$$u7d$17h31c8dbb160d31216E
        unreachable
      end
      local.get $p1
      i32.const 0
      call $_ZN4core5slice20slice_index_len_fail17hfc4485e8c33f2d47E
      unreachable
    end
    local.get $p1
    i32.const 1
    call $_ZN5alloc5alloc18handle_alloc_error17h372aacb639e2de27E
    unreachable)
  (func $_ZN3std3sys4wasi11unsupported17h2c418a7ed20a0567E (type $t1) (param $p0 i32)
    (local $l1 i32) (local $l2 i32) (local $l3 i32)
    global.get $g0
    i32.const 16
    i32.sub
    local.tee $l1
    global.set $g0
    block $B0
      block $B1
        block $B2
          i32.const 35
          i32.const 1
          call $__rust_alloc
          local.tee $l2
          i32.eqz
          br_if $B2
          local.get $l2
          i32.const 31
          i32.add
          i32.const 0
          i32.load offset=1052607 align=1
          i32.store align=1
          local.get $l2
          i32.const 24
          i32.add
          i32.const 0
          i64.load offset=1052600 align=1
          i64.store align=1
          local.get $l2
          i32.const 16
          i32.add
          i32.const 0
          i64.load offset=1052592 align=1
          i64.store align=1
          local.get $l2
          i32.const 8
          i32.add
          i32.const 0
          i64.load offset=1052584 align=1
          i64.store align=1
          local.get $l2
          i32.const 0
          i64.load offset=1052576 align=1
          i64.store align=1
          i32.const 12
          i32.const 4
          call $__rust_alloc
          local.tee $l3
          i32.eqz
          br_if $B1
          local.get $l3
          i64.const 150323855395
          i64.store offset=4 align=4
          local.get $l3
          local.get $l2
          i32.store
          i32.const 12
          i32.const 4
          call $__rust_alloc
          local.tee $l2
          i32.eqz
          br_if $B0
          local.get $l2
          i32.const 16
          i32.store8 offset=8
          local.get $l2
          i32.const 1050376
          i32.store offset=4
          local.get $l2
          local.get $l3
          i32.store
          local.get $l2
          local.get $l1
          i32.load16_u offset=13 align=1
          i32.store16 offset=9 align=1
          local.get $l2
          i32.const 11
          i32.add
          local.get $l1
          i32.const 15
          i32.add
          i32.load8_u
          i32.store8
          local.get $p0
          i32.const 8
          i32.add
          local.get $l2
          i32.store
          local.get $p0
          i64.const 8589934593
          i64.store align=4
          local.get $l1
          i32.const 16
          i32.add
          global.set $g0
          return
        end
        i32.const 35
        i32.const 1
        call $_ZN5alloc5alloc18handle_alloc_error17h372aacb639e2de27E
        unreachable
      end
      i32.const 12
      i32.const 4
      call $_ZN5alloc5alloc18handle_alloc_error17h372aacb639e2de27E
      unreachable
    end
    i32.const 12
    i32.const 4
    call $_ZN5alloc5alloc18handle_alloc_error17h372aacb639e2de27E
    unreachable)
  (func $_ZN3std3ffi5c_str104_$LT$impl$u20$core..convert..From$LT$std..ffi..c_str..NulError$GT$$u20$for$u20$std..io..error..Error$GT$4from17h68453f96202dc28eE (type $t5) (param $p0 i32) (param $p1 i32)
    (local $l2 i32) (local $l3 i32) (local $l4 i32)
    global.get $g0
    i32.const 16
    i32.sub
    local.tee $l2
    global.set $g0
    block $B0
      block $B1
        block $B2
          i32.const 33
          i32.const 1
          call $__rust_alloc
          local.tee $l3
          i32.eqz
          br_if $B2
          local.get $l3
          i32.const 32
          i32.add
          i32.const 0
          i32.load8_u offset=1050449
          i32.store8
          local.get $l3
          i32.const 24
          i32.add
          i32.const 0
          i64.load offset=1050441 align=1
          i64.store align=1
          local.get $l3
          i32.const 16
          i32.add
          i32.const 0
          i64.load offset=1050433 align=1
          i64.store align=1
          local.get $l3
          i32.const 8
          i32.add
          i32.const 0
          i64.load offset=1050425 align=1
          i64.store align=1
          local.get $l3
          i32.const 0
          i64.load offset=1050417 align=1
          i64.store align=1
          i32.const 12
          i32.const 4
          call $__rust_alloc
          local.tee $l4
          i32.eqz
          br_if $B1
          local.get $l4
          i64.const 141733920801
          i64.store offset=4 align=4
          local.get $l4
          local.get $l3
          i32.store
          i32.const 12
          i32.const 4
          call $__rust_alloc
          local.tee $l3
          i32.eqz
          br_if $B0
          local.get $l3
          i32.const 11
          i32.store8 offset=8
          local.get $l3
          i32.const 1050376
          i32.store offset=4
          local.get $l3
          local.get $l4
          i32.store
          local.get $l3
          local.get $l2
          i32.load16_u offset=13 align=1
          i32.store16 offset=9 align=1
          local.get $l3
          i32.const 11
          i32.add
          local.get $l2
          i32.const 13
          i32.add
          i32.const 2
          i32.add
          i32.load8_u
          i32.store8
          local.get $p0
          i32.const 2
          i32.store8
          local.get $p0
          local.get $l2
          i32.load16_u offset=10 align=1
          i32.store16 offset=1 align=1
          local.get $p0
          i32.const 3
          i32.add
          local.get $l2
          i32.const 10
          i32.add
          i32.const 2
          i32.add
          i32.load8_u
          i32.store8
          local.get $p0
          i32.const 4
          i32.add
          local.get $l3
          i32.store
          block $B3
            local.get $p1
            i32.const 8
            i32.add
            i32.load
            local.tee $l3
            i32.eqz
            br_if $B3
            local.get $p1
            i32.load offset=4
            local.get $l3
            i32.const 1
            call $__rust_dealloc
          end
          local.get $l2
          i32.const 16
          i32.add
          global.set $g0
          return
        end
        i32.const 33
        i32.const 1
        call $_ZN5alloc5alloc18handle_alloc_error17h372aacb639e2de27E
        unreachable
      end
      i32.const 12
      i32.const 4
      call $_ZN5alloc5alloc18handle_alloc_error17h372aacb639e2de27E
      unreachable
    end
    i32.const 12
    i32.const 4
    call $_ZN5alloc5alloc18handle_alloc_error17h372aacb639e2de27E
    unreachable)
  (func $_ZN60_$LT$std..io..error..Error$u20$as$u20$core..fmt..Display$GT$3fmt17hab33489ae32428e1E (type $t3) (param $p0 i32) (param $p1 i32) (result i32)
    (local $l2 i32) (local $l3 i32) (local $l4 i32)
    global.get $g0
    i32.const 64
    i32.sub
    local.tee $l2
    global.set $g0
    block $B0
      block $B1
        block $B2
          block $B3
            local.get $p0
            i32.load8_u
            br_table $B3 $B1 $B2 $B3
          end
          local.get $l2
          local.get $p0
          i32.const 4
          i32.add
          i32.load
          local.tee $p0
          i32.store offset=4
          local.get $l2
          i32.const 8
          i32.add
          local.get $p0
          call $_ZN3std3sys4wasi2os12error_string17h4a5d1b4d37616116E
          local.get $l2
          i32.const 60
          i32.add
          i32.const 2
          i32.store
          local.get $l2
          i32.const 36
          i32.add
          i32.const 16
          i32.store
          local.get $l2
          i64.const 3
          i64.store offset=44 align=4
          local.get $l2
          i32.const 1050800
          i32.store offset=40
          local.get $l2
          i32.const 17
          i32.store offset=28
          local.get $l2
          local.get $l2
          i32.const 24
          i32.add
          i32.store offset=56
          local.get $l2
          local.get $l2
          i32.const 4
          i32.add
          i32.store offset=32
          local.get $l2
          local.get $l2
          i32.const 8
          i32.add
          i32.store offset=24
          local.get $p1
          local.get $l2
          i32.const 40
          i32.add
          call $_ZN4core3fmt9Formatter9write_fmt17h703d37c837f1e686E
          local.set $p0
          local.get $l2
          i32.load offset=12
          local.tee $p1
          i32.eqz
          br_if $B0
          local.get $l2
          i32.load offset=8
          local.get $p1
          i32.const 1
          call $__rust_dealloc
          br $B0
        end
        local.get $p0
        i32.const 4
        i32.add
        i32.load
        local.tee $p0
        i32.load
        local.get $p1
        local.get $p0
        i32.load offset=4
        i32.load offset=32
        call_indirect (type $t3) $T0
        local.set $p0
        br $B0
      end
      i32.const 1050483
      local.set $l3
      i32.const 22
      local.set $l4
      block $B4
        block $B5
          block $B6
            block $B7
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
                                  block $B18
                                    block $B19
                                      block $B20
                                        block $B21
                                          block $B22
                                            local.get $p0
                                            i32.load8_u offset=1
                                            br_table $B22 $B21 $B20 $B19 $B18 $B17 $B16 $B15 $B14 $B13 $B12 $B11 $B10 $B9 $B8 $B7 $B6 $B4 $B22
                                          end
                                          i32.const 1050764
                                          local.set $l3
                                          i32.const 16
                                          local.set $l4
                                          br $B4
                                        end
                                        i32.const 1050747
                                        local.set $l3
                                        i32.const 17
                                        local.set $l4
                                        br $B4
                                      end
                                      i32.const 1050729
                                      local.set $l3
                                      i32.const 18
                                      local.set $l4
                                      br $B4
                                    end
                                    i32.const 1050713
                                    local.set $l3
                                    i32.const 16
                                    local.set $l4
                                    br $B4
                                  end
                                  i32.const 1050695
                                  local.set $l3
                                  i32.const 18
                                  local.set $l4
                                  br $B4
                                end
                                i32.const 1050682
                                local.set $l3
                                i32.const 13
                                local.set $l4
                                br $B4
                              end
                              i32.const 1050668
                              local.set $l3
                              br $B5
                            end
                            i32.const 1050647
                            local.set $l3
                            i32.const 21
                            local.set $l4
                            br $B4
                          end
                          i32.const 1050636
                          local.set $l3
                          i32.const 11
                          local.set $l4
                          br $B4
                        end
                        i32.const 1050615
                        local.set $l3
                        i32.const 21
                        local.set $l4
                        br $B4
                      end
                      i32.const 1050594
                      local.set $l3
                      i32.const 21
                      local.set $l4
                      br $B4
                    end
                    i32.const 1050571
                    local.set $l3
                    i32.const 23
                    local.set $l4
                    br $B4
                  end
                  i32.const 1050559
                  local.set $l3
                  i32.const 12
                  local.set $l4
                  br $B4
                end
                i32.const 1050550
                local.set $l3
                i32.const 9
                local.set $l4
                br $B4
              end
              i32.const 1050540
              local.set $l3
              i32.const 10
              local.set $l4
              br $B4
            end
            i32.const 1050519
            local.set $l3
            i32.const 21
            local.set $l4
            br $B4
          end
          i32.const 1050505
          local.set $l3
        end
        i32.const 14
        local.set $l4
      end
      local.get $l2
      i32.const 60
      i32.add
      i32.const 1
      i32.store
      local.get $l2
      local.get $l4
      i32.store offset=28
      local.get $l2
      local.get $l3
      i32.store offset=24
      local.get $l2
      i32.const 18
      i32.store offset=12
      local.get $l2
      i64.const 1
      i64.store offset=44 align=4
      local.get $l2
      i32.const 1050780
      i32.store offset=40
      local.get $l2
      local.get $l2
      i32.const 24
      i32.add
      i32.store offset=8
      local.get $l2
      local.get $l2
      i32.const 8
      i32.add
      i32.store offset=56
      local.get $p1
      local.get $l2
      i32.const 40
      i32.add
      call $_ZN4core3fmt9Formatter9write_fmt17h703d37c837f1e686E
      local.set $p0
    end
    local.get $l2
    i32.const 64
    i32.add
    global.set $g0
    local.get $p0)
  (func $_ZN55_$LT$std..path..Display$u20$as$u20$core..fmt..Debug$GT$3fmt17h0986e0b7a0364423E (type $t3) (param $p0 i32) (param $p1 i32) (result i32)
    local.get $p0
    i32.load
    local.get $p0
    i32.load offset=4
    local.get $p1
    call $_ZN73_$LT$std..sys_common..os_str_bytes..Slice$u20$as$u20$core..fmt..Debug$GT$3fmt17h4065989a45dde40cE)
  (func $_ZN3std3env4args17h5d6872dcdc60322aE (type $t1) (param $p0 i32)
    local.get $p0
    call $_ZN3std3env7args_os17hd970d5551c7eb2e0E)
  (func $_ZN3std3env7args_os17hd970d5551c7eb2e0E (type $t1) (param $p0 i32)
    (local $l1 i32) (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32) (local $l9 i64) (local $l10 i32) (local $l11 i32) (local $l12 i32) (local $l13 i32) (local $l14 i32) (local $l15 i32) (local $l16 i32)
    global.get $g0
    i32.const 16
    i32.sub
    local.tee $l1
    global.set $g0
    local.get $l1
    call $_ZN4wasi13lib_generated14args_sizes_get17h5f7f470ade5347b9E
    block $B0
      block $B1
        block $B2
          local.get $l1
          i32.load16_u
          i32.const 1
          i32.eq
          br_if $B2
          block $B3
            block $B4
              block $B5
                block $B6
                  block $B7
                    block $B8
                      block $B9
                        block $B10
                          block $B11
                            block $B12
                              local.get $l1
                              i32.load offset=4
                              local.tee $l2
                              i32.const 1073741823
                              i32.and
                              local.get $l2
                              i32.ne
                              br_if $B12
                              local.get $l2
                              i32.const 2
                              i32.shl
                              local.tee $l3
                              i32.const -1
                              i32.le_s
                              br_if $B12
                              local.get $l1
                              i32.const 8
                              i32.add
                              i32.load
                              local.set $l4
                              block $B13
                                block $B14
                                  local.get $l3
                                  br_if $B14
                                  i32.const 4
                                  local.set $l5
                                  br $B13
                                end
                                local.get $l3
                                i32.const 4
                                call $__rust_alloc
                                local.tee $l5
                                i32.eqz
                                br_if $B11
                              end
                              local.get $l4
                              i32.const -1
                              i32.le_s
                              br_if $B12
                              block $B15
                                block $B16
                                  local.get $l4
                                  br_if $B16
                                  i32.const 1
                                  local.set $l6
                                  br $B15
                                end
                                local.get $l4
                                i32.const 1
                                call $__rust_alloc
                                local.tee $l6
                                i32.eqz
                                br_if $B10
                              end
                              block $B17
                                local.get $l5
                                local.get $l6
                                call $_ZN4wasi13lib_generated8args_get17ha2cc1da03f4386e9E
                                i32.const 65535
                                i32.and
                                i32.eqz
                                br_if $B17
                                block $B18
                                  local.get $l4
                                  i32.eqz
                                  br_if $B18
                                  local.get $l6
                                  local.get $l4
                                  i32.const 1
                                  call $__rust_dealloc
                                end
                                i32.const 0
                                local.set $l7
                                block $B19
                                  local.get $l2
                                  br_if $B19
                                  i32.const 4
                                  local.set $l8
                                  br $B1
                                end
                                i32.const 4
                                local.set $l8
                                local.get $l5
                                local.get $l2
                                i32.const 2
                                i32.shl
                                i32.const 4
                                call $__rust_dealloc
                                br $B1
                              end
                              local.get $l2
                              i64.extend_i32_u
                              i64.const 12
                              i64.mul
                              local.tee $l9
                              i64.const 32
                              i64.shr_u
                              i32.wrap_i64
                              br_if $B12
                              local.get $l9
                              i32.wrap_i64
                              local.tee $l3
                              i32.const -1
                              i32.le_s
                              br_if $B12
                              block $B20
                                block $B21
                                  local.get $l3
                                  br_if $B21
                                  i32.const 4
                                  local.set $l8
                                  br $B20
                                end
                                local.get $l3
                                i32.const 4
                                call $__rust_alloc
                                local.tee $l8
                                i32.eqz
                                br_if $B9
                              end
                              block $B22
                                local.get $l2
                                br_if $B22
                                i32.const 0
                                local.set $l3
                                i32.const 0
                                local.set $l7
                                br $B3
                              end
                              local.get $l5
                              local.get $l2
                              i32.const 2
                              i32.shl
                              i32.add
                              local.set $l10
                              local.get $l5
                              local.set $l11
                              i32.const 0
                              local.set $l12
                              local.get $l2
                              local.set $l7
                              loop $L23
                                block $B24
                                  block $B25
                                    block $B26
                                      local.get $l11
                                      i32.load
                                      local.tee $l13
                                      i32.load8_u
                                      i32.eqz
                                      br_if $B26
                                      local.get $l13
                                      i32.const 1
                                      i32.add
                                      local.set $l14
                                      i32.const 0
                                      local.set $l3
                                      loop $L27
                                        local.get $l14
                                        local.get $l3
                                        i32.add
                                        local.set $l15
                                        local.get $l3
                                        i32.const 1
                                        i32.add
                                        local.tee $l16
                                        local.set $l3
                                        local.get $l15
                                        i32.load8_u
                                        br_if $L27
                                      end
                                      local.get $l16
                                      i32.const -1
                                      i32.eq
                                      br_if $B8
                                      local.get $l16
                                      i32.const -1
                                      i32.le_s
                                      br_if $B12
                                      local.get $l16
                                      br_if $B25
                                    end
                                    i32.const 1
                                    local.set $l3
                                    i32.const 0
                                    local.set $l16
                                    br $B24
                                  end
                                  local.get $l16
                                  i32.const 1
                                  call $__rust_alloc
                                  local.tee $l3
                                  i32.eqz
                                  br_if $B7
                                end
                                local.get $l3
                                local.get $l13
                                local.get $l16
                                call $memcpy
                                local.set $l14
                                local.get $l12
                                i32.const 1
                                i32.add
                                local.set $l3
                                block $B28
                                  local.get $l12
                                  local.get $l7
                                  i32.ne
                                  br_if $B28
                                  local.get $l12
                                  i32.const 1
                                  i32.shl
                                  local.tee $l15
                                  local.get $l3
                                  local.get $l15
                                  local.get $l3
                                  i32.gt_u
                                  select
                                  local.tee $l7
                                  i64.extend_i32_u
                                  i64.const 12
                                  i64.mul
                                  local.tee $l9
                                  i64.const 32
                                  i64.shr_u
                                  i32.wrap_i64
                                  local.tee $l15
                                  br_if $B5
                                  local.get $l9
                                  i32.wrap_i64
                                  local.tee $l13
                                  i32.const 0
                                  i32.lt_s
                                  br_if $B5
                                  local.get $l15
                                  i32.eqz
                                  i32.const 2
                                  i32.shl
                                  local.set $l15
                                  block $B29
                                    block $B30
                                      local.get $l12
                                      br_if $B30
                                      local.get $l13
                                      local.get $l15
                                      call $__rust_alloc
                                      local.set $l8
                                      br $B29
                                    end
                                    local.get $l8
                                    local.get $l12
                                    i32.const 12
                                    i32.mul
                                    i32.const 4
                                    local.get $l13
                                    call $__rust_realloc
                                    local.set $l8
                                  end
                                  local.get $l8
                                  i32.eqz
                                  br_if $B6
                                end
                                local.get $l8
                                local.get $l12
                                i32.const 12
                                i32.mul
                                i32.add
                                local.tee $l15
                                local.get $l16
                                i32.store offset=8
                                local.get $l15
                                local.get $l16
                                i32.store offset=4
                                local.get $l15
                                local.get $l14
                                i32.store
                                local.get $l3
                                local.set $l12
                                local.get $l11
                                i32.const 4
                                i32.add
                                local.tee $l11
                                local.get $l10
                                i32.eq
                                br_if $B4
                                br $L23
                              end
                            end
                            call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$11allocate_in28_$u7b$$u7b$closure$u7d$$u7d$17h31c8dbb160d31216E
                            unreachable
                          end
                          local.get $l3
                          i32.const 4
                          call $_ZN5alloc5alloc18handle_alloc_error17h372aacb639e2de27E
                          unreachable
                        end
                        local.get $l4
                        i32.const 1
                        call $_ZN5alloc5alloc18handle_alloc_error17h372aacb639e2de27E
                        unreachable
                      end
                      local.get $l3
                      i32.const 4
                      call $_ZN5alloc5alloc18handle_alloc_error17h372aacb639e2de27E
                      unreachable
                    end
                    local.get $l16
                    i32.const 0
                    call $_ZN4core5slice20slice_index_len_fail17hfc4485e8c33f2d47E
                    unreachable
                  end
                  local.get $l16
                  i32.const 1
                  call $_ZN5alloc5alloc18handle_alloc_error17h372aacb639e2de27E
                  unreachable
                end
                local.get $l13
                local.get $l15
                call $_ZN5alloc5alloc18handle_alloc_error17h372aacb639e2de27E
                unreachable
              end
              call $_ZN5alloc7raw_vec17capacity_overflow17h545b4b1a9ba97ff8E
              unreachable
            end
            local.get $l5
            local.get $l2
            i32.const 2
            i32.shl
            i32.const 4
            call $__rust_dealloc
          end
          block $B31
            local.get $l4
            i32.eqz
            br_if $B31
            local.get $l6
            local.get $l4
            i32.const 1
            call $__rust_dealloc
          end
          local.get $l8
          br_if $B0
        end
        i32.const 4
        local.set $l8
        i32.const 0
        local.set $l7
      end
      i32.const 0
      local.set $l3
    end
    local.get $p0
    local.get $l8
    i32.store offset=8
    local.get $p0
    local.get $l7
    i32.store offset=4
    local.get $p0
    local.get $l8
    i32.store
    local.get $p0
    local.get $l8
    local.get $l3
    i32.const 12
    i32.mul
    i32.add
    i32.store offset=12
    local.get $l1
    i32.const 16
    i32.add
    global.set $g0)
  (func $_ZN73_$LT$std..env..Args$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h130ad00728ed1b35E (type $t5) (param $p0 i32) (param $p1 i32)
    (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i64)
    global.get $g0
    i32.const 48
    i32.sub
    local.tee $l2
    global.set $g0
    block $B0
      block $B1
        block $B2
          local.get $p1
          i32.load offset=8
          local.tee $l3
          local.get $p1
          i32.load offset=12
          i32.eq
          br_if $B2
          local.get $p1
          local.get $l3
          i32.const 12
          i32.add
          i32.store offset=8
          local.get $l3
          i32.load
          local.tee $p1
          i32.eqz
          br_if $B2
          local.get $l3
          i32.load offset=4
          local.set $l4
          local.get $l2
          i32.const 24
          i32.add
          local.get $p1
          local.get $l3
          i32.load offset=8
          local.tee $l3
          call $_ZN4core3str9from_utf817hc9d846e05f440661E
          local.get $l2
          i32.load offset=24
          i32.const 1
          i32.eq
          br_if $B0
          local.get $p0
          local.get $l4
          i32.store offset=4
          local.get $p0
          local.get $p1
          i32.store
          local.get $p0
          i32.const 8
          i32.add
          local.get $l3
          i32.store
          br $B1
        end
        local.get $p0
        i32.const 0
        i32.store
      end
      local.get $l2
      i32.const 48
      i32.add
      global.set $g0
      return
    end
    local.get $l2
    local.get $l2
    i64.load offset=28 align=4
    i64.store offset=36 align=4
    local.get $l2
    local.get $l3
    i32.store offset=32
    local.get $l2
    local.get $l4
    i32.store offset=28
    local.get $l2
    local.get $p1
    i32.store offset=24
    local.get $l2
    i32.const 8
    i32.add
    local.get $l2
    i32.const 24
    i32.add
    call $_ZN5alloc6string13FromUtf8Error10into_bytes17h03cb5aea6ff20b89E
    local.get $l2
    i64.load offset=8
    local.set $l5
    local.get $l2
    local.get $l2
    i32.load offset=16
    i32.store offset=32
    local.get $l2
    local.get $l5
    i64.store offset=24
    i32.const 1049764
    i32.const 43
    local.get $l2
    i32.const 24
    i32.add
    i32.const 1049808
    call $_ZN4core6result13unwrap_failed17h89d8c4399f5be1adE
    unreachable)
  (func $_ZN3std5error5Error5cause17h208489695af0fdeeE (type $t5) (param $p0 i32) (param $p1 i32)
    local.get $p0
    i32.const 0
    i32.store)
  (func $_ZN3std5error5Error7type_id17he93b19cfb2e8e2acE (type $t2) (param $p0 i32) (result i64)
    i64.const 3625601793630346445)
  (func $_ZN3std5error5Error9backtrace17h1368d825fc8df78cE (type $t7) (param $p0 i32) (result i32)
    i32.const 0)
  (func $_ZN243_$LT$std..error..$LT$impl$u20$core..convert..From$LT$alloc..string..String$GT$$u20$for$u20$alloc..boxed..Box$LT$dyn$u20$std..error..Error$u2b$core..marker..Send$u2b$core..marker..Sync$GT$$GT$..from..StringError$u20$as$u20$std..error..Error$GT$11description17h0caa1b2504394f01E (type $t5) (param $p0 i32) (param $p1 i32)
    local.get $p0
    local.get $p1
    i32.load offset=8
    i32.store offset=4
    local.get $p0
    local.get $p1
    i32.load
    i32.store)
  (func $_ZN244_$LT$std..error..$LT$impl$u20$core..convert..From$LT$alloc..string..String$GT$$u20$for$u20$alloc..boxed..Box$LT$dyn$u20$std..error..Error$u2b$core..marker..Send$u2b$core..marker..Sync$GT$$GT$..from..StringError$u20$as$u20$core..fmt..Display$GT$3fmt17h4896a95c62927851E (type $t3) (param $p0 i32) (param $p1 i32) (result i32)
    local.get $p0
    i32.load
    local.get $p0
    i32.load offset=8
    local.get $p1
    call $_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17h1f0b63dac53d0aecE)
  (func $_ZN242_$LT$std..error..$LT$impl$u20$core..convert..From$LT$alloc..string..String$GT$$u20$for$u20$alloc..boxed..Box$LT$dyn$u20$std..error..Error$u2b$core..marker..Send$u2b$core..marker..Sync$GT$$GT$..from..StringError$u20$as$u20$core..fmt..Debug$GT$3fmt17hf375d57eb464f65fE (type $t3) (param $p0 i32) (param $p1 i32) (result i32)
    local.get $p0
    i32.load
    local.get $p0
    i32.load offset=8
    local.get $p1
    call $_ZN40_$LT$str$u20$as$u20$core..fmt..Debug$GT$3fmt17h00c99ec58e8a423cE)
  (func $_ZN3std3sys4wasi17decode_error_kind17haa3a99fbe8bf835fE (type $t7) (param $p0 i32) (result i32)
    (local $l1 i32)
    i32.const 16
    local.set $l1
    block $B0
      local.get $p0
      i32.const 65535
      i32.gt_u
      br_if $B0
      local.get $p0
      i32.const 65535
      i32.and
      i32.const -2
      i32.add
      local.tee $p0
      i32.const 71
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
                          block $B11
                            block $B12
                              block $B13
                                block $B14
                                  local.get $p0
                                  br_table $B12 $B7 $B8 $B0 $B1 $B0 $B0 $B0 $B0 $B0 $B0 $B9 $B14 $B13 $B0 $B0 $B0 $B0 $B2 $B0 $B0 $B0 $B0 $B0 $B0 $B5 $B4 $B0 $B0 $B0 $B0 $B0 $B0 $B0 $B0 $B0 $B0 $B0 $B0 $B0 $B0 $B0 $B6 $B0 $B0 $B0 $B0 $B0 $B0 $B0 $B0 $B10 $B0 $B0 $B0 $B0 $B0 $B0 $B0 $B0 $B0 $B12 $B11 $B0 $B0 $B0 $B0 $B0 $B0 $B0 $B0 $B3 $B12
                                end
                                i32.const 2
                                return
                              end
                              i32.const 3
                              return
                            end
                            i32.const 1
                            return
                          end
                          i32.const 8
                          return
                        end
                        i32.const 5
                        return
                      end
                      i32.const 4
                      return
                    end
                    i32.const 7
                    return
                  end
                  i32.const 6
                  return
                end
                i32.const 0
                return
              end
              i32.const 15
              return
            end
            i32.const 11
            return
          end
          i32.const 13
          return
        end
        i32.const 9
        return
      end
      i32.const 10
      local.set $l1
    end
    local.get $l1)
  (func $_ZN72_$LT$std..io..buffered..BufWriter$LT$W$GT$$u20$as$u20$std..io..Write$GT$5write17h1cf6435e8f0d6314E (type $t4) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32)
    (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i64)
    global.get $g0
    i32.const 32
    i32.sub
    local.tee $l4
    global.set $g0
    block $B0
      block $B1
        local.get $p1
        i32.load offset=8
        local.get $p3
        i32.add
        local.get $p1
        i32.load offset=4
        i32.le_u
        br_if $B1
        local.get $l4
        i32.const 16
        i32.add
        local.get $p1
        call $_ZN3std2io8buffered18BufWriter$LT$W$GT$9flush_buf17h1e803465f6444bc3E
        local.get $l4
        i32.load offset=20
        local.set $l5
        block $B2
          local.get $l4
          i32.load offset=16
          local.tee $l6
          i32.const 255
          i32.and
          i32.const 3
          i32.eq
          br_if $B2
          local.get $p0
          i32.const 1
          i32.store
          local.get $p0
          local.get $l5
          i64.extend_i32_u
          i64.const 32
          i64.shl
          local.get $l6
          i64.extend_i32_u
          i64.or
          i64.store offset=4 align=4
          br $B0
        end
        block $B3
          i32.const 0
          br_if $B3
          local.get $l6
          i32.const 3
          i32.and
          i32.const 2
          i32.ne
          br_if $B1
        end
        local.get $l5
        i32.load
        local.get $l5
        i32.load offset=4
        i32.load
        call_indirect (type $t1) $T0
        block $B4
          local.get $l5
          i32.load offset=4
          local.tee $l6
          i32.load offset=4
          local.tee $l7
          i32.eqz
          br_if $B4
          local.get $l5
          i32.load
          local.get $l7
          local.get $l6
          i32.load offset=8
          call $__rust_dealloc
        end
        local.get $l5
        i32.const 12
        i32.const 4
        call $__rust_dealloc
      end
      block $B5
        local.get $p1
        i32.load offset=4
        local.get $p3
        i32.le_u
        br_if $B5
        local.get $p1
        local.get $p3
        call $_ZN5alloc3vec12Vec$LT$T$GT$7reserve17hb25b281955882348E
        local.get $p1
        local.get $p1
        i32.load offset=8
        local.tee $l5
        local.get $p3
        i32.add
        i32.store offset=8
        local.get $l5
        local.get $p1
        i32.load
        i32.add
        local.get $p2
        local.get $p3
        call $memcpy
        drop
        local.get $p0
        i32.const 0
        i32.store
        local.get $p0
        local.get $p3
        i32.store offset=4
        br $B0
      end
      local.get $p1
      i32.const 1
      i32.store8 offset=13
      block $B6
        block $B7
          local.get $p1
          i32.load8_u offset=12
          i32.const -1
          i32.add
          local.tee $l5
          i32.const 1
          i32.gt_u
          br_if $B7
          block $B8
            block $B9
              local.get $l5
              br_table $B8 $B9 $B8
            end
            i32.const 1049672
            i32.const 43
            i32.const 1049612
            call $_ZN4core9panicking5panic17hc60400b47c695700E
            unreachable
          end
          local.get $p3
          i64.extend_i32_u
          local.set $l8
          i32.const 0
          local.set $p3
          br $B6
        end
        local.get $l4
        local.get $p3
        i32.store offset=12
        local.get $l4
        local.get $p2
        i32.store offset=8
        local.get $l4
        i32.const 16
        i32.add
        i32.const 1
        local.get $l4
        i32.const 8
        i32.add
        i32.const 1
        call $_ZN4wasi13lib_generated8fd_write17hcbb26a9193d90ff3E
        block $B10
          local.get $l4
          i32.load16_u offset=16
          i32.const 1
          i32.eq
          br_if $B10
          local.get $l4
          i64.load32_u offset=20
          local.set $l8
          i32.const 0
          local.set $p3
          br $B6
        end
        local.get $l4
        local.get $l4
        i32.load16_u offset=18
        i32.store16 offset=30
        local.get $p3
        i64.extend_i32_u
        local.get $l4
        i32.const 30
        i32.add
        call $_ZN4wasi5error5Error9raw_error17ha81beb7b4fa33a3dE
        local.tee $p3
        i64.extend_i32_u
        i64.const 65535
        i64.and
        i64.const 32
        i64.shl
        local.get $p3
        i32.const 65535
        i32.and
        local.tee $p3
        i32.const 8
        i32.eq
        select
        local.set $l8
        local.get $p3
        i32.const 8
        i32.ne
        local.set $p3
      end
      local.get $p0
      local.get $l8
      i64.store offset=4 align=4
      local.get $p0
      local.get $p3
      i32.store
      local.get $p1
      i32.const 0
      i32.store8 offset=13
    end
    local.get $l4
    i32.const 32
    i32.add
    global.set $g0)
  (func $_ZN73_$LT$std..io..buffered..LineWriter$LT$W$GT$$u20$as$u20$std..io..Write$GT$5write17h88167627bef1f5b5E (type $t4) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32)
    (local $l4 i32) (local $l5 i64) (local $l6 i32) (local $l7 i32) (local $l8 i32) (local $l9 i32) (local $l10 i32) (local $l11 i32)
    global.get $g0
    i32.const 32
    i32.sub
    local.tee $l4
    global.set $g0
    block $B0
      block $B1
        local.get $p1
        i32.load8_u offset=16
        i32.eqz
        br_if $B1
        local.get $l4
        i32.const 16
        i32.add
        local.get $p1
        call $_ZN3std2io8buffered18BufWriter$LT$W$GT$9flush_buf17h1e803465f6444bc3E
        block $B2
          block $B3
            block $B4
              local.get $l4
              i32.load8_u offset=16
              i32.const 3
              i32.ne
              br_if $B4
              local.get $p1
              i32.load8_u offset=12
              i32.const 2
              i32.ne
              br_if $B3
              i32.const 1049672
              i32.const 43
              i32.const 1049612
              call $_ZN4core9panicking5panic17hc60400b47c695700E
              unreachable
            end
            local.get $l4
            i64.load offset=16
            local.tee $l5
            i64.const 255
            i64.and
            i64.const 3
            i64.ne
            br_if $B2
          end
          local.get $p1
          i32.const 0
          i32.store8 offset=16
          br $B1
        end
        block $B5
          local.get $l5
          i32.wrap_i64
          local.tee $l6
          i32.const 255
          i32.and
          i32.const 3
          i32.eq
          br_if $B5
          local.get $p0
          i32.const 1
          i32.store
          local.get $p0
          local.get $l5
          i64.store offset=4 align=4
          br $B0
        end
        block $B6
          i32.const 0
          br_if $B6
          local.get $l6
          i32.const 3
          i32.and
          i32.const 2
          i32.ne
          br_if $B1
        end
        local.get $l5
        i64.const 32
        i64.shr_u
        i32.wrap_i64
        local.tee $l6
        i32.load
        local.get $l6
        i32.load offset=4
        i32.load
        call_indirect (type $t1) $T0
        block $B7
          local.get $l6
          i32.load offset=4
          local.tee $l7
          i32.load offset=4
          local.tee $l8
          i32.eqz
          br_if $B7
          local.get $l6
          i32.load
          local.get $l8
          local.get $l7
          i32.load offset=8
          call $__rust_dealloc
        end
        local.get $l6
        i32.const 12
        i32.const 4
        call $__rust_dealloc
      end
      local.get $l4
      i32.const 8
      i32.add
      i32.const 10
      local.get $p2
      local.get $p3
      call $_ZN4core5slice6memchr7memrchr17h0b3ee6c1c240e3c2E
      block $B8
        local.get $l4
        i32.load offset=8
        br_if $B8
        local.get $p0
        local.get $p1
        local.get $p2
        local.get $p3
        call $_ZN72_$LT$std..io..buffered..BufWriter$LT$W$GT$$u20$as$u20$std..io..Write$GT$5write17h1cf6435e8f0d6314E
        br $B0
      end
      block $B9
        block $B10
          local.get $l4
          i32.load offset=12
          local.tee $l7
          i32.const -1
          i32.eq
          br_if $B10
          local.get $l7
          i32.const 1
          i32.add
          local.set $l6
          local.get $l7
          local.get $p3
          i32.lt_u
          br_if $B9
          local.get $l6
          local.get $p3
          call $_ZN4core5slice20slice_index_len_fail17hfc4485e8c33f2d47E
          unreachable
        end
        call $_ZN4core5slice25slice_index_overflow_fail17h8a1eef5e63367db8E
        unreachable
      end
      local.get $l4
      i32.const 16
      i32.add
      local.get $p1
      local.get $p2
      local.get $l6
      call $_ZN72_$LT$std..io..buffered..BufWriter$LT$W$GT$$u20$as$u20$std..io..Write$GT$5write17h1cf6435e8f0d6314E
      local.get $l4
      i32.const 24
      i32.add
      i32.load
      local.set $l8
      local.get $l4
      i32.load offset=20
      local.set $l7
      block $B11
        block $B12
          local.get $l4
          i32.load offset=16
          local.tee $l9
          i32.const 1
          i32.gt_u
          br_if $B12
          block $B13
            local.get $l9
            br_table $B11 $B13 $B11
          end
          local.get $p0
          i32.const 1
          i32.store
          local.get $p0
          local.get $l8
          i64.extend_i32_u
          i64.const 32
          i64.shl
          local.get $l7
          i64.extend_i32_u
          i64.or
          i64.store offset=4 align=4
          br $B0
        end
        local.get $l7
        i32.const 255
        i32.and
        i32.const 2
        i32.lt_u
        br_if $B11
        local.get $l8
        i32.load
        local.get $l8
        i32.load offset=4
        i32.load
        call_indirect (type $t1) $T0
        block $B14
          local.get $l8
          i32.load offset=4
          local.tee $l9
          i32.load offset=4
          local.tee $l10
          i32.eqz
          br_if $B14
          local.get $l8
          i32.load
          local.get $l10
          local.get $l9
          i32.load offset=8
          call $__rust_dealloc
        end
        local.get $l8
        i32.const 12
        i32.const 4
        call $__rust_dealloc
      end
      local.get $p1
      i32.const 1
      i32.store8 offset=16
      local.get $l4
      i32.const 16
      i32.add
      local.get $p1
      call $_ZN3std2io8buffered18BufWriter$LT$W$GT$9flush_buf17h1e803465f6444bc3E
      block $B15
        block $B16
          block $B17
            block $B18
              block $B19
                local.get $l4
                i32.load8_u offset=16
                i32.const 3
                i32.ne
                br_if $B19
                local.get $p1
                i32.load8_u offset=12
                i32.const 2
                i32.ne
                br_if $B18
                i32.const 1049672
                i32.const 43
                i32.const 1049612
                call $_ZN4core9panicking5panic17hc60400b47c695700E
                unreachable
              end
              local.get $l4
              i64.load8_u offset=16
              i64.const 3
              i64.ne
              br_if $B17
            end
            local.get $p1
            i32.const 0
            i32.store8 offset=16
            local.get $l7
            local.get $l6
            i32.eq
            br_if $B16
            br $B15
          end
          local.get $l4
          i32.load offset=20
          local.set $l8
          local.get $l7
          local.get $l6
          i32.ne
          local.get $l4
          i32.load offset=16
          local.tee $l10
          i32.const 255
          i32.and
          i32.const 3
          i32.ne
          i32.or
          local.set $l9
          block $B20
            block $B21
              i32.const 0
              br_if $B21
              local.get $l10
              i32.const 3
              i32.and
              i32.const 2
              i32.ne
              br_if $B20
            end
            local.get $l8
            i32.load
            local.get $l8
            i32.load offset=4
            i32.load
            call_indirect (type $t1) $T0
            block $B22
              local.get $l8
              i32.load offset=4
              local.tee $l10
              i32.load offset=4
              local.tee $l11
              i32.eqz
              br_if $B22
              local.get $l8
              i32.load
              local.get $l11
              local.get $l10
              i32.load offset=8
              call $__rust_dealloc
            end
            local.get $l8
            i32.const 12
            i32.const 4
            call $__rust_dealloc
          end
          local.get $l9
          br_if $B15
        end
        local.get $l4
        i32.const 16
        i32.add
        local.get $p1
        local.get $p2
        local.get $l6
        i32.add
        local.get $p3
        local.get $l6
        i32.sub
        call $_ZN72_$LT$std..io..buffered..BufWriter$LT$W$GT$$u20$as$u20$std..io..Write$GT$5write17h1cf6435e8f0d6314E
        block $B23
          local.get $l4
          i32.load offset=16
          i32.const 1
          i32.eq
          br_if $B23
          local.get $p0
          i32.const 0
          i32.store
          local.get $p0
          local.get $l4
          i32.load offset=20
          local.get $l7
          i32.add
          i32.store offset=4
          br $B0
        end
        local.get $p0
        i32.const 0
        i32.store
        local.get $p0
        local.get $l7
        i32.store offset=4
        local.get $l4
        i32.load8_u offset=20
        i32.const 2
        i32.lt_u
        br_if $B0
        local.get $l4
        i32.const 24
        i32.add
        i32.load
        local.tee $p1
        i32.load
        local.get $p1
        i32.load offset=4
        i32.load
        call_indirect (type $t1) $T0
        block $B24
          local.get $p1
          i32.load offset=4
          local.tee $p2
          i32.load offset=4
          local.tee $p3
          i32.eqz
          br_if $B24
          local.get $p1
          i32.load
          local.get $p3
          local.get $p2
          i32.load offset=8
          call $__rust_dealloc
        end
        local.get $p1
        i32.const 12
        i32.const 4
        call $__rust_dealloc
        br $B0
      end
      local.get $p0
      i32.const 0
      i32.store
      local.get $p0
      local.get $l7
      i32.store offset=4
    end
    local.get $l4
    i32.const 32
    i32.add
    global.set $g0)
  (func $_ZN3std3sys4wasi2os12error_string17h4a5d1b4d37616116E (type $t5) (param $p0 i32) (param $p1 i32)
    (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32)
    global.get $g0
    i32.const 1056
    i32.sub
    local.tee $l2
    global.set $g0
    i32.const 0
    local.set $l3
    local.get $l2
    i32.const 8
    i32.add
    i32.const 0
    i32.const 1024
    call $memset
    drop
    block $B0
      block $B1
        block $B2
          block $B3
            block $B4
              local.get $p1
              local.get $l2
              i32.const 8
              i32.add
              i32.const 1024
              call $strerror_r
              i32.const 0
              i32.lt_s
              br_if $B4
              block $B5
                local.get $l2
                i32.load8_u offset=8
                i32.eqz
                br_if $B5
                local.get $l2
                i32.const 8
                i32.add
                i32.const 1
                i32.add
                local.set $l4
                i32.const 0
                local.set $p1
                loop $L6
                  local.get $l4
                  local.get $p1
                  i32.add
                  local.set $l5
                  local.get $p1
                  i32.const 1
                  i32.add
                  local.tee $l3
                  local.set $p1
                  local.get $l5
                  i32.load8_u
                  br_if $L6
                end
                local.get $l3
                i32.const -1
                i32.eq
                br_if $B3
              end
              local.get $l2
              i32.const 1032
              i32.add
              local.get $l2
              i32.const 8
              i32.add
              local.get $l3
              call $_ZN4core3str9from_utf817hc9d846e05f440661E
              local.get $l2
              i32.load offset=1032
              i32.const 1
              i32.eq
              br_if $B2
              local.get $l2
              i32.const 1040
              i32.add
              i32.load
              local.tee $p1
              i32.const -1
              i32.le_s
              br_if $B1
              local.get $l2
              i32.load offset=1036
              local.set $l5
              block $B7
                block $B8
                  local.get $p1
                  br_if $B8
                  i32.const 1
                  local.set $l3
                  br $B7
                end
                local.get $p1
                i32.const 1
                call $__rust_alloc
                local.tee $l3
                i32.eqz
                br_if $B0
              end
              local.get $l3
              local.get $l5
              local.get $p1
              call $memcpy
              local.set $l5
              local.get $p0
              local.get $p1
              i32.store offset=8
              local.get $p0
              local.get $p1
              i32.store offset=4
              local.get $p0
              local.get $l5
              i32.store
              local.get $l2
              i32.const 1056
              i32.add
              global.set $g0
              return
            end
            i32.const 1052524
            i32.const 18
            i32.const 1052508
            call $_ZN3std9panicking11begin_panic17h4c37f88b45d6339dE
            unreachable
          end
          local.get $l3
          i32.const 0
          call $_ZN4core5slice20slice_index_len_fail17hfc4485e8c33f2d47E
          unreachable
        end
        local.get $l2
        local.get $l2
        i64.load offset=1036 align=4
        i64.store offset=1048
        i32.const 1049764
        i32.const 43
        local.get $l2
        i32.const 1048
        i32.add
        i32.const 1049824
        call $_ZN4core6result13unwrap_failed17h89d8c4399f5be1adE
        unreachable
      end
      call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$11allocate_in28_$u7b$$u7b$closure$u7d$$u7d$17h31c8dbb160d31216E
      unreachable
    end
    local.get $p1
    i32.const 1
    call $_ZN5alloc5alloc18handle_alloc_error17h372aacb639e2de27E
    unreachable)
  (func $_ZN3std2io5impls71_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..boxed..Box$LT$W$GT$$GT$5write17h1c9ea699209651c9E (type $t4) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32)
    local.get $p0
    local.get $p1
    i32.load
    local.get $p2
    local.get $p3
    local.get $p1
    i32.load offset=4
    i32.load offset=12
    call_indirect (type $t4) $T0)
  (func $_ZN3std2io5impls71_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..boxed..Box$LT$W$GT$$GT$14write_vectored17h1600ea5da08cdc03E (type $t4) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32)
    local.get $p0
    local.get $p1
    i32.load
    local.get $p2
    local.get $p3
    local.get $p1
    i32.load offset=4
    i32.load offset=16
    call_indirect (type $t4) $T0)
  (func $_ZN3std2io5impls71_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..boxed..Box$LT$W$GT$$GT$5flush17hee9bf9fcdcb912feE (type $t5) (param $p0 i32) (param $p1 i32)
    local.get $p0
    local.get $p1
    i32.load
    local.get $p1
    i32.load offset=4
    i32.load offset=20
    call_indirect (type $t5) $T0)
  (func $_ZN3std2io5impls71_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..boxed..Box$LT$W$GT$$GT$9write_all17h90beacfdfa1f3b4dE (type $t4) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32)
    local.get $p0
    local.get $p1
    i32.load
    local.get $p2
    local.get $p3
    local.get $p1
    i32.load offset=4
    i32.load offset=24
    call_indirect (type $t4) $T0)
  (func $_ZN3std2io5impls71_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..boxed..Box$LT$W$GT$$GT$9write_fmt17h0f033bf5e9e3c25bE (type $t6) (param $p0 i32) (param $p1 i32) (param $p2 i32)
    (local $l3 i32) (local $l4 i32)
    global.get $g0
    i32.const 32
    i32.sub
    local.tee $l3
    global.set $g0
    local.get $p1
    i32.load
    local.set $l4
    local.get $p1
    i32.load offset=4
    local.set $p1
    local.get $l3
    i32.const 8
    i32.add
    i32.const 16
    i32.add
    local.get $p2
    i32.const 16
    i32.add
    i64.load align=4
    i64.store
    local.get $l3
    i32.const 8
    i32.add
    i32.const 8
    i32.add
    local.get $p2
    i32.const 8
    i32.add
    i64.load align=4
    i64.store
    local.get $l3
    local.get $p2
    i64.load align=4
    i64.store offset=8
    local.get $p0
    local.get $l4
    local.get $l3
    i32.const 8
    i32.add
    local.get $p1
    i32.load offset=28
    call_indirect (type $t6) $T0
    local.get $l3
    i32.const 32
    i32.add
    global.set $g0)
  (func $_ZN60_$LT$std..io..stdio..StderrRaw$u20$as$u20$std..io..Write$GT$5write17h4e43e82542fc3b2fE (type $t4) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32)
    (local $l4 i32)
    global.get $g0
    i32.const 32
    i32.sub
    local.tee $l4
    global.set $g0
    local.get $l4
    local.get $p3
    i32.store offset=12
    local.get $l4
    local.get $p2
    i32.store offset=8
    i32.const 1
    local.set $p2
    local.get $l4
    i32.const 16
    i32.add
    i32.const 2
    local.get $l4
    i32.const 8
    i32.add
    i32.const 1
    call $_ZN4wasi13lib_generated8fd_write17hcbb26a9193d90ff3E
    block $B0
      block $B1
        local.get $l4
        i32.load16_u offset=16
        i32.const 1
        i32.eq
        br_if $B1
        local.get $p0
        local.get $l4
        i32.load offset=20
        i32.store offset=4
        i32.const 0
        local.set $p2
        br $B0
      end
      local.get $l4
      local.get $l4
      i32.load16_u offset=18
      i32.store16 offset=30
      local.get $p0
      local.get $l4
      i32.const 30
      i32.add
      call $_ZN4wasi5error5Error9raw_error17ha81beb7b4fa33a3dE
      i64.extend_i32_u
      i64.const 65535
      i64.and
      i64.const 32
      i64.shl
      i64.store offset=4 align=4
    end
    local.get $p0
    local.get $p2
    i32.store
    local.get $l4
    i32.const 32
    i32.add
    global.set $g0)
  (func $_ZN3std10sys_common11at_exit_imp4push17h19d98699c9c6e025E (type $t3) (param $p0 i32) (param $p1 i32) (result i32)
    (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32)
    block $B0
      block $B1
        block $B2
          block $B3
            block $B4
              i32.const 0
              i32.load8_u offset=1060593
              br_if $B4
              i32.const 0
              i32.const 1
              i32.store8 offset=1060593
              block $B5
                block $B6
                  i32.const 0
                  i32.load offset=1060512
                  local.tee $l2
                  i32.const 1
                  i32.gt_u
                  br_if $B6
                  block $B7
                    local.get $l2
                    br_table $B7 $B5 $B7
                  end
                  i32.const 12
                  i32.const 4
                  call $__rust_alloc
                  local.tee $l2
                  i32.eqz
                  br_if $B3
                  local.get $l2
                  i32.const 0
                  i32.store offset=8
                  local.get $l2
                  i64.const 4
                  i64.store align=4
                  i32.const 0
                  local.get $l2
                  i32.store offset=1060512
                end
                block $B8
                  block $B9
                    local.get $l2
                    i32.load offset=8
                    local.tee $l3
                    local.get $l2
                    i32.load offset=4
                    i32.eq
                    br_if $B9
                    local.get $l2
                    i32.load
                    local.set $l4
                    br $B8
                  end
                  local.get $l3
                  i32.const 1
                  i32.add
                  local.tee $l4
                  local.get $l3
                  i32.lt_u
                  br_if $B1
                  local.get $l3
                  i32.const 1
                  i32.shl
                  local.tee $l5
                  local.get $l4
                  local.get $l5
                  local.get $l4
                  i32.gt_u
                  select
                  local.tee $l5
                  i32.const 536870911
                  i32.and
                  local.tee $l4
                  local.get $l5
                  i32.ne
                  br_if $B1
                  local.get $l5
                  i32.const 3
                  i32.shl
                  local.tee $l6
                  i32.const 0
                  i32.lt_s
                  br_if $B1
                  local.get $l4
                  local.get $l5
                  i32.eq
                  i32.const 2
                  i32.shl
                  local.set $l7
                  block $B10
                    block $B11
                      local.get $l3
                      br_if $B11
                      local.get $l6
                      local.get $l7
                      call $__rust_alloc
                      local.set $l4
                      br $B10
                    end
                    local.get $l2
                    i32.load
                    local.get $l3
                    i32.const 3
                    i32.shl
                    i32.const 4
                    local.get $l6
                    call $__rust_realloc
                    local.set $l4
                  end
                  local.get $l4
                  i32.eqz
                  br_if $B2
                  local.get $l2
                  local.get $l5
                  i32.store offset=4
                  local.get $l2
                  local.get $l4
                  i32.store
                  local.get $l2
                  i32.load offset=8
                  local.set $l3
                end
                local.get $l4
                local.get $l3
                i32.const 3
                i32.shl
                i32.add
                local.tee $l3
                local.get $p1
                i32.store offset=4
                local.get $l3
                local.get $p0
                i32.store
                i32.const 1
                local.set $l3
                local.get $l2
                local.get $l2
                i32.load offset=8
                i32.const 1
                i32.add
                i32.store offset=8
                i32.const 0
                i32.const 0
                i32.store8 offset=1060593
                br $B0
              end
              i32.const 0
              local.set $l3
              i32.const 0
              i32.const 0
              i32.store8 offset=1060593
              local.get $p0
              local.get $p1
              i32.load
              call_indirect (type $t1) $T0
              local.get $p1
              i32.load offset=4
              local.tee $l2
              i32.eqz
              br_if $B0
              local.get $p0
              local.get $l2
              local.get $p1
              i32.load offset=8
              call $__rust_dealloc
              i32.const 0
              return
            end
            i32.const 1052448
            i32.const 32
            i32.const 1052432
            call $_ZN3std9panicking11begin_panic17h4c37f88b45d6339dE
            unreachable
          end
          i32.const 12
          i32.const 4
          call $_ZN5alloc5alloc18handle_alloc_error17h372aacb639e2de27E
          unreachable
        end
        local.get $l6
        local.get $l7
        call $_ZN5alloc5alloc18handle_alloc_error17h372aacb639e2de27E
        unreachable
      end
      call $_ZN5alloc7raw_vec17capacity_overflow17h545b4b1a9ba97ff8E
      unreachable
    end
    local.get $l3)
  (func $_ZN3std2io5stdio6stdout17h80e5048511b22f87E (type $t11) (result i32)
    (local $l0 i32) (local $l1 i32) (local $l2 i32) (local $l3 i32) (local $l4 i32)
    global.get $g0
    i32.const 16
    i32.sub
    local.tee $l0
    global.set $g0
    block $B0
      block $B1
        block $B2
          block $B3
            block $B4
              block $B5
                i32.const 0
                i32.load8_u offset=1060508
                br_if $B5
                i32.const 0
                i32.const 1
                i32.store8 offset=1060508
                block $B6
                  block $B7
                    i32.const 0
                    i32.load offset=1060504
                    local.tee $l1
                    i32.const 1
                    i32.gt_u
                    br_if $B7
                    block $B8
                      block $B9
                        local.get $l1
                        br_table $B8 $B9 $B8
                      end
                      i32.const 0
                      i32.const 0
                      i32.store8 offset=1060508
                      i32.const 1050824
                      i32.const 36
                      call $_ZN4core6option13expect_failed17h48822fc6fce9003fE
                      unreachable
                    end
                    i32.const 4
                    i32.const 4
                    call $__rust_alloc
                    local.tee $l1
                    i32.eqz
                    br_if $B4
                    local.get $l1
                    i32.const 1060504
                    i32.store
                    local.get $l1
                    i32.const 1051752
                    call $_ZN3std10sys_common11at_exit_imp4push17h19d98699c9c6e025E
                    local.set $l2
                    i32.const 1024
                    i32.const 1
                    call $__rust_alloc
                    local.tee $l3
                    i32.eqz
                    br_if $B3
                    local.get $l0
                    i32.const 10
                    i32.add
                    i32.const 2
                    i32.add
                    local.tee $l4
                    local.get $l0
                    i32.const 13
                    i32.add
                    i32.const 2
                    i32.add
                    i32.load8_u
                    i32.store8
                    local.get $l0
                    local.get $l0
                    i32.load16_u offset=13 align=1
                    i32.store16 offset=10
                    i32.const 40
                    i32.const 4
                    call $__rust_alloc
                    local.tee $l1
                    i32.eqz
                    br_if $B2
                    local.get $l1
                    i32.const 0
                    i32.store8 offset=32
                    local.get $l1
                    i32.const 0
                    i32.store16 offset=28
                    local.get $l1
                    i64.const 1024
                    i64.store offset=20 align=4
                    local.get $l1
                    local.get $l3
                    i32.store offset=16
                    local.get $l1
                    i64.const 1
                    i64.store offset=8 align=4
                    local.get $l1
                    i64.const 4294967297
                    i64.store align=4
                    local.get $l1
                    local.get $l0
                    i32.load16_u offset=10
                    i32.store16 offset=33 align=1
                    local.get $l1
                    i32.const 0
                    i32.store8 offset=36
                    local.get $l1
                    local.get $l0
                    i32.load16_u offset=7 align=1
                    i32.store16 offset=37 align=1
                    local.get $l1
                    i32.const 35
                    i32.add
                    local.get $l4
                    i32.load8_u
                    i32.store8
                    local.get $l1
                    i32.const 39
                    i32.add
                    local.get $l0
                    i32.const 7
                    i32.add
                    i32.const 2
                    i32.add
                    i32.load8_u
                    i32.store8
                    local.get $l2
                    i32.eqz
                    br_if $B6
                    local.get $l1
                    local.get $l1
                    i32.load
                    local.tee $l2
                    i32.const 1
                    i32.add
                    i32.store
                    local.get $l2
                    i32.const -1
                    i32.le_s
                    br_if $B1
                    i32.const 4
                    i32.const 4
                    call $__rust_alloc
                    local.tee $l2
                    i32.eqz
                    br_if $B0
                    i32.const 0
                    local.get $l2
                    i32.store offset=1060504
                    local.get $l2
                    local.get $l1
                    i32.store
                    br $B6
                  end
                  local.get $l1
                  i32.load
                  local.tee $l1
                  local.get $l1
                  i32.load
                  local.tee $l2
                  i32.const 1
                  i32.add
                  i32.store
                  local.get $l2
                  i32.const -1
                  i32.le_s
                  br_if $B1
                end
                i32.const 0
                i32.const 0
                i32.store8 offset=1060508
                local.get $l0
                i32.const 16
                i32.add
                global.set $g0
                local.get $l1
                return
              end
              i32.const 1052448
              i32.const 32
              i32.const 1052432
              call $_ZN3std9panicking11begin_panic17h4c37f88b45d6339dE
              unreachable
            end
            i32.const 4
            i32.const 4
            call $_ZN5alloc5alloc18handle_alloc_error17h372aacb639e2de27E
            unreachable
          end
          i32.const 1024
          i32.const 1
          call $_ZN5alloc5alloc18handle_alloc_error17h372aacb639e2de27E
          unreachable
        end
        i32.const 40
        i32.const 4
        call $_ZN5alloc5alloc18handle_alloc_error17h372aacb639e2de27E
        unreachable
      end
      unreachable
      unreachable
    end
    i32.const 4
    i32.const 4
    call $_ZN5alloc5alloc18handle_alloc_error17h372aacb639e2de27E
    unreachable)
  (func $_ZN57_$LT$std..io..stdio..Stdout$u20$as$u20$std..io..Write$GT$9write_fmt17h77bee4200809680fE (type $t6) (param $p0 i32) (param $p1 i32) (param $p2 i32)
    (local $l3 i32) (local $l4 i32)
    global.get $g0
    i32.const 48
    i32.sub
    local.tee $l3
    global.set $g0
    i32.const 0
    local.set $l4
    local.get $p1
    i32.load
    local.set $p1
    block $B0
      block $B1
        i32.const 0
        i32.load offset=1060584
        i32.const 1
        i32.ne
        br_if $B1
        i32.const 0
        i32.load offset=1060588
        local.set $l4
        br $B0
      end
      i32.const 0
      i64.const 1
      i64.store offset=1060584
    end
    i32.const 0
    local.get $l4
    i32.store offset=1060588
    local.get $l3
    local.get $l4
    i32.const 0
    i32.ne
    i32.store8 offset=4
    local.get $l3
    local.get $p1
    i32.const 8
    i32.add
    i32.store
    local.get $l3
    i32.const 3
    i32.store8 offset=12
    local.get $l3
    local.get $l3
    i32.store offset=8
    local.get $l3
    i32.const 24
    i32.add
    i32.const 16
    i32.add
    local.get $p2
    i32.const 16
    i32.add
    i64.load align=4
    i64.store
    local.get $l3
    i32.const 24
    i32.add
    i32.const 8
    i32.add
    local.get $p2
    i32.const 8
    i32.add
    i64.load align=4
    i64.store
    local.get $l3
    local.get $p2
    i64.load align=4
    i64.store offset=24
    block $B2
      block $B3
        block $B4
          block $B5
            block $B6
              local.get $l3
              i32.const 8
              i32.add
              i32.const 1050976
              local.get $l3
              i32.const 24
              i32.add
              call $_ZN4core3fmt5write17h8876819fabc0b258E
              i32.eqz
              br_if $B6
              block $B7
                local.get $l3
                i32.load8_u offset=12
                i32.const 3
                i32.ne
                br_if $B7
                i32.const 15
                i32.const 1
                call $__rust_alloc
                local.tee $p2
                i32.eqz
                br_if $B4
                local.get $p2
                i32.const 7
                i32.add
                i32.const 0
                i64.load offset=1051007 align=1
                i64.store align=1
                local.get $p2
                i32.const 0
                i64.load offset=1051000 align=1
                i64.store align=1
                i32.const 12
                i32.const 4
                call $__rust_alloc
                local.tee $l4
                i32.eqz
                br_if $B3
                local.get $l4
                i64.const 64424509455
                i64.store offset=4 align=4
                local.get $l4
                local.get $p2
                i32.store
                i32.const 12
                i32.const 4
                call $__rust_alloc
                local.tee $p2
                i32.eqz
                br_if $B2
                local.get $p2
                i32.const 16
                i32.store8 offset=8
                local.get $p2
                i32.const 1050376
                i32.store offset=4
                local.get $p2
                local.get $l4
                i32.store
                local.get $p2
                local.get $l3
                i32.load16_u offset=24 align=1
                i32.store16 offset=9 align=1
                local.get $p2
                i32.const 11
                i32.add
                local.get $l3
                i32.const 24
                i32.add
                i32.const 2
                i32.add
                i32.load8_u
                i32.store8
                local.get $p0
                i32.const 4
                i32.add
                local.get $p2
                i32.store
                local.get $p0
                i32.const 2
                i32.store
                br $B5
              end
              local.get $p0
              local.get $l3
              i64.load offset=12 align=4
              i64.store align=4
              br $B5
            end
            local.get $p0
            i32.const 3
            i32.store8
            block $B8
              i32.const 0
              br_if $B8
              local.get $l3
              i32.load8_u offset=12
              i32.const 2
              i32.ne
              br_if $B5
            end
            local.get $l3
            i32.const 16
            i32.add
            i32.load
            local.tee $p2
            i32.load
            local.get $p2
            i32.load offset=4
            i32.load
            call_indirect (type $t1) $T0
            block $B9
              local.get $p2
              i32.load offset=4
              local.tee $l4
              i32.load offset=4
              local.tee $p0
              i32.eqz
              br_if $B9
              local.get $p2
              i32.load
              local.get $p0
              local.get $l4
              i32.load offset=8
              call $__rust_dealloc
            end
            local.get $l3
            i32.load offset=16
            i32.const 12
            i32.const 4
            call $__rust_dealloc
          end
          block $B10
            local.get $l3
            i32.load8_u offset=4
            br_if $B10
            block $B11
              i32.const 0
              i32.load offset=1060584
              i32.const 1
              i32.eq
              br_if $B11
              i32.const 0
              i64.const 1
              i64.store offset=1060584
              br $B10
            end
            i32.const 0
            i32.load offset=1060588
            i32.eqz
            br_if $B10
            local.get $l3
            i32.load
            i32.const 1
            i32.store8 offset=28
          end
          local.get $l3
          i32.const 48
          i32.add
          global.set $g0
          return
        end
        i32.const 15
        i32.const 1
        call $_ZN5alloc5alloc18handle_alloc_error17h372aacb639e2de27E
        unreachable
      end
      i32.const 12
      i32.const 4
      call $_ZN5alloc5alloc18handle_alloc_error17h372aacb639e2de27E
      unreachable
    end
    i32.const 12
    i32.const 4
    call $_ZN5alloc5alloc18handle_alloc_error17h372aacb639e2de27E
    unreachable)
  (func $_ZN3std2io5stdio9set_panic17h667ab54a2f5594a1E (type $t6) (param $p0 i32) (param $p1 i32) (param $p2 i32)
    (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32)
    global.get $g0
    i32.const 16
    i32.sub
    local.tee $l3
    global.set $g0
    i32.const 0
    local.set $l4
    block $B0
      block $B1
        block $B2
          i32.const 0
          i32.load offset=1060556
          i32.const 1
          i32.eq
          br_if $B2
          i32.const 0
          i64.const 1
          i64.store offset=1060556 align=4
          i32.const 0
          i32.const 0
          i32.store offset=1060564
          br $B1
        end
        i32.const 0
        i32.load offset=1060560
        br_if $B0
        i32.const 0
        i32.load offset=1060564
        local.set $l4
      end
      i32.const 0
      local.get $p1
      i32.store offset=1060564
      i32.const 0
      i32.load offset=1060568
      local.set $p1
      i32.const 0
      local.get $p2
      i32.store offset=1060568
      i32.const 0
      i32.const 0
      i32.store offset=1060560
      block $B3
        local.get $l4
        i32.eqz
        br_if $B3
        local.get $l3
        local.get $l4
        local.get $p1
        i32.load offset=20
        call_indirect (type $t5) $T0
        block $B4
          i32.const 0
          br_if $B4
          local.get $l3
          i32.load8_u
          i32.const 2
          i32.ne
          br_if $B3
        end
        local.get $l3
        i32.load offset=4
        local.tee $p2
        i32.load
        local.get $p2
        i32.load offset=4
        i32.load
        call_indirect (type $t1) $T0
        block $B5
          local.get $p2
          i32.load offset=4
          local.tee $l5
          i32.load offset=4
          local.tee $l6
          i32.eqz
          br_if $B5
          local.get $p2
          i32.load
          local.get $l6
          local.get $l5
          i32.load offset=8
          call $__rust_dealloc
        end
        local.get $p2
        i32.const 12
        i32.const 4
        call $__rust_dealloc
      end
      local.get $p0
      local.get $l4
      i32.store
      local.get $p0
      local.get $p1
      i32.store offset=4
      local.get $l3
      i32.const 16
      i32.add
      global.set $g0
      return
    end
    i32.const 1049416
    i32.const 16
    local.get $l3
    i32.const 8
    i32.add
    i32.const 1049716
    call $_ZN4core6result13unwrap_failed17h89d8c4399f5be1adE
    unreachable)
  (func $_ZN3std2io5stdio6_print17hd34db9e38b7e5054E (type $t1) (param $p0 i32)
    (local $l1 i32) (local $l2 i32) (local $l3 i32)
    global.get $g0
    i32.const 96
    i32.sub
    local.tee $l1
    global.set $g0
    local.get $l1
    i32.const 8
    i32.add
    i32.const 16
    i32.add
    local.get $p0
    i32.const 16
    i32.add
    i64.load align=4
    i64.store
    local.get $l1
    i32.const 8
    i32.add
    i32.const 8
    i32.add
    local.get $p0
    i32.const 8
    i32.add
    i64.load align=4
    i64.store
    local.get $l1
    local.get $p0
    i64.load align=4
    i64.store offset=8
    local.get $l1
    i32.const 6
    i32.store offset=36
    local.get $l1
    i32.const 1050940
    i32.store offset=32
    block $B0
      block $B1
        block $B2
          block $B3
            i32.const 0
            i32.load offset=1060540
            i32.const 1
            i32.eq
            br_if $B3
            i32.const 0
            i64.const -4294967295
            i64.store offset=1060540 align=4
            i32.const 0
            i32.const 0
            i32.store offset=1060548
            local.get $l1
            i32.const 56
            i32.add
            local.set $l2
            br $B2
          end
          local.get $l1
          i32.const 56
          i32.add
          local.set $l2
          i32.const 0
          i32.load offset=1060544
          br_if $B1
          i32.const 0
          i32.const -1
          i32.store offset=1060544
          local.get $l1
          i32.const 56
          i32.add
          local.set $l2
          i32.const 0
          i32.load offset=1060548
          local.tee $p0
          i32.eqz
          br_if $B2
          i32.const 0
          i32.load offset=1060552
          local.set $l3
          local.get $l1
          i32.const 72
          i32.add
          i32.const 16
          i32.add
          local.get $l1
          i32.const 8
          i32.add
          i32.const 16
          i32.add
          i64.load
          i64.store
          local.get $l1
          i32.const 72
          i32.add
          i32.const 8
          i32.add
          local.get $l1
          i32.const 8
          i32.add
          i32.const 8
          i32.add
          i64.load
          i64.store
          local.get $l1
          local.get $l1
          i64.load offset=8
          i64.store offset=72
          local.get $l1
          i32.const 56
          i32.add
          local.get $p0
          local.get $l1
          i32.const 72
          i32.add
          local.get $l3
          i32.load offset=28
          call_indirect (type $t6) $T0
          i32.const 0
          i32.const 0
          i32.load offset=1060544
          i32.const 1
          i32.add
          i32.store offset=1060544
          br $B0
        end
        i32.const 0
        i32.const 0
        i32.store offset=1060544
      end
      local.get $l1
      call $_ZN3std2io5stdio6stdout17h80e5048511b22f87E
      local.tee $p0
      i32.store offset=48
      local.get $l1
      i32.const 72
      i32.add
      i32.const 16
      i32.add
      local.get $l1
      i32.const 8
      i32.add
      i32.const 16
      i32.add
      i64.load
      i64.store
      local.get $l1
      i32.const 72
      i32.add
      i32.const 8
      i32.add
      local.get $l1
      i32.const 8
      i32.add
      i32.const 8
      i32.add
      i64.load
      i64.store
      local.get $l1
      local.get $l1
      i64.load offset=8
      i64.store offset=72
      local.get $l2
      local.get $l1
      i32.const 48
      i32.add
      local.get $l1
      i32.const 72
      i32.add
      call $_ZN57_$LT$std..io..stdio..Stdout$u20$as$u20$std..io..Write$GT$9write_fmt17h77bee4200809680fE
      local.get $p0
      local.get $p0
      i32.load
      local.tee $l2
      i32.const -1
      i32.add
      i32.store
      block $B4
        local.get $l2
        i32.const 1
        i32.ne
        br_if $B4
        local.get $l1
        i32.const 48
        i32.add
        call $_ZN5alloc4sync12Arc$LT$T$GT$9drop_slow17h75d572a3085302edE
      end
      local.get $l1
      i32.const 56
      i32.add
      local.set $l2
    end
    block $B5
      block $B6
        local.get $l1
        i32.load offset=56
        local.tee $p0
        i32.const 255
        i32.and
        i32.const 4
        i32.eq
        br_if $B6
        local.get $l1
        local.get $l2
        i32.load offset=4
        i32.store offset=44
        local.get $l1
        local.get $p0
        i32.store offset=40
        br $B5
      end
      local.get $l1
      call $_ZN3std2io5stdio6stdout17h80e5048511b22f87E
      local.tee $p0
      i32.store offset=56
      local.get $l1
      i32.const 72
      i32.add
      i32.const 16
      i32.add
      local.get $l1
      i32.const 8
      i32.add
      i32.const 16
      i32.add
      i64.load
      i64.store
      local.get $l1
      i32.const 72
      i32.add
      i32.const 8
      i32.add
      local.get $l1
      i32.const 8
      i32.add
      i32.const 8
      i32.add
      i64.load
      i64.store
      local.get $l1
      local.get $l1
      i64.load offset=8
      i64.store offset=72
      local.get $l1
      i32.const 40
      i32.add
      local.get $l1
      i32.const 56
      i32.add
      local.get $l1
      i32.const 72
      i32.add
      call $_ZN57_$LT$std..io..stdio..Stdout$u20$as$u20$std..io..Write$GT$9write_fmt17h77bee4200809680fE
      local.get $p0
      local.get $p0
      i32.load
      local.tee $l2
      i32.const -1
      i32.add
      i32.store
      block $B7
        local.get $l2
        i32.const 1
        i32.ne
        br_if $B7
        local.get $l1
        i32.const 56
        i32.add
        call $_ZN5alloc4sync12Arc$LT$T$GT$9drop_slow17h75d572a3085302edE
      end
      local.get $l1
      i32.load8_u offset=40
      local.set $p0
    end
    block $B8
      local.get $p0
      i32.const 255
      i32.and
      i32.const 3
      i32.ne
      br_if $B8
      block $B9
        block $B10
          i32.const 0
          br_if $B10
          local.get $p0
          i32.const 3
          i32.and
          i32.const 2
          i32.ne
          br_if $B9
        end
        local.get $l1
        i32.load offset=44
        local.tee $p0
        i32.load
        local.get $p0
        i32.load offset=4
        i32.load
        call_indirect (type $t1) $T0
        block $B11
          local.get $p0
          i32.load offset=4
          local.tee $l2
          i32.load offset=4
          local.tee $l3
          i32.eqz
          br_if $B11
          local.get $p0
          i32.load
          local.get $l3
          local.get $l2
          i32.load offset=8
          call $__rust_dealloc
        end
        local.get $p0
        i32.const 12
        i32.const 4
        call $__rust_dealloc
      end
      local.get $l1
      i32.const 96
      i32.add
      global.set $g0
      return
    end
    local.get $l1
    local.get $l1
    i64.load offset=40
    i64.store offset=48
    local.get $l1
    i32.const 92
    i32.add
    i32.const 2
    i32.store
    local.get $l1
    i32.const 68
    i32.add
    i32.const 14
    i32.store
    local.get $l1
    i64.const 2
    i64.store offset=76 align=4
    local.get $l1
    i32.const 1050884
    i32.store offset=72
    local.get $l1
    i32.const 18
    i32.store offset=60
    local.get $l1
    local.get $l1
    i32.const 56
    i32.add
    i32.store offset=88
    local.get $l1
    local.get $l1
    i32.const 48
    i32.add
    i32.store offset=64
    local.get $l1
    local.get $l1
    i32.const 32
    i32.add
    i32.store offset=56
    local.get $l1
    i32.const 72
    i32.add
    i32.const 1050924
    call $_ZN3std9panicking15begin_panic_fmt17h6ebfed9e714cf511E
    unreachable)
  (func $_ZN3std2io5Write14write_vectored17h353d72a3a24ef542E (type $t4) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32)
    (local $l4 i32) (local $l5 i32) (local $l6 i32)
    global.get $g0
    i32.const 32
    i32.sub
    local.tee $l4
    global.set $g0
    local.get $p3
    i32.const 3
    i32.shl
    local.set $p3
    local.get $p2
    i32.const -8
    i32.add
    local.set $l5
    block $B0
      loop $L1
        block $B2
          local.get $p3
          br_if $B2
          i32.const 0
          local.set $l6
          i32.const 1
          local.set $p2
          br $B0
        end
        local.get $p3
        i32.const -8
        i32.add
        local.set $p3
        local.get $l5
        i32.const 8
        i32.add
        local.set $l5
        local.get $p2
        i32.load offset=4
        local.set $l6
        local.get $p2
        i32.const 8
        i32.add
        local.set $p2
        local.get $l6
        i32.eqz
        br_if $L1
      end
      local.get $l5
      i32.load
      local.set $p2
    end
    local.get $l4
    local.get $l6
    i32.store offset=12
    local.get $l4
    local.get $p2
    i32.store offset=8
    local.get $l4
    i32.const 16
    i32.add
    i32.const 2
    local.get $l4
    i32.const 8
    i32.add
    i32.const 1
    call $_ZN4wasi13lib_generated8fd_write17hcbb26a9193d90ff3E
    block $B3
      block $B4
        local.get $l4
        i32.load16_u offset=16
        i32.const 1
        i32.eq
        br_if $B4
        local.get $p0
        local.get $l4
        i32.load offset=20
        i32.store offset=4
        i32.const 0
        local.set $p2
        br $B3
      end
      local.get $l4
      local.get $l4
      i32.load16_u offset=18
      i32.store16 offset=30
      local.get $p0
      local.get $l4
      i32.const 30
      i32.add
      call $_ZN4wasi5error5Error9raw_error17ha81beb7b4fa33a3dE
      i64.extend_i32_u
      i64.const 65535
      i64.and
      i64.const 32
      i64.shl
      i64.store offset=4 align=4
      i32.const 1
      local.set $p2
    end
    local.get $p0
    local.get $p2
    i32.store
    local.get $l4
    i32.const 32
    i32.add
    global.set $g0)
  (func $_ZN3std2io5Write9write_fmt17he4f9e0467028fa4dE (type $t6) (param $p0 i32) (param $p1 i32) (param $p2 i32)
    (local $l3 i32)
    global.get $g0
    i32.const 48
    i32.sub
    local.tee $l3
    global.set $g0
    local.get $l3
    i32.const 3
    i32.store8 offset=12
    local.get $l3
    local.get $p1
    i32.store offset=8
    local.get $l3
    i32.const 24
    i32.add
    i32.const 16
    i32.add
    local.get $p2
    i32.const 16
    i32.add
    i64.load align=4
    i64.store
    local.get $l3
    i32.const 24
    i32.add
    i32.const 8
    i32.add
    local.get $p2
    i32.const 8
    i32.add
    i64.load align=4
    i64.store
    local.get $l3
    local.get $p2
    i64.load align=4
    i64.store offset=24
    block $B0
      block $B1
        block $B2
          block $B3
            block $B4
              local.get $l3
              i32.const 8
              i32.add
              i32.const 1051016
              local.get $l3
              i32.const 24
              i32.add
              call $_ZN4core3fmt5write17h8876819fabc0b258E
              i32.eqz
              br_if $B4
              block $B5
                local.get $l3
                i32.load8_u offset=12
                i32.const 3
                i32.ne
                br_if $B5
                i32.const 15
                i32.const 1
                call $__rust_alloc
                local.tee $p2
                i32.eqz
                br_if $B3
                local.get $p2
                i32.const 7
                i32.add
                i32.const 0
                i64.load offset=1051007 align=1
                i64.store align=1
                local.get $p2
                i32.const 0
                i64.load offset=1051000 align=1
                i64.store align=1
                i32.const 12
                i32.const 4
                call $__rust_alloc
                local.tee $p1
                i32.eqz
                br_if $B2
                local.get $p1
                i64.const 64424509455
                i64.store offset=4 align=4
                local.get $p1
                local.get $p2
                i32.store
                i32.const 12
                i32.const 4
                call $__rust_alloc
                local.tee $p2
                i32.eqz
                br_if $B1
                local.get $p2
                i32.const 16
                i32.store8 offset=8
                local.get $p2
                i32.const 1050376
                i32.store offset=4
                local.get $p2
                local.get $p1
                i32.store
                local.get $p2
                local.get $l3
                i32.load16_u offset=24 align=1
                i32.store16 offset=9 align=1
                local.get $p2
                i32.const 11
                i32.add
                local.get $l3
                i32.const 24
                i32.add
                i32.const 2
                i32.add
                i32.load8_u
                i32.store8
                local.get $p0
                i32.const 4
                i32.add
                local.get $p2
                i32.store
                local.get $p0
                i32.const 2
                i32.store
                br $B0
              end
              local.get $p0
              local.get $l3
              i64.load offset=12 align=4
              i64.store align=4
              br $B0
            end
            local.get $p0
            i32.const 3
            i32.store8
            block $B6
              i32.const 0
              br_if $B6
              local.get $l3
              i32.load8_u offset=12
              i32.const 2
              i32.ne
              br_if $B0
            end
            local.get $l3
            i32.const 16
            i32.add
            i32.load
            local.tee $p2
            i32.load
            local.get $p2
            i32.load offset=4
            i32.load
            call_indirect (type $t1) $T0
            block $B7
              local.get $p2
              i32.load offset=4
              local.tee $p0
              i32.load offset=4
              local.tee $p1
              i32.eqz
              br_if $B7
              local.get $p2
              i32.load
              local.get $p1
              local.get $p0
              i32.load offset=8
              call $__rust_dealloc
            end
            local.get $l3
            i32.load offset=16
            i32.const 12
            i32.const 4
            call $__rust_dealloc
            br $B0
          end
          i32.const 15
          i32.const 1
          call $_ZN5alloc5alloc18handle_alloc_error17h372aacb639e2de27E
          unreachable
        end
        i32.const 12
        i32.const 4
        call $_ZN5alloc5alloc18handle_alloc_error17h372aacb639e2de27E
        unreachable
      end
      i32.const 12
      i32.const 4
      call $_ZN5alloc5alloc18handle_alloc_error17h372aacb639e2de27E
      unreachable
    end
    local.get $l3
    i32.const 48
    i32.add
    global.set $g0)
  (func $_ZN80_$LT$std..io..Write..write_fmt..Adaptor$LT$T$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17h1bf561aa9168750dE (type $t8) (param $p0 i32) (param $p1 i32) (param $p2 i32) (result i32)
    (local $l3 i32) (local $l4 i64) (local $l5 i32)
    global.get $g0
    i32.const 16
    i32.sub
    local.tee $l3
    global.set $g0
    local.get $l3
    i32.const 8
    i32.add
    local.get $p0
    i32.load
    local.get $p1
    local.get $p2
    call $_ZN3std2io5Write9write_all17h4c673540e22a7825E
    i32.const 0
    local.set $p1
    block $B0
      local.get $l3
      i32.load8_u offset=8
      i32.const 3
      i32.eq
      br_if $B0
      local.get $l3
      i64.load offset=8
      local.set $l4
      block $B1
        block $B2
          i32.const 0
          br_if $B2
          local.get $p0
          i32.load8_u offset=4
          i32.const 2
          i32.ne
          br_if $B1
        end
        local.get $p0
        i32.const 8
        i32.add
        i32.load
        local.tee $p1
        i32.load
        local.get $p1
        i32.load offset=4
        i32.load
        call_indirect (type $t1) $T0
        block $B3
          local.get $p1
          i32.load offset=4
          local.tee $p2
          i32.load offset=4
          local.tee $l5
          i32.eqz
          br_if $B3
          local.get $p1
          i32.load
          local.get $l5
          local.get $p2
          i32.load offset=8
          call $__rust_dealloc
        end
        local.get $p0
        i32.load offset=8
        i32.const 12
        i32.const 4
        call $__rust_dealloc
      end
      local.get $p0
      local.get $l4
      i64.store offset=4 align=4
      i32.const 1
      local.set $p1
    end
    local.get $l3
    i32.const 16
    i32.add
    global.set $g0
    local.get $p1)
  (func $_ZN80_$LT$std..io..Write..write_fmt..Adaptor$LT$T$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17h4e79fe03d48f26f2E (type $t8) (param $p0 i32) (param $p1 i32) (param $p2 i32) (result i32)
    (local $l3 i32) (local $l4 i64) (local $l5 i32)
    global.get $g0
    i32.const 16
    i32.sub
    local.tee $l3
    global.set $g0
    local.get $l3
    i32.const 8
    i32.add
    local.get $p0
    i32.load
    local.get $p1
    local.get $p2
    call $_ZN3std2io5Write9write_all17h2b497641c383c1c2E
    i32.const 0
    local.set $p1
    block $B0
      local.get $l3
      i32.load8_u offset=8
      i32.const 3
      i32.eq
      br_if $B0
      local.get $l3
      i64.load offset=8
      local.set $l4
      block $B1
        block $B2
          i32.const 0
          br_if $B2
          local.get $p0
          i32.load8_u offset=4
          i32.const 2
          i32.ne
          br_if $B1
        end
        local.get $p0
        i32.const 8
        i32.add
        i32.load
        local.tee $p1
        i32.load
        local.get $p1
        i32.load offset=4
        i32.load
        call_indirect (type $t1) $T0
        block $B3
          local.get $p1
          i32.load offset=4
          local.tee $p2
          i32.load offset=4
          local.tee $l5
          i32.eqz
          br_if $B3
          local.get $p1
          i32.load
          local.get $l5
          local.get $p2
          i32.load offset=8
          call $__rust_dealloc
        end
        local.get $p0
        i32.load offset=8
        i32.const 12
        i32.const 4
        call $__rust_dealloc
      end
      local.get $p0
      local.get $l4
      i64.store offset=4 align=4
      i32.const 1
      local.set $p1
    end
    local.get $l3
    i32.const 16
    i32.add
    global.set $g0
    local.get $p1)
  (func $_ZN55_$LT$std..path..PathBuf$u20$as$u20$core..fmt..Debug$GT$3fmt17haf00f8624de4aae8E (type $t3) (param $p0 i32) (param $p1 i32) (result i32)
    local.get $p0
    i32.load
    local.get $p0
    i32.load offset=8
    local.get $p1
    call $_ZN73_$LT$std..sys_common..os_str_bytes..Slice$u20$as$u20$core..fmt..Debug$GT$3fmt17h4065989a45dde40cE)
  (func $_ZN59_$LT$std..process..ChildStdin$u20$as$u20$std..io..Write$GT$5flush17h09bba869abdaa1d8E (type $t5) (param $p0 i32) (param $p1 i32)
    local.get $p0
    i32.const 3
    i32.store8)
  (func $_ZN3std7process5abort17hb8a2b6667846dd65E (type $t0)
    call $_ZN3std3sys4wasi14abort_internal17he4f0a6618c91d182E
    unreachable)
  (func $_ZN3std3sys4wasi14abort_internal17he4f0a6618c91d182E (type $t0)
    call $abort
    unreachable)
  (func $_ZN3std4sync4once4Once10call_inner17h9ff98aa059748033E (type $t4) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32)
    (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32)
    global.get $g0
    i32.const 16
    i32.sub
    local.tee $l4
    global.set $g0
    local.get $l4
    i32.const 2
    i32.or
    local.set $l5
    local.get $p0
    i32.load
    local.set $l6
    loop $L0
      block $B1
        block $B2
          block $B3
            block $B4
              block $B5
                local.get $l6
                local.tee $l7
                i32.const 3
                i32.gt_u
                br_if $B5
                block $B6
                  block $B7
                    block $B8
                      local.get $l7
                      br_table $B7 $B8 $B5 $B6 $B7
                    end
                    local.get $p1
                    i32.eqz
                    br_if $B4
                  end
                  local.get $p0
                  i32.const 2
                  local.get $p0
                  i32.load
                  local.tee $l6
                  local.get $l6
                  local.get $l7
                  i32.eq
                  select
                  i32.store
                  local.get $l6
                  local.get $l7
                  i32.ne
                  br_if $L0
                  local.get $l4
                  local.get $p0
                  i32.store
                  local.get $p2
                  local.get $l7
                  i32.const 1
                  i32.eq
                  local.get $p3
                  i32.load offset=12
                  call_indirect (type $t5) $T0
                  local.get $l4
                  i32.const 3
                  i32.store offset=4
                  local.get $l4
                  call $_ZN70_$LT$std..sync..once..WaiterQueue$u20$as$u20$core..ops..drop..Drop$GT$4drop17h520a864168252b15E
                end
                local.get $l4
                i32.const 16
                i32.add
                global.set $g0
                return
              end
              block $B9
                local.get $l7
                i32.const 3
                i32.and
                i32.const 2
                i32.ne
                br_if $B9
                loop $L10
                  local.get $l7
                  local.set $l6
                  block $B11
                    i32.const 0
                    i32.load offset=1060572
                    i32.const 1
                    i32.eq
                    br_if $B11
                    i32.const 0
                    i64.const 1
                    i64.store offset=1060572 align=4
                    i32.const 0
                    i32.const 0
                    i32.store offset=1060580
                  end
                  i32.const 1060576
                  call $_ZN3std10sys_common11thread_info10ThreadInfo4with28_$u7b$$u7b$closure$u7d$$u7d$17he4fbfdba5ffe7524E
                  local.set $l8
                  local.get $p0
                  local.get $l5
                  local.get $p0
                  i32.load
                  local.tee $l7
                  local.get $l7
                  local.get $l6
                  i32.eq
                  select
                  i32.store
                  local.get $l4
                  i32.const 0
                  i32.store8 offset=8
                  local.get $l4
                  local.get $l8
                  i32.store
                  local.get $l4
                  local.get $l6
                  i32.const -4
                  i32.and
                  i32.store offset=4
                  block $B12
                    local.get $l7
                    local.get $l6
                    i32.ne
                    br_if $B12
                    local.get $l4
                    i32.load8_u offset=8
                    i32.eqz
                    br_if $B3
                    br $B2
                  end
                  block $B13
                    local.get $l4
                    i32.load
                    local.tee $l6
                    i32.eqz
                    br_if $B13
                    local.get $l6
                    local.get $l6
                    i32.load
                    local.tee $l8
                    i32.const -1
                    i32.add
                    i32.store
                    local.get $l8
                    i32.const 1
                    i32.ne
                    br_if $B13
                    local.get $l4
                    call $_ZN5alloc4sync12Arc$LT$T$GT$9drop_slow17hd1e1a2ec6dd20ab9E
                  end
                  local.get $l7
                  i32.const 3
                  i32.and
                  i32.const 2
                  i32.eq
                  br_if $L10
                  br $B1
                end
              end
              i32.const 1051200
              i32.const 57
              i32.const 1051184
              call $_ZN3std9panicking11begin_panic17h4c37f88b45d6339dE
              unreachable
            end
            i32.const 1051276
            i32.const 42
            i32.const 1051260
            call $_ZN3std9panicking11begin_panic17h4c37f88b45d6339dE
            unreachable
          end
          loop $L14
            call $_ZN3std6thread4park17hfc506fb04ca50a64E
            local.get $l4
            i32.load8_u offset=8
            i32.eqz
            br_if $L14
          end
        end
        local.get $l4
        i32.load
        local.tee $l7
        i32.eqz
        br_if $B1
        local.get $l7
        local.get $l7
        i32.load
        local.tee $l6
        i32.const -1
        i32.add
        i32.store
        local.get $l6
        i32.const 1
        i32.ne
        br_if $B1
        local.get $l4
        call $_ZN5alloc4sync12Arc$LT$T$GT$9drop_slow17hd1e1a2ec6dd20ab9E
        local.get $p0
        i32.load
        local.set $l6
        br $L0
      end
      local.get $p0
      i32.load
      local.set $l6
      br $L0
    end)
  (func $_ZN70_$LT$std..sync..once..WaiterQueue$u20$as$u20$core..ops..drop..Drop$GT$4drop17h520a864168252b15E (type $t1) (param $p0 i32)
    (local $l1 i32) (local $l2 i32) (local $l3 i32)
    global.get $g0
    i32.const 64
    i32.sub
    local.tee $l1
    global.set $g0
    local.get $p0
    i32.load
    local.tee $l2
    i32.load
    local.set $l3
    local.get $l2
    local.get $p0
    i32.load offset=4
    i32.store
    local.get $l1
    local.get $l3
    i32.const 3
    i32.and
    local.tee $p0
    i32.store offset=12
    block $B0
      local.get $p0
      i32.const 2
      i32.ne
      br_if $B0
      block $B1
        block $B2
          local.get $l3
          i32.const -4
          i32.and
          local.tee $p0
          i32.eqz
          br_if $B2
          loop $L3
            local.get $p0
            i32.load offset=4
            local.set $l3
            local.get $p0
            i32.load
            local.set $l2
            local.get $p0
            i32.const 0
            i32.store
            local.get $l2
            i32.eqz
            br_if $B1
            local.get $p0
            i32.const 1
            i32.store8 offset=8
            local.get $l1
            local.get $l2
            i32.store offset=16
            local.get $l1
            i32.const 16
            i32.add
            call $_ZN3std6thread6Thread6unpark17h94e6706e18930922E
            local.get $l1
            i32.load offset=16
            local.tee $p0
            local.get $p0
            i32.load
            local.tee $p0
            i32.const -1
            i32.add
            i32.store
            block $B4
              local.get $p0
              i32.const 1
              i32.ne
              br_if $B4
              local.get $l1
              i32.const 16
              i32.add
              call $_ZN5alloc4sync12Arc$LT$T$GT$9drop_slow17hd1e1a2ec6dd20ab9E
            end
            local.get $l3
            local.set $p0
            local.get $l3
            br_if $L3
          end
        end
        local.get $l1
        i32.const 64
        i32.add
        global.set $g0
        return
      end
      i32.const 1049672
      i32.const 43
      i32.const 1049612
      call $_ZN4core9panicking5panic17hc60400b47c695700E
      unreachable
    end
    local.get $l1
    i32.const 52
    i32.add
    i32.const 13
    i32.store
    local.get $l1
    i32.const 36
    i32.add
    i32.const 2
    i32.store
    local.get $l1
    i64.const 3
    i64.store offset=20 align=4
    local.get $l1
    i32.const 1049588
    i32.store offset=16
    local.get $l1
    i32.const 13
    i32.store offset=44
    local.get $l1
    local.get $l1
    i32.const 12
    i32.add
    i32.store offset=56
    local.get $l1
    i32.const 1050048
    i32.store offset=60
    local.get $l1
    local.get $l1
    i32.const 40
    i32.add
    i32.store offset=32
    local.get $l1
    local.get $l1
    i32.const 60
    i32.add
    i32.store offset=48
    local.get $l1
    local.get $l1
    i32.const 56
    i32.add
    i32.store offset=40
    local.get $l1
    i32.const 16
    i32.add
    i32.const 1051320
    call $_ZN3std9panicking15begin_panic_fmt17h6ebfed9e714cf511E
    unreachable)
  (func $_ZN91_$LT$std..sys_common..backtrace.._print..DisplayBacktrace$u20$as$u20$core..fmt..Display$GT$3fmt17hc9f54135ac839bf3E (type $t3) (param $p0 i32) (param $p1 i32) (result i32)
    (local $l2 i32) (local $l3 i64) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32)
    global.get $g0
    i32.const 64
    i32.sub
    local.tee $l2
    global.set $g0
    local.get $p0
    i32.load8_u
    local.set $p0
    local.get $l2
    i32.const 40
    i32.add
    call $_ZN3std3sys4wasi11unsupported17h2c418a7ed20a0567E
    block $B0
      block $B1
        local.get $l2
        i32.load offset=40
        i32.const 1
        i32.eq
        br_if $B1
        local.get $l2
        i32.const 48
        i32.add
        i64.load
        local.set $l3
        local.get $l2
        i32.load offset=44
        local.set $l4
        br $B0
      end
      i32.const 0
      local.set $l4
      block $B2
        local.get $l2
        i32.load8_u offset=44
        i32.const 2
        i32.lt_u
        br_if $B2
        local.get $l2
        i32.const 48
        i32.add
        i32.load
        local.tee $l5
        i32.load
        local.get $l5
        i32.load offset=4
        i32.load
        call_indirect (type $t1) $T0
        block $B3
          local.get $l5
          i32.load offset=4
          local.tee $l6
          i32.load offset=4
          local.tee $l7
          i32.eqz
          br_if $B3
          local.get $l5
          i32.load
          local.get $l7
          local.get $l6
          i32.load offset=8
          call $__rust_dealloc
        end
        local.get $l5
        i32.const 12
        i32.const 4
        call $__rust_dealloc
      end
    end
    local.get $l2
    local.get $l3
    i64.store offset=4 align=4
    local.get $l2
    local.get $l4
    i32.store
    local.get $l2
    local.get $p0
    i32.store8 offset=12
    local.get $l2
    i32.const 16
    i32.add
    local.get $p1
    local.get $p0
    local.get $l2
    i32.const 1051420
    call $_ZN9backtrace5print12BacktraceFmt3new17h3cebab89049ca43eE
    block $B4
      block $B5
        local.get $l2
        i32.const 16
        i32.add
        call $_ZN9backtrace5print12BacktraceFmt11add_context17h1dba2b5dbc8bc178E
        br_if $B5
        local.get $l2
        i32.const 16
        i32.add
        call $_ZN9backtrace5print12BacktraceFmt6finish17h5861df54136c954dE
        br_if $B5
        block $B6
          local.get $p0
          i32.const 255
          i32.and
          br_if $B6
          local.get $l2
          i64.const 4
          i64.store offset=56
          local.get $l2
          i64.const 1
          i64.store offset=44 align=4
          local.get $l2
          i32.const 1051528
          i32.store offset=40
          local.get $p1
          local.get $l2
          i32.const 40
          i32.add
          call $_ZN4core3fmt9Formatter9write_fmt17h703d37c837f1e686E
          br_if $B5
        end
        i32.const 0
        local.set $p0
        local.get $l2
        i32.load
        local.tee $p1
        i32.eqz
        br_if $B4
        local.get $l2
        i32.load offset=4
        local.tee $l4
        i32.eqz
        br_if $B4
        local.get $p1
        local.get $l4
        i32.const 1
        call $__rust_dealloc
        br $B4
      end
      i32.const 1
      local.set $p0
      local.get $l2
      i32.load
      local.tee $p1
      i32.eqz
      br_if $B4
      local.get $l2
      i32.load offset=4
      local.tee $l4
      i32.eqz
      br_if $B4
      i32.const 1
      local.set $p0
      local.get $p1
      local.get $l4
      i32.const 1
      call $__rust_dealloc
    end
    local.get $l2
    i32.const 64
    i32.add
    global.set $g0
    local.get $p0)
  (func $_ZN3std10sys_common9backtrace10_print_fmt28_$u7b$$u7b$closure$u7d$$u7d$17hfde964fa31647e6bE (type $t8) (param $p0 i32) (param $p1 i32) (param $p2 i32) (result i32)
    (local $l3 i32) (local $l4 i32)
    global.get $g0
    i32.const 32
    i32.sub
    local.tee $l3
    global.set $g0
    block $B0
      block $B1
        local.get $p2
        i32.load
        i32.const 1
        i32.ne
        br_if $B1
        i32.const 1051540
        local.set $p2
        i32.const 9
        local.set $l4
        br $B0
      end
      local.get $l3
      i32.const 16
      i32.add
      local.get $p2
      i32.load offset=4
      local.get $p2
      i32.const 8
      i32.add
      i32.load
      call $_ZN4core3str9from_utf817hc9d846e05f440661E
      i32.const 1051540
      local.get $l3
      i32.load offset=20
      local.get $l3
      i32.load offset=16
      i32.const 1
      i32.eq
      local.tee $l4
      select
      local.set $p2
      i32.const 9
      local.get $l3
      i32.const 16
      i32.add
      i32.const 8
      i32.add
      i32.load
      local.get $l4
      select
      local.set $l4
    end
    local.get $l3
    i32.const 8
    i32.add
    local.get $p2
    local.get $l4
    call $_ZN4core3str5lossy9Utf8Lossy10from_bytes17h7dab23bdc987c3f1E
    local.get $l3
    i32.load offset=8
    local.get $l3
    i32.load offset=12
    local.get $p1
    call $_ZN66_$LT$core..str..lossy..Utf8Lossy$u20$as$u20$core..fmt..Display$GT$3fmt17h01e01d86d9c10b50E
    local.set $p2
    local.get $l3
    i32.const 32
    i32.add
    global.set $g0
    local.get $p2)
  (func $_ZN3std10sys_common9backtrace28__rust_begin_short_backtrace17h9a086315f308a9f7E (type $t3) (param $p0 i32) (param $p1 i32) (result i32)
    local.get $p0
    local.get $p1
    i32.load offset=12
    call_indirect (type $t7) $T0)
  (func $_ZN3std3sys4wasi7condvar7Condvar4wait17ha1fd694d92639d58E (type $t5) (param $p0 i32) (param $p1 i32)
    i32.const 1052364
    i32.const 29
    i32.const 1052348
    call $_ZN3std9panicking11begin_panic17h4c37f88b45d6339dE
    unreachable)
  (func $_ZN82_$LT$std..sys_common..poison..PoisonError$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h492372f491e0be27E (type $t3) (param $p0 i32) (param $p1 i32) (result i32)
    i32.const 1051549
    i32.const 25
    local.get $p1
    call $_ZN40_$LT$str$u20$as$u20$core..fmt..Debug$GT$3fmt17h00c99ec58e8a423cE)
  (func $_ZN76_$LT$std..sys_common..thread_local..Key$u20$as$u20$core..ops..drop..Drop$GT$4drop17h1c8ff39e518cfb04E (type $t1) (param $p0 i32))
  (func $_ZN3std10sys_common4util10dumb_print17h3a1fcafb52022fe9E (type $t1) (param $p0 i32)
    (local $l1 i32) (local $l2 i32) (local $l3 i32)
    global.get $g0
    i32.const 48
    i32.sub
    local.tee $l1
    global.set $g0
    local.get $l1
    i32.const 16
    i32.add
    i32.const 16
    i32.add
    local.get $p0
    i32.const 16
    i32.add
    i64.load align=4
    i64.store
    local.get $l1
    i32.const 16
    i32.add
    i32.const 8
    i32.add
    local.get $p0
    i32.const 8
    i32.add
    i64.load align=4
    i64.store
    local.get $l1
    local.get $p0
    i64.load align=4
    i64.store offset=16
    local.get $l1
    i32.const 8
    i32.add
    local.get $l1
    i32.const 40
    i32.add
    local.get $l1
    i32.const 16
    i32.add
    call $_ZN3std2io5Write9write_fmt17he4f9e0467028fa4dE
    block $B0
      block $B1
        i32.const 0
        br_if $B1
        local.get $l1
        i32.load8_u offset=8
        i32.const 2
        i32.ne
        br_if $B0
      end
      local.get $l1
      i32.load offset=12
      local.tee $p0
      i32.load
      local.get $p0
      i32.load offset=4
      i32.load
      call_indirect (type $t1) $T0
      block $B2
        local.get $p0
        i32.load offset=4
        local.tee $l2
        i32.load offset=4
        local.tee $l3
        i32.eqz
        br_if $B2
        local.get $p0
        i32.load
        local.get $l3
        local.get $l2
        i32.load offset=8
        call $__rust_dealloc
      end
      local.get $p0
      i32.const 12
      i32.const 4
      call $__rust_dealloc
    end
    local.get $l1
    i32.const 48
    i32.add
    global.set $g0)
  (func $_ZN3std10sys_common4util5abort17h66713edd5181f7feE (type $t1) (param $p0 i32)
    (local $l1 i32)
    global.get $g0
    i32.const 32
    i32.sub
    local.tee $l1
    global.set $g0
    local.get $l1
    i32.const 20
    i32.add
    i32.const 1
    i32.store
    local.get $l1
    i64.const 2
    i64.store offset=4 align=4
    local.get $l1
    i32.const 1051688
    i32.store
    local.get $l1
    i32.const 10
    i32.store offset=28
    local.get $l1
    local.get $p0
    i32.store offset=24
    local.get $l1
    local.get $l1
    i32.const 24
    i32.add
    i32.store offset=16
    local.get $l1
    call $_ZN3std10sys_common4util10dumb_print17h3a1fcafb52022fe9E
    call $_ZN3std3sys4wasi14abort_internal17he4f0a6618c91d182E
    unreachable)
  (func $_ZN3std5alloc24default_alloc_error_hook17h42d9c6ae543c8dd7E (type $t5) (param $p0 i32) (param $p1 i32)
    (local $l2 i32) (local $l3 i32) (local $l4 i32)
    global.get $g0
    i32.const 64
    i32.sub
    local.tee $l2
    global.set $g0
    local.get $l2
    i32.const 4
    i32.store offset=12
    local.get $l2
    local.get $p0
    i32.store offset=20
    local.get $l2
    local.get $l2
    i32.const 20
    i32.add
    i32.store offset=8
    local.get $l2
    i32.const 52
    i32.add
    i32.const 1
    i32.store
    local.get $l2
    i64.const 2
    i64.store offset=36 align=4
    local.get $l2
    i32.const 1051804
    i32.store offset=32
    local.get $l2
    local.get $l2
    i32.const 8
    i32.add
    i32.store offset=48
    local.get $l2
    i32.const 24
    i32.add
    local.get $l2
    i32.const 56
    i32.add
    local.get $l2
    i32.const 32
    i32.add
    call $_ZN3std2io5Write9write_fmt17he4f9e0467028fa4dE
    block $B0
      block $B1
        i32.const 0
        br_if $B1
        local.get $l2
        i32.load8_u offset=24
        i32.const 2
        i32.ne
        br_if $B0
      end
      local.get $l2
      i32.load offset=28
      local.tee $p0
      i32.load
      local.get $p0
      i32.load offset=4
      i32.load
      call_indirect (type $t1) $T0
      block $B2
        local.get $p0
        i32.load offset=4
        local.tee $l3
        i32.load offset=4
        local.tee $l4
        i32.eqz
        br_if $B2
        local.get $p0
        i32.load
        local.get $l4
        local.get $l3
        i32.load offset=8
        call $__rust_dealloc
      end
      local.get $p0
      i32.const 12
      i32.const 4
      call $__rust_dealloc
    end
    local.get $l2
    i32.const 64
    i32.add
    global.set $g0)
  (func $rust_oom (type $t5) (param $p0 i32) (param $p1 i32)
    (local $l2 i32)
    local.get $p0
    local.get $p1
    i32.const 0
    i32.load offset=1060524
    local.tee $l2
    i32.const 19
    local.get $l2
    select
    call_indirect (type $t5) $T0
    call $_ZN3std3sys4wasi14abort_internal17he4f0a6618c91d182E
    unreachable)
  (func $__rdl_alloc (type $t3) (param $p0 i32) (param $p1 i32) (result i32)
    block $B0
      local.get $p1
      i32.const 8
      i32.gt_u
      br_if $B0
      local.get $p1
      local.get $p0
      i32.gt_u
      br_if $B0
      local.get $p0
      call $malloc
      return
    end
    local.get $p0
    local.get $p1
    call $aligned_alloc)
  (func $__rdl_dealloc (type $t6) (param $p0 i32) (param $p1 i32) (param $p2 i32)
    local.get $p0
    call $free)
  (func $__rdl_realloc (type $t9) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32) (result i32)
    block $B0
      block $B1
        local.get $p2
        i32.const 8
        i32.gt_u
        br_if $B1
        local.get $p2
        local.get $p3
        i32.le_u
        br_if $B0
      end
      block $B2
        local.get $p3
        local.get $p2
        call $aligned_alloc
        local.tee $p2
        br_if $B2
        i32.const 0
        return
      end
      local.get $p2
      local.get $p0
      local.get $p3
      local.get $p1
      local.get $p1
      local.get $p3
      i32.gt_u
      select
      call $memcpy
      local.set $p3
      local.get $p0
      call $free
      local.get $p3
      return
    end
    local.get $p0
    local.get $p3
    call $realloc)
  (func $_ZN3std9panicking12default_hook28_$u7b$$u7b$closure$u7d$$u7d$17haed2194222b3e512E (type $t6) (param $p0 i32) (param $p1 i32) (param $p2 i32)
    (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32)
    global.get $g0
    i32.const 64
    i32.sub
    local.tee $l3
    global.set $g0
    local.get $l3
    i32.const 20
    i32.add
    i32.const 3
    i32.store
    local.get $l3
    i32.const 32
    i32.add
    i32.const 20
    i32.add
    i32.const 20
    i32.store
    local.get $l3
    i32.const 44
    i32.add
    i32.const 18
    i32.store
    local.get $l3
    i64.const 4
    i64.store offset=4 align=4
    local.get $l3
    i32.const 1051940
    i32.store
    local.get $l3
    i32.const 18
    i32.store offset=36
    local.get $l3
    local.get $p0
    i32.load offset=8
    i32.store offset=48
    local.get $l3
    local.get $p0
    i32.load offset=4
    i32.store offset=40
    local.get $l3
    local.get $p0
    i32.load
    i32.store offset=32
    local.get $l3
    local.get $l3
    i32.const 32
    i32.add
    i32.store offset=16
    local.get $l3
    i32.const 24
    i32.add
    local.get $p1
    local.get $l3
    local.get $p2
    i32.load offset=28
    local.tee $p2
    call_indirect (type $t6) $T0
    block $B0
      block $B1
        i32.const 0
        br_if $B1
        local.get $l3
        i32.load8_u offset=24
        i32.const 2
        i32.ne
        br_if $B0
      end
      local.get $l3
      i32.load offset=28
      local.tee $l4
      i32.load
      local.get $l4
      i32.load offset=4
      i32.load
      call_indirect (type $t1) $T0
      block $B2
        local.get $l4
        i32.load offset=4
        local.tee $l5
        i32.load offset=4
        local.tee $l6
        i32.eqz
        br_if $B2
        local.get $l4
        i32.load
        local.get $l6
        local.get $l5
        i32.load offset=8
        call $__rust_dealloc
      end
      local.get $l4
      i32.const 12
      i32.const 4
      call $__rust_dealloc
    end
    block $B3
      block $B4
        block $B5
          block $B6
            local.get $p0
            i32.load offset=12
            i32.load8_u
            local.tee $l4
            i32.const -3
            i32.add
            i32.const 255
            i32.and
            local.tee $p0
            i32.const 1
            i32.add
            i32.const 0
            local.get $p0
            i32.const 2
            i32.lt_u
            select
            br_table $B6 $B4 $B5 $B6
          end
          i32.const 0
          i32.load8_u offset=1060594
          br_if $B3
          i32.const 0
          i32.const 1
          i32.store8 offset=1060594
          local.get $l3
          i32.const 52
          i32.add
          i32.const 1
          i32.store
          local.get $l3
          i64.const 1
          i64.store offset=36 align=4
          local.get $l3
          i32.const 1050780
          i32.store offset=32
          local.get $l3
          i32.const 21
          i32.store offset=4
          local.get $l3
          local.get $l4
          i32.store8 offset=63
          local.get $l3
          local.get $l3
          i32.store offset=48
          local.get $l3
          local.get $l3
          i32.const 63
          i32.add
          i32.store
          local.get $l3
          i32.const 24
          i32.add
          local.get $p1
          local.get $l3
          i32.const 32
          i32.add
          local.get $p2
          call_indirect (type $t6) $T0
          i32.const 0
          i32.const 0
          i32.store8 offset=1060594
          block $B7
            i32.const 0
            br_if $B7
            local.get $l3
            i32.load8_u offset=24
            i32.const 2
            i32.ne
            br_if $B4
          end
          local.get $l3
          i32.load offset=28
          local.tee $p0
          i32.load
          local.get $p0
          i32.load offset=4
          i32.load
          call_indirect (type $t1) $T0
          block $B8
            local.get $p0
            i32.load offset=4
            local.tee $p1
            i32.load offset=4
            local.tee $p2
            i32.eqz
            br_if $B8
            local.get $p0
            i32.load
            local.get $p2
            local.get $p1
            i32.load offset=8
            call $__rust_dealloc
          end
          local.get $p0
          i32.const 12
          i32.const 4
          call $__rust_dealloc
          br $B4
        end
        i32.const 0
        i32.load8_u offset=1060496
        local.set $p0
        i32.const 0
        i32.const 0
        i32.store8 offset=1060496
        local.get $p0
        i32.eqz
        br_if $B4
        local.get $l3
        i64.const 4
        i64.store offset=48
        local.get $l3
        i64.const 1
        i64.store offset=36 align=4
        local.get $l3
        i32.const 1052052
        i32.store offset=32
        local.get $l3
        local.get $p1
        local.get $l3
        i32.const 32
        i32.add
        local.get $p2
        call_indirect (type $t6) $T0
        block $B9
          i32.const 0
          br_if $B9
          local.get $l3
          i32.load8_u
          i32.const 2
          i32.ne
          br_if $B4
        end
        local.get $l3
        i32.load offset=4
        local.tee $p0
        i32.load
        local.get $p0
        i32.load offset=4
        i32.load
        call_indirect (type $t1) $T0
        block $B10
          local.get $p0
          i32.load offset=4
          local.tee $p1
          i32.load offset=4
          local.tee $p2
          i32.eqz
          br_if $B10
          local.get $p0
          i32.load
          local.get $p2
          local.get $p1
          i32.load offset=8
          call $__rust_dealloc
        end
        local.get $p0
        i32.const 12
        i32.const 4
        call $__rust_dealloc
      end
      local.get $l3
      i32.const 64
      i32.add
      global.set $g0
      return
    end
    i32.const 1052448
    i32.const 32
    i32.const 1052432
    call $_ZN3std9panicking11begin_panic17h4c37f88b45d6339dE
    unreachable)
  (func $_ZN3std9panicking3try7do_call17hba2245c23b34bfc8E (type $t1) (param $p0 i32)
    (local $l1 i32)
    local.get $p0
    local.get $p0
    i32.load
    local.tee $l1
    i32.load
    local.get $l1
    i32.load offset=4
    call $_ZN3std10sys_common9backtrace28__rust_begin_short_backtrace17h9a086315f308a9f7E
    i32.store)
  (func $rust_begin_unwind (type $t1) (param $p0 i32)
    (local $l1 i32) (local $l2 i32) (local $l3 i32) (local $l4 i64) (local $l5 i32)
    global.get $g0
    i32.const 48
    i32.sub
    local.tee $l1
    global.set $g0
    local.get $p0
    call $_ZN4core5panic9PanicInfo8location17h198cc11e8ca65b7cE
    call $_ZN4core6option15Option$LT$T$GT$6unwrap17h3f1ff6c63ca75a16E
    local.set $l2
    local.get $p0
    call $_ZN4core5panic9PanicInfo7message17hb5a2f77065892d6eE
    call $_ZN4core6option15Option$LT$T$GT$6unwrap17hbe87f8a73e0525b2E
    local.set $l3
    local.get $l1
    i32.const 8
    i32.add
    local.get $l2
    call $_ZN4core5panic8Location4file17h916ad762787e0b09E
    local.get $l1
    i64.load offset=8
    local.set $l4
    local.get $l2
    call $_ZN4core5panic8Location4line17h51d324d36825685fE
    local.set $l5
    local.get $l1
    local.get $l2
    call $_ZN4core5panic8Location6column17h92ef532fcdc90d17E
    i32.store offset=28
    local.get $l1
    local.get $l5
    i32.store offset=24
    local.get $l1
    local.get $l4
    i64.store offset=16
    local.get $l1
    i32.const 0
    i32.store offset=36
    local.get $l1
    local.get $l3
    i32.store offset=32
    local.get $l1
    i32.const 32
    i32.add
    i32.const 1052060
    local.get $p0
    call $_ZN4core5panic9PanicInfo7message17hb5a2f77065892d6eE
    local.get $l1
    i32.const 16
    i32.add
    call $_ZN3std9panicking20rust_panic_with_hook17h7f90b1acd5ff521cE
    unreachable)
  (func $_ZN3std9panicking20rust_panic_with_hook17h7f90b1acd5ff521cE (type $t4) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32)
    (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32)
    global.get $g0
    i32.const 80
    i32.sub
    local.tee $l4
    global.set $g0
    i32.const 1
    local.set $l5
    local.get $p3
    i32.load offset=12
    local.set $l6
    local.get $p3
    i32.load offset=8
    local.set $l7
    local.get $p3
    i32.load offset=4
    local.set $l8
    local.get $p3
    i32.load
    local.set $p3
    block $B0
      block $B1
        block $B2
          block $B3
            i32.const 0
            i32.load offset=1060584
            i32.const 1
            i32.eq
            br_if $B3
            i32.const 0
            i64.const 4294967297
            i64.store offset=1060584
            br $B2
          end
          i32.const 0
          i32.const 0
          i32.load offset=1060588
          i32.const 1
          i32.add
          local.tee $l5
          i32.store offset=1060588
          local.get $l5
          i32.const 2
          i32.gt_u
          br_if $B1
        end
        local.get $l4
        i32.const 24
        i32.add
        local.get $p3
        local.get $l8
        local.get $l7
        local.get $l6
        call $_ZN4core5panic8Location20internal_constructor17h907b86da1c041b0eE
        local.get $l4
        local.get $p2
        i32.store offset=48
        local.get $l4
        i32.const 1049628
        i32.store offset=44
        local.get $l4
        i32.const 1
        i32.store offset=40
        i32.const 0
        i32.load offset=1060528
        local.set $p3
        local.get $l4
        local.get $l4
        i32.const 24
        i32.add
        i32.store offset=52
        block $B4
          local.get $p3
          i32.const -1
          i32.le_s
          br_if $B4
          i32.const 0
          local.get $p3
          i32.const 1
          i32.add
          i32.store offset=1060528
          block $B5
            block $B6
              i32.const 0
              i32.load offset=1060536
              local.tee $p3
              br_if $B6
              local.get $l4
              i32.const 8
              i32.add
              local.get $p0
              local.get $p1
              i32.load offset=16
              call_indirect (type $t5) $T0
              local.get $l4
              local.get $l4
              i64.load offset=8
              i64.store offset=40
              local.get $l4
              i32.const 40
              i32.add
              call $_ZN3std9panicking12default_hook17had55ad0811906711E
              br $B5
            end
            i32.const 0
            i32.load offset=1060532
            local.set $p2
            local.get $l4
            i32.const 16
            i32.add
            local.get $p0
            local.get $p1
            i32.load offset=16
            call_indirect (type $t5) $T0
            local.get $l4
            local.get $l4
            i64.load offset=16
            i64.store offset=40
            local.get $p2
            local.get $l4
            i32.const 40
            i32.add
            local.get $p3
            i32.load offset=12
            call_indirect (type $t5) $T0
          end
          i32.const 0
          i32.const 0
          i32.load offset=1060528
          i32.const -1
          i32.add
          i32.store offset=1060528
          local.get $l5
          i32.const 1
          i32.le_u
          br_if $B0
          local.get $l4
          i64.const 4
          i64.store offset=72
          local.get $l4
          i64.const 1
          i64.store offset=60 align=4
          local.get $l4
          i32.const 1052236
          i32.store offset=56
          local.get $l4
          i32.const 56
          i32.add
          call $_ZN3std10sys_common4util10dumb_print17h3a1fcafb52022fe9E
          unreachable
          unreachable
        end
        local.get $l4
        i64.const 4
        i64.store offset=72
        local.get $l4
        i64.const 1
        i64.store offset=60 align=4
        local.get $l4
        i32.const 1052568
        i32.store offset=56
        local.get $l4
        i32.const 56
        i32.add
        call $_ZN3std10sys_common4util5abort17h66713edd5181f7feE
        unreachable
      end
      local.get $l4
      i64.const 4
      i64.store offset=72
      local.get $l4
      i64.const 1
      i64.store offset=60 align=4
      local.get $l4
      i32.const 1052184
      i32.store offset=56
      local.get $l4
      i32.const 56
      i32.add
      call $_ZN3std10sys_common4util10dumb_print17h3a1fcafb52022fe9E
      unreachable
      unreachable
    end
    local.get $p0
    local.get $p1
    call $rust_panic
    unreachable)
  (func $_ZN90_$LT$std..panicking..begin_panic_handler..PanicPayload$u20$as$u20$core..panic..BoxMeUp$GT$8take_box17hf68c26a79265806aE (type $t5) (param $p0 i32) (param $p1 i32)
    (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32)
    global.get $g0
    i32.const 64
    i32.sub
    local.tee $l2
    global.set $g0
    block $B0
      local.get $p1
      i32.load offset=4
      local.tee $l3
      br_if $B0
      local.get $p1
      i32.const 4
      i32.add
      local.set $l3
      local.get $p1
      i32.load
      local.set $l4
      local.get $l2
      i32.const 0
      i32.store offset=32
      local.get $l2
      i64.const 1
      i64.store offset=24
      local.get $l2
      local.get $l2
      i32.const 24
      i32.add
      i32.store offset=36
      local.get $l2
      i32.const 40
      i32.add
      i32.const 16
      i32.add
      local.get $l4
      i32.const 16
      i32.add
      i64.load align=4
      i64.store
      local.get $l2
      i32.const 40
      i32.add
      i32.const 8
      i32.add
      local.get $l4
      i32.const 8
      i32.add
      i64.load align=4
      i64.store
      local.get $l2
      local.get $l4
      i64.load align=4
      i64.store offset=40
      local.get $l2
      i32.const 36
      i32.add
      i32.const 1049352
      local.get $l2
      i32.const 40
      i32.add
      call $_ZN4core3fmt5write17h8876819fabc0b258E
      drop
      local.get $l2
      i32.const 8
      i32.add
      i32.const 8
      i32.add
      local.tee $l4
      local.get $l2
      i32.load offset=32
      i32.store
      local.get $l2
      local.get $l2
      i64.load offset=24
      i64.store offset=8
      block $B1
        local.get $p1
        i32.load offset=4
        local.tee $l5
        i32.eqz
        br_if $B1
        local.get $p1
        i32.const 8
        i32.add
        i32.load
        local.tee $l6
        i32.eqz
        br_if $B1
        local.get $l5
        local.get $l6
        i32.const 1
        call $__rust_dealloc
      end
      local.get $l3
      local.get $l2
      i64.load offset=8
      i64.store align=4
      local.get $l3
      i32.const 8
      i32.add
      local.get $l4
      i32.load
      i32.store
      local.get $l3
      i32.load
      local.set $l3
    end
    local.get $p1
    i32.const 1
    i32.store offset=4
    local.get $p1
    i32.const 12
    i32.add
    i32.load
    local.set $l4
    local.get $p1
    i32.const 8
    i32.add
    local.tee $p1
    i32.load
    local.set $l5
    local.get $p1
    i64.const 0
    i64.store align=4
    block $B2
      i32.const 12
      i32.const 4
      call $__rust_alloc
      local.tee $p1
      br_if $B2
      i32.const 12
      i32.const 4
      call $_ZN5alloc5alloc18handle_alloc_error17h372aacb639e2de27E
      unreachable
    end
    local.get $p1
    local.get $l4
    i32.store offset=8
    local.get $p1
    local.get $l5
    i32.store offset=4
    local.get $p1
    local.get $l3
    i32.store
    local.get $p0
    i32.const 1052080
    i32.store offset=4
    local.get $p0
    local.get $p1
    i32.store
    local.get $l2
    i32.const 64
    i32.add
    global.set $g0)
  (func $_ZN90_$LT$std..panicking..begin_panic_handler..PanicPayload$u20$as$u20$core..panic..BoxMeUp$GT$3get17h2f13d8d04478e036E (type $t5) (param $p0 i32) (param $p1 i32)
    (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32)
    global.get $g0
    i32.const 64
    i32.sub
    local.tee $l2
    global.set $g0
    local.get $p1
    i32.const 4
    i32.add
    local.set $l3
    block $B0
      local.get $p1
      i32.load offset=4
      br_if $B0
      local.get $p1
      i32.load
      local.set $l4
      local.get $l2
      i32.const 0
      i32.store offset=32
      local.get $l2
      i64.const 1
      i64.store offset=24
      local.get $l2
      local.get $l2
      i32.const 24
      i32.add
      i32.store offset=36
      local.get $l2
      i32.const 40
      i32.add
      i32.const 16
      i32.add
      local.get $l4
      i32.const 16
      i32.add
      i64.load align=4
      i64.store
      local.get $l2
      i32.const 40
      i32.add
      i32.const 8
      i32.add
      local.get $l4
      i32.const 8
      i32.add
      i64.load align=4
      i64.store
      local.get $l2
      local.get $l4
      i64.load align=4
      i64.store offset=40
      local.get $l2
      i32.const 36
      i32.add
      i32.const 1049352
      local.get $l2
      i32.const 40
      i32.add
      call $_ZN4core3fmt5write17h8876819fabc0b258E
      drop
      local.get $l2
      i32.const 8
      i32.add
      i32.const 8
      i32.add
      local.tee $l4
      local.get $l2
      i32.load offset=32
      i32.store
      local.get $l2
      local.get $l2
      i64.load offset=24
      i64.store offset=8
      block $B1
        local.get $p1
        i32.load offset=4
        local.tee $l5
        i32.eqz
        br_if $B1
        local.get $p1
        i32.const 8
        i32.add
        i32.load
        local.tee $p1
        i32.eqz
        br_if $B1
        local.get $l5
        local.get $p1
        i32.const 1
        call $__rust_dealloc
      end
      local.get $l3
      local.get $l2
      i64.load offset=8
      i64.store align=4
      local.get $l3
      i32.const 8
      i32.add
      local.get $l4
      i32.load
      i32.store
    end
    local.get $p0
    i32.const 1052080
    i32.store offset=4
    local.get $p0
    local.get $l3
    i32.store
    local.get $l2
    i32.const 64
    i32.add
    global.set $g0)
  (func $_ZN91_$LT$std..panicking..begin_panic..PanicPayload$LT$A$GT$$u20$as$u20$core..panic..BoxMeUp$GT$8take_box17hb16aceddc760d867E (type $t5) (param $p0 i32) (param $p1 i32)
    (local $l2 i32) (local $l3 i32)
    local.get $p1
    i32.load
    local.set $l2
    local.get $p1
    i32.const 0
    i32.store
    block $B0
      block $B1
        local.get $l2
        i32.eqz
        br_if $B1
        local.get $p1
        i32.load offset=4
        local.set $l3
        i32.const 8
        i32.const 4
        call $__rust_alloc
        local.tee $p1
        i32.eqz
        br_if $B0
        local.get $p1
        local.get $l3
        i32.store offset=4
        local.get $p1
        local.get $l2
        i32.store
        local.get $p0
        i32.const 1052116
        i32.store offset=4
        local.get $p0
        local.get $p1
        i32.store
        return
      end
      call $_ZN3std7process5abort17hb8a2b6667846dd65E
      unreachable
    end
    i32.const 8
    i32.const 4
    call $_ZN5alloc5alloc18handle_alloc_error17h372aacb639e2de27E
    unreachable)
  (func $_ZN91_$LT$std..panicking..begin_panic..PanicPayload$LT$A$GT$$u20$as$u20$core..panic..BoxMeUp$GT$3get17h1e86d8331d944ed0E (type $t5) (param $p0 i32) (param $p1 i32)
    block $B0
      local.get $p1
      i32.load
      br_if $B0
      call $_ZN3std7process5abort17hb8a2b6667846dd65E
      unreachable
    end
    local.get $p0
    i32.const 1052116
    i32.store offset=4
    local.get $p0
    local.get $p1
    i32.store)
  (func $rust_panic (type $t5) (param $p0 i32) (param $p1 i32)
    (local $l2 i32)
    global.get $g0
    i32.const 48
    i32.sub
    local.tee $l2
    global.set $g0
    local.get $l2
    local.get $p1
    i32.store offset=4
    local.get $l2
    local.get $p0
    i32.store
    local.get $l2
    local.get $l2
    call $__rust_start_panic
    i32.store offset=12
    local.get $l2
    i32.const 36
    i32.add
    i32.const 1
    i32.store
    local.get $l2
    i64.const 1
    i64.store offset=20 align=4
    local.get $l2
    i32.const 1052276
    i32.store offset=16
    local.get $l2
    i32.const 4
    i32.store offset=44
    local.get $l2
    local.get $l2
    i32.const 40
    i32.add
    i32.store offset=32
    local.get $l2
    local.get $l2
    i32.const 12
    i32.add
    i32.store offset=40
    local.get $l2
    i32.const 16
    i32.add
    call $_ZN3std10sys_common4util5abort17h66713edd5181f7feE
    unreachable)
  (func $_ZN3std2rt19lang_start_internal17hb21784bb01c7c753E (type $t9) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32) (result i32)
    (local $l4 i32) (local $l5 i32) (local $l6 i32)
    global.get $g0
    i32.const 32
    i32.sub
    local.tee $l4
    global.set $g0
    local.get $l4
    local.get $p1
    i32.store offset=4
    local.get $l4
    local.get $p0
    i32.store
    block $B0
      block $B1
        block $B2
          block $B3
            i32.const 4
            i32.const 1
            call $__rust_alloc
            local.tee $p0
            i32.eqz
            br_if $B3
            local.get $p0
            i32.const 1852399981
            i32.store align=1
            local.get $l4
            i64.const 17179869188
            i64.store offset=12 align=4
            local.get $l4
            local.get $p0
            i32.store offset=8
            local.get $l4
            i32.const 8
            i32.add
            call $_ZN3std6thread6Thread3new17h6e1b1f283a53e9ccE
            local.set $p1
            block $B4
              block $B5
                i32.const 0
                i32.load offset=1060572
                i32.const 1
                i32.eq
                br_if $B5
                i32.const 0
                i64.const 1
                i64.store offset=1060572 align=4
                i32.const 0
                i32.const 0
                i32.store offset=1060580
                br $B4
              end
              i32.const 0
              i32.load offset=1060576
              local.tee $p0
              i32.const 1
              i32.add
              i32.const 0
              i32.le_s
              br_if $B2
              i32.const 0
              i32.load offset=1060580
              br_if $B1
              local.get $p0
              br_if $B0
            end
            i32.const 0
            local.set $p0
            i32.const 0
            local.get $p1
            i32.store offset=1060580
            i32.const 0
            i32.const 0
            i32.store offset=1060576
            local.get $l4
            i32.const 0
            i32.store offset=24
            local.get $l4
            i32.const 0
            i32.store offset=28
            local.get $l4
            local.get $l4
            i32.store offset=8
            block $B6
              block $B7
                i32.const 22
                local.get $l4
                i32.const 8
                i32.add
                local.get $l4
                i32.const 24
                i32.add
                local.get $l4
                i32.const 28
                i32.add
                call $__rust_maybe_catch_panic
                i32.eqz
                br_if $B7
                block $B8
                  block $B9
                    i32.const 0
                    i32.load offset=1060584
                    i32.const 1
                    i32.ne
                    br_if $B9
                    i32.const 0
                    i32.load offset=1060588
                    i32.const -1
                    i32.add
                    local.set $p0
                    br $B8
                  end
                  i32.const 0
                  i64.const 1
                  i64.store offset=1060584
                  i32.const -1
                  local.set $p0
                end
                i32.const 0
                local.get $p0
                i32.store offset=1060588
                i32.const 1
                local.set $p0
                local.get $l4
                i32.load offset=28
                local.set $l5
                local.get $l4
                i32.load offset=24
                local.set $p1
                br $B6
              end
              local.get $l4
              i32.load offset=8
              local.set $p1
            end
            block $B10
              i32.const 0
              i32.load offset=1060520
              i32.const 3
              i32.eq
              br_if $B10
              local.get $l4
              i32.const 1
              i32.store8 offset=28
              local.get $l4
              local.get $l4
              i32.const 28
              i32.add
              i32.store offset=8
              i32.const 1060520
              i32.const 0
              local.get $l4
              i32.const 8
              i32.add
              i32.const 1051140
              call $_ZN3std4sync4once4Once10call_inner17h9ff98aa059748033E
            end
            i32.const 101
            local.get $p1
            local.get $p0
            select
            local.set $l6
            block $B11
              local.get $p0
              i32.eqz
              br_if $B11
              local.get $p1
              local.get $l5
              i32.load
              call_indirect (type $t1) $T0
              local.get $l5
              i32.load offset=4
              local.tee $p0
              i32.eqz
              br_if $B11
              local.get $p1
              local.get $p0
              local.get $l5
              i32.load offset=8
              call $__rust_dealloc
            end
            local.get $l4
            i32.const 32
            i32.add
            global.set $g0
            local.get $l6
            return
          end
          i32.const 4
          i32.const 1
          call $_ZN5alloc5alloc18handle_alloc_error17h372aacb639e2de27E
          unreachable
        end
        i32.const 1049432
        i32.const 24
        local.get $l4
        i32.const 8
        i32.add
        i32.const 1049732
        call $_ZN4core6result13unwrap_failed17h89d8c4399f5be1adE
        unreachable
      end
      i32.const 1051628
      i32.const 38
      i32.const 1051612
      call $_ZN3std9panicking11begin_panic17h4c37f88b45d6339dE
      unreachable
    end
    i32.const 1049416
    i32.const 16
    local.get $l4
    i32.const 8
    i32.add
    i32.const 1049716
    call $_ZN4core6result13unwrap_failed17h89d8c4399f5be1adE
    unreachable)
  (func $_ZN62_$LT$std..ffi..c_str..NulError$u20$as$u20$core..fmt..Debug$GT$3fmt17hdbdc592c640fe94eE (type $t3) (param $p0 i32) (param $p1 i32) (result i32)
    (local $l2 i32)
    global.get $g0
    i32.const 16
    i32.sub
    local.tee $l2
    global.set $g0
    local.get $l2
    local.get $p1
    i32.const 1052284
    i32.const 8
    call $_ZN4core3fmt9Formatter11debug_tuple17h537225ecd55cb5d7E
    local.get $l2
    local.get $p0
    i32.store offset=12
    local.get $l2
    local.get $l2
    i32.const 12
    i32.add
    i32.const 1049968
    call $_ZN4core3fmt8builders10DebugTuple5field17hbd38ecaa7052e2cfE
    drop
    local.get $l2
    local.get $p0
    i32.const 4
    i32.add
    i32.store offset=12
    local.get $l2
    local.get $l2
    i32.const 12
    i32.add
    i32.const 1052292
    call $_ZN4core3fmt8builders10DebugTuple5field17hbd38ecaa7052e2cfE
    drop
    local.get $l2
    call $_ZN4core3fmt8builders10DebugTuple6finish17ha689661cc00c12a4E
    local.set $p0
    local.get $l2
    i32.const 16
    i32.add
    global.set $g0
    local.get $p0)
  (func $_ZN3std3sys4wasi7process8ExitCode6as_i3217h1909ac59d2547a0aE (type $t7) (param $p0 i32) (result i32)
    local.get $p0
    i32.load8_u)
  (func $__rust_maybe_catch_panic (type $t9) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32) (result i32)
    local.get $p1
    local.get $p0
    call_indirect (type $t1) $T0
    i32.const 0)
  (func $__rust_start_panic (type $t7) (param $p0 i32) (result i32)
    unreachable
    unreachable)
  (func $_ZN4wasi5error5Error9raw_error17ha81beb7b4fa33a3dE (type $t7) (param $p0 i32) (result i32)
    local.get $p0
    i32.load16_u)
  (func $_ZN4wasi13lib_generated8args_get17ha2cc1da03f4386e9E (type $t3) (param $p0 i32) (param $p1 i32) (result i32)
    local.get $p0
    local.get $p1
    call $args_get)
  (func $_ZN4wasi13lib_generated14args_sizes_get17h5f7f470ade5347b9E (type $t1) (param $p0 i32)
    (local $l1 i32) (local $l2 i32)
    global.get $g0
    i32.const 16
    i32.sub
    local.tee $l1
    global.set $g0
    block $B0
      block $B1
        local.get $l1
        i32.const 8
        i32.add
        local.get $l1
        i32.const 12
        i32.add
        call $args_sizes_get
        local.tee $l2
        br_if $B1
        local.get $p0
        i32.const 8
        i32.add
        local.get $l1
        i32.load offset=12
        i32.store
        local.get $p0
        i32.const 4
        i32.add
        local.get $l1
        i32.load offset=8
        i32.store
        i32.const 0
        local.set $l2
        br $B0
      end
      local.get $p0
      local.get $l2
      i32.store16 offset=2
      i32.const 1
      local.set $l2
    end
    local.get $p0
    local.get $l2
    i32.store16
    local.get $l1
    i32.const 16
    i32.add
    global.set $g0)
  (func $_ZN4wasi13lib_generated8fd_write17hcbb26a9193d90ff3E (type $t4) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32)
    (local $l4 i32)
    global.get $g0
    i32.const 16
    i32.sub
    local.tee $l4
    global.set $g0
    block $B0
      block $B1
        local.get $p1
        local.get $p2
        local.get $p3
        local.get $l4
        i32.const 12
        i32.add
        call $fd_write
        local.tee $p1
        br_if $B1
        local.get $p0
        i32.const 4
        i32.add
        local.get $l4
        i32.load offset=12
        i32.store
        i32.const 0
        local.set $p1
        br $B0
      end
      local.get $p0
      local.get $p1
      i32.store16 offset=2
      i32.const 1
      local.set $p1
    end
    local.get $p0
    local.get $p1
    i32.store16
    local.get $l4
    i32.const 16
    i32.add
    global.set $g0)
  (func $_ZN9backtrace5print12BacktraceFmt3new17h3cebab89049ca43eE (type $t10) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32) (param $p4 i32)
    local.get $p0
    local.get $p2
    i32.store8 offset=16
    local.get $p0
    i32.const 0
    i32.store offset=4
    local.get $p0
    local.get $p1
    i32.store
    local.get $p0
    local.get $p3
    i32.store offset=8
    local.get $p0
    i32.const 12
    i32.add
    local.get $p4
    i32.store)
  (func $_ZN9backtrace5print12BacktraceFmt11add_context17h1dba2b5dbc8bc178E (type $t7) (param $p0 i32) (result i32)
    local.get $p0
    i32.load
    i32.const 1052611
    i32.const 17
    call $_ZN4core3fmt9Formatter9write_str17haa5886101a13330aE)
  (func $_ZN9backtrace5print12BacktraceFmt6finish17h5861df54136c954dE (type $t7) (param $p0 i32) (result i32)
    i32.const 0)
  (func $abort (type $t0)
    unreachable
    unreachable)
  (func $malloc (type $t7) (param $p0 i32) (result i32)
    local.get $p0
    call $dlmalloc)
  (func $dlmalloc (type $t7) (param $p0 i32) (result i32)
    (local $l1 i32) (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32) (local $l9 i32) (local $l10 i32) (local $l11 i32)
    global.get $g0
    i32.const 16
    i32.sub
    local.tee $l1
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
                          block $B11
                            local.get $p0
                            i32.const 236
                            i32.gt_u
                            br_if $B11
                            block $B12
                              i32.const 0
                              i32.load offset=1060596
                              local.tee $l2
                              i32.const 16
                              local.get $p0
                              i32.const 19
                              i32.add
                              i32.const -16
                              i32.and
                              local.get $p0
                              i32.const 11
                              i32.lt_u
                              select
                              local.tee $l3
                              i32.const 3
                              i32.shr_u
                              local.tee $l4
                              i32.shr_u
                              local.tee $p0
                              i32.const 3
                              i32.and
                              i32.eqz
                              br_if $B12
                              local.get $p0
                              i32.const 1
                              i32.and
                              local.get $l4
                              i32.or
                              i32.const 1
                              i32.xor
                              local.tee $l3
                              i32.const 3
                              i32.shl
                              local.tee $l5
                              i32.const 1060644
                              i32.add
                              i32.load
                              local.tee $l4
                              i32.const 8
                              i32.add
                              local.set $p0
                              block $B13
                                block $B14
                                  local.get $l4
                                  i32.load offset=8
                                  local.tee $l6
                                  local.get $l5
                                  i32.const 1060636
                                  i32.add
                                  local.tee $l5
                                  i32.ne
                                  br_if $B14
                                  i32.const 0
                                  local.get $l2
                                  i32.const -2
                                  local.get $l3
                                  i32.rotl
                                  i32.and
                                  i32.store offset=1060596
                                  br $B13
                                end
                                i32.const 0
                                i32.load offset=1060612
                                local.get $l6
                                i32.gt_u
                                drop
                                local.get $l5
                                local.get $l6
                                i32.store offset=8
                                local.get $l6
                                local.get $l5
                                i32.store offset=12
                              end
                              local.get $l4
                              local.get $l3
                              i32.const 3
                              i32.shl
                              local.tee $l6
                              i32.const 3
                              i32.or
                              i32.store offset=4
                              local.get $l4
                              local.get $l6
                              i32.add
                              local.tee $l4
                              local.get $l4
                              i32.load offset=4
                              i32.const 1
                              i32.or
                              i32.store offset=4
                              br $B0
                            end
                            local.get $l3
                            i32.const 0
                            i32.load offset=1060604
                            local.tee $l7
                            i32.le_u
                            br_if $B10
                            block $B15
                              local.get $p0
                              i32.eqz
                              br_if $B15
                              block $B16
                                block $B17
                                  local.get $p0
                                  local.get $l4
                                  i32.shl
                                  i32.const 2
                                  local.get $l4
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
                                  local.tee $l4
                                  i32.const 5
                                  i32.shr_u
                                  i32.const 8
                                  i32.and
                                  local.tee $l6
                                  local.get $p0
                                  i32.or
                                  local.get $l4
                                  local.get $l6
                                  i32.shr_u
                                  local.tee $p0
                                  i32.const 2
                                  i32.shr_u
                                  i32.const 4
                                  i32.and
                                  local.tee $l4
                                  i32.or
                                  local.get $p0
                                  local.get $l4
                                  i32.shr_u
                                  local.tee $p0
                                  i32.const 1
                                  i32.shr_u
                                  i32.const 2
                                  i32.and
                                  local.tee $l4
                                  i32.or
                                  local.get $p0
                                  local.get $l4
                                  i32.shr_u
                                  local.tee $p0
                                  i32.const 1
                                  i32.shr_u
                                  i32.const 1
                                  i32.and
                                  local.tee $l4
                                  i32.or
                                  local.get $p0
                                  local.get $l4
                                  i32.shr_u
                                  i32.add
                                  local.tee $l6
                                  i32.const 3
                                  i32.shl
                                  local.tee $l5
                                  i32.const 1060644
                                  i32.add
                                  i32.load
                                  local.tee $l4
                                  i32.load offset=8
                                  local.tee $p0
                                  local.get $l5
                                  i32.const 1060636
                                  i32.add
                                  local.tee $l5
                                  i32.ne
                                  br_if $B17
                                  i32.const 0
                                  local.get $l2
                                  i32.const -2
                                  local.get $l6
                                  i32.rotl
                                  i32.and
                                  local.tee $l2
                                  i32.store offset=1060596
                                  br $B16
                                end
                                i32.const 0
                                i32.load offset=1060612
                                local.get $p0
                                i32.gt_u
                                drop
                                local.get $l5
                                local.get $p0
                                i32.store offset=8
                                local.get $p0
                                local.get $l5
                                i32.store offset=12
                              end
                              local.get $l4
                              i32.const 8
                              i32.add
                              local.set $p0
                              local.get $l4
                              local.get $l3
                              i32.const 3
                              i32.or
                              i32.store offset=4
                              local.get $l4
                              local.get $l6
                              i32.const 3
                              i32.shl
                              local.tee $l6
                              i32.add
                              local.get $l6
                              local.get $l3
                              i32.sub
                              local.tee $l6
                              i32.store
                              local.get $l4
                              local.get $l3
                              i32.add
                              local.tee $l5
                              local.get $l6
                              i32.const 1
                              i32.or
                              i32.store offset=4
                              block $B18
                                local.get $l7
                                i32.eqz
                                br_if $B18
                                local.get $l7
                                i32.const 3
                                i32.shr_u
                                local.tee $l8
                                i32.const 3
                                i32.shl
                                i32.const 1060636
                                i32.add
                                local.set $l3
                                i32.const 0
                                i32.load offset=1060616
                                local.set $l4
                                block $B19
                                  block $B20
                                    local.get $l2
                                    i32.const 1
                                    local.get $l8
                                    i32.shl
                                    local.tee $l8
                                    i32.and
                                    br_if $B20
                                    i32.const 0
                                    local.get $l2
                                    local.get $l8
                                    i32.or
                                    i32.store offset=1060596
                                    local.get $l3
                                    local.set $l8
                                    br $B19
                                  end
                                  local.get $l3
                                  i32.load offset=8
                                  local.set $l8
                                end
                                local.get $l8
                                local.get $l4
                                i32.store offset=12
                                local.get $l3
                                local.get $l4
                                i32.store offset=8
                                local.get $l4
                                local.get $l3
                                i32.store offset=12
                                local.get $l4
                                local.get $l8
                                i32.store offset=8
                              end
                              i32.const 0
                              local.get $l5
                              i32.store offset=1060616
                              i32.const 0
                              local.get $l6
                              i32.store offset=1060604
                              br $B0
                            end
                            i32.const 0
                            i32.load offset=1060600
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
                            local.tee $l4
                            i32.const 5
                            i32.shr_u
                            i32.const 8
                            i32.and
                            local.tee $l6
                            local.get $p0
                            i32.or
                            local.get $l4
                            local.get $l6
                            i32.shr_u
                            local.tee $p0
                            i32.const 2
                            i32.shr_u
                            i32.const 4
                            i32.and
                            local.tee $l4
                            i32.or
                            local.get $p0
                            local.get $l4
                            i32.shr_u
                            local.tee $p0
                            i32.const 1
                            i32.shr_u
                            i32.const 2
                            i32.and
                            local.tee $l4
                            i32.or
                            local.get $p0
                            local.get $l4
                            i32.shr_u
                            local.tee $p0
                            i32.const 1
                            i32.shr_u
                            i32.const 1
                            i32.and
                            local.tee $l4
                            i32.or
                            local.get $p0
                            local.get $l4
                            i32.shr_u
                            i32.add
                            i32.const 2
                            i32.shl
                            i32.const 1060900
                            i32.add
                            i32.load
                            local.tee $l5
                            i32.load offset=4
                            i32.const -8
                            i32.and
                            local.get $l3
                            i32.sub
                            local.set $l4
                            local.get $l5
                            local.set $l6
                            block $B21
                              loop $L22
                                block $B23
                                  local.get $l6
                                  i32.load offset=16
                                  local.tee $p0
                                  br_if $B23
                                  local.get $l6
                                  i32.const 20
                                  i32.add
                                  i32.load
                                  local.tee $p0
                                  i32.eqz
                                  br_if $B21
                                end
                                local.get $p0
                                i32.load offset=4
                                i32.const -8
                                i32.and
                                local.get $l3
                                i32.sub
                                local.tee $l6
                                local.get $l4
                                local.get $l6
                                local.get $l4
                                i32.lt_u
                                local.tee $l6
                                select
                                local.set $l4
                                local.get $p0
                                local.get $l5
                                local.get $l6
                                select
                                local.set $l5
                                local.get $p0
                                local.set $l6
                                br $L22
                              end
                            end
                            local.get $l5
                            i32.load offset=24
                            local.set $l10
                            block $B24
                              local.get $l5
                              i32.load offset=12
                              local.tee $l8
                              local.get $l5
                              i32.eq
                              br_if $B24
                              block $B25
                                i32.const 0
                                i32.load offset=1060612
                                local.get $l5
                                i32.load offset=8
                                local.tee $p0
                                i32.gt_u
                                br_if $B25
                                local.get $p0
                                i32.load offset=12
                                local.get $l5
                                i32.ne
                                drop
                              end
                              local.get $l8
                              local.get $p0
                              i32.store offset=8
                              local.get $p0
                              local.get $l8
                              i32.store offset=12
                              br $B1
                            end
                            block $B26
                              local.get $l5
                              i32.const 20
                              i32.add
                              local.tee $l6
                              i32.load
                              local.tee $p0
                              br_if $B26
                              local.get $l5
                              i32.load offset=16
                              local.tee $p0
                              i32.eqz
                              br_if $B9
                              local.get $l5
                              i32.const 16
                              i32.add
                              local.set $l6
                            end
                            loop $L27
                              local.get $l6
                              local.set $l11
                              local.get $p0
                              local.tee $l8
                              i32.const 20
                              i32.add
                              local.tee $l6
                              i32.load
                              local.tee $p0
                              br_if $L27
                              local.get $l8
                              i32.const 16
                              i32.add
                              local.set $l6
                              local.get $l8
                              i32.load offset=16
                              local.tee $p0
                              br_if $L27
                            end
                            local.get $l11
                            i32.const 0
                            i32.store
                            br $B1
                          end
                          i32.const -1
                          local.set $l3
                          local.get $p0
                          i32.const -65
                          i32.gt_u
                          br_if $B10
                          local.get $p0
                          i32.const 19
                          i32.add
                          local.tee $p0
                          i32.const -16
                          i32.and
                          local.set $l3
                          i32.const 0
                          i32.load offset=1060600
                          local.tee $l7
                          i32.eqz
                          br_if $B10
                          i32.const 0
                          local.set $l11
                          block $B28
                            local.get $p0
                            i32.const 8
                            i32.shr_u
                            local.tee $p0
                            i32.eqz
                            br_if $B28
                            i32.const 31
                            local.set $l11
                            local.get $l3
                            i32.const 16777215
                            i32.gt_u
                            br_if $B28
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
                            local.tee $l6
                            local.get $l6
                            i32.const 245760
                            i32.add
                            i32.const 16
                            i32.shr_u
                            i32.const 2
                            i32.and
                            local.tee $l6
                            i32.shl
                            i32.const 15
                            i32.shr_u
                            local.get $p0
                            local.get $l4
                            i32.or
                            local.get $l6
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
                            local.set $l11
                          end
                          i32.const 0
                          local.get $l3
                          i32.sub
                          local.set $l6
                          block $B29
                            block $B30
                              block $B31
                                block $B32
                                  local.get $l11
                                  i32.const 2
                                  i32.shl
                                  i32.const 1060900
                                  i32.add
                                  i32.load
                                  local.tee $l4
                                  br_if $B32
                                  i32.const 0
                                  local.set $p0
                                  i32.const 0
                                  local.set $l8
                                  br $B31
                                end
                                local.get $l3
                                i32.const 0
                                i32.const 25
                                local.get $l11
                                i32.const 1
                                i32.shr_u
                                i32.sub
                                local.get $l11
                                i32.const 31
                                i32.eq
                                select
                                i32.shl
                                local.set $l5
                                i32.const 0
                                local.set $p0
                                i32.const 0
                                local.set $l8
                                loop $L33
                                  block $B34
                                    local.get $l4
                                    i32.load offset=4
                                    i32.const -8
                                    i32.and
                                    local.get $l3
                                    i32.sub
                                    local.tee $l2
                                    local.get $l6
                                    i32.ge_u
                                    br_if $B34
                                    local.get $l2
                                    local.set $l6
                                    local.get $l4
                                    local.set $l8
                                    local.get $l2
                                    br_if $B34
                                    i32.const 0
                                    local.set $l6
                                    local.get $l4
                                    local.set $l8
                                    local.get $l4
                                    local.set $p0
                                    br $B30
                                  end
                                  local.get $p0
                                  local.get $l4
                                  i32.const 20
                                  i32.add
                                  i32.load
                                  local.tee $l2
                                  local.get $l2
                                  local.get $l4
                                  local.get $l5
                                  i32.const 29
                                  i32.shr_u
                                  i32.const 4
                                  i32.and
                                  i32.add
                                  i32.const 16
                                  i32.add
                                  i32.load
                                  local.tee $l4
                                  i32.eq
                                  select
                                  local.get $p0
                                  local.get $l2
                                  select
                                  local.set $p0
                                  local.get $l5
                                  local.get $l4
                                  i32.const 0
                                  i32.ne
                                  i32.shl
                                  local.set $l5
                                  local.get $l4
                                  br_if $L33
                                end
                              end
                              block $B35
                                local.get $p0
                                local.get $l8
                                i32.or
                                br_if $B35
                                i32.const 2
                                local.get $l11
                                i32.shl
                                local.tee $p0
                                i32.const 0
                                local.get $p0
                                i32.sub
                                i32.or
                                local.get $l7
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
                                local.tee $l4
                                i32.const 5
                                i32.shr_u
                                i32.const 8
                                i32.and
                                local.tee $l5
                                local.get $p0
                                i32.or
                                local.get $l4
                                local.get $l5
                                i32.shr_u
                                local.tee $p0
                                i32.const 2
                                i32.shr_u
                                i32.const 4
                                i32.and
                                local.tee $l4
                                i32.or
                                local.get $p0
                                local.get $l4
                                i32.shr_u
                                local.tee $p0
                                i32.const 1
                                i32.shr_u
                                i32.const 2
                                i32.and
                                local.tee $l4
                                i32.or
                                local.get $p0
                                local.get $l4
                                i32.shr_u
                                local.tee $p0
                                i32.const 1
                                i32.shr_u
                                i32.const 1
                                i32.and
                                local.tee $l4
                                i32.or
                                local.get $p0
                                local.get $l4
                                i32.shr_u
                                i32.add
                                i32.const 2
                                i32.shl
                                i32.const 1060900
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
                              local.get $l3
                              i32.sub
                              local.tee $l2
                              local.get $l6
                              i32.lt_u
                              local.set $l5
                              block $B37
                                local.get $p0
                                i32.load offset=16
                                local.tee $l4
                                br_if $B37
                                local.get $p0
                                i32.const 20
                                i32.add
                                i32.load
                                local.set $l4
                              end
                              local.get $l2
                              local.get $l6
                              local.get $l5
                              select
                              local.set $l6
                              local.get $p0
                              local.get $l8
                              local.get $l5
                              select
                              local.set $l8
                              local.get $l4
                              local.set $p0
                              local.get $l4
                              br_if $L36
                            end
                          end
                          local.get $l8
                          i32.eqz
                          br_if $B10
                          local.get $l6
                          i32.const 0
                          i32.load offset=1060604
                          local.get $l3
                          i32.sub
                          i32.ge_u
                          br_if $B10
                          local.get $l8
                          i32.load offset=24
                          local.set $l11
                          block $B38
                            local.get $l8
                            i32.load offset=12
                            local.tee $l5
                            local.get $l8
                            i32.eq
                            br_if $B38
                            block $B39
                              i32.const 0
                              i32.load offset=1060612
                              local.get $l8
                              i32.load offset=8
                              local.tee $p0
                              i32.gt_u
                              br_if $B39
                              local.get $p0
                              i32.load offset=12
                              local.get $l8
                              i32.ne
                              drop
                            end
                            local.get $l5
                            local.get $p0
                            i32.store offset=8
                            local.get $p0
                            local.get $l5
                            i32.store offset=12
                            br $B2
                          end
                          block $B40
                            local.get $l8
                            i32.const 20
                            i32.add
                            local.tee $l4
                            i32.load
                            local.tee $p0
                            br_if $B40
                            local.get $l8
                            i32.load offset=16
                            local.tee $p0
                            i32.eqz
                            br_if $B8
                            local.get $l8
                            i32.const 16
                            i32.add
                            local.set $l4
                          end
                          loop $L41
                            local.get $l4
                            local.set $l2
                            local.get $p0
                            local.tee $l5
                            i32.const 20
                            i32.add
                            local.tee $l4
                            i32.load
                            local.tee $p0
                            br_if $L41
                            local.get $l5
                            i32.const 16
                            i32.add
                            local.set $l4
                            local.get $l5
                            i32.load offset=16
                            local.tee $p0
                            br_if $L41
                          end
                          local.get $l2
                          i32.const 0
                          i32.store
                          br $B2
                        end
                        block $B42
                          i32.const 0
                          i32.load offset=1060604
                          local.tee $p0
                          local.get $l3
                          i32.lt_u
                          br_if $B42
                          i32.const 0
                          i32.load offset=1060616
                          local.set $l4
                          block $B43
                            block $B44
                              local.get $p0
                              local.get $l3
                              i32.sub
                              local.tee $l6
                              i32.const 16
                              i32.lt_u
                              br_if $B44
                              local.get $l4
                              local.get $l3
                              i32.add
                              local.tee $l5
                              local.get $l6
                              i32.const 1
                              i32.or
                              i32.store offset=4
                              i32.const 0
                              local.get $l6
                              i32.store offset=1060604
                              i32.const 0
                              local.get $l5
                              i32.store offset=1060616
                              local.get $l4
                              local.get $p0
                              i32.add
                              local.get $l6
                              i32.store
                              local.get $l4
                              local.get $l3
                              i32.const 3
                              i32.or
                              i32.store offset=4
                              br $B43
                            end
                            local.get $l4
                            local.get $p0
                            i32.const 3
                            i32.or
                            i32.store offset=4
                            local.get $l4
                            local.get $p0
                            i32.add
                            local.tee $p0
                            local.get $p0
                            i32.load offset=4
                            i32.const 1
                            i32.or
                            i32.store offset=4
                            i32.const 0
                            i32.const 0
                            i32.store offset=1060616
                            i32.const 0
                            i32.const 0
                            i32.store offset=1060604
                          end
                          local.get $l4
                          i32.const 8
                          i32.add
                          local.set $p0
                          br $B0
                        end
                        block $B45
                          i32.const 0
                          i32.load offset=1060608
                          local.tee $l5
                          local.get $l3
                          i32.le_u
                          br_if $B45
                          i32.const 0
                          i32.load offset=1060620
                          local.tee $p0
                          local.get $l3
                          i32.add
                          local.tee $l4
                          local.get $l5
                          local.get $l3
                          i32.sub
                          local.tee $l6
                          i32.const 1
                          i32.or
                          i32.store offset=4
                          i32.const 0
                          local.get $l6
                          i32.store offset=1060608
                          i32.const 0
                          local.get $l4
                          i32.store offset=1060620
                          local.get $p0
                          local.get $l3
                          i32.const 3
                          i32.or
                          i32.store offset=4
                          local.get $p0
                          i32.const 8
                          i32.add
                          local.set $p0
                          br $B0
                        end
                        block $B46
                          block $B47
                            i32.const 0
                            i32.load offset=1061068
                            i32.eqz
                            br_if $B47
                            i32.const 0
                            i32.load offset=1061076
                            local.set $l4
                            br $B46
                          end
                          i32.const 0
                          i64.const -1
                          i64.store offset=1061080 align=4
                          i32.const 0
                          i64.const 281474976776192
                          i64.store offset=1061072 align=4
                          i32.const 0
                          local.get $l1
                          i32.const 12
                          i32.add
                          i32.const -16
                          i32.and
                          i32.const 1431655768
                          i32.xor
                          i32.store offset=1061068
                          i32.const 0
                          i32.const 0
                          i32.store offset=1061088
                          i32.const 0
                          i32.const 0
                          i32.store offset=1061040
                          i32.const 65536
                          local.set $l4
                        end
                        i32.const 0
                        local.set $p0
                        block $B48
                          local.get $l4
                          local.get $l3
                          i32.const 71
                          i32.add
                          local.tee $l7
                          i32.add
                          local.tee $l2
                          i32.const 0
                          local.get $l4
                          i32.sub
                          local.tee $l11
                          i32.and
                          local.tee $l8
                          local.get $l3
                          i32.gt_u
                          br_if $B48
                          i32.const 0
                          i32.const 48
                          i32.store offset=1061092
                          br $B0
                        end
                        block $B49
                          i32.const 0
                          i32.load offset=1061036
                          local.tee $p0
                          i32.eqz
                          br_if $B49
                          block $B50
                            i32.const 0
                            i32.load offset=1061028
                            local.tee $l4
                            local.get $l8
                            i32.add
                            local.tee $l6
                            local.get $l4
                            i32.le_u
                            br_if $B50
                            local.get $l6
                            local.get $p0
                            i32.le_u
                            br_if $B49
                          end
                          i32.const 0
                          local.set $p0
                          i32.const 0
                          i32.const 48
                          i32.store offset=1061092
                          br $B0
                        end
                        i32.const 0
                        i32.load8_u offset=1061040
                        i32.const 4
                        i32.and
                        br_if $B5
                        block $B51
                          block $B52
                            block $B53
                              i32.const 0
                              i32.load offset=1060620
                              local.tee $l4
                              i32.eqz
                              br_if $B53
                              i32.const 1061044
                              local.set $p0
                              loop $L54
                                block $B55
                                  local.get $p0
                                  i32.load
                                  local.tee $l6
                                  local.get $l4
                                  i32.gt_u
                                  br_if $B55
                                  local.get $l6
                                  local.get $p0
                                  i32.load offset=4
                                  i32.add
                                  local.get $l4
                                  i32.gt_u
                                  br_if $B52
                                end
                                local.get $p0
                                i32.load offset=8
                                local.tee $p0
                                br_if $L54
                              end
                            end
                            i32.const 0
                            call $sbrk
                            local.tee $l5
                            i32.const -1
                            i32.eq
                            br_if $B6
                            local.get $l8
                            local.set $l2
                            block $B56
                              i32.const 0
                              i32.load offset=1061072
                              local.tee $p0
                              i32.const -1
                              i32.add
                              local.tee $l4
                              local.get $l5
                              i32.and
                              i32.eqz
                              br_if $B56
                              local.get $l8
                              local.get $l5
                              i32.sub
                              local.get $l4
                              local.get $l5
                              i32.add
                              i32.const 0
                              local.get $p0
                              i32.sub
                              i32.and
                              i32.add
                              local.set $l2
                            end
                            local.get $l2
                            local.get $l3
                            i32.le_u
                            br_if $B6
                            local.get $l2
                            i32.const 2147483646
                            i32.gt_u
                            br_if $B6
                            block $B57
                              i32.const 0
                              i32.load offset=1061036
                              local.tee $p0
                              i32.eqz
                              br_if $B57
                              i32.const 0
                              i32.load offset=1061028
                              local.tee $l4
                              local.get $l2
                              i32.add
                              local.tee $l6
                              local.get $l4
                              i32.le_u
                              br_if $B6
                              local.get $l6
                              local.get $p0
                              i32.gt_u
                              br_if $B6
                            end
                            local.get $l2
                            call $sbrk
                            local.tee $p0
                            local.get $l5
                            i32.ne
                            br_if $B51
                            br $B4
                          end
                          local.get $l2
                          local.get $l5
                          i32.sub
                          local.get $l11
                          i32.and
                          local.tee $l2
                          i32.const 2147483646
                          i32.gt_u
                          br_if $B6
                          local.get $l2
                          call $sbrk
                          local.tee $l5
                          local.get $p0
                          i32.load
                          local.get $p0
                          i32.load offset=4
                          i32.add
                          i32.eq
                          br_if $B7
                          local.get $l5
                          local.set $p0
                        end
                        local.get $p0
                        local.set $l5
                        block $B58
                          local.get $l3
                          i32.const 72
                          i32.add
                          local.get $l2
                          i32.le_u
                          br_if $B58
                          local.get $l2
                          i32.const 2147483646
                          i32.gt_u
                          br_if $B58
                          local.get $l5
                          i32.const -1
                          i32.eq
                          br_if $B58
                          local.get $l7
                          local.get $l2
                          i32.sub
                          i32.const 0
                          i32.load offset=1061076
                          local.tee $p0
                          i32.add
                          i32.const 0
                          local.get $p0
                          i32.sub
                          i32.and
                          local.tee $p0
                          i32.const 2147483646
                          i32.gt_u
                          br_if $B4
                          block $B59
                            local.get $p0
                            call $sbrk
                            i32.const -1
                            i32.eq
                            br_if $B59
                            local.get $p0
                            local.get $l2
                            i32.add
                            local.set $l2
                            br $B4
                          end
                          i32.const 0
                          local.get $l2
                          i32.sub
                          call $sbrk
                          drop
                          br $B6
                        end
                        local.get $l5
                        i32.const -1
                        i32.ne
                        br_if $B4
                        br $B6
                      end
                      i32.const 0
                      local.set $l8
                      br $B1
                    end
                    i32.const 0
                    local.set $l5
                    br $B2
                  end
                  local.get $l5
                  i32.const -1
                  i32.ne
                  br_if $B4
                end
                i32.const 0
                i32.const 0
                i32.load offset=1061040
                i32.const 4
                i32.or
                i32.store offset=1061040
              end
              local.get $l8
              i32.const 2147483646
              i32.gt_u
              br_if $B3
              local.get $l8
              call $sbrk
              local.tee $l5
              i32.const 0
              call $sbrk
              local.tee $p0
              i32.ge_u
              br_if $B3
              local.get $l5
              i32.const -1
              i32.eq
              br_if $B3
              local.get $p0
              i32.const -1
              i32.eq
              br_if $B3
              local.get $p0
              local.get $l5
              i32.sub
              local.tee $l2
              local.get $l3
              i32.const 56
              i32.add
              i32.le_u
              br_if $B3
            end
            i32.const 0
            i32.const 0
            i32.load offset=1061028
            local.get $l2
            i32.add
            local.tee $p0
            i32.store offset=1061028
            block $B60
              local.get $p0
              i32.const 0
              i32.load offset=1061032
              i32.le_u
              br_if $B60
              i32.const 0
              local.get $p0
              i32.store offset=1061032
            end
            block $B61
              block $B62
                block $B63
                  block $B64
                    i32.const 0
                    i32.load offset=1060620
                    local.tee $l4
                    i32.eqz
                    br_if $B64
                    i32.const 1061044
                    local.set $p0
                    loop $L65
                      local.get $l5
                      local.get $p0
                      i32.load
                      local.tee $l6
                      local.get $p0
                      i32.load offset=4
                      local.tee $l8
                      i32.add
                      i32.eq
                      br_if $B63
                      local.get $p0
                      i32.load offset=8
                      local.tee $p0
                      br_if $L65
                      br $B62
                    end
                  end
                  block $B66
                    block $B67
                      i32.const 0
                      i32.load offset=1060612
                      local.tee $p0
                      i32.eqz
                      br_if $B67
                      local.get $l5
                      local.get $p0
                      i32.ge_u
                      br_if $B66
                    end
                    i32.const 0
                    local.get $l5
                    i32.store offset=1060612
                  end
                  i32.const 0
                  local.set $p0
                  i32.const 0
                  local.get $l2
                  i32.store offset=1061048
                  i32.const 0
                  local.get $l5
                  i32.store offset=1061044
                  i32.const 0
                  i32.const -1
                  i32.store offset=1060628
                  i32.const 0
                  i32.const 0
                  i32.load offset=1061068
                  i32.store offset=1060632
                  i32.const 0
                  i32.const 0
                  i32.store offset=1061056
                  loop $L68
                    local.get $p0
                    i32.const 1060644
                    i32.add
                    local.get $p0
                    i32.const 1060636
                    i32.add
                    local.tee $l4
                    i32.store
                    local.get $p0
                    i32.const 1060648
                    i32.add
                    local.get $l4
                    i32.store
                    local.get $p0
                    i32.const 8
                    i32.add
                    local.tee $p0
                    i32.const 256
                    i32.ne
                    br_if $L68
                  end
                  local.get $l5
                  i32.const -8
                  local.get $l5
                  i32.sub
                  i32.const 15
                  i32.and
                  i32.const 0
                  local.get $l5
                  i32.const 8
                  i32.add
                  i32.const 15
                  i32.and
                  select
                  local.tee $p0
                  i32.add
                  local.tee $l4
                  local.get $l2
                  i32.const -56
                  i32.add
                  local.tee $l6
                  local.get $p0
                  i32.sub
                  local.tee $p0
                  i32.const 1
                  i32.or
                  i32.store offset=4
                  i32.const 0
                  i32.const 0
                  i32.load offset=1061084
                  i32.store offset=1060624
                  i32.const 0
                  local.get $p0
                  i32.store offset=1060608
                  i32.const 0
                  local.get $l4
                  i32.store offset=1060620
                  local.get $l5
                  local.get $l6
                  i32.add
                  i32.const 56
                  i32.store offset=4
                  br $B61
                end
                local.get $p0
                i32.load8_u offset=12
                i32.const 8
                i32.and
                br_if $B62
                local.get $l5
                local.get $l4
                i32.le_u
                br_if $B62
                local.get $l6
                local.get $l4
                i32.gt_u
                br_if $B62
                local.get $l4
                i32.const -8
                local.get $l4
                i32.sub
                i32.const 15
                i32.and
                i32.const 0
                local.get $l4
                i32.const 8
                i32.add
                i32.const 15
                i32.and
                select
                local.tee $l6
                i32.add
                local.tee $l5
                i32.const 0
                i32.load offset=1060608
                local.get $l2
                i32.add
                local.tee $l11
                local.get $l6
                i32.sub
                local.tee $l6
                i32.const 1
                i32.or
                i32.store offset=4
                local.get $p0
                local.get $l8
                local.get $l2
                i32.add
                i32.store offset=4
                i32.const 0
                i32.const 0
                i32.load offset=1061084
                i32.store offset=1060624
                i32.const 0
                local.get $l6
                i32.store offset=1060608
                i32.const 0
                local.get $l5
                i32.store offset=1060620
                local.get $l4
                local.get $l11
                i32.add
                i32.const 56
                i32.store offset=4
                br $B61
              end
              block $B69
                local.get $l5
                i32.const 0
                i32.load offset=1060612
                local.tee $l8
                i32.ge_u
                br_if $B69
                i32.const 0
                local.get $l5
                i32.store offset=1060612
                local.get $l5
                local.set $l8
              end
              local.get $l5
              local.get $l2
              i32.add
              local.set $l6
              i32.const 1061044
              local.set $p0
              block $B70
                block $B71
                  block $B72
                    block $B73
                      block $B74
                        block $B75
                          block $B76
                            loop $L77
                              local.get $p0
                              i32.load
                              local.get $l6
                              i32.eq
                              br_if $B76
                              local.get $p0
                              i32.load offset=8
                              local.tee $p0
                              br_if $L77
                              br $B75
                            end
                          end
                          local.get $p0
                          i32.load8_u offset=12
                          i32.const 8
                          i32.and
                          i32.eqz
                          br_if $B74
                        end
                        i32.const 1061044
                        local.set $p0
                        loop $L78
                          block $B79
                            local.get $p0
                            i32.load
                            local.tee $l6
                            local.get $l4
                            i32.gt_u
                            br_if $B79
                            local.get $l6
                            local.get $p0
                            i32.load offset=4
                            i32.add
                            local.tee $l6
                            local.get $l4
                            i32.gt_u
                            br_if $B73
                          end
                          local.get $p0
                          i32.load offset=8
                          local.set $p0
                          br $L78
                        end
                      end
                      local.get $p0
                      local.get $l5
                      i32.store
                      local.get $p0
                      local.get $p0
                      i32.load offset=4
                      local.get $l2
                      i32.add
                      i32.store offset=4
                      local.get $l5
                      i32.const -8
                      local.get $l5
                      i32.sub
                      i32.const 15
                      i32.and
                      i32.const 0
                      local.get $l5
                      i32.const 8
                      i32.add
                      i32.const 15
                      i32.and
                      select
                      i32.add
                      local.tee $l11
                      local.get $l3
                      i32.const 3
                      i32.or
                      i32.store offset=4
                      local.get $l6
                      i32.const -8
                      local.get $l6
                      i32.sub
                      i32.const 15
                      i32.and
                      i32.const 0
                      local.get $l6
                      i32.const 8
                      i32.add
                      i32.const 15
                      i32.and
                      select
                      i32.add
                      local.tee $l5
                      local.get $l11
                      i32.sub
                      local.get $l3
                      i32.sub
                      local.set $p0
                      local.get $l11
                      local.get $l3
                      i32.add
                      local.set $l6
                      block $B80
                        local.get $l4
                        local.get $l5
                        i32.ne
                        br_if $B80
                        i32.const 0
                        local.get $l6
                        i32.store offset=1060620
                        i32.const 0
                        i32.const 0
                        i32.load offset=1060608
                        local.get $p0
                        i32.add
                        local.tee $p0
                        i32.store offset=1060608
                        local.get $l6
                        local.get $p0
                        i32.const 1
                        i32.or
                        i32.store offset=4
                        br $B71
                      end
                      block $B81
                        i32.const 0
                        i32.load offset=1060616
                        local.get $l5
                        i32.ne
                        br_if $B81
                        i32.const 0
                        local.get $l6
                        i32.store offset=1060616
                        i32.const 0
                        i32.const 0
                        i32.load offset=1060604
                        local.get $p0
                        i32.add
                        local.tee $p0
                        i32.store offset=1060604
                        local.get $l6
                        local.get $p0
                        i32.const 1
                        i32.or
                        i32.store offset=4
                        local.get $l6
                        local.get $p0
                        i32.add
                        local.get $p0
                        i32.store
                        br $B71
                      end
                      block $B82
                        local.get $l5
                        i32.load offset=4
                        local.tee $l4
                        i32.const 3
                        i32.and
                        i32.const 1
                        i32.ne
                        br_if $B82
                        local.get $l4
                        i32.const -8
                        i32.and
                        local.set $l7
                        block $B83
                          block $B84
                            local.get $l4
                            i32.const 255
                            i32.gt_u
                            br_if $B84
                            local.get $l5
                            i32.load offset=12
                            local.set $l3
                            block $B85
                              local.get $l5
                              i32.load offset=8
                              local.tee $l2
                              local.get $l4
                              i32.const 3
                              i32.shr_u
                              local.tee $l9
                              i32.const 3
                              i32.shl
                              i32.const 1060636
                              i32.add
                              local.tee $l4
                              i32.eq
                              br_if $B85
                              local.get $l8
                              local.get $l2
                              i32.gt_u
                              drop
                            end
                            block $B86
                              local.get $l3
                              local.get $l2
                              i32.ne
                              br_if $B86
                              i32.const 0
                              i32.const 0
                              i32.load offset=1060596
                              i32.const -2
                              local.get $l9
                              i32.rotl
                              i32.and
                              i32.store offset=1060596
                              br $B83
                            end
                            block $B87
                              local.get $l3
                              local.get $l4
                              i32.eq
                              br_if $B87
                              local.get $l8
                              local.get $l3
                              i32.gt_u
                              drop
                            end
                            local.get $l3
                            local.get $l2
                            i32.store offset=8
                            local.get $l2
                            local.get $l3
                            i32.store offset=12
                            br $B83
                          end
                          local.get $l5
                          i32.load offset=24
                          local.set $l9
                          block $B88
                            block $B89
                              local.get $l5
                              i32.load offset=12
                              local.tee $l2
                              local.get $l5
                              i32.eq
                              br_if $B89
                              block $B90
                                local.get $l8
                                local.get $l5
                                i32.load offset=8
                                local.tee $l4
                                i32.gt_u
                                br_if $B90
                                local.get $l4
                                i32.load offset=12
                                local.get $l5
                                i32.ne
                                drop
                              end
                              local.get $l2
                              local.get $l4
                              i32.store offset=8
                              local.get $l4
                              local.get $l2
                              i32.store offset=12
                              br $B88
                            end
                            block $B91
                              local.get $l5
                              i32.const 20
                              i32.add
                              local.tee $l4
                              i32.load
                              local.tee $l3
                              br_if $B91
                              local.get $l5
                              i32.const 16
                              i32.add
                              local.tee $l4
                              i32.load
                              local.tee $l3
                              br_if $B91
                              i32.const 0
                              local.set $l2
                              br $B88
                            end
                            loop $L92
                              local.get $l4
                              local.set $l8
                              local.get $l3
                              local.tee $l2
                              i32.const 20
                              i32.add
                              local.tee $l4
                              i32.load
                              local.tee $l3
                              br_if $L92
                              local.get $l2
                              i32.const 16
                              i32.add
                              local.set $l4
                              local.get $l2
                              i32.load offset=16
                              local.tee $l3
                              br_if $L92
                            end
                            local.get $l8
                            i32.const 0
                            i32.store
                          end
                          local.get $l9
                          i32.eqz
                          br_if $B83
                          block $B93
                            block $B94
                              local.get $l5
                              i32.load offset=28
                              local.tee $l3
                              i32.const 2
                              i32.shl
                              i32.const 1060900
                              i32.add
                              local.tee $l4
                              i32.load
                              local.get $l5
                              i32.ne
                              br_if $B94
                              local.get $l4
                              local.get $l2
                              i32.store
                              local.get $l2
                              br_if $B93
                              i32.const 0
                              i32.const 0
                              i32.load offset=1060600
                              i32.const -2
                              local.get $l3
                              i32.rotl
                              i32.and
                              i32.store offset=1060600
                              br $B83
                            end
                            local.get $l9
                            i32.const 16
                            i32.const 20
                            local.get $l9
                            i32.load offset=16
                            local.get $l5
                            i32.eq
                            select
                            i32.add
                            local.get $l2
                            i32.store
                            local.get $l2
                            i32.eqz
                            br_if $B83
                          end
                          local.get $l2
                          local.get $l9
                          i32.store offset=24
                          block $B95
                            local.get $l5
                            i32.load offset=16
                            local.tee $l4
                            i32.eqz
                            br_if $B95
                            local.get $l2
                            local.get $l4
                            i32.store offset=16
                            local.get $l4
                            local.get $l2
                            i32.store offset=24
                          end
                          local.get $l5
                          i32.load offset=20
                          local.tee $l4
                          i32.eqz
                          br_if $B83
                          local.get $l2
                          i32.const 20
                          i32.add
                          local.get $l4
                          i32.store
                          local.get $l4
                          local.get $l2
                          i32.store offset=24
                        end
                        local.get $l7
                        local.get $p0
                        i32.add
                        local.set $p0
                        local.get $l5
                        local.get $l7
                        i32.add
                        local.set $l5
                      end
                      local.get $l5
                      local.get $l5
                      i32.load offset=4
                      i32.const -2
                      i32.and
                      i32.store offset=4
                      local.get $l6
                      local.get $p0
                      i32.add
                      local.get $p0
                      i32.store
                      local.get $l6
                      local.get $p0
                      i32.const 1
                      i32.or
                      i32.store offset=4
                      block $B96
                        local.get $p0
                        i32.const 255
                        i32.gt_u
                        br_if $B96
                        local.get $p0
                        i32.const 3
                        i32.shr_u
                        local.tee $l4
                        i32.const 3
                        i32.shl
                        i32.const 1060636
                        i32.add
                        local.set $p0
                        block $B97
                          block $B98
                            i32.const 0
                            i32.load offset=1060596
                            local.tee $l3
                            i32.const 1
                            local.get $l4
                            i32.shl
                            local.tee $l4
                            i32.and
                            br_if $B98
                            i32.const 0
                            local.get $l3
                            local.get $l4
                            i32.or
                            i32.store offset=1060596
                            local.get $p0
                            local.set $l4
                            br $B97
                          end
                          local.get $p0
                          i32.load offset=8
                          local.set $l4
                        end
                        local.get $l4
                        local.get $l6
                        i32.store offset=12
                        local.get $p0
                        local.get $l6
                        i32.store offset=8
                        local.get $l6
                        local.get $p0
                        i32.store offset=12
                        local.get $l6
                        local.get $l4
                        i32.store offset=8
                        br $B71
                      end
                      i32.const 0
                      local.set $l4
                      block $B99
                        local.get $p0
                        i32.const 8
                        i32.shr_u
                        local.tee $l3
                        i32.eqz
                        br_if $B99
                        i32.const 31
                        local.set $l4
                        local.get $p0
                        i32.const 16777215
                        i32.gt_u
                        br_if $B99
                        local.get $l3
                        local.get $l3
                        i32.const 1048320
                        i32.add
                        i32.const 16
                        i32.shr_u
                        i32.const 8
                        i32.and
                        local.tee $l4
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
                        local.tee $l5
                        local.get $l5
                        i32.const 245760
                        i32.add
                        i32.const 16
                        i32.shr_u
                        i32.const 2
                        i32.and
                        local.tee $l5
                        i32.shl
                        i32.const 15
                        i32.shr_u
                        local.get $l3
                        local.get $l4
                        i32.or
                        local.get $l5
                        i32.or
                        i32.sub
                        local.tee $l4
                        i32.const 1
                        i32.shl
                        local.get $p0
                        local.get $l4
                        i32.const 21
                        i32.add
                        i32.shr_u
                        i32.const 1
                        i32.and
                        i32.or
                        i32.const 28
                        i32.add
                        local.set $l4
                      end
                      local.get $l6
                      local.get $l4
                      i32.store offset=28
                      local.get $l6
                      i64.const 0
                      i64.store offset=16 align=4
                      local.get $l4
                      i32.const 2
                      i32.shl
                      i32.const 1060900
                      i32.add
                      local.set $l3
                      block $B100
                        i32.const 0
                        i32.load offset=1060600
                        local.tee $l5
                        i32.const 1
                        local.get $l4
                        i32.shl
                        local.tee $l8
                        i32.and
                        br_if $B100
                        local.get $l3
                        local.get $l6
                        i32.store
                        i32.const 0
                        local.get $l5
                        local.get $l8
                        i32.or
                        i32.store offset=1060600
                        local.get $l6
                        local.get $l3
                        i32.store offset=24
                        local.get $l6
                        local.get $l6
                        i32.store offset=8
                        local.get $l6
                        local.get $l6
                        i32.store offset=12
                        br $B71
                      end
                      local.get $p0
                      i32.const 0
                      i32.const 25
                      local.get $l4
                      i32.const 1
                      i32.shr_u
                      i32.sub
                      local.get $l4
                      i32.const 31
                      i32.eq
                      select
                      i32.shl
                      local.set $l4
                      local.get $l3
                      i32.load
                      local.set $l5
                      loop $L101
                        local.get $l5
                        local.tee $l3
                        i32.load offset=4
                        i32.const -8
                        i32.and
                        local.get $p0
                        i32.eq
                        br_if $B72
                        local.get $l4
                        i32.const 29
                        i32.shr_u
                        local.set $l5
                        local.get $l4
                        i32.const 1
                        i32.shl
                        local.set $l4
                        local.get $l3
                        local.get $l5
                        i32.const 4
                        i32.and
                        i32.add
                        i32.const 16
                        i32.add
                        local.tee $l8
                        i32.load
                        local.tee $l5
                        br_if $L101
                      end
                      local.get $l8
                      local.get $l6
                      i32.store
                      local.get $l6
                      local.get $l3
                      i32.store offset=24
                      local.get $l6
                      local.get $l6
                      i32.store offset=12
                      local.get $l6
                      local.get $l6
                      i32.store offset=8
                      br $B71
                    end
                    local.get $l5
                    i32.const -8
                    local.get $l5
                    i32.sub
                    i32.const 15
                    i32.and
                    i32.const 0
                    local.get $l5
                    i32.const 8
                    i32.add
                    i32.const 15
                    i32.and
                    select
                    local.tee $p0
                    i32.add
                    local.tee $l11
                    local.get $l2
                    i32.const -56
                    i32.add
                    local.tee $l8
                    local.get $p0
                    i32.sub
                    local.tee $p0
                    i32.const 1
                    i32.or
                    i32.store offset=4
                    local.get $l5
                    local.get $l8
                    i32.add
                    i32.const 56
                    i32.store offset=4
                    local.get $l4
                    local.get $l6
                    i32.const 55
                    local.get $l6
                    i32.sub
                    i32.const 15
                    i32.and
                    i32.const 0
                    local.get $l6
                    i32.const -55
                    i32.add
                    i32.const 15
                    i32.and
                    select
                    i32.add
                    i32.const -63
                    i32.add
                    local.tee $l8
                    local.get $l8
                    local.get $l4
                    i32.const 16
                    i32.add
                    i32.lt_u
                    select
                    local.tee $l8
                    i32.const 35
                    i32.store offset=4
                    i32.const 0
                    i32.const 0
                    i32.load offset=1061084
                    i32.store offset=1060624
                    i32.const 0
                    local.get $p0
                    i32.store offset=1060608
                    i32.const 0
                    local.get $l11
                    i32.store offset=1060620
                    local.get $l8
                    i32.const 16
                    i32.add
                    i32.const 0
                    i64.load offset=1061052 align=4
                    i64.store align=4
                    local.get $l8
                    i32.const 0
                    i64.load offset=1061044 align=4
                    i64.store offset=8 align=4
                    i32.const 0
                    local.get $l8
                    i32.const 8
                    i32.add
                    i32.store offset=1061052
                    i32.const 0
                    local.get $l2
                    i32.store offset=1061048
                    i32.const 0
                    local.get $l5
                    i32.store offset=1061044
                    i32.const 0
                    i32.const 0
                    i32.store offset=1061056
                    local.get $l8
                    i32.const 36
                    i32.add
                    local.set $p0
                    loop $L102
                      local.get $p0
                      i32.const 7
                      i32.store
                      local.get $p0
                      i32.const 4
                      i32.add
                      local.tee $p0
                      local.get $l6
                      i32.lt_u
                      br_if $L102
                    end
                    local.get $l8
                    local.get $l4
                    i32.eq
                    br_if $B61
                    local.get $l8
                    local.get $l8
                    i32.load offset=4
                    i32.const -2
                    i32.and
                    i32.store offset=4
                    local.get $l8
                    local.get $l8
                    local.get $l4
                    i32.sub
                    local.tee $l2
                    i32.store
                    local.get $l4
                    local.get $l2
                    i32.const 1
                    i32.or
                    i32.store offset=4
                    block $B103
                      local.get $l2
                      i32.const 255
                      i32.gt_u
                      br_if $B103
                      local.get $l2
                      i32.const 3
                      i32.shr_u
                      local.tee $l6
                      i32.const 3
                      i32.shl
                      i32.const 1060636
                      i32.add
                      local.set $p0
                      block $B104
                        block $B105
                          i32.const 0
                          i32.load offset=1060596
                          local.tee $l5
                          i32.const 1
                          local.get $l6
                          i32.shl
                          local.tee $l6
                          i32.and
                          br_if $B105
                          i32.const 0
                          local.get $l5
                          local.get $l6
                          i32.or
                          i32.store offset=1060596
                          local.get $p0
                          local.set $l6
                          br $B104
                        end
                        local.get $p0
                        i32.load offset=8
                        local.set $l6
                      end
                      local.get $l6
                      local.get $l4
                      i32.store offset=12
                      local.get $p0
                      local.get $l4
                      i32.store offset=8
                      local.get $l4
                      local.get $p0
                      i32.store offset=12
                      local.get $l4
                      local.get $l6
                      i32.store offset=8
                      br $B61
                    end
                    i32.const 0
                    local.set $p0
                    block $B106
                      local.get $l2
                      i32.const 8
                      i32.shr_u
                      local.tee $l6
                      i32.eqz
                      br_if $B106
                      i32.const 31
                      local.set $p0
                      local.get $l2
                      i32.const 16777215
                      i32.gt_u
                      br_if $B106
                      local.get $l6
                      local.get $l6
                      i32.const 1048320
                      i32.add
                      i32.const 16
                      i32.shr_u
                      i32.const 8
                      i32.and
                      local.tee $p0
                      i32.shl
                      local.tee $l6
                      local.get $l6
                      i32.const 520192
                      i32.add
                      i32.const 16
                      i32.shr_u
                      i32.const 4
                      i32.and
                      local.tee $l6
                      i32.shl
                      local.tee $l5
                      local.get $l5
                      i32.const 245760
                      i32.add
                      i32.const 16
                      i32.shr_u
                      i32.const 2
                      i32.and
                      local.tee $l5
                      i32.shl
                      i32.const 15
                      i32.shr_u
                      local.get $l6
                      local.get $p0
                      i32.or
                      local.get $l5
                      i32.or
                      i32.sub
                      local.tee $p0
                      i32.const 1
                      i32.shl
                      local.get $l2
                      local.get $p0
                      i32.const 21
                      i32.add
                      i32.shr_u
                      i32.const 1
                      i32.and
                      i32.or
                      i32.const 28
                      i32.add
                      local.set $p0
                    end
                    local.get $l4
                    i64.const 0
                    i64.store offset=16 align=4
                    local.get $l4
                    i32.const 28
                    i32.add
                    local.get $p0
                    i32.store
                    local.get $p0
                    i32.const 2
                    i32.shl
                    i32.const 1060900
                    i32.add
                    local.set $l6
                    block $B107
                      i32.const 0
                      i32.load offset=1060600
                      local.tee $l5
                      i32.const 1
                      local.get $p0
                      i32.shl
                      local.tee $l8
                      i32.and
                      br_if $B107
                      local.get $l6
                      local.get $l4
                      i32.store
                      i32.const 0
                      local.get $l5
                      local.get $l8
                      i32.or
                      i32.store offset=1060600
                      local.get $l4
                      i32.const 24
                      i32.add
                      local.get $l6
                      i32.store
                      local.get $l4
                      local.get $l4
                      i32.store offset=8
                      local.get $l4
                      local.get $l4
                      i32.store offset=12
                      br $B61
                    end
                    local.get $l2
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
                    local.get $l6
                    i32.load
                    local.set $l5
                    loop $L108
                      local.get $l5
                      local.tee $l6
                      i32.load offset=4
                      i32.const -8
                      i32.and
                      local.get $l2
                      i32.eq
                      br_if $B70
                      local.get $p0
                      i32.const 29
                      i32.shr_u
                      local.set $l5
                      local.get $p0
                      i32.const 1
                      i32.shl
                      local.set $p0
                      local.get $l6
                      local.get $l5
                      i32.const 4
                      i32.and
                      i32.add
                      i32.const 16
                      i32.add
                      local.tee $l8
                      i32.load
                      local.tee $l5
                      br_if $L108
                    end
                    local.get $l8
                    local.get $l4
                    i32.store
                    local.get $l4
                    i32.const 24
                    i32.add
                    local.get $l6
                    i32.store
                    local.get $l4
                    local.get $l4
                    i32.store offset=12
                    local.get $l4
                    local.get $l4
                    i32.store offset=8
                    br $B61
                  end
                  local.get $l3
                  i32.load offset=8
                  local.set $p0
                  local.get $l3
                  local.get $l6
                  i32.store offset=8
                  local.get $p0
                  local.get $l6
                  i32.store offset=12
                  local.get $l6
                  i32.const 0
                  i32.store offset=24
                  local.get $l6
                  local.get $p0
                  i32.store offset=8
                  local.get $l6
                  local.get $l3
                  i32.store offset=12
                end
                local.get $l11
                i32.const 8
                i32.add
                local.set $p0
                br $B0
              end
              local.get $l6
              i32.load offset=8
              local.set $p0
              local.get $l6
              local.get $l4
              i32.store offset=8
              local.get $p0
              local.get $l4
              i32.store offset=12
              local.get $l4
              i32.const 24
              i32.add
              i32.const 0
              i32.store
              local.get $l4
              local.get $p0
              i32.store offset=8
              local.get $l4
              local.get $l6
              i32.store offset=12
            end
            i32.const 0
            i32.load offset=1060608
            local.tee $p0
            local.get $l3
            i32.le_u
            br_if $B3
            i32.const 0
            i32.load offset=1060620
            local.tee $l4
            local.get $l3
            i32.add
            local.tee $l6
            local.get $p0
            local.get $l3
            i32.sub
            local.tee $p0
            i32.const 1
            i32.or
            i32.store offset=4
            i32.const 0
            local.get $p0
            i32.store offset=1060608
            i32.const 0
            local.get $l6
            i32.store offset=1060620
            local.get $l4
            local.get $l3
            i32.const 3
            i32.or
            i32.store offset=4
            local.get $l4
            i32.const 8
            i32.add
            local.set $p0
            br $B0
          end
          i32.const 0
          local.set $p0
          i32.const 0
          i32.const 48
          i32.store offset=1061092
          br $B0
        end
        block $B109
          local.get $l11
          i32.eqz
          br_if $B109
          block $B110
            block $B111
              local.get $l8
              local.get $l8
              i32.load offset=28
              local.tee $l4
              i32.const 2
              i32.shl
              i32.const 1060900
              i32.add
              local.tee $p0
              i32.load
              i32.ne
              br_if $B111
              local.get $p0
              local.get $l5
              i32.store
              local.get $l5
              br_if $B110
              i32.const 0
              local.get $l7
              i32.const -2
              local.get $l4
              i32.rotl
              i32.and
              local.tee $l7
              i32.store offset=1060600
              br $B109
            end
            local.get $l11
            i32.const 16
            i32.const 20
            local.get $l11
            i32.load offset=16
            local.get $l8
            i32.eq
            select
            i32.add
            local.get $l5
            i32.store
            local.get $l5
            i32.eqz
            br_if $B109
          end
          local.get $l5
          local.get $l11
          i32.store offset=24
          block $B112
            local.get $l8
            i32.load offset=16
            local.tee $p0
            i32.eqz
            br_if $B112
            local.get $l5
            local.get $p0
            i32.store offset=16
            local.get $p0
            local.get $l5
            i32.store offset=24
          end
          local.get $l8
          i32.const 20
          i32.add
          i32.load
          local.tee $p0
          i32.eqz
          br_if $B109
          local.get $l5
          i32.const 20
          i32.add
          local.get $p0
          i32.store
          local.get $p0
          local.get $l5
          i32.store offset=24
        end
        block $B113
          block $B114
            local.get $l6
            i32.const 15
            i32.gt_u
            br_if $B114
            local.get $l8
            local.get $l6
            local.get $l3
            i32.add
            local.tee $p0
            i32.const 3
            i32.or
            i32.store offset=4
            local.get $l8
            local.get $p0
            i32.add
            local.tee $p0
            local.get $p0
            i32.load offset=4
            i32.const 1
            i32.or
            i32.store offset=4
            br $B113
          end
          local.get $l8
          local.get $l3
          i32.add
          local.tee $l5
          local.get $l6
          i32.const 1
          i32.or
          i32.store offset=4
          local.get $l8
          local.get $l3
          i32.const 3
          i32.or
          i32.store offset=4
          local.get $l5
          local.get $l6
          i32.add
          local.get $l6
          i32.store
          block $B115
            local.get $l6
            i32.const 255
            i32.gt_u
            br_if $B115
            local.get $l6
            i32.const 3
            i32.shr_u
            local.tee $l4
            i32.const 3
            i32.shl
            i32.const 1060636
            i32.add
            local.set $p0
            block $B116
              block $B117
                i32.const 0
                i32.load offset=1060596
                local.tee $l6
                i32.const 1
                local.get $l4
                i32.shl
                local.tee $l4
                i32.and
                br_if $B117
                i32.const 0
                local.get $l6
                local.get $l4
                i32.or
                i32.store offset=1060596
                local.get $p0
                local.set $l4
                br $B116
              end
              local.get $p0
              i32.load offset=8
              local.set $l4
            end
            local.get $l4
            local.get $l5
            i32.store offset=12
            local.get $p0
            local.get $l5
            i32.store offset=8
            local.get $l5
            local.get $p0
            i32.store offset=12
            local.get $l5
            local.get $l4
            i32.store offset=8
            br $B113
          end
          block $B118
            block $B119
              local.get $l6
              i32.const 8
              i32.shr_u
              local.tee $l4
              br_if $B119
              i32.const 0
              local.set $p0
              br $B118
            end
            i32.const 31
            local.set $p0
            local.get $l6
            i32.const 16777215
            i32.gt_u
            br_if $B118
            local.get $l4
            local.get $l4
            i32.const 1048320
            i32.add
            i32.const 16
            i32.shr_u
            i32.const 8
            i32.and
            local.tee $p0
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
            local.get $l4
            local.get $p0
            i32.or
            local.get $l3
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
            local.set $p0
          end
          local.get $l5
          local.get $p0
          i32.store offset=28
          local.get $l5
          i64.const 0
          i64.store offset=16 align=4
          local.get $p0
          i32.const 2
          i32.shl
          i32.const 1060900
          i32.add
          local.set $l4
          block $B120
            local.get $l7
            i32.const 1
            local.get $p0
            i32.shl
            local.tee $l3
            i32.and
            br_if $B120
            local.get $l4
            local.get $l5
            i32.store
            i32.const 0
            local.get $l7
            local.get $l3
            i32.or
            i32.store offset=1060600
            local.get $l5
            local.get $l4
            i32.store offset=24
            local.get $l5
            local.get $l5
            i32.store offset=8
            local.get $l5
            local.get $l5
            i32.store offset=12
            br $B113
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
          local.get $l4
          i32.load
          local.set $l3
          block $B121
            loop $L122
              local.get $l3
              local.tee $l4
              i32.load offset=4
              i32.const -8
              i32.and
              local.get $l6
              i32.eq
              br_if $B121
              local.get $p0
              i32.const 29
              i32.shr_u
              local.set $l3
              local.get $p0
              i32.const 1
              i32.shl
              local.set $p0
              local.get $l4
              local.get $l3
              i32.const 4
              i32.and
              i32.add
              i32.const 16
              i32.add
              local.tee $l2
              i32.load
              local.tee $l3
              br_if $L122
            end
            local.get $l2
            local.get $l5
            i32.store
            local.get $l5
            local.get $l4
            i32.store offset=24
            local.get $l5
            local.get $l5
            i32.store offset=12
            local.get $l5
            local.get $l5
            i32.store offset=8
            br $B113
          end
          local.get $l4
          i32.load offset=8
          local.set $p0
          local.get $l4
          local.get $l5
          i32.store offset=8
          local.get $p0
          local.get $l5
          i32.store offset=12
          local.get $l5
          i32.const 0
          i32.store offset=24
          local.get $l5
          local.get $p0
          i32.store offset=8
          local.get $l5
          local.get $l4
          i32.store offset=12
        end
        local.get $l8
        i32.const 8
        i32.add
        local.set $p0
        br $B0
      end
      block $B123
        local.get $l10
        i32.eqz
        br_if $B123
        block $B124
          block $B125
            local.get $l5
            local.get $l5
            i32.load offset=28
            local.tee $l6
            i32.const 2
            i32.shl
            i32.const 1060900
            i32.add
            local.tee $p0
            i32.load
            i32.ne
            br_if $B125
            local.get $p0
            local.get $l8
            i32.store
            local.get $l8
            br_if $B124
            i32.const 0
            local.get $l9
            i32.const -2
            local.get $l6
            i32.rotl
            i32.and
            i32.store offset=1060600
            br $B123
          end
          local.get $l10
          i32.const 16
          i32.const 20
          local.get $l10
          i32.load offset=16
          local.get $l5
          i32.eq
          select
          i32.add
          local.get $l8
          i32.store
          local.get $l8
          i32.eqz
          br_if $B123
        end
        local.get $l8
        local.get $l10
        i32.store offset=24
        block $B126
          local.get $l5
          i32.load offset=16
          local.tee $p0
          i32.eqz
          br_if $B126
          local.get $l8
          local.get $p0
          i32.store offset=16
          local.get $p0
          local.get $l8
          i32.store offset=24
        end
        local.get $l5
        i32.const 20
        i32.add
        i32.load
        local.tee $p0
        i32.eqz
        br_if $B123
        local.get $l8
        i32.const 20
        i32.add
        local.get $p0
        i32.store
        local.get $p0
        local.get $l8
        i32.store offset=24
      end
      block $B127
        block $B128
          local.get $l4
          i32.const 15
          i32.gt_u
          br_if $B128
          local.get $l5
          local.get $l4
          local.get $l3
          i32.add
          local.tee $p0
          i32.const 3
          i32.or
          i32.store offset=4
          local.get $l5
          local.get $p0
          i32.add
          local.tee $p0
          local.get $p0
          i32.load offset=4
          i32.const 1
          i32.or
          i32.store offset=4
          br $B127
        end
        local.get $l5
        local.get $l3
        i32.add
        local.tee $l6
        local.get $l4
        i32.const 1
        i32.or
        i32.store offset=4
        local.get $l5
        local.get $l3
        i32.const 3
        i32.or
        i32.store offset=4
        local.get $l6
        local.get $l4
        i32.add
        local.get $l4
        i32.store
        block $B129
          local.get $l7
          i32.eqz
          br_if $B129
          local.get $l7
          i32.const 3
          i32.shr_u
          local.tee $l8
          i32.const 3
          i32.shl
          i32.const 1060636
          i32.add
          local.set $l3
          i32.const 0
          i32.load offset=1060616
          local.set $p0
          block $B130
            block $B131
              i32.const 1
              local.get $l8
              i32.shl
              local.tee $l8
              local.get $l2
              i32.and
              br_if $B131
              i32.const 0
              local.get $l8
              local.get $l2
              i32.or
              i32.store offset=1060596
              local.get $l3
              local.set $l8
              br $B130
            end
            local.get $l3
            i32.load offset=8
            local.set $l8
          end
          local.get $l8
          local.get $p0
          i32.store offset=12
          local.get $l3
          local.get $p0
          i32.store offset=8
          local.get $p0
          local.get $l3
          i32.store offset=12
          local.get $p0
          local.get $l8
          i32.store offset=8
        end
        i32.const 0
        local.get $l6
        i32.store offset=1060616
        i32.const 0
        local.get $l4
        i32.store offset=1060604
      end
      local.get $l5
      i32.const 8
      i32.add
      local.set $p0
    end
    local.get $l1
    i32.const 16
    i32.add
    global.set $g0
    local.get $p0)
  (func $free (type $t1) (param $p0 i32)
    local.get $p0
    call $dlfree)
  (func $dlfree (type $t1) (param $p0 i32)
    (local $l1 i32) (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32)
    block $B0
      local.get $p0
      i32.eqz
      br_if $B0
      local.get $p0
      i32.const -8
      i32.add
      local.tee $l1
      local.get $p0
      i32.const -4
      i32.add
      i32.load
      local.tee $l2
      i32.const -8
      i32.and
      local.tee $p0
      i32.add
      local.set $l3
      block $B1
        local.get $l2
        i32.const 1
        i32.and
        br_if $B1
        local.get $l2
        i32.const 3
        i32.and
        i32.eqz
        br_if $B0
        local.get $l1
        local.get $l1
        i32.load
        local.tee $l2
        i32.sub
        local.tee $l1
        i32.const 0
        i32.load offset=1060612
        local.tee $l4
        i32.lt_u
        br_if $B0
        local.get $l2
        local.get $p0
        i32.add
        local.set $p0
        block $B2
          i32.const 0
          i32.load offset=1060616
          local.get $l1
          i32.eq
          br_if $B2
          block $B3
            local.get $l2
            i32.const 255
            i32.gt_u
            br_if $B3
            local.get $l1
            i32.load offset=12
            local.set $l5
            block $B4
              local.get $l1
              i32.load offset=8
              local.tee $l6
              local.get $l2
              i32.const 3
              i32.shr_u
              local.tee $l7
              i32.const 3
              i32.shl
              i32.const 1060636
              i32.add
              local.tee $l2
              i32.eq
              br_if $B4
              local.get $l4
              local.get $l6
              i32.gt_u
              drop
            end
            block $B5
              local.get $l5
              local.get $l6
              i32.ne
              br_if $B5
              i32.const 0
              i32.const 0
              i32.load offset=1060596
              i32.const -2
              local.get $l7
              i32.rotl
              i32.and
              i32.store offset=1060596
              br $B1
            end
            block $B6
              local.get $l5
              local.get $l2
              i32.eq
              br_if $B6
              local.get $l4
              local.get $l5
              i32.gt_u
              drop
            end
            local.get $l5
            local.get $l6
            i32.store offset=8
            local.get $l6
            local.get $l5
            i32.store offset=12
            br $B1
          end
          local.get $l1
          i32.load offset=24
          local.set $l7
          block $B7
            block $B8
              local.get $l1
              i32.load offset=12
              local.tee $l5
              local.get $l1
              i32.eq
              br_if $B8
              block $B9
                local.get $l4
                local.get $l1
                i32.load offset=8
                local.tee $l2
                i32.gt_u
                br_if $B9
                local.get $l2
                i32.load offset=12
                local.get $l1
                i32.ne
                drop
              end
              local.get $l5
              local.get $l2
              i32.store offset=8
              local.get $l2
              local.get $l5
              i32.store offset=12
              br $B7
            end
            block $B10
              local.get $l1
              i32.const 20
              i32.add
              local.tee $l2
              i32.load
              local.tee $l4
              br_if $B10
              local.get $l1
              i32.const 16
              i32.add
              local.tee $l2
              i32.load
              local.tee $l4
              br_if $B10
              i32.const 0
              local.set $l5
              br $B7
            end
            loop $L11
              local.get $l2
              local.set $l6
              local.get $l4
              local.tee $l5
              i32.const 20
              i32.add
              local.tee $l2
              i32.load
              local.tee $l4
              br_if $L11
              local.get $l5
              i32.const 16
              i32.add
              local.set $l2
              local.get $l5
              i32.load offset=16
              local.tee $l4
              br_if $L11
            end
            local.get $l6
            i32.const 0
            i32.store
          end
          local.get $l7
          i32.eqz
          br_if $B1
          block $B12
            block $B13
              local.get $l1
              i32.load offset=28
              local.tee $l4
              i32.const 2
              i32.shl
              i32.const 1060900
              i32.add
              local.tee $l2
              i32.load
              local.get $l1
              i32.ne
              br_if $B13
              local.get $l2
              local.get $l5
              i32.store
              local.get $l5
              br_if $B12
              i32.const 0
              i32.const 0
              i32.load offset=1060600
              i32.const -2
              local.get $l4
              i32.rotl
              i32.and
              i32.store offset=1060600
              br $B1
            end
            local.get $l7
            i32.const 16
            i32.const 20
            local.get $l7
            i32.load offset=16
            local.get $l1
            i32.eq
            select
            i32.add
            local.get $l5
            i32.store
            local.get $l5
            i32.eqz
            br_if $B1
          end
          local.get $l5
          local.get $l7
          i32.store offset=24
          block $B14
            local.get $l1
            i32.load offset=16
            local.tee $l2
            i32.eqz
            br_if $B14
            local.get $l5
            local.get $l2
            i32.store offset=16
            local.get $l2
            local.get $l5
            i32.store offset=24
          end
          local.get $l1
          i32.load offset=20
          local.tee $l2
          i32.eqz
          br_if $B1
          local.get $l5
          i32.const 20
          i32.add
          local.get $l2
          i32.store
          local.get $l2
          local.get $l5
          i32.store offset=24
          br $B1
        end
        local.get $l3
        i32.load offset=4
        local.tee $l2
        i32.const 3
        i32.and
        i32.const 3
        i32.ne
        br_if $B1
        local.get $l3
        local.get $l2
        i32.const -2
        i32.and
        i32.store offset=4
        i32.const 0
        local.get $p0
        i32.store offset=1060604
        local.get $l1
        local.get $p0
        i32.add
        local.get $p0
        i32.store
        local.get $l1
        local.get $p0
        i32.const 1
        i32.or
        i32.store offset=4
        return
      end
      local.get $l3
      local.get $l1
      i32.le_u
      br_if $B0
      local.get $l3
      i32.load offset=4
      local.tee $l2
      i32.const 1
      i32.and
      i32.eqz
      br_if $B0
      block $B15
        block $B16
          local.get $l2
          i32.const 2
          i32.and
          br_if $B16
          block $B17
            i32.const 0
            i32.load offset=1060620
            local.get $l3
            i32.ne
            br_if $B17
            i32.const 0
            local.get $l1
            i32.store offset=1060620
            i32.const 0
            i32.const 0
            i32.load offset=1060608
            local.get $p0
            i32.add
            local.tee $p0
            i32.store offset=1060608
            local.get $l1
            local.get $p0
            i32.const 1
            i32.or
            i32.store offset=4
            local.get $l1
            i32.const 0
            i32.load offset=1060616
            i32.ne
            br_if $B0
            i32.const 0
            i32.const 0
            i32.store offset=1060604
            i32.const 0
            i32.const 0
            i32.store offset=1060616
            return
          end
          block $B18
            i32.const 0
            i32.load offset=1060616
            local.get $l3
            i32.ne
            br_if $B18
            i32.const 0
            local.get $l1
            i32.store offset=1060616
            i32.const 0
            i32.const 0
            i32.load offset=1060604
            local.get $p0
            i32.add
            local.tee $p0
            i32.store offset=1060604
            local.get $l1
            local.get $p0
            i32.const 1
            i32.or
            i32.store offset=4
            local.get $l1
            local.get $p0
            i32.add
            local.get $p0
            i32.store
            return
          end
          local.get $l2
          i32.const -8
          i32.and
          local.get $p0
          i32.add
          local.set $p0
          block $B19
            block $B20
              local.get $l2
              i32.const 255
              i32.gt_u
              br_if $B20
              local.get $l3
              i32.load offset=12
              local.set $l4
              block $B21
                local.get $l3
                i32.load offset=8
                local.tee $l5
                local.get $l2
                i32.const 3
                i32.shr_u
                local.tee $l3
                i32.const 3
                i32.shl
                i32.const 1060636
                i32.add
                local.tee $l2
                i32.eq
                br_if $B21
                i32.const 0
                i32.load offset=1060612
                local.get $l5
                i32.gt_u
                drop
              end
              block $B22
                local.get $l4
                local.get $l5
                i32.ne
                br_if $B22
                i32.const 0
                i32.const 0
                i32.load offset=1060596
                i32.const -2
                local.get $l3
                i32.rotl
                i32.and
                i32.store offset=1060596
                br $B19
              end
              block $B23
                local.get $l4
                local.get $l2
                i32.eq
                br_if $B23
                i32.const 0
                i32.load offset=1060612
                local.get $l4
                i32.gt_u
                drop
              end
              local.get $l4
              local.get $l5
              i32.store offset=8
              local.get $l5
              local.get $l4
              i32.store offset=12
              br $B19
            end
            local.get $l3
            i32.load offset=24
            local.set $l7
            block $B24
              block $B25
                local.get $l3
                i32.load offset=12
                local.tee $l5
                local.get $l3
                i32.eq
                br_if $B25
                block $B26
                  i32.const 0
                  i32.load offset=1060612
                  local.get $l3
                  i32.load offset=8
                  local.tee $l2
                  i32.gt_u
                  br_if $B26
                  local.get $l2
                  i32.load offset=12
                  local.get $l3
                  i32.ne
                  drop
                end
                local.get $l5
                local.get $l2
                i32.store offset=8
                local.get $l2
                local.get $l5
                i32.store offset=12
                br $B24
              end
              block $B27
                local.get $l3
                i32.const 20
                i32.add
                local.tee $l2
                i32.load
                local.tee $l4
                br_if $B27
                local.get $l3
                i32.const 16
                i32.add
                local.tee $l2
                i32.load
                local.tee $l4
                br_if $B27
                i32.const 0
                local.set $l5
                br $B24
              end
              loop $L28
                local.get $l2
                local.set $l6
                local.get $l4
                local.tee $l5
                i32.const 20
                i32.add
                local.tee $l2
                i32.load
                local.tee $l4
                br_if $L28
                local.get $l5
                i32.const 16
                i32.add
                local.set $l2
                local.get $l5
                i32.load offset=16
                local.tee $l4
                br_if $L28
              end
              local.get $l6
              i32.const 0
              i32.store
            end
            local.get $l7
            i32.eqz
            br_if $B19
            block $B29
              block $B30
                local.get $l3
                i32.load offset=28
                local.tee $l4
                i32.const 2
                i32.shl
                i32.const 1060900
                i32.add
                local.tee $l2
                i32.load
                local.get $l3
                i32.ne
                br_if $B30
                local.get $l2
                local.get $l5
                i32.store
                local.get $l5
                br_if $B29
                i32.const 0
                i32.const 0
                i32.load offset=1060600
                i32.const -2
                local.get $l4
                i32.rotl
                i32.and
                i32.store offset=1060600
                br $B19
              end
              local.get $l7
              i32.const 16
              i32.const 20
              local.get $l7
              i32.load offset=16
              local.get $l3
              i32.eq
              select
              i32.add
              local.get $l5
              i32.store
              local.get $l5
              i32.eqz
              br_if $B19
            end
            local.get $l5
            local.get $l7
            i32.store offset=24
            block $B31
              local.get $l3
              i32.load offset=16
              local.tee $l2
              i32.eqz
              br_if $B31
              local.get $l5
              local.get $l2
              i32.store offset=16
              local.get $l2
              local.get $l5
              i32.store offset=24
            end
            local.get $l3
            i32.load offset=20
            local.tee $l2
            i32.eqz
            br_if $B19
            local.get $l5
            i32.const 20
            i32.add
            local.get $l2
            i32.store
            local.get $l2
            local.get $l5
            i32.store offset=24
          end
          local.get $l1
          local.get $p0
          i32.add
          local.get $p0
          i32.store
          local.get $l1
          local.get $p0
          i32.const 1
          i32.or
          i32.store offset=4
          local.get $l1
          i32.const 0
          i32.load offset=1060616
          i32.ne
          br_if $B15
          i32.const 0
          local.get $p0
          i32.store offset=1060604
          return
        end
        local.get $l3
        local.get $l2
        i32.const -2
        i32.and
        i32.store offset=4
        local.get $l1
        local.get $p0
        i32.add
        local.get $p0
        i32.store
        local.get $l1
        local.get $p0
        i32.const 1
        i32.or
        i32.store offset=4
      end
      block $B32
        local.get $p0
        i32.const 255
        i32.gt_u
        br_if $B32
        local.get $p0
        i32.const 3
        i32.shr_u
        local.tee $l2
        i32.const 3
        i32.shl
        i32.const 1060636
        i32.add
        local.set $p0
        block $B33
          block $B34
            i32.const 0
            i32.load offset=1060596
            local.tee $l4
            i32.const 1
            local.get $l2
            i32.shl
            local.tee $l2
            i32.and
            br_if $B34
            i32.const 0
            local.get $l4
            local.get $l2
            i32.or
            i32.store offset=1060596
            local.get $p0
            local.set $l2
            br $B33
          end
          local.get $p0
          i32.load offset=8
          local.set $l2
        end
        local.get $l2
        local.get $l1
        i32.store offset=12
        local.get $p0
        local.get $l1
        i32.store offset=8
        local.get $l1
        local.get $p0
        i32.store offset=12
        local.get $l1
        local.get $l2
        i32.store offset=8
        return
      end
      i32.const 0
      local.set $l2
      block $B35
        local.get $p0
        i32.const 8
        i32.shr_u
        local.tee $l4
        i32.eqz
        br_if $B35
        i32.const 31
        local.set $l2
        local.get $p0
        i32.const 16777215
        i32.gt_u
        br_if $B35
        local.get $l4
        local.get $l4
        i32.const 1048320
        i32.add
        i32.const 16
        i32.shr_u
        i32.const 8
        i32.and
        local.tee $l2
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
        local.tee $l5
        local.get $l5
        i32.const 245760
        i32.add
        i32.const 16
        i32.shr_u
        i32.const 2
        i32.and
        local.tee $l5
        i32.shl
        i32.const 15
        i32.shr_u
        local.get $l4
        local.get $l2
        i32.or
        local.get $l5
        i32.or
        i32.sub
        local.tee $l2
        i32.const 1
        i32.shl
        local.get $p0
        local.get $l2
        i32.const 21
        i32.add
        i32.shr_u
        i32.const 1
        i32.and
        i32.or
        i32.const 28
        i32.add
        local.set $l2
      end
      local.get $l1
      i64.const 0
      i64.store offset=16 align=4
      local.get $l1
      i32.const 28
      i32.add
      local.get $l2
      i32.store
      local.get $l2
      i32.const 2
      i32.shl
      i32.const 1060900
      i32.add
      local.set $l4
      block $B36
        block $B37
          i32.const 0
          i32.load offset=1060600
          local.tee $l5
          i32.const 1
          local.get $l2
          i32.shl
          local.tee $l3
          i32.and
          br_if $B37
          local.get $l4
          local.get $l1
          i32.store
          i32.const 0
          local.get $l5
          local.get $l3
          i32.or
          i32.store offset=1060600
          local.get $l1
          i32.const 24
          i32.add
          local.get $l4
          i32.store
          local.get $l1
          local.get $l1
          i32.store offset=8
          local.get $l1
          local.get $l1
          i32.store offset=12
          br $B36
        end
        local.get $p0
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
        local.set $l2
        local.get $l4
        i32.load
        local.set $l5
        block $B38
          loop $L39
            local.get $l5
            local.tee $l4
            i32.load offset=4
            i32.const -8
            i32.and
            local.get $p0
            i32.eq
            br_if $B38
            local.get $l2
            i32.const 29
            i32.shr_u
            local.set $l5
            local.get $l2
            i32.const 1
            i32.shl
            local.set $l2
            local.get $l4
            local.get $l5
            i32.const 4
            i32.and
            i32.add
            i32.const 16
            i32.add
            local.tee $l3
            i32.load
            local.tee $l5
            br_if $L39
          end
          local.get $l3
          local.get $l1
          i32.store
          local.get $l1
          local.get $l1
          i32.store offset=12
          local.get $l1
          i32.const 24
          i32.add
          local.get $l4
          i32.store
          local.get $l1
          local.get $l1
          i32.store offset=8
          br $B36
        end
        local.get $l4
        i32.load offset=8
        local.set $p0
        local.get $l4
        local.get $l1
        i32.store offset=8
        local.get $p0
        local.get $l1
        i32.store offset=12
        local.get $l1
        i32.const 24
        i32.add
        i32.const 0
        i32.store
        local.get $l1
        local.get $p0
        i32.store offset=8
        local.get $l1
        local.get $l4
        i32.store offset=12
      end
      i32.const 0
      i32.const 0
      i32.load offset=1060628
      i32.const -1
      i32.add
      local.tee $l1
      i32.store offset=1060628
      local.get $l1
      br_if $B0
      i32.const 1061052
      local.set $l1
      loop $L40
        local.get $l1
        i32.load
        local.tee $p0
        i32.const 8
        i32.add
        local.set $l1
        local.get $p0
        br_if $L40
      end
      i32.const 0
      i32.const -1
      i32.store offset=1060628
    end)
  (func $calloc (type $t3) (param $p0 i32) (param $p1 i32) (result i32)
    (local $l2 i32)
    block $B0
      block $B1
        local.get $p0
        br_if $B1
        i32.const 0
        local.set $l2
        br $B0
      end
      local.get $p1
      local.get $p0
      i32.mul
      local.set $l2
      local.get $p1
      local.get $p0
      i32.or
      i32.const 65536
      i32.lt_u
      br_if $B0
      local.get $l2
      i32.const -1
      local.get $l2
      local.get $p0
      i32.div_u
      local.get $p1
      i32.eq
      select
      local.set $l2
    end
    block $B2
      local.get $l2
      call $dlmalloc
      local.tee $p0
      i32.eqz
      br_if $B2
      local.get $p0
      i32.const -4
      i32.add
      i32.load8_u
      i32.const 3
      i32.and
      i32.eqz
      br_if $B2
      local.get $p0
      i32.const 0
      local.get $l2
      call $memset
      drop
    end
    local.get $p0)
  (func $realloc (type $t3) (param $p0 i32) (param $p1 i32) (result i32)
    (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32) (local $l9 i32) (local $l10 i32) (local $l11 i32) (local $l12 i32)
    block $B0
      local.get $p0
      br_if $B0
      local.get $p1
      call $dlmalloc
      return
    end
    block $B1
      local.get $p1
      i32.const -64
      i32.lt_u
      br_if $B1
      i32.const 0
      i32.const 48
      i32.store offset=1061092
      i32.const 0
      return
    end
    local.get $p1
    i32.const 11
    i32.lt_u
    local.set $l2
    local.get $p1
    i32.const 19
    i32.add
    i32.const -16
    i32.and
    local.set $l3
    local.get $p0
    i32.const -8
    i32.add
    local.set $l4
    local.get $p0
    i32.const -4
    i32.add
    local.tee $l5
    i32.load
    local.tee $l6
    i32.const 3
    i32.and
    local.set $l7
    i32.const 0
    i32.load offset=1060612
    local.set $l8
    block $B2
      local.get $l6
      i32.const -8
      i32.and
      local.tee $l9
      i32.const 1
      i32.lt_s
      br_if $B2
      local.get $l7
      i32.const 1
      i32.eq
      br_if $B2
      local.get $l8
      local.get $l4
      i32.gt_u
      drop
    end
    i32.const 16
    local.get $l3
    local.get $l2
    select
    local.set $l2
    block $B3
      block $B4
        block $B5
          local.get $l7
          br_if $B5
          local.get $l2
          i32.const 256
          i32.lt_u
          br_if $B4
          local.get $l9
          local.get $l2
          i32.const 4
          i32.or
          i32.lt_u
          br_if $B4
          local.get $l9
          local.get $l2
          i32.sub
          i32.const 0
          i32.load offset=1061076
          i32.const 1
          i32.shl
          i32.le_u
          br_if $B3
          br $B4
        end
        local.get $l4
        local.get $l9
        i32.add
        local.set $l7
        block $B6
          local.get $l9
          local.get $l2
          i32.lt_u
          br_if $B6
          local.get $l9
          local.get $l2
          i32.sub
          local.tee $p1
          i32.const 16
          i32.lt_u
          br_if $B3
          local.get $l5
          local.get $l2
          local.get $l6
          i32.const 1
          i32.and
          i32.or
          i32.const 2
          i32.or
          i32.store
          local.get $l4
          local.get $l2
          i32.add
          local.tee $l2
          local.get $p1
          i32.const 3
          i32.or
          i32.store offset=4
          local.get $l7
          local.get $l7
          i32.load offset=4
          i32.const 1
          i32.or
          i32.store offset=4
          local.get $l2
          local.get $p1
          call $dispose_chunk
          local.get $p0
          return
        end
        block $B7
          i32.const 0
          i32.load offset=1060620
          local.get $l7
          i32.ne
          br_if $B7
          i32.const 0
          i32.load offset=1060608
          local.get $l9
          i32.add
          local.tee $l9
          local.get $l2
          i32.le_u
          br_if $B4
          local.get $l5
          local.get $l2
          local.get $l6
          i32.const 1
          i32.and
          i32.or
          i32.const 2
          i32.or
          i32.store
          i32.const 0
          local.get $l4
          local.get $l2
          i32.add
          local.tee $p1
          i32.store offset=1060620
          i32.const 0
          local.get $l9
          local.get $l2
          i32.sub
          local.tee $l2
          i32.store offset=1060608
          local.get $p1
          local.get $l2
          i32.const 1
          i32.or
          i32.store offset=4
          local.get $p0
          return
        end
        block $B8
          i32.const 0
          i32.load offset=1060616
          local.get $l7
          i32.ne
          br_if $B8
          i32.const 0
          i32.load offset=1060604
          local.get $l9
          i32.add
          local.tee $l9
          local.get $l2
          i32.lt_u
          br_if $B4
          block $B9
            block $B10
              local.get $l9
              local.get $l2
              i32.sub
              local.tee $p1
              i32.const 16
              i32.lt_u
              br_if $B10
              local.get $l5
              local.get $l2
              local.get $l6
              i32.const 1
              i32.and
              i32.or
              i32.const 2
              i32.or
              i32.store
              local.get $l4
              local.get $l2
              i32.add
              local.tee $l2
              local.get $p1
              i32.const 1
              i32.or
              i32.store offset=4
              local.get $l4
              local.get $l9
              i32.add
              local.tee $l9
              local.get $p1
              i32.store
              local.get $l9
              local.get $l9
              i32.load offset=4
              i32.const -2
              i32.and
              i32.store offset=4
              br $B9
            end
            local.get $l5
            local.get $l6
            i32.const 1
            i32.and
            local.get $l9
            i32.or
            i32.const 2
            i32.or
            i32.store
            local.get $l4
            local.get $l9
            i32.add
            local.tee $p1
            local.get $p1
            i32.load offset=4
            i32.const 1
            i32.or
            i32.store offset=4
            i32.const 0
            local.set $p1
            i32.const 0
            local.set $l2
          end
          i32.const 0
          local.get $l2
          i32.store offset=1060616
          i32.const 0
          local.get $p1
          i32.store offset=1060604
          local.get $p0
          return
        end
        local.get $l7
        i32.load offset=4
        local.tee $l3
        i32.const 2
        i32.and
        br_if $B4
        local.get $l3
        i32.const -8
        i32.and
        local.get $l9
        i32.add
        local.tee $l10
        local.get $l2
        i32.lt_u
        br_if $B4
        local.get $l10
        local.get $l2
        i32.sub
        local.set $l11
        block $B11
          block $B12
            local.get $l3
            i32.const 255
            i32.gt_u
            br_if $B12
            local.get $l7
            i32.load offset=12
            local.set $p1
            block $B13
              local.get $l7
              i32.load offset=8
              local.tee $l9
              local.get $l3
              i32.const 3
              i32.shr_u
              local.tee $l3
              i32.const 3
              i32.shl
              i32.const 1060636
              i32.add
              local.tee $l7
              i32.eq
              br_if $B13
              local.get $l8
              local.get $l9
              i32.gt_u
              drop
            end
            block $B14
              local.get $p1
              local.get $l9
              i32.ne
              br_if $B14
              i32.const 0
              i32.const 0
              i32.load offset=1060596
              i32.const -2
              local.get $l3
              i32.rotl
              i32.and
              i32.store offset=1060596
              br $B11
            end
            block $B15
              local.get $p1
              local.get $l7
              i32.eq
              br_if $B15
              local.get $l8
              local.get $p1
              i32.gt_u
              drop
            end
            local.get $p1
            local.get $l9
            i32.store offset=8
            local.get $l9
            local.get $p1
            i32.store offset=12
            br $B11
          end
          local.get $l7
          i32.load offset=24
          local.set $l12
          block $B16
            block $B17
              local.get $l7
              i32.load offset=12
              local.tee $l3
              local.get $l7
              i32.eq
              br_if $B17
              block $B18
                local.get $l8
                local.get $l7
                i32.load offset=8
                local.tee $p1
                i32.gt_u
                br_if $B18
                local.get $p1
                i32.load offset=12
                local.get $l7
                i32.ne
                drop
              end
              local.get $l3
              local.get $p1
              i32.store offset=8
              local.get $p1
              local.get $l3
              i32.store offset=12
              br $B16
            end
            block $B19
              local.get $l7
              i32.const 20
              i32.add
              local.tee $p1
              i32.load
              local.tee $l9
              br_if $B19
              local.get $l7
              i32.const 16
              i32.add
              local.tee $p1
              i32.load
              local.tee $l9
              br_if $B19
              i32.const 0
              local.set $l3
              br $B16
            end
            loop $L20
              local.get $p1
              local.set $l8
              local.get $l9
              local.tee $l3
              i32.const 20
              i32.add
              local.tee $p1
              i32.load
              local.tee $l9
              br_if $L20
              local.get $l3
              i32.const 16
              i32.add
              local.set $p1
              local.get $l3
              i32.load offset=16
              local.tee $l9
              br_if $L20
            end
            local.get $l8
            i32.const 0
            i32.store
          end
          local.get $l12
          i32.eqz
          br_if $B11
          block $B21
            block $B22
              local.get $l7
              i32.load offset=28
              local.tee $l9
              i32.const 2
              i32.shl
              i32.const 1060900
              i32.add
              local.tee $p1
              i32.load
              local.get $l7
              i32.ne
              br_if $B22
              local.get $p1
              local.get $l3
              i32.store
              local.get $l3
              br_if $B21
              i32.const 0
              i32.const 0
              i32.load offset=1060600
              i32.const -2
              local.get $l9
              i32.rotl
              i32.and
              i32.store offset=1060600
              br $B11
            end
            local.get $l12
            i32.const 16
            i32.const 20
            local.get $l12
            i32.load offset=16
            local.get $l7
            i32.eq
            select
            i32.add
            local.get $l3
            i32.store
            local.get $l3
            i32.eqz
            br_if $B11
          end
          local.get $l3
          local.get $l12
          i32.store offset=24
          block $B23
            local.get $l7
            i32.load offset=16
            local.tee $p1
            i32.eqz
            br_if $B23
            local.get $l3
            local.get $p1
            i32.store offset=16
            local.get $p1
            local.get $l3
            i32.store offset=24
          end
          local.get $l7
          i32.load offset=20
          local.tee $p1
          i32.eqz
          br_if $B11
          local.get $l3
          i32.const 20
          i32.add
          local.get $p1
          i32.store
          local.get $p1
          local.get $l3
          i32.store offset=24
        end
        block $B24
          local.get $l11
          i32.const 15
          i32.gt_u
          br_if $B24
          local.get $l5
          local.get $l6
          i32.const 1
          i32.and
          local.get $l10
          i32.or
          i32.const 2
          i32.or
          i32.store
          local.get $l4
          local.get $l10
          i32.add
          local.tee $p1
          local.get $p1
          i32.load offset=4
          i32.const 1
          i32.or
          i32.store offset=4
          local.get $p0
          return
        end
        local.get $l5
        local.get $l2
        local.get $l6
        i32.const 1
        i32.and
        i32.or
        i32.const 2
        i32.or
        i32.store
        local.get $l4
        local.get $l2
        i32.add
        local.tee $p1
        local.get $l11
        i32.const 3
        i32.or
        i32.store offset=4
        local.get $l4
        local.get $l10
        i32.add
        local.tee $l2
        local.get $l2
        i32.load offset=4
        i32.const 1
        i32.or
        i32.store offset=4
        local.get $p1
        local.get $l11
        call $dispose_chunk
        local.get $p0
        return
      end
      block $B25
        local.get $p1
        call $dlmalloc
        local.tee $l2
        br_if $B25
        i32.const 0
        return
      end
      local.get $l2
      local.get $p0
      local.get $l5
      i32.load
      local.tee $l9
      i32.const -8
      i32.and
      i32.const 4
      i32.const 8
      local.get $l9
      i32.const 3
      i32.and
      select
      i32.sub
      local.tee $l9
      local.get $p1
      local.get $l9
      local.get $p1
      i32.lt_u
      select
      call $memcpy
      local.set $p1
      local.get $p0
      call $dlfree
      local.get $p1
      local.set $p0
    end
    local.get $p0)
  (func $dispose_chunk (type $t5) (param $p0 i32) (param $p1 i32)
    (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32)
    local.get $p0
    local.get $p1
    i32.add
    local.set $l2
    block $B0
      block $B1
        local.get $p0
        i32.load offset=4
        local.tee $l3
        i32.const 1
        i32.and
        br_if $B1
        local.get $l3
        i32.const 3
        i32.and
        i32.eqz
        br_if $B0
        local.get $p0
        i32.load
        local.tee $l3
        local.get $p1
        i32.add
        local.set $p1
        block $B2
          i32.const 0
          i32.load offset=1060616
          local.get $p0
          local.get $l3
          i32.sub
          local.tee $p0
          i32.eq
          br_if $B2
          i32.const 0
          i32.load offset=1060612
          local.set $l4
          block $B3
            local.get $l3
            i32.const 255
            i32.gt_u
            br_if $B3
            local.get $p0
            i32.load offset=12
            local.set $l5
            block $B4
              local.get $p0
              i32.load offset=8
              local.tee $l6
              local.get $l3
              i32.const 3
              i32.shr_u
              local.tee $l7
              i32.const 3
              i32.shl
              i32.const 1060636
              i32.add
              local.tee $l3
              i32.eq
              br_if $B4
              local.get $l4
              local.get $l6
              i32.gt_u
              drop
            end
            block $B5
              local.get $l5
              local.get $l6
              i32.ne
              br_if $B5
              i32.const 0
              i32.const 0
              i32.load offset=1060596
              i32.const -2
              local.get $l7
              i32.rotl
              i32.and
              i32.store offset=1060596
              br $B1
            end
            block $B6
              local.get $l5
              local.get $l3
              i32.eq
              br_if $B6
              local.get $l4
              local.get $l5
              i32.gt_u
              drop
            end
            local.get $l5
            local.get $l6
            i32.store offset=8
            local.get $l6
            local.get $l5
            i32.store offset=12
            br $B1
          end
          local.get $p0
          i32.load offset=24
          local.set $l7
          block $B7
            block $B8
              local.get $p0
              i32.load offset=12
              local.tee $l6
              local.get $p0
              i32.eq
              br_if $B8
              block $B9
                local.get $l4
                local.get $p0
                i32.load offset=8
                local.tee $l3
                i32.gt_u
                br_if $B9
                local.get $l3
                i32.load offset=12
                local.get $p0
                i32.ne
                drop
              end
              local.get $l6
              local.get $l3
              i32.store offset=8
              local.get $l3
              local.get $l6
              i32.store offset=12
              br $B7
            end
            block $B10
              local.get $p0
              i32.const 20
              i32.add
              local.tee $l3
              i32.load
              local.tee $l5
              br_if $B10
              local.get $p0
              i32.const 16
              i32.add
              local.tee $l3
              i32.load
              local.tee $l5
              br_if $B10
              i32.const 0
              local.set $l6
              br $B7
            end
            loop $L11
              local.get $l3
              local.set $l4
              local.get $l5
              local.tee $l6
              i32.const 20
              i32.add
              local.tee $l3
              i32.load
              local.tee $l5
              br_if $L11
              local.get $l6
              i32.const 16
              i32.add
              local.set $l3
              local.get $l6
              i32.load offset=16
              local.tee $l5
              br_if $L11
            end
            local.get $l4
            i32.const 0
            i32.store
          end
          local.get $l7
          i32.eqz
          br_if $B1
          block $B12
            block $B13
              local.get $p0
              i32.load offset=28
              local.tee $l5
              i32.const 2
              i32.shl
              i32.const 1060900
              i32.add
              local.tee $l3
              i32.load
              local.get $p0
              i32.ne
              br_if $B13
              local.get $l3
              local.get $l6
              i32.store
              local.get $l6
              br_if $B12
              i32.const 0
              i32.const 0
              i32.load offset=1060600
              i32.const -2
              local.get $l5
              i32.rotl
              i32.and
              i32.store offset=1060600
              br $B1
            end
            local.get $l7
            i32.const 16
            i32.const 20
            local.get $l7
            i32.load offset=16
            local.get $p0
            i32.eq
            select
            i32.add
            local.get $l6
            i32.store
            local.get $l6
            i32.eqz
            br_if $B1
          end
          local.get $l6
          local.get $l7
          i32.store offset=24
          block $B14
            local.get $p0
            i32.load offset=16
            local.tee $l3
            i32.eqz
            br_if $B14
            local.get $l6
            local.get $l3
            i32.store offset=16
            local.get $l3
            local.get $l6
            i32.store offset=24
          end
          local.get $p0
          i32.load offset=20
          local.tee $l3
          i32.eqz
          br_if $B1
          local.get $l6
          i32.const 20
          i32.add
          local.get $l3
          i32.store
          local.get $l3
          local.get $l6
          i32.store offset=24
          br $B1
        end
        local.get $l2
        i32.load offset=4
        local.tee $l3
        i32.const 3
        i32.and
        i32.const 3
        i32.ne
        br_if $B1
        local.get $l2
        local.get $l3
        i32.const -2
        i32.and
        i32.store offset=4
        i32.const 0
        local.get $p1
        i32.store offset=1060604
        local.get $l2
        local.get $p1
        i32.store
        local.get $p0
        local.get $p1
        i32.const 1
        i32.or
        i32.store offset=4
        return
      end
      block $B15
        block $B16
          local.get $l2
          i32.load offset=4
          local.tee $l3
          i32.const 2
          i32.and
          br_if $B16
          block $B17
            i32.const 0
            i32.load offset=1060620
            local.get $l2
            i32.ne
            br_if $B17
            i32.const 0
            local.get $p0
            i32.store offset=1060620
            i32.const 0
            i32.const 0
            i32.load offset=1060608
            local.get $p1
            i32.add
            local.tee $p1
            i32.store offset=1060608
            local.get $p0
            local.get $p1
            i32.const 1
            i32.or
            i32.store offset=4
            local.get $p0
            i32.const 0
            i32.load offset=1060616
            i32.ne
            br_if $B0
            i32.const 0
            i32.const 0
            i32.store offset=1060604
            i32.const 0
            i32.const 0
            i32.store offset=1060616
            return
          end
          block $B18
            i32.const 0
            i32.load offset=1060616
            local.get $l2
            i32.ne
            br_if $B18
            i32.const 0
            local.get $p0
            i32.store offset=1060616
            i32.const 0
            i32.const 0
            i32.load offset=1060604
            local.get $p1
            i32.add
            local.tee $p1
            i32.store offset=1060604
            local.get $p0
            local.get $p1
            i32.const 1
            i32.or
            i32.store offset=4
            local.get $p0
            local.get $p1
            i32.add
            local.get $p1
            i32.store
            return
          end
          i32.const 0
          i32.load offset=1060612
          local.set $l4
          local.get $l3
          i32.const -8
          i32.and
          local.get $p1
          i32.add
          local.set $p1
          block $B19
            block $B20
              local.get $l3
              i32.const 255
              i32.gt_u
              br_if $B20
              local.get $l2
              i32.load offset=12
              local.set $l5
              block $B21
                local.get $l2
                i32.load offset=8
                local.tee $l6
                local.get $l3
                i32.const 3
                i32.shr_u
                local.tee $l2
                i32.const 3
                i32.shl
                i32.const 1060636
                i32.add
                local.tee $l3
                i32.eq
                br_if $B21
                local.get $l4
                local.get $l6
                i32.gt_u
                drop
              end
              block $B22
                local.get $l5
                local.get $l6
                i32.ne
                br_if $B22
                i32.const 0
                i32.const 0
                i32.load offset=1060596
                i32.const -2
                local.get $l2
                i32.rotl
                i32.and
                i32.store offset=1060596
                br $B19
              end
              block $B23
                local.get $l5
                local.get $l3
                i32.eq
                br_if $B23
                local.get $l4
                local.get $l5
                i32.gt_u
                drop
              end
              local.get $l5
              local.get $l6
              i32.store offset=8
              local.get $l6
              local.get $l5
              i32.store offset=12
              br $B19
            end
            local.get $l2
            i32.load offset=24
            local.set $l7
            block $B24
              block $B25
                local.get $l2
                i32.load offset=12
                local.tee $l6
                local.get $l2
                i32.eq
                br_if $B25
                block $B26
                  local.get $l4
                  local.get $l2
                  i32.load offset=8
                  local.tee $l3
                  i32.gt_u
                  br_if $B26
                  local.get $l3
                  i32.load offset=12
                  local.get $l2
                  i32.ne
                  drop
                end
                local.get $l6
                local.get $l3
                i32.store offset=8
                local.get $l3
                local.get $l6
                i32.store offset=12
                br $B24
              end
              block $B27
                local.get $l2
                i32.const 20
                i32.add
                local.tee $l3
                i32.load
                local.tee $l5
                br_if $B27
                local.get $l2
                i32.const 16
                i32.add
                local.tee $l3
                i32.load
                local.tee $l5
                br_if $B27
                i32.const 0
                local.set $l6
                br $B24
              end
              loop $L28
                local.get $l3
                local.set $l4
                local.get $l5
                local.tee $l6
                i32.const 20
                i32.add
                local.tee $l3
                i32.load
                local.tee $l5
                br_if $L28
                local.get $l6
                i32.const 16
                i32.add
                local.set $l3
                local.get $l6
                i32.load offset=16
                local.tee $l5
                br_if $L28
              end
              local.get $l4
              i32.const 0
              i32.store
            end
            local.get $l7
            i32.eqz
            br_if $B19
            block $B29
              block $B30
                local.get $l2
                i32.load offset=28
                local.tee $l5
                i32.const 2
                i32.shl
                i32.const 1060900
                i32.add
                local.tee $l3
                i32.load
                local.get $l2
                i32.ne
                br_if $B30
                local.get $l3
                local.get $l6
                i32.store
                local.get $l6
                br_if $B29
                i32.const 0
                i32.const 0
                i32.load offset=1060600
                i32.const -2
                local.get $l5
                i32.rotl
                i32.and
                i32.store offset=1060600
                br $B19
              end
              local.get $l7
              i32.const 16
              i32.const 20
              local.get $l7
              i32.load offset=16
              local.get $l2
              i32.eq
              select
              i32.add
              local.get $l6
              i32.store
              local.get $l6
              i32.eqz
              br_if $B19
            end
            local.get $l6
            local.get $l7
            i32.store offset=24
            block $B31
              local.get $l2
              i32.load offset=16
              local.tee $l3
              i32.eqz
              br_if $B31
              local.get $l6
              local.get $l3
              i32.store offset=16
              local.get $l3
              local.get $l6
              i32.store offset=24
            end
            local.get $l2
            i32.load offset=20
            local.tee $l3
            i32.eqz
            br_if $B19
            local.get $l6
            i32.const 20
            i32.add
            local.get $l3
            i32.store
            local.get $l3
            local.get $l6
            i32.store offset=24
          end
          local.get $p0
          local.get $p1
          i32.add
          local.get $p1
          i32.store
          local.get $p0
          local.get $p1
          i32.const 1
          i32.or
          i32.store offset=4
          local.get $p0
          i32.const 0
          i32.load offset=1060616
          i32.ne
          br_if $B15
          i32.const 0
          local.get $p1
          i32.store offset=1060604
          return
        end
        local.get $l2
        local.get $l3
        i32.const -2
        i32.and
        i32.store offset=4
        local.get $p0
        local.get $p1
        i32.add
        local.get $p1
        i32.store
        local.get $p0
        local.get $p1
        i32.const 1
        i32.or
        i32.store offset=4
      end
      block $B32
        local.get $p1
        i32.const 255
        i32.gt_u
        br_if $B32
        local.get $p1
        i32.const 3
        i32.shr_u
        local.tee $l3
        i32.const 3
        i32.shl
        i32.const 1060636
        i32.add
        local.set $p1
        block $B33
          block $B34
            i32.const 0
            i32.load offset=1060596
            local.tee $l5
            i32.const 1
            local.get $l3
            i32.shl
            local.tee $l3
            i32.and
            br_if $B34
            i32.const 0
            local.get $l5
            local.get $l3
            i32.or
            i32.store offset=1060596
            local.get $p1
            local.set $l3
            br $B33
          end
          local.get $p1
          i32.load offset=8
          local.set $l3
        end
        local.get $l3
        local.get $p0
        i32.store offset=12
        local.get $p1
        local.get $p0
        i32.store offset=8
        local.get $p0
        local.get $p1
        i32.store offset=12
        local.get $p0
        local.get $l3
        i32.store offset=8
        return
      end
      i32.const 0
      local.set $l3
      block $B35
        local.get $p1
        i32.const 8
        i32.shr_u
        local.tee $l5
        i32.eqz
        br_if $B35
        i32.const 31
        local.set $l3
        local.get $p1
        i32.const 16777215
        i32.gt_u
        br_if $B35
        local.get $l5
        local.get $l5
        i32.const 1048320
        i32.add
        i32.const 16
        i32.shr_u
        i32.const 8
        i32.and
        local.tee $l3
        i32.shl
        local.tee $l5
        local.get $l5
        i32.const 520192
        i32.add
        i32.const 16
        i32.shr_u
        i32.const 4
        i32.and
        local.tee $l5
        i32.shl
        local.tee $l6
        local.get $l6
        i32.const 245760
        i32.add
        i32.const 16
        i32.shr_u
        i32.const 2
        i32.and
        local.tee $l6
        i32.shl
        i32.const 15
        i32.shr_u
        local.get $l5
        local.get $l3
        i32.or
        local.get $l6
        i32.or
        i32.sub
        local.tee $l3
        i32.const 1
        i32.shl
        local.get $p1
        local.get $l3
        i32.const 21
        i32.add
        i32.shr_u
        i32.const 1
        i32.and
        i32.or
        i32.const 28
        i32.add
        local.set $l3
      end
      local.get $p0
      i64.const 0
      i64.store offset=16 align=4
      local.get $p0
      i32.const 28
      i32.add
      local.get $l3
      i32.store
      local.get $l3
      i32.const 2
      i32.shl
      i32.const 1060900
      i32.add
      local.set $l5
      block $B36
        i32.const 0
        i32.load offset=1060600
        local.tee $l6
        i32.const 1
        local.get $l3
        i32.shl
        local.tee $l2
        i32.and
        br_if $B36
        local.get $l5
        local.get $p0
        i32.store
        i32.const 0
        local.get $l6
        local.get $l2
        i32.or
        i32.store offset=1060600
        local.get $p0
        i32.const 24
        i32.add
        local.get $l5
        i32.store
        local.get $p0
        local.get $p0
        i32.store offset=8
        local.get $p0
        local.get $p0
        i32.store offset=12
        return
      end
      local.get $p1
      i32.const 0
      i32.const 25
      local.get $l3
      i32.const 1
      i32.shr_u
      i32.sub
      local.get $l3
      i32.const 31
      i32.eq
      select
      i32.shl
      local.set $l3
      local.get $l5
      i32.load
      local.set $l6
      block $B37
        loop $L38
          local.get $l6
          local.tee $l5
          i32.load offset=4
          i32.const -8
          i32.and
          local.get $p1
          i32.eq
          br_if $B37
          local.get $l3
          i32.const 29
          i32.shr_u
          local.set $l6
          local.get $l3
          i32.const 1
          i32.shl
          local.set $l3
          local.get $l5
          local.get $l6
          i32.const 4
          i32.and
          i32.add
          i32.const 16
          i32.add
          local.tee $l2
          i32.load
          local.tee $l6
          br_if $L38
        end
        local.get $l2
        local.get $p0
        i32.store
        local.get $p0
        i32.const 24
        i32.add
        local.get $l5
        i32.store
        local.get $p0
        local.get $p0
        i32.store offset=12
        local.get $p0
        local.get $p0
        i32.store offset=8
        return
      end
      local.get $l5
      i32.load offset=8
      local.set $p1
      local.get $l5
      local.get $p0
      i32.store offset=8
      local.get $p1
      local.get $p0
      i32.store offset=12
      local.get $p0
      i32.const 24
      i32.add
      i32.const 0
      i32.store
      local.get $p0
      local.get $p1
      i32.store offset=8
      local.get $p0
      local.get $l5
      i32.store offset=12
    end)
  (func $internal_memalign (type $t3) (param $p0 i32) (param $p1 i32) (result i32)
    (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32)
    block $B0
      block $B1
        local.get $p0
        i32.const 16
        local.get $p0
        i32.const 16
        i32.gt_u
        select
        local.tee $l2
        local.get $l2
        i32.const -1
        i32.add
        i32.and
        br_if $B1
        local.get $l2
        local.set $p0
        br $B0
      end
      i32.const 32
      local.set $l3
      loop $L2
        local.get $l3
        local.tee $p0
        i32.const 1
        i32.shl
        local.set $l3
        local.get $p0
        local.get $l2
        i32.lt_u
        br_if $L2
      end
    end
    block $B3
      i32.const -64
      local.get $p0
      i32.sub
      local.get $p1
      i32.gt_u
      br_if $B3
      i32.const 0
      i32.const 48
      i32.store offset=1061092
      i32.const 0
      return
    end
    block $B4
      i32.const 16
      local.get $p1
      i32.const 19
      i32.add
      i32.const -16
      i32.and
      local.get $p1
      i32.const 11
      i32.lt_u
      select
      local.tee $p1
      i32.const 12
      i32.or
      local.get $p0
      i32.add
      call $dlmalloc
      local.tee $l3
      br_if $B4
      i32.const 0
      return
    end
    local.get $l3
    i32.const -8
    i32.add
    local.set $l2
    block $B5
      block $B6
        local.get $p0
        i32.const -1
        i32.add
        local.get $l3
        i32.and
        br_if $B6
        local.get $l2
        local.set $p0
        br $B5
      end
      local.get $l3
      i32.const -4
      i32.add
      local.tee $l4
      i32.load
      local.tee $l5
      i32.const -8
      i32.and
      local.get $l3
      local.get $p0
      i32.add
      i32.const -1
      i32.add
      i32.const 0
      local.get $p0
      i32.sub
      i32.and
      i32.const -8
      i32.add
      local.tee $l3
      local.get $l3
      local.get $p0
      i32.add
      local.get $l3
      local.get $l2
      i32.sub
      i32.const 15
      i32.gt_u
      select
      local.tee $p0
      local.get $l2
      i32.sub
      local.tee $l3
      i32.sub
      local.set $l6
      block $B7
        local.get $l5
        i32.const 3
        i32.and
        br_if $B7
        local.get $p0
        local.get $l6
        i32.store offset=4
        local.get $p0
        local.get $l2
        i32.load
        local.get $l3
        i32.add
        i32.store
        br $B5
      end
      local.get $p0
      local.get $l6
      local.get $p0
      i32.load offset=4
      i32.const 1
      i32.and
      i32.or
      i32.const 2
      i32.or
      i32.store offset=4
      local.get $p0
      local.get $l6
      i32.add
      local.tee $l6
      local.get $l6
      i32.load offset=4
      i32.const 1
      i32.or
      i32.store offset=4
      local.get $l4
      local.get $l3
      local.get $l4
      i32.load
      i32.const 1
      i32.and
      i32.or
      i32.const 2
      i32.or
      i32.store
      local.get $p0
      local.get $p0
      i32.load offset=4
      i32.const 1
      i32.or
      i32.store offset=4
      local.get $l2
      local.get $l3
      call $dispose_chunk
    end
    block $B8
      local.get $p0
      i32.load offset=4
      local.tee $l3
      i32.const 3
      i32.and
      i32.eqz
      br_if $B8
      local.get $l3
      i32.const -8
      i32.and
      local.tee $l2
      local.get $p1
      i32.const 16
      i32.add
      i32.le_u
      br_if $B8
      local.get $p0
      local.get $p1
      local.get $l3
      i32.const 1
      i32.and
      i32.or
      i32.const 2
      i32.or
      i32.store offset=4
      local.get $p0
      local.get $p1
      i32.add
      local.tee $l3
      local.get $l2
      local.get $p1
      i32.sub
      local.tee $p1
      i32.const 3
      i32.or
      i32.store offset=4
      local.get $p0
      local.get $l2
      i32.add
      local.tee $l2
      local.get $l2
      i32.load offset=4
      i32.const 1
      i32.or
      i32.store offset=4
      local.get $l3
      local.get $p1
      call $dispose_chunk
    end
    local.get $p0
    i32.const 8
    i32.add)
  (func $aligned_alloc (type $t3) (param $p0 i32) (param $p1 i32) (result i32)
    block $B0
      local.get $p0
      i32.const 16
      i32.gt_u
      br_if $B0
      local.get $p1
      call $dlmalloc
      return
    end
    local.get $p0
    local.get $p1
    call $internal_memalign)
  (func $_Exit (type $t1) (param $p0 i32)
    local.get $p0
    call $__wasi_proc_exit
    unreachable)
  (func $__wasilibc_populate_libpreopen (type $t0)
    (local $l0 i32) (local $l1 i32) (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32)
    global.get $g0
    i32.const 16
    i32.sub
    local.tee $l0
    global.set $g0
    i32.const 3
    local.set $l1
    block $B0
      block $B1
        block $B2
          block $B3
            block $B4
              loop $L5
                local.get $l1
                local.get $l0
                i32.const 8
                i32.add
                call $__wasi_fd_prestat_get
                local.tee $l2
                i32.const 8
                i32.gt_u
                br_if $B3
                block $B6
                  block $B7
                    local.get $l2
                    br_table $B7 $B3 $B3 $B3 $B3 $B3 $B3 $B3 $B6 $B7
                  end
                  block $B8
                    local.get $l0
                    i32.load8_u offset=8
                    br_if $B8
                    local.get $l0
                    i32.load offset=12
                    local.tee $l2
                    i32.const 1
                    i32.add
                    call $malloc
                    local.tee $l3
                    i32.eqz
                    br_if $B1
                    local.get $l1
                    local.get $l3
                    local.get $l2
                    call $__wasi_fd_prestat_dir_name
                    br_if $B4
                    local.get $l3
                    local.get $l0
                    i32.load offset=12
                    i32.add
                    i32.const 0
                    i32.store8
                    local.get $l1
                    i32.const -1
                    i32.le_s
                    br_if $B0
                    block $B9
                      block $B10
                        i32.const 0
                        i32.load offset=1061104
                        local.tee $l2
                        i32.const 0
                        i32.load offset=1061100
                        i32.eq
                        br_if $B10
                        i32.const 0
                        i32.load offset=1061096
                        local.set $l4
                        br $B9
                      end
                      i32.const 8
                      local.get $l2
                      i32.const 1
                      i32.shl
                      i32.const 4
                      local.get $l2
                      select
                      local.tee $l5
                      call $calloc
                      local.tee $l4
                      i32.eqz
                      br_if $B2
                      local.get $l4
                      i32.const 0
                      i32.load offset=1061096
                      local.tee $l6
                      local.get $l2
                      i32.const 3
                      i32.shl
                      call $memcpy
                      local.set $l2
                      local.get $l6
                      call $free
                      i32.const 0
                      local.get $l5
                      i32.store offset=1061100
                      i32.const 0
                      local.get $l2
                      i32.store offset=1061096
                      i32.const 0
                      i32.load offset=1061104
                      local.set $l2
                    end
                    i32.const 0
                    local.get $l2
                    i32.const 1
                    i32.add
                    i32.store offset=1061104
                    local.get $l4
                    local.get $l2
                    i32.const 3
                    i32.shl
                    i32.add
                    local.tee $l2
                    local.get $l1
                    i32.store offset=4
                    local.get $l2
                    local.get $l3
                    i32.store
                  end
                  local.get $l1
                  i32.const 1
                  i32.add
                  local.tee $l2
                  local.get $l1
                  i32.lt_u
                  local.set $l3
                  local.get $l2
                  local.set $l1
                  local.get $l3
                  i32.eqz
                  br_if $L5
                end
              end
              local.get $l0
              i32.const 16
              i32.add
              global.set $g0
              return
            end
            local.get $l3
            call $free
          end
          i32.const 71
          call $_Exit
          unreachable
        end
        local.get $l3
        call $free
      end
      i32.const 70
      call $_Exit
      unreachable
    end
    call $abort
    unreachable)
  (func $__wasilibc_populate_environ (type $t0)
    (local $l0 i32) (local $l1 i32) (local $l2 i32)
    global.get $g0
    i32.const 16
    i32.sub
    local.tee $l0
    global.set $g0
    block $B0
      block $B1
        local.get $l0
        i32.const 12
        i32.add
        local.get $l0
        i32.const 8
        i32.add
        call $__wasi_environ_sizes_get
        br_if $B1
        local.get $l0
        i32.load offset=12
        local.tee $l1
        i32.eqz
        br_if $B0
        block $B2
          block $B3
            local.get $l1
            i32.const 1
            i32.add
            local.tee $l2
            local.get $l1
            i32.lt_u
            br_if $B3
            local.get $l0
            i32.load offset=8
            call $malloc
            local.tee $l0
            i32.eqz
            br_if $B3
            local.get $l2
            i32.const 4
            call $calloc
            local.tee $l1
            br_if $B2
            local.get $l0
            call $free
          end
          i32.const 70
          call $_Exit
          unreachable
        end
        block $B4
          local.get $l1
          local.get $l0
          call $__wasi_environ_get
          i32.eqz
          br_if $B4
          local.get $l0
          call $free
          local.get $l1
          call $free
          br $B1
        end
        i32.const 0
        local.get $l1
        i32.store offset=1060500
      end
      i32.const 71
      call $_Exit
      unreachable
    end
    local.get $l0
    i32.const 16
    i32.add
    global.set $g0)
  (func $sbrk (type $t7) (param $p0 i32) (result i32)
    block $B0
      local.get $p0
      br_if $B0
      memory.size
      i32.const 16
      i32.shl
      return
    end
    block $B1
      local.get $p0
      i32.const 65535
      i32.and
      br_if $B1
      local.get $p0
      i32.const -1
      i32.le_s
      br_if $B1
      block $B2
        local.get $p0
        i32.const 16
        i32.shr_u
        memory.grow
        local.tee $p0
        i32.const -1
        i32.ne
        br_if $B2
        i32.const 0
        i32.const 48
        i32.store offset=1061092
        i32.const -1
        return
      end
      local.get $p0
      i32.const 16
      i32.shl
      return
    end
    call $abort
    unreachable)
  (func $dummy (type $t0))
  (func $__prepare_for_exit (type $t0)
    call $dummy
    call $dummy)
  (func $getenv (type $t7) (param $p0 i32) (result i32)
    (local $l1 i32) (local $l2 i32) (local $l3 i32) (local $l4 i32)
    i32.const 0
    local.set $l1
    block $B0
      local.get $p0
      i32.const 61
      call $__strchrnul
      local.tee $l2
      local.get $p0
      i32.sub
      local.tee $l3
      i32.eqz
      br_if $B0
      local.get $l2
      i32.load8_u
      br_if $B0
      i32.const 0
      i32.load offset=1060500
      local.tee $l4
      i32.eqz
      br_if $B0
      local.get $l4
      i32.load
      local.tee $l2
      i32.eqz
      br_if $B0
      local.get $l4
      i32.const 4
      i32.add
      local.set $l4
      block $B1
        loop $L2
          block $B3
            local.get $p0
            local.get $l2
            local.get $l3
            call $strncmp
            br_if $B3
            local.get $l2
            local.get $l3
            i32.add
            local.tee $l2
            i32.load8_u
            i32.const 61
            i32.eq
            br_if $B1
          end
          local.get $l4
          i32.load
          local.set $l2
          local.get $l4
          i32.const 4
          i32.add
          local.set $l4
          local.get $l2
          br_if $L2
          br $B0
        end
      end
      local.get $l2
      i32.const 1
      i32.add
      local.set $l1
    end
    local.get $l1)
  (func $memmove (type $t8) (param $p0 i32) (param $p1 i32) (param $p2 i32) (result i32)
    (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32)
    block $B0
      local.get $p0
      local.get $p1
      i32.eq
      br_if $B0
      block $B1
        local.get $p1
        local.get $p0
        i32.sub
        local.get $p2
        i32.sub
        i32.const 0
        local.get $p2
        i32.const 1
        i32.shl
        i32.sub
        i32.gt_u
        br_if $B1
        local.get $p0
        local.get $p1
        local.get $p2
        call $memcpy
        drop
        br $B0
      end
      local.get $p1
      local.get $p0
      i32.xor
      i32.const 3
      i32.and
      local.set $l3
      block $B2
        block $B3
          block $B4
            local.get $p0
            local.get $p1
            i32.ge_u
            br_if $B4
            block $B5
              local.get $l3
              i32.eqz
              br_if $B5
              local.get $p0
              local.set $l3
              br $B2
            end
            block $B6
              local.get $p0
              i32.const 3
              i32.and
              br_if $B6
              local.get $p0
              local.set $l3
              br $B3
            end
            local.get $p0
            local.set $l3
            loop $L7
              local.get $p2
              i32.eqz
              br_if $B0
              local.get $l3
              local.get $p1
              i32.load8_u
              i32.store8
              local.get $p1
              i32.const 1
              i32.add
              local.set $p1
              local.get $p2
              i32.const -1
              i32.add
              local.set $p2
              local.get $l3
              i32.const 1
              i32.add
              local.tee $l3
              i32.const 3
              i32.and
              i32.eqz
              br_if $B3
              br $L7
            end
          end
          block $B8
            block $B9
              local.get $l3
              i32.eqz
              br_if $B9
              local.get $p2
              local.set $l3
              br $B8
            end
            block $B10
              block $B11
                local.get $p0
                local.get $p2
                i32.add
                i32.const 3
                i32.and
                br_if $B11
                local.get $p2
                local.set $l3
                br $B10
              end
              local.get $p1
              i32.const -1
              i32.add
              local.set $l4
              local.get $p0
              i32.const -1
              i32.add
              local.set $l5
              loop $L12
                local.get $p2
                i32.eqz
                br_if $B0
                local.get $l5
                local.get $p2
                i32.add
                local.tee $l6
                local.get $l4
                local.get $p2
                i32.add
                i32.load8_u
                i32.store8
                local.get $p2
                i32.const -1
                i32.add
                local.tee $l3
                local.set $p2
                local.get $l6
                i32.const 3
                i32.and
                br_if $L12
              end
            end
            local.get $l3
            i32.const 4
            i32.lt_u
            br_if $B8
            local.get $p0
            i32.const -4
            i32.add
            local.set $p2
            local.get $p1
            i32.const -4
            i32.add
            local.set $l6
            loop $L13
              local.get $p2
              local.get $l3
              i32.add
              local.get $l6
              local.get $l3
              i32.add
              i32.load
              i32.store
              local.get $l3
              i32.const -4
              i32.add
              local.tee $l3
              i32.const 3
              i32.gt_u
              br_if $L13
            end
          end
          local.get $l3
          i32.eqz
          br_if $B0
          local.get $p1
          i32.const -1
          i32.add
          local.set $p1
          local.get $p0
          i32.const -1
          i32.add
          local.set $p2
          loop $L14
            local.get $p2
            local.get $l3
            i32.add
            local.get $p1
            local.get $l3
            i32.add
            i32.load8_u
            i32.store8
            local.get $l3
            i32.const -1
            i32.add
            local.tee $l3
            br_if $L14
            br $B0
          end
        end
        local.get $p2
        i32.const 4
        i32.lt_u
        br_if $B2
        local.get $p2
        local.set $l6
        loop $L15
          local.get $l3
          local.get $p1
          i32.load
          i32.store
          local.get $p1
          i32.const 4
          i32.add
          local.set $p1
          local.get $l3
          i32.const 4
          i32.add
          local.set $l3
          local.get $l6
          i32.const -4
          i32.add
          local.tee $l6
          i32.const 3
          i32.gt_u
          br_if $L15
        end
        local.get $p2
        i32.const 3
        i32.and
        local.set $p2
      end
      local.get $p2
      i32.eqz
      br_if $B0
      loop $L16
        local.get $l3
        local.get $p1
        i32.load8_u
        i32.store8
        local.get $l3
        i32.const 1
        i32.add
        local.set $l3
        local.get $p1
        i32.const 1
        i32.add
        local.set $p1
        local.get $p2
        i32.const -1
        i32.add
        local.tee $p2
        br_if $L16
      end
    end
    local.get $p0)
  (func $strlen (type $t7) (param $p0 i32) (result i32)
    (local $l1 i32) (local $l2 i32) (local $l3 i32)
    local.get $p0
    local.set $l1
    block $B0
      block $B1
        block $B2
          local.get $p0
          i32.const 3
          i32.and
          i32.eqz
          br_if $B2
          block $B3
            local.get $p0
            i32.load8_u
            br_if $B3
            local.get $p0
            local.get $p0
            i32.sub
            return
          end
          local.get $p0
          i32.const 1
          i32.add
          local.set $l1
          loop $L4
            local.get $l1
            i32.const 3
            i32.and
            i32.eqz
            br_if $B2
            local.get $l1
            i32.load8_u
            local.set $l2
            local.get $l1
            i32.const 1
            i32.add
            local.tee $l3
            local.set $l1
            local.get $l2
            i32.eqz
            br_if $B1
            br $L4
          end
        end
        local.get $l1
        i32.const -4
        i32.add
        local.set $l1
        loop $L5
          local.get $l1
          i32.const 4
          i32.add
          local.tee $l1
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
          i32.eqz
          br_if $L5
        end
        block $B6
          local.get $l2
          i32.const 255
          i32.and
          br_if $B6
          local.get $l1
          local.get $p0
          i32.sub
          return
        end
        loop $L7
          local.get $l1
          i32.load8_u offset=1
          local.set $l2
          local.get $l1
          i32.const 1
          i32.add
          local.tee $l3
          local.set $l1
          local.get $l2
          br_if $L7
          br $B0
        end
      end
      local.get $l3
      i32.const -1
      i32.add
      local.set $l3
    end
    local.get $l3
    local.get $p0
    i32.sub)
  (func $strerror (type $t7) (param $p0 i32) (result i32)
    (local $l1 i32) (local $l2 i32) (local $l3 i32) (local $l4 i32)
    i32.const 0
    local.set $l1
    block $B0
      i32.const 0
      i32.load offset=1061136
      local.tee $l2
      br_if $B0
      i32.const 1061112
      local.set $l2
      i32.const 0
      i32.const 1061112
      i32.store offset=1061136
    end
    block $B1
      block $B2
        block $B3
          loop $L4
            local.get $l1
            i32.const 1052640
            i32.add
            i32.load8_u
            local.get $p0
            i32.eq
            br_if $B3
            i32.const 77
            local.set $l3
            local.get $l1
            i32.const 1
            i32.add
            local.tee $l1
            i32.const 77
            i32.ne
            br_if $L4
            br $B2
          end
        end
        local.get $l1
        local.set $l3
        local.get $l1
        br_if $B2
        i32.const 1052720
        local.set $l4
        br $B1
      end
      i32.const 1052720
      local.set $l1
      loop $L5
        local.get $l1
        i32.load8_u
        local.set $p0
        local.get $l1
        i32.const 1
        i32.add
        local.tee $l4
        local.set $l1
        local.get $p0
        br_if $L5
        local.get $l4
        local.set $l1
        local.get $l3
        i32.const -1
        i32.add
        local.tee $l3
        br_if $L5
      end
    end
    local.get $l4
    local.get $l2
    i32.load offset=20
    call $__lctrans)
  (func $strerror_r (type $t8) (param $p0 i32) (param $p1 i32) (param $p2 i32) (result i32)
    (local $l3 i32)
    block $B0
      block $B1
        local.get $p0
        call $strerror
        local.tee $p0
        call $strlen
        local.tee $l3
        local.get $p2
        i32.lt_u
        br_if $B1
        i32.const 68
        local.set $l3
        local.get $p2
        i32.eqz
        br_if $B0
        local.get $p1
        local.get $p0
        local.get $p2
        i32.const -1
        i32.add
        local.tee $p2
        call $memcpy
        local.get $p2
        i32.add
        i32.const 0
        i32.store8
        i32.const 68
        return
      end
      local.get $p1
      local.get $p0
      local.get $l3
      i32.const 1
      i32.add
      call $memcpy
      drop
      i32.const 0
      local.set $l3
    end
    local.get $l3)
  (func $__strchrnul (type $t3) (param $p0 i32) (param $p1 i32) (result i32)
    (local $l2 i32) (local $l3 i32)
    block $B0
      local.get $p1
      i32.const 255
      i32.and
      local.tee $l2
      i32.eqz
      br_if $B0
      block $B1
        block $B2
          local.get $p0
          i32.const 3
          i32.and
          i32.eqz
          br_if $B2
          loop $L3
            local.get $p0
            i32.load8_u
            local.tee $l3
            i32.eqz
            br_if $B1
            local.get $l3
            local.get $p1
            i32.const 255
            i32.and
            i32.eq
            br_if $B1
            local.get $p0
            i32.const 1
            i32.add
            local.tee $p0
            i32.const 3
            i32.and
            br_if $L3
          end
        end
        block $B4
          local.get $p0
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
          br_if $B4
          local.get $l2
          i32.const 16843009
          i32.mul
          local.set $l2
          loop $L5
            local.get $l3
            local.get $l2
            i32.xor
            local.tee $l3
            i32.const -1
            i32.xor
            local.get $l3
            i32.const -16843009
            i32.add
            i32.and
            i32.const -2139062144
            i32.and
            br_if $B4
            local.get $p0
            i32.load offset=4
            local.set $l3
            local.get $p0
            i32.const 4
            i32.add
            local.set $p0
            local.get $l3
            i32.const -1
            i32.xor
            local.get $l3
            i32.const -16843009
            i32.add
            i32.and
            i32.const -2139062144
            i32.and
            i32.eqz
            br_if $L5
          end
        end
        local.get $p0
        i32.const -1
        i32.add
        local.set $p0
        loop $L6
          local.get $p0
          i32.const 1
          i32.add
          local.tee $p0
          i32.load8_u
          local.tee $l3
          i32.eqz
          br_if $B1
          local.get $l3
          local.get $p1
          i32.const 255
          i32.and
          i32.ne
          br_if $L6
        end
      end
      local.get $p0
      return
    end
    local.get $p0
    local.get $p0
    call $strlen
    i32.add)
  (func $memcpy (type $t8) (param $p0 i32) (param $p1 i32) (param $p2 i32) (result i32)
    (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32) (local $l9 i32) (local $l10 i32)
    block $B0
      block $B1
        local.get $p2
        i32.eqz
        br_if $B1
        local.get $p1
        i32.const 3
        i32.and
        i32.eqz
        br_if $B1
        local.get $p0
        local.set $l3
        loop $L2
          local.get $l3
          local.get $p1
          i32.load8_u
          i32.store8
          local.get $p2
          i32.const -1
          i32.add
          local.set $l4
          local.get $l3
          i32.const 1
          i32.add
          local.set $l3
          local.get $p1
          i32.const 1
          i32.add
          local.set $p1
          local.get $p2
          i32.const 1
          i32.eq
          br_if $B0
          local.get $l4
          local.set $p2
          local.get $p1
          i32.const 3
          i32.and
          br_if $L2
          br $B0
        end
      end
      local.get $p2
      local.set $l4
      local.get $p0
      local.set $l3
    end
    block $B3
      block $B4
        local.get $l3
        i32.const 3
        i32.and
        local.tee $p2
        br_if $B4
        block $B5
          block $B6
            local.get $l4
            i32.const 16
            i32.ge_u
            br_if $B6
            local.get $l4
            local.set $p2
            br $B5
          end
          local.get $l4
          i32.const -16
          i32.add
          local.set $p2
          loop $L7
            local.get $l3
            local.get $p1
            i32.load
            i32.store
            local.get $l3
            i32.const 4
            i32.add
            local.get $p1
            i32.const 4
            i32.add
            i32.load
            i32.store
            local.get $l3
            i32.const 8
            i32.add
            local.get $p1
            i32.const 8
            i32.add
            i32.load
            i32.store
            local.get $l3
            i32.const 12
            i32.add
            local.get $p1
            i32.const 12
            i32.add
            i32.load
            i32.store
            local.get $l3
            i32.const 16
            i32.add
            local.set $l3
            local.get $p1
            i32.const 16
            i32.add
            local.set $p1
            local.get $l4
            i32.const -16
            i32.add
            local.tee $l4
            i32.const 15
            i32.gt_u
            br_if $L7
          end
        end
        block $B8
          local.get $p2
          i32.const 8
          i32.and
          i32.eqz
          br_if $B8
          local.get $l3
          local.get $p1
          i64.load align=4
          i64.store align=4
          local.get $p1
          i32.const 8
          i32.add
          local.set $p1
          local.get $l3
          i32.const 8
          i32.add
          local.set $l3
        end
        block $B9
          local.get $p2
          i32.const 4
          i32.and
          i32.eqz
          br_if $B9
          local.get $l3
          local.get $p1
          i32.load
          i32.store
          local.get $p1
          i32.const 4
          i32.add
          local.set $p1
          local.get $l3
          i32.const 4
          i32.add
          local.set $l3
        end
        block $B10
          local.get $p2
          i32.const 2
          i32.and
          i32.eqz
          br_if $B10
          local.get $l3
          local.get $p1
          i32.load8_u
          i32.store8
          local.get $l3
          local.get $p1
          i32.load8_u offset=1
          i32.store8 offset=1
          local.get $l3
          i32.const 2
          i32.add
          local.set $l3
          local.get $p1
          i32.const 2
          i32.add
          local.set $p1
        end
        local.get $p2
        i32.const 1
        i32.and
        i32.eqz
        br_if $B3
        local.get $l3
        local.get $p1
        i32.load8_u
        i32.store8
        local.get $p0
        return
      end
      block $B11
        local.get $l4
        i32.const 32
        i32.lt_u
        br_if $B11
        local.get $p2
        i32.const -1
        i32.add
        local.tee $p2
        i32.const 2
        i32.gt_u
        br_if $B11
        block $B12
          block $B13
            block $B14
              local.get $p2
              br_table $B14 $B13 $B12 $B14
            end
            local.get $l3
            local.get $p1
            i32.load8_u offset=1
            i32.store8 offset=1
            local.get $l3
            local.get $p1
            i32.load
            local.tee $l5
            i32.store8
            local.get $l3
            local.get $p1
            i32.load8_u offset=2
            i32.store8 offset=2
            local.get $l4
            i32.const -3
            i32.add
            local.set $l6
            local.get $l3
            i32.const 3
            i32.add
            local.set $l7
            local.get $l4
            i32.const -20
            i32.add
            i32.const -16
            i32.and
            local.set $l8
            i32.const 0
            local.set $p2
            loop $L15
              local.get $l7
              local.get $p2
              i32.add
              local.tee $l3
              local.get $p1
              local.get $p2
              i32.add
              local.tee $l9
              i32.const 4
              i32.add
              i32.load
              local.tee $l10
              i32.const 8
              i32.shl
              local.get $l5
              i32.const 24
              i32.shr_u
              i32.or
              i32.store
              local.get $l3
              i32.const 4
              i32.add
              local.get $l9
              i32.const 8
              i32.add
              i32.load
              local.tee $l5
              i32.const 8
              i32.shl
              local.get $l10
              i32.const 24
              i32.shr_u
              i32.or
              i32.store
              local.get $l3
              i32.const 8
              i32.add
              local.get $l9
              i32.const 12
              i32.add
              i32.load
              local.tee $l10
              i32.const 8
              i32.shl
              local.get $l5
              i32.const 24
              i32.shr_u
              i32.or
              i32.store
              local.get $l3
              i32.const 12
              i32.add
              local.get $l9
              i32.const 16
              i32.add
              i32.load
              local.tee $l5
              i32.const 8
              i32.shl
              local.get $l10
              i32.const 24
              i32.shr_u
              i32.or
              i32.store
              local.get $p2
              i32.const 16
              i32.add
              local.set $p2
              local.get $l6
              i32.const -16
              i32.add
              local.tee $l6
              i32.const 16
              i32.gt_u
              br_if $L15
            end
            local.get $l7
            local.get $p2
            i32.add
            local.set $l3
            local.get $p1
            local.get $p2
            i32.add
            i32.const 3
            i32.add
            local.set $p1
            local.get $l4
            local.get $l8
            i32.sub
            i32.const -19
            i32.add
            local.set $l4
            br $B11
          end
          local.get $l3
          local.get $p1
          i32.load
          local.tee $l5
          i32.store8
          local.get $l3
          local.get $p1
          i32.load8_u offset=1
          i32.store8 offset=1
          local.get $l4
          i32.const -2
          i32.add
          local.set $l6
          local.get $l3
          i32.const 2
          i32.add
          local.set $l7
          local.get $l4
          i32.const -20
          i32.add
          i32.const -16
          i32.and
          local.set $l8
          i32.const 0
          local.set $p2
          loop $L16
            local.get $l7
            local.get $p2
            i32.add
            local.tee $l3
            local.get $p1
            local.get $p2
            i32.add
            local.tee $l9
            i32.const 4
            i32.add
            i32.load
            local.tee $l10
            i32.const 16
            i32.shl
            local.get $l5
            i32.const 16
            i32.shr_u
            i32.or
            i32.store
            local.get $l3
            i32.const 4
            i32.add
            local.get $l9
            i32.const 8
            i32.add
            i32.load
            local.tee $l5
            i32.const 16
            i32.shl
            local.get $l10
            i32.const 16
            i32.shr_u
            i32.or
            i32.store
            local.get $l3
            i32.const 8
            i32.add
            local.get $l9
            i32.const 12
            i32.add
            i32.load
            local.tee $l10
            i32.const 16
            i32.shl
            local.get $l5
            i32.const 16
            i32.shr_u
            i32.or
            i32.store
            local.get $l3
            i32.const 12
            i32.add
            local.get $l9
            i32.const 16
            i32.add
            i32.load
            local.tee $l5
            i32.const 16
            i32.shl
            local.get $l10
            i32.const 16
            i32.shr_u
            i32.or
            i32.store
            local.get $p2
            i32.const 16
            i32.add
            local.set $p2
            local.get $l6
            i32.const -16
            i32.add
            local.tee $l6
            i32.const 17
            i32.gt_u
            br_if $L16
          end
          local.get $l7
          local.get $p2
          i32.add
          local.set $l3
          local.get $p1
          local.get $p2
          i32.add
          i32.const 2
          i32.add
          local.set $p1
          local.get $l4
          local.get $l8
          i32.sub
          i32.const -18
          i32.add
          local.set $l4
          br $B11
        end
        local.get $l3
        local.get $p1
        i32.load
        local.tee $l5
        i32.store8
        local.get $l4
        i32.const -1
        i32.add
        local.set $l6
        local.get $l3
        i32.const 1
        i32.add
        local.set $l7
        local.get $l4
        i32.const -20
        i32.add
        i32.const -16
        i32.and
        local.set $l8
        i32.const 0
        local.set $p2
        loop $L17
          local.get $l7
          local.get $p2
          i32.add
          local.tee $l3
          local.get $p1
          local.get $p2
          i32.add
          local.tee $l9
          i32.const 4
          i32.add
          i32.load
          local.tee $l10
          i32.const 24
          i32.shl
          local.get $l5
          i32.const 8
          i32.shr_u
          i32.or
          i32.store
          local.get $l3
          i32.const 4
          i32.add
          local.get $l9
          i32.const 8
          i32.add
          i32.load
          local.tee $l5
          i32.const 24
          i32.shl
          local.get $l10
          i32.const 8
          i32.shr_u
          i32.or
          i32.store
          local.get $l3
          i32.const 8
          i32.add
          local.get $l9
          i32.const 12
          i32.add
          i32.load
          local.tee $l10
          i32.const 24
          i32.shl
          local.get $l5
          i32.const 8
          i32.shr_u
          i32.or
          i32.store
          local.get $l3
          i32.const 12
          i32.add
          local.get $l9
          i32.const 16
          i32.add
          i32.load
          local.tee $l5
          i32.const 24
          i32.shl
          local.get $l10
          i32.const 8
          i32.shr_u
          i32.or
          i32.store
          local.get $p2
          i32.const 16
          i32.add
          local.set $p2
          local.get $l6
          i32.const -16
          i32.add
          local.tee $l6
          i32.const 18
          i32.gt_u
          br_if $L17
        end
        local.get $l7
        local.get $p2
        i32.add
        local.set $l3
        local.get $p1
        local.get $p2
        i32.add
        i32.const 1
        i32.add
        local.set $p1
        local.get $l4
        local.get $l8
        i32.sub
        i32.const -17
        i32.add
        local.set $l4
      end
      block $B18
        local.get $l4
        i32.const 16
        i32.and
        i32.eqz
        br_if $B18
        local.get $l3
        local.get $p1
        i32.load16_u align=1
        i32.store16 align=1
        local.get $l3
        local.get $p1
        i32.load8_u offset=2
        i32.store8 offset=2
        local.get $l3
        local.get $p1
        i32.load8_u offset=3
        i32.store8 offset=3
        local.get $l3
        local.get $p1
        i32.load8_u offset=4
        i32.store8 offset=4
        local.get $l3
        local.get $p1
        i32.load8_u offset=5
        i32.store8 offset=5
        local.get $l3
        local.get $p1
        i32.load8_u offset=6
        i32.store8 offset=6
        local.get $l3
        local.get $p1
        i32.load8_u offset=7
        i32.store8 offset=7
        local.get $l3
        local.get $p1
        i32.load8_u offset=8
        i32.store8 offset=8
        local.get $l3
        local.get $p1
        i32.load8_u offset=9
        i32.store8 offset=9
        local.get $l3
        local.get $p1
        i32.load8_u offset=10
        i32.store8 offset=10
        local.get $l3
        local.get $p1
        i32.load8_u offset=11
        i32.store8 offset=11
        local.get $l3
        local.get $p1
        i32.load8_u offset=12
        i32.store8 offset=12
        local.get $l3
        local.get $p1
        i32.load8_u offset=13
        i32.store8 offset=13
        local.get $l3
        local.get $p1
        i32.load8_u offset=14
        i32.store8 offset=14
        local.get $l3
        local.get $p1
        i32.load8_u offset=15
        i32.store8 offset=15
        local.get $l3
        i32.const 16
        i32.add
        local.set $l3
        local.get $p1
        i32.const 16
        i32.add
        local.set $p1
      end
      block $B19
        local.get $l4
        i32.const 8
        i32.and
        i32.eqz
        br_if $B19
        local.get $l3
        local.get $p1
        i32.load8_u
        i32.store8
        local.get $l3
        local.get $p1
        i32.load8_u offset=1
        i32.store8 offset=1
        local.get $l3
        local.get $p1
        i32.load8_u offset=2
        i32.store8 offset=2
        local.get $l3
        local.get $p1
        i32.load8_u offset=3
        i32.store8 offset=3
        local.get $l3
        local.get $p1
        i32.load8_u offset=4
        i32.store8 offset=4
        local.get $l3
        local.get $p1
        i32.load8_u offset=5
        i32.store8 offset=5
        local.get $l3
        local.get $p1
        i32.load8_u offset=6
        i32.store8 offset=6
        local.get $l3
        local.get $p1
        i32.load8_u offset=7
        i32.store8 offset=7
        local.get $l3
        i32.const 8
        i32.add
        local.set $l3
        local.get $p1
        i32.const 8
        i32.add
        local.set $p1
      end
      block $B20
        local.get $l4
        i32.const 4
        i32.and
        i32.eqz
        br_if $B20
        local.get $l3
        local.get $p1
        i32.load8_u
        i32.store8
        local.get $l3
        local.get $p1
        i32.load8_u offset=1
        i32.store8 offset=1
        local.get $l3
        local.get $p1
        i32.load8_u offset=2
        i32.store8 offset=2
        local.get $l3
        local.get $p1
        i32.load8_u offset=3
        i32.store8 offset=3
        local.get $l3
        i32.const 4
        i32.add
        local.set $l3
        local.get $p1
        i32.const 4
        i32.add
        local.set $p1
      end
      block $B21
        local.get $l4
        i32.const 2
        i32.and
        i32.eqz
        br_if $B21
        local.get $l3
        local.get $p1
        i32.load8_u
        i32.store8
        local.get $l3
        local.get $p1
        i32.load8_u offset=1
        i32.store8 offset=1
        local.get $l3
        i32.const 2
        i32.add
        local.set $l3
        local.get $p1
        i32.const 2
        i32.add
        local.set $p1
      end
      local.get $l4
      i32.const 1
      i32.and
      i32.eqz
      br_if $B3
      local.get $l3
      local.get $p1
      i32.load8_u
      i32.store8
    end
    local.get $p0)
  (func $memset (type $t8) (param $p0 i32) (param $p1 i32) (param $p2 i32) (result i32)
    (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i64)
    block $B0
      local.get $p2
      i32.eqz
      br_if $B0
      local.get $p0
      local.get $p1
      i32.store8
      local.get $p2
      local.get $p0
      i32.add
      local.tee $l3
      i32.const -1
      i32.add
      local.get $p1
      i32.store8
      local.get $p2
      i32.const 3
      i32.lt_u
      br_if $B0
      local.get $p0
      local.get $p1
      i32.store8 offset=2
      local.get $p0
      local.get $p1
      i32.store8 offset=1
      local.get $l3
      i32.const -3
      i32.add
      local.get $p1
      i32.store8
      local.get $l3
      i32.const -2
      i32.add
      local.get $p1
      i32.store8
      local.get $p2
      i32.const 7
      i32.lt_u
      br_if $B0
      local.get $p0
      local.get $p1
      i32.store8 offset=3
      local.get $l3
      i32.const -4
      i32.add
      local.get $p1
      i32.store8
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
      local.tee $l5
      i32.sub
      local.tee $p2
      i32.const 32
      i32.lt_u
      br_if $B0
      local.get $p1
      i64.extend_i32_u
      local.tee $l6
      i64.const 32
      i64.shl
      local.get $l6
      i64.or
      local.set $l6
      local.get $l3
      local.get $l5
      i32.add
      local.set $p1
      loop $L1
        local.get $p1
        local.get $l6
        i64.store
        local.get $p1
        i32.const 24
        i32.add
        local.get $l6
        i64.store
        local.get $p1
        i32.const 16
        i32.add
        local.get $l6
        i64.store
        local.get $p1
        i32.const 8
        i32.add
        local.get $l6
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
    end
    local.get $p0)
  (func $strncmp (type $t8) (param $p0 i32) (param $p1 i32) (param $p2 i32) (result i32)
    (local $l3 i32) (local $l4 i32) (local $l5 i32)
    block $B0
      local.get $p2
      br_if $B0
      i32.const 0
      return
    end
    i32.const 0
    local.set $l3
    block $B1
      local.get $p0
      i32.load8_u
      local.tee $l4
      i32.eqz
      br_if $B1
      local.get $p0
      i32.const 1
      i32.add
      local.set $p0
      local.get $p2
      i32.const -1
      i32.add
      local.set $p2
      loop $L2
        block $B3
          local.get $l4
          i32.const 255
          i32.and
          local.get $p1
          i32.load8_u
          local.tee $l5
          i32.eq
          br_if $B3
          local.get $l4
          local.set $l3
          br $B1
        end
        block $B4
          local.get $p2
          br_if $B4
          local.get $l4
          local.set $l3
          br $B1
        end
        block $B5
          local.get $l5
          br_if $B5
          local.get $l4
          local.set $l3
          br $B1
        end
        local.get $p2
        i32.const -1
        i32.add
        local.set $p2
        local.get $p1
        i32.const 1
        i32.add
        local.set $p1
        local.get $p0
        i32.load8_u
        local.set $l4
        local.get $p0
        i32.const 1
        i32.add
        local.set $p0
        local.get $l4
        br_if $L2
      end
    end
    local.get $l3
    i32.const 255
    i32.and
    local.get $p1
    i32.load8_u
    i32.sub)
  (func $memcmp (type $t8) (param $p0 i32) (param $p1 i32) (param $p2 i32) (result i32)
    (local $l3 i32) (local $l4 i32) (local $l5 i32)
    i32.const 0
    local.set $l3
    block $B0
      local.get $p2
      i32.eqz
      br_if $B0
      block $B1
        loop $L2
          local.get $p0
          i32.load8_u
          local.tee $l4
          local.get $p1
          i32.load8_u
          local.tee $l5
          i32.ne
          br_if $B1
          local.get $p1
          i32.const 1
          i32.add
          local.set $p1
          local.get $p0
          i32.const 1
          i32.add
          local.set $p0
          local.get $p2
          i32.const -1
          i32.add
          local.tee $p2
          br_if $L2
          br $B0
        end
      end
      local.get $l4
      local.get $l5
      i32.sub
      local.set $l3
    end
    local.get $l3)
  (func $dummy.1 (type $t3) (param $p0 i32) (param $p1 i32) (result i32)
    local.get $p0)
  (func $__lctrans (type $t3) (param $p0 i32) (param $p1 i32) (result i32)
    local.get $p0
    local.get $p1
    call $dummy.1)
  (func $_ZN5alloc5alloc18handle_alloc_error17h372aacb639e2de27E (type $t5) (param $p0 i32) (param $p1 i32)
    local.get $p0
    local.get $p1
    call $rust_oom
    unreachable)
  (func $_ZN5alloc7raw_vec17capacity_overflow17h545b4b1a9ba97ff8E (type $t0)
    i32.const 1054317
    i32.const 17
    i32.const 1054336
    call $_ZN4core9panicking5panic17hc60400b47c695700E
    unreachable)
  (func $_ZN5alloc6string13FromUtf8Error10into_bytes17h03cb5aea6ff20b89E (type $t5) (param $p0 i32) (param $p1 i32)
    local.get $p0
    local.get $p1
    i64.load align=4
    i64.store align=4
    local.get $p0
    i32.const 8
    i32.add
    local.get $p1
    i32.const 8
    i32.add
    i32.load
    i32.store)
  (func $_ZN5alloc6string104_$LT$impl$u20$core..convert..From$LT$alloc..string..String$GT$$u20$for$u20$alloc..vec..Vec$LT$u8$GT$$GT$4from17h8c28c811a2a829ddE (type $t5) (param $p0 i32) (param $p1 i32)
    local.get $p0
    local.get $p1
    i64.load align=4
    i64.store align=4
    local.get $p0
    i32.const 8
    i32.add
    local.get $p1
    i32.const 8
    i32.add
    i32.load
    i32.store)
  (func $_ZN4core3ptr18real_drop_in_place17h38a660153738b32fE (type $t1) (param $p0 i32))
  (func $_ZN4core3ptr18real_drop_in_place17h650094a6a70338f7E (type $t1) (param $p0 i32))
  (func $_ZN4core9panicking18panic_bounds_check17h42ce3eaf53169acbE (type $t6) (param $p0 i32) (param $p1 i32) (param $p2 i32)
    (local $l3 i32)
    global.get $g0
    i32.const 48
    i32.sub
    local.tee $l3
    global.set $g0
    local.get $l3
    local.get $p2
    i32.store offset=4
    local.get $l3
    local.get $p1
    i32.store
    local.get $l3
    i32.const 28
    i32.add
    i32.const 2
    i32.store
    local.get $l3
    i32.const 44
    i32.add
    i32.const 4
    i32.store
    local.get $l3
    i64.const 2
    i64.store offset=12 align=4
    local.get $l3
    i32.const 1054488
    i32.store offset=8
    local.get $l3
    i32.const 4
    i32.store offset=36
    local.get $l3
    local.get $l3
    i32.const 32
    i32.add
    i32.store offset=24
    local.get $l3
    local.get $l3
    i32.store offset=40
    local.get $l3
    local.get $l3
    i32.const 4
    i32.add
    i32.store offset=32
    local.get $l3
    i32.const 8
    i32.add
    local.get $p0
    call $_ZN4core9panicking9panic_fmt17h8eef3a14480998beE
    unreachable)
  (func $_ZN4core9panicking5panic17hc60400b47c695700E (type $t6) (param $p0 i32) (param $p1 i32) (param $p2 i32)
    (local $l3 i32)
    global.get $g0
    i32.const 32
    i32.sub
    local.tee $l3
    global.set $g0
    local.get $l3
    i64.const 4
    i64.store offset=16
    local.get $l3
    i64.const 1
    i64.store offset=4 align=4
    local.get $l3
    local.get $p1
    i32.store offset=28
    local.get $l3
    local.get $p0
    i32.store offset=24
    local.get $l3
    local.get $l3
    i32.const 24
    i32.add
    i32.store
    local.get $l3
    local.get $p2
    call $_ZN4core9panicking9panic_fmt17h8eef3a14480998beE
    unreachable)
  (func $_ZN4core5slice20slice_index_len_fail17hfc4485e8c33f2d47E (type $t5) (param $p0 i32) (param $p1 i32)
    (local $l2 i32)
    global.get $g0
    i32.const 48
    i32.sub
    local.tee $l2
    global.set $g0
    local.get $l2
    local.get $p1
    i32.store offset=4
    local.get $l2
    local.get $p0
    i32.store
    local.get $l2
    i32.const 28
    i32.add
    i32.const 2
    i32.store
    local.get $l2
    i32.const 44
    i32.add
    i32.const 4
    i32.store
    local.get $l2
    i64.const 2
    i64.store offset=12 align=4
    local.get $l2
    i32.const 1054732
    i32.store offset=8
    local.get $l2
    i32.const 4
    i32.store offset=36
    local.get $l2
    local.get $l2
    i32.const 32
    i32.add
    i32.store offset=24
    local.get $l2
    local.get $l2
    i32.const 4
    i32.add
    i32.store offset=40
    local.get $l2
    local.get $l2
    i32.store offset=32
    local.get $l2
    i32.const 8
    i32.add
    i32.const 1054748
    call $_ZN4core9panicking9panic_fmt17h8eef3a14480998beE
    unreachable)
  (func $_ZN4core5slice22slice_index_order_fail17heebd88c1be3dadefE (type $t5) (param $p0 i32) (param $p1 i32)
    (local $l2 i32)
    global.get $g0
    i32.const 48
    i32.sub
    local.tee $l2
    global.set $g0
    local.get $l2
    local.get $p1
    i32.store offset=4
    local.get $l2
    local.get $p0
    i32.store
    local.get $l2
    i32.const 28
    i32.add
    i32.const 2
    i32.store
    local.get $l2
    i32.const 44
    i32.add
    i32.const 4
    i32.store
    local.get $l2
    i64.const 2
    i64.store offset=12 align=4
    local.get $l2
    i32.const 1054800
    i32.store offset=8
    local.get $l2
    i32.const 4
    i32.store offset=36
    local.get $l2
    local.get $l2
    i32.const 32
    i32.add
    i32.store offset=24
    local.get $l2
    local.get $l2
    i32.const 4
    i32.add
    i32.store offset=40
    local.get $l2
    local.get $l2
    i32.store offset=32
    local.get $l2
    i32.const 8
    i32.add
    i32.const 1054816
    call $_ZN4core9panicking9panic_fmt17h8eef3a14480998beE
    unreachable)
  (func $_ZN4core3fmt9Formatter3pad17h2edb8e7d7e605d23E (type $t8) (param $p0 i32) (param $p1 i32) (param $p2 i32) (result i32)
    (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32) (local $l9 i32) (local $l10 i32) (local $l11 i32) (local $l12 i32) (local $l13 i32) (local $l14 i32)
    local.get $p0
    i32.load offset=16
    local.set $l3
    block $B0
      block $B1
        block $B2
          block $B3
            local.get $p0
            i32.load offset=8
            local.tee $l4
            i32.const 1
            i32.eq
            br_if $B3
            local.get $l3
            br_if $B2
            local.get $p0
            i32.load offset=24
            local.get $p1
            local.get $p2
            local.get $p0
            i32.const 28
            i32.add
            i32.load
            i32.load offset=12
            call_indirect (type $t8) $T0
            local.set $l3
            br $B0
          end
          local.get $l3
          i32.eqz
          br_if $B1
        end
        block $B4
          block $B5
            local.get $p2
            br_if $B5
            i32.const 0
            local.set $p2
            br $B4
          end
          local.get $p1
          local.get $p2
          i32.add
          local.set $l5
          local.get $p0
          i32.const 20
          i32.add
          i32.load
          i32.const 1
          i32.add
          local.set $l6
          i32.const 0
          local.set $l7
          local.get $p1
          local.set $l3
          local.get $p1
          local.set $l8
          loop $L6
            local.get $l3
            i32.const 1
            i32.add
            local.set $l9
            block $B7
              block $B8
                block $B9
                  local.get $l3
                  i32.load8_s
                  local.tee $l10
                  i32.const -1
                  i32.gt_s
                  br_if $B9
                  block $B10
                    block $B11
                      local.get $l9
                      local.get $l5
                      i32.ne
                      br_if $B11
                      i32.const 0
                      local.set $l11
                      local.get $l5
                      local.set $l3
                      br $B10
                    end
                    local.get $l3
                    i32.load8_u offset=1
                    i32.const 63
                    i32.and
                    local.set $l11
                    local.get $l3
                    i32.const 2
                    i32.add
                    local.tee $l9
                    local.set $l3
                  end
                  local.get $l10
                  i32.const 31
                  i32.and
                  local.set $l12
                  block $B12
                    local.get $l10
                    i32.const 255
                    i32.and
                    local.tee $l10
                    i32.const 223
                    i32.gt_u
                    br_if $B12
                    local.get $l11
                    local.get $l12
                    i32.const 6
                    i32.shl
                    i32.or
                    local.set $l10
                    br $B8
                  end
                  block $B13
                    block $B14
                      local.get $l3
                      local.get $l5
                      i32.ne
                      br_if $B14
                      i32.const 0
                      local.set $l13
                      local.get $l5
                      local.set $l14
                      br $B13
                    end
                    local.get $l3
                    i32.load8_u
                    i32.const 63
                    i32.and
                    local.set $l13
                    local.get $l3
                    i32.const 1
                    i32.add
                    local.tee $l9
                    local.set $l14
                  end
                  local.get $l13
                  local.get $l11
                  i32.const 6
                  i32.shl
                  i32.or
                  local.set $l11
                  block $B15
                    local.get $l10
                    i32.const 240
                    i32.ge_u
                    br_if $B15
                    local.get $l11
                    local.get $l12
                    i32.const 12
                    i32.shl
                    i32.or
                    local.set $l10
                    br $B8
                  end
                  block $B16
                    block $B17
                      local.get $l14
                      local.get $l5
                      i32.ne
                      br_if $B17
                      i32.const 0
                      local.set $l10
                      local.get $l9
                      local.set $l3
                      br $B16
                    end
                    local.get $l14
                    i32.const 1
                    i32.add
                    local.set $l3
                    local.get $l14
                    i32.load8_u
                    i32.const 63
                    i32.and
                    local.set $l10
                  end
                  local.get $l11
                  i32.const 6
                  i32.shl
                  local.get $l12
                  i32.const 18
                  i32.shl
                  i32.const 1835008
                  i32.and
                  i32.or
                  local.get $l10
                  i32.or
                  local.tee $l10
                  i32.const 1114112
                  i32.ne
                  br_if $B7
                  br $B4
                end
                local.get $l10
                i32.const 255
                i32.and
                local.set $l10
              end
              local.get $l9
              local.set $l3
            end
            block $B18
              local.get $l6
              i32.const -1
              i32.add
              local.tee $l6
              i32.eqz
              br_if $B18
              local.get $l7
              local.get $l8
              i32.sub
              local.get $l3
              i32.add
              local.set $l7
              local.get $l3
              local.set $l8
              local.get $l5
              local.get $l3
              i32.ne
              br_if $L6
              br $B4
            end
          end
          local.get $l10
          i32.const 1114112
          i32.eq
          br_if $B4
          block $B19
            block $B20
              local.get $l7
              i32.eqz
              br_if $B20
              local.get $l7
              local.get $p2
              i32.eq
              br_if $B20
              i32.const 0
              local.set $l3
              local.get $l7
              local.get $p2
              i32.ge_u
              br_if $B19
              local.get $p1
              local.get $l7
              i32.add
              i32.load8_s
              i32.const -64
              i32.lt_s
              br_if $B19
            end
            local.get $p1
            local.set $l3
          end
          local.get $l7
          local.get $p2
          local.get $l3
          select
          local.set $p2
          local.get $l3
          local.get $p1
          local.get $l3
          select
          local.set $p1
        end
        local.get $l4
        br_if $B1
        local.get $p0
        i32.load offset=24
        local.get $p1
        local.get $p2
        local.get $p0
        i32.const 28
        i32.add
        i32.load
        i32.load offset=12
        call_indirect (type $t8) $T0
        return
      end
      i32.const 0
      local.set $l9
      block $B21
        local.get $p2
        i32.eqz
        br_if $B21
        local.get $p2
        local.set $l10
        local.get $p1
        local.set $l3
        loop $L22
          local.get $l9
          local.get $l3
          i32.load8_u
          i32.const 192
          i32.and
          i32.const 128
          i32.eq
          i32.add
          local.set $l9
          local.get $l3
          i32.const 1
          i32.add
          local.set $l3
          local.get $l10
          i32.const -1
          i32.add
          local.tee $l10
          br_if $L22
        end
      end
      block $B23
        local.get $p2
        local.get $l9
        i32.sub
        local.get $p0
        i32.load offset=12
        local.tee $l6
        i32.lt_u
        br_if $B23
        local.get $p0
        i32.load offset=24
        local.get $p1
        local.get $p2
        local.get $p0
        i32.const 28
        i32.add
        i32.load
        i32.load offset=12
        call_indirect (type $t8) $T0
        return
      end
      i32.const 0
      local.set $l7
      i32.const 0
      local.set $l9
      block $B24
        local.get $p2
        i32.eqz
        br_if $B24
        i32.const 0
        local.set $l9
        local.get $p2
        local.set $l10
        local.get $p1
        local.set $l3
        loop $L25
          local.get $l9
          local.get $l3
          i32.load8_u
          i32.const 192
          i32.and
          i32.const 128
          i32.eq
          i32.add
          local.set $l9
          local.get $l3
          i32.const 1
          i32.add
          local.set $l3
          local.get $l10
          i32.const -1
          i32.add
          local.tee $l10
          br_if $L25
        end
      end
      local.get $l9
      local.get $p2
      i32.sub
      local.get $l6
      i32.add
      local.tee $l9
      local.set $l10
      block $B26
        block $B27
          block $B28
            i32.const 0
            local.get $p0
            i32.load8_u offset=48
            local.tee $l3
            local.get $l3
            i32.const 3
            i32.eq
            select
            br_table $B26 $B27 $B28 $B27 $B26
          end
          local.get $l9
          i32.const 1
          i32.shr_u
          local.set $l7
          local.get $l9
          i32.const 1
          i32.add
          i32.const 1
          i32.shr_u
          local.set $l10
          br $B26
        end
        i32.const 0
        local.set $l10
        local.get $l9
        local.set $l7
      end
      local.get $l7
      i32.const 1
      i32.add
      local.set $l3
      block $B29
        loop $L30
          local.get $l3
          i32.const -1
          i32.add
          local.tee $l3
          i32.eqz
          br_if $B29
          local.get $p0
          i32.load offset=24
          local.get $p0
          i32.load offset=4
          local.get $p0
          i32.load offset=28
          i32.load offset=16
          call_indirect (type $t3) $T0
          i32.eqz
          br_if $L30
        end
        i32.const 1
        return
      end
      local.get $p0
      i32.load offset=4
      local.set $l9
      i32.const 1
      local.set $l3
      local.get $p0
      i32.load offset=24
      local.get $p1
      local.get $p2
      local.get $p0
      i32.load offset=28
      i32.load offset=12
      call_indirect (type $t8) $T0
      br_if $B0
      local.get $l10
      i32.const 1
      i32.add
      local.set $l3
      local.get $p0
      i32.load offset=28
      local.set $l10
      local.get $p0
      i32.load offset=24
      local.set $p0
      loop $L31
        block $B32
          local.get $l3
          i32.const -1
          i32.add
          local.tee $l3
          br_if $B32
          i32.const 0
          return
        end
        local.get $p0
        local.get $l9
        local.get $l10
        i32.load offset=16
        call_indirect (type $t3) $T0
        i32.eqz
        br_if $L31
      end
      i32.const 1
      return
    end
    local.get $l3)
  (func $_ZN4core3str16slice_error_fail17he3cd070c8cb5f5f5E (type $t4) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32)
    (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32) (local $l9 i32)
    global.get $g0
    i32.const 112
    i32.sub
    local.tee $l4
    global.set $g0
    local.get $l4
    local.get $p3
    i32.store offset=12
    local.get $l4
    local.get $p2
    i32.store offset=8
    i32.const 1
    local.set $l5
    local.get $p1
    local.set $l6
    block $B0
      local.get $p1
      i32.const 257
      i32.lt_u
      br_if $B0
      i32.const 0
      local.get $p1
      i32.sub
      local.set $l7
      i32.const 256
      local.set $l8
      loop $L1
        block $B2
          local.get $l8
          local.get $p1
          i32.ge_u
          br_if $B2
          local.get $p0
          local.get $l8
          i32.add
          i32.load8_s
          i32.const -65
          i32.le_s
          br_if $B2
          i32.const 0
          local.set $l5
          local.get $l8
          local.set $l6
          br $B0
        end
        local.get $l8
        i32.const -1
        i32.add
        local.set $l6
        i32.const 0
        local.set $l5
        local.get $l8
        i32.const 1
        i32.eq
        br_if $B0
        local.get $l7
        local.get $l8
        i32.add
        local.set $l9
        local.get $l6
        local.set $l8
        local.get $l9
        i32.const 1
        i32.ne
        br_if $L1
      end
    end
    local.get $l4
    local.get $l6
    i32.store offset=20
    local.get $l4
    local.get $p0
    i32.store offset=16
    local.get $l4
    i32.const 0
    i32.const 5
    local.get $l5
    select
    i32.store offset=28
    local.get $l4
    i32.const 1054352
    i32.const 1055247
    local.get $l5
    select
    i32.store offset=24
    block $B3
      block $B4
        block $B5
          block $B6
            local.get $p2
            local.get $p1
            i32.gt_u
            local.tee $l8
            br_if $B6
            local.get $p3
            local.get $p1
            i32.gt_u
            br_if $B6
            local.get $p2
            local.get $p3
            i32.gt_u
            br_if $B5
            block $B7
              block $B8
                local.get $p2
                i32.eqz
                br_if $B8
                local.get $p1
                local.get $p2
                i32.eq
                br_if $B8
                local.get $p1
                local.get $p2
                i32.le_u
                br_if $B7
                local.get $p0
                local.get $p2
                i32.add
                i32.load8_s
                i32.const -64
                i32.lt_s
                br_if $B7
              end
              local.get $p3
              local.set $p2
            end
            local.get $l4
            local.get $p2
            i32.store offset=32
            local.get $p2
            i32.eqz
            br_if $B4
            local.get $p2
            local.get $p1
            i32.eq
            br_if $B4
            local.get $p1
            i32.const 1
            i32.add
            local.set $l9
            loop $L9
              block $B10
                local.get $p2
                local.get $p1
                i32.ge_u
                br_if $B10
                local.get $p0
                local.get $p2
                i32.add
                i32.load8_s
                i32.const -64
                i32.ge_s
                br_if $B4
              end
              local.get $p2
              i32.const -1
              i32.add
              local.set $l8
              local.get $p2
              i32.const 1
              i32.eq
              br_if $B3
              local.get $l9
              local.get $p2
              i32.eq
              local.set $l6
              local.get $l8
              local.set $p2
              local.get $l6
              i32.eqz
              br_if $L9
              br $B3
            end
          end
          local.get $l4
          local.get $p2
          local.get $p3
          local.get $l8
          select
          i32.store offset=40
          local.get $l4
          i32.const 48
          i32.add
          i32.const 20
          i32.add
          i32.const 3
          i32.store
          local.get $l4
          i32.const 72
          i32.add
          i32.const 20
          i32.add
          i32.const 84
          i32.store
          local.get $l4
          i32.const 84
          i32.add
          i32.const 84
          i32.store
          local.get $l4
          i64.const 3
          i64.store offset=52 align=4
          local.get $l4
          i32.const 1055288
          i32.store offset=48
          local.get $l4
          i32.const 4
          i32.store offset=76
          local.get $l4
          local.get $l4
          i32.const 72
          i32.add
          i32.store offset=64
          local.get $l4
          local.get $l4
          i32.const 24
          i32.add
          i32.store offset=88
          local.get $l4
          local.get $l4
          i32.const 16
          i32.add
          i32.store offset=80
          local.get $l4
          local.get $l4
          i32.const 40
          i32.add
          i32.store offset=72
          local.get $l4
          i32.const 48
          i32.add
          i32.const 1055312
          call $_ZN4core9panicking9panic_fmt17h8eef3a14480998beE
          unreachable
        end
        local.get $l4
        i32.const 100
        i32.add
        i32.const 84
        i32.store
        local.get $l4
        i32.const 72
        i32.add
        i32.const 20
        i32.add
        i32.const 84
        i32.store
        local.get $l4
        i32.const 84
        i32.add
        i32.const 4
        i32.store
        local.get $l4
        i32.const 48
        i32.add
        i32.const 20
        i32.add
        i32.const 4
        i32.store
        local.get $l4
        i64.const 4
        i64.store offset=52 align=4
        local.get $l4
        i32.const 1055364
        i32.store offset=48
        local.get $l4
        i32.const 4
        i32.store offset=76
        local.get $l4
        local.get $l4
        i32.const 72
        i32.add
        i32.store offset=64
        local.get $l4
        local.get $l4
        i32.const 24
        i32.add
        i32.store offset=96
        local.get $l4
        local.get $l4
        i32.const 16
        i32.add
        i32.store offset=88
        local.get $l4
        local.get $l4
        i32.const 12
        i32.add
        i32.store offset=80
        local.get $l4
        local.get $l4
        i32.const 8
        i32.add
        i32.store offset=72
        local.get $l4
        i32.const 48
        i32.add
        i32.const 1055396
        call $_ZN4core9panicking9panic_fmt17h8eef3a14480998beE
        unreachable
      end
      local.get $p2
      local.set $l8
    end
    block $B11
      local.get $l8
      local.get $p1
      i32.eq
      br_if $B11
      i32.const 1
      local.set $l6
      block $B12
        block $B13
          block $B14
            block $B15
              local.get $p0
              local.get $l8
              i32.add
              local.tee $l9
              i32.load8_s
              local.tee $p2
              i32.const -1
              i32.gt_s
              br_if $B15
              i32.const 0
              local.set $l5
              local.get $p0
              local.get $p1
              i32.add
              local.tee $l6
              local.set $p1
              block $B16
                local.get $l9
                i32.const 1
                i32.add
                local.get $l6
                i32.eq
                br_if $B16
                local.get $l9
                i32.const 2
                i32.add
                local.set $p1
                local.get $l9
                i32.load8_u offset=1
                i32.const 63
                i32.and
                local.set $l5
              end
              local.get $p2
              i32.const 31
              i32.and
              local.set $l9
              local.get $p2
              i32.const 255
              i32.and
              i32.const 223
              i32.gt_u
              br_if $B14
              local.get $l5
              local.get $l9
              i32.const 6
              i32.shl
              i32.or
              local.set $p1
              br $B13
            end
            local.get $l4
            local.get $p2
            i32.const 255
            i32.and
            i32.store offset=36
            local.get $l4
            i32.const 40
            i32.add
            local.set $p2
            br $B12
          end
          i32.const 0
          local.set $p0
          local.get $l6
          local.set $l7
          block $B17
            local.get $p1
            local.get $l6
            i32.eq
            br_if $B17
            local.get $p1
            i32.const 1
            i32.add
            local.set $l7
            local.get $p1
            i32.load8_u
            i32.const 63
            i32.and
            local.set $p0
          end
          local.get $p0
          local.get $l5
          i32.const 6
          i32.shl
          i32.or
          local.set $p1
          block $B18
            local.get $p2
            i32.const 255
            i32.and
            i32.const 240
            i32.ge_u
            br_if $B18
            local.get $p1
            local.get $l9
            i32.const 12
            i32.shl
            i32.or
            local.set $p1
            br $B13
          end
          i32.const 0
          local.set $p2
          block $B19
            local.get $l7
            local.get $l6
            i32.eq
            br_if $B19
            local.get $l7
            i32.load8_u
            i32.const 63
            i32.and
            local.set $p2
          end
          local.get $p1
          i32.const 6
          i32.shl
          local.get $l9
          i32.const 18
          i32.shl
          i32.const 1835008
          i32.and
          i32.or
          local.get $p2
          i32.or
          local.tee $p1
          i32.const 1114112
          i32.eq
          br_if $B11
        end
        local.get $l4
        local.get $p1
        i32.store offset=36
        i32.const 1
        local.set $l6
        local.get $l4
        i32.const 40
        i32.add
        local.set $p2
        local.get $p1
        i32.const 128
        i32.lt_u
        br_if $B12
        i32.const 2
        local.set $l6
        local.get $p1
        i32.const 2048
        i32.lt_u
        br_if $B12
        i32.const 3
        i32.const 4
        local.get $p1
        i32.const 65536
        i32.lt_u
        select
        local.set $l6
      end
      local.get $l4
      local.get $l8
      i32.store offset=40
      local.get $l4
      local.get $l6
      local.get $l8
      i32.add
      i32.store offset=44
      local.get $l4
      i32.const 48
      i32.add
      i32.const 20
      i32.add
      i32.const 5
      i32.store
      local.get $l4
      i32.const 108
      i32.add
      i32.const 84
      i32.store
      local.get $l4
      i32.const 100
      i32.add
      i32.const 84
      i32.store
      local.get $l4
      i32.const 72
      i32.add
      i32.const 20
      i32.add
      i32.const 85
      i32.store
      local.get $l4
      i32.const 84
      i32.add
      i32.const 86
      i32.store
      local.get $l4
      i64.const 5
      i64.store offset=52 align=4
      local.get $l4
      i32.const 1055464
      i32.store offset=48
      local.get $l4
      local.get $p2
      i32.store offset=88
      local.get $l4
      i32.const 4
      i32.store offset=76
      local.get $l4
      local.get $l4
      i32.const 72
      i32.add
      i32.store offset=64
      local.get $l4
      local.get $l4
      i32.const 24
      i32.add
      i32.store offset=104
      local.get $l4
      local.get $l4
      i32.const 16
      i32.add
      i32.store offset=96
      local.get $l4
      local.get $l4
      i32.const 36
      i32.add
      i32.store offset=80
      local.get $l4
      local.get $l4
      i32.const 32
      i32.add
      i32.store offset=72
      local.get $l4
      i32.const 48
      i32.add
      i32.const 1055504
      call $_ZN4core9panicking9panic_fmt17h8eef3a14480998beE
      unreachable
    end
    i32.const 1054504
    i32.const 43
    i32.const 1054568
    call $_ZN4core9panicking5panic17hc60400b47c695700E
    unreachable)
  (func $_ZN4core9panicking9panic_fmt17h8eef3a14480998beE (type $t5) (param $p0 i32) (param $p1 i32)
    (local $l2 i32)
    global.get $g0
    i32.const 16
    i32.sub
    local.tee $l2
    global.set $g0
    local.get $l2
    local.get $p1
    i32.store offset=12
    local.get $l2
    local.get $p0
    i32.store offset=8
    local.get $l2
    i32.const 1054392
    i32.store offset=4
    local.get $l2
    i32.const 1
    i32.store
    local.get $l2
    call $rust_begin_unwind
    unreachable)
  (func $_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h81afefe9a006429dE (type $t3) (param $p0 i32) (param $p1 i32) (result i32)
    local.get $p0
    i64.load32_u
    i32.const 1
    local.get $p1
    call $_ZN4core3fmt3num3imp7fmt_u6417h042ebedf17751bd0E)
  (func $_ZN4core3fmt5write17h8876819fabc0b258E (type $t8) (param $p0 i32) (param $p1 i32) (param $p2 i32) (result i32)
    (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32) (local $l9 i32) (local $l10 i32)
    global.get $g0
    i32.const 64
    i32.sub
    local.tee $l3
    global.set $g0
    local.get $l3
    i32.const 36
    i32.add
    local.get $p1
    i32.store
    local.get $l3
    i32.const 52
    i32.add
    local.get $p2
    i32.const 20
    i32.add
    i32.load
    local.tee $l4
    i32.store
    local.get $l3
    i32.const 3
    i32.store8 offset=56
    local.get $l3
    i32.const 44
    i32.add
    local.get $p2
    i32.load offset=16
    local.tee $l5
    local.get $l4
    i32.const 3
    i32.shl
    i32.add
    i32.store
    local.get $l3
    i64.const 137438953472
    i64.store offset=8
    local.get $l3
    local.get $p0
    i32.store offset=32
    i32.const 0
    local.set $l6
    local.get $l3
    i32.const 0
    i32.store offset=24
    local.get $l3
    i32.const 0
    i32.store offset=16
    local.get $l3
    local.get $l5
    i32.store offset=48
    local.get $l3
    local.get $l5
    i32.store offset=40
    block $B0
      block $B1
        block $B2
          block $B3
            block $B4
              local.get $p2
              i32.load offset=8
              local.tee $l7
              br_if $B4
              local.get $p2
              i32.load
              local.set $l8
              local.get $p2
              i32.load offset=4
              local.tee $l9
              local.get $l4
              local.get $l4
              local.get $l9
              i32.gt_u
              select
              local.tee $l10
              i32.eqz
              br_if $B3
              i32.const 1
              local.set $l4
              local.get $p0
              local.get $l8
              i32.load
              local.get $l8
              i32.load offset=4
              local.get $p1
              i32.load offset=12
              call_indirect (type $t8) $T0
              br_if $B0
              local.get $l8
              i32.const 12
              i32.add
              local.set $p2
              i32.const 1
              local.set $l6
              loop $L5
                block $B6
                  local.get $l5
                  i32.load
                  local.get $l3
                  i32.const 8
                  i32.add
                  local.get $l5
                  i32.const 4
                  i32.add
                  i32.load
                  call_indirect (type $t3) $T0
                  i32.eqz
                  br_if $B6
                  i32.const 1
                  local.set $l4
                  br $B0
                end
                local.get $l6
                local.get $l10
                i32.ge_u
                br_if $B3
                local.get $p2
                i32.const -4
                i32.add
                local.set $p0
                local.get $p2
                i32.load
                local.set $p1
                local.get $p2
                i32.const 8
                i32.add
                local.set $p2
                local.get $l5
                i32.const 8
                i32.add
                local.set $l5
                i32.const 1
                local.set $l4
                local.get $l6
                i32.const 1
                i32.add
                local.set $l6
                local.get $l3
                i32.load offset=32
                local.get $p0
                i32.load
                local.get $p1
                local.get $l3
                i32.load offset=36
                i32.load offset=12
                call_indirect (type $t8) $T0
                i32.eqz
                br_if $L5
                br $B0
              end
            end
            local.get $p2
            i32.load
            local.set $l8
            local.get $p2
            i32.load offset=4
            local.tee $l9
            local.get $p2
            i32.const 12
            i32.add
            i32.load
            local.tee $l5
            local.get $l5
            local.get $l9
            i32.gt_u
            select
            local.tee $l10
            i32.eqz
            br_if $B3
            i32.const 1
            local.set $l4
            local.get $p0
            local.get $l8
            i32.load
            local.get $l8
            i32.load offset=4
            local.get $p1
            i32.load offset=12
            call_indirect (type $t8) $T0
            br_if $B0
            local.get $l8
            i32.const 12
            i32.add
            local.set $p2
            local.get $l7
            i32.const 16
            i32.add
            local.set $l5
            i32.const 1
            local.set $l6
            loop $L7
              local.get $l3
              local.get $l5
              i32.const -8
              i32.add
              i32.load
              i32.store offset=12
              local.get $l3
              local.get $l5
              i32.const 16
              i32.add
              i32.load8_u
              i32.store8 offset=56
              local.get $l3
              local.get $l5
              i32.const -4
              i32.add
              i32.load
              i32.store offset=8
              i32.const 0
              local.set $p1
              i32.const 0
              local.set $p0
              block $B8
                block $B9
                  block $B10
                    block $B11
                      local.get $l5
                      i32.const 8
                      i32.add
                      i32.load
                      br_table $B11 $B10 $B9 $B8 $B11
                    end
                    local.get $l5
                    i32.const 12
                    i32.add
                    i32.load
                    local.set $l4
                    i32.const 1
                    local.set $p0
                    br $B8
                  end
                  block $B12
                    local.get $l5
                    i32.const 12
                    i32.add
                    i32.load
                    local.tee $l7
                    local.get $l3
                    i32.load offset=52
                    local.tee $l4
                    i32.ge_u
                    br_if $B12
                    i32.const 0
                    local.set $p0
                    local.get $l3
                    i32.load offset=48
                    local.get $l7
                    i32.const 3
                    i32.shl
                    i32.add
                    local.tee $l7
                    i32.load offset=4
                    i32.const 87
                    i32.ne
                    br_if $B8
                    local.get $l7
                    i32.load
                    i32.load
                    local.set $l4
                    i32.const 1
                    local.set $p0
                    br $B8
                  end
                  i32.const 1055852
                  local.get $l7
                  local.get $l4
                  call $_ZN4core9panicking18panic_bounds_check17h42ce3eaf53169acbE
                  unreachable
                end
                i32.const 0
                local.set $p0
                local.get $l3
                i32.load offset=40
                local.tee $l7
                local.get $l3
                i32.load offset=44
                i32.eq
                br_if $B8
                local.get $l3
                local.get $l7
                i32.const 8
                i32.add
                i32.store offset=40
                i32.const 0
                local.set $p0
                local.get $l7
                i32.load offset=4
                i32.const 87
                i32.ne
                br_if $B8
                local.get $l7
                i32.load
                i32.load
                local.set $l4
                i32.const 1
                local.set $p0
              end
              local.get $l3
              local.get $l4
              i32.store offset=20
              local.get $l3
              local.get $p0
              i32.store offset=16
              block $B13
                block $B14
                  block $B15
                    block $B16
                      block $B17
                        block $B18
                          block $B19
                            local.get $l5
                            i32.load
                            br_table $B15 $B18 $B19 $B13 $B15
                          end
                          local.get $l3
                          i32.load offset=40
                          local.tee $p0
                          local.get $l3
                          i32.load offset=44
                          i32.ne
                          br_if $B17
                          br $B13
                        end
                        local.get $l5
                        i32.const 4
                        i32.add
                        i32.load
                        local.tee $p0
                        local.get $l3
                        i32.load offset=52
                        local.tee $l4
                        i32.ge_u
                        br_if $B16
                        local.get $l3
                        i32.load offset=48
                        local.get $p0
                        i32.const 3
                        i32.shl
                        i32.add
                        local.tee $p0
                        i32.load offset=4
                        i32.const 87
                        i32.ne
                        br_if $B13
                        local.get $p0
                        i32.load
                        i32.load
                        local.set $l4
                        br $B14
                      end
                      local.get $l3
                      local.get $p0
                      i32.const 8
                      i32.add
                      i32.store offset=40
                      local.get $p0
                      i32.load offset=4
                      i32.const 87
                      i32.ne
                      br_if $B13
                      local.get $p0
                      i32.load
                      i32.load
                      local.set $l4
                      br $B14
                    end
                    i32.const 1055852
                    local.get $p0
                    local.get $l4
                    call $_ZN4core9panicking18panic_bounds_check17h42ce3eaf53169acbE
                    unreachable
                  end
                  local.get $l5
                  i32.const 4
                  i32.add
                  i32.load
                  local.set $l4
                end
                i32.const 1
                local.set $p1
              end
              local.get $l3
              local.get $l4
              i32.store offset=28
              local.get $l3
              local.get $p1
              i32.store offset=24
              block $B20
                block $B21
                  local.get $l5
                  i32.const -16
                  i32.add
                  i32.load
                  i32.const 1
                  i32.eq
                  br_if $B21
                  local.get $l3
                  i32.load offset=40
                  local.tee $l4
                  local.get $l3
                  i32.load offset=44
                  i32.eq
                  br_if $B2
                  local.get $l3
                  local.get $l4
                  i32.const 8
                  i32.add
                  i32.store offset=40
                  br $B20
                end
                local.get $l5
                i32.const -12
                i32.add
                i32.load
                local.tee $l4
                local.get $l3
                i32.load offset=52
                local.tee $p0
                i32.ge_u
                br_if $B1
                local.get $l3
                i32.load offset=48
                local.get $l4
                i32.const 3
                i32.shl
                i32.add
                local.set $l4
              end
              block $B22
                local.get $l4
                i32.load
                local.get $l3
                i32.const 8
                i32.add
                local.get $l4
                i32.const 4
                i32.add
                i32.load
                call_indirect (type $t3) $T0
                i32.eqz
                br_if $B22
                i32.const 1
                local.set $l4
                br $B0
              end
              local.get $l6
              local.get $l10
              i32.ge_u
              br_if $B3
              local.get $p2
              i32.const -4
              i32.add
              local.set $p0
              local.get $p2
              i32.load
              local.set $p1
              local.get $p2
              i32.const 8
              i32.add
              local.set $p2
              local.get $l5
              i32.const 36
              i32.add
              local.set $l5
              i32.const 1
              local.set $l4
              local.get $l6
              i32.const 1
              i32.add
              local.set $l6
              local.get $l3
              i32.load offset=32
              local.get $p0
              i32.load
              local.get $p1
              local.get $l3
              i32.load offset=36
              i32.load offset=12
              call_indirect (type $t8) $T0
              i32.eqz
              br_if $L7
              br $B0
            end
          end
          block $B23
            local.get $l9
            local.get $l6
            i32.le_u
            br_if $B23
            i32.const 1
            local.set $l4
            local.get $l3
            i32.load offset=32
            local.get $l8
            local.get $l6
            i32.const 3
            i32.shl
            i32.add
            local.tee $l5
            i32.load
            local.get $l5
            i32.load offset=4
            local.get $l3
            i32.load offset=36
            i32.load offset=12
            call_indirect (type $t8) $T0
            br_if $B0
          end
          i32.const 0
          local.set $l4
          br $B0
        end
        i32.const 1054504
        i32.const 43
        i32.const 1054568
        call $_ZN4core9panicking5panic17hc60400b47c695700E
        unreachable
      end
      i32.const 1055836
      local.get $l4
      local.get $p0
      call $_ZN4core9panicking18panic_bounds_check17h42ce3eaf53169acbE
      unreachable
    end
    local.get $l3
    i32.const 64
    i32.add
    global.set $g0
    local.get $l4)
  (func $_ZN71_$LT$core..ops..range..Range$LT$Idx$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17hf1b5fd652ff8f28dE (type $t3) (param $p0 i32) (param $p1 i32) (result i32)
    (local $l2 i32) (local $l3 i32) (local $l4 i32)
    global.get $g0
    i32.const 32
    i32.sub
    local.tee $l2
    global.set $g0
    block $B0
      local.get $p0
      local.get $p1
      call $_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h3b17d39de7fdc1f1E
      br_if $B0
      local.get $p1
      i32.const 28
      i32.add
      i32.load
      local.set $l3
      local.get $p1
      i32.load offset=24
      local.set $l4
      local.get $l2
      i64.const 4
      i64.store offset=24
      local.get $l2
      i64.const 1
      i64.store offset=12 align=4
      local.get $l2
      i32.const 1054356
      i32.store offset=8
      local.get $l4
      local.get $l3
      local.get $l2
      i32.const 8
      i32.add
      call $_ZN4core3fmt5write17h8876819fabc0b258E
      br_if $B0
      local.get $p0
      i32.const 4
      i32.add
      local.get $p1
      call $_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h3b17d39de7fdc1f1E
      local.set $p1
      local.get $l2
      i32.const 32
      i32.add
      global.set $g0
      local.get $p1
      return
    end
    local.get $l2
    i32.const 32
    i32.add
    global.set $g0
    i32.const 1)
  (func $_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h3b17d39de7fdc1f1E (type $t3) (param $p0 i32) (param $p1 i32) (result i32)
    (local $l2 i32) (local $l3 i32) (local $l4 i32)
    global.get $g0
    i32.const 128
    i32.sub
    local.tee $l2
    global.set $g0
    block $B0
      block $B1
        block $B2
          block $B3
            block $B4
              local.get $p1
              i32.load
              local.tee $l3
              i32.const 16
              i32.and
              br_if $B4
              local.get $p0
              i32.load
              local.set $l4
              local.get $l3
              i32.const 32
              i32.and
              br_if $B3
              local.get $l4
              i64.extend_i32_u
              i32.const 1
              local.get $p1
              call $_ZN4core3fmt3num3imp7fmt_u6417h042ebedf17751bd0E
              local.set $p0
              br $B2
            end
            local.get $p0
            i32.load
            local.set $l4
            i32.const 0
            local.set $p0
            loop $L5
              local.get $l2
              local.get $p0
              i32.add
              i32.const 127
              i32.add
              local.get $l4
              i32.const 15
              i32.and
              local.tee $l3
              i32.const 48
              i32.or
              local.get $l3
              i32.const 87
              i32.add
              local.get $l3
              i32.const 10
              i32.lt_u
              select
              i32.store8
              local.get $p0
              i32.const -1
              i32.add
              local.set $p0
              local.get $l4
              i32.const 4
              i32.shr_u
              local.tee $l4
              br_if $L5
            end
            local.get $p0
            i32.const 128
            i32.add
            local.tee $l4
            i32.const 129
            i32.ge_u
            br_if $B1
            local.get $p1
            i32.const 1
            i32.const 1055585
            i32.const 2
            local.get $l2
            local.get $p0
            i32.add
            i32.const 128
            i32.add
            i32.const 0
            local.get $p0
            i32.sub
            call $_ZN4core3fmt9Formatter12pad_integral17hfef5805f826bffbfE
            local.set $p0
            br $B2
          end
          i32.const 0
          local.set $p0
          loop $L6
            local.get $l2
            local.get $p0
            i32.add
            i32.const 127
            i32.add
            local.get $l4
            i32.const 15
            i32.and
            local.tee $l3
            i32.const 48
            i32.or
            local.get $l3
            i32.const 55
            i32.add
            local.get $l3
            i32.const 10
            i32.lt_u
            select
            i32.store8
            local.get $p0
            i32.const -1
            i32.add
            local.set $p0
            local.get $l4
            i32.const 4
            i32.shr_u
            local.tee $l4
            br_if $L6
          end
          local.get $p0
          i32.const 128
          i32.add
          local.tee $l4
          i32.const 129
          i32.ge_u
          br_if $B0
          local.get $p1
          i32.const 1
          i32.const 1055585
          i32.const 2
          local.get $l2
          local.get $p0
          i32.add
          i32.const 128
          i32.add
          i32.const 0
          local.get $p0
          i32.sub
          call $_ZN4core3fmt9Formatter12pad_integral17hfef5805f826bffbfE
          local.set $p0
        end
        local.get $l2
        i32.const 128
        i32.add
        global.set $g0
        local.get $p0
        return
      end
      local.get $l4
      i32.const 128
      call $_ZN4core5slice22slice_index_order_fail17heebd88c1be3dadefE
      unreachable
    end
    local.get $l4
    i32.const 128
    call $_ZN4core5slice22slice_index_order_fail17heebd88c1be3dadefE
    unreachable)
  (func $_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17h47a9f9063b0c3dbcE (type $t2) (param $p0 i32) (result i64)
    i64.const -7270236786431142833)
  (func $_ZN60_$LT$core..cell..BorrowError$u20$as$u20$core..fmt..Debug$GT$3fmt17hf295ea4ef037c8ddE (type $t3) (param $p0 i32) (param $p1 i32) (result i32)
    local.get $p1
    i32.load offset=24
    i32.const 1054364
    i32.const 11
    local.get $p1
    i32.const 28
    i32.add
    i32.load
    i32.load offset=12
    call_indirect (type $t8) $T0)
  (func $_ZN63_$LT$core..cell..BorrowMutError$u20$as$u20$core..fmt..Debug$GT$3fmt17habbe3fa4e4e9f71eE (type $t3) (param $p0 i32) (param $p1 i32) (result i32)
    local.get $p1
    i32.load offset=24
    i32.const 1054375
    i32.const 14
    local.get $p1
    i32.const 28
    i32.add
    i32.load
    i32.load offset=12
    call_indirect (type $t8) $T0)
  (func $_ZN82_$LT$core..char..EscapeDebug$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0ef1301de9a0af9aE (type $t7) (param $p0 i32) (result i32)
    (local $l1 i32) (local $l2 i32)
    i32.const 1114112
    local.set $l1
    block $B0
      block $B1
        block $B2
          block $B3
            local.get $p0
            i32.load
            br_table $B0 $B2 $B3 $B1 $B0
          end
          local.get $p0
          i32.const 1
          i32.store
          i32.const 92
          return
        end
        local.get $p0
        i32.const 0
        i32.store
        local.get $p0
        i32.load offset=4
        return
      end
      block $B4
        block $B5
          block $B6
            block $B7
              block $B8
                local.get $p0
                i32.const 12
                i32.add
                i32.load8_u
                br_table $B0 $B4 $B5 $B6 $B7 $B8 $B0
              end
              local.get $p0
              i32.const 4
              i32.store8 offset=12
              i32.const 92
              return
            end
            local.get $p0
            i32.const 3
            i32.store8 offset=12
            i32.const 117
            return
          end
          local.get $p0
          i32.const 2
          i32.store8 offset=12
          i32.const 123
          return
        end
        local.get $p0
        i32.load offset=4
        local.get $p0
        i32.const 8
        i32.add
        i32.load
        local.tee $l2
        i32.const 2
        i32.shl
        i32.const 28
        i32.and
        i32.shr_u
        i32.const 15
        i32.and
        local.tee $l1
        i32.const 48
        i32.or
        local.get $l1
        i32.const 87
        i32.add
        local.get $l1
        i32.const 10
        i32.lt_u
        select
        local.set $l1
        block $B9
          local.get $l2
          i32.eqz
          br_if $B9
          local.get $p0
          local.get $l2
          i32.const -1
          i32.add
          i32.store offset=8
          local.get $l1
          return
        end
        local.get $p0
        i32.const 1
        i32.store8 offset=12
        local.get $l1
        return
      end
      local.get $p0
      i32.const 0
      i32.store8 offset=12
      i32.const 125
      local.set $l1
    end
    local.get $l1)
  (func $_ZN4core5panic9PanicInfo7message17hb5a2f77065892d6eE (type $t7) (param $p0 i32) (result i32)
    local.get $p0
    i32.load offset=8)
  (func $_ZN4core5panic9PanicInfo8location17h198cc11e8ca65b7cE (type $t7) (param $p0 i32) (result i32)
    local.get $p0
    i32.load offset=12)
  (func $_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h9fac0349c74cb035E (type $t3) (param $p0 i32) (param $p1 i32) (result i32)
    local.get $p1
    local.get $p0
    i32.load
    local.get $p0
    i32.load offset=4
    call $_ZN4core3fmt9Formatter3pad17h2edb8e7d7e605d23E)
  (func $_ZN4core5panic8Location20internal_constructor17h907b86da1c041b0eE (type $t10) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32) (param $p4 i32)
    local.get $p0
    local.get $p4
    i32.store offset=12
    local.get $p0
    local.get $p3
    i32.store offset=8
    local.get $p0
    local.get $p2
    i32.store offset=4
    local.get $p0
    local.get $p1
    i32.store)
  (func $_ZN4core5panic8Location4file17h916ad762787e0b09E (type $t5) (param $p0 i32) (param $p1 i32)
    local.get $p0
    local.get $p1
    i64.load align=4
    i64.store align=4)
  (func $_ZN4core5panic8Location4line17h51d324d36825685fE (type $t7) (param $p0 i32) (result i32)
    local.get $p0
    i32.load offset=8)
  (func $_ZN4core5panic8Location6column17h92ef532fcdc90d17E (type $t7) (param $p0 i32) (result i32)
    local.get $p0
    i32.load offset=12)
  (func $_ZN60_$LT$core..panic..Location$u20$as$u20$core..fmt..Display$GT$3fmt17h907319866752d049E (type $t3) (param $p0 i32) (param $p1 i32) (result i32)
    (local $l2 i32)
    global.get $g0
    i32.const 48
    i32.sub
    local.tee $l2
    global.set $g0
    local.get $l2
    i32.const 20
    i32.add
    i32.const 4
    i32.store
    local.get $l2
    i32.const 12
    i32.add
    i32.const 4
    i32.store
    local.get $l2
    i32.const 84
    i32.store offset=4
    local.get $l2
    local.get $p0
    i32.store
    local.get $l2
    local.get $p0
    i32.const 12
    i32.add
    i32.store offset=16
    local.get $l2
    local.get $p0
    i32.const 8
    i32.add
    i32.store offset=8
    local.get $p1
    i32.const 28
    i32.add
    i32.load
    local.set $p0
    local.get $p1
    i32.load offset=24
    local.set $p1
    local.get $l2
    i32.const 24
    i32.add
    i32.const 20
    i32.add
    i32.const 3
    i32.store
    local.get $l2
    i64.const 3
    i64.store offset=28 align=4
    local.get $l2
    i32.const 1054412
    i32.store offset=24
    local.get $l2
    local.get $l2
    i32.store offset=40
    local.get $p1
    local.get $p0
    local.get $l2
    i32.const 24
    i32.add
    call $_ZN4core3fmt5write17h8876819fabc0b258E
    local.set $p0
    local.get $l2
    i32.const 48
    i32.add
    global.set $g0
    local.get $p0)
  (func $_ZN4core3fmt8builders11DebugStruct5field17hbd0e2a659c73823bE (type $t12) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32) (param $p4 i32) (result i32)
    (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32) (local $l9 i64) (local $l10 i64) (local $l11 i64) (local $l12 i64) (local $l13 i64)
    global.get $g0
    i32.const 80
    i32.sub
    local.tee $l5
    global.set $g0
    i32.const 1
    local.set $l6
    block $B0
      local.get $p0
      i32.load8_u offset=4
      br_if $B0
      local.get $p0
      i32.load8_u offset=5
      local.set $l7
      block $B1
        local.get $p0
        i32.load
        local.tee $l8
        i32.load8_u
        i32.const 4
        i32.and
        br_if $B1
        i32.const 1
        local.set $l6
        local.get $l8
        i32.load offset=24
        i32.const 1055553
        i32.const 1055555
        local.get $l7
        i32.const 255
        i32.and
        local.tee $l7
        select
        i32.const 2
        i32.const 3
        local.get $l7
        select
        local.get $l8
        i32.const 28
        i32.add
        i32.load
        i32.load offset=12
        call_indirect (type $t8) $T0
        br_if $B0
        i32.const 1
        local.set $l6
        local.get $p0
        i32.load
        local.tee $l8
        i32.load offset=24
        local.get $p1
        local.get $p2
        local.get $l8
        i32.const 28
        i32.add
        i32.load
        i32.load offset=12
        call_indirect (type $t8) $T0
        br_if $B0
        i32.const 1
        local.set $l6
        local.get $p0
        i32.load
        local.tee $l8
        i32.load offset=24
        i32.const 1054608
        i32.const 2
        local.get $l8
        i32.const 28
        i32.add
        i32.load
        i32.load offset=12
        call_indirect (type $t8) $T0
        br_if $B0
        local.get $p3
        local.get $p0
        i32.load
        local.get $p4
        i32.load offset=12
        call_indirect (type $t3) $T0
        local.set $l6
        br $B0
      end
      block $B2
        local.get $l7
        i32.const 255
        i32.and
        br_if $B2
        i32.const 1
        local.set $l6
        local.get $l8
        i32.load offset=24
        i32.const 1055548
        i32.const 3
        local.get $l8
        i32.const 28
        i32.add
        i32.load
        i32.load offset=12
        call_indirect (type $t8) $T0
        br_if $B0
        local.get $p0
        i32.load
        local.set $l8
      end
      i32.const 1
      local.set $l6
      local.get $l5
      i32.const 1
      i32.store8 offset=23
      local.get $l5
      local.get $l5
      i32.const 23
      i32.add
      i32.store offset=16
      local.get $l8
      i64.load offset=8 align=4
      local.set $l9
      local.get $l8
      i64.load offset=16 align=4
      local.set $l10
      local.get $l5
      i32.const 52
      i32.add
      i32.const 1055520
      i32.store
      local.get $l5
      local.get $l8
      i64.load offset=24 align=4
      i64.store offset=8
      local.get $l8
      i64.load offset=32 align=4
      local.set $l11
      local.get $l8
      i64.load offset=40 align=4
      local.set $l12
      local.get $l5
      local.get $l8
      i32.load8_u offset=48
      i32.store8 offset=72
      local.get $l8
      i64.load align=4
      local.set $l13
      local.get $l5
      local.get $l12
      i64.store offset=64
      local.get $l5
      local.get $l11
      i64.store offset=56
      local.get $l5
      local.get $l10
      i64.store offset=40
      local.get $l5
      local.get $l9
      i64.store offset=32
      local.get $l5
      local.get $l13
      i64.store offset=24
      local.get $l5
      local.get $l5
      i32.const 8
      i32.add
      i32.store offset=48
      local.get $l5
      i32.const 8
      i32.add
      local.get $p1
      local.get $p2
      call $_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17he40b71e6e495ad7cE
      br_if $B0
      local.get $l5
      i32.const 8
      i32.add
      i32.const 1054608
      i32.const 2
      call $_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17he40b71e6e495ad7cE
      br_if $B0
      local.get $p3
      local.get $l5
      i32.const 24
      i32.add
      local.get $p4
      i32.load offset=12
      call_indirect (type $t3) $T0
      br_if $B0
      local.get $l5
      i32.load offset=48
      i32.const 1055551
      i32.const 2
      local.get $l5
      i32.load offset=52
      i32.load offset=12
      call_indirect (type $t8) $T0
      local.set $l6
    end
    local.get $p0
    i32.const 1
    i32.store8 offset=5
    local.get $p0
    local.get $l6
    i32.store8 offset=4
    local.get $l5
    i32.const 80
    i32.add
    global.set $g0
    local.get $p0)
  (func $_ZN4core6option13expect_failed17h48822fc6fce9003fE (type $t5) (param $p0 i32) (param $p1 i32)
    (local $l2 i32)
    global.get $g0
    i32.const 48
    i32.sub
    local.tee $l2
    global.set $g0
    local.get $l2
    local.get $p1
    i32.store offset=12
    local.get $l2
    local.get $p0
    i32.store offset=8
    local.get $l2
    i32.const 36
    i32.add
    i32.const 1
    i32.store
    local.get $l2
    i64.const 1
    i64.store offset=20 align=4
    local.get $l2
    i32.const 1054584
    i32.store offset=16
    local.get $l2
    i32.const 84
    i32.store offset=44
    local.get $l2
    local.get $l2
    i32.const 40
    i32.add
    i32.store offset=32
    local.get $l2
    local.get $l2
    i32.const 8
    i32.add
    i32.store offset=40
    local.get $l2
    i32.const 16
    i32.add
    i32.const 1054592
    call $_ZN4core9panicking9panic_fmt17h8eef3a14480998beE
    unreachable)
  (func $_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17haa94c1a554592613E (type $t3) (param $p0 i32) (param $p1 i32) (result i32)
    local.get $p0
    i32.load
    local.get $p1
    local.get $p0
    i32.load offset=4
    i32.load offset=12
    call_indirect (type $t3) $T0)
  (func $_ZN4core6result13unwrap_failed17h89d8c4399f5be1adE (type $t4) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32)
    (local $l4 i32)
    global.get $g0
    i32.const 64
    i32.sub
    local.tee $l4
    global.set $g0
    local.get $l4
    local.get $p1
    i32.store offset=12
    local.get $l4
    local.get $p0
    i32.store offset=8
    local.get $l4
    local.get $p3
    i32.store offset=20
    local.get $l4
    local.get $p2
    i32.store offset=16
    local.get $l4
    i32.const 44
    i32.add
    i32.const 2
    i32.store
    local.get $l4
    i32.const 60
    i32.add
    i32.const 88
    i32.store
    local.get $l4
    i64.const 2
    i64.store offset=28 align=4
    local.get $l4
    i32.const 1054612
    i32.store offset=24
    local.get $l4
    i32.const 84
    i32.store offset=52
    local.get $l4
    local.get $l4
    i32.const 48
    i32.add
    i32.store offset=40
    local.get $l4
    local.get $l4
    i32.const 16
    i32.add
    i32.store offset=56
    local.get $l4
    local.get $l4
    i32.const 8
    i32.add
    i32.store offset=48
    local.get $l4
    i32.const 24
    i32.add
    i32.const 1054652
    call $_ZN4core9panicking9panic_fmt17h8eef3a14480998beE
    unreachable)
  (func $_ZN63_$LT$core..ffi..VaListImpl$u20$as$u20$core..ops..drop..Drop$GT$4drop17h33b53169660fa804E (type $t1) (param $p0 i32))
  (func $_ZN4core5slice6memchr6memchr17h244fba075962fc22E (type $t4) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32)
    (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32) (local $l9 i32)
    i32.const 0
    local.set $l4
    block $B0
      block $B1
        local.get $p2
        i32.const 3
        i32.and
        local.tee $l5
        i32.eqz
        br_if $B1
        i32.const 4
        local.get $l5
        i32.sub
        local.tee $l5
        i32.eqz
        br_if $B1
        local.get $p3
        local.get $l5
        local.get $l5
        local.get $p3
        i32.gt_u
        select
        local.set $l4
        i32.const 0
        local.set $l5
        local.get $p1
        i32.const 255
        i32.and
        local.set $l6
        loop $L2
          local.get $l4
          local.get $l5
          i32.eq
          br_if $B1
          local.get $p2
          local.get $l5
          i32.add
          local.set $l7
          local.get $l5
          i32.const 1
          i32.add
          local.set $l5
          local.get $l7
          i32.load8_u
          local.tee $l7
          local.get $l6
          i32.ne
          br_if $L2
        end
        i32.const 1
        local.set $p3
        local.get $l7
        local.get $p1
        i32.const 255
        i32.and
        i32.eq
        i32.const 1
        i32.add
        i32.const 1
        i32.and
        local.get $l5
        i32.add
        i32.const -1
        i32.add
        local.set $l5
        br $B0
      end
      local.get $p1
      i32.const 255
      i32.and
      local.set $l6
      block $B3
        block $B4
          local.get $p3
          i32.const 8
          i32.lt_u
          br_if $B4
          local.get $l4
          local.get $p3
          i32.const -8
          i32.add
          local.tee $l8
          i32.gt_u
          br_if $B4
          local.get $l6
          i32.const 16843009
          i32.mul
          local.set $l5
          block $B5
            loop $L6
              local.get $p2
              local.get $l4
              i32.add
              local.tee $l7
              i32.const 4
              i32.add
              i32.load
              local.get $l5
              i32.xor
              local.tee $l9
              i32.const -1
              i32.xor
              local.get $l9
              i32.const -16843009
              i32.add
              i32.and
              local.get $l7
              i32.load
              local.get $l5
              i32.xor
              local.tee $l7
              i32.const -1
              i32.xor
              local.get $l7
              i32.const -16843009
              i32.add
              i32.and
              i32.or
              i32.const -2139062144
              i32.and
              br_if $B5
              local.get $l4
              i32.const 8
              i32.add
              local.tee $l4
              local.get $l8
              i32.le_u
              br_if $L6
            end
          end
          local.get $l4
          local.get $p3
          i32.gt_u
          br_if $B3
        end
        local.get $p2
        local.get $l4
        i32.add
        local.set $l9
        local.get $p3
        local.get $l4
        i32.sub
        local.set $p2
        i32.const 0
        local.set $p3
        i32.const 0
        local.set $l5
        block $B7
          loop $L8
            local.get $p2
            local.get $l5
            i32.eq
            br_if $B7
            local.get $l9
            local.get $l5
            i32.add
            local.set $l7
            local.get $l5
            i32.const 1
            i32.add
            local.set $l5
            local.get $l7
            i32.load8_u
            local.tee $l7
            local.get $l6
            i32.ne
            br_if $L8
          end
          i32.const 1
          local.set $p3
          local.get $l7
          local.get $p1
          i32.const 255
          i32.and
          i32.eq
          i32.const 1
          i32.add
          i32.const 1
          i32.and
          local.get $l5
          i32.add
          i32.const -1
          i32.add
          local.set $l5
        end
        local.get $l5
        local.get $l4
        i32.add
        local.set $l5
        br $B0
      end
      local.get $l4
      local.get $p3
      call $_ZN4core5slice22slice_index_order_fail17heebd88c1be3dadefE
      unreachable
    end
    local.get $p0
    local.get $l5
    i32.store offset=4
    local.get $p0
    local.get $p3
    i32.store)
  (func $_ZN4core5slice6memchr7memrchr17h0b3ee6c1c240e3c2E (type $t4) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32)
    (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32) (local $l9 i32) (local $l10 i32)
    local.get $p3
    i32.const 0
    local.get $p3
    i32.const 4
    local.get $p2
    i32.const 3
    i32.and
    local.tee $l4
    i32.sub
    i32.const 0
    local.get $l4
    select
    local.tee $l5
    i32.sub
    i32.const 7
    i32.and
    local.get $p3
    local.get $l5
    i32.lt_u
    local.tee $l6
    select
    local.tee $l4
    i32.sub
    local.set $l7
    block $B0
      block $B1
        block $B2
          block $B3
            local.get $p3
            local.get $l4
            i32.lt_u
            br_if $B3
            local.get $p3
            local.get $l5
            local.get $l6
            select
            local.set $l8
            local.get $p2
            local.get $l7
            i32.add
            local.get $p2
            local.get $p3
            i32.add
            local.tee $l5
            i32.sub
            local.set $l6
            local.get $l5
            i32.const -1
            i32.add
            local.set $l5
            local.get $p1
            i32.const 255
            i32.and
            local.set $l9
            block $B4
              loop $L5
                local.get $l4
                i32.eqz
                br_if $B4
                local.get $l6
                i32.const 1
                i32.add
                local.set $l6
                local.get $l4
                i32.const -1
                i32.add
                local.set $l4
                local.get $l5
                i32.load8_u
                local.set $l10
                local.get $l5
                i32.const -1
                i32.add
                local.set $l5
                local.get $l10
                local.get $l9
                i32.ne
                br_if $L5
              end
              local.get $l7
              local.get $l6
              i32.sub
              local.set $l4
              br $B1
            end
            local.get $p1
            i32.const 255
            i32.and
            i32.const 16843009
            i32.mul
            local.set $l5
            block $B6
              loop $L7
                local.get $l7
                local.tee $l4
                local.get $l8
                i32.le_u
                br_if $B6
                local.get $l4
                i32.const -8
                i32.add
                local.set $l7
                local.get $p2
                local.get $l4
                i32.add
                local.tee $l6
                i32.const -4
                i32.add
                i32.load
                local.get $l5
                i32.xor
                local.tee $l10
                i32.const -1
                i32.xor
                local.get $l10
                i32.const -16843009
                i32.add
                i32.and
                local.get $l6
                i32.const -8
                i32.add
                i32.load
                local.get $l5
                i32.xor
                local.tee $l6
                i32.const -1
                i32.xor
                local.get $l6
                i32.const -16843009
                i32.add
                i32.and
                i32.or
                i32.const -2139062144
                i32.and
                i32.eqz
                br_if $L7
              end
            end
            local.get $l4
            local.get $p3
            i32.gt_u
            br_if $B2
            local.get $p2
            i32.const -1
            i32.add
            local.set $l6
            local.get $p1
            i32.const 255
            i32.and
            local.set $l10
            loop $L8
              block $B9
                local.get $l4
                br_if $B9
                i32.const 0
                local.set $l5
                br $B0
              end
              local.get $l6
              local.get $l4
              i32.add
              local.set $l5
              local.get $l4
              i32.const -1
              i32.add
              local.set $l4
              local.get $l5
              i32.load8_u
              local.get $l10
              i32.eq
              br_if $B1
              br $L8
            end
          end
          local.get $l7
          local.get $p3
          call $_ZN4core5slice22slice_index_order_fail17heebd88c1be3dadefE
          unreachable
        end
        local.get $l4
        local.get $p3
        call $_ZN4core5slice20slice_index_len_fail17hfc4485e8c33f2d47E
        unreachable
      end
      i32.const 1
      local.set $l5
    end
    local.get $p0
    local.get $l4
    i32.store offset=4
    local.get $p0
    local.get $l5
    i32.store)
  (func $_ZN4core5slice25slice_index_overflow_fail17h8a1eef5e63367db8E (type $t0)
    i32.const 1054832
    i32.const 44
    i32.const 1054876
    call $_ZN4core9panicking5panic17hc60400b47c695700E
    unreachable)
  (func $_ZN4core3str5lossy9Utf8Lossy10from_bytes17h7dab23bdc987c3f1E (type $t6) (param $p0 i32) (param $p1 i32) (param $p2 i32)
    local.get $p0
    local.get $p2
    i32.store offset=4
    local.get $p0
    local.get $p1
    i32.store)
  (func $_ZN4core3str5lossy9Utf8Lossy6chunks17h678e80bba7d8a004E (type $t6) (param $p0 i32) (param $p1 i32) (param $p2 i32)
    local.get $p0
    local.get $p2
    i32.store offset=4
    local.get $p0
    local.get $p1
    i32.store)
  (func $_ZN96_$LT$core..str..lossy..Utf8LossyChunksIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3cc4f6dc97be609eE (type $t5) (param $p0 i32) (param $p1 i32)
    (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32) (local $l9 i32) (local $l10 i32)
    block $B0
      local.get $p1
      i32.load offset=4
      local.tee $l2
      i32.eqz
      br_if $B0
      local.get $p1
      i32.load
      local.set $l3
      i32.const 0
      local.set $l4
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
                            block $B12
                              loop $L13
                                local.get $l4
                                i32.const 1
                                i32.add
                                local.set $l5
                                block $B14
                                  block $B15
                                    local.get $l3
                                    local.get $l4
                                    i32.add
                                    local.tee $l6
                                    i32.load8_u
                                    local.tee $l7
                                    i32.const 24
                                    i32.shl
                                    i32.const 24
                                    i32.shr_s
                                    local.tee $l8
                                    i32.const -1
                                    i32.le_s
                                    br_if $B15
                                    local.get $l5
                                    local.set $l4
                                    br $B14
                                  end
                                  block $B16
                                    block $B17
                                      block $B18
                                        block $B19
                                          local.get $l7
                                          i32.const 1054991
                                          i32.add
                                          i32.load8_u
                                          i32.const -2
                                          i32.add
                                          local.tee $l9
                                          i32.const 2
                                          i32.gt_u
                                          br_if $B19
                                          local.get $l9
                                          br_table $B18 $B17 $B16 $B18
                                        end
                                        local.get $l2
                                        local.get $l4
                                        i32.lt_u
                                        br_if $B2
                                        local.get $l2
                                        local.get $l4
                                        i32.le_u
                                        br_if $B1
                                        local.get $p0
                                        local.get $l4
                                        i32.store offset=4
                                        local.get $p0
                                        local.get $l3
                                        i32.store
                                        local.get $p1
                                        local.get $l2
                                        local.get $l5
                                        i32.sub
                                        i32.store offset=4
                                        local.get $p1
                                        local.get $l3
                                        local.get $l5
                                        i32.add
                                        i32.store
                                        local.get $p0
                                        i32.const 12
                                        i32.add
                                        i32.const 1
                                        i32.store
                                        local.get $p0
                                        i32.const 8
                                        i32.add
                                        local.get $l6
                                        i32.store
                                        return
                                      end
                                      block $B20
                                        local.get $l3
                                        local.get $l5
                                        i32.add
                                        local.tee $l8
                                        i32.const 0
                                        local.get $l2
                                        local.get $l5
                                        i32.gt_u
                                        select
                                        local.tee $l7
                                        i32.const 1054353
                                        local.get $l7
                                        select
                                        i32.load8_u
                                        i32.const 192
                                        i32.and
                                        i32.const 128
                                        i32.ne
                                        br_if $B20
                                        local.get $l4
                                        i32.const 2
                                        i32.add
                                        local.set $l4
                                        br $B14
                                      end
                                      local.get $l2
                                      local.get $l4
                                      i32.lt_u
                                      br_if $B2
                                      local.get $l2
                                      local.get $l4
                                      i32.le_u
                                      br_if $B1
                                      local.get $p1
                                      local.get $l8
                                      i32.store
                                      local.get $p0
                                      local.get $l4
                                      i32.store offset=4
                                      local.get $p0
                                      local.get $l3
                                      i32.store
                                      local.get $p1
                                      local.get $l2
                                      local.get $l5
                                      i32.sub
                                      i32.store offset=4
                                      local.get $p0
                                      i32.const 12
                                      i32.add
                                      i32.const 1
                                      i32.store
                                      local.get $p0
                                      i32.const 8
                                      i32.add
                                      local.get $l6
                                      i32.store
                                      return
                                    end
                                    local.get $l3
                                    local.get $l5
                                    i32.add
                                    local.tee $l10
                                    i32.const 0
                                    local.get $l2
                                    local.get $l5
                                    i32.gt_u
                                    select
                                    local.tee $l9
                                    i32.const 1054353
                                    local.get $l9
                                    select
                                    i32.load8_u
                                    local.set $l9
                                    block $B21
                                      block $B22
                                        local.get $l7
                                        i32.const -224
                                        i32.add
                                        local.tee $l7
                                        i32.const 13
                                        i32.gt_u
                                        br_if $B22
                                        block $B23
                                          block $B24
                                            local.get $l7
                                            br_table $B24 $B22 $B22 $B22 $B22 $B22 $B22 $B22 $B22 $B22 $B22 $B22 $B22 $B23 $B24
                                          end
                                          local.get $l9
                                          i32.const 224
                                          i32.and
                                          i32.const 160
                                          i32.eq
                                          br_if $B21
                                          br $B3
                                        end
                                        local.get $l9
                                        i32.const 24
                                        i32.shl
                                        i32.const 24
                                        i32.shr_s
                                        i32.const -1
                                        i32.gt_s
                                        br_if $B3
                                        local.get $l9
                                        i32.const 255
                                        i32.and
                                        i32.const 160
                                        i32.ge_u
                                        br_if $B3
                                        br $B21
                                      end
                                      block $B25
                                        local.get $l8
                                        i32.const 31
                                        i32.add
                                        i32.const 255
                                        i32.and
                                        i32.const 11
                                        i32.gt_u
                                        br_if $B25
                                        local.get $l9
                                        i32.const 24
                                        i32.shl
                                        i32.const 24
                                        i32.shr_s
                                        i32.const -1
                                        i32.gt_s
                                        br_if $B3
                                        local.get $l9
                                        i32.const 255
                                        i32.and
                                        i32.const 192
                                        i32.ge_u
                                        br_if $B3
                                        br $B21
                                      end
                                      local.get $l9
                                      i32.const 255
                                      i32.and
                                      i32.const 191
                                      i32.gt_u
                                      br_if $B3
                                      local.get $l8
                                      i32.const 254
                                      i32.and
                                      i32.const 238
                                      i32.ne
                                      br_if $B3
                                      local.get $l9
                                      i32.const 24
                                      i32.shl
                                      i32.const 24
                                      i32.shr_s
                                      i32.const -1
                                      i32.gt_s
                                      br_if $B3
                                    end
                                    block $B26
                                      local.get $l3
                                      local.get $l4
                                      i32.const 2
                                      i32.add
                                      local.tee $l5
                                      i32.add
                                      local.tee $l8
                                      i32.const 0
                                      local.get $l2
                                      local.get $l5
                                      i32.gt_u
                                      select
                                      local.tee $l7
                                      i32.const 1054353
                                      local.get $l7
                                      select
                                      i32.load8_u
                                      i32.const 192
                                      i32.and
                                      i32.const 128
                                      i32.ne
                                      br_if $B26
                                      local.get $l4
                                      i32.const 3
                                      i32.add
                                      local.set $l4
                                      br $B14
                                    end
                                    local.get $l2
                                    local.get $l4
                                    i32.lt_u
                                    br_if $B2
                                    local.get $l4
                                    i32.const -3
                                    i32.gt_u
                                    br_if $B10
                                    local.get $l2
                                    local.get $l5
                                    i32.lt_u
                                    br_if $B9
                                    local.get $p1
                                    local.get $l8
                                    i32.store
                                    local.get $p0
                                    local.get $l4
                                    i32.store offset=4
                                    local.get $p0
                                    local.get $l3
                                    i32.store
                                    local.get $p1
                                    local.get $l2
                                    local.get $l5
                                    i32.sub
                                    i32.store offset=4
                                    local.get $p0
                                    i32.const 12
                                    i32.add
                                    i32.const 2
                                    i32.store
                                    local.get $p0
                                    i32.const 8
                                    i32.add
                                    local.get $l6
                                    i32.store
                                    return
                                  end
                                  local.get $l3
                                  local.get $l5
                                  i32.add
                                  local.tee $l10
                                  i32.const 0
                                  local.get $l2
                                  local.get $l5
                                  i32.gt_u
                                  select
                                  local.tee $l9
                                  i32.const 1054353
                                  local.get $l9
                                  select
                                  i32.load8_u
                                  local.set $l9
                                  block $B27
                                    block $B28
                                      local.get $l7
                                      i32.const -240
                                      i32.add
                                      local.tee $l7
                                      i32.const 4
                                      i32.gt_u
                                      br_if $B28
                                      block $B29
                                        block $B30
                                          local.get $l7
                                          br_table $B30 $B28 $B28 $B28 $B29 $B30
                                        end
                                        local.get $l9
                                        i32.const 112
                                        i32.add
                                        i32.const 255
                                        i32.and
                                        i32.const 48
                                        i32.lt_u
                                        br_if $B27
                                        br $B4
                                      end
                                      local.get $l9
                                      i32.const 24
                                      i32.shl
                                      i32.const 24
                                      i32.shr_s
                                      i32.const -1
                                      i32.gt_s
                                      br_if $B4
                                      local.get $l9
                                      i32.const 255
                                      i32.and
                                      i32.const 144
                                      i32.ge_u
                                      br_if $B4
                                      br $B27
                                    end
                                    local.get $l9
                                    i32.const 255
                                    i32.and
                                    i32.const 191
                                    i32.gt_u
                                    br_if $B4
                                    local.get $l8
                                    i32.const 15
                                    i32.add
                                    i32.const 255
                                    i32.and
                                    i32.const 2
                                    i32.gt_u
                                    br_if $B4
                                    local.get $l9
                                    i32.const 24
                                    i32.shl
                                    i32.const 24
                                    i32.shr_s
                                    i32.const -1
                                    i32.gt_s
                                    br_if $B4
                                  end
                                  local.get $l3
                                  local.get $l4
                                  i32.const 2
                                  i32.add
                                  local.tee $l5
                                  i32.add
                                  local.tee $l8
                                  i32.const 0
                                  local.get $l2
                                  local.get $l5
                                  i32.gt_u
                                  select
                                  local.tee $l7
                                  i32.const 1054353
                                  local.get $l7
                                  select
                                  i32.load8_u
                                  i32.const 192
                                  i32.and
                                  i32.const 128
                                  i32.ne
                                  br_if $B12
                                  local.get $l3
                                  local.get $l4
                                  i32.const 3
                                  i32.add
                                  local.tee $l5
                                  i32.add
                                  local.tee $l8
                                  i32.const 0
                                  local.get $l2
                                  local.get $l5
                                  i32.gt_u
                                  select
                                  local.tee $l7
                                  i32.const 1054353
                                  local.get $l7
                                  select
                                  i32.load8_u
                                  i32.const 192
                                  i32.and
                                  i32.const 128
                                  i32.ne
                                  br_if $B11
                                  local.get $l4
                                  i32.const 4
                                  i32.add
                                  local.set $l4
                                end
                                local.get $l4
                                local.get $l2
                                i32.lt_u
                                br_if $L13
                              end
                              local.get $p1
                              i64.const 1
                              i64.store align=4
                              local.get $p0
                              local.get $l2
                              i32.store offset=4
                              local.get $p0
                              local.get $l3
                              i32.store
                              local.get $p0
                              i32.const 8
                              i32.add
                              i64.const 1
                              i64.store align=4
                              return
                            end
                            local.get $l2
                            local.get $l4
                            i32.lt_u
                            br_if $B2
                            local.get $l4
                            i32.const -3
                            i32.gt_u
                            br_if $B8
                            local.get $l2
                            local.get $l5
                            i32.lt_u
                            br_if $B7
                            local.get $p1
                            local.get $l8
                            i32.store
                            local.get $p0
                            local.get $l4
                            i32.store offset=4
                            local.get $p0
                            local.get $l3
                            i32.store
                            local.get $p1
                            local.get $l2
                            local.get $l5
                            i32.sub
                            i32.store offset=4
                            local.get $p0
                            i32.const 12
                            i32.add
                            i32.const 2
                            i32.store
                            local.get $p0
                            i32.const 8
                            i32.add
                            local.get $l6
                            i32.store
                            return
                          end
                          local.get $l2
                          local.get $l4
                          i32.lt_u
                          br_if $B2
                          local.get $l4
                          i32.const -4
                          i32.gt_u
                          br_if $B6
                          local.get $l2
                          local.get $l5
                          i32.lt_u
                          br_if $B5
                          local.get $p1
                          local.get $l8
                          i32.store
                          local.get $p0
                          local.get $l4
                          i32.store offset=4
                          local.get $p0
                          local.get $l3
                          i32.store
                          local.get $p1
                          local.get $l2
                          local.get $l5
                          i32.sub
                          i32.store offset=4
                          local.get $p0
                          i32.const 12
                          i32.add
                          i32.const 3
                          i32.store
                          local.get $p0
                          i32.const 8
                          i32.add
                          local.get $l6
                          i32.store
                          return
                        end
                        local.get $l4
                        local.get $l5
                        call $_ZN4core5slice22slice_index_order_fail17heebd88c1be3dadefE
                        unreachable
                      end
                      local.get $l5
                      local.get $l2
                      call $_ZN4core5slice20slice_index_len_fail17hfc4485e8c33f2d47E
                      unreachable
                    end
                    local.get $l4
                    local.get $l5
                    call $_ZN4core5slice22slice_index_order_fail17heebd88c1be3dadefE
                    unreachable
                  end
                  local.get $l5
                  local.get $l2
                  call $_ZN4core5slice20slice_index_len_fail17hfc4485e8c33f2d47E
                  unreachable
                end
                local.get $l4
                local.get $l5
                call $_ZN4core5slice22slice_index_order_fail17heebd88c1be3dadefE
                unreachable
              end
              local.get $l5
              local.get $l2
              call $_ZN4core5slice20slice_index_len_fail17hfc4485e8c33f2d47E
              unreachable
            end
            local.get $l2
            local.get $l4
            i32.lt_u
            br_if $B2
            local.get $l2
            local.get $l4
            i32.le_u
            br_if $B1
            local.get $p1
            local.get $l10
            i32.store
            local.get $p0
            local.get $l4
            i32.store offset=4
            local.get $p0
            local.get $l3
            i32.store
            local.get $p1
            local.get $l2
            local.get $l5
            i32.sub
            i32.store offset=4
            local.get $p0
            i32.const 12
            i32.add
            i32.const 1
            i32.store
            local.get $p0
            i32.const 8
            i32.add
            local.get $l6
            i32.store
            return
          end
          local.get $l2
          local.get $l4
          i32.lt_u
          br_if $B2
          local.get $l2
          local.get $l4
          i32.le_u
          br_if $B1
          local.get $p1
          local.get $l10
          i32.store
          local.get $p0
          local.get $l4
          i32.store offset=4
          local.get $p0
          local.get $l3
          i32.store
          local.get $p1
          local.get $l2
          local.get $l5
          i32.sub
          i32.store offset=4
          local.get $p0
          i32.const 12
          i32.add
          i32.const 1
          i32.store
          local.get $p0
          i32.const 8
          i32.add
          local.get $l6
          i32.store
          return
        end
        local.get $l4
        local.get $l2
        call $_ZN4core5slice20slice_index_len_fail17hfc4485e8c33f2d47E
        unreachable
      end
      local.get $l5
      local.get $l2
      call $_ZN4core5slice20slice_index_len_fail17hfc4485e8c33f2d47E
      unreachable
    end
    local.get $p0
    i32.const 0
    i32.store)
  (func $_ZN66_$LT$core..str..lossy..Utf8Lossy$u20$as$u20$core..fmt..Display$GT$3fmt17h01e01d86d9c10b50E (type $t8) (param $p0 i32) (param $p1 i32) (param $p2 i32) (result i32)
    (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32)
    global.get $g0
    i32.const 32
    i32.sub
    local.tee $l3
    global.set $g0
    block $B0
      block $B1
        block $B2
          local.get $p1
          i32.eqz
          br_if $B2
          local.get $l3
          local.get $p1
          i32.store offset=12
          local.get $l3
          local.get $p0
          i32.store offset=8
          local.get $l3
          i32.const 16
          i32.add
          local.get $l3
          i32.const 8
          i32.add
          call $_ZN96_$LT$core..str..lossy..Utf8LossyChunksIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3cc4f6dc97be609eE
          block $B3
            local.get $l3
            i32.load offset=16
            local.tee $p0
            i32.eqz
            br_if $B3
            loop $L4
              local.get $l3
              i32.load offset=28
              local.set $l4
              local.get $l3
              i32.load offset=20
              local.tee $l5
              local.get $p1
              i32.eq
              br_if $B1
              i32.const 1
              local.set $l6
              local.get $p2
              i32.load offset=24
              local.get $p0
              local.get $l5
              local.get $p2
              i32.load offset=28
              i32.load offset=12
              call_indirect (type $t8) $T0
              br_if $B0
              block $B5
                local.get $l4
                i32.eqz
                br_if $B5
                local.get $p2
                i32.load offset=24
                i32.const 65533
                local.get $p2
                i32.load offset=28
                i32.load offset=16
                call_indirect (type $t3) $T0
                br_if $B0
              end
              local.get $l3
              i32.const 16
              i32.add
              local.get $l3
              i32.const 8
              i32.add
              call $_ZN96_$LT$core..str..lossy..Utf8LossyChunksIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3cc4f6dc97be609eE
              local.get $l3
              i32.load offset=16
              local.tee $p0
              br_if $L4
            end
          end
          i32.const 0
          local.set $l6
          br $B0
        end
        local.get $p2
        i32.const 1054352
        i32.const 0
        call $_ZN4core3fmt9Formatter3pad17h2edb8e7d7e605d23E
        local.set $l6
        br $B0
      end
      block $B6
        local.get $l4
        br_if $B6
        local.get $p2
        local.get $p0
        local.get $p1
        call $_ZN4core3fmt9Formatter3pad17h2edb8e7d7e605d23E
        local.set $l6
        br $B0
      end
      i32.const 1054892
      i32.const 35
      i32.const 1054952
      call $_ZN4core9panicking5panic17hc60400b47c695700E
      unreachable
    end
    local.get $l3
    i32.const 32
    i32.add
    global.set $g0
    local.get $l6)
  (func $_ZN4core7unicode9bool_trie8BoolTrie6lookup17h84f73bedeaa3b078E (type $t3) (param $p0 i32) (param $p1 i32) (result i32)
    (local $l2 i32) (local $l3 i32)
    block $B0
      block $B1
        local.get $p1
        i32.const 2048
        i32.lt_u
        br_if $B1
        block $B2
          block $B3
            block $B4
              block $B5
                block $B6
                  block $B7
                    local.get $p1
                    i32.const 65536
                    i32.lt_u
                    br_if $B7
                    local.get $p1
                    i32.const 12
                    i32.shr_u
                    i32.const -16
                    i32.add
                    local.tee $l2
                    i32.const 256
                    i32.lt_u
                    br_if $B6
                    i32.const 1055932
                    local.get $l2
                    i32.const 256
                    call $_ZN4core9panicking18panic_bounds_check17h42ce3eaf53169acbE
                    unreachable
                  end
                  local.get $p1
                  i32.const 6
                  i32.shr_u
                  i32.const -32
                  i32.add
                  local.tee $l2
                  i32.const 991
                  i32.gt_u
                  br_if $B5
                  local.get $p0
                  i32.const 260
                  i32.add
                  i32.load
                  local.tee $l3
                  local.get $p0
                  local.get $l2
                  i32.add
                  i32.const 280
                  i32.add
                  i32.load8_u
                  local.tee $l2
                  i32.le_u
                  br_if $B4
                  local.get $p0
                  i32.load offset=256
                  local.get $l2
                  i32.const 3
                  i32.shl
                  i32.add
                  local.set $p0
                  br $B0
                end
                local.get $p0
                local.get $l2
                i32.add
                i32.const 1272
                i32.add
                i32.load8_u
                i32.const 6
                i32.shl
                local.get $p1
                i32.const 6
                i32.shr_u
                i32.const 63
                i32.and
                i32.or
                local.tee $l2
                local.get $p0
                i32.const 268
                i32.add
                i32.load
                local.tee $l3
                i32.ge_u
                br_if $B3
                local.get $p0
                i32.const 276
                i32.add
                i32.load
                local.tee $l3
                local.get $p0
                i32.load offset=264
                local.get $l2
                i32.add
                i32.load8_u
                local.tee $l2
                i32.le_u
                br_if $B2
                local.get $p0
                i32.load offset=272
                local.get $l2
                i32.const 3
                i32.shl
                i32.add
                local.set $p0
                br $B0
              end
              i32.const 1055900
              local.get $l2
              i32.const 992
              call $_ZN4core9panicking18panic_bounds_check17h42ce3eaf53169acbE
              unreachable
            end
            i32.const 1055916
            local.get $l2
            local.get $l3
            call $_ZN4core9panicking18panic_bounds_check17h42ce3eaf53169acbE
            unreachable
          end
          i32.const 1055948
          local.get $l2
          local.get $l3
          call $_ZN4core9panicking18panic_bounds_check17h42ce3eaf53169acbE
          unreachable
        end
        i32.const 1055964
        local.get $l2
        local.get $l3
        call $_ZN4core9panicking18panic_bounds_check17h42ce3eaf53169acbE
        unreachable
      end
      local.get $p0
      local.get $p1
      i32.const 3
      i32.shr_u
      i32.const 536870904
      i32.and
      i32.add
      local.set $p0
    end
    local.get $p0
    i64.load
    i64.const 1
    local.get $p1
    i32.const 63
    i32.and
    i64.extend_i32_u
    i64.shl
    i64.and
    i64.const 0
    i64.ne)
  (func $_ZN4core7unicode9printable12is_printable17hed06e069218dc178E (type $t7) (param $p0 i32) (result i32)
    (local $l1 i32)
    block $B0
      local.get $p0
      i32.const 65536
      i32.lt_u
      br_if $B0
      block $B1
        block $B2
          local.get $p0
          i32.const 131072
          i32.lt_u
          br_if $B2
          i32.const 0
          local.set $l1
          local.get $p0
          i32.const -195102
          i32.add
          i32.const 722658
          i32.lt_u
          br_if $B1
          local.get $p0
          i32.const -191457
          i32.add
          i32.const 3103
          i32.lt_u
          br_if $B1
          local.get $p0
          i32.const -183970
          i32.add
          i32.const 14
          i32.lt_u
          br_if $B1
          local.get $p0
          i32.const 2097150
          i32.and
          i32.const 178206
          i32.eq
          br_if $B1
          local.get $p0
          i32.const -173783
          i32.add
          i32.const 41
          i32.lt_u
          br_if $B1
          local.get $p0
          i32.const -177973
          i32.add
          i32.const 11
          i32.lt_u
          br_if $B1
          local.get $p0
          i32.const -918000
          i32.add
          i32.const 196111
          i32.gt_u
          return
        end
        local.get $p0
        i32.const 1056669
        i32.const 35
        i32.const 1056739
        i32.const 166
        i32.const 1056905
        i32.const 408
        call $_ZN4core7unicode9printable5check17haa15d32184b13ee5E
        local.set $l1
      end
      local.get $l1
      return
    end
    local.get $p0
    i32.const 1055980
    i32.const 41
    i32.const 1056062
    i32.const 293
    i32.const 1056355
    i32.const 314
    call $_ZN4core7unicode9printable5check17haa15d32184b13ee5E)
  (func $_ZN4core3str6traits101_$LT$impl$u20$core..slice..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$5index28_$u7b$$u7b$closure$u7d$$u7d$17he28276d81535378cE (type $t1) (param $p0 i32)
    (local $l1 i32)
    local.get $p0
    i32.load
    local.tee $l1
    i32.load
    local.get $l1
    i32.load offset=4
    local.get $p0
    i32.load offset=4
    i32.load
    local.get $p0
    i32.load offset=8
    i32.load
    call $_ZN4core3str16slice_error_fail17he3cd070c8cb5f5f5E
    unreachable)
  (func $_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i8$GT$3fmt17hc0bd685e8a486811E (type $t3) (param $p0 i32) (param $p1 i32) (result i32)
    (local $l2 i32) (local $l3 i32) (local $l4 i32)
    global.get $g0
    i32.const 128
    i32.sub
    local.tee $l2
    global.set $g0
    local.get $p0
    i32.load8_u
    local.set $l3
    i32.const 0
    local.set $p0
    loop $L0
      local.get $l2
      local.get $p0
      i32.add
      i32.const 127
      i32.add
      local.get $l3
      i32.const 15
      i32.and
      local.tee $l4
      i32.const 48
      i32.or
      local.get $l4
      i32.const 87
      i32.add
      local.get $l4
      i32.const 10
      i32.lt_u
      select
      i32.store8
      local.get $p0
      i32.const -1
      i32.add
      local.set $p0
      local.get $l3
      i32.const 4
      i32.shr_u
      i32.const 15
      i32.and
      local.tee $l3
      br_if $L0
    end
    block $B1
      local.get $p0
      i32.const 128
      i32.add
      local.tee $l3
      i32.const 129
      i32.lt_u
      br_if $B1
      local.get $l3
      i32.const 128
      call $_ZN4core5slice22slice_index_order_fail17heebd88c1be3dadefE
      unreachable
    end
    local.get $p1
    i32.const 1
    i32.const 1055585
    i32.const 2
    local.get $l2
    local.get $p0
    i32.add
    i32.const 128
    i32.add
    i32.const 0
    local.get $p0
    i32.sub
    call $_ZN4core3fmt9Formatter12pad_integral17hfef5805f826bffbfE
    local.set $p0
    local.get $l2
    i32.const 128
    i32.add
    global.set $g0
    local.get $p0)
  (func $_ZN4core3str9from_utf817hc9d846e05f440661E (type $t6) (param $p0 i32) (param $p1 i32) (param $p2 i32)
    (local $l3 i32) (local $l4 i64)
    global.get $g0
    i32.const 16
    i32.sub
    local.tee $l3
    global.set $g0
    local.get $l3
    i32.const 8
    i32.add
    local.get $p1
    local.get $p2
    call $_ZN4core3str19run_utf8_validation17h7e6a021aaed33521E
    block $B0
      block $B1
        local.get $l3
        i64.load offset=8
        local.tee $l4
        i64.const 1095216660480
        i64.and
        i64.const 8589934592
        i64.eq
        br_if $B1
        local.get $p0
        local.get $l4
        i64.store offset=4 align=4
        i32.const 1
        local.set $p1
        br $B0
      end
      local.get $p0
      local.get $p1
      i32.store offset=4
      local.get $p0
      i32.const 8
      i32.add
      local.get $p2
      i32.store
      i32.const 0
      local.set $p1
    end
    local.get $p0
    local.get $p1
    i32.store
    local.get $l3
    i32.const 16
    i32.add
    global.set $g0)
  (func $_ZN4core3str19run_utf8_validation17h7e6a021aaed33521E (type $t6) (param $p0 i32) (param $p1 i32) (param $p2 i32)
    (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32)
    block $B0
      block $B1
        block $B2
          local.get $p2
          i32.eqz
          br_if $B2
          i32.const 0
          local.get $p1
          i32.sub
          i32.const 0
          local.get $p1
          i32.const 3
          i32.and
          select
          local.set $l3
          local.get $p2
          i32.const -7
          i32.add
          i32.const 0
          local.get $p2
          i32.const 7
          i32.gt_u
          select
          local.set $l4
          i32.const 0
          local.set $l5
          loop $L3
            block $B4
              block $B5
                block $B6
                  block $B7
                    block $B8
                      local.get $p1
                      local.get $l5
                      i32.add
                      i32.load8_u
                      local.tee $l6
                      i32.const 24
                      i32.shl
                      i32.const 24
                      i32.shr_s
                      local.tee $l7
                      i32.const -1
                      i32.gt_s
                      br_if $B8
                      block $B9
                        block $B10
                          block $B11
                            block $B12
                              local.get $l6
                              i32.const 1054991
                              i32.add
                              i32.load8_u
                              i32.const -2
                              i32.add
                              local.tee $l8
                              i32.const 2
                              i32.gt_u
                              br_if $B12
                              local.get $l8
                              br_table $B11 $B10 $B9 $B11
                            end
                            local.get $p0
                            i32.const 257
                            i32.store16 offset=4
                            local.get $p0
                            local.get $l5
                            i32.store
                            return
                          end
                          block $B13
                            local.get $l5
                            i32.const 1
                            i32.add
                            local.tee $l6
                            local.get $p2
                            i32.lt_u
                            br_if $B13
                            local.get $p0
                            i32.const 0
                            i32.store8 offset=4
                            local.get $p0
                            local.get $l5
                            i32.store
                            return
                          end
                          local.get $p1
                          local.get $l6
                          i32.add
                          i32.load8_u
                          i32.const 192
                          i32.and
                          i32.const 128
                          i32.eq
                          br_if $B7
                          local.get $p0
                          i32.const 257
                          i32.store16 offset=4
                          local.get $p0
                          local.get $l5
                          i32.store
                          return
                        end
                        block $B14
                          local.get $l5
                          i32.const 1
                          i32.add
                          local.tee $l8
                          local.get $p2
                          i32.lt_u
                          br_if $B14
                          local.get $p0
                          i32.const 0
                          i32.store8 offset=4
                          local.get $p0
                          local.get $l5
                          i32.store
                          return
                        end
                        local.get $p1
                        local.get $l8
                        i32.add
                        i32.load8_u
                        local.set $l8
                        block $B15
                          block $B16
                            local.get $l6
                            i32.const -224
                            i32.add
                            local.tee $l6
                            i32.const 13
                            i32.gt_u
                            br_if $B16
                            block $B17
                              block $B18
                                local.get $l6
                                br_table $B18 $B16 $B16 $B16 $B16 $B16 $B16 $B16 $B16 $B16 $B16 $B16 $B16 $B17 $B18
                              end
                              local.get $l8
                              i32.const 224
                              i32.and
                              i32.const 160
                              i32.ne
                              br_if $B0
                              br $B15
                            end
                            local.get $l8
                            i32.const 24
                            i32.shl
                            i32.const 24
                            i32.shr_s
                            i32.const -1
                            i32.gt_s
                            br_if $B0
                            local.get $l8
                            i32.const 255
                            i32.and
                            i32.const 160
                            i32.lt_u
                            br_if $B15
                            br $B0
                          end
                          block $B19
                            local.get $l7
                            i32.const 31
                            i32.add
                            i32.const 255
                            i32.and
                            i32.const 11
                            i32.gt_u
                            br_if $B19
                            local.get $l8
                            i32.const 24
                            i32.shl
                            i32.const 24
                            i32.shr_s
                            i32.const -1
                            i32.gt_s
                            br_if $B0
                            local.get $l8
                            i32.const 255
                            i32.and
                            i32.const 192
                            i32.ge_u
                            br_if $B0
                            br $B15
                          end
                          local.get $l8
                          i32.const 255
                          i32.and
                          i32.const 191
                          i32.gt_u
                          br_if $B0
                          local.get $l7
                          i32.const 254
                          i32.and
                          i32.const 238
                          i32.ne
                          br_if $B0
                          local.get $l8
                          i32.const 24
                          i32.shl
                          i32.const 24
                          i32.shr_s
                          i32.const -1
                          i32.gt_s
                          br_if $B0
                        end
                        block $B20
                          local.get $l5
                          i32.const 2
                          i32.add
                          local.tee $l6
                          local.get $p2
                          i32.lt_u
                          br_if $B20
                          local.get $p0
                          i32.const 0
                          i32.store8 offset=4
                          local.get $p0
                          local.get $l5
                          i32.store
                          return
                        end
                        local.get $p1
                        local.get $l6
                        i32.add
                        i32.load8_u
                        i32.const 192
                        i32.and
                        i32.const 128
                        i32.eq
                        br_if $B7
                        local.get $p0
                        i32.const 513
                        i32.store16 offset=4
                        local.get $p0
                        local.get $l5
                        i32.store
                        return
                      end
                      block $B21
                        local.get $l5
                        i32.const 1
                        i32.add
                        local.tee $l8
                        local.get $p2
                        i32.lt_u
                        br_if $B21
                        local.get $p0
                        i32.const 0
                        i32.store8 offset=4
                        local.get $p0
                        local.get $l5
                        i32.store
                        return
                      end
                      local.get $p1
                      local.get $l8
                      i32.add
                      i32.load8_u
                      local.set $l8
                      block $B22
                        block $B23
                          local.get $l6
                          i32.const -240
                          i32.add
                          local.tee $l6
                          i32.const 4
                          i32.gt_u
                          br_if $B23
                          block $B24
                            block $B25
                              local.get $l6
                              br_table $B25 $B23 $B23 $B23 $B24 $B25
                            end
                            local.get $l8
                            i32.const 112
                            i32.add
                            i32.const 255
                            i32.and
                            i32.const 48
                            i32.ge_u
                            br_if $B1
                            br $B22
                          end
                          local.get $l8
                          i32.const 24
                          i32.shl
                          i32.const 24
                          i32.shr_s
                          i32.const -1
                          i32.gt_s
                          br_if $B1
                          local.get $l8
                          i32.const 255
                          i32.and
                          i32.const 144
                          i32.lt_u
                          br_if $B22
                          br $B1
                        end
                        local.get $l8
                        i32.const 255
                        i32.and
                        i32.const 191
                        i32.gt_u
                        br_if $B1
                        local.get $l7
                        i32.const 15
                        i32.add
                        i32.const 255
                        i32.and
                        i32.const 2
                        i32.gt_u
                        br_if $B1
                        local.get $l8
                        i32.const 24
                        i32.shl
                        i32.const 24
                        i32.shr_s
                        i32.const -1
                        i32.gt_s
                        br_if $B1
                      end
                      block $B26
                        local.get $l5
                        i32.const 2
                        i32.add
                        local.tee $l6
                        local.get $p2
                        i32.lt_u
                        br_if $B26
                        local.get $p0
                        i32.const 0
                        i32.store8 offset=4
                        local.get $p0
                        local.get $l5
                        i32.store
                        return
                      end
                      local.get $p1
                      local.get $l6
                      i32.add
                      i32.load8_u
                      i32.const 192
                      i32.and
                      i32.const 128
                      i32.ne
                      br_if $B6
                      block $B27
                        local.get $l5
                        i32.const 3
                        i32.add
                        local.tee $l6
                        local.get $p2
                        i32.lt_u
                        br_if $B27
                        local.get $p0
                        i32.const 0
                        i32.store8 offset=4
                        local.get $p0
                        local.get $l5
                        i32.store
                        return
                      end
                      local.get $p1
                      local.get $l6
                      i32.add
                      i32.load8_u
                      i32.const 192
                      i32.and
                      i32.const 128
                      i32.eq
                      br_if $B7
                      local.get $p0
                      i32.const 769
                      i32.store16 offset=4
                      local.get $p0
                      local.get $l5
                      i32.store
                      return
                    end
                    local.get $l3
                    local.get $l5
                    i32.sub
                    i32.const 3
                    i32.and
                    br_if $B5
                    block $B28
                      local.get $l5
                      local.get $l4
                      i32.ge_u
                      br_if $B28
                      loop $L29
                        local.get $p1
                        local.get $l5
                        i32.add
                        local.tee $l6
                        i32.const 4
                        i32.add
                        i32.load
                        local.get $l6
                        i32.load
                        i32.or
                        i32.const -2139062144
                        i32.and
                        br_if $B28
                        local.get $l5
                        i32.const 8
                        i32.add
                        local.tee $l5
                        local.get $l4
                        i32.lt_u
                        br_if $L29
                      end
                    end
                    local.get $l5
                    local.get $p2
                    i32.ge_u
                    br_if $B4
                    loop $L30
                      local.get $p1
                      local.get $l5
                      i32.add
                      i32.load8_s
                      i32.const 0
                      i32.lt_s
                      br_if $B4
                      local.get $p2
                      local.get $l5
                      i32.const 1
                      i32.add
                      local.tee $l5
                      i32.ne
                      br_if $L30
                      br $B2
                    end
                  end
                  local.get $l6
                  i32.const 1
                  i32.add
                  local.set $l5
                  br $B4
                end
                local.get $p0
                i32.const 513
                i32.store16 offset=4
                local.get $p0
                local.get $l5
                i32.store
                return
              end
              local.get $l5
              i32.const 1
              i32.add
              local.set $l5
            end
            local.get $l5
            local.get $p2
            i32.lt_u
            br_if $L3
          end
        end
        local.get $p0
        i32.const 2
        i32.store8 offset=4
        return
      end
      local.get $p0
      i32.const 257
      i32.store16 offset=4
      local.get $p0
      local.get $l5
      i32.store
      return
    end
    local.get $p0
    i32.const 257
    i32.store16 offset=4
    local.get $p0
    local.get $l5
    i32.store)
  (func $_ZN4core3fmt3num3imp51_$LT$impl$u20$core..fmt..Display$u20$for$u20$u8$GT$3fmt17h6bbc810392989f25E (type $t3) (param $p0 i32) (param $p1 i32) (result i32)
    local.get $p0
    i64.load8_u
    i32.const 1
    local.get $p1
    call $_ZN4core3fmt3num3imp7fmt_u6417h042ebedf17751bd0E)
  (func $_ZN4core3fmt8builders10DebugInner5entry17h4245dad62c1db899E (type $t6) (param $p0 i32) (param $p1 i32) (param $p2 i32)
    (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i64) (local $l7 i64) (local $l8 i64) (local $l9 i64) (local $l10 i64)
    global.get $g0
    i32.const 80
    i32.sub
    local.tee $l3
    global.set $g0
    i32.const 1
    local.set $l4
    block $B0
      local.get $p0
      i32.load8_u offset=4
      br_if $B0
      local.get $p0
      i32.load8_u offset=5
      local.set $l4
      block $B1
        local.get $p0
        i32.load
        local.tee $l5
        i32.load8_u
        i32.const 4
        i32.and
        br_if $B1
        block $B2
          local.get $l4
          i32.const 255
          i32.and
          i32.eqz
          br_if $B2
          i32.const 1
          local.set $l4
          local.get $l5
          i32.load offset=24
          i32.const 1055553
          i32.const 2
          local.get $l5
          i32.const 28
          i32.add
          i32.load
          i32.load offset=12
          call_indirect (type $t8) $T0
          br_if $B0
          local.get $p0
          i32.load
          local.set $l5
        end
        local.get $p1
        local.get $l5
        local.get $p2
        i32.load offset=12
        call_indirect (type $t3) $T0
        local.set $l4
        br $B0
      end
      block $B3
        local.get $l4
        i32.const 255
        i32.and
        br_if $B3
        i32.const 1
        local.set $l4
        local.get $l5
        i32.load offset=24
        i32.const 1055565
        i32.const 1
        local.get $l5
        i32.const 28
        i32.add
        i32.load
        i32.load offset=12
        call_indirect (type $t8) $T0
        br_if $B0
        local.get $p0
        i32.load
        local.set $l5
      end
      i32.const 1
      local.set $l4
      local.get $l3
      i32.const 1
      i32.store8 offset=23
      local.get $l3
      local.get $l3
      i32.const 23
      i32.add
      i32.store offset=16
      local.get $l5
      i64.load offset=8 align=4
      local.set $l6
      local.get $l5
      i64.load offset=16 align=4
      local.set $l7
      local.get $l3
      i32.const 52
      i32.add
      i32.const 1055520
      i32.store
      local.get $l3
      local.get $l5
      i64.load offset=24 align=4
      i64.store offset=8
      local.get $l5
      i64.load offset=32 align=4
      local.set $l8
      local.get $l5
      i64.load offset=40 align=4
      local.set $l9
      local.get $l3
      local.get $l5
      i32.load8_u offset=48
      i32.store8 offset=72
      local.get $l5
      i64.load align=4
      local.set $l10
      local.get $l3
      local.get $l9
      i64.store offset=64
      local.get $l3
      local.get $l8
      i64.store offset=56
      local.get $l3
      local.get $l7
      i64.store offset=40
      local.get $l3
      local.get $l6
      i64.store offset=32
      local.get $l3
      local.get $l10
      i64.store offset=24
      local.get $l3
      local.get $l3
      i32.const 8
      i32.add
      i32.store offset=48
      local.get $p1
      local.get $l3
      i32.const 24
      i32.add
      local.get $p2
      i32.load offset=12
      call_indirect (type $t3) $T0
      br_if $B0
      local.get $l3
      i32.load offset=48
      i32.const 1055551
      i32.const 2
      local.get $l3
      i32.load offset=52
      i32.load offset=12
      call_indirect (type $t8) $T0
      local.set $l4
    end
    local.get $p0
    i32.const 1
    i32.store8 offset=5
    local.get $p0
    local.get $l4
    i32.store8 offset=4
    local.get $l3
    i32.const 80
    i32.add
    global.set $g0)
  (func $_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17h9a3163a3c6013c6cE (type $t3) (param $p0 i32) (param $p1 i32) (result i32)
    (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i64)
    i32.const 1
    local.set $l2
    block $B0
      local.get $p1
      i32.load offset=24
      i32.const 39
      local.get $p1
      i32.const 28
      i32.add
      i32.load
      i32.load offset=16
      call_indirect (type $t3) $T0
      br_if $B0
      i32.const 2
      local.set $l3
      block $B1
        block $B2
          block $B3
            block $B4
              block $B5
                local.get $p0
                i32.load
                local.tee $p0
                i32.const -9
                i32.add
                local.tee $l4
                i32.const 30
                i32.le_u
                br_if $B5
                local.get $p0
                i32.const 92
                i32.ne
                br_if $B4
                br $B3
              end
              i32.const 116
              local.set $l5
              block $B6
                block $B7
                  local.get $l4
                  br_table $B1 $B6 $B4 $B4 $B7 $B4 $B4 $B4 $B4 $B4 $B4 $B4 $B4 $B4 $B4 $B4 $B4 $B4 $B4 $B4 $B4 $B4 $B4 $B4 $B4 $B3 $B4 $B4 $B4 $B4 $B3 $B1
                end
                i32.const 114
                local.set $l5
                br $B1
              end
              i32.const 110
              local.set $l5
              br $B1
            end
            block $B8
              block $B9
                block $B10
                  i32.const 1058888
                  local.get $p0
                  call $_ZN4core7unicode9bool_trie8BoolTrie6lookup17h84f73bedeaa3b078E
                  br_if $B10
                  local.get $p0
                  call $_ZN4core7unicode9printable12is_printable17hed06e069218dc178E
                  i32.eqz
                  br_if $B9
                  i32.const 1
                  local.set $l3
                  br $B2
                end
                local.get $p0
                i32.const 1
                i32.or
                i32.clz
                i32.const 2
                i32.shr_u
                i32.const 7
                i32.xor
                i64.extend_i32_u
                i64.const 21474836480
                i64.or
                local.set $l6
                br $B8
              end
              local.get $p0
              i32.const 1
              i32.or
              i32.clz
              i32.const 2
              i32.shr_u
              i32.const 7
              i32.xor
              i64.extend_i32_u
              i64.const 21474836480
              i64.or
              local.set $l6
            end
            i32.const 3
            local.set $l3
            br $B2
          end
        end
        local.get $p0
        local.set $l5
      end
      loop $L11
        local.get $l3
        local.set $l4
        i32.const 92
        local.set $p0
        i32.const 1
        local.set $l2
        i32.const 1
        local.set $l3
        block $B12
          block $B13
            block $B14
              block $B15
                local.get $l4
                br_table $B14 $B13 $B12 $B15 $B14
              end
              block $B16
                block $B17
                  block $B18
                    block $B19
                      block $B20
                        local.get $l6
                        i64.const 32
                        i64.shr_u
                        i32.wrap_i64
                        i32.const 255
                        i32.and
                        br_table $B14 $B16 $B17 $B18 $B19 $B20 $B14
                      end
                      local.get $l6
                      i64.const -1095216660481
                      i64.and
                      i64.const 17179869184
                      i64.or
                      local.set $l6
                      i32.const 3
                      local.set $l3
                      br $B12
                    end
                    local.get $l6
                    i64.const -1095216660481
                    i64.and
                    i64.const 12884901888
                    i64.or
                    local.set $l6
                    i32.const 117
                    local.set $p0
                    i32.const 3
                    local.set $l3
                    br $B12
                  end
                  local.get $l6
                  i64.const -1095216660481
                  i64.and
                  i64.const 8589934592
                  i64.or
                  local.set $l6
                  i32.const 123
                  local.set $p0
                  i32.const 3
                  local.set $l3
                  br $B12
                end
                local.get $l5
                local.get $l6
                i32.wrap_i64
                local.tee $l4
                i32.const 2
                i32.shl
                i32.const 28
                i32.and
                i32.shr_u
                i32.const 15
                i32.and
                local.tee $l3
                i32.const 48
                i32.or
                local.get $l3
                i32.const 87
                i32.add
                local.get $l3
                i32.const 10
                i32.lt_u
                select
                local.set $p0
                block $B21
                  local.get $l4
                  i32.eqz
                  br_if $B21
                  local.get $l6
                  i64.const -1
                  i64.add
                  i64.const 4294967295
                  i64.and
                  local.get $l6
                  i64.const -4294967296
                  i64.and
                  i64.or
                  local.set $l6
                  i32.const 3
                  local.set $l3
                  br $B12
                end
                local.get $l6
                i64.const -1095216660481
                i64.and
                i64.const 4294967296
                i64.or
                local.set $l6
                i32.const 3
                local.set $l3
                br $B12
              end
              local.get $l6
              i64.const -1095216660481
              i64.and
              local.set $l6
              i32.const 125
              local.set $p0
              i32.const 3
              local.set $l3
              br $B12
            end
            local.get $p1
            i32.load offset=24
            i32.const 39
            local.get $p1
            i32.load offset=28
            i32.load offset=16
            call_indirect (type $t3) $T0
            return
          end
          i32.const 0
          local.set $l3
          local.get $l5
          local.set $p0
        end
        local.get $p1
        i32.load offset=24
        local.get $p0
        local.get $p1
        i32.load offset=28
        i32.load offset=16
        call_indirect (type $t3) $T0
        i32.eqz
        br_if $L11
      end
    end
    local.get $l2)
  (func $_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17he40b71e6e495ad7cE (type $t8) (param $p0 i32) (param $p1 i32) (param $p2 i32) (result i32)
    (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32) (local $l9 i32)
    global.get $g0
    i32.const 48
    i32.sub
    local.tee $l3
    global.set $g0
    block $B0
      block $B1
        local.get $p2
        br_if $B1
        i32.const 0
        local.set $l4
        br $B0
      end
      local.get $l3
      i32.const 40
      i32.add
      local.set $l5
      block $B2
        block $B3
          block $B4
            block $B5
              loop $L6
                block $B7
                  local.get $p0
                  i32.load offset=8
                  i32.load8_u
                  i32.eqz
                  br_if $B7
                  local.get $p0
                  i32.load
                  i32.const 1055544
                  i32.const 4
                  local.get $p0
                  i32.load offset=4
                  i32.load offset=12
                  call_indirect (type $t8) $T0
                  br_if $B2
                end
                local.get $l3
                i32.const 10
                i32.store offset=40
                local.get $l3
                i64.const 4294967306
                i64.store offset=32
                local.get $l3
                local.get $p2
                i32.store offset=28
                local.get $l3
                i32.const 0
                i32.store offset=24
                local.get $l3
                local.get $p2
                i32.store offset=20
                local.get $l3
                local.get $p1
                i32.store offset=16
                local.get $l3
                i32.const 8
                i32.add
                i32.const 10
                local.get $p1
                local.get $p2
                call $_ZN4core5slice6memchr6memchr17h244fba075962fc22E
                block $B8
                  block $B9
                    block $B10
                      block $B11
                        local.get $l3
                        i32.load offset=8
                        i32.const 1
                        i32.ne
                        br_if $B11
                        local.get $l3
                        i32.load offset=12
                        local.set $l4
                        loop $L12
                          local.get $l3
                          local.get $l4
                          local.get $l3
                          i32.load offset=24
                          i32.add
                          i32.const 1
                          i32.add
                          local.tee $l4
                          i32.store offset=24
                          block $B13
                            block $B14
                              local.get $l4
                              local.get $l3
                              i32.load offset=36
                              local.tee $l6
                              i32.ge_u
                              br_if $B14
                              local.get $l3
                              i32.load offset=20
                              local.set $l7
                              br $B13
                            end
                            local.get $l3
                            i32.load offset=20
                            local.tee $l7
                            local.get $l4
                            i32.lt_u
                            br_if $B13
                            local.get $l6
                            i32.const 5
                            i32.ge_u
                            br_if $B5
                            local.get $l3
                            i32.load offset=16
                            local.get $l4
                            local.get $l6
                            i32.sub
                            local.tee $l8
                            i32.add
                            local.tee $l9
                            local.get $l5
                            i32.eq
                            br_if $B9
                            local.get $l9
                            local.get $l5
                            local.get $l6
                            call $memcmp
                            i32.eqz
                            br_if $B9
                          end
                          local.get $l3
                          i32.load offset=28
                          local.tee $l9
                          local.get $l4
                          i32.lt_u
                          br_if $B10
                          local.get $l7
                          local.get $l9
                          i32.lt_u
                          br_if $B10
                          local.get $l3
                          local.get $l6
                          local.get $l3
                          i32.const 16
                          i32.add
                          i32.add
                          i32.const 23
                          i32.add
                          i32.load8_u
                          local.get $l3
                          i32.load offset=16
                          local.get $l4
                          i32.add
                          local.get $l9
                          local.get $l4
                          i32.sub
                          call $_ZN4core5slice6memchr6memchr17h244fba075962fc22E
                          local.get $l3
                          i32.load offset=4
                          local.set $l4
                          local.get $l3
                          i32.load
                          i32.const 1
                          i32.eq
                          br_if $L12
                        end
                      end
                      local.get $l3
                      local.get $l3
                      i32.load offset=28
                      i32.store offset=24
                    end
                    local.get $p0
                    i32.load offset=8
                    i32.const 0
                    i32.store8
                    local.get $p2
                    local.set $l4
                    br $B8
                  end
                  local.get $p0
                  i32.load offset=8
                  i32.const 1
                  i32.store8
                  local.get $l8
                  i32.const 1
                  i32.add
                  local.set $l4
                end
                local.get $p0
                i32.load offset=4
                local.set $l9
                local.get $p0
                i32.load
                local.set $l6
                block $B15
                  local.get $l4
                  i32.eqz
                  local.get $p2
                  local.get $l4
                  i32.eq
                  i32.or
                  local.tee $l7
                  br_if $B15
                  local.get $p2
                  local.get $l4
                  i32.le_u
                  br_if $B4
                  local.get $p1
                  local.get $l4
                  i32.add
                  i32.load8_s
                  i32.const -65
                  i32.le_s
                  br_if $B4
                end
                local.get $l6
                local.get $p1
                local.get $l4
                local.get $l9
                i32.load offset=12
                call_indirect (type $t8) $T0
                br_if $B2
                block $B16
                  local.get $l7
                  br_if $B16
                  local.get $p2
                  local.get $l4
                  i32.le_u
                  br_if $B3
                  local.get $p1
                  local.get $l4
                  i32.add
                  i32.load8_s
                  i32.const -65
                  i32.le_s
                  br_if $B3
                end
                local.get $p1
                local.get $l4
                i32.add
                local.set $p1
                local.get $p2
                local.get $l4
                i32.sub
                local.tee $p2
                br_if $L6
              end
              i32.const 0
              local.set $l4
              br $B0
            end
            local.get $l6
            i32.const 4
            call $_ZN4core5slice20slice_index_len_fail17hfc4485e8c33f2d47E
            unreachable
          end
          local.get $p1
          local.get $p2
          i32.const 0
          local.get $l4
          call $_ZN4core3str16slice_error_fail17he3cd070c8cb5f5f5E
          unreachable
        end
        local.get $p1
        local.get $p2
        local.get $l4
        local.get $p2
        call $_ZN4core3str16slice_error_fail17he3cd070c8cb5f5f5E
        unreachable
      end
      i32.const 1
      local.set $l4
    end
    local.get $l3
    i32.const 48
    i32.add
    global.set $g0
    local.get $l4)
  (func $_ZN4core3fmt8builders10DebugTuple5field17hbd38ecaa7052e2cfE (type $t8) (param $p0 i32) (param $p1 i32) (param $p2 i32) (result i32)
    (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i64) (local $l8 i64) (local $l9 i64) (local $l10 i64) (local $l11 i64)
    global.get $g0
    i32.const 80
    i32.sub
    local.tee $l3
    global.set $g0
    i32.const 1
    local.set $l4
    block $B0
      local.get $p0
      i32.load8_u offset=8
      br_if $B0
      local.get $p0
      i32.load offset=4
      local.set $l5
      block $B1
        local.get $p0
        i32.load
        local.tee $l6
        i32.load8_u
        i32.const 4
        i32.and
        br_if $B1
        i32.const 1
        local.set $l4
        local.get $l6
        i32.load offset=24
        i32.const 1055553
        i32.const 1055563
        local.get $l5
        select
        i32.const 2
        i32.const 1
        local.get $l5
        select
        local.get $l6
        i32.const 28
        i32.add
        i32.load
        i32.load offset=12
        call_indirect (type $t8) $T0
        br_if $B0
        local.get $p1
        local.get $p0
        i32.load
        local.get $p2
        i32.load offset=12
        call_indirect (type $t3) $T0
        local.set $l4
        br $B0
      end
      block $B2
        local.get $l5
        br_if $B2
        i32.const 1
        local.set $l4
        local.get $l6
        i32.load offset=24
        i32.const 1055561
        i32.const 2
        local.get $l6
        i32.const 28
        i32.add
        i32.load
        i32.load offset=12
        call_indirect (type $t8) $T0
        br_if $B0
        local.get $p0
        i32.load
        local.set $l6
      end
      i32.const 1
      local.set $l4
      local.get $l3
      i32.const 1
      i32.store8 offset=23
      local.get $l3
      local.get $l3
      i32.const 23
      i32.add
      i32.store offset=16
      local.get $l6
      i64.load offset=8 align=4
      local.set $l7
      local.get $l6
      i64.load offset=16 align=4
      local.set $l8
      local.get $l3
      i32.const 52
      i32.add
      i32.const 1055520
      i32.store
      local.get $l3
      local.get $l6
      i64.load offset=24 align=4
      i64.store offset=8
      local.get $l6
      i64.load offset=32 align=4
      local.set $l9
      local.get $l6
      i64.load offset=40 align=4
      local.set $l10
      local.get $l3
      local.get $l6
      i32.load8_u offset=48
      i32.store8 offset=72
      local.get $l6
      i64.load align=4
      local.set $l11
      local.get $l3
      local.get $l10
      i64.store offset=64
      local.get $l3
      local.get $l9
      i64.store offset=56
      local.get $l3
      local.get $l8
      i64.store offset=40
      local.get $l3
      local.get $l7
      i64.store offset=32
      local.get $l3
      local.get $l11
      i64.store offset=24
      local.get $l3
      local.get $l3
      i32.const 8
      i32.add
      i32.store offset=48
      local.get $p1
      local.get $l3
      i32.const 24
      i32.add
      local.get $p2
      i32.load offset=12
      call_indirect (type $t3) $T0
      br_if $B0
      local.get $l3
      i32.load offset=48
      i32.const 1055551
      i32.const 2
      local.get $l3
      i32.load offset=52
      i32.load offset=12
      call_indirect (type $t8) $T0
      local.set $l4
    end
    local.get $p0
    local.get $l4
    i32.store8 offset=8
    local.get $p0
    local.get $p0
    i32.load offset=4
    i32.const 1
    i32.add
    i32.store offset=4
    local.get $l3
    i32.const 80
    i32.add
    global.set $g0
    local.get $p0)
  (func $_ZN4core3fmt8builders10DebugTuple6finish17ha689661cc00c12a4E (type $t7) (param $p0 i32) (result i32)
    (local $l1 i32) (local $l2 i32) (local $l3 i32)
    local.get $p0
    i32.load8_u offset=8
    local.set $l1
    block $B0
      local.get $p0
      i32.load offset=4
      local.tee $l2
      i32.eqz
      br_if $B0
      local.get $l1
      i32.const 255
      i32.and
      local.set $l3
      i32.const 1
      local.set $l1
      block $B1
        local.get $l3
        br_if $B1
        block $B2
          local.get $l2
          i32.const 1
          i32.ne
          br_if $B2
          local.get $p0
          i32.load8_u offset=9
          i32.eqz
          br_if $B2
          local.get $p0
          i32.load
          local.tee $l3
          i32.load8_u
          i32.const 4
          i32.and
          br_if $B2
          i32.const 1
          local.set $l1
          local.get $l3
          i32.load offset=24
          i32.const 1055564
          i32.const 1
          local.get $l3
          i32.const 28
          i32.add
          i32.load
          i32.load offset=12
          call_indirect (type $t8) $T0
          br_if $B1
        end
        local.get $p0
        i32.load
        local.tee $l1
        i32.load offset=24
        i32.const 1054968
        i32.const 1
        local.get $l1
        i32.const 28
        i32.add
        i32.load
        i32.load offset=12
        call_indirect (type $t8) $T0
        local.set $l1
      end
      local.get $p0
      local.get $l1
      i32.store8 offset=8
    end
    local.get $l1
    i32.const 255
    i32.and
    i32.const 0
    i32.ne)
  (func $_ZN4core3fmt8builders8DebugSet5entry17hf39c7622bed830d6E (type $t8) (param $p0 i32) (param $p1 i32) (param $p2 i32) (result i32)
    local.get $p0
    local.get $p1
    local.get $p2
    call $_ZN4core3fmt8builders10DebugInner5entry17h4245dad62c1db899E
    local.get $p0)
  (func $_ZN4core3fmt8builders9DebugList6finish17h8425cc974c8800a1E (type $t7) (param $p0 i32) (result i32)
    (local $l1 i32)
    i32.const 1
    local.set $l1
    block $B0
      local.get $p0
      i32.load8_u offset=4
      br_if $B0
      local.get $p0
      i32.load
      local.tee $p0
      i32.load offset=24
      i32.const 1055584
      i32.const 1
      local.get $p0
      i32.const 28
      i32.add
      i32.load
      i32.load offset=12
      call_indirect (type $t8) $T0
      local.set $l1
    end
    local.get $l1)
  (func $_ZN4core3fmt5Write10write_char17h0a40abd75ed3683dE (type $t3) (param $p0 i32) (param $p1 i32) (result i32)
    (local $l2 i32)
    global.get $g0
    i32.const 16
    i32.sub
    local.tee $l2
    global.set $g0
    local.get $l2
    i32.const 0
    i32.store offset=12
    block $B0
      block $B1
        block $B2
          local.get $p1
          i32.const 128
          i32.lt_u
          br_if $B2
          local.get $p1
          i32.const 2048
          i32.lt_u
          br_if $B1
          block $B3
            local.get $p1
            i32.const 65536
            i32.ge_u
            br_if $B3
            local.get $l2
            local.get $p1
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=14
            local.get $l2
            local.get $p1
            i32.const 6
            i32.shr_u
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=13
            local.get $l2
            local.get $p1
            i32.const 12
            i32.shr_u
            i32.const 15
            i32.and
            i32.const 224
            i32.or
            i32.store8 offset=12
            i32.const 3
            local.set $p1
            br $B0
          end
          local.get $l2
          local.get $p1
          i32.const 63
          i32.and
          i32.const 128
          i32.or
          i32.store8 offset=15
          local.get $l2
          local.get $p1
          i32.const 18
          i32.shr_u
          i32.const 240
          i32.or
          i32.store8 offset=12
          local.get $l2
          local.get $p1
          i32.const 6
          i32.shr_u
          i32.const 63
          i32.and
          i32.const 128
          i32.or
          i32.store8 offset=14
          local.get $l2
          local.get $p1
          i32.const 12
          i32.shr_u
          i32.const 63
          i32.and
          i32.const 128
          i32.or
          i32.store8 offset=13
          i32.const 4
          local.set $p1
          br $B0
        end
        local.get $l2
        local.get $p1
        i32.store8 offset=12
        i32.const 1
        local.set $p1
        br $B0
      end
      local.get $l2
      local.get $p1
      i32.const 63
      i32.and
      i32.const 128
      i32.or
      i32.store8 offset=13
      local.get $l2
      local.get $p1
      i32.const 6
      i32.shr_u
      i32.const 31
      i32.and
      i32.const 192
      i32.or
      i32.store8 offset=12
      i32.const 2
      local.set $p1
    end
    local.get $p0
    local.get $l2
    i32.const 12
    i32.add
    local.get $p1
    call $_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17he40b71e6e495ad7cE
    local.set $p1
    local.get $l2
    i32.const 16
    i32.add
    global.set $g0
    local.get $p1)
  (func $_ZN4core3fmt5Write9write_fmt17hbfa684fcf67a9237E (type $t3) (param $p0 i32) (param $p1 i32) (result i32)
    (local $l2 i32)
    global.get $g0
    i32.const 32
    i32.sub
    local.tee $l2
    global.set $g0
    local.get $l2
    local.get $p0
    i32.store offset=4
    local.get $l2
    i32.const 8
    i32.add
    i32.const 16
    i32.add
    local.get $p1
    i32.const 16
    i32.add
    i64.load align=4
    i64.store
    local.get $l2
    i32.const 8
    i32.add
    i32.const 8
    i32.add
    local.get $p1
    i32.const 8
    i32.add
    i64.load align=4
    i64.store
    local.get $l2
    local.get $p1
    i64.load align=4
    i64.store offset=8
    local.get $l2
    i32.const 4
    i32.add
    i32.const 1055788
    local.get $l2
    i32.const 8
    i32.add
    call $_ZN4core3fmt5write17h8876819fabc0b258E
    local.set $p1
    local.get $l2
    i32.const 32
    i32.add
    global.set $g0
    local.get $p1)
  (func $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h071370f55648a353E (type $t8) (param $p0 i32) (param $p1 i32) (param $p2 i32) (result i32)
    local.get $p0
    i32.load
    local.get $p1
    local.get $p2
    call $_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17he40b71e6e495ad7cE)
  (func $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17hca1d204488cb89c9E (type $t3) (param $p0 i32) (param $p1 i32) (result i32)
    local.get $p0
    i32.load
    local.get $p1
    call $_ZN4core3fmt5Write10write_char17h0a40abd75ed3683dE)
  (func $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_fmt17h297d40b2f7ee4bd8E (type $t3) (param $p0 i32) (param $p1 i32) (result i32)
    (local $l2 i32)
    global.get $g0
    i32.const 32
    i32.sub
    local.tee $l2
    global.set $g0
    local.get $l2
    local.get $p0
    i32.load
    i32.store offset=4
    local.get $l2
    i32.const 8
    i32.add
    i32.const 16
    i32.add
    local.get $p1
    i32.const 16
    i32.add
    i64.load align=4
    i64.store
    local.get $l2
    i32.const 8
    i32.add
    i32.const 8
    i32.add
    local.get $p1
    i32.const 8
    i32.add
    i64.load align=4
    i64.store
    local.get $l2
    local.get $p1
    i64.load align=4
    i64.store offset=8
    local.get $l2
    i32.const 4
    i32.add
    i32.const 1055788
    local.get $l2
    i32.const 8
    i32.add
    call $_ZN4core3fmt5write17h8876819fabc0b258E
    local.set $p1
    local.get $l2
    i32.const 32
    i32.add
    global.set $g0
    local.get $p1)
  (func $_ZN4core3fmt10ArgumentV110show_usize17h659f2e7b81f60987E (type $t3) (param $p0 i32) (param $p1 i32) (result i32)
    local.get $p0
    i64.load32_u
    i32.const 1
    local.get $p1
    call $_ZN4core3fmt3num3imp7fmt_u6417h042ebedf17751bd0E)
  (func $_ZN4core3fmt3num3imp7fmt_u6417h042ebedf17751bd0E (type $t13) (param $p0 i64) (param $p1 i32) (param $p2 i32) (result i32)
    (local $l3 i32) (local $l4 i32) (local $l5 i64) (local $l6 i32) (local $l7 i32) (local $l8 i32)
    global.get $g0
    i32.const 48
    i32.sub
    local.tee $l3
    global.set $g0
    i32.const 39
    local.set $l4
    block $B0
      block $B1
        local.get $p0
        i64.const 10000
        i64.ge_u
        br_if $B1
        local.get $p0
        local.set $l5
        br $B0
      end
      i32.const 39
      local.set $l4
      loop $L2
        local.get $l3
        i32.const 9
        i32.add
        local.get $l4
        i32.add
        local.tee $l6
        i32.const -4
        i32.add
        local.get $p0
        local.get $p0
        i64.const 10000
        i64.div_u
        local.tee $l5
        i64.const 10000
        i64.mul
        i64.sub
        i32.wrap_i64
        local.tee $l7
        i32.const 65535
        i32.and
        i32.const 100
        i32.div_u
        local.tee $l8
        i32.const 1
        i32.shl
        i32.const 1055587
        i32.add
        i32.load16_u align=1
        i32.store16 align=1
        local.get $l6
        i32.const -2
        i32.add
        local.get $l7
        local.get $l8
        i32.const 100
        i32.mul
        i32.sub
        i32.const 65535
        i32.and
        i32.const 1
        i32.shl
        i32.const 1055587
        i32.add
        i32.load16_u align=1
        i32.store16 align=1
        local.get $l4
        i32.const -4
        i32.add
        local.set $l4
        local.get $p0
        i64.const 99999999
        i64.gt_u
        local.set $l6
        local.get $l5
        local.set $p0
        local.get $l6
        br_if $L2
      end
    end
    block $B3
      local.get $l5
      i32.wrap_i64
      local.tee $l6
      i32.const 99
      i32.le_s
      br_if $B3
      local.get $l3
      i32.const 9
      i32.add
      local.get $l4
      i32.const -2
      i32.add
      local.tee $l4
      i32.add
      local.get $l5
      i32.wrap_i64
      local.tee $l6
      local.get $l6
      i32.const 65535
      i32.and
      i32.const 100
      i32.div_u
      local.tee $l6
      i32.const 100
      i32.mul
      i32.sub
      i32.const 65535
      i32.and
      i32.const 1
      i32.shl
      i32.const 1055587
      i32.add
      i32.load16_u align=1
      i32.store16 align=1
    end
    block $B4
      block $B5
        local.get $l6
        i32.const 10
        i32.lt_s
        br_if $B5
        local.get $l3
        i32.const 9
        i32.add
        local.get $l4
        i32.const -2
        i32.add
        local.tee $l4
        i32.add
        local.get $l6
        i32.const 1
        i32.shl
        i32.const 1055587
        i32.add
        i32.load16_u align=1
        i32.store16 align=1
        br $B4
      end
      local.get $l3
      i32.const 9
      i32.add
      local.get $l4
      i32.const -1
      i32.add
      local.tee $l4
      i32.add
      local.get $l6
      i32.const 48
      i32.add
      i32.store8
    end
    local.get $p2
    local.get $p1
    i32.const 1054352
    i32.const 0
    local.get $l3
    i32.const 9
    i32.add
    local.get $l4
    i32.add
    i32.const 39
    local.get $l4
    i32.sub
    call $_ZN4core3fmt9Formatter12pad_integral17hfef5805f826bffbfE
    local.set $l4
    local.get $l3
    i32.const 48
    i32.add
    global.set $g0
    local.get $l4)
  (func $_ZN59_$LT$core..fmt..Arguments$u20$as$u20$core..fmt..Display$GT$3fmt17h1d4c2ae0c05a3698E (type $t3) (param $p0 i32) (param $p1 i32) (result i32)
    (local $l2 i32) (local $l3 i32)
    global.get $g0
    i32.const 32
    i32.sub
    local.tee $l2
    global.set $g0
    local.get $p1
    i32.const 28
    i32.add
    i32.load
    local.set $l3
    local.get $p1
    i32.load offset=24
    local.set $p1
    local.get $l2
    i32.const 8
    i32.add
    i32.const 16
    i32.add
    local.get $p0
    i32.const 16
    i32.add
    i64.load align=4
    i64.store
    local.get $l2
    i32.const 8
    i32.add
    i32.const 8
    i32.add
    local.get $p0
    i32.const 8
    i32.add
    i64.load align=4
    i64.store
    local.get $l2
    local.get $p0
    i64.load align=4
    i64.store offset=8
    local.get $p1
    local.get $l3
    local.get $l2
    i32.const 8
    i32.add
    call $_ZN4core3fmt5write17h8876819fabc0b258E
    local.set $p0
    local.get $l2
    i32.const 32
    i32.add
    global.set $g0
    local.get $p0)
  (func $_ZN4core3fmt9Formatter12pad_integral17hfef5805f826bffbfE (type $t14) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32) (param $p4 i32) (param $p5 i32) (result i32)
    (local $l6 i32) (local $l7 i32) (local $l8 i32) (local $l9 i32) (local $l10 i32)
    block $B0
      block $B1
        local.get $p1
        i32.eqz
        br_if $B1
        i32.const 43
        i32.const 1114112
        local.get $p0
        i32.load
        local.tee $l6
        i32.const 1
        i32.and
        local.tee $p1
        select
        local.set $l7
        local.get $p1
        local.get $p5
        i32.add
        local.set $l8
        br $B0
      end
      local.get $p5
      i32.const 1
      i32.add
      local.set $l8
      local.get $p0
      i32.load
      local.set $l6
      i32.const 45
      local.set $l7
    end
    block $B2
      block $B3
        local.get $l6
        i32.const 4
        i32.and
        br_if $B3
        i32.const 0
        local.set $p2
        br $B2
      end
      i32.const 0
      local.set $l9
      block $B4
        local.get $p3
        i32.eqz
        br_if $B4
        local.get $p3
        local.set $l10
        local.get $p2
        local.set $p1
        loop $L5
          local.get $l9
          local.get $p1
          i32.load8_u
          i32.const 192
          i32.and
          i32.const 128
          i32.eq
          i32.add
          local.set $l9
          local.get $p1
          i32.const 1
          i32.add
          local.set $p1
          local.get $l10
          i32.const -1
          i32.add
          local.tee $l10
          br_if $L5
        end
      end
      local.get $l8
      local.get $p3
      i32.add
      local.get $l9
      i32.sub
      local.set $l8
    end
    i32.const 1
    local.set $p1
    block $B6
      block $B7
        local.get $p0
        i32.load offset=8
        i32.const 1
        i32.eq
        br_if $B7
        local.get $p0
        local.get $l7
        local.get $p2
        local.get $p3
        call $_ZN4core3fmt9Formatter12pad_integral12write_prefix17h7320e38828a59752E
        br_if $B6
        local.get $p0
        i32.load offset=24
        local.get $p4
        local.get $p5
        local.get $p0
        i32.const 28
        i32.add
        i32.load
        i32.load offset=12
        call_indirect (type $t8) $T0
        return
      end
      block $B8
        local.get $p0
        i32.const 12
        i32.add
        i32.load
        local.tee $l9
        local.get $l8
        i32.gt_u
        br_if $B8
        local.get $p0
        local.get $l7
        local.get $p2
        local.get $p3
        call $_ZN4core3fmt9Formatter12pad_integral12write_prefix17h7320e38828a59752E
        br_if $B6
        local.get $p0
        i32.load offset=24
        local.get $p4
        local.get $p5
        local.get $p0
        i32.const 28
        i32.add
        i32.load
        i32.load offset=12
        call_indirect (type $t8) $T0
        return
      end
      block $B9
        block $B10
          local.get $l6
          i32.const 8
          i32.and
          br_if $B10
          i32.const 0
          local.set $p1
          local.get $l9
          local.get $l8
          i32.sub
          local.tee $l9
          local.set $l8
          block $B11
            block $B12
              block $B13
                i32.const 1
                local.get $p0
                i32.load8_u offset=48
                local.tee $l10
                local.get $l10
                i32.const 3
                i32.eq
                select
                br_table $B11 $B12 $B13 $B12 $B11
              end
              local.get $l9
              i32.const 1
              i32.shr_u
              local.set $p1
              local.get $l9
              i32.const 1
              i32.add
              i32.const 1
              i32.shr_u
              local.set $l8
              br $B11
            end
            i32.const 0
            local.set $l8
            local.get $l9
            local.set $p1
          end
          local.get $p1
          i32.const 1
          i32.add
          local.set $p1
          loop $L14
            local.get $p1
            i32.const -1
            i32.add
            local.tee $p1
            i32.eqz
            br_if $B9
            local.get $p0
            i32.load offset=24
            local.get $p0
            i32.load offset=4
            local.get $p0
            i32.load offset=28
            i32.load offset=16
            call_indirect (type $t3) $T0
            i32.eqz
            br_if $L14
          end
          i32.const 1
          return
        end
        i32.const 1
        local.set $p1
        local.get $p0
        i32.const 1
        i32.store8 offset=48
        local.get $p0
        i32.const 48
        i32.store offset=4
        local.get $p0
        local.get $l7
        local.get $p2
        local.get $p3
        call $_ZN4core3fmt9Formatter12pad_integral12write_prefix17h7320e38828a59752E
        br_if $B6
        i32.const 0
        local.set $p1
        local.get $l9
        local.get $l8
        i32.sub
        local.tee $l10
        local.set $p3
        block $B15
          block $B16
            block $B17
              i32.const 1
              local.get $p0
              i32.load8_u offset=48
              local.tee $l9
              local.get $l9
              i32.const 3
              i32.eq
              select
              br_table $B15 $B16 $B17 $B16 $B15
            end
            local.get $l10
            i32.const 1
            i32.shr_u
            local.set $p1
            local.get $l10
            i32.const 1
            i32.add
            i32.const 1
            i32.shr_u
            local.set $p3
            br $B15
          end
          i32.const 0
          local.set $p3
          local.get $l10
          local.set $p1
        end
        local.get $p1
        i32.const 1
        i32.add
        local.set $p1
        block $B18
          loop $L19
            local.get $p1
            i32.const -1
            i32.add
            local.tee $p1
            i32.eqz
            br_if $B18
            local.get $p0
            i32.load offset=24
            local.get $p0
            i32.load offset=4
            local.get $p0
            i32.load offset=28
            i32.load offset=16
            call_indirect (type $t3) $T0
            i32.eqz
            br_if $L19
          end
          i32.const 1
          return
        end
        local.get $p0
        i32.load offset=4
        local.set $l10
        i32.const 1
        local.set $p1
        local.get $p0
        i32.load offset=24
        local.get $p4
        local.get $p5
        local.get $p0
        i32.load offset=28
        i32.load offset=12
        call_indirect (type $t8) $T0
        br_if $B6
        local.get $p3
        i32.const 1
        i32.add
        local.set $l9
        local.get $p0
        i32.load offset=28
        local.set $p3
        local.get $p0
        i32.load offset=24
        local.set $p0
        loop $L20
          block $B21
            local.get $l9
            i32.const -1
            i32.add
            local.tee $l9
            br_if $B21
            i32.const 0
            return
          end
          i32.const 1
          local.set $p1
          local.get $p0
          local.get $l10
          local.get $p3
          i32.load offset=16
          call_indirect (type $t3) $T0
          i32.eqz
          br_if $L20
          br $B6
        end
      end
      local.get $p0
      i32.load offset=4
      local.set $l10
      i32.const 1
      local.set $p1
      local.get $p0
      local.get $l7
      local.get $p2
      local.get $p3
      call $_ZN4core3fmt9Formatter12pad_integral12write_prefix17h7320e38828a59752E
      br_if $B6
      local.get $p0
      i32.load offset=24
      local.get $p4
      local.get $p5
      local.get $p0
      i32.load offset=28
      i32.load offset=12
      call_indirect (type $t8) $T0
      br_if $B6
      local.get $l8
      i32.const 1
      i32.add
      local.set $l9
      local.get $p0
      i32.load offset=28
      local.set $p3
      local.get $p0
      i32.load offset=24
      local.set $p0
      loop $L22
        block $B23
          local.get $l9
          i32.const -1
          i32.add
          local.tee $l9
          br_if $B23
          i32.const 0
          return
        end
        i32.const 1
        local.set $p1
        local.get $p0
        local.get $l10
        local.get $p3
        i32.load offset=16
        call_indirect (type $t3) $T0
        i32.eqz
        br_if $L22
      end
    end
    local.get $p1)
  (func $_ZN4core3fmt9Formatter12pad_integral12write_prefix17h7320e38828a59752E (type $t9) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32) (result i32)
    (local $l4 i32)
    block $B0
      block $B1
        local.get $p1
        i32.const 1114112
        i32.eq
        br_if $B1
        i32.const 1
        local.set $l4
        local.get $p0
        i32.load offset=24
        local.get $p1
        local.get $p0
        i32.const 28
        i32.add
        i32.load
        i32.load offset=16
        call_indirect (type $t3) $T0
        br_if $B0
      end
      block $B2
        local.get $p2
        br_if $B2
        i32.const 0
        return
      end
      local.get $p0
      i32.load offset=24
      local.get $p2
      local.get $p3
      local.get $p0
      i32.const 28
      i32.add
      i32.load
      i32.load offset=12
      call_indirect (type $t8) $T0
      local.set $l4
    end
    local.get $l4)
  (func $_ZN4core3fmt9Formatter9write_str17haa5886101a13330aE (type $t8) (param $p0 i32) (param $p1 i32) (param $p2 i32) (result i32)
    local.get $p0
    i32.load offset=24
    local.get $p1
    local.get $p2
    local.get $p0
    i32.const 28
    i32.add
    i32.load
    i32.load offset=12
    call_indirect (type $t8) $T0)
  (func $_ZN4core3fmt9Formatter9write_fmt17h703d37c837f1e686E (type $t3) (param $p0 i32) (param $p1 i32) (result i32)
    (local $l2 i32) (local $l3 i32)
    global.get $g0
    i32.const 32
    i32.sub
    local.tee $l2
    global.set $g0
    local.get $p0
    i32.const 28
    i32.add
    i32.load
    local.set $l3
    local.get $p0
    i32.load offset=24
    local.set $p0
    local.get $l2
    i32.const 8
    i32.add
    i32.const 16
    i32.add
    local.get $p1
    i32.const 16
    i32.add
    i64.load align=4
    i64.store
    local.get $l2
    i32.const 8
    i32.add
    i32.const 8
    i32.add
    local.get $p1
    i32.const 8
    i32.add
    i64.load align=4
    i64.store
    local.get $l2
    local.get $p1
    i64.load align=4
    i64.store offset=8
    local.get $p0
    local.get $l3
    local.get $l2
    i32.const 8
    i32.add
    call $_ZN4core3fmt5write17h8876819fabc0b258E
    local.set $p1
    local.get $l2
    i32.const 32
    i32.add
    global.set $g0
    local.get $p1)
  (func $_ZN4core3fmt9Formatter9alternate17haad4b8880f5e5b7bE (type $t7) (param $p0 i32) (result i32)
    local.get $p0
    i32.load8_u
    i32.const 4
    i32.and
    i32.const 2
    i32.shr_u)
  (func $_ZN4core3fmt9Formatter15debug_lower_hex17ha70a7ac18ca965afE (type $t7) (param $p0 i32) (result i32)
    local.get $p0
    i32.load8_u
    i32.const 16
    i32.and
    i32.const 4
    i32.shr_u)
  (func $_ZN4core3fmt9Formatter15debug_upper_hex17h5b80b9b67b737f51E (type $t7) (param $p0 i32) (result i32)
    local.get $p0
    i32.load8_u
    i32.const 32
    i32.and
    i32.const 5
    i32.shr_u)
  (func $_ZN4core3fmt9Formatter11debug_tuple17h537225ecd55cb5d7E (type $t4) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32)
    local.get $p0
    local.get $p1
    i32.load offset=24
    local.get $p2
    local.get $p3
    local.get $p1
    i32.const 28
    i32.add
    i32.load
    i32.load offset=12
    call_indirect (type $t8) $T0
    i32.store8 offset=8
    local.get $p0
    local.get $p1
    i32.store
    local.get $p0
    local.get $p3
    i32.eqz
    i32.store8 offset=9
    local.get $p0
    i32.const 0
    i32.store offset=4)
  (func $_ZN4core3fmt9Formatter10debug_list17h3e245a8d65529e2cE (type $t5) (param $p0 i32) (param $p1 i32)
    (local $l2 i32)
    local.get $p1
    i32.load offset=24
    i32.const 1055566
    i32.const 1
    local.get $p1
    i32.const 28
    i32.add
    i32.load
    i32.load offset=12
    call_indirect (type $t8) $T0
    local.set $l2
    local.get $p0
    i32.const 0
    i32.store8 offset=5
    local.get $p0
    local.get $l2
    i32.store8 offset=4
    local.get $p0
    local.get $p1
    i32.store)
  (func $_ZN57_$LT$core..fmt..Formatter$u20$as$u20$core..fmt..Write$GT$10write_char17hd0c803174082e12eE (type $t3) (param $p0 i32) (param $p1 i32) (result i32)
    local.get $p0
    i32.load offset=24
    local.get $p1
    local.get $p0
    i32.const 28
    i32.add
    i32.load
    i32.load offset=16
    call_indirect (type $t3) $T0)
  (func $_ZN40_$LT$str$u20$as$u20$core..fmt..Debug$GT$3fmt17h00c99ec58e8a423cE (type $t8) (param $p0 i32) (param $p1 i32) (param $p2 i32) (result i32)
    (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32) (local $l9 i32) (local $l10 i32) (local $l11 i32) (local $l12 i32) (local $l13 i32) (local $l14 i32) (local $l15 i64)
    global.get $g0
    i32.const 32
    i32.sub
    local.tee $l3
    global.set $g0
    i32.const 1
    local.set $l4
    block $B0
      block $B1
        local.get $p2
        i32.load offset=24
        i32.const 34
        local.get $p2
        i32.const 28
        i32.add
        i32.load
        i32.load offset=16
        call_indirect (type $t3) $T0
        br_if $B1
        block $B2
          block $B3
            local.get $p1
            br_if $B3
            i32.const 0
            local.set $l5
            br $B2
          end
          local.get $p0
          local.get $p1
          i32.add
          local.set $l6
          i32.const 0
          local.set $l5
          local.get $p0
          local.set $l7
          local.get $p0
          local.set $l8
          i32.const 0
          local.set $l9
          block $B4
            loop $L5
              local.get $l7
              i32.const 1
              i32.add
              local.set $l10
              block $B6
                block $B7
                  block $B8
                    local.get $l7
                    i32.load8_s
                    local.tee $l11
                    i32.const -1
                    i32.gt_s
                    br_if $B8
                    block $B9
                      block $B10
                        local.get $l10
                        local.get $l6
                        i32.ne
                        br_if $B10
                        i32.const 0
                        local.set $l12
                        local.get $l6
                        local.set $l7
                        br $B9
                      end
                      local.get $l7
                      i32.load8_u offset=1
                      i32.const 63
                      i32.and
                      local.set $l12
                      local.get $l7
                      i32.const 2
                      i32.add
                      local.tee $l10
                      local.set $l7
                    end
                    local.get $l11
                    i32.const 31
                    i32.and
                    local.set $l4
                    block $B11
                      local.get $l11
                      i32.const 255
                      i32.and
                      local.tee $l11
                      i32.const 223
                      i32.gt_u
                      br_if $B11
                      local.get $l12
                      local.get $l4
                      i32.const 6
                      i32.shl
                      i32.or
                      local.set $l12
                      br $B7
                    end
                    block $B12
                      block $B13
                        local.get $l7
                        local.get $l6
                        i32.ne
                        br_if $B13
                        i32.const 0
                        local.set $l13
                        local.get $l6
                        local.set $l14
                        br $B12
                      end
                      local.get $l7
                      i32.load8_u
                      i32.const 63
                      i32.and
                      local.set $l13
                      local.get $l7
                      i32.const 1
                      i32.add
                      local.tee $l10
                      local.set $l14
                    end
                    local.get $l13
                    local.get $l12
                    i32.const 6
                    i32.shl
                    i32.or
                    local.set $l12
                    block $B14
                      local.get $l11
                      i32.const 240
                      i32.ge_u
                      br_if $B14
                      local.get $l12
                      local.get $l4
                      i32.const 12
                      i32.shl
                      i32.or
                      local.set $l12
                      br $B7
                    end
                    block $B15
                      block $B16
                        local.get $l14
                        local.get $l6
                        i32.ne
                        br_if $B16
                        i32.const 0
                        local.set $l11
                        local.get $l10
                        local.set $l7
                        br $B15
                      end
                      local.get $l14
                      i32.const 1
                      i32.add
                      local.set $l7
                      local.get $l14
                      i32.load8_u
                      i32.const 63
                      i32.and
                      local.set $l11
                    end
                    local.get $l12
                    i32.const 6
                    i32.shl
                    local.get $l4
                    i32.const 18
                    i32.shl
                    i32.const 1835008
                    i32.and
                    i32.or
                    local.get $l11
                    i32.or
                    local.tee $l12
                    i32.const 1114112
                    i32.ne
                    br_if $B6
                    br $B4
                  end
                  local.get $l11
                  i32.const 255
                  i32.and
                  local.set $l12
                end
                local.get $l10
                local.set $l7
              end
              i32.const 2
              local.set $l10
              block $B17
                block $B18
                  block $B19
                    block $B20
                      block $B21
                        block $B22
                          local.get $l12
                          i32.const -9
                          i32.add
                          local.tee $l11
                          i32.const 30
                          i32.le_u
                          br_if $B22
                          local.get $l12
                          i32.const 92
                          i32.ne
                          br_if $B21
                          br $B20
                        end
                        i32.const 116
                        local.set $l14
                        block $B23
                          block $B24
                            local.get $l11
                            br_table $B18 $B23 $B21 $B21 $B24 $B21 $B21 $B21 $B21 $B21 $B21 $B21 $B21 $B21 $B21 $B21 $B21 $B21 $B21 $B21 $B21 $B21 $B21 $B21 $B21 $B20 $B21 $B21 $B21 $B21 $B20 $B18
                          end
                          i32.const 114
                          local.set $l14
                          br $B18
                        end
                        i32.const 110
                        local.set $l14
                        br $B18
                      end
                      block $B25
                        i32.const 1058888
                        local.get $l12
                        call $_ZN4core7unicode9bool_trie8BoolTrie6lookup17h84f73bedeaa3b078E
                        br_if $B25
                        local.get $l12
                        call $_ZN4core7unicode9printable12is_printable17hed06e069218dc178E
                        br_if $B17
                      end
                      local.get $l12
                      i32.const 1
                      i32.or
                      i32.clz
                      i32.const 2
                      i32.shr_u
                      i32.const 7
                      i32.xor
                      i64.extend_i32_u
                      i64.const 21474836480
                      i64.or
                      local.set $l15
                      i32.const 3
                      local.set $l10
                      br $B19
                    end
                  end
                  local.get $l12
                  local.set $l14
                end
                local.get $l3
                local.get $p1
                i32.store offset=4
                local.get $l3
                local.get $p0
                i32.store
                local.get $l3
                local.get $l5
                i32.store offset=8
                local.get $l3
                local.get $l9
                i32.store offset=12
                block $B26
                  block $B27
                    local.get $l9
                    local.get $l5
                    i32.lt_u
                    br_if $B27
                    block $B28
                      local.get $l5
                      i32.eqz
                      br_if $B28
                      local.get $l5
                      local.get $p1
                      i32.eq
                      br_if $B28
                      local.get $l5
                      local.get $p1
                      i32.ge_u
                      br_if $B27
                      local.get $p0
                      local.get $l5
                      i32.add
                      i32.load8_s
                      i32.const -65
                      i32.le_s
                      br_if $B27
                    end
                    block $B29
                      local.get $l9
                      i32.eqz
                      br_if $B29
                      local.get $l9
                      local.get $p1
                      i32.eq
                      br_if $B29
                      local.get $l9
                      local.get $p1
                      i32.ge_u
                      br_if $B27
                      local.get $p0
                      local.get $l9
                      i32.add
                      i32.load8_s
                      i32.const -65
                      i32.le_s
                      br_if $B27
                    end
                    local.get $p2
                    i32.load offset=24
                    local.get $p0
                    local.get $l5
                    i32.add
                    local.get $l9
                    local.get $l5
                    i32.sub
                    local.get $p2
                    i32.load offset=28
                    i32.load offset=12
                    call_indirect (type $t8) $T0
                    i32.eqz
                    br_if $B26
                    i32.const 1
                    local.set $l4
                    br $B1
                  end
                  local.get $l3
                  local.get $l3
                  i32.const 12
                  i32.add
                  i32.store offset=24
                  local.get $l3
                  local.get $l3
                  i32.const 8
                  i32.add
                  i32.store offset=20
                  local.get $l3
                  local.get $l3
                  i32.store offset=16
                  local.get $l3
                  i32.const 16
                  i32.add
                  call $_ZN4core3str6traits101_$LT$impl$u20$core..slice..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$5index28_$u7b$$u7b$closure$u7d$$u7d$17he28276d81535378cE
                  unreachable
                end
                loop $L30
                  local.get $l10
                  local.set $l11
                  i32.const 1
                  local.set $l4
                  i32.const 92
                  local.set $l5
                  i32.const 1
                  local.set $l10
                  block $B31
                    block $B32
                      block $B33
                        block $B34
                          block $B35
                            block $B36
                              local.get $l11
                              br_table $B34 $B35 $B31 $B36 $B34
                            end
                            block $B37
                              block $B38
                                block $B39
                                  block $B40
                                    local.get $l15
                                    i64.const 32
                                    i64.shr_u
                                    i32.wrap_i64
                                    i32.const 255
                                    i32.and
                                    br_table $B34 $B37 $B38 $B39 $B40 $B33 $B34
                                  end
                                  local.get $l15
                                  i64.const -1095216660481
                                  i64.and
                                  i64.const 12884901888
                                  i64.or
                                  local.set $l15
                                  i32.const 3
                                  local.set $l10
                                  i32.const 117
                                  local.set $l5
                                  br $B31
                                end
                                local.get $l15
                                i64.const -1095216660481
                                i64.and
                                i64.const 8589934592
                                i64.or
                                local.set $l15
                                i32.const 3
                                local.set $l10
                                i32.const 123
                                local.set $l5
                                br $B31
                              end
                              local.get $l14
                              local.get $l15
                              i32.wrap_i64
                              local.tee $l11
                              i32.const 2
                              i32.shl
                              i32.const 28
                              i32.and
                              i32.shr_u
                              i32.const 15
                              i32.and
                              local.tee $l10
                              i32.const 48
                              i32.or
                              local.get $l10
                              i32.const 87
                              i32.add
                              local.get $l10
                              i32.const 10
                              i32.lt_u
                              select
                              local.set $l5
                              block $B41
                                local.get $l11
                                i32.eqz
                                br_if $B41
                                local.get $l15
                                i64.const -1
                                i64.add
                                i64.const 4294967295
                                i64.and
                                local.get $l15
                                i64.const -4294967296
                                i64.and
                                i64.or
                                local.set $l15
                                br $B32
                              end
                              local.get $l15
                              i64.const -1095216660481
                              i64.and
                              i64.const 4294967296
                              i64.or
                              local.set $l15
                              br $B32
                            end
                            local.get $l15
                            i64.const -1095216660481
                            i64.and
                            local.set $l15
                            i32.const 3
                            local.set $l10
                            i32.const 125
                            local.set $l5
                            br $B31
                          end
                          i32.const 0
                          local.set $l10
                          local.get $l14
                          local.set $l5
                          br $B31
                        end
                        i32.const 1
                        local.set $l10
                        block $B42
                          local.get $l12
                          i32.const 128
                          i32.lt_u
                          br_if $B42
                          i32.const 2
                          local.set $l10
                          local.get $l12
                          i32.const 2048
                          i32.lt_u
                          br_if $B42
                          i32.const 3
                          i32.const 4
                          local.get $l12
                          i32.const 65536
                          i32.lt_u
                          select
                          local.set $l10
                        end
                        local.get $l10
                        local.get $l9
                        i32.add
                        local.set $l5
                        br $B17
                      end
                      local.get $l15
                      i64.const -1095216660481
                      i64.and
                      i64.const 17179869184
                      i64.or
                      local.set $l15
                    end
                    i32.const 3
                    local.set $l10
                  end
                  local.get $p2
                  i32.load offset=24
                  local.get $l5
                  local.get $p2
                  i32.load offset=28
                  i32.load offset=16
                  call_indirect (type $t3) $T0
                  br_if $B1
                  br $L30
                end
              end
              local.get $l9
              local.get $l8
              i32.sub
              local.get $l7
              i32.add
              local.set $l9
              local.get $l7
              local.set $l8
              local.get $l6
              local.get $l7
              i32.ne
              br_if $L5
            end
          end
          local.get $l5
          i32.eqz
          br_if $B2
          local.get $l5
          local.get $p1
          i32.eq
          br_if $B2
          local.get $l5
          local.get $p1
          i32.ge_u
          br_if $B0
          local.get $p0
          local.get $l5
          i32.add
          i32.load8_s
          i32.const -65
          i32.le_s
          br_if $B0
        end
        i32.const 1
        local.set $l4
        local.get $p2
        i32.load offset=24
        local.get $p0
        local.get $l5
        i32.add
        local.get $p1
        local.get $l5
        i32.sub
        local.get $p2
        i32.load offset=28
        i32.load offset=12
        call_indirect (type $t8) $T0
        br_if $B1
        local.get $p2
        i32.load offset=24
        i32.const 34
        local.get $p2
        i32.load offset=28
        i32.load offset=16
        call_indirect (type $t3) $T0
        local.set $l4
      end
      local.get $l3
      i32.const 32
      i32.add
      global.set $g0
      local.get $l4
      return
    end
    local.get $p0
    local.get $p1
    local.get $l5
    local.get $p1
    call $_ZN4core3str16slice_error_fail17he3cd070c8cb5f5f5E
    unreachable)
  (func $_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17h1f0b63dac53d0aecE (type $t8) (param $p0 i32) (param $p1 i32) (param $p2 i32) (result i32)
    local.get $p2
    local.get $p0
    local.get $p1
    call $_ZN4core3fmt9Formatter3pad17h2edb8e7d7e605d23E)
  (func $_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i32$GT$3fmt17h58623d8131b79122E (type $t3) (param $p0 i32) (param $p1 i32) (result i32)
    (local $l2 i32) (local $l3 i32) (local $l4 i32)
    global.get $g0
    i32.const 128
    i32.sub
    local.tee $l2
    global.set $g0
    local.get $p0
    i32.load
    local.set $l3
    i32.const 0
    local.set $p0
    loop $L0
      local.get $l2
      local.get $p0
      i32.add
      i32.const 127
      i32.add
      local.get $l3
      i32.const 15
      i32.and
      local.tee $l4
      i32.const 48
      i32.or
      local.get $l4
      i32.const 87
      i32.add
      local.get $l4
      i32.const 10
      i32.lt_u
      select
      i32.store8
      local.get $p0
      i32.const -1
      i32.add
      local.set $p0
      local.get $l3
      i32.const 4
      i32.shr_u
      local.tee $l3
      br_if $L0
    end
    block $B1
      local.get $p0
      i32.const 128
      i32.add
      local.tee $l3
      i32.const 129
      i32.lt_u
      br_if $B1
      local.get $l3
      i32.const 128
      call $_ZN4core5slice22slice_index_order_fail17heebd88c1be3dadefE
      unreachable
    end
    local.get $p1
    i32.const 1
    i32.const 1055585
    i32.const 2
    local.get $l2
    local.get $p0
    i32.add
    i32.const 128
    i32.add
    i32.const 0
    local.get $p0
    i32.sub
    call $_ZN4core3fmt9Formatter12pad_integral17hfef5805f826bffbfE
    local.set $p0
    local.get $l2
    i32.const 128
    i32.add
    global.set $g0
    local.get $p0)
  (func $_ZN4core7unicode9printable5check17haa15d32184b13ee5E (type $t15) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32) (param $p4 i32) (param $p5 i32) (param $p6 i32) (result i32)
    (local $l7 i32) (local $l8 i32) (local $l9 i32) (local $l10 i32) (local $l11 i32) (local $l12 i32) (local $l13 i32)
    i32.const 1
    local.set $l7
    block $B0
      block $B1
        local.get $p2
        i32.eqz
        br_if $B1
        local.get $p1
        local.get $p2
        i32.const 1
        i32.shl
        i32.add
        local.set $l8
        local.get $p0
        i32.const 65280
        i32.and
        i32.const 8
        i32.shr_u
        local.set $l9
        i32.const 0
        local.set $l10
        local.get $p0
        i32.const 255
        i32.and
        local.set $l11
        block $B2
          loop $L3
            local.get $p1
            i32.const 2
            i32.add
            local.set $l12
            local.get $l10
            local.get $p1
            i32.load8_u offset=1
            local.tee $p2
            i32.add
            local.set $l13
            block $B4
              local.get $p1
              i32.load8_u
              local.tee $p1
              local.get $l9
              i32.eq
              br_if $B4
              local.get $p1
              local.get $l9
              i32.gt_u
              br_if $B1
              local.get $l13
              local.set $l10
              local.get $l12
              local.set $p1
              local.get $l12
              local.get $l8
              i32.ne
              br_if $L3
              br $B1
            end
            block $B5
              local.get $l13
              local.get $l10
              i32.lt_u
              br_if $B5
              local.get $l13
              local.get $p4
              i32.gt_u
              br_if $B2
              local.get $p3
              local.get $l10
              i32.add
              local.set $p1
              block $B6
                loop $L7
                  local.get $p2
                  i32.eqz
                  br_if $B6
                  local.get $p2
                  i32.const -1
                  i32.add
                  local.set $p2
                  local.get $p1
                  i32.load8_u
                  local.set $l10
                  local.get $p1
                  i32.const 1
                  i32.add
                  local.set $p1
                  local.get $l10
                  local.get $l11
                  i32.ne
                  br_if $L7
                end
                i32.const 0
                local.set $l7
                br $B0
              end
              local.get $l13
              local.set $l10
              local.get $l12
              local.set $p1
              local.get $l12
              local.get $l8
              i32.ne
              br_if $L3
              br $B1
            end
          end
          local.get $l10
          local.get $l13
          call $_ZN4core5slice22slice_index_order_fail17heebd88c1be3dadefE
          unreachable
        end
        local.get $l13
        local.get $p4
        call $_ZN4core5slice20slice_index_len_fail17hfc4485e8c33f2d47E
        unreachable
      end
      local.get $p6
      i32.eqz
      br_if $B0
      local.get $p5
      local.get $p6
      i32.add
      local.set $l11
      local.get $p0
      i32.const 65535
      i32.and
      local.set $p1
      i32.const 1
      local.set $l7
      block $B8
        loop $L9
          local.get $p5
          i32.const 1
          i32.add
          local.set $l10
          block $B10
            block $B11
              local.get $p5
              i32.load8_u
              local.tee $p2
              i32.const 24
              i32.shl
              i32.const 24
              i32.shr_s
              local.tee $l13
              i32.const 0
              i32.lt_s
              br_if $B11
              local.get $l10
              local.set $p5
              br $B10
            end
            local.get $l10
            local.get $l11
            i32.eq
            br_if $B8
            local.get $l13
            i32.const 127
            i32.and
            i32.const 8
            i32.shl
            local.get $p5
            i32.load8_u offset=1
            i32.or
            local.set $p2
            local.get $p5
            i32.const 2
            i32.add
            local.set $p5
          end
          local.get $p1
          local.get $p2
          i32.sub
          local.tee $p1
          i32.const 0
          i32.lt_s
          br_if $B0
          local.get $l7
          i32.const 1
          i32.xor
          local.set $l7
          local.get $p5
          local.get $l11
          i32.ne
          br_if $L9
          br $B0
        end
      end
      i32.const 1054504
      i32.const 43
      i32.const 1054568
      call $_ZN4core9panicking5panic17hc60400b47c695700E
      unreachable
    end
    local.get $l7
    i32.const 1
    i32.and)
  (func $_ZN4core7unicode6tables16derived_property15Grapheme_Extend17hae9f1cc446db1bb7E (type $t7) (param $p0 i32) (result i32)
    i32.const 1058888
    local.get $p0
    call $_ZN4core7unicode9bool_trie8BoolTrie6lookup17h84f73bedeaa3b078E)
  (func $_ZN57_$LT$core..str..Utf8Error$u20$as$u20$core..fmt..Debug$GT$3fmt17h58be16dd691a675aE (type $t3) (param $p0 i32) (param $p1 i32) (result i32)
    (local $l2 i32) (local $l3 i32)
    global.get $g0
    i32.const 16
    i32.sub
    local.tee $l2
    global.set $g0
    local.get $p1
    i32.load offset=24
    i32.const 1060440
    i32.const 9
    local.get $p1
    i32.const 28
    i32.add
    i32.load
    i32.load offset=12
    call_indirect (type $t8) $T0
    local.set $l3
    local.get $l2
    i32.const 0
    i32.store8 offset=5
    local.get $l2
    local.get $l3
    i32.store8 offset=4
    local.get $l2
    local.get $p1
    i32.store
    local.get $l2
    local.get $p0
    i32.store offset=12
    local.get $l2
    i32.const 1060449
    i32.const 11
    local.get $l2
    i32.const 12
    i32.add
    i32.const 1060416
    call $_ZN4core3fmt8builders11DebugStruct5field17hbd0e2a659c73823bE
    drop
    local.get $l2
    local.get $p0
    i32.const 4
    i32.add
    i32.store offset=12
    local.get $l2
    i32.const 1060460
    i32.const 9
    local.get $l2
    i32.const 12
    i32.add
    i32.const 1060472
    call $_ZN4core3fmt8builders11DebugStruct5field17hbd0e2a659c73823bE
    drop
    local.get $l2
    i32.load8_u offset=4
    local.set $p1
    block $B0
      local.get $l2
      i32.load8_u offset=5
      i32.eqz
      br_if $B0
      local.get $p1
      i32.const 255
      i32.and
      local.set $p0
      i32.const 1
      local.set $p1
      block $B1
        local.get $p0
        br_if $B1
        local.get $l2
        i32.load
        local.tee $p1
        i32.const 28
        i32.add
        i32.load
        i32.load offset=12
        local.set $p0
        local.get $p1
        i32.load offset=24
        local.set $l3
        block $B2
          local.get $p1
          i32.load8_u
          i32.const 4
          i32.and
          br_if $B2
          local.get $l3
          i32.const 1055559
          i32.const 2
          local.get $p0
          call_indirect (type $t8) $T0
          local.set $p1
          br $B1
        end
        local.get $l3
        i32.const 1055558
        i32.const 1
        local.get $p0
        call_indirect (type $t8) $T0
        local.set $p1
      end
      local.get $l2
      local.get $p1
      i32.store8 offset=4
    end
    local.get $l2
    i32.const 16
    i32.add
    global.set $g0
    local.get $p1
    i32.const 255
    i32.and
    i32.const 0
    i32.ne)
  (func $_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$i8$GT$3fmt17hb07de94750255221E (type $t3) (param $p0 i32) (param $p1 i32) (result i32)
    (local $l2 i32) (local $l3 i32) (local $l4 i32)
    global.get $g0
    i32.const 128
    i32.sub
    local.tee $l2
    global.set $g0
    local.get $p0
    i32.load8_u
    local.set $l3
    i32.const 0
    local.set $p0
    loop $L0
      local.get $l2
      local.get $p0
      i32.add
      i32.const 127
      i32.add
      local.get $l3
      i32.const 15
      i32.and
      local.tee $l4
      i32.const 48
      i32.or
      local.get $l4
      i32.const 55
      i32.add
      local.get $l4
      i32.const 10
      i32.lt_u
      select
      i32.store8
      local.get $p0
      i32.const -1
      i32.add
      local.set $p0
      local.get $l3
      i32.const 4
      i32.shr_u
      i32.const 15
      i32.and
      local.tee $l3
      br_if $L0
    end
    block $B1
      local.get $p0
      i32.const 128
      i32.add
      local.tee $l3
      i32.const 129
      i32.lt_u
      br_if $B1
      local.get $l3
      i32.const 128
      call $_ZN4core5slice22slice_index_order_fail17heebd88c1be3dadefE
      unreachable
    end
    local.get $p1
    i32.const 1
    i32.const 1055585
    i32.const 2
    local.get $l2
    local.get $p0
    i32.add
    i32.const 128
    i32.add
    i32.const 0
    local.get $p0
    i32.sub
    call $_ZN4core3fmt9Formatter12pad_integral17hfef5805f826bffbfE
    local.set $p0
    local.get $l2
    i32.const 128
    i32.add
    global.set $g0
    local.get $p0)
  (func $_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$i32$GT$3fmt17he6067a6f8103a390E (type $t3) (param $p0 i32) (param $p1 i32) (result i32)
    (local $l2 i32) (local $l3 i32) (local $l4 i32)
    global.get $g0
    i32.const 128
    i32.sub
    local.tee $l2
    global.set $g0
    local.get $p0
    i32.load
    local.set $l3
    i32.const 0
    local.set $p0
    loop $L0
      local.get $l2
      local.get $p0
      i32.add
      i32.const 127
      i32.add
      local.get $l3
      i32.const 15
      i32.and
      local.tee $l4
      i32.const 48
      i32.or
      local.get $l4
      i32.const 55
      i32.add
      local.get $l4
      i32.const 10
      i32.lt_u
      select
      i32.store8
      local.get $p0
      i32.const -1
      i32.add
      local.set $p0
      local.get $l3
      i32.const 4
      i32.shr_u
      local.tee $l3
      br_if $L0
    end
    block $B1
      local.get $p0
      i32.const 128
      i32.add
      local.tee $l3
      i32.const 129
      i32.lt_u
      br_if $B1
      local.get $l3
      i32.const 128
      call $_ZN4core5slice22slice_index_order_fail17heebd88c1be3dadefE
      unreachable
    end
    local.get $p1
    i32.const 1
    i32.const 1055585
    i32.const 2
    local.get $l2
    local.get $p0
    i32.add
    i32.const 128
    i32.add
    i32.const 0
    local.get $p0
    i32.sub
    call $_ZN4core3fmt9Formatter12pad_integral17hfef5805f826bffbfE
    local.set $p0
    local.get $l2
    i32.const 128
    i32.add
    global.set $g0
    local.get $p0)
  (func $_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17ha3fe23ff267fac81E (type $t3) (param $p0 i32) (param $p1 i32) (result i32)
    (local $l2 i64)
    local.get $p0
    i32.load
    local.tee $p0
    i64.extend_i32_s
    local.tee $l2
    local.get $l2
    i64.const 63
    i64.shr_s
    local.tee $l2
    i64.add
    local.get $l2
    i64.xor
    local.get $p0
    i32.const -1
    i32.xor
    i32.const 31
    i32.shr_u
    local.get $p1
    call $_ZN4core3fmt3num3imp7fmt_u6417h042ebedf17751bd0E)
  (func $_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h43093690dcf30e1dE (type $t3) (param $p0 i32) (param $p1 i32) (result i32)
    (local $l2 i32) (local $l3 i32) (local $l4 i32)
    global.get $g0
    i32.const 128
    i32.sub
    local.tee $l2
    global.set $g0
    local.get $p0
    i32.load
    local.set $p0
    block $B0
      block $B1
        block $B2
          block $B3
            block $B4
              local.get $p1
              i32.load
              local.tee $l3
              i32.const 16
              i32.and
              br_if $B4
              local.get $p0
              i32.load8_u
              local.set $l4
              local.get $l3
              i32.const 32
              i32.and
              br_if $B3
              local.get $l4
              i64.extend_i32_u
              i64.const 255
              i64.and
              i32.const 1
              local.get $p1
              call $_ZN4core3fmt3num3imp7fmt_u6417h042ebedf17751bd0E
              local.set $p0
              br $B2
            end
            local.get $p0
            i32.load8_u
            local.set $l4
            i32.const 0
            local.set $p0
            loop $L5
              local.get $l2
              local.get $p0
              i32.add
              i32.const 127
              i32.add
              local.get $l4
              i32.const 15
              i32.and
              local.tee $l3
              i32.const 48
              i32.or
              local.get $l3
              i32.const 87
              i32.add
              local.get $l3
              i32.const 10
              i32.lt_u
              select
              i32.store8
              local.get $p0
              i32.const -1
              i32.add
              local.set $p0
              local.get $l4
              i32.const 4
              i32.shr_u
              i32.const 15
              i32.and
              local.tee $l4
              br_if $L5
            end
            local.get $p0
            i32.const 128
            i32.add
            local.tee $l4
            i32.const 129
            i32.ge_u
            br_if $B1
            local.get $p1
            i32.const 1
            i32.const 1055585
            i32.const 2
            local.get $l2
            local.get $p0
            i32.add
            i32.const 128
            i32.add
            i32.const 0
            local.get $p0
            i32.sub
            call $_ZN4core3fmt9Formatter12pad_integral17hfef5805f826bffbfE
            local.set $p0
            br $B2
          end
          i32.const 0
          local.set $p0
          loop $L6
            local.get $l2
            local.get $p0
            i32.add
            i32.const 127
            i32.add
            local.get $l4
            i32.const 15
            i32.and
            local.tee $l3
            i32.const 48
            i32.or
            local.get $l3
            i32.const 55
            i32.add
            local.get $l3
            i32.const 10
            i32.lt_u
            select
            i32.store8
            local.get $p0
            i32.const -1
            i32.add
            local.set $p0
            local.get $l4
            i32.const 4
            i32.shr_u
            i32.const 15
            i32.and
            local.tee $l4
            br_if $L6
          end
          local.get $p0
          i32.const 128
          i32.add
          local.tee $l4
          i32.const 129
          i32.ge_u
          br_if $B0
          local.get $p1
          i32.const 1
          i32.const 1055585
          i32.const 2
          local.get $l2
          local.get $p0
          i32.add
          i32.const 128
          i32.add
          i32.const 0
          local.get $p0
          i32.sub
          call $_ZN4core3fmt9Formatter12pad_integral17hfef5805f826bffbfE
          local.set $p0
        end
        local.get $l2
        i32.const 128
        i32.add
        global.set $g0
        local.get $p0
        return
      end
      local.get $l4
      i32.const 128
      call $_ZN4core5slice22slice_index_order_fail17heebd88c1be3dadefE
      unreachable
    end
    local.get $l4
    i32.const 128
    call $_ZN4core5slice22slice_index_order_fail17heebd88c1be3dadefE
    unreachable)
  (func $_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h9bfacaf2c5539e85E (type $t3) (param $p0 i32) (param $p1 i32) (result i32)
    local.get $p0
    i32.load
    local.get $p1
    call $_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h3b17d39de7fdc1f1E)
  (func $_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17ha8d8323b2b975936E (type $t3) (param $p0 i32) (param $p1 i32) (result i32)
    (local $l2 i32) (local $l3 i32)
    global.get $g0
    i32.const 16
    i32.sub
    local.tee $l2
    global.set $g0
    block $B0
      block $B1
        local.get $p0
        i32.load
        local.tee $p0
        i32.load8_u
        i32.const 1
        i32.eq
        br_if $B1
        local.get $p1
        i32.load offset=24
        i32.const 1060436
        i32.const 4
        local.get $p1
        i32.const 28
        i32.add
        i32.load
        i32.load offset=12
        call_indirect (type $t8) $T0
        local.set $p1
        br $B0
      end
      local.get $l2
      local.get $p1
      i32.load offset=24
      i32.const 1060432
      i32.const 4
      local.get $p1
      i32.const 28
      i32.add
      i32.load
      i32.load offset=12
      call_indirect (type $t8) $T0
      i32.store8 offset=8
      local.get $l2
      local.get $p1
      i32.store
      local.get $l2
      i32.const 0
      i32.store8 offset=9
      local.get $l2
      i32.const 0
      i32.store offset=4
      local.get $l2
      local.get $p0
      i32.const 1
      i32.add
      i32.store offset=12
      local.get $l2
      local.get $l2
      i32.const 12
      i32.add
      i32.const 1055568
      call $_ZN4core3fmt8builders10DebugTuple5field17hbd38ecaa7052e2cfE
      drop
      local.get $l2
      i32.load8_u offset=8
      local.set $p1
      block $B2
        local.get $l2
        i32.load offset=4
        local.tee $l3
        i32.eqz
        br_if $B2
        local.get $p1
        i32.const 255
        i32.and
        local.set $p0
        i32.const 1
        local.set $p1
        block $B3
          local.get $p0
          br_if $B3
          block $B4
            local.get $l3
            i32.const 1
            i32.ne
            br_if $B4
            local.get $l2
            i32.load8_u offset=9
            i32.const 255
            i32.and
            i32.eqz
            br_if $B4
            local.get $l2
            i32.load
            local.tee $p0
            i32.load8_u
            i32.const 4
            i32.and
            br_if $B4
            i32.const 1
            local.set $p1
            local.get $p0
            i32.load offset=24
            i32.const 1055564
            i32.const 1
            local.get $p0
            i32.const 28
            i32.add
            i32.load
            i32.load offset=12
            call_indirect (type $t8) $T0
            br_if $B3
          end
          local.get $l2
          i32.load
          local.tee $p1
          i32.load offset=24
          i32.const 1054968
          i32.const 1
          local.get $p1
          i32.const 28
          i32.add
          i32.load
          i32.load offset=12
          call_indirect (type $t8) $T0
          local.set $p1
        end
        local.get $l2
        local.get $p1
        i32.store8 offset=8
      end
      local.get $p1
      i32.const 255
      i32.and
      i32.const 0
      i32.ne
      local.set $p1
    end
    local.get $l2
    i32.const 16
    i32.add
    global.set $g0
    local.get $p1)
  (table $T0 102 102 funcref)
  (memory $memory 17)
  (global $g0 (mut i32) (i32.const 1048576))
  (global $__data_end i32 (i32.const 1061140))
  (global $__heap_base i32 (i32.const 1061140))
  (export "memory" (memory 0))
  (export "__data_end" (global 1))
  (export "__heap_base" (global 2))
  (export "_start" (func $_start))
  (export "__original_main" (func $__original_main))
  (export "main" (func $main))
  (elem $e0 (i32.const 1) $_ZN4core3ptr18real_drop_in_place17h5b9eb712c953141eE $_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17hcf0a53e73a737b14E $_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17h7181aab030b356c7E $_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h81afefe9a006429dE $_ZN52_$LT$$BP$const$u20$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h36ad9990371e35ecE $_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hcb50ccd46cfffa86E $_ZN52_$LT$$BP$const$u20$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h9743d9e05b4bdf6eE $_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$isize$GT$3fmt17hf4e921414d427e32E $_ZN4main4main17h9e0ea2b04575dfdbE $_ZN59_$LT$core..fmt..Arguments$u20$as$u20$core..fmt..Display$GT$3fmt17h1d4c2ae0c05a3698E $_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h97a4b0741912e1acE $_ZN45_$LT$$RF$T$u20$as$u20$core..fmt..UpperHex$GT$3fmt17h56eb96d5732f91c6E $_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h9153e35d1f393cc8E $_ZN60_$LT$std..io..error..Error$u20$as$u20$core..fmt..Display$GT$3fmt17hab33489ae32428e1E $_ZN55_$LT$std..path..Display$u20$as$u20$core..fmt..Debug$GT$3fmt17h0986e0b7a0364423E $_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17ha3fe23ff267fac81E $_ZN60_$LT$alloc..string..String$u20$as$u20$core..fmt..Display$GT$3fmt17h8bf31a0875beb2d8E $_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hcec0264094fa939fE $_ZN3std5alloc24default_alloc_error_hook17h42d9c6ae543c8dd7E $_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hcd40a1afa9d9ce57E $_ZN91_$LT$std..sys_common..backtrace.._print..DisplayBacktrace$u20$as$u20$core..fmt..Display$GT$3fmt17hc9f54135ac839bf3E $_ZN3std9panicking3try7do_call17hba2245c23b34bfc8E $_ZN76_$LT$std..sys_common..thread_local..Key$u20$as$u20$core..ops..drop..Drop$GT$4drop17h1c8ff39e518cfb04E $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h7b56425ef82031b0E $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h3ae93dd1c0eae2d8E $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_fmt17h84d4595f10c6e9bdE $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h7543301949989357E $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h56a1257173aa70e6E $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_fmt17hf2a77fb1f44d03b9E $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h343be05a3736b678E $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h52ab12c1a9a7ed26E $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_fmt17he9274de8420ffd84E $_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h33e9d5b249d20379E $_ZN4core3ptr18real_drop_in_place17h002503b23174cca1E $_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17h0f8d2bd32519b0bcE $_ZN63_$LT$core..cell..BorrowMutError$u20$as$u20$core..fmt..Debug$GT$3fmt17habbe3fa4e4e9f71eE $_ZN60_$LT$core..cell..BorrowError$u20$as$u20$core..fmt..Debug$GT$3fmt17hf295ea4ef037c8ddE $_ZN4core3ptr18real_drop_in_place17ha7c2802620da5d36E $_ZN62_$LT$std..ffi..c_str..NulError$u20$as$u20$core..fmt..Debug$GT$3fmt17hdbdc592c640fe94eE $_ZN4core3ptr18real_drop_in_place17h1008d021a780f350E $_ZN55_$LT$std..path..PathBuf$u20$as$u20$core..fmt..Debug$GT$3fmt17haf00f8624de4aae8E $_ZN4core3ptr18real_drop_in_place17h1a273616ec4b5ac9E $_ZN57_$LT$core..str..Utf8Error$u20$as$u20$core..fmt..Debug$GT$3fmt17h58be16dd691a675aE $_ZN4core3ptr18real_drop_in_place17h2b3b83b2a1406e9dE $_ZN82_$LT$std..sys_common..poison..PoisonError$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h492372f491e0be27E $_ZN243_$LT$std..error..$LT$impl$u20$core..convert..From$LT$alloc..string..String$GT$$u20$for$u20$alloc..boxed..Box$LT$dyn$u20$std..error..Error$u2b$core..marker..Send$u2b$core..marker..Sync$GT$$GT$..from..StringError$u20$as$u20$std..error..Error$GT$11description17h0caa1b2504394f01E $_ZN3std5error5Error5cause17h208489695af0fdeeE $_ZN3std5error5Error7type_id17he93b19cfb2e8e2acE $_ZN3std5error5Error9backtrace17h1368d825fc8df78cE $_ZN244_$LT$std..error..$LT$impl$u20$core..convert..From$LT$alloc..string..String$GT$$u20$for$u20$alloc..boxed..Box$LT$dyn$u20$std..error..Error$u2b$core..marker..Send$u2b$core..marker..Sync$GT$$GT$..from..StringError$u20$as$u20$core..fmt..Display$GT$3fmt17h4896a95c62927851E $_ZN242_$LT$std..error..$LT$impl$u20$core..convert..From$LT$alloc..string..String$GT$$u20$for$u20$alloc..boxed..Box$LT$dyn$u20$std..error..Error$u2b$core..marker..Send$u2b$core..marker..Sync$GT$$GT$..from..StringError$u20$as$u20$core..fmt..Debug$GT$3fmt17hf375d57eb464f65fE $_ZN4core3ptr18real_drop_in_place17h3e8a74f436f6b428E $_ZN80_$LT$std..io..Write..write_fmt..Adaptor$LT$T$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17h4e79fe03d48f26f2E $_ZN4core3fmt5Write10write_char17h60efdbdfd77cd04aE $_ZN4core3fmt5Write9write_fmt17h9ac7a778133567cdE $_ZN80_$LT$std..io..Write..write_fmt..Adaptor$LT$T$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17h1bf561aa9168750dE $_ZN4core3fmt5Write10write_char17hc15d9e049e32c338E $_ZN4core3fmt5Write9write_fmt17h2438519d8d7db450E $_ZN3std4sync4once4Once9call_once28_$u7b$$u7b$closure$u7d$$u7d$17hca3f28696bfe6018E $_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17h5217946a25668fdeE $_ZN4core3ptr18real_drop_in_place17hd65976e8626b1b88E $_ZN3std10sys_common9backtrace10_print_fmt28_$u7b$$u7b$closure$u7d$$u7d$17hfde964fa31647e6bE $_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17h9eb7082a48580bd9E $_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17hab3cb5efd3f8166fE $_ZN60_$LT$std..io..stdio..StderrRaw$u20$as$u20$std..io..Write$GT$5write17h4e43e82542fc3b2fE $_ZN3std2io5Write14write_vectored17h353d72a3a24ef542E $_ZN59_$LT$std..process..ChildStdin$u20$as$u20$std..io..Write$GT$5flush17h09bba869abdaa1d8E $_ZN3std2io5Write9write_all17h4c673540e22a7825E $_ZN3std2io5Write9write_fmt17he4f9e0467028fa4dE $_ZN4core3ptr18real_drop_in_place17hffd50c820102285cE $_ZN3std2io5impls71_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..boxed..Box$LT$W$GT$$GT$5write17h1c9ea699209651c9E $_ZN3std2io5impls71_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..boxed..Box$LT$W$GT$$GT$14write_vectored17h1600ea5da08cdc03E $_ZN3std2io5impls71_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..boxed..Box$LT$W$GT$$GT$5flush17hee9bf9fcdcb912feE $_ZN3std2io5impls71_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..boxed..Box$LT$W$GT$$GT$9write_all17h90beacfdfa1f3b4dE $_ZN3std2io5impls71_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..boxed..Box$LT$W$GT$$GT$9write_fmt17h0f033bf5e9e3c25bE $_ZN4core3ptr18real_drop_in_place17h14c964a2795c8756E $_ZN90_$LT$std..panicking..begin_panic_handler..PanicPayload$u20$as$u20$core..panic..BoxMeUp$GT$8take_box17hf68c26a79265806aE $_ZN90_$LT$std..panicking..begin_panic_handler..PanicPayload$u20$as$u20$core..panic..BoxMeUp$GT$3get17h2f13d8d04478e036E $_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17h5d6a88253efd5b28E $_ZN91_$LT$std..panicking..begin_panic..PanicPayload$LT$A$GT$$u20$as$u20$core..panic..BoxMeUp$GT$8take_box17hb16aceddc760d867E $_ZN91_$LT$std..panicking..begin_panic..PanicPayload$LT$A$GT$$u20$as$u20$core..panic..BoxMeUp$GT$3get17h1e86d8331d944ed0E $_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17h168fc26cbdda1442E $_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hf6db0e1716810508E $_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h9fac0349c74cb035E $_ZN71_$LT$core..ops..range..Range$LT$Idx$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17hf1b5fd652ff8f28dE $_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17h9a3163a3c6013c6cE $_ZN4core3fmt10ArgumentV110show_usize17h659f2e7b81f60987E $_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17haa94c1a554592613E $_ZN4core3ptr18real_drop_in_place17h38a660153738b32fE $_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17h47a9f9063b0c3dbcE $_ZN4core3ptr18real_drop_in_place17h650094a6a70338f7E $_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17he40b71e6e495ad7cE $_ZN4core3fmt5Write10write_char17h0a40abd75ed3683dE $_ZN4core3fmt5Write9write_fmt17hbfa684fcf67a9237E $_ZN63_$LT$core..ffi..VaListImpl$u20$as$u20$core..ops..drop..Drop$GT$4drop17h33b53169660fa804E $_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h43093690dcf30e1dE $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h071370f55648a353E $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17hca1d204488cb89c9E $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_fmt17h297d40b2f7ee4bd8E $_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h9bfacaf2c5539e85E $_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17ha8d8323b2b975936E)
  (data $d0 (i32.const 1048576) "\01\00\00\00\04\00\00\00\04\00\00\00\02\00\00\00\02\00\00\00\03\00\00\00called `Option::unwrap()` on a `None` value/rustc/5e1a799842ba6ed4a57e91f7ab9435947482f7d8/src/libcore/macros/mod.rsC\00\10\00I\00\00\00\0f\00\00\00(\00\00\00  in leaf()\0a\9c\00\10\00\0c\00\00\00    , addr:  ()\0a\b0\00\10\00\04\00\00\00\b4\00\10\00\08\00\00\00\bc\00\10\00\02\00\00\00\be\00\10\00\02\00\00\00global const string\00\e0\00\10\00\13\00\00\00    stack value in leaf() function, addr: \00\00\fc\00\10\00*\00\00\00\bc\00\10\00\02\00\00\00\be\00\10\00\02\00\00\00    stack grows: \0a\00\00@\01\10\00\11\00\00\00Q\01\10\00\01\00\00\00    arg 0: \00d\01\10\00\0b\00\00\00\b4\00\10\00\08\00\00\00\bc\00\10\00\02\00\00\00\be\00\10\00\02\00\00\00stack-allocated (local) stringdynamically (heap) allocated string  in intermediate()\0a\00\00\00\d1\01\10\00\14\00\00\00  in main()\0a\f0\01\10\00\0c\00\00\00assertion failed: `(left == right)`\0a  left: ``,\0a right: ``: \04\02\10\00-\00\00\001\02\10\00\0c\00\00\00=\02\10\00\03\00\00\00destination and source slices have different lengthsX\02\10\004\00\00\00/rustc/5e1a799842ba6ed4a57e91f7ab9435947482f7d8/src/libcore/macros/mod.rs\00\00\00\94\02\10\00I\00\00\00\17\00\00\00\0d\00\00\00\17\00\00\00\04\00\00\00\04\00\00\00\18\00\00\00\19\00\00\00\1a\00\00\00\17\00\00\00\04\00\00\00\04\00\00\00\1b\00\00\00\1c\00\00\00\1d\00\00\00\17\00\00\00\04\00\00\00\04\00\00\00\1e\00\00\00\1f\00\00\00 \00\00\00\17\00\00\00\04\00\00\00\04\00\00\00!\00\00\00already borrowedalready mutably borrowed/rustc/5e1a799842ba6ed4a57e91f7ab9435947482f7d8/src/libcore/macros/mod.rsassertion failed: `(left == right)`\0a  left: ``,\0a right: ``\00\b9\03\10\00-\00\00\00\e6\03\10\00\0c\00\00\00\f2\03\10\00\01\00\00\00p\03\10\00I\00\00\00\0f\00\00\00(\00\00\00\22\00\00\00\00\00\00\00\01\00\00\00#\00\00\00`: \00\b9\03\10\00-\00\00\00\e6\03\10\00\0c\00\00\00,\04\10\00\03\00\00\00called `Option::unwrap()` on a `None` value\00\22\00\00\00\00\00\00\00\01\00\00\00$\00\00\00\22\00\00\00\00\00\00\00\01\00\00\00%\00\00\00&\00\00\00\10\00\00\00\04\00\00\00'\00\00\00called `Result::unwrap()` on an `Err` value\00(\00\00\00\0c\00\00\00\04\00\00\00)\00\00\00*\00\00\00\08\00\00\00\04\00\00\00+\00\00\00,\00\00\00\08\00\00\00\04\00\00\00-\00\00\00<::core::macros::panic macros>\00\00\00\05\10\00\1e\00\00\00\03\00\00\00\0a\00\00\00assertion failed: end <= lenTried to shrink to a larger capacity\17\00\00\00\04\00\00\00\04\00\00\00\0d\00\00\00src/libstd/thread/mod.rs\80\05\10\00\18\00\00\00\89\03\00\00\13\00\00\00inconsistent park state\00\02\00\00\00park state changed unexpectedly\00\c4\05\10\00\1f\00\00\00\80\05\10\00\18\00\00\00\86\03\00\00\0d\00\00\00\80\05\10\00\18\00\00\00\1f\04\00\00\11\00\00\00failed to generate unique thread ID: bitspace exhaustedthread name may not contain interior null bytes\00\00\80\05\10\00\18\00\00\00\94\04\00\00\12\00\00\00inconsistent state in unparkRUST_BACKTRACE0failed to get environment variable `\00\af\06\10\00$\00\00\00,\04\10\00\03\00\00\00src/libstd/env.rs\00\00\00\e4\06\10\00\11\00\00\00\fb\00\00\00\1d\00\00\00(\00\00\00\0c\00\00\00\04\00\00\00.\00\00\00/\00\00\00/\00\00\000\00\00\001\00\00\002\00\00\003\00\00\00\22data provided contains a nul bytefailed to write the buffered dataunexpected end of fileother os erroroperation interruptedwrite zerotimed outinvalid datainvalid input parameteroperation would blockentity already existsbroken pipeaddress not availableaddress in usenot connectedconnection abortedconnection resetconnection refusedpermission deniedentity not foundR\07\10\00\00\00\00\00 (os error )R\07\10\00\00\00\00\00\a4\08\10\00\0b\00\00\00\af\08\10\00\01\00\00\00cannot access stdout during shutdownfailed printing to : \00\00\00\ec\08\10\00\13\00\00\00\ff\08\10\00\02\00\00\00src/libstd/io/stdio.rs\00\00\14\09\10\00\16\00\00\00\18\03\00\00\09\00\00\00stdoutfailed to write whole buffer\00\004\00\00\00\0c\00\00\00\04\00\00\005\00\00\006\00\00\007\00\00\00formatter error\004\00\00\00\0c\00\00\00\04\00\00\008\00\00\009\00\00\00:\00\00\00src/libstd/sync/condvar.rs\00\00\a0\09\10\00\1a\00\00\00H\02\00\00\12\00\00\00attempted to use a condition variable with two mutexes\00\00\17\00\00\00\04\00\00\00\04\00\00\00;\00\00\00<\00\00\00src/libstd/sync/once.rs\00\18\0a\10\00\17\00\00\00\a8\01\00\00\15\00\00\00assertion failed: state_and_queue & STATE_MASK == RUNNING\00\00\00\18\0a\10\00\17\00\00\00\8c\01\00\00\15\00\00\00Once instance has previously been poisoned\00\00\18\0a\10\00\17\00\00\00\e9\01\00\00\09\00\00\00src/libstd/sys_common/at_exit_imp.rs\c8\0a\10\00$\00\00\001\00\00\00\0d\00\00\00assertion failed: queue != DONE\00=\00\00\00\10\00\00\00\04\00\00\00>\00\00\00?\00\00\00note: Some details are omitted, run with `RUST_BACKTRACE=full` for a verbose backtrace.\0a0\0b\10\00X\00\00\00full<unknown>PoisonError { inner: .. }src/libstd/sys_common/thread_info.rs\00\00\b6\0b\10\00$\00\00\00(\00\00\00\1a\00\00\00assertion failed: c.borrow().is_none()fatal runtime error: \0a\12\0c\10\00\15\00\00\00'\0c\10\00\01\00\00\00\5cx\00\008\0c\10\00\02\00\00\00\01\00\00\00\00\00\00\00 \00\00\00\08\00\00\00\03\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\03\00\00\00\17\00\00\00\04\00\00\00\04\00\00\00@\00\00\00memory allocation of  bytes failed\00\00x\0c\10\00\15\00\00\00\8d\0c\10\00\0d\00\00\00Box<Any><unnamed>\00\00\00\22\00\00\00\00\00\00\00\01\00\00\00A\00\00\00B\00\00\00C\00\00\00D\00\00\00E\00\00\00\00\00\00\00F\00\00\00\08\00\00\00\04\00\00\00G\00\00\00H\00\00\00I\00\00\00J\00\00\00K\00\00\00\00\00\00\00thread '' panicked at '', \00\00\08\0d\10\00\08\00\00\00\10\0d\10\00\0f\00\00\00\1f\0d\10\00\03\00\00\00'\0c\10\00\01\00\00\00note: run with `RUST_BACKTRACE=1` environment variable to display a backtrace.\0a\00D\0d\10\00O\00\00\00L\00\00\00\10\00\00\00\04\00\00\00M\00\00\00N\00\00\00(\00\00\00\0c\00\00\00\04\00\00\00O\00\00\00*\00\00\00\08\00\00\00\04\00\00\00P\00\00\00Q\00\00\00*\00\00\00\08\00\00\00\04\00\00\00R\00\00\00thread panicked while processing panic. aborting.\0a\00\00\e4\0d\10\002\00\00\00thread panicked while panicking. aborting.\0a\00 \0e\10\00+\00\00\00failed to initiate panic, error T\0e\10\00 \00\00\00NulError\17\00\00\00\04\00\00\00\04\00\00\00S\00\00\00src/libstd/sys/wasi/../wasm/condvar.rs\00\00\94\0e\10\00&\00\00\00\17\00\00\00\09\00\00\00can't block with web assemblysrc/libstd/sys/wasi/../wasm/mutex.rs\00\00\00\e9\0e\10\00$\00\00\00\16\00\00\00\09\00\00\00cannot recursively acquire mutexsrc/libstd/sys/wasi/os.rs\00\00\00@\0f\10\00\19\00\00\00$\00\00\00\0d\00\00\00strerror_r failurerwlock locked for writing\00~\0f\10\00\19\00\00\00operation not supported on wasm yetstack backtrace:\0a\00\00\00\00\00\00\00\00\00\00\00\00\00\19\12D;\02?,G\14=30\0a\1b\06FKE7\0fI\0e\17\03@\1d<+6\1fJ-\1c\01 %)!\08\0c\15\16\22.\108>\0b41\18/A\099\11#C2B:\05\04&('\0d*\1e5\07\1aH\13$L\ff\00\00Success\00Illegal byte sequence\00Domain error\00Result not representable\00Not a tty\00Permission denied\00Operation not permitted\00No such file or directory\00No such process\00File exists\00Value too large for data type\00No space left on device\00Out of memory\00Resource busy\00Interrupted system call\00Resource temporarily unavailable\00Invalid seek\00Cross-device link\00Read-only file system\00Directory not empty\00Connection reset by peer\00Operation timed out\00Connection refused\00Host is unreachable\00Address in use\00Broken pipe\00I/O error\00No such device or address\00No such device\00Not a directory\00Is a directory\00Text file busy\00Exec format error\00Invalid argument\00Argument list too long\00Symbolic link loop\00Filename too long\00Too many open files in system\00No file descriptors available\00Bad file descriptor\00No child process\00Bad address\00File too large\00Too many links\00No locks available\00Resource deadlock would occur\00State not recoverable\00Previous owner died\00Operation canceled\00Function not implemented\00No message of desired type\00Identifier removed\00Link has been severed\00Protocol error\00Bad message\00Not a socket\00Destination address required\00Message too large\00Protocol wrong type for socket\00Protocol not available\00Protocol not supported\00Not supported\00Address family not supported by protocol\00Address not available\00Network is down\00Network unreachable\00Connection reset by network\00Connection aborted\00No buffer space available\00Socket is connected\00Socket not connected\00Operation already in progress\00Operation in progress\00Stale file handle\00Quota exceeded\00Multihop attempted\00Capabilities insufficient\00No error information\00\00src/liballoc/raw_vec.rscapacity overflow\00\00V\16\10\00\17\00\00\00\09\03\00\00\05\00\00\00`\00..\92\16\10\00\02\00\00\00BorrowErrorBorrowMutError\00\00\00Y\00\00\00\00\00\00\00\01\00\00\00Z\00\00\00:\00\00\00\90\16\10\00\00\00\00\00\c8\16\10\00\01\00\00\00\c8\16\10\00\01\00\00\00index out of bounds: the len is  but the index is \00\00\e4\16\10\00 \00\00\00\04\17\10\00\12\00\00\00called `Option::unwrap()` on a `None` valuesrc/libcore/option.rsS\17\10\00\15\00\00\00}\01\00\00\15\00\00\00\90\16\10\00\00\00\00\00S\17\10\00\15\00\00\00\a4\04\00\00\05\00\00\00: \00\00\90\16\10\00\00\00\00\00\90\17\10\00\02\00\00\00src/libcore/result.rs\00\00\00\a4\17\10\00\15\00\00\00\a4\04\00\00\05\00\00\00src/libcore/slice/mod.rsindex  out of range for slice of length \e4\17\10\00\06\00\00\00\ea\17\10\00\22\00\00\00\cc\17\10\00\18\00\00\00r\0a\00\00\05\00\00\00slice index starts at  but ends at \00,\18\10\00\16\00\00\00B\18\10\00\0d\00\00\00\cc\17\10\00\18\00\00\00x\0a\00\00\05\00\00\00attempted to index slice up to maximum usize\cc\17\10\00\18\00\00\00~\0a\00\00\05\00\00\00assertion failed: broken.is_empty()src/libcore/str/lossy.rs\00\cf\18\10\00\18\00\00\00\9b\00\00\00\11\00\00\00)src/libcore/str/mod.rs\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\04\04\04\04\04\00\00\00\00\00\00\00\00\00\00\00[...]byte index  is out of bounds of `\00\00\00\14\1a\10\00\0b\00\00\00\1f\1a\10\00\16\00\00\00\90\16\10\00\01\00\00\00\f9\18\10\00\16\00\00\00\04\08\00\00\09\00\00\00begin <= end ( <= ) when slicing `\00\00`\1a\10\00\0e\00\00\00n\1a\10\00\04\00\00\00r\1a\10\00\10\00\00\00\90\16\10\00\01\00\00\00\f9\18\10\00\16\00\00\00\08\08\00\00\05\00\00\00 is not a char boundary; it is inside  (bytes ) of `\14\1a\10\00\0b\00\00\00\b4\1a\10\00&\00\00\00\da\1a\10\00\08\00\00\00\e2\1a\10\00\06\00\00\00\90\16\10\00\01\00\00\00\f9\18\10\00\16\00\00\00\15\08\00\00\05\00\00\00[\00\00\00\0c\00\00\00\04\00\00\00\5c\00\00\00]\00\00\00^\00\00\00     {\0a,\0a,  { } }(\0a(,\0a[\00_\00\00\00\04\00\00\00\04\00\00\00`\00\00\00]0x00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899\00_\00\00\00\04\00\00\00\04\00\00\00a\00\00\00b\00\00\00c\00\00\00src/libcore/fmt/mod.rs\00\00D\1c\10\00\16\00\00\00S\04\00\00(\00\00\00D\1c\10\00\16\00\00\00^\04\00\00(\00\00\00src/libcore/unicode/bool_trie.rs|\1c\10\00 \00\00\00'\00\00\00\19\00\00\00|\1c\10\00 \00\00\00(\00\00\00 \00\00\00|\1c\10\00 \00\00\00*\00\00\00\19\00\00\00|\1c\10\00 \00\00\00+\00\00\00\18\00\00\00|\1c\10\00 \00\00\00,\00\00\00 \00\00\00\00\01\03\05\05\06\06\03\07\06\08\08\09\11\0a\1c\0b\19\0c\14\0d\12\0e\0d\0f\04\10\03\12\12\13\09\16\01\17\05\18\02\19\03\1a\07\1c\02\1d\01\1f\16 \03+\04,\02-\0b.\010\031\022\01\a7\02\a9\02\aa\04\ab\08\fa\02\fb\05\fd\04\fe\03\ff\09\adxy\8b\8d\a20WX\8b\8c\90\1c\1d\dd\0e\0fKL\fb\fc./?\5c]_\b5\e2\84\8d\8e\91\92\a9\b1\ba\bb\c5\c6\c9\ca\de\e4\e5\ff\00\04\11\12)147:;=IJ]\84\8e\92\a9\b1\b4\ba\bb\c6\ca\ce\cf\e4\e5\00\04\0d\0e\11\12)14:;EFIJ^de\84\91\9b\9d\c9\ce\cf\0d\11)EIWde\8d\91\a9\b4\ba\bb\c5\c9\df\e4\e5\f0\04\0d\11EIde\80\81\84\b2\bc\be\bf\d5\d7\f0\f1\83\85\8b\a4\a6\be\bf\c5\c7\ce\cf\da\dbH\98\bd\cd\c6\ce\cfINOWY^_\89\8e\8f\b1\b6\b7\bf\c1\c6\c7\d7\11\16\17[\5c\f6\f7\fe\ff\80\0dmq\de\df\0e\0f\1fno\1c\1d_}~\ae\af\bb\bc\fa\16\17\1e\1fFGNOXZ\5c^~\7f\b5\c5\d4\d5\dc\f0\f1\f5rs\8ftu\96\97/_&./\a7\af\b7\bf\c7\cf\d7\df\9a@\97\980\8f\1f\c0\c1\ce\ffNOZ[\07\08\0f\10'/\ee\efno7=?BE\90\91\fe\ffSgu\c8\c9\d0\d1\d8\d9\e7\fe\ff\00 _\22\82\df\04\82D\08\1b\04\06\11\81\ac\0e\80\ab5\1e\15\80\e0\03\19\08\01\04/\044\04\07\03\01\07\06\07\11\0aP\0f\12\07U\08\02\04\1c\0a\09\03\08\03\07\03\02\03\03\03\0c\04\05\03\0b\06\01\0e\15\05:\03\11\07\06\05\10\07W\07\02\07\15\0dP\04C\03-\03\01\04\11\06\0f\0c:\04\1d%_ m\04j%\80\c8\05\82\b0\03\1a\06\82\fd\03Y\07\15\0b\17\09\14\0c\14\0cj\06\0a\06\1a\06Y\07+\05F\0a,\04\0c\04\01\031\0b,\04\1a\06\0b\03\80\ac\06\0a\06\1fAL\04-\03t\08<\03\0f\03<\078\08+\05\82\ff\11\18\08/\11-\03 \10!\0f\80\8c\04\82\97\19\0b\15\88\94\05/\05;\07\02\0e\18\09\80\b00t\0c\80\d6\1a\0c\05\80\ff\05\80\b6\05$\0c\9b\c6\0a\d20\10\84\8d\037\09\81\5c\14\80\b8\08\80\c705\04\0a\068\08F\08\0c\06t\0b\1e\03Z\04Y\09\80\83\18\1c\0a\16\09H\08\80\8a\06\ab\a4\0c\17\041\a1\04\81\da&\07\0c\05\05\80\a5\11\81m\10x(*\06L\04\80\8d\04\80\be\03\1b\03\0f\0d\00\06\01\01\03\01\04\02\08\08\09\02\0a\05\0b\02\10\01\11\04\12\05\13\11\14\02\15\02\17\02\19\04\1c\05\1d\08$\01j\03k\02\bc\02\d1\02\d4\0c\d5\09\d6\02\d7\02\da\01\e0\05\e1\02\e8\02\ee \f0\04\f9\06\fa\02\0c';>NO\8f\9e\9e\9f\06\07\096=>V\f3\d0\d1\04\14\1867VW\bd5\ce\cf\e0\12\87\89\8e\9e\04\0d\0e\11\12)14:EFIJNOdeZ\5c\b6\b7\1b\1c\a8\a9\d8\d9\097\90\91\a8\07\0a;>fi\8f\92o_\ee\efZb\9a\9b'(U\9d\a0\a1\a3\a4\a7\a8\ad\ba\bc\c4\06\0b\0c\15\1d:?EQ\a6\a7\cc\cd\a0\07\19\1a\22%>?\c5\c6\04 #%&(38:HJLPSUVXZ\5c^`cefksx}\7f\8a\a4\aa\af\b0\c0\d0\0cr\a3\a4\cb\ccno^\22{\05\03\04-\03e\04\01/.\80\82\1d\031\0f\1c\04$\09\1e\05+\05D\04\0e*\80\aa\06$\04$\04(\084\0b\01\80\90\817\09\16\0a\08\80\989\03c\08\090\16\05!\03\1b\05\01@8\04K\05/\04\0a\07\09\07@ '\04\0c\096\03:\05\1a\07\04\0c\07PI73\0d3\07.\08\0a\81&\1f\80\81(\08*\80\86\17\09N\04\1e\0fC\0e\19\07\0a\06G\09'\09u\0b?A*\06;\05\0a\06Q\06\01\05\10\03\05\80\8b` H\08\0a\80\a6^\22E\0b\0a\06\0d\139\07\0a6,\04\10\80\c0<dS\0c\01\80\a0E\1bH\08S\1d9\81\07F\0a\1d\03GI7\03\0e\08\0a\069\07\0a\816\19\80\c72\0d\83\9bfu\0b\80\c4\8a\bc\84/\8f\d1\82G\a1\b9\829\07*\04\02`&\0aF\0a(\05\13\82\b0[eK\049\07\11@\04\1c\97\f8\08\82\f3\a5\0d\81\1f1\03\11\04\08\81\8c\89\04k\05\0d\03\09\07\10\93`\80\f6\0as\08n\17F\80\9a\14\0cW\09\19\80\87\81G\03\85B\0f\15\85P+\80\d5-\03\1a\04\02\81p:\05\01\85\00\80\d7)L\04\0a\04\02\83\11DL=\80\c2<\06\01\04U\05\1b4\02\81\0e,\04d\0cV\0a\0d\03]\03=9\1d\0d,\04\09\07\02\0e\06\80\9a\83\d6\0a\0d\03\0b\05t\0cY\07\0c\14\0c\048\08\0a\06(\08\1eRw\031\03\80\a6\0c\14\04\03\05\03\0d\06\85j\00\00\00\00\00\00\00\00\00\c0\fb\ef>\00\00\00\00\00\0e\00\00\00\00\00\00\00\00\00\00\00\00\00\00\f8\ff\fb\ff\ff\ff\07\00\00\00\00\00\00\14\fe!\fe\00\0c\00\00\00\02\00\00\00\00\00\00P\1e \80\00\0c\00\00@\06\00\00\00\00\00\00\10\869\02\00\00\00#\00\be!\00\00\0c\00\00\fc\02\00\00\00\00\00\00\d0\1e \c0\00\0c\00\00\00\04\00\00\00\00\00\00@\01 \80\00\00\00\00\00\11\00\00\00\00\00\00\c0\c1=`\00\0c\00\00\00\02\00\00\00\00\00\00\90D0`\00\0c\00\00\00\03\00\00\00\00\00\00X\1e \80\00\0c\00\00\00\00\84\5c\80\00\00\00\00\00\00\00\00\00\00\f2\07\80\7f\00\00\00\00\00\00\00\00\00\00\00\00\f2\1f\00?\00\00\00\00\00\00\00\00\00\03\00\00\a0\02\00\00\00\00\00\00\fe\7f\df\e0\ff\fe\ff\ff\ff\1f@\00\00\00\00\00\00\00\00\00\00\00\00\e0\fdf\00\00\00\c3\01\00\1e\00d \00 \00\00\00\00\00\00\00\e0\00\00\00\00\00\00\1c\00\00\00\1c\00\00\00\0c\00\00\00\0c\00\00\00\00\00\00\00\b0?@\fe\0f \00\00\00\00\008\00\00\00\00\00\00`\00\00\00\00\02\00\00\00\00\00\00\87\01\04\0e\00\00\80\09\00\00\00\00\00\00@\7f\e5\1f\f8\9f\00\00\00\00\00\00\ff\7f\0f\00\00\00\00\00\f0\17\04\00\00\00\00\f8\0f\00\03\00\00\00<;\00\00\00\00\00\00@\a3\03\00\00\00\00\00\00\f0\cf\00\00\00\f7\ff\fd!\10\03\ff\ff\ff\ff\ff\ff\ff\fb\00\10\00\00\00\00\00\00\00\00\ff\ff\ff\ff\01\00\00\00\00\00\00\80\03\00\00\00\00\00\00\00\00\80\00\00\00\00\ff\ff\ff\ff\00\00\00\00\00\fc\00\00\00\00\00\06\00\00\00\00\00\00\00\00\00\80\f7?\00\00\00\c0\00\00\00\00\00\00\00\00\00\00\03\00D\08\00\00`\00\00\000\00\00\00\ff\ff\03\80\00\00\00\00\c0?\00\00\80\ff\03\00\00\00\00\00\07\00\00\00\00\00\c83\00\00\00\00 \00\00\00\00\00\00\00\00~f\00\08\10\00\00\00\00\00\10\00\00\00\00\00\00\9d\c1\02\00\00\00\000@\00\00\00\00\00 !\00\00\00\00\00@\00\00\00\00\ff\ff\00\00\ff\ff\00\00\00\00\00\00\00\00\00\01\00\00\00\02\00\03\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\04\00\00\05\00\00\00\00\00\00\00\00\06\00\00\00\00\00\00\00\00\07\00\00\08\09\0a\00\0b\0c\0d\0e\0f\00\00\10\11\12\00\00\13\14\15\16\00\00\17\18\19\1a\1b\00\1c\00\00\00\1d\00\00\00\00\00\00\1e\1f !\00\00\00\00\00\22\00#\00$%&\00\00\00\00'\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00()\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00*+\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00,\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00-.\00\00/\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00012\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\003\00\00\00)\00\00\00\00\00\004\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\005\006\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\0078\00\008889\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00 \00\00\00\00\01\00\00\00\00\00\00\00\00\00\c0\07n\f0\00\00\00\00\00\87\00\00\00\00`\00\00\00\00\00\00\00\f0\00\00\00\c0\ff\01\00\00\00\00\00\02\00\00\00\00\00\00\ff\7f\00\00\00\00\00\00\80\03\00\00\00\00\00x\06\07\00\00\00\80\ef\1f\00\00\00\00\00\00\00\08\00\03\00\00\00\00\00\c0\7f\00\1e\00\00\00\00\00\00\00\00\00\00\00\80\d3@\00\00\00\80\f8\07\00\00\03\00\00\00\00\00\00X\01\00\80\00\c0\1f\1f\00\00\00\00\00\00\00\00\ff\5c\00\00@\00\00\00\00\00\00\00\00\00\00\f9\a5\0d\00\00\00\00\00\00\00\00\00\00\00\00\80<\b0\01\00\000\00\00\00\00\00\00\00\00\00\00\f8\a7\01\00\00\00\00\00\00\00\00\00\00\00\00(\bf\00\00\00\00\e0\bc\0f\00\00\00\00\00\00\00\80\ff\06\00\00\f0\0c\01\00\00\00\fe\07\00\00\00\00\f8y\80\00~\0e\00\00\00\00\00\fc\7f\03\00\00\00\00\00\00\00\00\00\00\7f\bf\00\00\fc\ff\ff\fcm\00\00\00\00\00\00\00~\b4\bf\00\00\00\00\00\00\00\00\00\a3\00\00\00\00\00\00\00\00\00\00\00\18\00\00\00\00\00\00\00\1f\00\00\00\00\00\00\00\7f\00\00\80\00\00\00\00\00\00\00\80\07\00\00\00\00\00\00\00\00`\00\00\00\00\00\00\00\00\a0\c3\07\f8\e7\0f\00\00\00<\00\00\1c\00\00\00\00\00\00\00\ff\ff\ff\ff\ff\ff\7f\f8\ff\ff\ff\ff\ff\1f \00\10\00\00\f8\fe\ff\00\00\7f\ff\ff\f9\db\07\00\00\00\00\00\00\00\f0\00\00\00\00\7f\00\00\00\00\00\f0\07\00\00\00\00\00\00\00\00\00\00\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\f8\03\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\fe\ff\ff\ff\ff\bf\b6\00\00\00\00\00\00\00\00\00\ff\07\00\00\00\00\00\f8\ff\ff\00\00\01\00\00\00\00\00\00\00\00\00\00\00\c0\9f\9f=\00\00\00\00\02\00\00\00\ff\ff\ff\07\00\00\00\00\00\00\00\00\00\00\c0\ff\01\00\00\00\00\00\00\f8\0f (\22\10\00J\00\00\00x$\10\00\00\02\00\00x&\10\00:\00\00\00\00\01\02\03\04\05\06\07\08\09\08\0a\0b\0c\0d\0e\0f\10\11\12\13\14\02\15\16\17\18\19\1a\1b\1c\1d\1e\1f \02\02\02\02\02\02\02\02\02\02!\02\02\02\02\02\02\02\02\02\02\02\02\02\02\22#$%&\02'\02(\02\02\02)*+\02,-./0\02\021\02\02\022\02\02\02\02\02\02\02\023\02\024\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\025\026\027\02\02\02\02\02\02\02\028\029\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02:;<\02\02\02\02=\02\02>?@ABCDEF\02\02\02G\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02H\02\02\02\02\02\02\02\02\02\02\02I\02\02\02\02\02;\02\00\01\02\02\02\02\03\02\02\02\02\04\02\05\06\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\07\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02_\00\00\00\04\00\00\00\04\00\00\00d\00\00\00SomeNoneUtf8Errorvalid_up_toerror_len\00\00\00_\00\00\00\04\00\00\00\04\00\00\00e\00\00\00")
  (data $d1 (i32.const 1060488) "\01\00\00\00\00\00\00\00\01\00\00\00\f40\10\00")
  (data $d2 (i32.const 1060504) "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00"))

(module
  (type $t0 (func (param i32 i32 i32) (result i32)))
  (type $t1 (func (param i32 i64 i32) (result i64)))
  (type $t2 (func (param i32 i32) (result i32)))
  (type $t3 (func (param i32)))
  (type $t4 (func (param i32) (result i32)))
  (type $t5 (func (param i32 i64 i32 i32) (result i32)))
  (type $t6 (func (param i32 i32 i32 i32) (result i32)))
  (type $t7 (func))
  (type $t8 (func (result i32)))
  (type $t9 (func (param i32 i32 i32)))
  (type $t10 (func (param i32 i32 i32 i32 i32) (result i32)))
  (type $t11 (func (param f64 i32) (result f64)))
  (import "wasi_unstable" "fd_prestat_get" (func $__wasi_fd_prestat_get (type $t2)))
  (import "wasi_unstable" "fd_prestat_dir_name" (func $__wasi_fd_prestat_dir_name (type $t0)))
  (import "wasi_unstable" "proc_exit" (func $__wasi_proc_exit (type $t3)))
  (import "wasi_unstable" "fd_fdstat_get" (func $__wasi_fd_fdstat_get (type $t2)))
  (import "wasi_unstable" "fd_close" (func $__wasi_fd_close (type $t4)))
  (import "wasi_unstable" "args_sizes_get" (func $__wasi_args_sizes_get (type $t2)))
  (import "wasi_unstable" "args_get" (func $__wasi_args_get (type $t2)))
  (import "wasi_unstable" "fd_seek" (func $__wasi_fd_seek (type $t5)))
  (import "wasi_unstable" "fd_write" (func $__wasi_fd_write (type $t6)))
  (func $__wasm_call_ctors (type $t7))
  (func $undefined:__wasilibc_populate_environ (type $t8) (result i32)
    unreachable)
  (func $_start (type $t7)
    (local $l0 i32) (local $l1 i32) (local $l2 i32) (local $l3 i32)
    global.get $g0
    i32.const 16
    i32.sub
    local.tee $l0
    global.set $g0
    call $__wasilibc_init_preopen
    i32.const 3
    local.set $l1
    block $B0
      loop $L1
        local.get $l1
        local.get $l0
        i32.const 8
        i32.add
        call $__wasi_fd_prestat_get
        local.tee $l2
        i32.const 8
        i32.gt_u
        br_if $B0
        block $B2
          block $B3
            local.get $l2
            br_table $B3 $B0 $B0 $B0 $B0 $B0 $B0 $B0 $B2 $B3
          end
          block $B4
            local.get $l0
            i32.load8_u offset=8
            br_if $B4
            local.get $l0
            i32.load offset=12
            local.tee $l3
            i32.const 1
            i32.add
            call $malloc
            local.tee $l2
            i32.eqz
            br_if $B0
            block $B5
              local.get $l1
              local.get $l2
              local.get $l3
              call $__wasi_fd_prestat_dir_name
              i32.eqz
              br_if $B5
              local.get $l2
              call $free
              br $B0
            end
            local.get $l2
            local.get $l0
            i32.load offset=12
            i32.add
            i32.const 0
            i32.store8
            local.get $l1
            local.get $l2
            call $__wasilibc_register_preopened_fd
            local.set $l3
            local.get $l2
            call $free
            local.get $l3
            br_if $B0
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
          br_if $L1
        end
      end
      block $B6
        block $B7
          block $B8
            i32.const 0
            i32.eqz
            br_if $B8
            call $undefined:__wasilibc_populate_environ
            br_if $B7
          end
          call $__wasm_call_ctors
          call $__original_main
          local.set $l1
          call $__prepare_for_exit
          local.get $l1
          br_if $B6
          local.get $l0
          i32.const 16
          i32.add
          global.set $g0
          return
        end
        i32.const 71
        call $_Exit
        unreachable
      end
      local.get $l1
      call $_Exit
      unreachable
    end
    i32.const 71
    call $_Exit
    unreachable)
  (func $leaf (type $t9) (param $p0 i32) (param $p1 i32) (param $p2 i32)
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
    call $puts
    drop
    local.get $l3
    i32.const 0
    i32.load offset=3640
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
    call $printf
    drop
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
    i32.const 64
    i32.add
    call $printf
    drop
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
    call $printf
    drop
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
    call $printf
    drop
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
    call $printf
    drop
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
    call $printf
    drop
    local.get $l3
    i32.const 96
    i32.add
    global.set $g0)
  (func $intermediate (type $t3) (param $p0 i32)
    (local $l1 i32) (local $l2 i32)
    global.get $g0
    i32.const 64
    i32.sub
    local.tee $l1
    global.set $g0
    local.get $l1
    i32.const 23
    i32.add
    i32.const 0
    i64.load offset=1198 align=1
    i64.store align=1
    local.get $l1
    i32.const 16
    i32.add
    i32.const 0
    i64.load offset=1191 align=1
    i64.store
    local.get $l1
    i32.const 0
    i64.load offset=1183 align=1
    i64.store offset=8
    local.get $l1
    i32.const 0
    i64.load offset=1175 align=1
    i64.store
    i32.const 64
    call $malloc
    local.tee $l2
    i32.const 32
    i32.add
    i32.const 0
    i32.load offset=1238 align=1
    i32.store align=1
    local.get $l2
    i32.const 24
    i32.add
    i32.const 0
    i64.load offset=1230 align=1
    i64.store align=1
    local.get $l2
    i32.const 16
    i32.add
    i32.const 0
    i64.load offset=1222 align=1
    i64.store align=1
    local.get $l2
    i32.const 8
    i32.add
    i32.const 0
    i64.load offset=1214 align=1
    i64.store align=1
    local.get $l2
    i32.const 0
    i64.load offset=1206 align=1
    i64.store align=1
    i32.const 1254
    call $puts
    drop
    local.get $p0
    local.get $l1
    local.get $l2
    call $leaf
    local.get $l1
    i32.const 64
    i32.add
    global.set $g0)
  (func $main (type $t2) (param $p0 i32) (param $p1 i32) (result i32)
    i32.const 1274
    call $puts
    drop
    local.get $p1
    i32.load
    call $intermediate
    i32.const 0)
  (func $malloc (type $t4) (param $p0 i32) (result i32)
    local.get $p0
    call $dlmalloc)
  (func $dlmalloc (type $t4) (param $p0 i32) (result i32)
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
                              i32.load offset=3888
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
                              i32.const 3936
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
                                  i32.const 3928
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
                                  i32.store offset=3888
                                  br $B13
                                end
                                i32.const 0
                                i32.load offset=3904
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
                            i32.load offset=3896
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
                                  i32.const 3936
                                  i32.add
                                  i32.load
                                  local.tee $l4
                                  i32.load offset=8
                                  local.tee $p0
                                  local.get $l5
                                  i32.const 3928
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
                                  i32.store offset=3888
                                  br $B16
                                end
                                i32.const 0
                                i32.load offset=3904
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
                                i32.const 3928
                                i32.add
                                local.set $l3
                                i32.const 0
                                i32.load offset=3908
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
                                    i32.store offset=3888
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
                              i32.store offset=3908
                              i32.const 0
                              local.get $l6
                              i32.store offset=3896
                              br $B0
                            end
                            i32.const 0
                            i32.load offset=3892
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
                            i32.const 4192
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
                                i32.load offset=3904
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
                          i32.load offset=3892
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
                                  i32.const 4192
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
                                i32.const 4192
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
                          i32.load offset=3896
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
                              i32.load offset=3904
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
                          i32.load offset=3896
                          local.tee $p0
                          local.get $l3
                          i32.lt_u
                          br_if $B42
                          i32.const 0
                          i32.load offset=3908
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
                              i32.store offset=3896
                              i32.const 0
                              local.get $l5
                              i32.store offset=3908
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
                            i32.store offset=3908
                            i32.const 0
                            i32.const 0
                            i32.store offset=3896
                          end
                          local.get $l4
                          i32.const 8
                          i32.add
                          local.set $p0
                          br $B0
                        end
                        block $B45
                          i32.const 0
                          i32.load offset=3900
                          local.tee $l5
                          local.get $l3
                          i32.le_u
                          br_if $B45
                          i32.const 0
                          i32.load offset=3912
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
                          i32.store offset=3900
                          i32.const 0
                          local.get $l4
                          i32.store offset=3912
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
                            i32.load offset=4360
                            i32.eqz
                            br_if $B47
                            i32.const 0
                            i32.load offset=4368
                            local.set $l4
                            br $B46
                          end
                          i32.const 0
                          i64.const -1
                          i64.store offset=4372 align=4
                          i32.const 0
                          i64.const 281474976776192
                          i64.store offset=4364 align=4
                          i32.const 0
                          local.get $l1
                          i32.const 12
                          i32.add
                          i32.const -16
                          i32.and
                          i32.const 1431655768
                          i32.xor
                          i32.store offset=4360
                          i32.const 0
                          i32.const 0
                          i32.store offset=4380
                          i32.const 0
                          i32.const 0
                          i32.store offset=4332
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
                          i32.store offset=4384
                          br $B0
                        end
                        block $B49
                          i32.const 0
                          i32.load offset=4328
                          local.tee $p0
                          i32.eqz
                          br_if $B49
                          block $B50
                            i32.const 0
                            i32.load offset=4320
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
                          i32.store offset=4384
                          br $B0
                        end
                        i32.const 0
                        i32.load8_u offset=4332
                        i32.const 4
                        i32.and
                        br_if $B5
                        block $B51
                          block $B52
                            block $B53
                              i32.const 0
                              i32.load offset=3912
                              local.tee $l4
                              i32.eqz
                              br_if $B53
                              i32.const 4336
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
                              i32.load offset=4364
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
                              i32.load offset=4328
                              local.tee $p0
                              i32.eqz
                              br_if $B57
                              i32.const 0
                              i32.load offset=4320
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
                          i32.load offset=4368
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
                i32.load offset=4332
                i32.const 4
                i32.or
                i32.store offset=4332
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
            i32.load offset=4320
            local.get $l2
            i32.add
            local.tee $p0
            i32.store offset=4320
            block $B60
              local.get $p0
              i32.const 0
              i32.load offset=4324
              i32.le_u
              br_if $B60
              i32.const 0
              local.get $p0
              i32.store offset=4324
            end
            block $B61
              block $B62
                block $B63
                  block $B64
                    i32.const 0
                    i32.load offset=3912
                    local.tee $l4
                    i32.eqz
                    br_if $B64
                    i32.const 4336
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
                      i32.load offset=3904
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
                    i32.store offset=3904
                  end
                  i32.const 0
                  local.set $p0
                  i32.const 0
                  local.get $l2
                  i32.store offset=4340
                  i32.const 0
                  local.get $l5
                  i32.store offset=4336
                  i32.const 0
                  i32.const -1
                  i32.store offset=3920
                  i32.const 0
                  i32.const 0
                  i32.load offset=4360
                  i32.store offset=3924
                  i32.const 0
                  i32.const 0
                  i32.store offset=4348
                  loop $L68
                    local.get $p0
                    i32.const 3936
                    i32.add
                    local.get $p0
                    i32.const 3928
                    i32.add
                    local.tee $l4
                    i32.store
                    local.get $p0
                    i32.const 3940
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
                  i32.load offset=4376
                  i32.store offset=3916
                  i32.const 0
                  local.get $p0
                  i32.store offset=3900
                  i32.const 0
                  local.get $l4
                  i32.store offset=3912
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
                i32.load offset=3900
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
                i32.load offset=4376
                i32.store offset=3916
                i32.const 0
                local.get $l6
                i32.store offset=3900
                i32.const 0
                local.get $l5
                i32.store offset=3912
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
                i32.load offset=3904
                local.tee $l8
                i32.ge_u
                br_if $B69
                i32.const 0
                local.get $l5
                i32.store offset=3904
                local.get $l5
                local.set $l8
              end
              local.get $l5
              local.get $l2
              i32.add
              local.set $l6
              i32.const 4336
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
                        i32.const 4336
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
                        i32.store offset=3912
                        i32.const 0
                        i32.const 0
                        i32.load offset=3900
                        local.get $p0
                        i32.add
                        local.tee $p0
                        i32.store offset=3900
                        local.get $l6
                        local.get $p0
                        i32.const 1
                        i32.or
                        i32.store offset=4
                        br $B71
                      end
                      block $B81
                        i32.const 0
                        i32.load offset=3908
                        local.get $l5
                        i32.ne
                        br_if $B81
                        i32.const 0
                        local.get $l6
                        i32.store offset=3908
                        i32.const 0
                        i32.const 0
                        i32.load offset=3896
                        local.get $p0
                        i32.add
                        local.tee $p0
                        i32.store offset=3896
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
                              i32.const 3928
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
                              i32.load offset=3888
                              i32.const -2
                              local.get $l9
                              i32.rotl
                              i32.and
                              i32.store offset=3888
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
                              i32.const 4192
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
                              i32.load offset=3892
                              i32.const -2
                              local.get $l3
                              i32.rotl
                              i32.and
                              i32.store offset=3892
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
                        i32.const 3928
                        i32.add
                        local.set $p0
                        block $B97
                          block $B98
                            i32.const 0
                            i32.load offset=3888
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
                            i32.store offset=3888
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
                      i32.const 4192
                      i32.add
                      local.set $l3
                      block $B100
                        i32.const 0
                        i32.load offset=3892
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
                        i32.store offset=3892
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
                    i32.load offset=4376
                    i32.store offset=3916
                    i32.const 0
                    local.get $p0
                    i32.store offset=3900
                    i32.const 0
                    local.get $l11
                    i32.store offset=3912
                    local.get $l8
                    i32.const 16
                    i32.add
                    i32.const 0
                    i64.load offset=4344 align=4
                    i64.store align=4
                    local.get $l8
                    i32.const 0
                    i64.load offset=4336 align=4
                    i64.store offset=8 align=4
                    i32.const 0
                    local.get $l8
                    i32.const 8
                    i32.add
                    i32.store offset=4344
                    i32.const 0
                    local.get $l2
                    i32.store offset=4340
                    i32.const 0
                    local.get $l5
                    i32.store offset=4336
                    i32.const 0
                    i32.const 0
                    i32.store offset=4348
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
                      i32.const 3928
                      i32.add
                      local.set $p0
                      block $B104
                        block $B105
                          i32.const 0
                          i32.load offset=3888
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
                          i32.store offset=3888
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
                    i32.const 4192
                    i32.add
                    local.set $l6
                    block $B107
                      i32.const 0
                      i32.load offset=3892
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
                      i32.store offset=3892
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
            i32.load offset=3900
            local.tee $p0
            local.get $l3
            i32.le_u
            br_if $B3
            i32.const 0
            i32.load offset=3912
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
            i32.store offset=3900
            i32.const 0
            local.get $l6
            i32.store offset=3912
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
          i32.store offset=4384
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
              i32.const 4192
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
              i32.store offset=3892
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
            i32.const 3928
            i32.add
            local.set $p0
            block $B116
              block $B117
                i32.const 0
                i32.load offset=3888
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
                i32.store offset=3888
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
          i32.const 4192
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
            i32.store offset=3892
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
            i32.const 4192
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
            i32.store offset=3892
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
          i32.const 3928
          i32.add
          local.set $l3
          i32.const 0
          i32.load offset=3908
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
              i32.store offset=3888
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
        i32.store offset=3908
        i32.const 0
        local.get $l4
        i32.store offset=3896
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
  (func $free (type $t3) (param $p0 i32)
    local.get $p0
    call $dlfree)
  (func $dlfree (type $t3) (param $p0 i32)
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
        i32.load offset=3904
        local.tee $l4
        i32.lt_u
        br_if $B0
        local.get $l2
        local.get $p0
        i32.add
        local.set $p0
        block $B2
          i32.const 0
          i32.load offset=3908
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
              i32.const 3928
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
              i32.load offset=3888
              i32.const -2
              local.get $l7
              i32.rotl
              i32.and
              i32.store offset=3888
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
              i32.const 4192
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
              i32.load offset=3892
              i32.const -2
              local.get $l4
              i32.rotl
              i32.and
              i32.store offset=3892
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
        i32.store offset=3896
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
            i32.load offset=3912
            local.get $l3
            i32.ne
            br_if $B17
            i32.const 0
            local.get $l1
            i32.store offset=3912
            i32.const 0
            i32.const 0
            i32.load offset=3900
            local.get $p0
            i32.add
            local.tee $p0
            i32.store offset=3900
            local.get $l1
            local.get $p0
            i32.const 1
            i32.or
            i32.store offset=4
            local.get $l1
            i32.const 0
            i32.load offset=3908
            i32.ne
            br_if $B0
            i32.const 0
            i32.const 0
            i32.store offset=3896
            i32.const 0
            i32.const 0
            i32.store offset=3908
            return
          end
          block $B18
            i32.const 0
            i32.load offset=3908
            local.get $l3
            i32.ne
            br_if $B18
            i32.const 0
            local.get $l1
            i32.store offset=3908
            i32.const 0
            i32.const 0
            i32.load offset=3896
            local.get $p0
            i32.add
            local.tee $p0
            i32.store offset=3896
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
                i32.const 3928
                i32.add
                local.tee $l2
                i32.eq
                br_if $B21
                i32.const 0
                i32.load offset=3904
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
                i32.load offset=3888
                i32.const -2
                local.get $l3
                i32.rotl
                i32.and
                i32.store offset=3888
                br $B19
              end
              block $B23
                local.get $l4
                local.get $l2
                i32.eq
                br_if $B23
                i32.const 0
                i32.load offset=3904
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
                  i32.load offset=3904
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
                i32.const 4192
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
                i32.load offset=3892
                i32.const -2
                local.get $l4
                i32.rotl
                i32.and
                i32.store offset=3892
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
          i32.load offset=3908
          i32.ne
          br_if $B15
          i32.const 0
          local.get $p0
          i32.store offset=3896
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
        i32.const 3928
        i32.add
        local.set $p0
        block $B33
          block $B34
            i32.const 0
            i32.load offset=3888
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
            i32.store offset=3888
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
      i32.const 4192
      i32.add
      local.set $l4
      block $B36
        block $B37
          i32.const 0
          i32.load offset=3892
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
          i32.store offset=3892
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
      i32.load offset=3920
      i32.const -1
      i32.add
      local.tee $l1
      i32.store offset=3920
      local.get $l1
      br_if $B0
      i32.const 4344
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
      i32.store offset=3920
    end)
  (func $calloc (type $t2) (param $p0 i32) (param $p1 i32) (result i32)
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
  (func $_Exit (type $t3) (param $p0 i32)
    local.get $p0
    call $__wasi_proc_exit
    unreachable)
  (func $abort (type $t7)
    unreachable
    unreachable)
  (func $close (type $t4) (param $p0 i32) (result i32)
    block $B0
      local.get $p0
      call $__wasi_fd_close
      local.tee $p0
      br_if $B0
      i32.const 0
      return
    end
    i32.const 0
    local.get $p0
    i32.store offset=4384
    i32.const -1)
  (func $po_map_assertvalid (type $t3) (param $p0 i32)
    (local $l1 i32) (local $l2 i32)
    block $B0
      block $B1
        local.get $p0
        i32.load
        i32.const 0
        i32.le_s
        br_if $B1
        local.get $p0
        i32.load offset=12
        local.tee $l1
        local.get $p0
        i32.load offset=8
        local.tee $l2
        i32.gt_u
        br_if $B1
        local.get $p0
        i32.load offset=4
        local.set $p0
        block $B2
          local.get $l2
          i32.eqz
          br_if $B2
          local.get $p0
          i32.eqz
          br_if $B1
        end
        local.get $l1
        i32.eqz
        br_if $B0
        loop $L3
          local.get $p0
          i32.load
          i32.eqz
          br_if $B1
          local.get $p0
          i32.const 4
          i32.add
          i32.load
          i32.const -1
          i32.le_s
          br_if $B1
          local.get $p0
          i32.const 24
          i32.add
          local.set $p0
          local.get $l1
          i32.const -1
          i32.add
          local.tee $l1
          i32.eqz
          br_if $B0
          br $L3
        end
      end
      call $abort
      unreachable
    end)
  (func $__wasilibc_init_preopen (type $t7)
    (local $l0 i32) (local $l1 i32)
    block $B0
      block $B1
        i32.const 16
        call $malloc
        local.tee $l0
        i32.eqz
        br_if $B1
        local.get $l0
        i32.const 24
        i32.const 4
        call $calloc
        local.tee $l1
        i32.store offset=4
        local.get $l1
        br_if $B0
        local.get $l0
        call $free
      end
      i32.const 0
      i32.const 0
      i32.store offset=4388
      unreachable
      unreachable
    end
    local.get $l0
    i64.const 4
    i64.store offset=8 align=4
    local.get $l0
    i32.const 1
    i32.store
    local.get $l0
    call $po_map_assertvalid
    i32.const 0
    local.get $l0
    i32.store offset=4388
    local.get $l0
    call $po_map_assertvalid)
  (func $__wasilibc_register_preopened_fd (type $t2) (param $p0 i32) (param $p1 i32) (result i32)
    (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32)
    global.get $g0
    i32.const 32
    i32.sub
    local.tee $l2
    global.set $g0
    i32.const 0
    i32.load offset=4388
    call $po_map_assertvalid
    i32.const -1
    local.set $l3
    block $B0
      local.get $p1
      i32.eqz
      br_if $B0
      i32.const 0
      i32.load offset=4388
      local.tee $l4
      call $po_map_assertvalid
      local.get $p0
      i32.const 0
      i32.lt_s
      br_if $B0
      block $B1
        block $B2
          local.get $l4
          i32.load offset=12
          local.tee $l5
          local.get $l4
          i32.load offset=8
          i32.eq
          br_if $B2
          local.get $l4
          i32.load offset=4
          local.set $l6
          br $B1
        end
        i32.const 24
        local.get $l5
        i32.const 1
        i32.shl
        call $calloc
        local.tee $l6
        i32.eqz
        br_if $B0
        local.get $l6
        local.get $l4
        i32.load offset=4
        local.tee $l7
        local.get $l5
        i32.const 24
        i32.mul
        call $memcpy
        local.set $l5
        local.get $l7
        call $free
        local.get $l4
        local.get $l5
        i32.store offset=4
        local.get $l4
        local.get $l4
        i32.load offset=8
        i32.const 1
        i32.shl
        i32.store offset=8
        local.get $l4
        i32.load offset=12
        local.set $l5
      end
      local.get $l4
      local.get $l5
      i32.const 1
      i32.add
      i32.store offset=12
      local.get $p1
      call $strdup
      local.set $l7
      local.get $l6
      local.get $l5
      i32.const 24
      i32.mul
      i32.add
      local.tee $p1
      local.get $p0
      i32.store offset=4
      local.get $p1
      local.get $l7
      i32.store
      block $B3
        local.get $p0
        local.get $l2
        i32.const 8
        i32.add
        call $__wasi_fd_fdstat_get
        local.tee $p0
        i32.eqz
        br_if $B3
        i32.const 0
        local.get $p0
        i32.store offset=4384
        br $B0
      end
      local.get $p1
      local.get $l2
      i64.load offset=16
      i64.store offset=8
      local.get $p1
      local.get $l2
      i64.load offset=24
      i64.store offset=16
      local.get $l4
      call $po_map_assertvalid
      local.get $l4
      call $po_map_assertvalid
      i32.const 0
      local.set $l3
      i32.const 0
      local.get $l4
      i32.store offset=4388
    end
    local.get $l2
    i32.const 32
    i32.add
    global.set $g0
    local.get $l3)
  (func $sbrk (type $t4) (param $p0 i32) (result i32)
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
        i32.store offset=4384
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
  (func $__original_main (type $t8) (result i32)
    (local $l0 i32) (local $l1 i32) (local $l2 i32) (local $l3 i32)
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
              local.get $l0
              i32.const 8
              i32.add
              local.get $l0
              i32.const 12
              i32.add
              call $__wasi_args_sizes_get
              br_if $B4
              local.get $l0
              i32.load offset=8
              local.tee $l1
              i32.const 1
              i32.add
              local.tee $l2
              local.get $l1
              i32.lt_u
              br_if $B3
              local.get $l0
              i32.load offset=12
              call $malloc
              local.tee $l3
              i32.eqz
              br_if $B2
              local.get $l2
              i32.const 4
              call $calloc
              local.tee $l1
              i32.eqz
              br_if $B1
              local.get $l1
              local.get $l3
              call $__wasi_args_get
              br_if $B0
              local.get $l0
              i32.load offset=8
              local.get $l1
              call $main
              local.set $l1
              local.get $l0
              i32.const 16
              i32.add
              global.set $g0
              local.get $l1
              return
            end
            i32.const 71
            call $_Exit
            unreachable
          end
          i32.const 70
          call $_Exit
          unreachable
        end
        i32.const 70
        call $_Exit
        unreachable
      end
      local.get $l3
      call $free
      i32.const 70
      call $_Exit
      unreachable
    end
    local.get $l3
    call $free
    local.get $l1
    call $free
    i32.const 71
    call $_Exit
    unreachable)
  (func $dummy (type $t7))
  (func $__prepare_for_exit (type $t7)
    call $dummy
    call $__stdio_exit)
  (func $printf (type $t2) (param $p0 i32) (param $p1 i32) (result i32)
    (local $l2 i32)
    global.get $g0
    i32.const 16
    i32.sub
    local.tee $l2
    global.set $g0
    local.get $l2
    local.get $p1
    i32.store offset=12
    i32.const 3648
    local.get $p0
    local.get $p1
    call $vfprintf
    local.set $p1
    local.get $l2
    i32.const 16
    i32.add
    global.set $g0
    local.get $p1)
  (func $strerror (type $t4) (param $p0 i32) (result i32)
    (local $l1 i32) (local $l2 i32) (local $l3 i32) (local $l4 i32)
    i32.const 0
    local.set $l1
    block $B0
      i32.const 0
      i32.load offset=4416
      local.tee $l2
      br_if $B0
      i32.const 4392
      local.set $l2
      i32.const 0
      i32.const 4392
      i32.store offset=4416
    end
    block $B1
      block $B2
        block $B3
          loop $L4
            local.get $l1
            i32.const 1296
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
        i32.const 1376
        local.set $l4
        br $B1
      end
      i32.const 1376
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
  (func $vfprintf (type $t0) (param $p0 i32) (param $p1 i32) (param $p2 i32) (result i32)
    (local $l3 i32) (local $l4 i32) (local $l5 i32)
    global.get $g0
    i32.const 208
    i32.sub
    local.tee $l3
    global.set $g0
    local.get $l3
    local.get $p2
    i32.store offset=204
    local.get $l3
    i32.const 160
    i32.add
    i32.const 32
    i32.add
    i64.const 0
    i64.store
    local.get $l3
    i32.const 184
    i32.add
    i64.const 0
    i64.store
    local.get $l3
    i32.const 176
    i32.add
    i64.const 0
    i64.store
    local.get $l3
    i64.const 0
    i64.store offset=168
    local.get $l3
    i64.const 0
    i64.store offset=160
    local.get $l3
    local.get $p2
    i32.store offset=200
    block $B0
      block $B1
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
        call $printf_core
        i32.const 0
        i32.ge_s
        br_if $B1
        i32.const -1
        local.set $p0
        br $B0
      end
      local.get $p0
      i32.load
      local.set $l4
      block $B2
        local.get $p0
        i32.load offset=60
        i32.const 0
        i32.gt_s
        br_if $B2
        local.get $p0
        local.get $l4
        i32.const -33
        i32.and
        i32.store
      end
      block $B3
        block $B4
          block $B5
            block $B6
              local.get $p0
              i32.load offset=44
              br_if $B6
              local.get $p0
              i32.const 80
              i32.store offset=44
              local.get $p0
              i32.const 0
              i32.store offset=24
              local.get $p0
              i64.const 0
              i64.store offset=16
              local.get $p0
              i32.load offset=40
              local.set $l5
              local.get $p0
              local.get $l3
              i32.store offset=40
              br $B5
            end
            i32.const 0
            local.set $l5
            local.get $p0
            i32.load offset=16
            br_if $B4
          end
          i32.const -1
          local.set $p2
          local.get $p0
          call $__towrite
          br_if $B3
        end
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
        call $printf_core
        local.set $p2
      end
      local.get $l4
      i32.const 32
      i32.and
      local.set $p1
      block $B7
        local.get $l5
        i32.eqz
        br_if $B7
        local.get $p0
        i32.const 0
        i32.const 0
        local.get $p0
        i32.load offset=32
        call_indirect (type $t0) $T0
        drop
        local.get $p0
        i32.const 0
        i32.store offset=44
        local.get $p0
        local.get $l5
        i32.store offset=40
        local.get $p0
        i32.const 0
        i32.store offset=24
        local.get $p0
        i32.const 0
        i32.store offset=16
        local.get $p0
        i32.load offset=20
        local.set $l5
        local.get $p0
        i32.const 0
        i32.store offset=20
        local.get $p2
        i32.const -1
        local.get $l5
        select
        local.set $p2
      end
      local.get $p0
      local.get $p0
      i32.load
      local.tee $l5
      local.get $p1
      i32.or
      i32.store
      i32.const -1
      local.get $p2
      local.get $l5
      i32.const 32
      i32.and
      select
      local.set $p0
    end
    local.get $l3
    i32.const 208
    i32.add
    global.set $g0
    local.get $p0)
  (func $printf_core (type $t10) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32) (param $p4 i32) (result i32)
    (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32) (local $l9 i32) (local $l10 i32) (local $l11 i32) (local $l12 i32) (local $l13 i32) (local $l14 i32) (local $l15 i32) (local $l16 i32) (local $l17 i32) (local $l18 i32) (local $l19 i32) (local $l20 i32) (local $l21 i32) (local $l22 i32) (local $l23 i32) (local $l24 i32) (local $l25 i32) (local $l26 i32) (local $l27 i32) (local $l28 i32) (local $l29 i32) (local $l30 i64) (local $l31 i64) (local $l32 f64) (local $l33 i32) (local $l34 i32) (local $l35 f64) (local $l36 i32) (local $l37 i32) (local $l38 i32) (local $l39 i32)
    global.get $g0
    i32.const 880
    i32.sub
    local.tee $l5
    global.set $g0
    local.get $l5
    i32.const 336
    i32.add
    i32.const 8
    i32.or
    local.set $l6
    local.get $l5
    i32.const 55
    i32.add
    local.set $l7
    i32.const -2
    local.get $l5
    i32.const 336
    i32.add
    i32.sub
    local.set $l8
    local.get $l5
    i32.const 336
    i32.add
    i32.const 9
    i32.or
    local.set $l9
    local.get $l5
    i32.const 656
    i32.add
    local.set $l10
    local.get $l5
    i32.const 324
    i32.add
    i32.const 12
    i32.add
    local.set $l11
    i32.const 0
    local.get $l5
    i32.const 336
    i32.add
    i32.sub
    local.set $l12
    local.get $l5
    i32.const 56
    i32.add
    local.set $l13
    i32.const 0
    local.set $l14
    i32.const 0
    local.set $l15
    i32.const 0
    local.set $l16
    block $B0
      block $B1
        block $B2
          loop $L3
            local.get $p1
            local.set $l17
            local.get $l16
            i32.const 2147483647
            local.get $l15
            i32.sub
            i32.gt_s
            br_if $B2
            local.get $l16
            local.get $l15
            i32.add
            local.set $l15
            block $B4
              block $B5
                block $B6
                  block $B7
                    local.get $l17
                    i32.load8_u
                    local.tee $l16
                    i32.eqz
                    br_if $B7
                    local.get $l17
                    local.set $p1
                    loop $L8
                      block $B9
                        block $B10
                          block $B11
                            local.get $l16
                            i32.const 255
                            i32.and
                            local.tee $l16
                            i32.eqz
                            br_if $B11
                            local.get $l16
                            i32.const 37
                            i32.ne
                            br_if $B9
                            local.get $p1
                            local.set $l18
                            local.get $p1
                            local.set $l16
                            loop $L12
                              block $B13
                                local.get $l16
                                i32.const 1
                                i32.add
                                i32.load8_u
                                i32.const 37
                                i32.eq
                                br_if $B13
                                local.get $l16
                                local.set $p1
                                br $B10
                              end
                              local.get $l18
                              i32.const 1
                              i32.add
                              local.set $l18
                              local.get $l16
                              i32.load8_u offset=2
                              local.set $l19
                              local.get $l16
                              i32.const 2
                              i32.add
                              local.tee $p1
                              local.set $l16
                              local.get $l19
                              i32.const 37
                              i32.eq
                              br_if $L12
                              br $B10
                            end
                          end
                          local.get $p1
                          local.set $l18
                        end
                        local.get $l18
                        local.get $l17
                        i32.sub
                        local.tee $l16
                        i32.const 2147483647
                        local.get $l15
                        i32.sub
                        local.tee $l18
                        i32.gt_s
                        br_if $B2
                        block $B14
                          local.get $p0
                          i32.eqz
                          br_if $B14
                          local.get $p0
                          i32.load8_u
                          i32.const 32
                          i32.and
                          br_if $B14
                          local.get $l17
                          local.get $l16
                          local.get $p0
                          call $__fwritex
                          drop
                        end
                        local.get $l16
                        br_if $L3
                        local.get $p1
                        i32.const 1
                        i32.add
                        local.set $l16
                        block $B15
                          block $B16
                            local.get $p1
                            i32.load8_s offset=1
                            local.tee $l20
                            i32.const -48
                            i32.add
                            local.tee $l21
                            i32.const 9
                            i32.le_u
                            br_if $B16
                            i32.const -1
                            local.set $l22
                            br $B15
                          end
                          local.get $p1
                          i32.const 3
                          i32.add
                          local.get $l16
                          local.get $p1
                          i32.load8_u offset=2
                          i32.const 36
                          i32.eq
                          local.tee $l19
                          select
                          local.set $l16
                          local.get $l21
                          i32.const -1
                          local.get $l19
                          select
                          local.set $l22
                          i32.const 1
                          local.get $l14
                          local.get $l19
                          select
                          local.set $l14
                          local.get $p1
                          i32.const 3
                          i32.const 1
                          local.get $l19
                          select
                          i32.add
                          i32.load8_s
                          local.set $l20
                        end
                        i32.const 0
                        local.set $l23
                        block $B17
                          local.get $l20
                          i32.const -32
                          i32.add
                          local.tee $p1
                          i32.const 31
                          i32.gt_u
                          br_if $B17
                          i32.const 1
                          local.get $p1
                          i32.shl
                          local.tee $p1
                          i32.const 75913
                          i32.and
                          i32.eqz
                          br_if $B17
                          local.get $l16
                          i32.const 1
                          i32.add
                          local.set $l19
                          i32.const 0
                          local.set $l23
                          loop $L18
                            local.get $p1
                            local.get $l23
                            i32.or
                            local.set $l23
                            local.get $l19
                            local.tee $l16
                            i32.load8_s
                            local.tee $l20
                            i32.const -32
                            i32.add
                            local.tee $p1
                            i32.const 32
                            i32.ge_u
                            br_if $B17
                            local.get $l16
                            i32.const 1
                            i32.add
                            local.set $l19
                            i32.const 1
                            local.get $p1
                            i32.shl
                            local.tee $p1
                            i32.const 75913
                            i32.and
                            br_if $L18
                          end
                        end
                        block $B19
                          block $B20
                            local.get $l20
                            i32.const 42
                            i32.ne
                            br_if $B20
                            block $B21
                              block $B22
                                local.get $l16
                                i32.load8_s offset=1
                                i32.const -48
                                i32.add
                                local.tee $p1
                                i32.const 9
                                i32.gt_u
                                br_if $B22
                                local.get $l16
                                i32.load8_u offset=2
                                i32.const 36
                                i32.ne
                                br_if $B22
                                local.get $p4
                                local.get $p1
                                i32.const 2
                                i32.shl
                                i32.add
                                i32.const 10
                                i32.store
                                local.get $l16
                                i32.const 3
                                i32.add
                                local.set $l24
                                local.get $l16
                                i32.load8_s offset=1
                                i32.const 3
                                i32.shl
                                local.get $p3
                                i32.add
                                i32.const -384
                                i32.add
                                i32.load
                                local.set $l21
                                i32.const 1
                                local.set $l14
                                br $B21
                              end
                              local.get $l14
                              br_if $B6
                              local.get $l16
                              i32.const 1
                              i32.add
                              local.set $l24
                              block $B23
                                local.get $p0
                                br_if $B23
                                i32.const 0
                                local.set $l14
                                i32.const 0
                                local.set $l21
                                br $B19
                              end
                              local.get $p2
                              local.get $p2
                              i32.load
                              local.tee $p1
                              i32.const 4
                              i32.add
                              i32.store
                              local.get $p1
                              i32.load
                              local.set $l21
                              i32.const 0
                              local.set $l14
                            end
                            local.get $l21
                            i32.const -1
                            i32.gt_s
                            br_if $B19
                            i32.const 0
                            local.get $l21
                            i32.sub
                            local.set $l21
                            local.get $l23
                            i32.const 8192
                            i32.or
                            local.set $l23
                            br $B19
                          end
                          i32.const 0
                          local.set $l21
                          block $B24
                            local.get $l20
                            i32.const -48
                            i32.add
                            local.tee $l19
                            i32.const 9
                            i32.le_u
                            br_if $B24
                            local.get $l16
                            local.set $l24
                            br $B19
                          end
                          i32.const 0
                          local.set $p1
                          loop $L25
                            i32.const -1
                            local.set $l21
                            block $B26
                              local.get $p1
                              i32.const 214748364
                              i32.gt_u
                              br_if $B26
                              i32.const -1
                              local.get $p1
                              i32.const 10
                              i32.mul
                              local.tee $p1
                              local.get $l19
                              i32.add
                              local.get $l19
                              i32.const 2147483647
                              local.get $p1
                              i32.sub
                              i32.gt_s
                              select
                              local.set $l21
                            end
                            local.get $l16
                            i32.load8_s offset=1
                            local.set $l19
                            local.get $l16
                            i32.const 1
                            i32.add
                            local.tee $l24
                            local.set $l16
                            local.get $l21
                            local.set $p1
                            local.get $l19
                            i32.const -48
                            i32.add
                            local.tee $l19
                            i32.const 10
                            i32.lt_u
                            br_if $L25
                          end
                          local.get $l21
                          i32.const 0
                          i32.lt_s
                          br_if $B2
                        end
                        i32.const 0
                        local.set $l16
                        i32.const -1
                        local.set $l20
                        block $B27
                          block $B28
                            local.get $l24
                            i32.load8_u
                            i32.const 46
                            i32.eq
                            br_if $B28
                            local.get $l24
                            local.set $p1
                            i32.const 0
                            local.set $l25
                            br $B27
                          end
                          block $B29
                            local.get $l24
                            i32.load8_s offset=1
                            local.tee $l19
                            i32.const 42
                            i32.ne
                            br_if $B29
                            block $B30
                              block $B31
                                local.get $l24
                                i32.load8_s offset=2
                                i32.const -48
                                i32.add
                                local.tee $p1
                                i32.const 9
                                i32.gt_u
                                br_if $B31
                                local.get $l24
                                i32.load8_u offset=3
                                i32.const 36
                                i32.ne
                                br_if $B31
                                local.get $p4
                                local.get $p1
                                i32.const 2
                                i32.shl
                                i32.add
                                i32.const 10
                                i32.store
                                local.get $l24
                                i32.const 4
                                i32.add
                                local.set $p1
                                local.get $l24
                                i32.load8_s offset=2
                                i32.const 3
                                i32.shl
                                local.get $p3
                                i32.add
                                i32.const -384
                                i32.add
                                i32.load
                                local.set $l20
                                br $B30
                              end
                              local.get $l14
                              br_if $B6
                              local.get $l24
                              i32.const 2
                              i32.add
                              local.set $p1
                              block $B32
                                local.get $p0
                                br_if $B32
                                i32.const 0
                                local.set $l20
                                br $B30
                              end
                              local.get $p2
                              local.get $p2
                              i32.load
                              local.tee $l19
                              i32.const 4
                              i32.add
                              i32.store
                              local.get $l19
                              i32.load
                              local.set $l20
                            end
                            local.get $l20
                            i32.const -1
                            i32.xor
                            i32.const 31
                            i32.shr_u
                            local.set $l25
                            br $B27
                          end
                          local.get $l24
                          i32.const 1
                          i32.add
                          local.set $p1
                          block $B33
                            local.get $l19
                            i32.const -48
                            i32.add
                            local.tee $l26
                            i32.const 9
                            i32.le_u
                            br_if $B33
                            i32.const 1
                            local.set $l25
                            i32.const 0
                            local.set $l20
                            br $B27
                          end
                          i32.const 0
                          local.set $l24
                          local.get $p1
                          local.set $l19
                          loop $L34
                            i32.const -1
                            local.set $l20
                            block $B35
                              local.get $l24
                              i32.const 214748364
                              i32.gt_u
                              br_if $B35
                              i32.const -1
                              local.get $l24
                              i32.const 10
                              i32.mul
                              local.tee $p1
                              local.get $l26
                              i32.add
                              local.get $l26
                              i32.const 2147483647
                              local.get $p1
                              i32.sub
                              i32.gt_s
                              select
                              local.set $l20
                            end
                            i32.const 1
                            local.set $l25
                            local.get $l19
                            i32.load8_s offset=1
                            local.set $l26
                            local.get $l19
                            i32.const 1
                            i32.add
                            local.tee $p1
                            local.set $l19
                            local.get $l20
                            local.set $l24
                            local.get $l26
                            i32.const -48
                            i32.add
                            local.tee $l26
                            i32.const 10
                            i32.lt_u
                            br_if $L34
                          end
                        end
                        loop $L36
                          local.get $l16
                          local.set $l19
                          local.get $p1
                          i32.load8_s
                          i32.const -65
                          i32.add
                          local.tee $l16
                          i32.const 57
                          i32.gt_u
                          br_if $B6
                          local.get $p1
                          i32.const 1
                          i32.add
                          local.set $p1
                          local.get $l19
                          i32.const 58
                          i32.mul
                          local.get $l16
                          i32.add
                          i32.const 2976
                          i32.add
                          i32.load8_u
                          local.tee $l16
                          i32.const -1
                          i32.add
                          i32.const 8
                          i32.lt_u
                          br_if $L36
                        end
                        local.get $l16
                        i32.eqz
                        br_if $B6
                        block $B37
                          block $B38
                            block $B39
                              block $B40
                                local.get $l16
                                i32.const 27
                                i32.ne
                                br_if $B40
                                local.get $l22
                                i32.const -1
                                i32.le_s
                                br_if $B39
                                br $B6
                              end
                              local.get $l22
                              i32.const 0
                              i32.lt_s
                              br_if $B38
                              local.get $p4
                              local.get $l22
                              i32.const 2
                              i32.shl
                              i32.add
                              local.get $l16
                              i32.store
                              local.get $l5
                              local.get $p3
                              local.get $l22
                              i32.const 3
                              i32.shl
                              i32.add
                              i64.load
                              i64.store offset=56
                            end
                            i32.const 0
                            local.set $l16
                            local.get $p0
                            i32.eqz
                            br_if $L3
                            br $B37
                          end
                          block $B41
                            local.get $p0
                            br_if $B41
                            i32.const 0
                            local.set $l15
                            br $B0
                          end
                          local.get $l5
                          i32.const 56
                          i32.add
                          local.get $l16
                          local.get $p2
                          call $pop_arg
                        end
                        local.get $l23
                        i32.const -65537
                        i32.and
                        local.tee $l24
                        local.get $l23
                        local.get $l23
                        i32.const 8192
                        i32.and
                        select
                        local.set $l22
                        block $B42
                          block $B43
                            block $B44
                              local.get $p1
                              i32.const -1
                              i32.add
                              i32.load8_s
                              local.tee $l16
                              i32.const -33
                              i32.and
                              local.get $l16
                              local.get $l16
                              i32.const 15
                              i32.and
                              i32.const 3
                              i32.eq
                              select
                              local.get $l16
                              local.get $l19
                              select
                              local.tee $l27
                              i32.const -65
                              i32.add
                              local.tee $l16
                              i32.const 55
                              i32.gt_u
                              br_if $B44
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
                                                            block $B60
                                                              block $B61
                                                                local.get $l16
                                                                br_table $B45 $B44 $B48 $B44 $B45 $B45 $B45 $B44 $B44 $B44 $B44 $B44 $B44 $B44 $B44 $B44 $B44 $B44 $B49 $B44 $B44 $B44 $B44 $B58 $B44 $B44 $B44 $B44 $B44 $B44 $B44 $B44 $B45 $B44 $B53 $B56 $B45 $B45 $B45 $B44 $B56 $B44 $B44 $B44 $B52 $B60 $B57 $B59 $B44 $B44 $B51 $B44 $B61 $B44 $B44 $B58 $B45
                                                              end
                                                              i32.const 0
                                                              local.set $l28
                                                              i32.const 2950
                                                              local.set $l29
                                                              local.get $l5
                                                              i64.load offset=56
                                                              local.set $l30
                                                              br $B55
                                                            end
                                                            i32.const 0
                                                            local.set $l16
                                                            local.get $l19
                                                            i32.const 255
                                                            i32.and
                                                            local.tee $l18
                                                            i32.const 7
                                                            i32.gt_u
                                                            br_if $L3
                                                            block $B62
                                                              block $B63
                                                                block $B64
                                                                  block $B65
                                                                    block $B66
                                                                      block $B67
                                                                        block $B68
                                                                          local.get $l18
                                                                          br_table $B68 $B67 $B66 $B65 $B64 $L3 $B63 $B62 $B68
                                                                        end
                                                                        local.get $l5
                                                                        i32.load offset=56
                                                                        local.get $l15
                                                                        i32.store
                                                                        br $L3
                                                                      end
                                                                      local.get $l5
                                                                      i32.load offset=56
                                                                      local.get $l15
                                                                      i32.store
                                                                      br $L3
                                                                    end
                                                                    local.get $l5
                                                                    i32.load offset=56
                                                                    local.get $l15
                                                                    i64.extend_i32_s
                                                                    i64.store
                                                                    br $L3
                                                                  end
                                                                  local.get $l5
                                                                  i32.load offset=56
                                                                  local.get $l15
                                                                  i32.store16
                                                                  br $L3
                                                                end
                                                                local.get $l5
                                                                i32.load offset=56
                                                                local.get $l15
                                                                i32.store8
                                                                br $L3
                                                              end
                                                              local.get $l5
                                                              i32.load offset=56
                                                              local.get $l15
                                                              i32.store
                                                              br $L3
                                                            end
                                                            local.get $l5
                                                            i32.load offset=56
                                                            local.get $l15
                                                            i64.extend_i32_s
                                                            i64.store
                                                            br $L3
                                                          end
                                                          local.get $l20
                                                          i32.const 8
                                                          local.get $l20
                                                          i32.const 8
                                                          i32.gt_u
                                                          select
                                                          local.set $l20
                                                          local.get $l22
                                                          i32.const 8
                                                          i32.or
                                                          local.set $l22
                                                          i32.const 120
                                                          local.set $l27
                                                        end
                                                        i32.const 0
                                                        local.set $l28
                                                        i32.const 2950
                                                        local.set $l29
                                                        block $B69
                                                          local.get $l5
                                                          i64.load offset=56
                                                          local.tee $l30
                                                          i64.eqz
                                                          i32.eqz
                                                          br_if $B69
                                                          local.get $l13
                                                          local.set $l17
                                                          br $B54
                                                        end
                                                        local.get $l27
                                                        i32.const 32
                                                        i32.and
                                                        local.set $l16
                                                        local.get $l13
                                                        local.set $l17
                                                        loop $L70
                                                          local.get $l17
                                                          i32.const -1
                                                          i32.add
                                                          local.tee $l17
                                                          local.get $l30
                                                          i32.wrap_i64
                                                          i32.const 15
                                                          i32.and
                                                          i32.const 3584
                                                          i32.add
                                                          i32.load8_u
                                                          local.get $l16
                                                          i32.or
                                                          i32.store8
                                                          local.get $l30
                                                          i64.const 4
                                                          i64.shr_u
                                                          local.tee $l30
                                                          i64.const 0
                                                          i64.ne
                                                          br_if $L70
                                                        end
                                                        local.get $l22
                                                        i32.const 8
                                                        i32.and
                                                        i32.eqz
                                                        br_if $B54
                                                        local.get $l5
                                                        i64.load offset=56
                                                        i64.eqz
                                                        br_if $B54
                                                        local.get $l27
                                                        i32.const 4
                                                        i32.shr_s
                                                        i32.const 2950
                                                        i32.add
                                                        local.set $l29
                                                        i32.const 2
                                                        local.set $l28
                                                        br $B54
                                                      end
                                                      local.get $l13
                                                      local.set $l17
                                                      block $B71
                                                        local.get $l5
                                                        i64.load offset=56
                                                        local.tee $l30
                                                        i64.eqz
                                                        br_if $B71
                                                        local.get $l13
                                                        local.set $l17
                                                        loop $L72
                                                          local.get $l17
                                                          i32.const -1
                                                          i32.add
                                                          local.tee $l17
                                                          local.get $l30
                                                          i32.wrap_i64
                                                          i32.const 7
                                                          i32.and
                                                          i32.const 48
                                                          i32.or
                                                          i32.store8
                                                          local.get $l30
                                                          i64.const 3
                                                          i64.shr_u
                                                          local.tee $l30
                                                          i64.const 0
                                                          i64.ne
                                                          br_if $L72
                                                        end
                                                      end
                                                      i32.const 0
                                                      local.set $l28
                                                      i32.const 2950
                                                      local.set $l29
                                                      local.get $l22
                                                      i32.const 8
                                                      i32.and
                                                      i32.eqz
                                                      br_if $B54
                                                      local.get $l20
                                                      local.get $l13
                                                      local.get $l17
                                                      i32.sub
                                                      local.tee $l16
                                                      i32.const 1
                                                      i32.add
                                                      local.get $l20
                                                      local.get $l16
                                                      i32.gt_s
                                                      select
                                                      local.set $l20
                                                      br $B54
                                                    end
                                                    block $B73
                                                      local.get $l5
                                                      i64.load offset=56
                                                      local.tee $l30
                                                      i64.const -1
                                                      i64.gt_s
                                                      br_if $B73
                                                      local.get $l5
                                                      i64.const 0
                                                      local.get $l30
                                                      i64.sub
                                                      local.tee $l30
                                                      i64.store offset=56
                                                      i32.const 1
                                                      local.set $l28
                                                      i32.const 2950
                                                      local.set $l29
                                                      br $B55
                                                    end
                                                    block $B74
                                                      local.get $l22
                                                      i32.const 2048
                                                      i32.and
                                                      i32.eqz
                                                      br_if $B74
                                                      i32.const 1
                                                      local.set $l28
                                                      i32.const 2951
                                                      local.set $l29
                                                      br $B55
                                                    end
                                                    i32.const 2952
                                                    i32.const 2950
                                                    local.get $l22
                                                    i32.const 1
                                                    i32.and
                                                    local.tee $l28
                                                    select
                                                    local.set $l29
                                                  end
                                                  block $B75
                                                    block $B76
                                                      local.get $l30
                                                      i64.const 4294967296
                                                      i64.ge_u
                                                      br_if $B76
                                                      local.get $l30
                                                      local.set $l31
                                                      local.get $l13
                                                      local.set $l17
                                                      br $B75
                                                    end
                                                    local.get $l13
                                                    local.set $l17
                                                    loop $L77
                                                      local.get $l17
                                                      i32.const -1
                                                      i32.add
                                                      local.tee $l17
                                                      local.get $l30
                                                      local.get $l30
                                                      i64.const 10
                                                      i64.div_u
                                                      local.tee $l31
                                                      i64.const 10
                                                      i64.mul
                                                      i64.sub
                                                      i32.wrap_i64
                                                      i32.const 48
                                                      i32.or
                                                      i32.store8
                                                      local.get $l30
                                                      i64.const 42949672959
                                                      i64.gt_u
                                                      local.set $l16
                                                      local.get $l31
                                                      local.set $l30
                                                      local.get $l16
                                                      br_if $L77
                                                    end
                                                  end
                                                  local.get $l31
                                                  i32.wrap_i64
                                                  local.tee $l16
                                                  i32.eqz
                                                  br_if $B54
                                                  loop $L78
                                                    local.get $l17
                                                    i32.const -1
                                                    i32.add
                                                    local.tee $l17
                                                    local.get $l16
                                                    local.get $l16
                                                    i32.const 10
                                                    i32.div_u
                                                    local.tee $l19
                                                    i32.const 10
                                                    i32.mul
                                                    i32.sub
                                                    i32.const 48
                                                    i32.or
                                                    i32.store8
                                                    local.get $l16
                                                    i32.const 9
                                                    i32.gt_u
                                                    local.set $l23
                                                    local.get $l19
                                                    local.set $l16
                                                    local.get $l23
                                                    br_if $L78
                                                  end
                                                end
                                                block $B79
                                                  local.get $l25
                                                  i32.eqz
                                                  br_if $B79
                                                  local.get $l20
                                                  i32.const 0
                                                  i32.lt_s
                                                  br_if $B2
                                                end
                                                local.get $l22
                                                i32.const -65537
                                                i32.and
                                                local.get $l22
                                                local.get $l25
                                                select
                                                local.set $l22
                                                local.get $l5
                                                i64.load offset=56
                                                local.set $l30
                                                block $B80
                                                  local.get $l20
                                                  br_if $B80
                                                  local.get $l30
                                                  i64.eqz
                                                  i32.eqz
                                                  br_if $B80
                                                  local.get $l13
                                                  local.set $l17
                                                  local.get $l13
                                                  local.set $l16
                                                  i32.const 0
                                                  local.set $l20
                                                  br $B4
                                                end
                                                local.get $l20
                                                local.get $l13
                                                local.get $l17
                                                i32.sub
                                                local.get $l30
                                                i64.eqz
                                                i32.add
                                                local.tee $l16
                                                local.get $l20
                                                local.get $l16
                                                i32.gt_s
                                                select
                                                local.set $l20
                                                br $B43
                                              end
                                              local.get $l5
                                              local.get $l5
                                              i64.load offset=56
                                              i64.store8 offset=55
                                              i32.const 0
                                              local.set $l28
                                              i32.const 2950
                                              local.set $l29
                                              i32.const 1
                                              local.set $l20
                                              local.get $l7
                                              local.set $l17
                                              local.get $l13
                                              local.set $l16
                                              local.get $l24
                                              local.set $l22
                                              br $B4
                                            end
                                            i32.const 0
                                            i32.load offset=4384
                                            call $strerror
                                            local.set $l17
                                            br $B50
                                          end
                                          local.get $l5
                                          i32.load offset=56
                                          local.tee $l16
                                          i32.const 2960
                                          local.get $l16
                                          select
                                          local.set $l17
                                        end
                                        i32.const 0
                                        local.set $l28
                                        local.get $l17
                                        local.get $l17
                                        i32.const 2147483647
                                        local.get $l20
                                        local.get $l20
                                        i32.const 0
                                        i32.lt_s
                                        select
                                        call $strnlen
                                        local.tee $l19
                                        i32.add
                                        local.set $l16
                                        i32.const 2950
                                        local.set $l29
                                        local.get $l20
                                        i32.const -1
                                        i32.le_s
                                        br_if $B42
                                        local.get $l24
                                        local.set $l22
                                        local.get $l19
                                        local.set $l20
                                        br $B4
                                      end
                                      local.get $l5
                                      i32.load offset=56
                                      local.set $l17
                                      local.get $l20
                                      br_if $B47
                                      i32.const 0
                                      local.set $l16
                                      br $B46
                                    end
                                    local.get $l5
                                    i32.const 0
                                    i32.store offset=12
                                    local.get $l5
                                    local.get $l5
                                    i64.load offset=56
                                    i64.store32 offset=8
                                    local.get $l5
                                    local.get $l5
                                    i32.const 8
                                    i32.add
                                    i32.store offset=56
                                    i32.const -1
                                    local.set $l20
                                    local.get $l5
                                    i32.const 8
                                    i32.add
                                    local.set $l17
                                  end
                                  i32.const 0
                                  local.set $l16
                                  local.get $l17
                                  local.set $l18
                                  block $B81
                                    loop $L82
                                      local.get $l18
                                      i32.load
                                      local.tee $l19
                                      i32.eqz
                                      br_if $B81
                                      block $B83
                                        local.get $l5
                                        i32.const 4
                                        i32.add
                                        local.get $l19
                                        call $wctomb
                                        local.tee $l19
                                        i32.const 0
                                        i32.lt_s
                                        local.tee $l23
                                        br_if $B83
                                        local.get $l19
                                        local.get $l20
                                        local.get $l16
                                        i32.sub
                                        i32.gt_u
                                        br_if $B83
                                        local.get $l18
                                        i32.const 4
                                        i32.add
                                        local.set $l18
                                        local.get $l20
                                        local.get $l19
                                        local.get $l16
                                        i32.add
                                        local.tee $l16
                                        i32.gt_u
                                        br_if $L82
                                        br $B81
                                      end
                                    end
                                    local.get $l23
                                    br_if $B1
                                  end
                                  local.get $l16
                                  i32.const 0
                                  i32.lt_s
                                  br_if $B2
                                end
                                block $B84
                                  local.get $l22
                                  i32.const 73728
                                  i32.and
                                  local.tee $l24
                                  br_if $B84
                                  local.get $l21
                                  local.get $l16
                                  i32.le_s
                                  br_if $B84
                                  local.get $l5
                                  i32.const 64
                                  i32.add
                                  i32.const 32
                                  local.get $l21
                                  local.get $l16
                                  i32.sub
                                  local.tee $l26
                                  i32.const 256
                                  local.get $l26
                                  i32.const 256
                                  i32.lt_u
                                  local.tee $l18
                                  select
                                  call $memset
                                  drop
                                  local.get $p0
                                  i32.load
                                  local.tee $l20
                                  i32.const 32
                                  i32.and
                                  local.set $l19
                                  block $B85
                                    block $B86
                                      local.get $l18
                                      br_if $B86
                                      local.get $l19
                                      i32.eqz
                                      local.set $l18
                                      local.get $l26
                                      local.set $l19
                                      loop $L87
                                        block $B88
                                          local.get $l18
                                          i32.const 1
                                          i32.and
                                          i32.eqz
                                          br_if $B88
                                          local.get $l5
                                          i32.const 64
                                          i32.add
                                          i32.const 256
                                          local.get $p0
                                          call $__fwritex
                                          drop
                                          local.get $p0
                                          i32.load
                                          local.set $l20
                                        end
                                        local.get $l20
                                        i32.const 32
                                        i32.and
                                        local.tee $l23
                                        i32.eqz
                                        local.set $l18
                                        local.get $l19
                                        i32.const -256
                                        i32.add
                                        local.tee $l19
                                        i32.const 255
                                        i32.gt_u
                                        br_if $L87
                                      end
                                      local.get $l23
                                      br_if $B84
                                      local.get $l26
                                      i32.const 255
                                      i32.and
                                      local.set $l26
                                      br $B85
                                    end
                                    local.get $l19
                                    br_if $B84
                                  end
                                  local.get $l5
                                  i32.const 64
                                  i32.add
                                  local.get $l26
                                  local.get $p0
                                  call $__fwritex
                                  drop
                                end
                                block $B89
                                  local.get $l16
                                  i32.eqz
                                  br_if $B89
                                  i32.const 0
                                  local.set $l18
                                  loop $L90
                                    local.get $l17
                                    i32.load
                                    local.tee $l19
                                    i32.eqz
                                    br_if $B89
                                    local.get $l5
                                    i32.const 4
                                    i32.add
                                    local.get $l19
                                    call $wctomb
                                    local.tee $l19
                                    local.get $l18
                                    i32.add
                                    local.tee $l18
                                    local.get $l16
                                    i32.gt_u
                                    br_if $B89
                                    block $B91
                                      local.get $p0
                                      i32.load8_u
                                      i32.const 32
                                      i32.and
                                      br_if $B91
                                      local.get $l5
                                      i32.const 4
                                      i32.add
                                      local.get $l19
                                      local.get $p0
                                      call $__fwritex
                                      drop
                                    end
                                    local.get $l17
                                    i32.const 4
                                    i32.add
                                    local.set $l17
                                    local.get $l18
                                    local.get $l16
                                    i32.lt_u
                                    br_if $L90
                                  end
                                end
                                block $B92
                                  local.get $l24
                                  i32.const 8192
                                  i32.ne
                                  br_if $B92
                                  local.get $l21
                                  local.get $l16
                                  i32.le_s
                                  br_if $B92
                                  local.get $l5
                                  i32.const 64
                                  i32.add
                                  i32.const 32
                                  local.get $l21
                                  local.get $l16
                                  i32.sub
                                  local.tee $l23
                                  i32.const 256
                                  local.get $l23
                                  i32.const 256
                                  i32.lt_u
                                  local.tee $l18
                                  select
                                  call $memset
                                  drop
                                  local.get $p0
                                  i32.load
                                  local.tee $l17
                                  i32.const 32
                                  i32.and
                                  local.set $l19
                                  block $B93
                                    block $B94
                                      local.get $l18
                                      br_if $B94
                                      local.get $l19
                                      i32.eqz
                                      local.set $l18
                                      local.get $l23
                                      local.set $l19
                                      loop $L95
                                        block $B96
                                          local.get $l18
                                          i32.const 1
                                          i32.and
                                          i32.eqz
                                          br_if $B96
                                          local.get $l5
                                          i32.const 64
                                          i32.add
                                          i32.const 256
                                          local.get $p0
                                          call $__fwritex
                                          drop
                                          local.get $p0
                                          i32.load
                                          local.set $l17
                                        end
                                        local.get $l17
                                        i32.const 32
                                        i32.and
                                        local.tee $l20
                                        i32.eqz
                                        local.set $l18
                                        local.get $l19
                                        i32.const -256
                                        i32.add
                                        local.tee $l19
                                        i32.const 255
                                        i32.gt_u
                                        br_if $L95
                                      end
                                      local.get $l20
                                      br_if $B92
                                      local.get $l23
                                      i32.const 255
                                      i32.and
                                      local.set $l23
                                      br $B93
                                    end
                                    local.get $l19
                                    br_if $B92
                                  end
                                  local.get $l5
                                  i32.const 64
                                  i32.add
                                  local.get $l23
                                  local.get $p0
                                  call $__fwritex
                                  drop
                                end
                                local.get $l21
                                local.get $l16
                                local.get $l21
                                local.get $l16
                                i32.gt_s
                                select
                                local.set $l16
                                br $L3
                              end
                              block $B97
                                local.get $l20
                                i32.const -1
                                i32.gt_s
                                br_if $B97
                                local.get $l25
                                br_if $B2
                              end
                              local.get $l5
                              f64.load offset=56
                              local.set $l32
                              local.get $l5
                              i32.const 0
                              i32.store offset=364
                              block $B98
                                block $B99
                                  local.get $l32
                                  i64.reinterpret_f64
                                  i64.const -1
                                  i64.gt_s
                                  br_if $B99
                                  local.get $l32
                                  f64.neg
                                  local.set $l32
                                  i32.const 1
                                  local.set $l33
                                  i32.const 3600
                                  local.set $l34
                                  br $B98
                                end
                                block $B100
                                  local.get $l22
                                  i32.const 2048
                                  i32.and
                                  i32.eqz
                                  br_if $B100
                                  i32.const 1
                                  local.set $l33
                                  i32.const 3603
                                  local.set $l34
                                  br $B98
                                end
                                i32.const 3606
                                i32.const 3601
                                local.get $l22
                                i32.const 1
                                i32.and
                                local.tee $l33
                                select
                                local.set $l34
                              end
                              block $B101
                                block $B102
                                  local.get $l32
                                  f64.abs
                                  local.tee $l35
                                  f64.const inf (;=inf;)
                                  f64.ne
                                  local.get $l35
                                  local.get $l35
                                  f64.eq
                                  i32.and
                                  br_if $B102
                                  local.get $l33
                                  i32.const 3
                                  i32.add
                                  local.set $l20
                                  block $B103
                                    local.get $l22
                                    i32.const 8192
                                    i32.and
                                    br_if $B103
                                    local.get $l21
                                    local.get $l20
                                    i32.le_s
                                    br_if $B103
                                    local.get $l5
                                    i32.const 64
                                    i32.add
                                    i32.const 32
                                    local.get $l21
                                    local.get $l20
                                    i32.sub
                                    local.tee $l23
                                    i32.const 256
                                    local.get $l23
                                    i32.const 256
                                    i32.lt_u
                                    local.tee $l16
                                    select
                                    call $memset
                                    drop
                                    local.get $p0
                                    i32.load
                                    local.tee $l19
                                    i32.const 32
                                    i32.and
                                    local.set $l18
                                    block $B104
                                      block $B105
                                        local.get $l16
                                        br_if $B105
                                        local.get $l18
                                        i32.eqz
                                        local.set $l16
                                        local.get $l23
                                        local.set $l18
                                        loop $L106
                                          block $B107
                                            local.get $l16
                                            i32.const 1
                                            i32.and
                                            i32.eqz
                                            br_if $B107
                                            local.get $l5
                                            i32.const 64
                                            i32.add
                                            i32.const 256
                                            local.get $p0
                                            call $__fwritex
                                            drop
                                            local.get $p0
                                            i32.load
                                            local.set $l19
                                          end
                                          local.get $l19
                                          i32.const 32
                                          i32.and
                                          local.tee $l17
                                          i32.eqz
                                          local.set $l16
                                          local.get $l18
                                          i32.const -256
                                          i32.add
                                          local.tee $l18
                                          i32.const 255
                                          i32.gt_u
                                          br_if $L106
                                        end
                                        local.get $l17
                                        br_if $B103
                                        local.get $l23
                                        i32.const 255
                                        i32.and
                                        local.set $l23
                                        br $B104
                                      end
                                      local.get $l18
                                      br_if $B103
                                    end
                                    local.get $l5
                                    i32.const 64
                                    i32.add
                                    local.get $l23
                                    local.get $p0
                                    call $__fwritex
                                    drop
                                  end
                                  block $B108
                                    local.get $p0
                                    i32.load
                                    local.tee $l16
                                    i32.const 32
                                    i32.and
                                    br_if $B108
                                    local.get $l34
                                    local.get $l33
                                    local.get $p0
                                    call $__fwritex
                                    drop
                                    local.get $p0
                                    i32.load
                                    local.set $l16
                                  end
                                  block $B109
                                    local.get $l16
                                    i32.const 32
                                    i32.and
                                    br_if $B109
                                    i32.const 3627
                                    i32.const 3631
                                    local.get $l27
                                    i32.const 32
                                    i32.and
                                    i32.const 5
                                    i32.shr_u
                                    local.tee $l16
                                    select
                                    i32.const 3619
                                    i32.const 3623
                                    local.get $l16
                                    select
                                    local.get $l32
                                    local.get $l32
                                    f64.ne
                                    select
                                    i32.const 3
                                    local.get $p0
                                    call $__fwritex
                                    drop
                                  end
                                  block $B110
                                    local.get $l22
                                    i32.const 73728
                                    i32.and
                                    i32.const 8192
                                    i32.ne
                                    br_if $B110
                                    local.get $l21
                                    local.get $l20
                                    i32.le_s
                                    br_if $B110
                                    local.get $l5
                                    i32.const 64
                                    i32.add
                                    i32.const 32
                                    local.get $l21
                                    local.get $l20
                                    i32.sub
                                    local.tee $l23
                                    i32.const 256
                                    local.get $l23
                                    i32.const 256
                                    i32.lt_u
                                    local.tee $l16
                                    select
                                    call $memset
                                    drop
                                    local.get $p0
                                    i32.load
                                    local.tee $l19
                                    i32.const 32
                                    i32.and
                                    local.set $l18
                                    block $B111
                                      block $B112
                                        local.get $l16
                                        br_if $B112
                                        local.get $l18
                                        i32.eqz
                                        local.set $l16
                                        local.get $l23
                                        local.set $l18
                                        loop $L113
                                          block $B114
                                            local.get $l16
                                            i32.const 1
                                            i32.and
                                            i32.eqz
                                            br_if $B114
                                            local.get $l5
                                            i32.const 64
                                            i32.add
                                            i32.const 256
                                            local.get $p0
                                            call $__fwritex
                                            drop
                                            local.get $p0
                                            i32.load
                                            local.set $l19
                                          end
                                          local.get $l19
                                          i32.const 32
                                          i32.and
                                          local.tee $l17
                                          i32.eqz
                                          local.set $l16
                                          local.get $l18
                                          i32.const -256
                                          i32.add
                                          local.tee $l18
                                          i32.const 255
                                          i32.gt_u
                                          br_if $L113
                                        end
                                        local.get $l17
                                        br_if $B110
                                        local.get $l23
                                        i32.const 255
                                        i32.and
                                        local.set $l23
                                        br $B111
                                      end
                                      local.get $l18
                                      br_if $B110
                                    end
                                    local.get $l5
                                    i32.const 64
                                    i32.add
                                    local.get $l23
                                    local.get $p0
                                    call $__fwritex
                                    drop
                                  end
                                  local.get $l21
                                  local.get $l20
                                  local.get $l21
                                  local.get $l20
                                  i32.gt_s
                                  select
                                  local.set $l16
                                  br $B101
                                end
                                block $B115
                                  local.get $l32
                                  local.get $l5
                                  i32.const 364
                                  i32.add
                                  call $frexp
                                  local.tee $l32
                                  local.get $l32
                                  f64.add
                                  local.tee $l32
                                  f64.const 0x0p+0 (;=0;)
                                  f64.eq
                                  br_if $B115
                                  local.get $l5
                                  local.get $l5
                                  i32.load offset=364
                                  i32.const -1
                                  i32.add
                                  i32.store offset=364
                                end
                                block $B116
                                  local.get $l27
                                  i32.const 32
                                  i32.or
                                  local.tee $l29
                                  i32.const 97
                                  i32.ne
                                  br_if $B116
                                  local.get $l34
                                  i32.const 9
                                  i32.add
                                  local.get $l34
                                  local.get $l27
                                  i32.const 32
                                  i32.and
                                  local.tee $l23
                                  select
                                  local.set $l28
                                  block $B117
                                    local.get $l20
                                    i32.const 11
                                    i32.gt_u
                                    br_if $B117
                                    i32.const 12
                                    local.get $l20
                                    i32.sub
                                    i32.eqz
                                    br_if $B117
                                    local.get $l20
                                    i32.const -12
                                    i32.add
                                    local.set $l16
                                    f64.const 0x1p+4 (;=16;)
                                    local.set $l35
                                    loop $L118
                                      local.get $l35
                                      f64.const 0x1p+4 (;=16;)
                                      f64.mul
                                      local.set $l35
                                      local.get $l16
                                      i32.const 1
                                      i32.add
                                      local.tee $l18
                                      local.get $l16
                                      i32.ge_u
                                      local.set $l19
                                      local.get $l18
                                      local.set $l16
                                      local.get $l19
                                      br_if $L118
                                    end
                                    block $B119
                                      local.get $l28
                                      i32.load8_u
                                      i32.const 45
                                      i32.ne
                                      br_if $B119
                                      local.get $l35
                                      local.get $l32
                                      f64.neg
                                      local.get $l35
                                      f64.sub
                                      f64.add
                                      f64.neg
                                      local.set $l32
                                      br $B117
                                    end
                                    local.get $l32
                                    local.get $l35
                                    f64.add
                                    local.get $l35
                                    f64.sub
                                    local.set $l32
                                  end
                                  local.get $l11
                                  local.set $l19
                                  block $B120
                                    block $B121
                                      local.get $l5
                                      i32.load offset=364
                                      local.tee $l24
                                      local.get $l24
                                      i32.const 31
                                      i32.shr_s
                                      local.tee $l16
                                      i32.add
                                      local.get $l16
                                      i32.xor
                                      local.tee $l16
                                      i32.eqz
                                      br_if $B121
                                      i32.const 0
                                      local.set $l18
                                      loop $L122
                                        local.get $l5
                                        i32.const 324
                                        i32.add
                                        local.get $l18
                                        i32.add
                                        i32.const 11
                                        i32.add
                                        local.get $l16
                                        local.get $l16
                                        i32.const 10
                                        i32.div_u
                                        local.tee $l19
                                        i32.const 10
                                        i32.mul
                                        i32.sub
                                        i32.const 48
                                        i32.or
                                        i32.store8
                                        local.get $l18
                                        i32.const -1
                                        i32.add
                                        local.set $l18
                                        local.get $l16
                                        i32.const 9
                                        i32.gt_u
                                        local.set $l17
                                        local.get $l19
                                        local.set $l16
                                        local.get $l17
                                        br_if $L122
                                      end
                                      local.get $l5
                                      i32.const 324
                                      i32.add
                                      local.get $l18
                                      i32.add
                                      i32.const 12
                                      i32.add
                                      local.set $l19
                                      local.get $l18
                                      br_if $B120
                                    end
                                    local.get $l19
                                    i32.const -1
                                    i32.add
                                    local.tee $l19
                                    i32.const 48
                                    i32.store8
                                  end
                                  local.get $l33
                                  i32.const 2
                                  i32.or
                                  local.set $l26
                                  local.get $l19
                                  i32.const -2
                                  i32.add
                                  local.tee $l25
                                  local.get $l27
                                  i32.const 15
                                  i32.add
                                  i32.store8
                                  local.get $l19
                                  i32.const -1
                                  i32.add
                                  i32.const 45
                                  i32.const 43
                                  local.get $l24
                                  i32.const 0
                                  i32.lt_s
                                  select
                                  i32.store8
                                  local.get $l22
                                  i32.const 8
                                  i32.and
                                  local.set $l19
                                  local.get $l5
                                  i32.const 336
                                  i32.add
                                  local.set $l18
                                  loop $L123
                                    local.get $l18
                                    local.set $l16
                                    block $B124
                                      block $B125
                                        local.get $l32
                                        f64.abs
                                        f64.const 0x1p+31 (;=2.14748e+09;)
                                        f64.lt
                                        i32.eqz
                                        br_if $B125
                                        local.get $l32
                                        i32.trunc_f64_s
                                        local.set $l18
                                        br $B124
                                      end
                                      i32.const -2147483648
                                      local.set $l18
                                    end
                                    local.get $l16
                                    local.get $l18
                                    i32.const 3584
                                    i32.add
                                    i32.load8_u
                                    local.get $l23
                                    i32.or
                                    i32.store8
                                    local.get $l32
                                    local.get $l18
                                    f64.convert_i32_s
                                    f64.sub
                                    f64.const 0x1p+4 (;=16;)
                                    f64.mul
                                    local.set $l32
                                    block $B126
                                      local.get $l16
                                      i32.const 1
                                      i32.add
                                      local.tee $l18
                                      local.get $l5
                                      i32.const 336
                                      i32.add
                                      i32.sub
                                      i32.const 1
                                      i32.ne
                                      br_if $B126
                                      block $B127
                                        local.get $l19
                                        br_if $B127
                                        local.get $l20
                                        i32.const 0
                                        i32.gt_s
                                        br_if $B127
                                        local.get $l32
                                        f64.const 0x0p+0 (;=0;)
                                        f64.eq
                                        br_if $B126
                                      end
                                      local.get $l16
                                      i32.const 46
                                      i32.store8 offset=1
                                      local.get $l16
                                      i32.const 2
                                      i32.add
                                      local.set $l18
                                    end
                                    local.get $l32
                                    f64.const 0x0p+0 (;=0;)
                                    f64.ne
                                    br_if $L123
                                  end
                                  i32.const -1
                                  local.set $l16
                                  i32.const 2147483645
                                  local.get $l26
                                  local.get $l11
                                  local.get $l25
                                  i32.sub
                                  local.tee $l27
                                  i32.add
                                  local.tee $l19
                                  i32.sub
                                  local.get $l20
                                  i32.lt_s
                                  br_if $B101
                                  local.get $l19
                                  local.get $l20
                                  i32.const 2
                                  i32.add
                                  local.get $l18
                                  local.get $l5
                                  i32.const 336
                                  i32.add
                                  i32.sub
                                  local.tee $l23
                                  local.get $l8
                                  local.get $l18
                                  i32.add
                                  local.get $l20
                                  i32.lt_s
                                  select
                                  local.get $l23
                                  local.get $l20
                                  select
                                  local.tee $l36
                                  i32.add
                                  local.set $l20
                                  block $B128
                                    local.get $l22
                                    i32.const 73728
                                    i32.and
                                    local.tee $l24
                                    br_if $B128
                                    local.get $l21
                                    local.get $l20
                                    i32.le_s
                                    br_if $B128
                                    local.get $l5
                                    i32.const 64
                                    i32.add
                                    i32.const 32
                                    local.get $l21
                                    local.get $l20
                                    i32.sub
                                    local.tee $l22
                                    i32.const 256
                                    local.get $l22
                                    i32.const 256
                                    i32.lt_u
                                    local.tee $l16
                                    select
                                    call $memset
                                    drop
                                    local.get $p0
                                    i32.load
                                    local.tee $l19
                                    i32.const 32
                                    i32.and
                                    local.set $l18
                                    block $B129
                                      block $B130
                                        local.get $l16
                                        br_if $B130
                                        local.get $l18
                                        i32.eqz
                                        local.set $l16
                                        local.get $l22
                                        local.set $l18
                                        loop $L131
                                          block $B132
                                            local.get $l16
                                            i32.const 1
                                            i32.and
                                            i32.eqz
                                            br_if $B132
                                            local.get $l5
                                            i32.const 64
                                            i32.add
                                            i32.const 256
                                            local.get $p0
                                            call $__fwritex
                                            drop
                                            local.get $p0
                                            i32.load
                                            local.set $l19
                                          end
                                          local.get $l19
                                          i32.const 32
                                          i32.and
                                          local.tee $l17
                                          i32.eqz
                                          local.set $l16
                                          local.get $l18
                                          i32.const -256
                                          i32.add
                                          local.tee $l18
                                          i32.const 255
                                          i32.gt_u
                                          br_if $L131
                                        end
                                        local.get $l17
                                        br_if $B128
                                        local.get $l22
                                        i32.const 255
                                        i32.and
                                        local.set $l22
                                        br $B129
                                      end
                                      local.get $l18
                                      br_if $B128
                                    end
                                    local.get $l5
                                    i32.const 64
                                    i32.add
                                    local.get $l22
                                    local.get $p0
                                    call $__fwritex
                                    drop
                                  end
                                  block $B133
                                    local.get $p0
                                    i32.load8_u
                                    i32.const 32
                                    i32.and
                                    br_if $B133
                                    local.get $l28
                                    local.get $l26
                                    local.get $p0
                                    call $__fwritex
                                    drop
                                  end
                                  block $B134
                                    local.get $l24
                                    i32.const 65536
                                    i32.ne
                                    br_if $B134
                                    local.get $l21
                                    local.get $l20
                                    i32.le_s
                                    br_if $B134
                                    local.get $l5
                                    i32.const 64
                                    i32.add
                                    i32.const 48
                                    local.get $l21
                                    local.get $l20
                                    i32.sub
                                    local.tee $l26
                                    i32.const 256
                                    local.get $l26
                                    i32.const 256
                                    i32.lt_u
                                    local.tee $l16
                                    select
                                    call $memset
                                    drop
                                    local.get $p0
                                    i32.load
                                    local.tee $l19
                                    i32.const 32
                                    i32.and
                                    local.set $l18
                                    block $B135
                                      block $B136
                                        local.get $l16
                                        br_if $B136
                                        local.get $l18
                                        i32.eqz
                                        local.set $l16
                                        local.get $l26
                                        local.set $l18
                                        loop $L137
                                          block $B138
                                            local.get $l16
                                            i32.const 1
                                            i32.and
                                            i32.eqz
                                            br_if $B138
                                            local.get $l5
                                            i32.const 64
                                            i32.add
                                            i32.const 256
                                            local.get $p0
                                            call $__fwritex
                                            drop
                                            local.get $p0
                                            i32.load
                                            local.set $l19
                                          end
                                          local.get $l19
                                          i32.const 32
                                          i32.and
                                          local.tee $l17
                                          i32.eqz
                                          local.set $l16
                                          local.get $l18
                                          i32.const -256
                                          i32.add
                                          local.tee $l18
                                          i32.const 255
                                          i32.gt_u
                                          br_if $L137
                                        end
                                        local.get $l17
                                        br_if $B134
                                        local.get $l26
                                        i32.const 255
                                        i32.and
                                        local.set $l26
                                        br $B135
                                      end
                                      local.get $l18
                                      br_if $B134
                                    end
                                    local.get $l5
                                    i32.const 64
                                    i32.add
                                    local.get $l26
                                    local.get $p0
                                    call $__fwritex
                                    drop
                                  end
                                  block $B139
                                    local.get $p0
                                    i32.load8_u
                                    i32.const 32
                                    i32.and
                                    br_if $B139
                                    local.get $l5
                                    i32.const 336
                                    i32.add
                                    local.get $l23
                                    local.get $p0
                                    call $__fwritex
                                    drop
                                  end
                                  block $B140
                                    local.get $l36
                                    local.get $l23
                                    i32.sub
                                    local.tee $l23
                                    i32.const 1
                                    i32.lt_s
                                    br_if $B140
                                    local.get $l5
                                    i32.const 64
                                    i32.add
                                    i32.const 48
                                    local.get $l23
                                    i32.const 256
                                    local.get $l23
                                    i32.const 256
                                    i32.lt_u
                                    local.tee $l16
                                    select
                                    call $memset
                                    drop
                                    local.get $p0
                                    i32.load
                                    local.tee $l19
                                    i32.const 32
                                    i32.and
                                    local.set $l18
                                    block $B141
                                      block $B142
                                        local.get $l16
                                        br_if $B142
                                        local.get $l18
                                        i32.eqz
                                        local.set $l16
                                        local.get $l23
                                        local.set $l18
                                        loop $L143
                                          block $B144
                                            local.get $l16
                                            i32.const 1
                                            i32.and
                                            i32.eqz
                                            br_if $B144
                                            local.get $l5
                                            i32.const 64
                                            i32.add
                                            i32.const 256
                                            local.get $p0
                                            call $__fwritex
                                            drop
                                            local.get $p0
                                            i32.load
                                            local.set $l19
                                          end
                                          local.get $l19
                                          i32.const 32
                                          i32.and
                                          local.tee $l17
                                          i32.eqz
                                          local.set $l16
                                          local.get $l18
                                          i32.const -256
                                          i32.add
                                          local.tee $l18
                                          i32.const 255
                                          i32.gt_u
                                          br_if $L143
                                        end
                                        local.get $l17
                                        br_if $B140
                                        local.get $l23
                                        i32.const 255
                                        i32.and
                                        local.set $l23
                                        br $B141
                                      end
                                      local.get $l18
                                      br_if $B140
                                    end
                                    local.get $l5
                                    i32.const 64
                                    i32.add
                                    local.get $l23
                                    local.get $p0
                                    call $__fwritex
                                    drop
                                  end
                                  block $B145
                                    local.get $p0
                                    i32.load8_u
                                    i32.const 32
                                    i32.and
                                    br_if $B145
                                    local.get $l25
                                    local.get $l27
                                    local.get $p0
                                    call $__fwritex
                                    drop
                                  end
                                  block $B146
                                    local.get $l24
                                    i32.const 8192
                                    i32.ne
                                    br_if $B146
                                    local.get $l21
                                    local.get $l20
                                    i32.le_s
                                    br_if $B146
                                    local.get $l5
                                    i32.const 64
                                    i32.add
                                    i32.const 32
                                    local.get $l21
                                    local.get $l20
                                    i32.sub
                                    local.tee $l23
                                    i32.const 256
                                    local.get $l23
                                    i32.const 256
                                    i32.lt_u
                                    local.tee $l16
                                    select
                                    call $memset
                                    drop
                                    local.get $p0
                                    i32.load
                                    local.tee $l19
                                    i32.const 32
                                    i32.and
                                    local.set $l18
                                    block $B147
                                      block $B148
                                        local.get $l16
                                        br_if $B148
                                        local.get $l18
                                        i32.eqz
                                        local.set $l16
                                        local.get $l23
                                        local.set $l18
                                        loop $L149
                                          block $B150
                                            local.get $l16
                                            i32.const 1
                                            i32.and
                                            i32.eqz
                                            br_if $B150
                                            local.get $l5
                                            i32.const 64
                                            i32.add
                                            i32.const 256
                                            local.get $p0
                                            call $__fwritex
                                            drop
                                            local.get $p0
                                            i32.load
                                            local.set $l19
                                          end
                                          local.get $l19
                                          i32.const 32
                                          i32.and
                                          local.tee $l17
                                          i32.eqz
                                          local.set $l16
                                          local.get $l18
                                          i32.const -256
                                          i32.add
                                          local.tee $l18
                                          i32.const 255
                                          i32.gt_u
                                          br_if $L149
                                        end
                                        local.get $l17
                                        br_if $B146
                                        local.get $l23
                                        i32.const 255
                                        i32.and
                                        local.set $l23
                                        br $B147
                                      end
                                      local.get $l18
                                      br_if $B146
                                    end
                                    local.get $l5
                                    i32.const 64
                                    i32.add
                                    local.get $l23
                                    local.get $p0
                                    call $__fwritex
                                    drop
                                  end
                                  local.get $l21
                                  local.get $l20
                                  local.get $l21
                                  local.get $l20
                                  i32.gt_s
                                  select
                                  local.set $l16
                                  br $B101
                                end
                                local.get $l20
                                i32.const 0
                                i32.lt_s
                                local.set $l16
                                block $B151
                                  block $B152
                                    local.get $l32
                                    f64.const 0x0p+0 (;=0;)
                                    f64.ne
                                    br_if $B152
                                    local.get $l5
                                    i32.load offset=364
                                    local.set $l17
                                    br $B151
                                  end
                                  local.get $l5
                                  local.get $l5
                                  i32.load offset=364
                                  i32.const -28
                                  i32.add
                                  local.tee $l17
                                  i32.store offset=364
                                  local.get $l32
                                  f64.const 0x1p+28 (;=2.68435e+08;)
                                  f64.mul
                                  local.set $l32
                                end
                                i32.const 6
                                local.get $l20
                                local.get $l16
                                select
                                local.set $l36
                                local.get $l5
                                i32.const 368
                                i32.add
                                local.get $l10
                                local.get $l17
                                i32.const 0
                                i32.lt_s
                                select
                                local.tee $l28
                                local.set $l19
                                loop $L153
                                  block $B154
                                    block $B155
                                      local.get $l32
                                      f64.const 0x1p+32 (;=4.29497e+09;)
                                      f64.lt
                                      local.get $l32
                                      f64.const 0x0p+0 (;=0;)
                                      f64.ge
                                      i32.and
                                      i32.eqz
                                      br_if $B155
                                      local.get $l32
                                      i32.trunc_f64_u
                                      local.set $l16
                                      br $B154
                                    end
                                    i32.const 0
                                    local.set $l16
                                  end
                                  local.get $l19
                                  local.get $l16
                                  i32.store
                                  local.get $l19
                                  i32.const 4
                                  i32.add
                                  local.set $l19
                                  local.get $l32
                                  local.get $l16
                                  f64.convert_i32_u
                                  f64.sub
                                  f64.const 0x1.dcd65p+29 (;=1e+09;)
                                  f64.mul
                                  local.tee $l32
                                  f64.const 0x0p+0 (;=0;)
                                  f64.ne
                                  br_if $L153
                                end
                                block $B156
                                  block $B157
                                    local.get $l17
                                    i32.const 1
                                    i32.ge_s
                                    br_if $B157
                                    local.get $l19
                                    local.set $l16
                                    local.get $l28
                                    local.set $l18
                                    br $B156
                                  end
                                  local.get $l28
                                  local.set $l18
                                  loop $L158
                                    local.get $l17
                                    i32.const 29
                                    local.get $l17
                                    i32.const 29
                                    i32.lt_s
                                    select
                                    local.set $l17
                                    block $B159
                                      local.get $l19
                                      i32.const -4
                                      i32.add
                                      local.tee $l16
                                      local.get $l18
                                      i32.lt_u
                                      br_if $B159
                                      local.get $l17
                                      i64.extend_i32_u
                                      local.set $l31
                                      i64.const 0
                                      local.set $l30
                                      loop $L160
                                        local.get $l16
                                        local.get $l16
                                        i64.load32_u
                                        local.get $l31
                                        i64.shl
                                        local.get $l30
                                        i64.const 4294967295
                                        i64.and
                                        i64.add
                                        local.tee $l30
                                        local.get $l30
                                        i64.const 1000000000
                                        i64.div_u
                                        local.tee $l30
                                        i64.const 1000000000
                                        i64.mul
                                        i64.sub
                                        i64.store32
                                        local.get $l16
                                        i32.const -4
                                        i32.add
                                        local.tee $l16
                                        local.get $l18
                                        i32.ge_u
                                        br_if $L160
                                      end
                                      local.get $l30
                                      i32.wrap_i64
                                      local.tee $l16
                                      i32.eqz
                                      br_if $B159
                                      local.get $l18
                                      i32.const -4
                                      i32.add
                                      local.tee $l18
                                      local.get $l16
                                      i32.store
                                    end
                                    block $B161
                                      loop $L162
                                        local.get $l19
                                        local.tee $l16
                                        local.get $l18
                                        i32.le_u
                                        br_if $B161
                                        local.get $l16
                                        i32.const -4
                                        i32.add
                                        local.tee $l19
                                        i32.load
                                        i32.eqz
                                        br_if $L162
                                      end
                                    end
                                    local.get $l5
                                    local.get $l5
                                    i32.load offset=364
                                    local.get $l17
                                    i32.sub
                                    local.tee $l17
                                    i32.store offset=364
                                    local.get $l16
                                    local.set $l19
                                    local.get $l17
                                    i32.const 0
                                    i32.gt_s
                                    br_if $L158
                                  end
                                end
                                block $B163
                                  local.get $l17
                                  i32.const -1
                                  i32.gt_s
                                  br_if $B163
                                  local.get $l36
                                  i32.const 25
                                  i32.add
                                  i32.const 9
                                  i32.div_u
                                  i32.const 1
                                  i32.add
                                  local.set $l25
                                  loop $L164
                                    i32.const 0
                                    local.get $l17
                                    i32.sub
                                    local.tee $l19
                                    i32.const 9
                                    local.get $l19
                                    i32.const 9
                                    i32.lt_s
                                    select
                                    local.set $l23
                                    block $B165
                                      block $B166
                                        local.get $l18
                                        local.get $l16
                                        i32.lt_u
                                        br_if $B166
                                        local.get $l18
                                        local.get $l18
                                        i32.const 4
                                        i32.add
                                        local.get $l18
                                        i32.load
                                        select
                                        local.set $l18
                                        br $B165
                                      end
                                      i32.const 1000000000
                                      local.get $l23
                                      i32.shr_u
                                      local.set $l24
                                      i32.const -1
                                      local.get $l23
                                      i32.shl
                                      i32.const -1
                                      i32.xor
                                      local.set $l26
                                      i32.const 0
                                      local.set $l17
                                      local.get $l18
                                      local.set $l19
                                      loop $L167
                                        local.get $l19
                                        local.get $l19
                                        i32.load
                                        local.tee $l20
                                        local.get $l23
                                        i32.shr_u
                                        local.get $l17
                                        i32.add
                                        i32.store
                                        local.get $l20
                                        local.get $l26
                                        i32.and
                                        local.get $l24
                                        i32.mul
                                        local.set $l17
                                        local.get $l19
                                        i32.const 4
                                        i32.add
                                        local.tee $l19
                                        local.get $l16
                                        i32.lt_u
                                        br_if $L167
                                      end
                                      local.get $l18
                                      local.get $l18
                                      i32.const 4
                                      i32.add
                                      local.get $l18
                                      i32.load
                                      select
                                      local.set $l18
                                      local.get $l17
                                      i32.eqz
                                      br_if $B165
                                      local.get $l16
                                      local.get $l17
                                      i32.store
                                      local.get $l16
                                      i32.const 4
                                      i32.add
                                      local.set $l16
                                    end
                                    local.get $l5
                                    local.get $l5
                                    i32.load offset=364
                                    local.get $l23
                                    i32.add
                                    local.tee $l17
                                    i32.store offset=364
                                    local.get $l28
                                    local.get $l18
                                    local.get $l29
                                    i32.const 102
                                    i32.eq
                                    select
                                    local.tee $l19
                                    local.get $l25
                                    i32.const 2
                                    i32.shl
                                    i32.add
                                    local.get $l16
                                    local.get $l16
                                    local.get $l19
                                    i32.sub
                                    i32.const 2
                                    i32.shr_s
                                    local.get $l25
                                    i32.gt_s
                                    select
                                    local.set $l16
                                    local.get $l17
                                    i32.const 0
                                    i32.lt_s
                                    br_if $L164
                                  end
                                end
                                i32.const 0
                                local.set $l19
                                block $B168
                                  local.get $l18
                                  local.get $l16
                                  i32.ge_u
                                  br_if $B168
                                  local.get $l28
                                  local.get $l18
                                  i32.sub
                                  i32.const 2
                                  i32.shr_s
                                  i32.const 9
                                  i32.mul
                                  local.set $l19
                                  local.get $l18
                                  i32.load
                                  local.tee $l20
                                  i32.const 10
                                  i32.lt_u
                                  br_if $B168
                                  i32.const 10
                                  local.set $l17
                                  loop $L169
                                    local.get $l19
                                    i32.const 1
                                    i32.add
                                    local.set $l19
                                    local.get $l20
                                    local.get $l17
                                    i32.const 10
                                    i32.mul
                                    local.tee $l17
                                    i32.ge_u
                                    br_if $L169
                                  end
                                end
                                block $B170
                                  local.get $l36
                                  i32.const 0
                                  local.get $l19
                                  local.get $l29
                                  i32.const 102
                                  i32.eq
                                  select
                                  local.tee $l20
                                  i32.sub
                                  local.get $l36
                                  i32.const 0
                                  i32.ne
                                  local.get $l29
                                  i32.const 103
                                  i32.eq
                                  local.tee $l24
                                  i32.and
                                  local.tee $l26
                                  i32.sub
                                  local.tee $l17
                                  local.get $l16
                                  local.get $l28
                                  i32.sub
                                  i32.const 2
                                  i32.shr_s
                                  i32.const 9
                                  i32.mul
                                  i32.const -9
                                  i32.add
                                  i32.ge_s
                                  br_if $B170
                                  local.get $l17
                                  i32.const 9216
                                  i32.add
                                  local.tee $l25
                                  i32.const 9
                                  i32.div_s
                                  local.tee $l29
                                  i32.const 2
                                  i32.shl
                                  local.get $l28
                                  i32.add
                                  local.tee $l37
                                  i32.const -4092
                                  i32.add
                                  local.set $l23
                                  i32.const 10
                                  local.set $l17
                                  block $B171
                                    local.get $l25
                                    local.get $l29
                                    i32.const 9
                                    i32.mul
                                    local.tee $l29
                                    i32.sub
                                    i32.const 1
                                    i32.add
                                    i32.const 8
                                    i32.gt_s
                                    br_if $B171
                                    local.get $l20
                                    local.get $l29
                                    i32.add
                                    local.get $l26
                                    i32.add
                                    local.get $l36
                                    i32.sub
                                    i32.const -9208
                                    i32.add
                                    local.set $l20
                                    i32.const 10
                                    local.set $l17
                                    loop $L172
                                      local.get $l17
                                      i32.const 10
                                      i32.mul
                                      local.set $l17
                                      local.get $l20
                                      i32.const -1
                                      i32.add
                                      local.tee $l20
                                      br_if $L172
                                    end
                                  end
                                  local.get $l23
                                  i32.load
                                  local.tee $l26
                                  local.get $l26
                                  local.get $l17
                                  i32.div_u
                                  local.tee $l25
                                  local.get $l17
                                  i32.mul
                                  i32.sub
                                  local.set $l20
                                  block $B173
                                    block $B174
                                      local.get $l23
                                      i32.const 4
                                      i32.add
                                      local.tee $l29
                                      local.get $l16
                                      i32.ne
                                      br_if $B174
                                      local.get $l20
                                      i32.eqz
                                      br_if $B173
                                    end
                                    block $B175
                                      block $B176
                                        local.get $l25
                                        i32.const 1
                                        i32.and
                                        br_if $B176
                                        f64.const 0x1p+53 (;=9.0072e+15;)
                                        local.set $l32
                                        local.get $l23
                                        local.get $l18
                                        i32.le_u
                                        br_if $B175
                                        local.get $l17
                                        i32.const 1000000000
                                        i32.ne
                                        br_if $B175
                                        local.get $l23
                                        i32.const -4
                                        i32.add
                                        i32.load8_u
                                        i32.const 1
                                        i32.and
                                        i32.eqz
                                        br_if $B175
                                      end
                                      f64.const 0x1.0000000000001p+53 (;=9.0072e+15;)
                                      local.set $l32
                                    end
                                    f64.const 0x1p-1 (;=0.5;)
                                    local.set $l35
                                    block $B177
                                      local.get $l20
                                      local.get $l17
                                      i32.const 1
                                      i32.shr_u
                                      local.tee $l25
                                      i32.lt_u
                                      br_if $B177
                                      f64.const 0x1p+0 (;=1;)
                                      f64.const 0x1.8p+0 (;=1.5;)
                                      local.get $l20
                                      local.get $l25
                                      i32.eq
                                      select
                                      f64.const 0x1.8p+0 (;=1.5;)
                                      local.get $l29
                                      local.get $l16
                                      i32.eq
                                      select
                                      local.set $l35
                                    end
                                    block $B178
                                      local.get $l33
                                      i32.eqz
                                      br_if $B178
                                      local.get $l34
                                      i32.load8_u
                                      i32.const 45
                                      i32.ne
                                      br_if $B178
                                      local.get $l35
                                      f64.neg
                                      local.set $l35
                                      local.get $l32
                                      f64.neg
                                      local.set $l32
                                    end
                                    local.get $l23
                                    local.get $l26
                                    local.get $l20
                                    i32.sub
                                    local.tee $l20
                                    i32.store
                                    local.get $l32
                                    local.get $l35
                                    f64.add
                                    local.get $l32
                                    f64.eq
                                    br_if $B173
                                    local.get $l23
                                    local.get $l20
                                    local.get $l17
                                    i32.add
                                    local.tee $l19
                                    i32.store
                                    block $B179
                                      local.get $l19
                                      i32.const 1000000000
                                      i32.lt_u
                                      br_if $B179
                                      local.get $l37
                                      i32.const -4096
                                      i32.add
                                      local.set $l19
                                      loop $L180
                                        local.get $l19
                                        i32.const 4
                                        i32.add
                                        i32.const 0
                                        i32.store
                                        block $B181
                                          local.get $l19
                                          local.get $l18
                                          i32.ge_u
                                          br_if $B181
                                          local.get $l18
                                          i32.const -4
                                          i32.add
                                          local.tee $l18
                                          i32.const 0
                                          i32.store
                                        end
                                        local.get $l19
                                        local.get $l19
                                        i32.load
                                        i32.const 1
                                        i32.add
                                        local.tee $l17
                                        i32.store
                                        local.get $l19
                                        i32.const -4
                                        i32.add
                                        local.set $l19
                                        local.get $l17
                                        i32.const 999999999
                                        i32.gt_u
                                        br_if $L180
                                      end
                                      local.get $l19
                                      i32.const 4
                                      i32.add
                                      local.set $l23
                                    end
                                    local.get $l28
                                    local.get $l18
                                    i32.sub
                                    i32.const 2
                                    i32.shr_s
                                    i32.const 9
                                    i32.mul
                                    local.set $l19
                                    local.get $l18
                                    i32.load
                                    local.tee $l20
                                    i32.const 10
                                    i32.lt_u
                                    br_if $B173
                                    i32.const 10
                                    local.set $l17
                                    loop $L182
                                      local.get $l19
                                      i32.const 1
                                      i32.add
                                      local.set $l19
                                      local.get $l20
                                      local.get $l17
                                      i32.const 10
                                      i32.mul
                                      local.tee $l17
                                      i32.ge_u
                                      br_if $L182
                                    end
                                  end
                                  local.get $l23
                                  i32.const 4
                                  i32.add
                                  local.tee $l17
                                  local.get $l16
                                  local.get $l16
                                  local.get $l17
                                  i32.gt_u
                                  select
                                  local.set $l16
                                end
                                block $B183
                                  loop $L184
                                    block $B185
                                      local.get $l16
                                      local.tee $l20
                                      local.get $l18
                                      i32.gt_u
                                      br_if $B185
                                      i32.const 0
                                      local.set $l29
                                      br $B183
                                    end
                                    local.get $l20
                                    i32.const -4
                                    i32.add
                                    local.tee $l16
                                    i32.load
                                    i32.eqz
                                    br_if $L184
                                  end
                                  i32.const 1
                                  local.set $l29
                                end
                                block $B186
                                  block $B187
                                    local.get $l24
                                    br_if $B187
                                    local.get $l22
                                    i32.const 8
                                    i32.and
                                    local.set $l26
                                    br $B186
                                  end
                                  local.get $l19
                                  i32.const -1
                                  i32.xor
                                  i32.const -1
                                  local.get $l36
                                  i32.const 1
                                  local.get $l36
                                  select
                                  local.tee $l16
                                  local.get $l19
                                  i32.gt_s
                                  local.get $l19
                                  i32.const -5
                                  i32.gt_s
                                  i32.and
                                  local.tee $l17
                                  select
                                  local.get $l16
                                  i32.add
                                  local.set $l36
                                  i32.const -1
                                  i32.const -2
                                  local.get $l17
                                  select
                                  local.get $l27
                                  i32.add
                                  local.set $l27
                                  local.get $l22
                                  i32.const 8
                                  i32.and
                                  local.tee $l26
                                  br_if $B186
                                  i32.const 9
                                  local.set $l16
                                  block $B188
                                    local.get $l29
                                    i32.eqz
                                    br_if $B188
                                    local.get $l20
                                    i32.const -4
                                    i32.add
                                    i32.load
                                    local.tee $l23
                                    i32.eqz
                                    br_if $B188
                                    i32.const 0
                                    local.set $l16
                                    local.get $l23
                                    i32.const 10
                                    i32.rem_u
                                    br_if $B188
                                    i32.const 10
                                    local.set $l17
                                    i32.const 0
                                    local.set $l16
                                    loop $L189
                                      local.get $l16
                                      i32.const 1
                                      i32.add
                                      local.set $l16
                                      local.get $l23
                                      local.get $l17
                                      i32.const 10
                                      i32.mul
                                      local.tee $l17
                                      i32.rem_u
                                      i32.eqz
                                      br_if $L189
                                    end
                                  end
                                  local.get $l20
                                  local.get $l28
                                  i32.sub
                                  i32.const 2
                                  i32.shr_s
                                  i32.const 9
                                  i32.mul
                                  i32.const -9
                                  i32.add
                                  local.set $l17
                                  block $B190
                                    local.get $l27
                                    i32.const 32
                                    i32.or
                                    i32.const 102
                                    i32.ne
                                    br_if $B190
                                    i32.const 0
                                    local.set $l26
                                    local.get $l36
                                    local.get $l17
                                    local.get $l16
                                    i32.sub
                                    local.tee $l16
                                    i32.const 0
                                    local.get $l16
                                    i32.const 0
                                    i32.gt_s
                                    select
                                    local.tee $l16
                                    local.get $l36
                                    local.get $l16
                                    i32.lt_s
                                    select
                                    local.set $l36
                                    br $B186
                                  end
                                  i32.const 0
                                  local.set $l26
                                  local.get $l36
                                  local.get $l17
                                  local.get $l19
                                  i32.add
                                  local.get $l16
                                  i32.sub
                                  local.tee $l16
                                  i32.const 0
                                  local.get $l16
                                  i32.const 0
                                  i32.gt_s
                                  select
                                  local.tee $l16
                                  local.get $l36
                                  local.get $l16
                                  i32.lt_s
                                  select
                                  local.set $l36
                                end
                                i32.const -1
                                local.set $l16
                                local.get $l36
                                i32.const 2147483645
                                i32.const 2147483646
                                local.get $l36
                                local.get $l26
                                i32.or
                                local.tee $l25
                                select
                                i32.gt_s
                                br_if $B101
                                local.get $l36
                                local.get $l25
                                i32.const 0
                                i32.ne
                                i32.add
                                i32.const 1
                                i32.add
                                local.set $l37
                                block $B191
                                  block $B192
                                    local.get $l27
                                    i32.const 32
                                    i32.or
                                    i32.const 102
                                    i32.ne
                                    local.tee $l38
                                    br_if $B192
                                    local.get $l19
                                    i32.const 2147483647
                                    local.get $l37
                                    i32.sub
                                    i32.gt_s
                                    br_if $B101
                                    local.get $l19
                                    i32.const 0
                                    local.get $l19
                                    i32.const 0
                                    i32.gt_s
                                    select
                                    local.set $l19
                                    br $B191
                                  end
                                  local.get $l11
                                  local.set $l17
                                  block $B193
                                    local.get $l19
                                    local.get $l19
                                    i32.const 31
                                    i32.shr_s
                                    local.tee $l16
                                    i32.add
                                    local.get $l16
                                    i32.xor
                                    local.tee $l16
                                    i32.eqz
                                    br_if $B193
                                    loop $L194
                                      local.get $l17
                                      i32.const -1
                                      i32.add
                                      local.tee $l17
                                      local.get $l16
                                      local.get $l16
                                      i32.const 10
                                      i32.div_u
                                      local.tee $l23
                                      i32.const 10
                                      i32.mul
                                      i32.sub
                                      i32.const 48
                                      i32.or
                                      i32.store8
                                      local.get $l16
                                      i32.const 9
                                      i32.gt_u
                                      local.set $l24
                                      local.get $l23
                                      local.set $l16
                                      local.get $l24
                                      br_if $L194
                                    end
                                  end
                                  block $B195
                                    local.get $l11
                                    local.get $l17
                                    i32.sub
                                    i32.const 1
                                    i32.gt_s
                                    br_if $B195
                                    local.get $l17
                                    i32.const -1
                                    i32.add
                                    local.set $l16
                                    loop $L196
                                      local.get $l16
                                      i32.const 48
                                      i32.store8
                                      local.get $l11
                                      local.get $l16
                                      i32.sub
                                      local.set $l17
                                      local.get $l16
                                      i32.const -1
                                      i32.add
                                      local.tee $l23
                                      local.set $l16
                                      local.get $l17
                                      i32.const 2
                                      i32.lt_s
                                      br_if $L196
                                    end
                                    local.get $l23
                                    i32.const 1
                                    i32.add
                                    local.set $l17
                                  end
                                  local.get $l17
                                  i32.const -2
                                  i32.add
                                  local.tee $l39
                                  local.get $l27
                                  i32.store8
                                  i32.const -1
                                  local.set $l16
                                  local.get $l17
                                  i32.const -1
                                  i32.add
                                  i32.const 45
                                  i32.const 43
                                  local.get $l19
                                  i32.const 0
                                  i32.lt_s
                                  select
                                  i32.store8
                                  local.get $l11
                                  local.get $l39
                                  i32.sub
                                  local.tee $l19
                                  i32.const 2147483647
                                  local.get $l37
                                  i32.sub
                                  i32.gt_s
                                  br_if $B101
                                end
                                i32.const -1
                                local.set $l16
                                local.get $l19
                                local.get $l37
                                i32.add
                                local.tee $l19
                                local.get $l33
                                i32.const 2147483647
                                i32.xor
                                i32.gt_s
                                br_if $B101
                                local.get $l19
                                local.get $l33
                                i32.add
                                local.set $l27
                                block $B197
                                  local.get $l22
                                  i32.const 73728
                                  i32.and
                                  local.tee $l22
                                  br_if $B197
                                  local.get $l21
                                  local.get $l27
                                  i32.le_s
                                  br_if $B197
                                  local.get $l5
                                  i32.const 64
                                  i32.add
                                  i32.const 32
                                  local.get $l21
                                  local.get $l27
                                  i32.sub
                                  local.tee $l24
                                  i32.const 256
                                  local.get $l24
                                  i32.const 256
                                  i32.lt_u
                                  local.tee $l16
                                  select
                                  call $memset
                                  drop
                                  local.get $p0
                                  i32.load
                                  local.tee $l17
                                  i32.const 32
                                  i32.and
                                  local.set $l19
                                  block $B198
                                    block $B199
                                      local.get $l16
                                      br_if $B199
                                      local.get $l19
                                      i32.eqz
                                      local.set $l16
                                      local.get $l24
                                      local.set $l19
                                      loop $L200
                                        block $B201
                                          local.get $l16
                                          i32.const 1
                                          i32.and
                                          i32.eqz
                                          br_if $B201
                                          local.get $l5
                                          i32.const 64
                                          i32.add
                                          i32.const 256
                                          local.get $p0
                                          call $__fwritex
                                          drop
                                          local.get $p0
                                          i32.load
                                          local.set $l17
                                        end
                                        local.get $l17
                                        i32.const 32
                                        i32.and
                                        local.tee $l23
                                        i32.eqz
                                        local.set $l16
                                        local.get $l19
                                        i32.const -256
                                        i32.add
                                        local.tee $l19
                                        i32.const 255
                                        i32.gt_u
                                        br_if $L200
                                      end
                                      local.get $l23
                                      br_if $B197
                                      local.get $l24
                                      i32.const 255
                                      i32.and
                                      local.set $l24
                                      br $B198
                                    end
                                    local.get $l19
                                    br_if $B197
                                  end
                                  local.get $l5
                                  i32.const 64
                                  i32.add
                                  local.get $l24
                                  local.get $p0
                                  call $__fwritex
                                  drop
                                end
                                block $B202
                                  local.get $p0
                                  i32.load8_u
                                  i32.const 32
                                  i32.and
                                  br_if $B202
                                  local.get $l34
                                  local.get $l33
                                  local.get $p0
                                  call $__fwritex
                                  drop
                                end
                                block $B203
                                  local.get $l22
                                  i32.const 65536
                                  i32.ne
                                  br_if $B203
                                  local.get $l21
                                  local.get $l27
                                  i32.le_s
                                  br_if $B203
                                  local.get $l5
                                  i32.const 64
                                  i32.add
                                  i32.const 48
                                  local.get $l21
                                  local.get $l27
                                  i32.sub
                                  local.tee $l24
                                  i32.const 256
                                  local.get $l24
                                  i32.const 256
                                  i32.lt_u
                                  local.tee $l16
                                  select
                                  call $memset
                                  drop
                                  local.get $p0
                                  i32.load
                                  local.tee $l17
                                  i32.const 32
                                  i32.and
                                  local.set $l19
                                  block $B204
                                    block $B205
                                      local.get $l16
                                      br_if $B205
                                      local.get $l19
                                      i32.eqz
                                      local.set $l16
                                      local.get $l24
                                      local.set $l19
                                      loop $L206
                                        block $B207
                                          local.get $l16
                                          i32.const 1
                                          i32.and
                                          i32.eqz
                                          br_if $B207
                                          local.get $l5
                                          i32.const 64
                                          i32.add
                                          i32.const 256
                                          local.get $p0
                                          call $__fwritex
                                          drop
                                          local.get $p0
                                          i32.load
                                          local.set $l17
                                        end
                                        local.get $l17
                                        i32.const 32
                                        i32.and
                                        local.tee $l23
                                        i32.eqz
                                        local.set $l16
                                        local.get $l19
                                        i32.const -256
                                        i32.add
                                        local.tee $l19
                                        i32.const 255
                                        i32.gt_u
                                        br_if $L206
                                      end
                                      local.get $l23
                                      br_if $B203
                                      local.get $l24
                                      i32.const 255
                                      i32.and
                                      local.set $l24
                                      br $B204
                                    end
                                    local.get $l19
                                    br_if $B203
                                  end
                                  local.get $l5
                                  i32.const 64
                                  i32.add
                                  local.get $l24
                                  local.get $p0
                                  call $__fwritex
                                  drop
                                end
                                block $B208
                                  block $B209
                                    local.get $l38
                                    br_if $B209
                                    local.get $l28
                                    local.get $l18
                                    local.get $l18
                                    local.get $l28
                                    i32.gt_u
                                    select
                                    local.tee $l24
                                    local.set $l23
                                    loop $L210
                                      block $B211
                                        block $B212
                                          local.get $l23
                                          i32.load
                                          local.tee $l16
                                          br_if $B212
                                          i32.const 0
                                          local.set $l18
                                          br $B211
                                        end
                                        i32.const 0
                                        local.set $l18
                                        loop $L213
                                          local.get $l6
                                          local.get $l18
                                          i32.add
                                          local.get $l16
                                          local.get $l16
                                          i32.const 10
                                          i32.div_u
                                          local.tee $l19
                                          i32.const 10
                                          i32.mul
                                          i32.sub
                                          i32.const 48
                                          i32.or
                                          i32.store8
                                          local.get $l18
                                          i32.const -1
                                          i32.add
                                          local.set $l18
                                          local.get $l16
                                          i32.const 9
                                          i32.gt_u
                                          local.set $l17
                                          local.get $l19
                                          local.set $l16
                                          local.get $l17
                                          br_if $L213
                                        end
                                      end
                                      local.get $l9
                                      local.get $l18
                                      i32.add
                                      local.set $l16
                                      block $B214
                                        block $B215
                                          local.get $l23
                                          local.get $l24
                                          i32.eq
                                          br_if $B215
                                          local.get $l16
                                          local.get $l5
                                          i32.const 336
                                          i32.add
                                          i32.le_u
                                          br_if $B214
                                          local.get $l5
                                          i32.const 336
                                          i32.add
                                          i32.const 48
                                          local.get $l18
                                          i32.const 9
                                          i32.add
                                          call $memset
                                          drop
                                          local.get $l5
                                          i32.const 336
                                          i32.add
                                          local.set $l16
                                          br $B214
                                        end
                                        local.get $l18
                                        br_if $B214
                                        local.get $l16
                                        i32.const -1
                                        i32.add
                                        local.tee $l16
                                        i32.const 48
                                        i32.store8
                                      end
                                      block $B216
                                        local.get $p0
                                        i32.load8_u
                                        i32.const 32
                                        i32.and
                                        br_if $B216
                                        local.get $l16
                                        local.get $l9
                                        local.get $l16
                                        i32.sub
                                        local.get $p0
                                        call $__fwritex
                                        drop
                                      end
                                      local.get $l23
                                      i32.const 4
                                      i32.add
                                      local.tee $l23
                                      local.get $l28
                                      i32.le_u
                                      br_if $L210
                                    end
                                    block $B217
                                      local.get $l25
                                      i32.eqz
                                      br_if $B217
                                      local.get $p0
                                      i32.load8_u
                                      i32.const 32
                                      i32.and
                                      br_if $B217
                                      i32.const 3635
                                      i32.const 1
                                      local.get $p0
                                      call $__fwritex
                                      drop
                                    end
                                    block $B218
                                      local.get $l36
                                      i32.const 1
                                      i32.lt_s
                                      br_if $B218
                                      local.get $l23
                                      local.get $l20
                                      i32.ge_u
                                      br_if $B218
                                      loop $L219
                                        local.get $l9
                                        local.set $l16
                                        block $B220
                                          block $B221
                                            local.get $l23
                                            i32.load
                                            local.tee $l18
                                            i32.eqz
                                            br_if $B221
                                            local.get $l9
                                            local.set $l16
                                            loop $L222
                                              local.get $l16
                                              i32.const -1
                                              i32.add
                                              local.tee $l16
                                              local.get $l18
                                              local.get $l18
                                              i32.const 10
                                              i32.div_u
                                              local.tee $l19
                                              i32.const 10
                                              i32.mul
                                              i32.sub
                                              i32.const 48
                                              i32.or
                                              i32.store8
                                              local.get $l18
                                              i32.const 9
                                              i32.gt_u
                                              local.set $l17
                                              local.get $l19
                                              local.set $l18
                                              local.get $l17
                                              br_if $L222
                                            end
                                            local.get $l16
                                            local.get $l5
                                            i32.const 336
                                            i32.add
                                            i32.le_u
                                            br_if $B220
                                          end
                                          local.get $l5
                                          i32.const 336
                                          i32.add
                                          i32.const 48
                                          local.get $l16
                                          local.get $l12
                                          i32.add
                                          call $memset
                                          drop
                                          loop $L223
                                            local.get $l16
                                            i32.const -1
                                            i32.add
                                            local.tee $l16
                                            local.get $l5
                                            i32.const 336
                                            i32.add
                                            i32.gt_u
                                            br_if $L223
                                          end
                                        end
                                        block $B224
                                          local.get $p0
                                          i32.load8_u
                                          i32.const 32
                                          i32.and
                                          br_if $B224
                                          local.get $l16
                                          local.get $l36
                                          i32.const 9
                                          local.get $l36
                                          i32.const 9
                                          i32.lt_s
                                          select
                                          local.get $p0
                                          call $__fwritex
                                          drop
                                        end
                                        local.get $l36
                                        i32.const -9
                                        i32.add
                                        local.tee $l36
                                        i32.const 1
                                        i32.lt_s
                                        br_if $B218
                                        local.get $l23
                                        i32.const 4
                                        i32.add
                                        local.tee $l23
                                        local.get $l20
                                        i32.lt_u
                                        br_if $L219
                                      end
                                    end
                                    local.get $l36
                                    i32.const 1
                                    i32.lt_s
                                    br_if $B208
                                    local.get $l5
                                    i32.const 64
                                    i32.add
                                    i32.const 48
                                    local.get $l36
                                    i32.const 256
                                    local.get $l36
                                    i32.const 256
                                    i32.lt_u
                                    local.tee $l16
                                    select
                                    call $memset
                                    drop
                                    local.get $p0
                                    i32.load
                                    local.tee $l19
                                    i32.const 32
                                    i32.and
                                    local.set $l18
                                    block $B225
                                      block $B226
                                        local.get $l16
                                        br_if $B226
                                        local.get $l18
                                        i32.eqz
                                        local.set $l16
                                        local.get $l36
                                        local.set $l18
                                        loop $L227
                                          block $B228
                                            local.get $l16
                                            i32.const 1
                                            i32.and
                                            i32.eqz
                                            br_if $B228
                                            local.get $l5
                                            i32.const 64
                                            i32.add
                                            i32.const 256
                                            local.get $p0
                                            call $__fwritex
                                            drop
                                            local.get $p0
                                            i32.load
                                            local.set $l19
                                          end
                                          local.get $l19
                                          i32.const 32
                                          i32.and
                                          local.tee $l17
                                          i32.eqz
                                          local.set $l16
                                          local.get $l18
                                          i32.const -256
                                          i32.add
                                          local.tee $l18
                                          i32.const 255
                                          i32.gt_u
                                          br_if $L227
                                        end
                                        local.get $l17
                                        br_if $B208
                                        local.get $l36
                                        i32.const 255
                                        i32.and
                                        local.set $l36
                                        br $B225
                                      end
                                      local.get $l18
                                      br_if $B208
                                    end
                                    local.get $l5
                                    i32.const 64
                                    i32.add
                                    local.get $l36
                                    local.get $p0
                                    call $__fwritex
                                    drop
                                    br $B208
                                  end
                                  block $B229
                                    local.get $l36
                                    i32.const -1
                                    i32.le_s
                                    br_if $B229
                                    local.get $l20
                                    local.get $l18
                                    i32.const 4
                                    i32.add
                                    local.get $l29
                                    select
                                    local.set $l24
                                    local.get $l18
                                    local.set $l23
                                    loop $L230
                                      local.get $l9
                                      local.set $l17
                                      block $B231
                                        block $B232
                                          local.get $l23
                                          i32.load
                                          local.tee $l16
                                          i32.eqz
                                          br_if $B232
                                          i32.const 0
                                          local.set $l19
                                          loop $L233
                                            local.get $l5
                                            i32.const 336
                                            i32.add
                                            local.get $l19
                                            i32.add
                                            i32.const 8
                                            i32.add
                                            local.get $l16
                                            local.get $l16
                                            i32.const 10
                                            i32.div_u
                                            local.tee $l17
                                            i32.const 10
                                            i32.mul
                                            i32.sub
                                            i32.const 48
                                            i32.or
                                            i32.store8
                                            local.get $l19
                                            i32.const -1
                                            i32.add
                                            local.set $l19
                                            local.get $l16
                                            i32.const 9
                                            i32.gt_u
                                            local.set $l20
                                            local.get $l17
                                            local.set $l16
                                            local.get $l20
                                            br_if $L233
                                          end
                                          local.get $l5
                                          i32.const 336
                                          i32.add
                                          local.get $l19
                                          i32.add
                                          i32.const 9
                                          i32.add
                                          local.set $l17
                                          local.get $l19
                                          br_if $B231
                                        end
                                        local.get $l17
                                        i32.const -1
                                        i32.add
                                        local.tee $l17
                                        i32.const 48
                                        i32.store8
                                      end
                                      block $B234
                                        block $B235
                                          local.get $l23
                                          local.get $l18
                                          i32.eq
                                          br_if $B235
                                          local.get $l17
                                          local.get $l5
                                          i32.const 336
                                          i32.add
                                          i32.le_u
                                          br_if $B234
                                          local.get $l5
                                          i32.const 336
                                          i32.add
                                          i32.const 48
                                          local.get $l17
                                          local.get $l12
                                          i32.add
                                          call $memset
                                          drop
                                          loop $L236
                                            local.get $l17
                                            i32.const -1
                                            i32.add
                                            local.tee $l17
                                            local.get $l5
                                            i32.const 336
                                            i32.add
                                            i32.gt_u
                                            br_if $L236
                                            br $B234
                                          end
                                        end
                                        block $B237
                                          local.get $p0
                                          i32.load8_u
                                          i32.const 32
                                          i32.and
                                          br_if $B237
                                          local.get $l17
                                          i32.const 1
                                          local.get $p0
                                          call $__fwritex
                                          drop
                                        end
                                        local.get $l17
                                        i32.const 1
                                        i32.add
                                        local.set $l17
                                        block $B238
                                          local.get $l26
                                          br_if $B238
                                          local.get $l36
                                          i32.const 1
                                          i32.lt_s
                                          br_if $B234
                                        end
                                        local.get $p0
                                        i32.load8_u
                                        i32.const 32
                                        i32.and
                                        br_if $B234
                                        i32.const 3635
                                        i32.const 1
                                        local.get $p0
                                        call $__fwritex
                                        drop
                                      end
                                      local.get $l9
                                      local.get $l17
                                      i32.sub
                                      local.set $l16
                                      block $B239
                                        local.get $p0
                                        i32.load8_u
                                        i32.const 32
                                        i32.and
                                        br_if $B239
                                        local.get $l17
                                        local.get $l16
                                        local.get $l36
                                        local.get $l36
                                        local.get $l16
                                        i32.gt_s
                                        select
                                        local.get $p0
                                        call $__fwritex
                                        drop
                                      end
                                      local.get $l36
                                      local.get $l16
                                      i32.sub
                                      local.set $l36
                                      block $B240
                                        local.get $l23
                                        i32.const 4
                                        i32.add
                                        local.tee $l23
                                        local.get $l24
                                        i32.ge_u
                                        br_if $B240
                                        local.get $l36
                                        i32.const -1
                                        i32.gt_s
                                        br_if $L230
                                      end
                                    end
                                    local.get $l36
                                    i32.const 1
                                    i32.lt_s
                                    br_if $B229
                                    local.get $l5
                                    i32.const 64
                                    i32.add
                                    i32.const 48
                                    local.get $l36
                                    i32.const 256
                                    local.get $l36
                                    i32.const 256
                                    i32.lt_u
                                    local.tee $l16
                                    select
                                    call $memset
                                    drop
                                    local.get $p0
                                    i32.load
                                    local.tee $l19
                                    i32.const 32
                                    i32.and
                                    local.set $l18
                                    block $B241
                                      block $B242
                                        local.get $l16
                                        br_if $B242
                                        local.get $l18
                                        i32.eqz
                                        local.set $l16
                                        local.get $l36
                                        local.set $l18
                                        loop $L243
                                          block $B244
                                            local.get $l16
                                            i32.const 1
                                            i32.and
                                            i32.eqz
                                            br_if $B244
                                            local.get $l5
                                            i32.const 64
                                            i32.add
                                            i32.const 256
                                            local.get $p0
                                            call $__fwritex
                                            drop
                                            local.get $p0
                                            i32.load
                                            local.set $l19
                                          end
                                          local.get $l19
                                          i32.const 32
                                          i32.and
                                          local.tee $l17
                                          i32.eqz
                                          local.set $l16
                                          local.get $l18
                                          i32.const -256
                                          i32.add
                                          local.tee $l18
                                          i32.const 255
                                          i32.gt_u
                                          br_if $L243
                                        end
                                        local.get $l17
                                        br_if $B229
                                        local.get $l36
                                        i32.const 255
                                        i32.and
                                        local.set $l36
                                        br $B241
                                      end
                                      local.get $l18
                                      br_if $B229
                                    end
                                    local.get $l5
                                    i32.const 64
                                    i32.add
                                    local.get $l36
                                    local.get $p0
                                    call $__fwritex
                                    drop
                                  end
                                  local.get $p0
                                  i32.load8_u
                                  i32.const 32
                                  i32.and
                                  br_if $B208
                                  local.get $l39
                                  local.get $l11
                                  local.get $l39
                                  i32.sub
                                  local.get $p0
                                  call $__fwritex
                                  drop
                                end
                                block $B245
                                  local.get $l22
                                  i32.const 8192
                                  i32.ne
                                  br_if $B245
                                  local.get $l21
                                  local.get $l27
                                  i32.le_s
                                  br_if $B245
                                  local.get $l5
                                  i32.const 64
                                  i32.add
                                  i32.const 32
                                  local.get $l21
                                  local.get $l27
                                  i32.sub
                                  local.tee $l20
                                  i32.const 256
                                  local.get $l20
                                  i32.const 256
                                  i32.lt_u
                                  local.tee $l16
                                  select
                                  call $memset
                                  drop
                                  local.get $p0
                                  i32.load
                                  local.tee $l19
                                  i32.const 32
                                  i32.and
                                  local.set $l18
                                  block $B246
                                    block $B247
                                      local.get $l16
                                      br_if $B247
                                      local.get $l18
                                      i32.eqz
                                      local.set $l16
                                      local.get $l20
                                      local.set $l18
                                      loop $L248
                                        block $B249
                                          local.get $l16
                                          i32.const 1
                                          i32.and
                                          i32.eqz
                                          br_if $B249
                                          local.get $l5
                                          i32.const 64
                                          i32.add
                                          i32.const 256
                                          local.get $p0
                                          call $__fwritex
                                          drop
                                          local.get $p0
                                          i32.load
                                          local.set $l19
                                        end
                                        local.get $l19
                                        i32.const 32
                                        i32.and
                                        local.tee $l17
                                        i32.eqz
                                        local.set $l16
                                        local.get $l18
                                        i32.const -256
                                        i32.add
                                        local.tee $l18
                                        i32.const 255
                                        i32.gt_u
                                        br_if $L248
                                      end
                                      local.get $l17
                                      br_if $B245
                                      local.get $l20
                                      i32.const 255
                                      i32.and
                                      local.set $l20
                                      br $B246
                                    end
                                    local.get $l18
                                    br_if $B245
                                  end
                                  local.get $l5
                                  i32.const 64
                                  i32.add
                                  local.get $l20
                                  local.get $p0
                                  call $__fwritex
                                  drop
                                end
                                local.get $l21
                                local.get $l27
                                local.get $l21
                                local.get $l27
                                i32.gt_s
                                select
                                local.set $l16
                              end
                              local.get $l16
                              i32.const 0
                              i32.ge_s
                              br_if $L3
                              br $B2
                            end
                            i32.const 0
                            local.set $l28
                            i32.const 2950
                            local.set $l29
                          end
                          local.get $l13
                          local.set $l16
                          br $B4
                        end
                        local.get $l24
                        local.set $l22
                        local.get $l19
                        local.set $l20
                        local.get $l16
                        i32.load8_u
                        i32.eqz
                        br_if $B4
                        br $B2
                      end
                      local.get $p1
                      i32.load8_u offset=1
                      local.set $l16
                      local.get $p1
                      i32.const 1
                      i32.add
                      local.set $p1
                      br $L8
                    end
                  end
                  local.get $p0
                  br_if $B0
                  block $B250
                    local.get $l14
                    br_if $B250
                    i32.const 0
                    local.set $l15
                    br $B0
                  end
                  block $B251
                    block $B252
                      local.get $p4
                      i32.load offset=4
                      local.tee $p1
                      br_if $B252
                      i32.const 1
                      local.set $p1
                      br $B251
                    end
                    local.get $p3
                    i32.const 8
                    i32.add
                    local.get $p1
                    local.get $p2
                    call $pop_arg
                    block $B253
                      local.get $p4
                      i32.load offset=8
                      local.tee $p1
                      br_if $B253
                      i32.const 2
                      local.set $p1
                      br $B251
                    end
                    local.get $p3
                    i32.const 16
                    i32.add
                    local.get $p1
                    local.get $p2
                    call $pop_arg
                    block $B254
                      local.get $p4
                      i32.load offset=12
                      local.tee $p1
                      br_if $B254
                      i32.const 3
                      local.set $p1
                      br $B251
                    end
                    local.get $p3
                    i32.const 24
                    i32.add
                    local.get $p1
                    local.get $p2
                    call $pop_arg
                    block $B255
                      local.get $p4
                      i32.load offset=16
                      local.tee $p1
                      br_if $B255
                      i32.const 4
                      local.set $p1
                      br $B251
                    end
                    local.get $p3
                    i32.const 32
                    i32.add
                    local.get $p1
                    local.get $p2
                    call $pop_arg
                    block $B256
                      local.get $p4
                      i32.load offset=20
                      local.tee $p1
                      br_if $B256
                      i32.const 5
                      local.set $p1
                      br $B251
                    end
                    local.get $p3
                    i32.const 40
                    i32.add
                    local.get $p1
                    local.get $p2
                    call $pop_arg
                    block $B257
                      local.get $p4
                      i32.load offset=24
                      local.tee $p1
                      br_if $B257
                      i32.const 6
                      local.set $p1
                      br $B251
                    end
                    local.get $p3
                    i32.const 48
                    i32.add
                    local.get $p1
                    local.get $p2
                    call $pop_arg
                    block $B258
                      local.get $p4
                      i32.load offset=28
                      local.tee $p1
                      br_if $B258
                      i32.const 7
                      local.set $p1
                      br $B251
                    end
                    local.get $p3
                    i32.const 56
                    i32.add
                    local.get $p1
                    local.get $p2
                    call $pop_arg
                    block $B259
                      local.get $p4
                      i32.load offset=32
                      local.tee $p1
                      br_if $B259
                      i32.const 8
                      local.set $p1
                      br $B251
                    end
                    local.get $p3
                    i32.const 64
                    i32.add
                    local.get $p1
                    local.get $p2
                    call $pop_arg
                    local.get $p4
                    i32.load offset=36
                    local.tee $p1
                    br_if $B5
                    i32.const 9
                    local.set $p1
                  end
                  local.get $p1
                  i32.const 2
                  i32.shl
                  local.set $p1
                  loop $L260
                    local.get $p4
                    local.get $p1
                    i32.add
                    i32.load
                    br_if $B6
                    local.get $p1
                    i32.const 4
                    i32.add
                    local.tee $p1
                    i32.const 40
                    i32.ne
                    br_if $L260
                  end
                  i32.const 1
                  local.set $l15
                  br $B0
                end
                i32.const 0
                i32.const 28
                i32.store offset=4384
                br $B1
              end
              local.get $p3
              i32.const 72
              i32.add
              local.get $p1
              local.get $p2
              call $pop_arg
              i32.const 1
              local.set $l15
              br $B0
            end
            local.get $l16
            local.get $l17
            i32.sub
            local.tee $l25
            local.get $l20
            local.get $l20
            local.get $l25
            i32.lt_s
            select
            local.tee $l27
            i32.const 2147483647
            local.get $l28
            i32.sub
            i32.gt_s
            br_if $B2
            local.get $l28
            local.get $l27
            i32.add
            local.tee $l26
            local.get $l21
            local.get $l21
            local.get $l26
            i32.lt_s
            select
            local.tee $l16
            local.get $l18
            i32.gt_s
            br_if $B2
            block $B261
              local.get $l22
              i32.const 73728
              i32.and
              local.tee $l22
              br_if $B261
              local.get $l26
              local.get $l21
              i32.ge_s
              br_if $B261
              local.get $l5
              i32.const 64
              i32.add
              i32.const 32
              local.get $l16
              local.get $l26
              i32.sub
              local.tee $l36
              i32.const 256
              local.get $l36
              i32.const 256
              i32.lt_u
              local.tee $l18
              select
              call $memset
              drop
              local.get $p0
              i32.load
              local.tee $l23
              i32.const 32
              i32.and
              local.set $l19
              block $B262
                block $B263
                  local.get $l18
                  br_if $B263
                  local.get $l19
                  i32.eqz
                  local.set $l18
                  local.get $l36
                  local.set $l19
                  loop $L264
                    block $B265
                      local.get $l18
                      i32.const 1
                      i32.and
                      i32.eqz
                      br_if $B265
                      local.get $l5
                      i32.const 64
                      i32.add
                      i32.const 256
                      local.get $p0
                      call $__fwritex
                      drop
                      local.get $p0
                      i32.load
                      local.set $l23
                    end
                    local.get $l23
                    i32.const 32
                    i32.and
                    local.tee $l24
                    i32.eqz
                    local.set $l18
                    local.get $l19
                    i32.const -256
                    i32.add
                    local.tee $l19
                    i32.const 255
                    i32.gt_u
                    br_if $L264
                  end
                  local.get $l24
                  br_if $B261
                  local.get $l36
                  i32.const 255
                  i32.and
                  local.set $l36
                  br $B262
                end
                local.get $l19
                br_if $B261
              end
              local.get $l5
              i32.const 64
              i32.add
              local.get $l36
              local.get $p0
              call $__fwritex
              drop
            end
            block $B266
              local.get $p0
              i32.load8_u
              i32.const 32
              i32.and
              br_if $B266
              local.get $l29
              local.get $l28
              local.get $p0
              call $__fwritex
              drop
            end
            block $B267
              local.get $l22
              i32.const 65536
              i32.ne
              br_if $B267
              local.get $l26
              local.get $l21
              i32.ge_s
              br_if $B267
              local.get $l5
              i32.const 64
              i32.add
              i32.const 48
              local.get $l16
              local.get $l26
              i32.sub
              local.tee $l28
              i32.const 256
              local.get $l28
              i32.const 256
              i32.lt_u
              local.tee $l18
              select
              call $memset
              drop
              local.get $p0
              i32.load
              local.tee $l23
              i32.const 32
              i32.and
              local.set $l19
              block $B268
                block $B269
                  local.get $l18
                  br_if $B269
                  local.get $l19
                  i32.eqz
                  local.set $l18
                  local.get $l28
                  local.set $l19
                  loop $L270
                    block $B271
                      local.get $l18
                      i32.const 1
                      i32.and
                      i32.eqz
                      br_if $B271
                      local.get $l5
                      i32.const 64
                      i32.add
                      i32.const 256
                      local.get $p0
                      call $__fwritex
                      drop
                      local.get $p0
                      i32.load
                      local.set $l23
                    end
                    local.get $l23
                    i32.const 32
                    i32.and
                    local.tee $l24
                    i32.eqz
                    local.set $l18
                    local.get $l19
                    i32.const -256
                    i32.add
                    local.tee $l19
                    i32.const 255
                    i32.gt_u
                    br_if $L270
                  end
                  local.get $l24
                  br_if $B267
                  local.get $l28
                  i32.const 255
                  i32.and
                  local.set $l28
                  br $B268
                end
                local.get $l19
                br_if $B267
              end
              local.get $l5
              i32.const 64
              i32.add
              local.get $l28
              local.get $p0
              call $__fwritex
              drop
            end
            block $B272
              local.get $l25
              local.get $l20
              i32.ge_s
              br_if $B272
              local.get $l5
              i32.const 64
              i32.add
              i32.const 48
              local.get $l27
              local.get $l25
              i32.sub
              local.tee $l24
              i32.const 256
              local.get $l24
              i32.const 256
              i32.lt_u
              local.tee $l18
              select
              call $memset
              drop
              local.get $p0
              i32.load
              local.tee $l20
              i32.const 32
              i32.and
              local.set $l19
              block $B273
                block $B274
                  local.get $l18
                  br_if $B274
                  local.get $l19
                  i32.eqz
                  local.set $l18
                  local.get $l24
                  local.set $l19
                  loop $L275
                    block $B276
                      local.get $l18
                      i32.const 1
                      i32.and
                      i32.eqz
                      br_if $B276
                      local.get $l5
                      i32.const 64
                      i32.add
                      i32.const 256
                      local.get $p0
                      call $__fwritex
                      drop
                      local.get $p0
                      i32.load
                      local.set $l20
                    end
                    local.get $l20
                    i32.const 32
                    i32.and
                    local.tee $l23
                    i32.eqz
                    local.set $l18
                    local.get $l19
                    i32.const -256
                    i32.add
                    local.tee $l19
                    i32.const 255
                    i32.gt_u
                    br_if $L275
                  end
                  local.get $l23
                  br_if $B272
                  local.get $l24
                  i32.const 255
                  i32.and
                  local.set $l24
                  br $B273
                end
                local.get $l19
                br_if $B272
              end
              local.get $l5
              i32.const 64
              i32.add
              local.get $l24
              local.get $p0
              call $__fwritex
              drop
            end
            block $B277
              local.get $p0
              i32.load8_u
              i32.const 32
              i32.and
              br_if $B277
              local.get $l17
              local.get $l25
              local.get $p0
              call $__fwritex
              drop
            end
            local.get $l22
            i32.const 8192
            i32.ne
            br_if $L3
            local.get $l26
            local.get $l21
            i32.ge_s
            br_if $L3
            local.get $l5
            i32.const 64
            i32.add
            i32.const 32
            local.get $l16
            local.get $l26
            i32.sub
            local.tee $l20
            i32.const 256
            local.get $l20
            i32.const 256
            i32.lt_u
            local.tee $l18
            select
            call $memset
            drop
            local.get $p0
            i32.load
            local.tee $l17
            i32.const 32
            i32.and
            local.set $l19
            block $B278
              block $B279
                local.get $l18
                br_if $B279
                local.get $l19
                i32.eqz
                local.set $l18
                local.get $l20
                local.set $l19
                loop $L280
                  block $B281
                    local.get $l18
                    i32.const 1
                    i32.and
                    i32.eqz
                    br_if $B281
                    local.get $l5
                    i32.const 64
                    i32.add
                    i32.const 256
                    local.get $p0
                    call $__fwritex
                    drop
                    local.get $p0
                    i32.load
                    local.set $l17
                  end
                  local.get $l17
                  i32.const 32
                  i32.and
                  local.tee $l21
                  i32.eqz
                  local.set $l18
                  local.get $l19
                  i32.const -256
                  i32.add
                  local.tee $l19
                  i32.const 255
                  i32.gt_u
                  br_if $L280
                end
                local.get $l21
                br_if $L3
                local.get $l20
                i32.const 255
                i32.and
                local.set $l20
                br $B278
              end
              local.get $l19
              br_if $L3
            end
            local.get $l5
            i32.const 64
            i32.add
            local.get $l20
            local.get $p0
            call $__fwritex
            drop
            br $L3
          end
        end
        i32.const 0
        i32.const 61
        i32.store offset=4384
      end
      i32.const -1
      local.set $l15
    end
    local.get $l5
    i32.const 880
    i32.add
    global.set $g0
    local.get $l15)
  (func $pop_arg (type $t9) (param $p0 i32) (param $p1 i32) (param $p2 i32)
    block $B0
      local.get $p1
      i32.const -9
      i32.add
      local.tee $p1
      i32.const 17
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
                                  block $B15
                                    block $B16
                                      block $B17
                                        block $B18
                                          local.get $p1
                                          br_table $B1 $B18 $B17 $B14 $B16 $B15 $B13 $B12 $B11 $B10 $B9 $B8 $B7 $B6 $B5 $B4 $B3 $B2 $B1
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
        call $long_double_not_supported
        unreachable
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
    end)
  (func $long_double_not_supported (type $t7)
    i32.const 3440
    i32.const 3768
    call $fputs
    drop
    call $abort
    unreachable)
  (func $puts (type $t4) (param $p0 i32) (result i32)
    block $B0
      local.get $p0
      i32.const 3648
      call $fputs
      i32.const 0
      i32.ge_s
      br_if $B0
      i32.const -1
      return
    end
    block $B1
      i32.const 0
      i32.load offset=3712
      i32.const 10
      i32.eq
      br_if $B1
      i32.const 0
      i32.load offset=3668
      local.tee $p0
      i32.const 0
      i32.load offset=3664
      i32.eq
      br_if $B1
      i32.const 0
      local.get $p0
      i32.const 1
      i32.add
      i32.store offset=3668
      local.get $p0
      i32.const 10
      i32.store8
      i32.const 0
      return
    end
    i32.const 3648
    i32.const 10
    call $__overflow
    i32.const 31
    i32.shr_s)
  (func $__towrite (type $t4) (param $p0 i32) (result i32)
    (local $l1 i32)
    local.get $p0
    local.get $p0
    i32.load offset=60
    local.tee $l1
    i32.const -1
    i32.add
    local.get $l1
    i32.or
    i32.store offset=60
    block $B0
      local.get $p0
      i32.load
      local.tee $l1
      i32.const 8
      i32.and
      i32.eqz
      br_if $B0
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
    i32.load offset=40
    local.tee $l1
    i32.store offset=24
    local.get $p0
    local.get $l1
    i32.store offset=20
    local.get $p0
    local.get $l1
    local.get $p0
    i32.load offset=44
    i32.add
    i32.store offset=16
    i32.const 0)
  (func $fputs (type $t2) (param $p0 i32) (param $p1 i32) (result i32)
    (local $l2 i32)
    i32.const -1
    i32.const 0
    local.get $p0
    call $strlen
    local.tee $l2
    local.get $p0
    i32.const 1
    local.get $l2
    local.get $p1
    call $fwrite
    i32.ne
    select)
  (func $__stdio_exit (type $t7)
    (local $l0 i32) (local $l1 i32) (local $l2 i32)
    block $B0
      call $__ofl_lock
      i32.load
      local.tee $l0
      i32.eqz
      br_if $B0
      loop $L1
        block $B2
          local.get $l0
          i32.load offset=20
          local.get $l0
          i32.load offset=24
          i32.eq
          br_if $B2
          local.get $l0
          i32.const 0
          i32.const 0
          local.get $l0
          i32.load offset=32
          call_indirect (type $t0) $T0
          drop
        end
        block $B3
          local.get $l0
          i32.load offset=4
          local.tee $l1
          local.get $l0
          i32.load offset=8
          local.tee $l2
          i32.eq
          br_if $B3
          local.get $l0
          local.get $l1
          local.get $l2
          i32.sub
          i64.extend_i32_s
          i32.const 0
          local.get $l0
          i32.load offset=36
          call_indirect (type $t1) $T0
          drop
        end
        local.get $l0
        i32.load offset=52
        local.tee $l0
        br_if $L1
      end
    end
    block $B4
      i32.const 0
      i32.load offset=4420
      local.tee $l0
      i32.eqz
      br_if $B4
      block $B5
        local.get $l0
        i32.load offset=20
        local.get $l0
        i32.load offset=24
        i32.eq
        br_if $B5
        local.get $l0
        i32.const 0
        i32.const 0
        local.get $l0
        i32.load offset=32
        call_indirect (type $t0) $T0
        drop
      end
      local.get $l0
      i32.load offset=4
      local.tee $l1
      local.get $l0
      i32.load offset=8
      local.tee $l2
      i32.eq
      br_if $B4
      local.get $l0
      local.get $l1
      local.get $l2
      i32.sub
      i64.extend_i32_s
      i32.const 0
      local.get $l0
      i32.load offset=36
      call_indirect (type $t1) $T0
      drop
    end
    block $B6
      i32.const 0
      i32.load offset=3760
      local.tee $l0
      i32.eqz
      br_if $B6
      block $B7
        local.get $l0
        i32.load offset=20
        local.get $l0
        i32.load offset=24
        i32.eq
        br_if $B7
        local.get $l0
        i32.const 0
        i32.const 0
        local.get $l0
        i32.load offset=32
        call_indirect (type $t0) $T0
        drop
      end
      local.get $l0
      i32.load offset=4
      local.tee $l1
      local.get $l0
      i32.load offset=8
      local.tee $l2
      i32.eq
      br_if $B6
      local.get $l0
      local.get $l1
      local.get $l2
      i32.sub
      i64.extend_i32_s
      i32.const 0
      local.get $l0
      i32.load offset=36
      call_indirect (type $t1) $T0
      drop
    end
    block $B8
      i32.const 0
      i32.load offset=3880
      local.tee $l0
      i32.eqz
      br_if $B8
      block $B9
        local.get $l0
        i32.load offset=20
        local.get $l0
        i32.load offset=24
        i32.eq
        br_if $B9
        local.get $l0
        i32.const 0
        i32.const 0
        local.get $l0
        i32.load offset=32
        call_indirect (type $t0) $T0
        drop
      end
      local.get $l0
      i32.load offset=4
      local.tee $l1
      local.get $l0
      i32.load offset=8
      local.tee $l2
      i32.eq
      br_if $B8
      local.get $l0
      local.get $l1
      local.get $l2
      i32.sub
      i64.extend_i32_s
      i32.const 0
      local.get $l0
      i32.load offset=36
      call_indirect (type $t1) $T0
      drop
    end)
  (func $__overflow (type $t2) (param $p0 i32) (param $p1 i32) (result i32)
    (local $l2 i32) (local $l3 i32) (local $l4 i32)
    global.get $g0
    i32.const 16
    i32.sub
    local.tee $l2
    global.set $g0
    local.get $l2
    local.get $p1
    i32.store8 offset=15
    block $B0
      block $B1
        local.get $p0
        i32.load offset=16
        local.tee $l3
        br_if $B1
        i32.const -1
        local.set $l3
        local.get $p0
        call $__towrite
        br_if $B0
        local.get $p0
        i32.load offset=16
        local.set $l3
      end
      block $B2
        local.get $p0
        i32.load offset=20
        local.tee $l4
        local.get $l3
        i32.eq
        br_if $B2
        local.get $p0
        i32.load offset=64
        local.get $p1
        i32.const 255
        i32.and
        local.tee $l3
        i32.eq
        br_if $B2
        local.get $p0
        local.get $l4
        i32.const 1
        i32.add
        i32.store offset=20
        local.get $l4
        local.get $p1
        i32.store8
        br $B0
      end
      i32.const -1
      local.set $l3
      local.get $p0
      local.get $l2
      i32.const 15
      i32.add
      i32.const 1
      local.get $p0
      i32.load offset=32
      call_indirect (type $t0) $T0
      i32.const 1
      i32.ne
      br_if $B0
      local.get $l2
      i32.load8_u offset=15
      local.set $l3
    end
    local.get $l2
    i32.const 16
    i32.add
    global.set $g0
    local.get $l3)
  (func $__stdio_close (type $t4) (param $p0 i32) (result i32)
    local.get $p0
    i32.load offset=56
    call $close)
  (func $lseek (type $t1) (param $p0 i32) (param $p1 i64) (param $p2 i32) (result i64)
    (local $l3 i32)
    global.get $g0
    i32.const 16
    i32.sub
    local.tee $l3
    global.set $g0
    block $B0
      block $B1
        local.get $p0
        local.get $p1
        local.get $p2
        i32.const 255
        i32.and
        local.get $l3
        i32.const 8
        i32.add
        call $__wasi_fd_seek
        local.tee $p0
        i32.eqz
        br_if $B1
        i32.const 0
        i32.const 70
        local.get $p0
        local.get $p0
        i32.const 76
        i32.eq
        select
        i32.store offset=4384
        i64.const -1
        local.set $p1
        br $B0
      end
      local.get $l3
      i64.load offset=8
      local.set $p1
    end
    local.get $l3
    i32.const 16
    i32.add
    global.set $g0
    local.get $p1)
  (func $__stdio_seek (type $t1) (param $p0 i32) (param $p1 i64) (param $p2 i32) (result i64)
    local.get $p0
    i32.load offset=56
    local.get $p1
    local.get $p2
    call $lseek)
  (func $__isatty (type $t4) (param $p0 i32) (result i32)
    (local $l1 i32) (local $l2 i32)
    global.get $g0
    i32.const 32
    i32.sub
    local.tee $l1
    global.set $g0
    block $B0
      block $B1
        local.get $p0
        local.get $l1
        i32.const 8
        i32.add
        call $__wasi_fd_fdstat_get
        local.tee $p0
        br_if $B1
        i32.const 59
        local.set $p0
        local.get $l1
        i32.load8_u offset=8
        i32.const 2
        i32.ne
        br_if $B1
        local.get $l1
        i32.load8_u offset=16
        i32.const 36
        i32.and
        br_if $B1
        i32.const 1
        local.set $l2
        br $B0
      end
      i32.const 0
      local.set $l2
      i32.const 0
      local.get $p0
      i32.store offset=4384
    end
    local.get $l1
    i32.const 32
    i32.add
    global.set $g0
    local.get $l2)
  (func $__stdout_write (type $t0) (param $p0 i32) (param $p1 i32) (param $p2 i32) (result i32)
    local.get $p0
    i32.const 4
    i32.store offset=32
    block $B0
      local.get $p0
      i32.load8_u
      i32.const 64
      i32.and
      br_if $B0
      local.get $p0
      i32.load offset=56
      call $__isatty
      br_if $B0
      local.get $p0
      i32.const -1
      i32.store offset=64
    end
    local.get $p0
    local.get $p1
    local.get $p2
    call $__stdio_write)
  (func $__fwritex (type $t0) (param $p0 i32) (param $p1 i32) (param $p2 i32) (result i32)
    (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32)
    block $B0
      block $B1
        local.get $p2
        i32.load offset=16
        local.tee $l3
        br_if $B1
        i32.const 0
        local.set $l4
        local.get $p2
        call $__towrite
        br_if $B0
        local.get $p2
        i32.load offset=16
        local.set $l3
      end
      block $B2
        local.get $l3
        local.get $p2
        i32.load offset=20
        local.tee $l5
        i32.sub
        local.get $p1
        i32.ge_u
        br_if $B2
        local.get $p2
        local.get $p0
        local.get $p1
        local.get $p2
        i32.load offset=32
        call_indirect (type $t0) $T0
        return
      end
      i32.const 0
      local.set $l6
      block $B3
        local.get $p2
        i32.load offset=64
        i32.const 0
        i32.lt_s
        br_if $B3
        i32.const 0
        local.set $l6
        local.get $p0
        local.set $l4
        i32.const 0
        local.set $l3
        loop $L4
          local.get $p1
          local.get $l3
          i32.eq
          br_if $B3
          local.get $l3
          i32.const 1
          i32.add
          local.set $l3
          local.get $l4
          local.get $p1
          i32.add
          local.set $l7
          local.get $l4
          i32.const -1
          i32.add
          local.tee $l8
          local.set $l4
          local.get $l7
          i32.const -1
          i32.add
          i32.load8_u
          i32.const 10
          i32.ne
          br_if $L4
        end
        local.get $p2
        local.get $p0
        local.get $p1
        local.get $l3
        i32.sub
        i32.const 1
        i32.add
        local.tee $l6
        local.get $p2
        i32.load offset=32
        call_indirect (type $t0) $T0
        local.tee $l4
        local.get $l6
        i32.lt_u
        br_if $B0
        local.get $l8
        local.get $p1
        i32.add
        i32.const 1
        i32.add
        local.set $p0
        local.get $p2
        i32.load offset=20
        local.set $l5
        local.get $l3
        i32.const -1
        i32.add
        local.set $p1
      end
      local.get $l5
      local.get $p0
      local.get $p1
      call $memcpy
      drop
      local.get $p2
      local.get $p2
      i32.load offset=20
      local.get $p1
      i32.add
      i32.store offset=20
      local.get $l6
      local.get $p1
      i32.add
      local.set $l4
    end
    local.get $l4)
  (func $fwrite (type $t6) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32) (result i32)
    (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32) (local $l9 i32) (local $l10 i32)
    local.get $p2
    local.get $p1
    i32.mul
    local.set $l4
    block $B0
      block $B1
        local.get $p3
        i32.load offset=16
        local.tee $l5
        br_if $B1
        i32.const 0
        local.set $l5
        local.get $p3
        call $__towrite
        br_if $B0
        local.get $p3
        i32.load offset=16
        local.set $l5
      end
      block $B2
        local.get $l5
        local.get $p3
        i32.load offset=20
        local.tee $l6
        i32.sub
        local.get $l4
        i32.ge_u
        br_if $B2
        local.get $p3
        local.get $p0
        local.get $l4
        local.get $p3
        i32.load offset=32
        call_indirect (type $t0) $T0
        local.set $l5
        br $B0
      end
      i32.const 0
      local.set $l7
      block $B3
        block $B4
          local.get $p3
          i32.load offset=64
          i32.const 0
          i32.ge_s
          br_if $B4
          local.get $l4
          local.set $l5
          br $B3
        end
        local.get $p0
        local.get $l4
        i32.add
        local.set $l8
        i32.const 0
        local.set $l7
        i32.const 0
        local.set $l5
        loop $L5
          block $B6
            local.get $l4
            local.get $l5
            i32.add
            br_if $B6
            local.get $l4
            local.set $l5
            br $B3
          end
          local.get $l8
          local.get $l5
          i32.add
          local.set $l9
          local.get $l5
          i32.const -1
          i32.add
          local.tee $l10
          local.set $l5
          local.get $l9
          i32.const -1
          i32.add
          i32.load8_u
          i32.const 10
          i32.ne
          br_if $L5
        end
        local.get $p3
        local.get $p0
        local.get $l4
        local.get $l10
        i32.add
        i32.const 1
        i32.add
        local.tee $l7
        local.get $p3
        i32.load offset=32
        call_indirect (type $t0) $T0
        local.tee $l5
        local.get $l7
        i32.lt_u
        br_if $B0
        local.get $l10
        i32.const -1
        i32.xor
        local.set $l5
        local.get $l8
        local.get $l10
        i32.add
        i32.const 1
        i32.add
        local.set $p0
        local.get $p3
        i32.load offset=20
        local.set $l6
      end
      local.get $l6
      local.get $p0
      local.get $l5
      call $memcpy
      drop
      local.get $p3
      local.get $p3
      i32.load offset=20
      local.get $l5
      i32.add
      i32.store offset=20
      local.get $l7
      local.get $l5
      i32.add
      local.set $l5
    end
    block $B7
      local.get $l5
      local.get $l4
      i32.ne
      br_if $B7
      local.get $p2
      i32.const 0
      local.get $p1
      select
      return
    end
    local.get $l5
    local.get $p1
    i32.div_u)
  (func $writev (type $t0) (param $p0 i32) (param $p1 i32) (param $p2 i32) (result i32)
    (local $l3 i32) (local $l4 i32)
    global.get $g0
    i32.const 16
    i32.sub
    local.tee $l3
    global.set $g0
    i32.const -1
    local.set $l4
    block $B0
      block $B1
        local.get $p2
        i32.const -1
        i32.gt_s
        br_if $B1
        i32.const 0
        i32.const 28
        i32.store offset=4384
        br $B0
      end
      block $B2
        local.get $p0
        local.get $p1
        local.get $p2
        local.get $l3
        i32.const 12
        i32.add
        call $__wasi_fd_write
        local.tee $p2
        i32.eqz
        br_if $B2
        i32.const 0
        local.get $p2
        i32.store offset=4384
        i32.const -1
        local.set $l4
        br $B0
      end
      local.get $l3
      i32.load offset=12
      local.set $l4
    end
    local.get $l3
    i32.const 16
    i32.add
    global.set $g0
    local.get $l4)
  (func $__stdio_write (type $t0) (param $p0 i32) (param $p1 i32) (param $p2 i32) (result i32)
    (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32)
    global.get $g0
    i32.const 16
    i32.sub
    local.tee $l3
    global.set $g0
    local.get $l3
    local.get $p2
    i32.store offset=12
    local.get $l3
    local.get $p1
    i32.store offset=8
    local.get $l3
    local.get $p0
    i32.load offset=24
    local.tee $p1
    i32.store
    local.get $l3
    local.get $p0
    i32.load offset=20
    local.get $p1
    i32.sub
    local.tee $p1
    i32.store offset=4
    i32.const 2
    local.set $l4
    block $B0
      block $B1
        local.get $p1
        local.get $p2
        i32.add
        local.tee $l5
        local.get $p0
        i32.load offset=56
        local.get $l3
        i32.const 2
        call $writev
        local.tee $l6
        i32.eq
        br_if $B1
        local.get $l3
        local.set $p1
        loop $L2
          block $B3
            local.get $l6
            i32.const -1
            i32.gt_s
            br_if $B3
            i32.const 0
            local.set $l6
            local.get $p0
            i32.const 0
            i32.store offset=24
            local.get $p0
            i64.const 0
            i64.store offset=16
            local.get $p0
            local.get $p0
            i32.load
            i32.const 32
            i32.or
            i32.store
            local.get $l4
            i32.const 2
            i32.eq
            br_if $B0
            local.get $p2
            local.get $p1
            i32.load offset=4
            i32.sub
            local.set $l6
            br $B0
          end
          local.get $p1
          i32.const 8
          i32.add
          local.get $p1
          local.get $l6
          local.get $p1
          i32.load offset=4
          local.tee $l7
          i32.gt_u
          local.tee $l8
          select
          local.tee $p1
          local.get $p1
          i32.load
          local.get $l6
          local.get $l7
          i32.const 0
          local.get $l8
          select
          i32.sub
          local.tee $l7
          i32.add
          i32.store
          local.get $p1
          local.get $p1
          i32.load offset=4
          local.get $l7
          i32.sub
          i32.store offset=4
          local.get $l5
          local.get $l6
          i32.sub
          local.set $l5
          local.get $p0
          i32.load offset=56
          local.get $p1
          local.get $l4
          local.get $l8
          i32.sub
          local.tee $l4
          call $writev
          local.tee $l8
          local.set $l6
          local.get $l5
          local.get $l8
          i32.ne
          br_if $L2
        end
      end
      local.get $p0
      local.get $p0
      i32.load offset=40
      local.tee $p1
      i32.store offset=24
      local.get $p0
      local.get $p1
      i32.store offset=20
      local.get $p0
      local.get $p1
      local.get $p0
      i32.load offset=44
      i32.add
      i32.store offset=16
      local.get $p2
      local.set $l6
    end
    local.get $l3
    i32.const 16
    i32.add
    global.set $g0
    local.get $l6)
  (func $__ofl_lock (type $t8) (result i32)
    i32.const 5472)
  (func $strdup (type $t4) (param $p0 i32) (result i32)
    (local $l1 i32) (local $l2 i32)
    block $B0
      local.get $p0
      call $strlen
      i32.const 1
      i32.add
      local.tee $l1
      call $malloc
      local.tee $l2
      i32.eqz
      br_if $B0
      local.get $l2
      local.get $p0
      local.get $l1
      call $memcpy
      drop
    end
    local.get $l2)
  (func $strlen (type $t4) (param $p0 i32) (result i32)
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
  (func $memcpy (type $t0) (param $p0 i32) (param $p1 i32) (param $p2 i32) (result i32)
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
  (func $memset (type $t0) (param $p0 i32) (param $p1 i32) (param $p2 i32) (result i32)
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
  (func $strnlen (type $t2) (param $p0 i32) (param $p1 i32) (result i32)
    (local $l2 i32)
    local.get $p0
    i32.const 0
    local.get $p1
    call $memchr
    local.tee $l2
    local.get $p0
    i32.sub
    local.get $p1
    local.get $l2
    select)
  (func $memchr (type $t0) (param $p0 i32) (param $p1 i32) (param $p2 i32) (result i32)
    (local $l3 i32) (local $l4 i32) (local $l5 i32)
    local.get $p2
    i32.const 0
    i32.ne
    local.set $l3
    block $B0
      block $B1
        block $B2
          block $B3
            local.get $p2
            br_if $B3
            local.get $p2
            local.set $l4
            br $B2
          end
          block $B4
            local.get $p0
            i32.const 3
            i32.and
            br_if $B4
            local.get $p2
            local.set $l4
            br $B2
          end
          local.get $p1
          i32.const 255
          i32.and
          local.set $l5
          loop $L5
            block $B6
              local.get $p0
              i32.load8_u
              local.get $l5
              i32.ne
              br_if $B6
              local.get $p2
              local.set $l4
              br $B1
            end
            local.get $p2
            i32.const 1
            i32.ne
            local.set $l3
            local.get $p2
            i32.const -1
            i32.add
            local.set $l4
            local.get $p0
            i32.const 1
            i32.add
            local.set $p0
            local.get $p2
            i32.const 1
            i32.eq
            br_if $B2
            local.get $l4
            local.set $p2
            local.get $p0
            i32.const 3
            i32.and
            br_if $L5
          end
        end
        local.get $l3
        i32.eqz
        br_if $B0
      end
      block $B7
        local.get $p0
        i32.load8_u
        local.get $p1
        i32.const 255
        i32.and
        i32.eq
        br_if $B7
        local.get $l4
        i32.const 4
        i32.lt_u
        br_if $B7
        local.get $p1
        i32.const 255
        i32.and
        i32.const 16843009
        i32.mul
        local.set $l3
        loop $L8
          local.get $p0
          i32.load
          local.get $l3
          i32.xor
          local.tee $p2
          i32.const -1
          i32.xor
          local.get $p2
          i32.const -16843009
          i32.add
          i32.and
          i32.const -2139062144
          i32.and
          br_if $B7
          local.get $p0
          i32.const 4
          i32.add
          local.set $p0
          local.get $l4
          i32.const -4
          i32.add
          local.tee $l4
          i32.const 3
          i32.gt_u
          br_if $L8
        end
      end
      local.get $l4
      i32.eqz
      br_if $B0
      local.get $p1
      i32.const 255
      i32.and
      local.set $p2
      loop $L9
        block $B10
          local.get $p0
          i32.load8_u
          local.get $p2
          i32.ne
          br_if $B10
          local.get $p0
          return
        end
        local.get $p0
        i32.const 1
        i32.add
        local.set $p0
        local.get $l4
        i32.const -1
        i32.add
        local.tee $l4
        br_if $L9
      end
    end
    i32.const 0)
  (func $dummy.1 (type $t2) (param $p0 i32) (param $p1 i32) (result i32)
    local.get $p0)
  (func $__lctrans (type $t2) (param $p0 i32) (param $p1 i32) (result i32)
    local.get $p0
    local.get $p1
    call $dummy.1)
  (func $wctomb (type $t2) (param $p0 i32) (param $p1 i32) (result i32)
    block $B0
      local.get $p0
      br_if $B0
      i32.const 0
      return
    end
    local.get $p0
    local.get $p1
    i32.const 0
    call $wcrtomb)
  (func $wcrtomb (type $t0) (param $p0 i32) (param $p1 i32) (param $p2 i32) (result i32)
    (local $l3 i32)
    i32.const 1
    local.set $l3
    block $B0
      local.get $p0
      i32.eqz
      br_if $B0
      block $B1
        local.get $p1
        i32.const 127
        i32.gt_u
        br_if $B1
        local.get $p0
        local.get $p1
        i32.store8
        i32.const 1
        return
      end
      block $B2
        block $B3
          i32.const 0
          i32.load offset=4392
          br_if $B3
          block $B4
            local.get $p1
            i32.const -128
            i32.and
            i32.const 57216
            i32.eq
            br_if $B4
            i32.const 0
            i32.const 25
            i32.store offset=4384
            br $B2
          end
          local.get $p0
          local.get $p1
          i32.store8
          i32.const 1
          return
        end
        block $B5
          local.get $p1
          i32.const 2047
          i32.gt_u
          br_if $B5
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
        block $B6
          block $B7
            local.get $p1
            i32.const 55296
            i32.lt_u
            br_if $B7
            local.get $p1
            i32.const -8192
            i32.and
            i32.const 57344
            i32.ne
            br_if $B6
          end
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
        block $B8
          local.get $p1
          i32.const -65536
          i32.add
          i32.const 1048575
          i32.gt_u
          br_if $B8
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
        i32.const 0
        i32.const 25
        i32.store offset=4384
      end
      i32.const -1
      local.set $l3
    end
    local.get $l3)
  (func $frexp (type $t11) (param $p0 f64) (param $p1 i32) (result f64)
    (local $l2 i64) (local $l3 i32)
    block $B0
      local.get $p0
      i64.reinterpret_f64
      local.tee $l2
      i64.const 52
      i64.shr_u
      i32.wrap_i64
      i32.const 2047
      i32.and
      local.tee $l3
      i32.const 2047
      i32.eq
      br_if $B0
      block $B1
        local.get $l3
        br_if $B1
        block $B2
          local.get $p0
          f64.const 0x0p+0 (;=0;)
          f64.ne
          br_if $B2
          local.get $p1
          i32.const 0
          i32.store
          local.get $p0
          return
        end
        local.get $p0
        f64.const 0x1p+64 (;=1.84467e+19;)
        f64.mul
        local.get $p1
        call $frexp
        local.set $p0
        local.get $p1
        local.get $p1
        i32.load
        i32.const -64
        i32.add
        i32.store
        local.get $p0
        return
      end
      local.get $p1
      local.get $l3
      i32.const -1022
      i32.add
      i32.store
      local.get $l2
      i64.const -9218868437227405313
      i64.and
      i64.const 4602678819172646912
      i64.or
      f64.reinterpret_i64
      local.set $p0
    end
    local.get $p0)
  (table $T0 5 5 funcref)
  (memory $memory 2)
  (global $g0 (mut i32) (i32.const 71024))
  (export "memory" (memory 0))
  (export "_start" (func $_start))
  (elem $e0 (i32.const 1) $__stdio_close $__stdout_write $__stdio_seek $__stdio_write)
  (data $d0 (i32.const 1024) "global const string\00    %s, addr: %p (%lu)\0a\00    stack value in leaf() function, addr: %p (%lu)\0a\00    stack grows: %ld\0a\00    argv[0]: %s, addr: %p (%lu)\0a\00stack-allocated (local) string\00dynamically (heap) allocated string\00  in leaf()\00  in intermediate()\00  in main()\00\00\00\00\00\00\00\00\00\00\00\00\19\12D;\02?,G\14=30\0a\1b\06FKE7\0fI\0e\17\03@\1d<+6\1fJ-\1c\01 %)!\08\0c\15\16\22.\108>\0b41\18/A\099\11#C2B:\05\04&('\0d*\1e5\07\1aH\13$L\ff\00\00Success\00Illegal byte sequence\00Domain error\00Result not representable\00Not a tty\00Permission denied\00Operation not permitted\00No such file or directory\00No such process\00File exists\00Value too large for data type\00No space left on device\00Out of memory\00Resource busy\00Interrupted system call\00Resource temporarily unavailable\00Invalid seek\00Cross-device link\00Read-only file system\00Directory not empty\00Connection reset by peer\00Operation timed out\00Connection refused\00Host is unreachable\00Address in use\00Broken pipe\00I/O error\00No such device or address\00No such device\00Not a directory\00Is a directory\00Text file busy\00Exec format error\00Invalid argument\00Argument list too long\00Symbolic link loop\00Filename too long\00Too many open files in system\00No file descriptors available\00Bad file descriptor\00No child process\00Bad address\00File too large\00Too many links\00No locks available\00Resource deadlock would occur\00State not recoverable\00Previous owner died\00Operation canceled\00Function not implemented\00No message of desired type\00Identifier removed\00Link has been severed\00Protocol error\00Bad message\00Not a socket\00Destination address required\00Message too large\00Protocol wrong type for socket\00Protocol not available\00Protocol not supported\00Not supported\00Address family not supported by protocol\00Address not available\00Network is down\00Network unreachable\00Connection reset by network\00Connection aborted\00No buffer space available\00Socket is connected\00Socket not connected\00Operation already in progress\00Operation in progress\00Stale file handle\00Quota exceeded\00Multihop attempted\00Capabilities insufficient\00No error information\00\00-+   0X0x\00(null)\00\00\00\00\00\00\00\00\00\00\19\00\0a\00\19\19\19\00\00\00\00\05\00\00\00\00\00\00\09\00\00\00\00\0b\00\00\00\00\00\00\00\00\19\00\11\0a\19\19\19\03\0a\07\00\01\1b\09\0b\18\00\00\09\06\0b\00\00\0b\00\06\19\00\00\00\19\19\19\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\0e\00\00\00\00\00\00\00\00\19\00\0a\0d\19\19\19\00\0d\00\00\02\00\09\0e\00\00\00\09\00\0e\00\00\0e\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\0c\00\00\00\00\00\00\00\00\00\00\00\13\00\00\00\00\13\00\00\00\00\09\0c\00\00\00\00\00\0c\00\00\0c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\00\00\00\00\0f\00\00\00\04\0f\00\00\00\00\09\10\00\00\00\00\00\10\00\00\10\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\12\00\00\00\00\00\00\00\00\00\00\00\11\00\00\00\00\11\00\00\00\00\09\12\00\00\00\00\00\12\00\00\12\00\00\1a\00\00\00\1a\1a\1a\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\1a\00\00\00\1a\1a\1a\00\00\00\00\00\00\09\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\14\00\00\00\00\00\00\00\00\00\00\00\17\00\00\00\00\17\00\00\00\00\09\14\00\00\00\00\00\14\00\00\14\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\16\00\00\00\00\00\00\00\00\00\00\00\15\00\00\00\00\15\00\00\00\00\09\16\00\00\00\00\00\16\00\00\16\00\00Support for formatting long double values is currently disabled.\0aTo enable it, add -lc-printscan-long-double to the link command.\0a\00\00\00\00\00\00\00\00\00\00\00\00\00\000123456789ABCDEF-0X+0X 0X-0x+0x 0x\00inf\00INF\00nan\00NAN\00.\00")
  (data $d1 (i32.const 3640) "\00\04\00\00\00\00\00\00\05\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\03\00\00\00X\11\00\00\00\04\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\0a\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00@\0e\00\00\00\00\00\00\05\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\04\00\00\00\03\00\00\00`\15\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00\ff\ff\ff\ff\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\b8\0e\00\00")
  (data $d2 (i32.const 3888) "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00"))

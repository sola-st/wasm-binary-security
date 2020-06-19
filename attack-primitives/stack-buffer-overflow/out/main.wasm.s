	.text
	.file	"main.c"
	.section	.text.evil,"",@
	.hidden	evil                    # -- Begin function evil
	.globl	evil
	.type	evil,@function
evil:                                   # @evil
	.functype	evil (i32) -> ()
# %bb.0:                                # %entry
	i32.const	.Lstr
	i32.call	puts
	drop
                                        # fallthrough-return-void
	end_function
.Lfunc_end0:
	.size	evil, .Lfunc_end0-evil
                                        # -- End function
	.section	.text.vulnerable,"",@
	.hidden	vulnerable              # -- Begin function vulnerable
	.globl	vulnerable
	.type	vulnerable,@function
vulnerable:                             # @vulnerable
	.functype	vulnerable (i32) -> ()
	.local  	i32
# %bb.0:                                # %entry
	global.get	__stack_pointer
	i32.const	16
	i32.sub 
	local.tee	1
	global.set	__stack_pointer
	local.get	1
	i32.const	8
	i32.add 
	local.get	0
	i32.call	strcpy
	drop
	local.get	1
	i32.const	16
	i32.add 
	global.set	__stack_pointer
                                        # fallthrough-return-void
	end_function
.Lfunc_end1:
	.size	vulnerable, .Lfunc_end1-vulnerable
                                        # -- End function
	.section	.text.foo,"",@
	.hidden	foo                     # -- Begin function foo
	.globl	foo
	.type	foo,@function
foo:                                    # @foo
	.functype	foo (i32) -> ()
# %bb.0:                                # %entry
                                        # fallthrough-return-void
	end_function
.Lfunc_end2:
	.size	foo, .Lfunc_end2-foo
                                        # -- End function
	.section	.text.bar,"",@
	.hidden	bar                     # -- Begin function bar
	.globl	bar
	.type	bar,@function
bar:                                    # @bar
	.functype	bar (i32) -> ()
# %bb.0:                                # %entry
                                        # fallthrough-return-void
	end_function
.Lfunc_end3:
	.size	bar, .Lfunc_end3-bar
                                        # -- End function
	.section	.text.main,"",@
	.hidden	main                    # -- Begin function main
	.globl	main
	.type	main,@function
main:                                   # @main
	.functype	main (i32, i32) -> (i32)
	.local  	i32, i64
# %bb.0:                                # %entry
	global.get	__stack_pointer
	i32.const	64
	i32.sub 
	local.tee	2
	global.set	__stack_pointer
	local.get	1
	i64.load	0:p2align=2
	local.set	3
	local.get	2
	local.get	1
	i32.store	36
	local.get	2
	local.get	3
	i64.store	40
	local.get	2
	local.get	0
	i32.store	32
	i32.const	.L.str.1
	local.get	2
	i32.const	32
	i32.add 
	i32.call	iprintf
	drop
	block   	
	block   	
	local.get	0
	i32.const	1338
	i32.lt_s
	br_if   	0               # 0: down to label1
# %bb.1:                                # %if.then
	i32.const	foo
	local.set	0
	br      	1               # 1: down to label0
.LBB4_2:                                # %if.else
	end_block                       # label1:
	block   	
	local.get	0
	i32.const	43
	i32.lt_s
	br_if   	0               # 0: down to label2
# %bb.3:                                # %if.then3
	i32.const	bar
	local.set	0
	br      	1               # 1: down to label0
.LBB4_4:                                # %if.else4
	end_block                       # label2:
	i32.const	vulnerable
	local.set	0
.LBB4_5:                                # %if.end5
	end_block                       # label0:
	local.get	2
	local.get	0
	i32.store	60
	local.get	2
	local.get	0
	i32.store	20
	local.get	2
	local.get	2
	i32.const	60
	i32.add 
	i32.store	16
	i32.const	.L.str.2
	local.get	2
	i32.const	16
	i32.add 
	i32.call	iprintf
	drop
	local.get	1
	i32.load	4
	call	vulnerable
	local.get	2
	local.get	2
	i32.load	60
	i32.store	4
	local.get	2
	local.get	2
	i32.const	60
	i32.add 
	i32.store	0
	i32.const	.L.str.2
	local.get	2
	i32.call	iprintf
	drop
	i32.const	.L.str.3
	local.get	2
	i32.load	60
	call_indirect	(i32) -> ()
	local.get	2
	i32.const	64
	i32.add 
	global.set	__stack_pointer
	i32.const	0
                                        # fallthrough-return-value
	end_function
.Lfunc_end4:
	.size	main, .Lfunc_end4-main
                                        # -- End function
	.section	.text.dead_code,"",@
	.hidden	dead_code               # -- Begin function dead_code
	.globl	dead_code
	.type	dead_code,@function
dead_code:                              # @dead_code
	.functype	dead_code () -> ()
	.local  	i32
# %bb.0:                                # %entry
	global.get	__stack_pointer
	i32.const	16
	i32.sub 
	local.tee	0
	global.set	__stack_pointer
	local.get	0
	i32.const	evil
	i32.store	0
	i32.const	.L.str.4
	local.get	0
	i32.call	iprintf
	drop
	local.get	0
	i32.const	16
	i32.add 
	global.set	__stack_pointer
                                        # fallthrough-return-void
	end_function
.Lfunc_end5:
	.size	dead_code, .Lfunc_end5-dead_code
                                        # -- End function
	.type	.L.str.1,@object        # @.str.1
	.section	.rodata..L.str.1,"",@
.L.str.1:
	.asciz	"argc: %d\nargv: %p\nargv[0]: %s\nargv[1]: %s\n"
	.size	.L.str.1, 43

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata..L.str.2,"",@
.L.str.2:
	.asciz	"&func_ptr: %p\nfunc_ptr:  %p\n"
	.size	.L.str.2, 29

	.type	.L.str.3,@object        # @.str.3
	.section	.rodata..L.str.3,"",@
.L.str.3:
	.asciz	"aaaa"
	.size	.L.str.3, 5

	.type	.L.str.4,@object        # @.str.4
	.section	.rodata..L.str.4,"",@
.L.str.4:
	.asciz	"%p\n"
	.size	.L.str.4, 4

	.type	.Lstr,@object           # @str
	.section	.rodata..Lstr,"",@
.Lstr:
	.asciz	"evil called"
	.size	.Lstr, 12

	.no_dead_strip	dead_code

	.ident	"clang version 10.0.0 (/b/s/w/ir/cache/git/chromium.googlesource.com-external-github.com-llvm-llvm--project 12e915b3fcc55b8394dce3105a24c009e516d153)"
	.globaltype	__stack_pointer, i32
	.functype	strcpy (i32, i32) -> (i32)
	.functype	puts (i32) -> (i32)
	.functype	iprintf (i32, i32) -> (i32)
	.functype	getTempRet0 () -> (i32)
	.functype	setTempRet0 (i32) -> ()
	.size	__THREW__, 4
	.size	__threwValue, 4
	.section	.custom_section.producers,"",@
	.int8	1
	.int8	12
	.ascii	"processed-by"
	.int8	1
	.int8	5
	.ascii	"clang"
	.ascii	"\206\001"
	.ascii	"10.0.0 (/b/s/w/ir/cache/git/chromium.googlesource.com-external-github.com-llvm-llvm--project 12e915b3fcc55b8394dce3105a24c009e516d153)"
	.section	.rodata..Lstr,"",@

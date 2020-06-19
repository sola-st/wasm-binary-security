	.text
	.file	"same-frame.c"
	.section	.text.print_bufs,"",@
	.hidden	print_bufs              # -- Begin function print_bufs
	.globl	print_bufs
	.type	print_bufs,@function
print_bufs:                             # @print_bufs
	.functype	print_bufs (i32, i32) -> ()
	.local  	i32
# %bb.0:                                # %entry
	global.get	__stack_pointer
	i32.const	32
	i32.sub 
	local.tee	2
	global.set	__stack_pointer
	local.get	2
	local.get	0
	i32.store	20
	local.get	2
	local.get	0
	i32.store	16
	i32.const	.L.str
	local.get	2
	i32.const	16
	i32.add 
	i32.call	iprintf
	drop
	local.get	2
	local.get	1
	i32.store	4
	local.get	2
	local.get	1
	i32.store	0
	i32.const	.L.str.1
	local.get	2
	i32.call	iprintf
	drop
	local.get	2
	i32.const	32
	i32.add 
	global.set	__stack_pointer
                                        # fallthrough-return-void
	end_function
.Lfunc_end0:
	.size	print_bufs, .Lfunc_end0-print_bufs
                                        # -- End function
	.section	.text.main,"",@
	.hidden	main                    # -- Begin function main
	.globl	main
	.type	main,@function
main:                                   # @main
	.functype	main (i32, i32) -> (i32)
	.local  	i32
# %bb.0:                                # %entry
	global.get	__stack_pointer
	i32.const	16
	i32.sub 
	local.tee	2
	global.set	__stack_pointer
	local.get	2
	i64.const	18650200809816642
	i64.store	8
	local.get	2
	local.get	2
	i32.const	8
	i32.add 
	call	print_bufs
	local.get	2
	local.get	1
	i32.load	4
	i32.call	strcpy
	local.get	2
	i32.const	8
	i32.add 
	call	print_bufs
	local.get	2
	i32.const	16
	i32.add 
	global.set	__stack_pointer
	i32.const	0
                                        # fallthrough-return-value
	end_function
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata..L.str,"",@
.L.str:
	.asciz	"&buf_overflow:   %p\n buf_overflow:   %s\n"
	.size	.L.str, 41

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata..L.str.1,"",@
.L.str.1:
	.asciz	"&buf_other_data: %p\n buf_other_data: %s\n"
	.size	.L.str.1, 41


	.ident	"clang version 10.0.0 (/b/s/w/ir/cache/git/chromium.googlesource.com-external-github.com-llvm-llvm--project 12e915b3fcc55b8394dce3105a24c009e516d153)"
	.globaltype	__stack_pointer, i32
	.functype	strcpy (i32, i32) -> (i32)
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
	.section	.rodata..L.str.1,"",@

	.text
	.file	"run_script.c"
	.section	.text.__original_main,"",@
	.hidden	__original_main         # -- Begin function __original_main
	.globl	__original_main
	.type	__original_main,@function
__original_main:                        # @__original_main
	.functype	__original_main () -> (i32)
# %bb.0:                                # %entry
	i32.const	0
	i32.load	other_data
	i32.call	puts
	drop
	i32.const	.L.str.2
	i32.call	puts
	drop
	i32.const	.L.str.2
	call	emscripten_run_script
	i32.const	0
                                        # fallthrough-return-value
	end_function
.Lfunc_end0:
	.size	__original_main, .Lfunc_end0-__original_main
                                        # -- End function
	.section	.text.do_something_stupid_which_allows_write_access,"",@
	.hidden	do_something_stupid_which_allows_write_access # -- Begin function do_something_stupid_which_allows_write_access
	.globl	do_something_stupid_which_allows_write_access
	.type	do_something_stupid_which_allows_write_access,@function
do_something_stupid_which_allows_write_access: # @do_something_stupid_which_allows_write_access
	.functype	do_something_stupid_which_allows_write_access (i32) -> ()
# %bb.0:                                # %entry
	i32.const	0
	i32.load	other_data
	local.get	0
	i32.call	strcpy
	drop
	i32.const	.L.str.1
	i32.call	puts
	drop
                                        # fallthrough-return-void
	end_function
.Lfunc_end1:
	.size	do_something_stupid_which_allows_write_access, .Lfunc_end1-do_something_stupid_which_allows_write_access
                                        # -- End function
	.section	.text.main,"",@
	.hidden	main                    # -- Begin function main
	.globl	main
	.type	main,@function
main:                                   # @main
	.functype	main (i32, i32) -> (i32)
# %bb.0:                                # %body
	i32.call	__original_main
                                        # fallthrough-return-value
	end_function
.Lfunc_end2:
	.size	main, .Lfunc_end2-main
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata..L.str,"",@
.L.str:
	.asciz	"AAAA"
	.size	.L.str, 5

	.hidden	other_data              # @other_data
	.type	other_data,@object
	.section	.data.other_data,"",@
	.globl	other_data
	.p2align	2
other_data:
	.int32	.L.str
	.size	other_data, 4

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata..L.str.1,"",@
.L.str.1:
	.asciz	"we fucked up..."
	.size	.L.str.1, 16

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata..L.str.2,"",@
.L.str.2:
	.asciz	"console.log('this should be safe, shouldn\\'t it?')"
	.size	.L.str.2, 51

	.no_dead_strip	do_something_stupid_which_allows_write_access

	.ident	"clang version 10.0.0 (/b/s/w/ir/cache/git/chromium.googlesource.com-external-github.com-llvm-llvm--project 12e915b3fcc55b8394dce3105a24c009e516d153)"
	.functype	puts (i32) -> (i32)
	.functype	emscripten_run_script (i32) -> ()
	.functype	strcpy (i32, i32) -> (i32)
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
	.section	.rodata..L.str.2,"",@

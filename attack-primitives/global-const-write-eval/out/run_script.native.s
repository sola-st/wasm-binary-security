	.text
	.intel_syntax noprefix
	.file	"run_script.c"
	.globl	main                    # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:
	push	rax
	.cfi_def_cfa_offset 16
	mov	rdi, qword ptr [rip + other_data]
	call	puts
	mov	edi, offset .L.str.2
	call	puts
	mov	edi, offset .L.str.2
	xor	eax, eax
	call	printf
	xor	eax, eax
	pop	rcx
	ret
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
                                        # -- End function
	.globl	do_something_stupid_which_allows_write_access # -- Begin function do_something_stupid_which_allows_write_access
	.p2align	4, 0x90
	.type	do_something_stupid_which_allows_write_access,@function
do_something_stupid_which_allows_write_access: # @do_something_stupid_which_allows_write_access
	.cfi_startproc
# %bb.0:
	push	rax
	.cfi_def_cfa_offset 16
	mov	rax, rdi
	mov	rdi, qword ptr [rip + other_data]
	mov	rsi, rax
	call	strcpy
	mov	edi, offset .L.str.1
	pop	rax
	jmp	puts                    # TAILCALL
.Lfunc_end1:
	.size	do_something_stupid_which_allows_write_access, .Lfunc_end1-do_something_stupid_which_allows_write_access
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"AAAA"
	.size	.L.str, 5

	.type	other_data,@object      # @other_data
	.data
	.globl	other_data
	.p2align	3
other_data:
	.quad	.L.str
	.size	other_data, 8

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"we fucked up..."
	.size	.L.str.1, 16

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"console.log('this should be safe, shouldn\\'t it?')"
	.size	.L.str.2, 51


	.ident	"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"
	.section	".note.GNU-stack","",@progbits

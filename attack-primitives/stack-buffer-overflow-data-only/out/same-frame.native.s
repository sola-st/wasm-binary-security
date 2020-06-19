	.text
	.intel_syntax noprefix
	.file	"same-frame.c"
	.globl	print_bufs              # -- Begin function print_bufs
	.p2align	4, 0x90
	.type	print_bufs,@function
print_bufs:                             # @print_bufs
	.cfi_startproc
# %bb.0:
	push	rbx
	.cfi_def_cfa_offset 16
	.cfi_offset rbx, -16
	mov	rbx, rsi
	mov	rcx, rdi
	mov	edi, offset .L.str
	xor	eax, eax
	mov	rsi, rcx
	mov	rdx, rcx
	call	printf
	mov	edi, offset .L.str.1
	xor	eax, eax
	mov	rsi, rbx
	mov	rdx, rbx
	pop	rbx
	jmp	printf                  # TAILCALL
.Lfunc_end0:
	.size	print_bufs, .Lfunc_end0-print_bufs
	.cfi_endproc
                                        # -- End function
	.globl	main                    # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:
	push	r15
	.cfi_def_cfa_offset 16
	push	r14
	.cfi_def_cfa_offset 24
	push	rbx
	.cfi_def_cfa_offset 32
	sub	rsp, 32
	.cfi_def_cfa_offset 64
	.cfi_offset rbx, -32
	.cfi_offset r14, -24
	.cfi_offset r15, -16
	mov	rax, qword ptr fs:[40]
	mov	qword ptr [rsp + 24], rax
	mov	rbx, rsi
	movabs	rax, 18650200809816642
	mov	qword ptr [rsp + 8], rax
	lea	r14, [rsp + 16]
	lea	r15, [rsp + 8]
	mov	rdi, r14
	mov	rsi, r15
	call	print_bufs
	mov	rsi, qword ptr [rbx + 8]
	mov	rdi, r14
	call	strcpy
	mov	rdi, r14
	mov	rsi, r15
	call	print_bufs
	mov	rax, qword ptr fs:[40]
	cmp	rax, qword ptr [rsp + 24]
	jne	.LBB1_2
# %bb.1:
	xor	eax, eax
	add	rsp, 32
	pop	rbx
	pop	r14
	pop	r15
	ret
.LBB1_2:
	call	__stack_chk_fail
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"&buf_overflow:   %p\n buf_overflow:   %s\n"
	.size	.L.str, 41

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"&buf_other_data: %p\n buf_other_data: %s\n"
	.size	.L.str.1, 41


	.ident	"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"
	.section	".note.GNU-stack","",@progbits

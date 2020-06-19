	.text
	.intel_syntax noprefix
	.file	"main.c"
	.globl	evil                    # -- Begin function evil
	.p2align	4, 0x90
	.type	evil,@function
evil:                                   # @evil
	.cfi_startproc
# %bb.0:
	mov	edi, offset .Lstr
	jmp	puts                    # TAILCALL
.Lfunc_end0:
	.size	evil, .Lfunc_end0-evil
	.cfi_endproc
                                        # -- End function
	.globl	vulnerable              # -- Begin function vulnerable
	.p2align	4, 0x90
	.type	vulnerable,@function
vulnerable:                             # @vulnerable
	.cfi_startproc
# %bb.0:
	sub	rsp, 24
	.cfi_def_cfa_offset 32
	mov	rax, rdi
	mov	rcx, qword ptr fs:[40]
	mov	qword ptr [rsp + 16], rcx
	lea	rdi, [rsp + 8]
	mov	rsi, rax
	call	strcpy
	mov	rax, qword ptr fs:[40]
	cmp	rax, qword ptr [rsp + 16]
	jne	.LBB1_2
# %bb.1:
	add	rsp, 24
	ret
.LBB1_2:
	call	__stack_chk_fail
.Lfunc_end1:
	.size	vulnerable, .Lfunc_end1-vulnerable
	.cfi_endproc
                                        # -- End function
	.globl	foo                     # -- Begin function foo
	.p2align	4, 0x90
	.type	foo,@function
foo:                                    # @foo
	.cfi_startproc
# %bb.0:
	ret
.Lfunc_end2:
	.size	foo, .Lfunc_end2-foo
	.cfi_endproc
                                        # -- End function
	.globl	bar                     # -- Begin function bar
	.p2align	4, 0x90
	.type	bar,@function
bar:                                    # @bar
	.cfi_startproc
# %bb.0:
	ret
.Lfunc_end3:
	.size	bar, .Lfunc_end3-bar
	.cfi_endproc
                                        # -- End function
	.globl	main                    # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	push	rbx
	.cfi_def_cfa_offset 24
	push	rax
	.cfi_def_cfa_offset 32
	.cfi_offset rbx, -24
	.cfi_offset rbp, -16
	mov	rbx, rsi
	mov	ebp, edi
	mov	rcx, qword ptr [rbx]
	mov	r8, qword ptr [rbx + 8]
	mov	edi, offset .L.str.1
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, rbx
	call	printf
	cmp	ebp, 1338
	jl	.LBB4_2
# %bb.1:
	mov	qword ptr [rsp], offset foo
	mov	edx, offset foo
	jmp	.LBB4_5
.LBB4_2:
	cmp	ebp, 43
	jl	.LBB4_4
# %bb.3:
	mov	qword ptr [rsp], offset bar
	mov	edx, offset bar
	jmp	.LBB4_5
.LBB4_4:
	mov	qword ptr [rsp], offset vulnerable
	mov	edx, offset vulnerable
.LBB4_5:
	mov	rbp, rsp
	mov	edi, offset .L.str.2
	xor	eax, eax
	mov	rsi, rbp
	call	printf
	mov	rdi, qword ptr [rbx + 8]
	call	vulnerable
	mov	rdx, qword ptr [rsp]
	mov	edi, offset .L.str.2
	xor	eax, eax
	mov	rsi, rbp
	call	printf
	mov	edi, offset .L.str.3
	call	qword ptr [rsp]
	xor	eax, eax
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret
.Lfunc_end4:
	.size	main, .Lfunc_end4-main
	.cfi_endproc
                                        # -- End function
	.globl	dead_code               # -- Begin function dead_code
	.p2align	4, 0x90
	.type	dead_code,@function
dead_code:                              # @dead_code
	.cfi_startproc
# %bb.0:
	mov	edi, offset .L.str.4
	mov	esi, offset evil
	xor	eax, eax
	jmp	printf                  # TAILCALL
.Lfunc_end5:
	.size	dead_code, .Lfunc_end5-dead_code
	.cfi_endproc
                                        # -- End function
	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"argc: %d\nargv: %p\nargv[0]: %s\nargv[1]: %s\n"
	.size	.L.str.1, 43

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"&func_ptr: %p\nfunc_ptr:  %p\n"
	.size	.L.str.2, 29

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"aaaa"
	.size	.L.str.3, 5

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"%p\n"
	.size	.L.str.4, 4

	.type	.Lstr,@object           # @str
.Lstr:
	.asciz	"evil called"
	.size	.Lstr, 12


	.ident	"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"
	.section	".note.GNU-stack","",@progbits

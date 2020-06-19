	.text
	.file	"unsafe-unlink.c"
	.section	.text.alignment,"",@
	.hidden	alignment               # -- Begin function alignment
	.globl	alignment
	.type	alignment,@function
alignment:                              # @alignment
	.functype	alignment (i32) -> (i32)
# %bb.0:                                # %entry
	i32.const	2
	local.get	0
	i32.ctz 
	i32.shl 
                                        # fallthrough-return-value
	end_function
.Lfunc_end0:
	.size	alignment, .Lfunc_end0-alignment
                                        # -- End function
	.section	.text.print_ptr,"",@
	.hidden	print_ptr               # -- Begin function print_ptr
	.globl	print_ptr
	.type	print_ptr,@function
print_ptr:                              # @print_ptr
	.functype	print_ptr (i32) -> ()
	.local  	i32
# %bb.0:                                # %entry
	global.get	__stack_pointer
	i32.const	16
	i32.sub 
	local.tee	1
	global.set	__stack_pointer
	block   	
	block   	
	local.get	0
	i32.eqz
	br_if   	0               # 0: down to label1
# %bb.1:                                # %if.then
	local.get	1
	local.get	0
	i32.store	4
	local.get	1
	local.get	0
	i32.store	0
	local.get	1
	i32.const	2
	local.get	0
	i32.ctz 
	i32.shl 
	i32.store	8
	i32.const	.L.str
	local.get	1
	i32.call	iprintf
	drop
	br      	1               # 1: down to label0
.LBB1_2:                                # %if.else
	end_block                       # label1:
	i32.const	.Lstr
	i32.call	puts
	drop
.LBB1_3:                                # %if.end
	end_block                       # label0:
	local.get	1
	i32.const	16
	i32.add 
	global.set	__stack_pointer
                                        # fallthrough-return-void
	end_function
.Lfunc_end1:
	.size	print_ptr, .Lfunc_end1-print_ptr
                                        # -- End function
	.section	.text.print_heap_metadata_emmalloc,"",@
	.hidden	print_heap_metadata_emmalloc # -- Begin function print_heap_metadata_emmalloc
	.globl	print_heap_metadata_emmalloc
	.type	print_heap_metadata_emmalloc,@function
print_heap_metadata_emmalloc:           # @print_heap_metadata_emmalloc
	.functype	print_heap_metadata_emmalloc (i32) -> ()
	.local  	i32, i32, i32
# %bb.0:                                # %entry
	global.get	__stack_pointer
	i32.const	160
	i32.sub 
	local.tee	1
	global.set	__stack_pointer
	i32.const	.L.str.2
	i32.const	0
	i32.call	iprintf
	drop
	local.get	1
	local.get	0
	i32.const	-8
	i32.add 
	local.tee	2
	i32.store	148
	local.get	1
	local.get	2
	i32.store	144
	local.get	1
	i32.const	2
	local.get	2
	i32.ctz 
	i32.shl 
	i32.store	152
	i32.const	.L.str
	local.get	1
	i32.const	144
	i32.add 
	i32.call	iprintf
	drop
	local.get	1
	local.get	2
	i32.load	0
	i32.const	1
	i32.shr_u
	local.tee	3
	i32.store	132
	local.get	1
	local.get	3
	i32.store	128
	i32.const	.L.str.3
	local.get	1
	i32.const	128
	i32.add 
	i32.call	iprintf
	drop
	local.get	1
	i32.const	.L.str.5
	i32.const	.L.str.6
	local.get	2
	i32.load	0
	i32.const	1
	i32.and 
	i32.select
	i32.store	112
	i32.const	.L.str.4
	local.get	1
	i32.const	112
	i32.add 
	i32.call	iprintf
	drop
	i32.const	.L.str.7
	i32.const	0
	i32.call	iprintf
	drop
	block   	
	block   	
	local.get	0
	i32.const	-4
	i32.add 
	i32.load	0
	local.tee	3
	i32.eqz
	br_if   	0               # 0: down to label3
# %bb.1:                                # %if.then.i
	local.get	1
	local.get	3
	i32.store	100
	local.get	1
	local.get	3
	i32.store	96
	local.get	1
	i32.const	2
	local.get	3
	i32.ctz 
	i32.shl 
	i32.store	104
	i32.const	.L.str
	local.get	1
	i32.const	96
	i32.add 
	i32.call	iprintf
	drop
	br      	1               # 1: down to label2
.LBB2_2:                                # %if.else.i
	end_block                       # label3:
	i32.const	.Lstr
	i32.call	puts
	drop
.LBB2_3:                                # %print_ptr.exit
	end_block                       # label2:
	i32.const	.L.str.8
	i32.const	0
	i32.call	iprintf
	drop
	local.get	1
	local.get	2
	local.get	2
	i32.load	0
	i32.const	1
	i32.shr_u
	i32.add 
	local.tee	3
	i32.store	84
	local.get	1
	local.get	3
	i32.store	80
	local.get	1
	i32.const	2
	local.get	3
	i32.ctz 
	i32.shl 
	i32.store	88
	i32.const	.L.str
	local.get	1
	i32.const	80
	i32.add 
	i32.call	iprintf
	drop
	block   	
	block   	
	local.get	2
	i32.load8_u	0
	i32.const	1
	i32.and 
	i32.eqz
	br_if   	0               # 0: down to label5
# %bb.4:                                # %print_ptr.exit47
	i32.const	.L.str.9
	i32.const	0
	i32.call	iprintf
	drop
	local.get	1
	local.get	0
	i32.store	68
	local.get	1
	local.get	0
	i32.store	64
	local.get	1
	i32.const	2
	local.get	0
	i32.ctz 
	i32.shl 
	i32.store	72
	i32.const	.L.str
	local.get	1
	i32.const	64
	i32.add 
	i32.call	iprintf
	drop
	local.get	1
	local.get	0
	i32.store	48
	i32.const	.L.str.10
	local.get	1
	i32.const	48
	i32.add 
	i32.call	iprintf
	drop
	br      	1               # 1: down to label4
.LBB2_5:                                # %print_ptr.exit53
	end_block                       # label5:
	i32.const	.L.str.11
	i32.const	0
	i32.call	iprintf
	drop
	local.get	1
	local.get	0
	i32.store	36
	local.get	1
	local.get	0
	i32.store	32
	local.get	1
	i32.const	2
	local.get	0
	i32.ctz 
	i32.shl 
	i32.store	40
	i32.const	.L.str
	local.get	1
	i32.const	32
	i32.add 
	i32.call	iprintf
	drop
	i32.const	.L.str.12
	i32.const	0
	i32.call	iprintf
	drop
	block   	
	block   	
	local.get	0
	i32.load	0
	local.tee	2
	i32.eqz
	br_if   	0               # 0: down to label7
# %bb.6:                                # %if.then.i56
	local.get	1
	local.get	2
	i32.store	20
	local.get	1
	local.get	2
	i32.store	16
	local.get	1
	i32.const	2
	local.get	2
	i32.ctz 
	i32.shl 
	i32.store	24
	i32.const	.L.str
	local.get	1
	i32.const	16
	i32.add 
	i32.call	iprintf
	drop
	br      	1               # 1: down to label6
.LBB2_7:                                # %if.else.i58
	end_block                       # label7:
	i32.const	.Lstr
	i32.call	puts
	drop
.LBB2_8:                                # %print_ptr.exit59
	end_block                       # label6:
	i32.const	.L.str.13
	i32.const	0
	i32.call	iprintf
	drop
	block   	
	local.get	0
	i32.load	4
	local.tee	2
	i32.eqz
	br_if   	0               # 0: down to label8
# %bb.9:                                # %if.then.i62
	local.get	1
	local.get	2
	i32.store	4
	local.get	1
	local.get	2
	i32.store	0
	local.get	1
	i32.const	2
	local.get	2
	i32.ctz 
	i32.shl 
	i32.store	8
	i32.const	.L.str
	local.get	1
	i32.call	iprintf
	drop
	br      	1               # 1: down to label4
.LBB2_10:                               # %if.else.i64
	end_block                       # label8:
	i32.const	.Lstr
	i32.call	puts
	drop
.LBB2_11:                               # %if.end
	end_block                       # label4:
	i32.const	10
	i32.call	putchar
	drop
	local.get	1
	i32.const	160
	i32.add 
	global.set	__stack_pointer
                                        # fallthrough-return-void
	end_function
.Lfunc_end2:
	.size	print_heap_metadata_emmalloc, .Lfunc_end2-print_heap_metadata_emmalloc
                                        # -- End function
	.section	.text.main_bytes,"",@
	.hidden	main_bytes              # -- Begin function main_bytes
	.globl	main_bytes
	.type	main_bytes,@function
main_bytes:                             # @main_bytes
	.functype	main_bytes (i32, i32) -> ()
	.local  	i32, i32, i32
# %bb.0:                                # %entry
	global.get	__stack_pointer
	i32.const	32
	i32.sub 
	local.tee	2
	global.set	__stack_pointer
	local.get	2
	local.get	0
	i32.store	16
	i32.const	.L.str.15
	local.get	2
	i32.const	16
	i32.add 
	i32.call	iprintf
	drop
	local.get	2
	local.get	1
	i32.store	0
	i32.const	.L.str.16
	local.get	2
	i32.call	iprintf
	drop
	i32.const	8
	i32.call	malloc
	local.set	3
	i32.const	.Lstr.29
	i32.call	puts
	drop
	local.get	3
	call	print_heap_metadata_emmalloc
	i32.const	1000
	i32.call	malloc
	local.set	4
	i32.const	.Lstr.30
	i32.call	puts
	drop
	local.get	4
	call	print_heap_metadata_emmalloc
	i32.const	.Lstr.25
	i32.call	puts
	drop
	local.get	3
	local.get	0
	local.get	1
	i32.call	memcpy
	local.set	1
	i32.const	.Lstr.29
	i32.call	puts
	drop
	local.get	1
	call	print_heap_metadata_emmalloc
	i32.const	.Lstr.27
	i32.call	puts
	drop
	local.get	4
	call	print_heap_metadata_emmalloc
	i32.const	.Lstr.28
	i32.call	puts
	drop
	local.get	1
	call	free
	i32.const	.Lstr.29
	i32.call	puts
	drop
	local.get	1
	call	print_heap_metadata_emmalloc
	i32.const	.Lstr.30
	i32.call	puts
	drop
	local.get	4
	call	print_heap_metadata_emmalloc
	local.get	2
	i32.const	32
	i32.add 
	global.set	__stack_pointer
                                        # fallthrough-return-void
	end_function
.Lfunc_end3:
	.size	main_bytes, .Lfunc_end3-main_bytes
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
	i32.const	0
	i32.store8	15
	i32.const	.L.str.22
	local.get	2
	i32.const	15
	i32.add 
	i32.const	0
	i32.call	emscripten_asm_const_int
	drop
	local.get	2
	i32.const	16
	i32.add 
	global.set	__stack_pointer
	i32.const	0
                                        # fallthrough-return-value
	end_function
.Lfunc_end4:
	.size	main, .Lfunc_end4-main
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata..L.str,"",@
.L.str:
	.asciz	"%p (%lu), align=%d\n"
	.size	.L.str, 20

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata..L.str.2,"",@
.L.str.2:
	.asciz	"region at: "
	.size	.L.str.2, 12

	.type	.L.str.3,@object        # @.str.3
	.section	.rodata..L.str.3,"",@
.L.str.3:
	.asciz	"totalSize: 0x%x (%d) bytes\n"
	.size	.L.str.3, 28

	.type	.L.str.4,@object        # @.str.4
	.section	.rodata..L.str.4,"",@
.L.str.4:
	.asciz	"state:     %s\n"
	.size	.L.str.4, 15

	.type	.L.str.5,@object        # @.str.5
	.section	.rodata..L.str.5,"",@
.L.str.5:
	.asciz	"used"
	.size	.L.str.5, 5

	.type	.L.str.6,@object        # @.str.6
	.section	.rodata..L.str.6,"",@
.L.str.6:
	.asciz	"free"
	.size	.L.str.6, 5

	.type	.L.str.7,@object        # @.str.7
	.section	.rodata..L.str.7,"",@
.L.str.7:
	.asciz	"prev:      "
	.size	.L.str.7, 12

	.type	.L.str.8,@object        # @.str.8
	.section	.rodata..L.str.8,"",@
.L.str.8:
	.asciz	"next():    "
	.size	.L.str.8, 12

	.type	.L.str.9,@object        # @.str.9
	.section	.rodata..L.str.9,"",@
.L.str.9:
	.asciz	"payload at: "
	.size	.L.str.9, 13

	.type	.L.str.10,@object       # @.str.10
	.section	.rodata..L.str.10,"",@
.L.str.10:
	.asciz	"payload:   \"%s\"\n"
	.size	.L.str.10, 17

	.type	.L.str.11,@object       # @.str.11
	.section	.rodata..L.str.11,"",@
.L.str.11:
	.asciz	"free_info at: "
	.size	.L.str.11, 15

	.type	.L.str.12,@object       # @.str.12
	.section	.rodata..L.str.12,"",@
.L.str.12:
	.asciz	"FI.prev:   "
	.size	.L.str.12, 12

	.type	.L.str.13,@object       # @.str.13
	.section	.rodata..L.str.13,"",@
.L.str.13:
	.asciz	"FI.next:   "
	.size	.L.str.13, 12

	.type	.L.str.15,@object       # @.str.15
	.section	.rodata..L.str.15,"",@
.L.str.15:
	.asciz	"input: %s\n"
	.size	.L.str.15, 11

	.type	.L.str.16,@object       # @.str.16
	.section	.rodata..L.str.16,"",@
.L.str.16:
	.asciz	"size:  %zu\n\n"
	.size	.L.str.16, 13

	.type	.L.str.22,@object       # @.str.22
	.section	.rodata..L.str.22,"",@
.L.str.22:
	.asciz	"{ window.main_bytes = function(array) { ccall(\"main_bytes\", null, [\"array\", \"number\"], [array, array.length]); }; }"
	.size	.L.str.22, 116

	.type	.Lstr,@object           # @str
	.section	.rodata..Lstr,"",@
.Lstr:
	.asciz	"NULL"
	.size	.Lstr, 5

	.type	.Lstr.25,@object        # @str.25
	.section	.rodata..Lstr.25,"",@
.Lstr.25:
	.asciz	"memcpy\n"
	.size	.Lstr.25, 8

	.type	.Lstr.27,@object        # @str.27
	.section	.rodata..Lstr.27,"",@
.Lstr.27:
	.asciz	"alloc2 (corrupted)"
	.size	.Lstr.27, 19

	.type	.Lstr.28,@object        # @str.28
	.section	.rodata..Lstr.28,"",@
.Lstr.28:
	.asciz	"free alloc1\n"
	.size	.Lstr.28, 13

	.type	.Lstr.29,@object        # @str.29
	.section	.rodata..Lstr.29,"",@
.Lstr.29:
	.asciz	"alloc1"
	.size	.Lstr.29, 7

	.type	.Lstr.30,@object        # @str.30
	.section	.rodata..Lstr.30,"",@
.Lstr.30:
	.asciz	"alloc2"
	.size	.Lstr.30, 7

	.no_dead_strip	main_bytes

	.ident	"clang version 10.0.0 (/b/s/w/ir/cache/git/chromium.googlesource.com-external-github.com-llvm-llvm--project 12e915b3fcc55b8394dce3105a24c009e516d153)"
	.globaltype	__stack_pointer, i32
	.functype	malloc (i32) -> (i32)
	.functype	free (i32) -> ()
	.functype	emscripten_asm_const_int (i32, i32, i32) -> (i32)
	.functype	puts (i32) -> (i32)
	.functype	iprintf (i32, i32) -> (i32)
	.functype	putchar (i32) -> (i32)
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
	.section	.rodata..Lstr.30,"",@

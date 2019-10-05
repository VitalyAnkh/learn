	.file	"infinite_loop.c"
	.text
	.globl	main
	.type	main, @function
main:
.LFB19:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	stdin(%rip), %rdi
	call	fgetc@PLT
	movl	%eax, %ebx
	jmp	.L2
.L3:
	movq	stdin(%rip), %rdi
	call	fgetc@PLT
	movl	%eax, %ebx
.L2:
	cmpb	$-1, %bl
	je	.L7
	call	__ctype_b_loc@PLT
	movq	(%rax), %rax
	movsbq	%bl, %rdx
	testb	$8, (%rax,%rdx,2)
	je	.L3
	movsbl	%bl, %edi
	call	putchar@PLT
	jmp	.L2
.L7:
	movl	$0, %eax
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE19:
	.size	main, .-main
	.ident	"GCC: (GNU) 9.1.0"
	.section	.note.GNU-stack,"",@progbits

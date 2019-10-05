	.file	"absdiff.c"
	.text
	.globl	test
	.type	test, @function
test:
.LFB0:
	.cfi_startproc
	movq	%rsi, %rax
	cmpq	%rsi, %rdi
	jge	.L2
	subq	%rdi, %rax
	ret
.L2:
	subq	%rsi, %rdi
	movq	%rdi, %rax
	ret
	.cfi_endproc
.LFE0:
	.size	test, .-test
	.ident	"GCC: (GNU) 9.1.0"
	.section	.note.GNU-stack,"",@progbits

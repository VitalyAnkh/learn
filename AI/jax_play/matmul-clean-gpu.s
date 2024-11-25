	.text
	.file	"LLVMDialectModule"
	.globl	main                            # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	subq	$696, %rsp                      # imm = 0x2B8
	.cfi_def_cfa_offset 752
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%r9, 48(%rsp)                   # 8-byte Spill
	movq	%r8, 40(%rsp)                   # 8-byte Spill
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	movq	%rdx, 24(%rsp)                  # 8-byte Spill
	movq	%rsi, 16(%rsp)                  # 8-byte Spill
	movq	%rdi, 8(%rsp)                   # 8-byte Spill
	movq	832(%rsp), %rbx
	movl	$1048640, %edi                  # imm = 0x100040
	callq	malloc@PLT
	movq	%rax, %r15
	leaq	63(%rax), %r14
	andq	$-64, %r14
	movq	$32, 272(%rsp)
	leaq	272(%rsp), %rax
	movq	%rax, 376(%rsp)
	leaq	280(%rsp), %rax
	movq	$0, 280(%rsp)
	movq	%rax, 384(%rsp)
	leaq	288(%rsp), %rax
	movq	$16, 288(%rsp)
	movq	%rax, 392(%rsp)
	leaq	296(%rsp), %rax
	movq	$1, 296(%rsp)
	movq	%rax, 400(%rsp)
	leaq	304(%rsp), %rax
	movq	$0, 304(%rsp)
	movq	%rax, 408(%rsp)
	leaq	312(%rsp), %rax
	movl	$0, 312(%rsp)
	movq	%rax, 416(%rsp)
	leaq	320(%rsp), %rax
	movq	%r15, 320(%rsp)
	movq	%rax, 424(%rsp)
	leaq	328(%rsp), %rax
	movq	%r14, 328(%rsp)
	movq	%rax, 432(%rsp)
	leaq	336(%rsp), %rax
	movq	$0, 336(%rsp)
	movq	%rax, 440(%rsp)
	leaq	344(%rsp), %rax
	movq	$512, 344(%rsp)                 # imm = 0x200
	movq	%rax, 448(%rsp)
	leaq	352(%rsp), %rax
	movq	$512, 352(%rsp)                 # imm = 0x200
	movq	%rax, 456(%rsp)
	leaq	360(%rsp), %rax
	movq	$512, 360(%rsp)                 # imm = 0x200
	movq	%rax, 464(%rsp)
	leaq	368(%rsp), %rax
	movq	$1, 368(%rsp)
	movq	%rax, 472(%rsp)
	movl	$main_kernel_bin_cst, %edi
	movl	$2, %esi
	callq	mgpuModuleLoadJIT@PLT
	movq	%rax, %r12
	movl	$.Lmain_kernel_main_kernel_kernel_name, %esi
	movq	%rax, %rdi
	callq	mgpuModuleGetFunction@PLT
	movq	%rax, %r13
	callq	mgpuStreamCreate@PLT
	movq	%rax, %rbp
	leaq	376(%rsp), %rax
	movl	$16, %esi
	movl	$32, %edx
	movl	$1, %ecx
	movl	$32, %r8d
	movl	$16, %r9d
	movq	%r13, %rdi
	pushq	$13
	.cfi_adjust_cfa_offset 8
	pushq	$0
	.cfi_adjust_cfa_offset 8
	pushq	%rax
	.cfi_adjust_cfa_offset 8
	pushq	%rbp
	.cfi_adjust_cfa_offset 8
	pushq	$0
	.cfi_adjust_cfa_offset 8
	pushq	$1
	.cfi_adjust_cfa_offset 8
	callq	mgpuLaunchKernel@PLT
	addq	$48, %rsp
	.cfi_adjust_cfa_offset -48
	movq	%rbp, %rdi
	callq	mgpuStreamSynchronize@PLT
	movq	%rbp, %rdi
	callq	mgpuStreamDestroy@PLT
	movq	%r12, %rdi
	callq	mgpuModuleUnload@PLT
	leaq	56(%rsp), %rax
	movq	%rax, 480(%rsp)
	leaq	64(%rsp), %rax
	movq	%rax, 488(%rsp)
	leaq	72(%rsp), %rax
	movq	%rax, 496(%rsp)
	leaq	80(%rsp), %rax
	movq	%rax, 504(%rsp)
	leaq	88(%rsp), %rax
	movq	%rax, 512(%rsp)
	movq	$32, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$16, 72(%rsp)
	movq	$1, 80(%rsp)
	movq	$0, 88(%rsp)
	movq	8(%rsp), %rax                   # 8-byte Reload
	movq	%rax, 96(%rsp)
	leaq	96(%rsp), %rax
	movq	%rax, 520(%rsp)
	movq	16(%rsp), %rax                  # 8-byte Reload
	movq	%rax, 104(%rsp)
	leaq	104(%rsp), %rax
	movq	%rax, 528(%rsp)
	movq	24(%rsp), %rax                  # 8-byte Reload
	movq	%rax, 112(%rsp)
	leaq	112(%rsp), %rax
	movq	%rax, 536(%rsp)
	movq	32(%rsp), %rax                  # 8-byte Reload
	movq	%rax, 120(%rsp)
	leaq	120(%rsp), %rax
	movq	%rax, 544(%rsp)
	movq	40(%rsp), %rax                  # 8-byte Reload
	movq	%rax, 128(%rsp)
	leaq	128(%rsp), %rax
	movq	%rax, 552(%rsp)
	movq	48(%rsp), %rax                  # 8-byte Reload
	movq	%rax, 136(%rsp)
	leaq	136(%rsp), %rax
	movq	%rax, 560(%rsp)
	movq	752(%rsp), %rax
	movq	%rax, 144(%rsp)
	leaq	144(%rsp), %rax
	movq	%rax, 568(%rsp)
	movq	760(%rsp), %rax
	movq	%rax, 152(%rsp)
	leaq	152(%rsp), %rax
	movq	%rax, 576(%rsp)
	movq	768(%rsp), %rax
	movq	%rax, 160(%rsp)
	leaq	160(%rsp), %rax
	movq	%rax, 584(%rsp)
	movq	776(%rsp), %rax
	movq	%rax, 168(%rsp)
	leaq	168(%rsp), %rax
	movq	%rax, 592(%rsp)
	movq	784(%rsp), %rax
	movq	%rax, 176(%rsp)
	leaq	176(%rsp), %rax
	movq	%rax, 600(%rsp)
	movq	792(%rsp), %rax
	movq	%rax, 184(%rsp)
	leaq	184(%rsp), %rax
	movq	%rax, 608(%rsp)
	movq	800(%rsp), %rax
	movq	%rax, 192(%rsp)
	leaq	192(%rsp), %rax
	movq	%rax, 616(%rsp)
	movq	808(%rsp), %rax
	movq	%rax, 200(%rsp)
	leaq	200(%rsp), %rax
	movq	%rax, 624(%rsp)
	movq	%r15, 208(%rsp)
	leaq	208(%rsp), %rax
	movq	%rax, 632(%rsp)
	leaq	216(%rsp), %rax
	movq	%rax, 640(%rsp)
	leaq	224(%rsp), %rax
	movq	%rax, 648(%rsp)
	leaq	232(%rsp), %rax
	movq	%rax, 656(%rsp)
	leaq	240(%rsp), %rax
	movq	%rax, 664(%rsp)
	leaq	248(%rsp), %rax
	movq	%rax, 672(%rsp)
	leaq	256(%rsp), %rax
	movq	%rax, 680(%rsp)
	leaq	264(%rsp), %rax
	movq	%rax, 688(%rsp)
	movq	%r14, 216(%rsp)
	movq	$0, 224(%rsp)
	movq	$512, 232(%rsp)                 # imm = 0x200
	movq	$512, 240(%rsp)                 # imm = 0x200
	movq	$512, 248(%rsp)                 # imm = 0x200
	movq	$1, 256(%rsp)
	movq	$512, 264(%rsp)                 # imm = 0x200
	movl	$main_kernel_0_bin_cst, %edi
	movl	$2, %esi
	callq	mgpuModuleLoadJIT@PLT
	movq	%rax, %r15
	movl	$.Lmain_kernel_0_main_kernel_kernel_name, %esi
	movq	%rax, %rdi
	callq	mgpuModuleGetFunction@PLT
	movq	%rax, %r12
	callq	mgpuStreamCreate@PLT
	movq	%rax, %r13
	leaq	480(%rsp), %rax
	movl	$16, %esi
	movl	$32, %edx
	movl	$1, %ecx
	movl	$32, %r8d
	movl	$16, %r9d
	movq	%r12, %rdi
	pushq	$27
	.cfi_adjust_cfa_offset 8
	pushq	$0
	.cfi_adjust_cfa_offset 8
	pushq	%rax
	.cfi_adjust_cfa_offset 8
	pushq	%r13
	.cfi_adjust_cfa_offset 8
	pushq	$0
	.cfi_adjust_cfa_offset 8
	pushq	$1
	.cfi_adjust_cfa_offset 8
	callq	mgpuLaunchKernel@PLT
	addq	$48, %rsp
	.cfi_adjust_cfa_offset -48
	movq	%r13, %rdi
	callq	mgpuStreamSynchronize@PLT
	movq	%r13, %rdi
	callq	mgpuStreamDestroy@PLT
	movq	%r15, %rdi
	callq	mgpuModuleUnload@PLT
	shlq	$2, %rbx
	addq	824(%rsp), %rbx
	movl	$1048576, %edx                  # imm = 0x100000
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	memcpy@PLT
	addq	$696, %rsp                      # imm = 0x2B8
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
                                        # -- End function
	.type	main_kernel_bin_cst,@object     # @main_kernel_bin_cst
	.section	.rodata,"a",@progbits
	.p2align	3, 0x0
main_kernel_bin_cst:
	.asciz	"//\n// Generated by LLVM NVPTX Back-End\n//\n\n.version 6.0\n.target sm_50\n.address_size 64\n\n\t// .globl\tmain_kernel\n\n.visible .entry main_kernel(\n\t.param .u64 main_kernel_param_0,\n\t.param .u64 main_kernel_param_1,\n\t.param .u64 main_kernel_param_2,\n\t.param .u64 main_kernel_param_3,\n\t.param .u64 main_kernel_param_4,\n\t.param .f32 main_kernel_param_5,\n\t.param .u64 main_kernel_param_6,\n\t.param .u64 main_kernel_param_7,\n\t.param .u64 main_kernel_param_8,\n\t.param .u64 main_kernel_param_9,\n\t.param .u64 main_kernel_param_10,\n\t.param .u64 main_kernel_param_11,\n\t.param .u64 main_kernel_param_12\n)\n{\n\t.reg .b32 \t%r<5>;\n\t.reg .f32 \t%f<2>;\n\t.reg .b64 \t%rd<29>;\n\n\tld.param.u64 \t%rd1, [main_kernel_param_0];\n\tld.param.u64 \t%rd2, [main_kernel_param_7];\n\tcvta.to.global.u64 \t%rd3, %rd2;\n\tld.param.u64 \t%rd4, [main_kernel_param_1];\n\tld.param.u64 \t%rd5, [main_kernel_param_2];\n\tmov.u32 \t%r1, %ctaid.x;\n\tcvt.u64.u32 \t%rd6, %r1;\n\tld.param.u64 \t%rd7, [main_kernel_param_3];\n\tld.param.u64 \t%rd8, [main_kernel_param_4];\n\tmov.u32 \t%r2, %ctaid.y;\n\tcvt.u64.u32 \t%rd9, %r2;\n\tld.param.f32 \t%f1, [main_kernel_param_5];\n\tmov.u32 \t%r3, %tid.x;\n\tcvt.u64.u32 \t%rd10, %r3;\n\tmov.u32 \t%r4, %tid.y;\n\tcvt.u64.u32 \t%rd11, %r4;\n\tmul.lo.s64 \t%rd12, %rd6, %rd1;\n\tmul.lo.s64 \t%rd13, %rd9, %rd5;\n\tmul.lo.s64 \t%rd14, %rd10, %rd7;\n\tmul.lo.s64 \t%rd15, %rd11, %rd7;\n\tadd.s64 \t%rd16, %rd12, %rd4;\n\tadd.s64 \t%rd17, %rd16, %rd8;\n\tadd.s64 \t%rd18, %rd17, %rd14;\n\tshl.b64 \t%rd19, %rd18, 11;\n\tadd.s64 \t%rd20, %rd3, %rd19;\n\tshl.b64 \t%rd21, %rd15, 2;\n\tadd.s64 \t%rd22, %rd20, %rd21;\n\tshl.b64 \t%rd23, %rd8, 2;\n\tadd.s64 \t%rd24, %rd22, %rd23;\n\tshl.b64 \t%rd25, %rd13, 2;\n\tadd.s64 \t%rd26, %rd24, %rd25;\n\tshl.b64 \t%rd27, %rd4, 2;\n\tadd.s64 \t%rd28, %rd26, %rd27;\n\tst.global.f32 \t[%rd28], %f1;\n\tret;\n\n}\n"
	.size	main_kernel_bin_cst, 1736

	.type	main_kernel_0_bin_cst,@object   # @main_kernel_0_bin_cst
	.p2align	3, 0x0
main_kernel_0_bin_cst:
	.asciz	"//\n// Generated by LLVM NVPTX Back-End\n//\n\n.version 6.0\n.target sm_50\n.address_size 64\n\n\t// .globl\tmain_kernel\n\n.visible .entry main_kernel(\n\t.param .u64 main_kernel_param_0,\n\t.param .u64 main_kernel_param_1,\n\t.param .u64 main_kernel_param_2,\n\t.param .u64 main_kernel_param_3,\n\t.param .u64 main_kernel_param_4,\n\t.param .u64 main_kernel_param_5,\n\t.param .u64 main_kernel_param_6,\n\t.param .u64 main_kernel_param_7,\n\t.param .u64 main_kernel_param_8,\n\t.param .u64 main_kernel_param_9,\n\t.param .u64 main_kernel_param_10,\n\t.param .u64 main_kernel_param_11,\n\t.param .u64 main_kernel_param_12,\n\t.param .u64 main_kernel_param_13,\n\t.param .u64 main_kernel_param_14,\n\t.param .u64 main_kernel_param_15,\n\t.param .u64 main_kernel_param_16,\n\t.param .u64 main_kernel_param_17,\n\t.param .u64 main_kernel_param_18,\n\t.param .u64 main_kernel_param_19,\n\t.param .u64 main_kernel_param_20,\n\t.param .u64 main_kernel_param_21,\n\t.param .u64 main_kernel_param_22,\n\t.param .u64 main_kernel_param_23,\n\t.param .u64 main_kernel_param_24,\n\t.param .u64 main_kernel_param_25,\n\t.param .u64 main_kernel_param_26\n)\n{\n\t.reg .pred \t%p<3>;\n\t.reg .b32 \t%r<5>;\n\t.reg .f32 \t%f<8>;\n\t.reg .b64 \t%rd<65>;\n\n\tld.param.u64 \t%rd26, [main_kernel_param_26];\n\tld.param.u64 \t%rd64, [main_kernel_param_1];\n\tsetp.ge.s64 \t%p1, %rd64, %rd26;\n\t@%p1 bra \t$L__BB0_3;\n\tld.param.u64 \t%rd25, [main_kernel_param_18];\n\tld.param.u64 \t%rd24, [main_kernel_param_17];\n\tld.param.u64 \t%rd23, [main_kernel_param_14];\n\tld.param.u64 \t%rd22, [main_kernel_param_11];\n\tld.param.u64 \t%rd21, [main_kernel_param_10];\n\tld.param.u64 \t%rd20, [main_kernel_param_7];\n\tld.param.u64 \t%rd19, [main_kernel_param_4];\n\tld.param.u64 \t%rd18, [main_kernel_param_3];\n\tld.param.u64 \t%rd17, [main_kernel_param_2];\n\tld.param.u64 \t%rd15, [main_kernel_param_0];\n\tld.param.u64 \t%rd27, [main_kernel_param_20];\n\tcvta.to.global.u64 \t%rd1, %rd27;\n\tld.param.u64 \t%rd28, [main_kernel_param_13];\n\tcvta.to.global.u64 \t%rd2, %rd28;\n\tld.param.u64 \t%rd29, [main_kernel_param_6];\n\tcvta.to.global.u64 \t%rd3, %rd29;\n\tadd.s64 \t%rd30, %rd19, %rd64;\n\tmov.u32 \t%r1, %ctaid.y;\n\tcvt.u64.u32 \t%rd31, %r1;\n\tmul.lo.s64 \t%rd32, %rd31, %rd17;\n\tadd.s64 \t%rd33, %rd30, %rd32;\n\tmov.u32 \t%r2, %tid.y;\n\tcvt.u64.u32 \t%rd34, %r2;\n\tmul.lo.s64 \t%rd35, %rd34, %rd18;\n\tadd.s64 \t%rd36, %rd33, %rd35;\n\tshl.b64 \t%rd37, %rd36, 2;\n\tadd.s64 \t%rd38, %rd1, %rd37;\n\tmov.u32 \t%r3, %ctaid.x;\n\tcvt.u64.u32 \t%rd39, %r3;\n\tmul.lo.s64 \t%rd40, %rd39, %rd15;\n\tadd.s64 \t%rd41, %rd30, %rd40;\n\tmov.u32 \t%r4, %tid.x;\n\tcvt.u64.u32 \t%rd42, %r4;\n\tmul.lo.s64 \t%rd43, %rd42, %rd18;\n\tadd.s64 \t%rd44, %rd41, %rd43;\n\tshl.b64 \t%rd45, %rd44, 11;\n\tadd.s64 \t%rd4, %rd38, %rd45;\n\tld.global.f32 \t%f7, [%rd4];\n\tmul.lo.s64 \t%rd46, %rd24, %rd64;\n\tshl.b64 \t%rd47, %rd46, 2;\n\tmul.lo.s64 \t%rd48, %rd25, %rd36;\n\tshl.b64 \t%rd49, %rd48, 2;\n\tadd.s64 \t%rd50, %rd47, %rd49;\n\tshl.b64 \t%rd51, %rd23, 2;\n\tadd.s64 \t%rd52, %rd50, %rd51;\n\tadd.s64 \t%rd63, %rd2, %rd52;\n\tmul.lo.s64 \t%rd53, %rd24, %rd18;\n\tshl.b64 \t%rd6, %rd53, 2;\n\tmul.lo.s64 \t%rd54, %rd22, %rd64;\n\tshl.b64 \t%rd55, %rd54, 2;\n\tmul.lo.s64 \t%rd56, %rd21, %rd44;\n\tshl.b64 \t%rd57, %rd56, 2;\n\tadd.s64 \t%rd58, %rd55, %rd57;\n\tshl.b64 \t%rd59, %rd20, 2;\n\tadd.s64 \t%rd60, %rd58, %rd59;\n\tadd.s64 \t%rd62, %rd3, %rd60;\n\tmul.lo.s64 \t%rd61, %rd22, %rd18;\n\tshl.b64 \t%rd8, %rd61, 2;\n$L__BB0_2:\n\tld.global.f32 \t%f4, [%rd62];\n\tld.global.f32 \t%f5, [%rd63];\n\tmul.rn.f32 \t%f6, %f4, %f5;\n\tadd.rn.f32 \t%f7, %f7, %f6;\n\tst.global.f32 \t[%rd4], %f7;\n\tadd.s64 \t%rd64, %rd64, %rd18;\n\tadd.s64 \t%rd63, %rd63, %rd6;\n\tadd.s64 \t%rd62, %rd62, %rd8;\n\tsetp.lt.s64 \t%p2, %rd64, %rd26;\n\t@%p2 bra \t$L__BB0_2;\n$L__BB0_3:\n\tret;\n\n}\n"
	.size	main_kernel_0_bin_cst, 3559

	.type	.Lmain_kernel_main_kernel_kernel_name,@object # @main_kernel_main_kernel_kernel_name
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lmain_kernel_main_kernel_kernel_name:
	.asciz	"main_kernel"
	.size	.Lmain_kernel_main_kernel_kernel_name, 12

	.type	.Lmain_kernel_0_main_kernel_kernel_name,@object # @main_kernel_0_main_kernel_kernel_name
.Lmain_kernel_0_main_kernel_kernel_name:
	.asciz	"main_kernel"
	.size	.Lmain_kernel_0_main_kernel_kernel_name, 12

	.section	".note.GNU-stack","",@progbits

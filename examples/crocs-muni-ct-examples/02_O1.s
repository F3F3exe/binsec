	.text
	.file	"02.c"
	.globl	issue                           # -- Begin function issue
	.p2align	4, 0x90
	.type	issue,@function
issue:                                  # @issue
	.cfi_startproc
# %bb.0:
	movl	%esi, %eax
	testl	%edi, %edi
	cmovel	%edx, %eax
                                        # kill: def $al killed $al killed $eax
	retq
.Lfunc_end0:
	.size	issue, .Lfunc_end0-issue
	.cfi_endproc
                                        # -- End function
	.globl	main                            # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	leaq	issue(%rip), %rax
	movq	%rax, (%rsp)
	movq	(%rsp), %rax
	xorl	%edi, %edi
	movl	$2, %esi
	movl	$5, %edx
	callq	*%rax
	movzbl	%al, %eax
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
	.cfi_endproc
                                        # -- End function
	.type	a,@object                       # @a
	.bss
	.globl	a
	.p2align	2
a:
	.long	0                               # 0x0
	.size	a, 4

	.type	b,@object                       # @b
	.globl	b
	.p2align	2
b:
	.long	0                               # 0x0
	.size	b, 4

	.type	c,@object                       # @c
	.globl	c
	.p2align	2
c:
	.long	0                               # 0x0
	.size	c, 4

	.ident	"Ubuntu clang version 14.0.0-1ubuntu1.1"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym issue

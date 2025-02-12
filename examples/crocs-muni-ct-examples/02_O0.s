	.text
	.file	"02.c"
	.globl	issue                           # -- Begin function issue
	.p2align	4, 0x90
	.type	issue,@function
issue:                                  # @issue
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movb	%dl, %al
	movb	%sil, %cl
	movl	%edi, -4(%rbp)
	movb	%cl, -5(%rbp)
	movb	%al, -6(%rbp)
	cmpl	$0, -4(%rbp)
	setne	%al
	xorb	$-1, %al
	xorb	$-1, %al
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	movzbl	-5(%rbp), %ecx
	imull	%ecx, %eax
	movl	$1, %ecx
	subl	-12(%rbp), %ecx
	movzbl	-6(%rbp), %edx
	imull	%edx, %ecx
	addl	%ecx, %eax
                                        # kill: def $al killed $al killed $eax
	movzbl	%al, %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
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
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movl	$0, -4(%rbp)
	movl	%edi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$2, -20(%rbp)
	movl	$5, -24(%rbp)
	movl	$0, -28(%rbp)
	leaq	issue(%rip), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movl	-28(%rbp), %edi
	movl	-20(%rbp), %ecx
	movb	%cl, %dl
	movl	-24(%rbp), %ecx
                                        # kill: def $cl killed $cl killed $ecx
	movzbl	%dl, %esi
	movzbl	%cl, %edx
	callq	*%rax
	movzbl	%al, %eax
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
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

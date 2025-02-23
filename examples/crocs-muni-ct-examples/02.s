	.text
	.file	"02.c"
	.globl	issue                           # -- Begin function issue
	.p2align	4, 0x90
	.type	issue,@function
issue:                                  # @issue
	.cfi_startproc
# %bb.0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset %ebp, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register %ebp
	pushl	%eax
	movb	16(%ebp), %al
	movb	12(%ebp), %al
	movl	8(%ebp), %eax
	cmpl	$0, 8(%ebp)
	setne	%al
	xorb	$-1, %al
	xorb	$-1, %al
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, -4(%ebp)
	movl	-4(%ebp), %eax
	movzbl	12(%ebp), %ecx
	imull	%ecx, %eax
	movl	$1, %ecx
	subl	-4(%ebp), %ecx
	movzbl	16(%ebp), %edx
	imull	%edx, %ecx
	addl	%ecx, %eax
	movzbl	%al, %eax
	addl	$4, %esp
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
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
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset %ebp, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register %ebp
	pushl	%ebx
	subl	$36, %esp
	.cfi_offset %ebx, -12
	movl	12(%ebp), %eax
	movl	8(%ebp), %eax
	movl	$0, -24(%ebp)
	movl	$2, -16(%ebp)
	movl	$5, -12(%ebp)
	movl	$0, -8(%ebp)
	leal	-8(%ebp), %eax
	movl	%eax, (%esp)
	calll	high_input_4@PLT
	leal	-16(%ebp), %eax
	movl	%eax, (%esp)
	calll	low_input_4@PLT
	leal	-12(%ebp), %eax
	movl	%eax, (%esp)
	calll	low_input_4@PLT
	leal	issue, %eax
	movl	%eax, -20(%ebp)
	movl	-20(%ebp), %eax
	movl	-8(%ebp), %ecx
	movl	-16(%ebp), %edx
	movl	-12(%ebp), %ebx
	movl	%ecx, (%esp)
	movzbl	%dl, %ecx
	movl	%ecx, 4(%esp)
	movzbl	%bl, %ecx
	movl	%ecx, 8(%esp)
	calll	*%eax
	movzbl	%al, %eax
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
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

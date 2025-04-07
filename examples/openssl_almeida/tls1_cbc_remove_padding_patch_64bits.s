	.text
	.file	"tls1_cbc_remove_padding_patch_wrapper2.c"
	.globl	CRYPTO_memcmp                   # -- Begin function CRYPTO_memcmp
	.p2align	4, 0x90
	.type	CRYPTO_memcmp,@function
CRYPTO_memcmp:                          # @CRYPTO_memcmp
	.cfi_startproc
# %bb.0:
	testq	%rdx, %rdx
	je	.LBB0_1
# %bb.2:
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	movzbl	(%rsi,%rcx), %r8d
	xorb	(%rdi,%rcx), %r8b
	orb	%r8b, %al
	incq	%rcx
	cmpq	%rcx, %rdx
	jne	.LBB0_3
# %bb.4:
	movzbl	%al, %eax
	retq
.LBB0_1:
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	CRYPTO_memcmp, .Lfunc_end0-CRYPTO_memcmp
	.cfi_endproc
                                        # -- End function
	.globl	tls1_cbc_remove_padding         # -- Begin function tls1_cbc_remove_padding
	.p2align	4, 0x90
	.type	tls1_cbc_remove_padding,@function
tls1_cbc_remove_padding:                # @tls1_cbc_remove_padding
	.cfi_startproc
# %bb.0:
                                        # kill: def $ecx killed $ecx def $rcx
                                        # kill: def $edx killed $edx def $rdx
	incl	%ecx
	testb	$1, 32(%rdi)
	jne	.LBB1_1
# %bb.13:
	cmpl	(%rsi), %ecx
	ja	.LBB1_14
	jmp	.LBB1_3
.LBB1_1:
	leal	(%rcx,%rdx), %r8d
	movl	(%rsi), %eax
	cmpl	%eax, %r8d
	jbe	.LBB1_2
.LBB1_14:
	xorl	%eax, %eax
	retq
.LBB1_2:
	movl	%edx, %r8d
	addq	%r8, 8(%rsi)
	addq	%r8, 24(%rsi)
	subl	%edx, %eax
	movl	%eax, (%rsi)
.LBB1_3:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %rbp, -16
	movq	8(%rsi), %rdx
	movl	(%rsi), %eax
	leal	-1(%rax), %r9d
	movzbl	(%rdx,%r9), %r8d
	testb	$2, 9(%rdi)
	je	.LBB1_11
# %bb.4:
	cmpq	$0, (%rdi)
	jne	.LBB1_11
# %bb.5:
	movq	16(%rdi), %r10
	movl	$8, %ebx
	xorl	%r11d, %r11d
	.p2align	4, 0x90
.LBB1_6:                                # =>This Inner Loop Header: Depth=1
	orb	(%r10,%rbx), %r11b
	incq	%rbx
	cmpq	$16, %rbx
	jne	.LBB1_6
# %bb.7:
	testb	%r11b, %r11b
	jne	.LBB1_10
# %bb.8:
	movl	%r8d, %r11d
	andl	$1, %r11d
	jne	.LBB1_10
# %bb.9:
	orb	$8, (%r10)
.LBB1_10:
	movzbl	(%r10), %r10d
	shrb	$3, %r10b
	testb	%r8b, %r8b
	setne	%r11b
	andb	%r10b, %r11b
	movzbl	%r11b, %r10d
	subl	%r10d, %r8d
.LBB1_11:
	movl	%r8d, %r8d
	movq	24(%rdi), %rdi
	movq	(%rdi), %rdi
	testb	$32, 2(%rdi)
	jne	.LBB1_12
# %bb.16:
	addl	%r8d, %ecx
	movl	%ecx, %r10d
	xorl	%eax, %r10d
	movl	%eax, %edi
	subl	%ecx, %edi
	xorl	%ecx, %edi
	orl	%r10d, %edi
	xorl	%eax, %edi
	notl	%edi
	sarl	$31, %edi
	testl	%r9d, %r9d
	je	.LBB1_19
# %bb.17:
	cmpl	$255, %r9d
	movl	$255, %ecx
	cmovbl	%r9d, %ecx
	movl	%r8d, %r10d
	notl	%r10d
	cmpl	$1, %ecx
	adcl	$0, %ecx
	movl	%r9d, %r9d
	negq	%rcx
	xorl	%r11d, %r11d
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB1_18:                               # =>This Inner Loop Header: Depth=1
	leal	(%r8,%rbx), %ebp
	testl	%r10d, %ebp
	movl	$255, %ebp
	cmovsl	%r11d, %ebp
	leal	(%r9,%rbx), %r14d
	movzbl	(%rdx,%r14), %r14d
	xorl	%r8d, %r14d
	andl	%ebp, %r14d
	notl	%r14d
	andl	%r14d, %edi
	decq	%rbx
	cmpq	%rbx, %rcx
	jne	.LBB1_18
.LBB1_19:
	movzbl	%dil, %ecx
	incl	%r8d
	xorl	%edx, %edx
	xorl	%edi, %edi
	cmpl	$255, %ecx
	cmovel	%r8d, %edx
	sete	%dil
	subl	%edx, %eax
	movl	%eax, (%rsi)
	shll	$8, %edx
	orl	%edx, 16(%rsi)
	leal	-1(,%rdi,2), %eax
	jmp	.LBB1_20
.LBB1_12:
	notl	%r8d
	addl	%r8d, %eax
	movl	%eax, (%rsi)
	movl	$1, %eax
.LBB1_20:
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	.cfi_restore %r14
	.cfi_restore %rbp
	retq
.Lfunc_end1:
	.size	tls1_cbc_remove_padding, .Lfunc_end1-tls1_cbc_remove_padding
	.cfi_endproc
                                        # -- End function
	.globl	main                            # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:
	subq	$184, %rsp
	.cfi_def_cfa_offset 192
	movq	$0, 64(%rsp)
	leaq	48(%rsp), %rax
	movq	%rax, 8(%rsp)
	leaq	7(%rsp), %rax
	movq	%rax, 72(%rsp)
	leaq	56(%rsp), %rax
	movq	%rax, 88(%rsp)
	leaq	8(%rsp), %rax
	movq	%rax, 96(%rsp)
	movl	$63, 16(%rsp)
	leaq	112(%rsp), %rax
	movq	%rax, 24(%rsp)
	movl	$0, 32(%rsp)
	movq	$0, 40(%rsp)
	leaq	72(%rsp), %rdi
	leaq	16(%rsp), %rsi
	callq	tls1_cbc_remove_padding
	addq	$184, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end2:
	.size	main, .Lfunc_end2-main
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 19.1.7 (++20250114103320+cd708029e0b2-1~exp1~20250114103432.75)"
	.section	".note.GNU-stack","",@progbits
	.addrsig

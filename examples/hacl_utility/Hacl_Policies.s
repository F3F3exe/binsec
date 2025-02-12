	.text
	.file	"Hacl_Policies.c"
	.globl	Hacl_Policies_cmp_bytes_        # -- Begin function Hacl_Policies_cmp_bytes_
	.p2align	4, 0x90
	.type	Hacl_Policies_cmp_bytes_,@function
Hacl_Policies_cmp_bytes_:               # @Hacl_Policies_cmp_bytes_
	.cfi_startproc
# %bb.0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset %ebp, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register %ebp
	subl	$8, %esp
	movl	20(%ebp), %eax
	movl	16(%ebp), %eax
	movl	12(%ebp), %eax
	movl	8(%ebp), %eax
	movl	$0, -8(%ebp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movl	-8(%ebp), %eax
	cmpl	16(%ebp), %eax
	jae	.LBB0_4
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movl	8(%ebp), %eax
	movl	-8(%ebp), %ecx
	movb	(%eax,%ecx), %al
	movb	%al, -3(%ebp)
	movl	12(%ebp), %eax
	movl	-8(%ebp), %ecx
	movb	(%eax,%ecx), %al
	movb	%al, -2(%ebp)
	movl	20(%ebp), %eax
	movb	(%eax), %al
	movb	%al, -1(%ebp)
	movb	-3(%ebp), %al
	movzbl	%al, %ecx
	movzbl	-2(%ebp), %edx
	calll	FStar_UInt8_eq_mask
	movzbl	%al, %eax
	movzbl	-1(%ebp), %ecx
	andl	%ecx, %eax
	movl	20(%ebp), %ecx
	movb	%al, (%ecx)
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-8(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -8(%ebp)
	jmp	.LBB0_1
.LBB0_4:
	movl	20(%ebp), %eax
	movzbl	(%eax), %eax
	addl	$8, %esp
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
.Lfunc_end0:
	.size	Hacl_Policies_cmp_bytes_, .Lfunc_end0-Hacl_Policies_cmp_bytes_
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function FStar_UInt8_eq_mask
	.type	FStar_UInt8_eq_mask,@function
FStar_UInt8_eq_mask:                    # @FStar_UInt8_eq_mask
	.cfi_startproc
# %bb.0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset %ebp, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register %ebp
	subl	$2, %esp
	movb	%cl, -1(%ebp)
	movb	%dl, -2(%ebp)
	movzbl	-1(%ebp), %eax
	movzbl	-2(%ebp), %ecx
	xorl	%ecx, %eax
	xorl	$-1, %eax
	movb	%al, -1(%ebp)
	movzbl	-1(%ebp), %eax
	shll	$4, %eax
	movzbl	-1(%ebp), %ecx
	andl	%eax, %ecx
	movb	%cl, -1(%ebp)
	movzbl	-1(%ebp), %eax
	shll	$2, %eax
	movzbl	-1(%ebp), %ecx
	andl	%eax, %ecx
	movb	%cl, -1(%ebp)
	movzbl	-1(%ebp), %eax
	shll	$1, %eax
	movzbl	-1(%ebp), %ecx
	andl	%eax, %ecx
	movb	%cl, -1(%ebp)
	movsbl	-1(%ebp), %eax
	sarl	$7, %eax
	movzbl	%al, %eax
	addl	$2, %esp
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
.Lfunc_end1:
	.size	FStar_UInt8_eq_mask, .Lfunc_end1-FStar_UInt8_eq_mask
	.cfi_endproc
                                        # -- End function
	.globl	Hacl_Policies_cmp_bytes         # -- Begin function Hacl_Policies_cmp_bytes
	.p2align	4, 0x90
	.type	Hacl_Policies_cmp_bytes,@function
Hacl_Policies_cmp_bytes:                # @Hacl_Policies_cmp_bytes
	.cfi_startproc
# %bb.0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset %ebp, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register %ebp
	pushl	%esi
	subl	$20, %esp
	.cfi_offset %esi, -12
	movl	16(%ebp), %eax
	movl	12(%ebp), %eax
	movl	8(%ebp), %eax
	movb	$-1, -6(%ebp)
	movl	8(%ebp), %eax
	movl	12(%ebp), %ecx
	movl	16(%ebp), %edx
	leal	-6(%ebp), %esi
	movl	%eax, (%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, 8(%esp)
	movl	%esi, 12(%esp)
	calll	Hacl_Policies_cmp_bytes_
	movb	%al, -5(%ebp)
	movzbl	-5(%ebp), %eax
	xorl	$-1, %eax
	movzbl	%al, %eax
	addl	$20, %esp
	popl	%esi
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
.Lfunc_end2:
	.size	Hacl_Policies_cmp_bytes, .Lfunc_end2-Hacl_Policies_cmp_bytes
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 14.0.0-1ubuntu1.1"
	.section	".note.GNU-stack","",@progbits

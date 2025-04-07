	.text
	.file	"tls1_cbc_remove_padding_patch_wrapper2.c"
	.globl	CRYPTO_memcmp                   # -- Begin function CRYPTO_memcmp
	.p2align	4, 0x90
	.type	CRYPTO_memcmp,@function
CRYPTO_memcmp:                          # @CRYPTO_memcmp
	.cfi_startproc
# %bb.0:
	subl	$16, %esp
	.cfi_def_cfa_offset 20
	movl	20(%esp), %eax
	movl	%eax, 12(%esp)
	movl	24(%esp), %eax
	movl	%eax, 8(%esp)
	movb	$0, 3(%esp)
	movl	$0, 4(%esp)
	.p2align	4, 0x90
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movl	4(%esp), %eax
	cmpl	28(%esp), %eax
	jae	.LBB0_3
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movl	12(%esp), %eax
	movl	4(%esp), %ecx
	movzbl	(%eax,%ecx), %eax
	movl	8(%esp), %edx
	movzbl	(%edx,%ecx), %ecx
	xorl	%eax, %ecx
	movzbl	3(%esp), %eax
	orl	%ecx, %eax
	movb	%al, 3(%esp)
	incl	4(%esp)
	jmp	.LBB0_1
.LBB0_3:
	movzbl	3(%esp), %eax
	addl	$16, %esp
	.cfi_def_cfa_offset 4
	retl
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
	pushl	%ebx
	.cfi_def_cfa_offset 8
	pushl	%edi
	.cfi_def_cfa_offset 12
	pushl	%esi
	.cfi_def_cfa_offset 16
	subl	$48, %esp
	.cfi_def_cfa_offset 64
	.cfi_offset %esi, -16
	.cfi_offset %edi, -12
	.cfi_offset %ebx, -8
	calll	.L1$pb
	.cfi_adjust_cfa_offset 4
.L1$pb:
	popl	%ebx
	.cfi_adjust_cfa_offset -4
.Ltmp0:
	addl	$_GLOBAL_OFFSET_TABLE_+(.Ltmp0-.L1$pb), %ebx
	movl	76(%esp), %eax
	incl	%eax
	movl	%eax, 32(%esp)
	movl	64(%esp), %eax
	testb	$1, 16(%eax)
	je	.LBB1_3
# %bb.1:
	movl	32(%esp), %eax
	addl	72(%esp), %eax
	movl	68(%esp), %ecx
	cmpl	(%ecx), %eax
	ja	.LBB1_2
# %bb.4:
	movl	72(%esp), %eax
	movl	68(%esp), %ecx
	addl	%eax, 4(%ecx)
	movl	72(%esp), %eax
	movl	68(%esp), %ecx
	addl	%eax, 12(%ecx)
	movl	72(%esp), %eax
	movl	68(%esp), %ecx
	subl	%eax, (%ecx)
	jmp	.LBB1_5
.LBB1_3:
	movl	32(%esp), %eax
	movl	68(%esp), %ecx
	cmpl	(%ecx), %eax
	jbe	.LBB1_5
.LBB1_2:
	movl	$0, 24(%esp)
	jmp	.LBB1_21
.LBB1_5:
	movl	68(%esp), %eax
	movl	(%eax), %ecx
	movl	4(%eax), %eax
	movzbl	-1(%ecx,%eax), %eax
	movl	%eax, 12(%esp)
	movl	64(%esp), %eax
	testb	$2, 5(%eax)
	je	.LBB1_13
# %bb.6:
	movl	64(%esp), %eax
	cmpl	$0, (%eax)
	jne	.LBB1_13
# %bb.7:
	movl	64(%esp), %eax
	movl	8(%eax), %eax
	addl	$4, %eax
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	leal	.L.str@GOTOFF(%ebx), %ecx
	pushl	$8
	.cfi_adjust_cfa_offset 4
	pushl	%ecx
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	CRYPTO_memcmp
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	testl	%eax, %eax
	jne	.LBB1_10
# %bb.8:
	testb	$1, 12(%esp)
	jne	.LBB1_10
# %bb.9:
	movl	64(%esp), %eax
	movl	8(%eax), %eax
	orl	$8, (%eax)
.LBB1_10:
	movl	64(%esp), %eax
	movl	8(%eax), %eax
	testb	$8, (%eax)
	je	.LBB1_13
# %bb.11:
	cmpl	$0, 12(%esp)
	je	.LBB1_13
# %bb.12:
	decl	12(%esp)
.LBB1_13:
	movl	64(%esp), %eax
	movl	12(%eax), %eax
	movl	(%eax), %eax
	testb	$32, 2(%eax)
	je	.LBB1_15
# %bb.14:
	movl	12(%esp), %eax
	movl	68(%esp), %ecx
	notl	%eax
	addl	%eax, (%ecx)
	movl	$1, 24(%esp)
	jmp	.LBB1_21
.LBB1_15:
	movl	68(%esp), %eax
	movl	32(%esp), %ecx
	addl	12(%esp), %ecx
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	%ecx
	.cfi_adjust_cfa_offset 4
	pushl	(%eax)
	.cfi_adjust_cfa_offset 4
	calll	constant_time_ge
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movl	%eax, 20(%esp)
	movl	$255, 40(%esp)
	movl	68(%esp), %eax
	movl	(%eax), %eax
	decl	%eax
	cmpl	$254, %eax
	ja	.LBB1_17
# %bb.16:
	movl	68(%esp), %eax
	movl	(%eax), %eax
	decl	%eax
	movl	%eax, 40(%esp)
.LBB1_17:
	movl	$0, 16(%esp)
	.p2align	4, 0x90
.LBB1_18:                               # =>This Inner Loop Header: Depth=1
	movl	16(%esp), %eax
	cmpl	40(%esp), %eax
	jae	.LBB1_20
# %bb.19:                               #   in Loop: Header=BB1_18 Depth=1
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	24(%esp)
	.cfi_adjust_cfa_offset 4
	pushl	24(%esp)
	.cfi_adjust_cfa_offset 4
	calll	constant_time_ge_8
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movb	%al, 39(%esp)
	movl	68(%esp), %edx
	movl	4(%edx), %esi
	movl	16(%esp), %ecx
	movl	%ecx, %edi
	notl	%edi
	addl	(%edx), %edi
	movzbl	(%esi,%edi), %edx
	movzbl	%al, %eax
	xorl	12(%esp), %edx
	andl	%eax, %edx
	notl	%edx
	andl	%edx, 20(%esp)
	incl	%ecx
	movl	%ecx, 16(%esp)
	jmp	.LBB1_18
.LBB1_20:
	movzbl	20(%esp), %eax
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	pushl	$255
	.cfi_adjust_cfa_offset 4
	calll	constant_time_eq
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movl	%eax, 20(%esp)
	movl	12(%esp), %ecx
	incl	%ecx
	andl	%eax, %ecx
	movl	%ecx, 12(%esp)
	movl	68(%esp), %eax
	subl	%ecx, (%eax)
	movl	12(%esp), %eax
	shll	$8, %eax
	movl	68(%esp), %ecx
	orl	%eax, 8(%ecx)
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	$-1
	.cfi_adjust_cfa_offset 4
	pushl	$1
	.cfi_adjust_cfa_offset 4
	pushl	32(%esp)
	.cfi_adjust_cfa_offset 4
	calll	constant_time_select_int
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movl	%eax, 24(%esp)
.LBB1_21:
	movl	$1, 28(%esp)
	movl	24(%esp), %eax
	addl	$48, %esp
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_def_cfa_offset 4
	retl
.Lfunc_end1:
	.size	tls1_cbc_remove_padding, .Lfunc_end1-tls1_cbc_remove_padding
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function constant_time_ge
	.type	constant_time_ge,@function
constant_time_ge:                       # @constant_time_ge
	.cfi_startproc
# %bb.0:
	pushl	%ebx
	.cfi_def_cfa_offset 8
	subl	$8, %esp
	.cfi_def_cfa_offset 16
	.cfi_offset %ebx, -8
	calll	.L2$pb
	.cfi_adjust_cfa_offset 4
.L2$pb:
	popl	%ebx
	.cfi_adjust_cfa_offset -4
.Ltmp1:
	addl	$_GLOBAL_OFFSET_TABLE_+(.Ltmp1-.L2$pb), %ebx
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	28(%esp)
	.cfi_adjust_cfa_offset 4
	pushl	28(%esp)
	.cfi_adjust_cfa_offset 4
	calll	constant_time_lt
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	notl	%eax
	addl	$8, %esp
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_def_cfa_offset 4
	retl
.Lfunc_end2:
	.size	constant_time_ge, .Lfunc_end2-constant_time_ge
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function constant_time_ge_8
	.type	constant_time_ge_8,@function
constant_time_ge_8:                     # @constant_time_ge_8
	.cfi_startproc
# %bb.0:
	pushl	%ebx
	.cfi_def_cfa_offset 8
	subl	$8, %esp
	.cfi_def_cfa_offset 16
	.cfi_offset %ebx, -8
	calll	.L3$pb
	.cfi_adjust_cfa_offset 4
.L3$pb:
	popl	%ebx
	.cfi_adjust_cfa_offset -4
.Ltmp2:
	addl	$_GLOBAL_OFFSET_TABLE_+(.Ltmp2-.L3$pb), %ebx
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	28(%esp)
	.cfi_adjust_cfa_offset 4
	pushl	28(%esp)
	.cfi_adjust_cfa_offset 4
	calll	constant_time_ge
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
                                        # kill: def $al killed $al killed $eax
	addl	$8, %esp
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_def_cfa_offset 4
	retl
.Lfunc_end3:
	.size	constant_time_ge_8, .Lfunc_end3-constant_time_ge_8
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function constant_time_eq
	.type	constant_time_eq,@function
constant_time_eq:                       # @constant_time_eq
	.cfi_startproc
# %bb.0:
	pushl	%ebx
	.cfi_def_cfa_offset 8
	subl	$8, %esp
	.cfi_def_cfa_offset 16
	.cfi_offset %ebx, -8
	calll	.L4$pb
	.cfi_adjust_cfa_offset 4
.L4$pb:
	popl	%ebx
	.cfi_adjust_cfa_offset -4
.Ltmp3:
	addl	$_GLOBAL_OFFSET_TABLE_+(.Ltmp3-.L4$pb), %ebx
	movl	16(%esp), %eax
	xorl	20(%esp), %eax
	movl	%eax, (%esp)
	calll	constant_time_is_zero
	addl	$8, %esp
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_def_cfa_offset 4
	retl
.Lfunc_end4:
	.size	constant_time_eq, .Lfunc_end4-constant_time_eq
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function constant_time_select_int
	.type	constant_time_select_int,@function
constant_time_select_int:               # @constant_time_select_int
	.cfi_startproc
# %bb.0:
	pushl	%ebx
	.cfi_def_cfa_offset 8
	subl	$8, %esp
	.cfi_def_cfa_offset 16
	.cfi_offset %ebx, -8
	calll	.L5$pb
	.cfi_adjust_cfa_offset 4
.L5$pb:
	popl	%ebx
	.cfi_adjust_cfa_offset -4
.Ltmp4:
	addl	$_GLOBAL_OFFSET_TABLE_+(.Ltmp4-.L5$pb), %ebx
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	28(%esp)
	.cfi_adjust_cfa_offset 4
	pushl	28(%esp)
	.cfi_adjust_cfa_offset 4
	pushl	28(%esp)
	.cfi_adjust_cfa_offset 4
	calll	constant_time_select
	addl	$24, %esp
	.cfi_adjust_cfa_offset -24
	popl	%ebx
	.cfi_def_cfa_offset 4
	retl
.Lfunc_end5:
	.size	constant_time_select_int, .Lfunc_end5-constant_time_select_int
	.cfi_endproc
                                        # -- End function
	.globl	main                            # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:
	pushl	%ebx
	.cfi_def_cfa_offset 8
	subl	$168, %esp
	.cfi_def_cfa_offset 176
	.cfi_offset %ebx, -8
	calll	.L6$pb
	.cfi_adjust_cfa_offset 4
.L6$pb:
	popl	%ebx
	.cfi_adjust_cfa_offset -4
.Ltmp5:
	addl	$_GLOBAL_OFFSET_TABLE_+(.Ltmp5-.L6$pb), %ebx
	movl	$0, 96(%esp)
	movl	$63, 12(%esp)
	movl	88(%esp), %eax
	movl	%eax, 16(%esp)
	movl	$0, 20(%esp)
	movl	$0, 24(%esp)
	movl	84(%esp), %eax
	movl	%eax, 8(%esp)
	leal	8(%esp), %eax
	movl	%eax, 4(%esp)
	leal	3(%esp), %eax
	movl	%eax, 44(%esp)
	movl	92(%esp), %eax
	movl	%eax, 48(%esp)
	leal	16(%esp), %eax
	movl	%eax, 52(%esp)
	leal	4(%esp), %eax
	movl	%eax, 56(%esp)
	movl	80(%esp), %eax
	movl	%eax, 60(%esp)
	leal	44(%esp), %eax
	movl	%eax, 68(%esp)
	movl	12(%esp), %ecx
	movl	%ecx, 28(%esp)
	leal	101(%esp), %ecx
	movl	%ecx, 32(%esp)
	movl	$0, 36(%esp)
	movl	$0, 40(%esp)
	leal	28(%esp), %ecx
	movl	%ecx, 64(%esp)
	pushl	72(%esp)
	.cfi_adjust_cfa_offset 4
	pushl	80(%esp)
	.cfi_adjust_cfa_offset 4
	pushl	%ecx
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	tls1_cbc_remove_padding
	addl	$184, %esp
	.cfi_adjust_cfa_offset -184
	popl	%ebx
	.cfi_def_cfa_offset 4
	retl
.Lfunc_end6:
	.size	main, .Lfunc_end6-main
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function constant_time_lt
	.type	constant_time_lt,@function
constant_time_lt:                       # @constant_time_lt
	.cfi_startproc
# %bb.0:
	pushl	%ebx
	.cfi_def_cfa_offset 8
	pushl	%esi
	.cfi_def_cfa_offset 12
	pushl	%eax
	.cfi_def_cfa_offset 16
	.cfi_offset %esi, -12
	.cfi_offset %ebx, -8
	calll	.L7$pb
	.cfi_adjust_cfa_offset 4
.L7$pb:
	popl	%ebx
	.cfi_adjust_cfa_offset -4
.Ltmp6:
	addl	$_GLOBAL_OFFSET_TABLE_+(.Ltmp6-.L7$pb), %ebx
	movl	16(%esp), %eax
	movl	20(%esp), %ecx
	movl	%eax, %edx
	xorl	%ecx, %edx
	movl	%eax, %esi
	subl	%ecx, %esi
	xorl	%ecx, %esi
	orl	%edx, %esi
	xorl	%eax, %esi
	movl	%esi, (%esp)
	calll	constant_time_msb
	addl	$4, %esp
	.cfi_def_cfa_offset 12
	popl	%esi
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_def_cfa_offset 4
	retl
.Lfunc_end7:
	.size	constant_time_lt, .Lfunc_end7-constant_time_lt
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function constant_time_msb
	.type	constant_time_msb,@function
constant_time_msb:                      # @constant_time_msb
	.cfi_startproc
# %bb.0:
	movl	4(%esp), %eax
	sarl	$31, %eax
	retl
.Lfunc_end8:
	.size	constant_time_msb, .Lfunc_end8-constant_time_msb
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function constant_time_is_zero
	.type	constant_time_is_zero,@function
constant_time_is_zero:                  # @constant_time_is_zero
	.cfi_startproc
# %bb.0:
	pushl	%ebx
	.cfi_def_cfa_offset 8
	subl	$8, %esp
	.cfi_def_cfa_offset 16
	.cfi_offset %ebx, -8
	calll	.L9$pb
	.cfi_adjust_cfa_offset 4
.L9$pb:
	popl	%ebx
	.cfi_adjust_cfa_offset -4
.Ltmp7:
	addl	$_GLOBAL_OFFSET_TABLE_+(.Ltmp7-.L9$pb), %ebx
	movl	16(%esp), %eax
	movl	%eax, %ecx
	notl	%ecx
	decl	%eax
	andl	%ecx, %eax
	movl	%eax, (%esp)
	calll	constant_time_msb
	addl	$8, %esp
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_def_cfa_offset 4
	retl
.Lfunc_end9:
	.size	constant_time_is_zero, .Lfunc_end9-constant_time_is_zero
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function constant_time_select
	.type	constant_time_select,@function
constant_time_select:                   # @constant_time_select
	.cfi_startproc
# %bb.0:
	movl	12(%esp), %ecx
	movl	8(%esp), %eax
	xorl	%ecx, %eax
	andl	4(%esp), %eax
	xorl	%ecx, %eax
	retl
.Lfunc_end10:
	.size	constant_time_select, .Lfunc_end10-constant_time_select
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata,"a",@progbits
.L.str:
	.zero	9
	.size	.L.str, 9

	.ident	"Ubuntu clang version 19.1.7 (++20250114103320+cd708029e0b2-1~exp1~20250114103432.75)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym CRYPTO_memcmp
	.addrsig_sym tls1_cbc_remove_padding
	.addrsig_sym constant_time_ge
	.addrsig_sym constant_time_ge_8
	.addrsig_sym constant_time_eq
	.addrsig_sym constant_time_select_int
	.addrsig_sym constant_time_lt
	.addrsig_sym constant_time_msb
	.addrsig_sym constant_time_is_zero
	.addrsig_sym constant_time_select

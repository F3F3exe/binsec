	.text
	.file	"cmp_bytes.c"
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
	subl	$416, %esp                      # imm = 0x1A0
	movl	$0, -4(%ebp)
	leal	-404(%ebp), %eax
	movl	%eax, (%esp)
	calll	high_input_200@PLT
	leal	-204(%ebp), %eax
	movl	%eax, (%esp)
	calll	high_input_200@PLT
	leal	-404(%ebp), %eax
	leal	-204(%ebp), %ecx
	movl	%eax, (%esp)
	movl	%ecx, 4(%esp)
	movl	$200, 8(%esp)
	calll	Hacl_Policies_cmp_bytes@PLT
	movzbl	%al, %eax
	addl	$416, %esp                      # imm = 0x1A0
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 14.0.0-1ubuntu1.1"
	.section	".note.GNU-stack","",@progbits

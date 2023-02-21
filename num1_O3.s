	.file	"num1.c"
	.text
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC3:
	.string	"Result of metric multiplication: "
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC4:
	.string	"%f\t"
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB23:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$16, %rsp
	.cfi_offset 14, -24
	.cfi_offset 13, -32
	.cfi_offset 12, -40
	.cfi_offset 3, -48
	movq	%fs:40, %rax
	movq	%rax, -40(%rbp)
	movq	%rsp, %rax
	cmpq	%rax, %rsp
	je	.L3
.L17:
	subq	$4096, %rsp
	orq	$0, 4088(%rsp)
	cmpq	%rax, %rsp
	jne	.L17
.L3:
	subq	$512, %rsp
	orq	$0, 504(%rsp)
	leaq	7(%rsp), %rax
	movq	%rsp, %rcx
	movq	%rax, %rdx
	andq	$-8, %rax
	shrq	$3, %rdx
.L5:
	cmpq	%rcx, %rsp
	je	.L6
	subq	$4096, %rsp
	orq	$0, 4088(%rsp)
	jmp	.L5
.L6:
	subq	$512, %rsp
	orq	$0, 504(%rsp)
	movapd	.LC0(%rip), %xmm0
	pxor	%xmm3, %xmm3
	movups	%xmm0, 0(,%rdx,8)
	movq	%rsp, %r14
	leaq	512(%rax), %rcx
	movups	%xmm0, 16(,%rdx,8)
	movups	%xmm0, 32(,%rdx,8)
	movups	%xmm0, 48(,%rdx,8)
	movups	%xmm0, 64(,%rdx,8)
	movups	%xmm0, 80(,%rdx,8)
	movups	%xmm0, 96(,%rdx,8)
	movups	%xmm0, 112(,%rdx,8)
	movups	%xmm0, 128(,%rdx,8)
	movups	%xmm0, 144(,%rdx,8)
	movups	%xmm0, 160(,%rdx,8)
	movups	%xmm0, 176(,%rdx,8)
	movups	%xmm0, 192(,%rdx,8)
	movups	%xmm0, 208(,%rdx,8)
	movups	%xmm0, 224(,%rdx,8)
	movups	%xmm0, 240(,%rdx,8)
	movups	%xmm0, 256(,%rdx,8)
	movups	%xmm0, 272(,%rdx,8)
	movups	%xmm0, 288(,%rdx,8)
	movups	%xmm0, 304(,%rdx,8)
	movups	%xmm0, 320(,%rdx,8)
	movups	%xmm0, 336(,%rdx,8)
	movups	%xmm0, 352(,%rdx,8)
	movups	%xmm0, 368(,%rdx,8)
	movups	%xmm0, 384(,%rdx,8)
	movups	%xmm0, 400(,%rdx,8)
	movups	%xmm0, 416(,%rdx,8)
	movups	%xmm0, 432(,%rdx,8)
	movups	%xmm0, 448(,%rdx,8)
	movups	%xmm0, 464(,%rdx,8)
	movups	%xmm0, 480(,%rdx,8)
	movups	%xmm0, 496(,%rdx,8)
	movsd	.LC1(%rip), %xmm1
	movq	%r14, %rdx
	.p2align 4,,10
	.p2align 3
.L8:
	movsd	(%rax), %xmm0
	movsd	8(%rax), %xmm2
	addq	$64, %rax
	addq	$64, %rdx
	mulsd	%xmm1, %xmm0
	mulsd	%xmm1, %xmm2
	addsd	%xmm3, %xmm0
	addsd	%xmm2, %xmm0
	movsd	-48(%rax), %xmm2
	mulsd	%xmm1, %xmm2
	addsd	%xmm2, %xmm0
	movsd	-40(%rax), %xmm2
	mulsd	%xmm1, %xmm2
	addsd	%xmm2, %xmm0
	movsd	-32(%rax), %xmm2
	mulsd	%xmm1, %xmm2
	addsd	%xmm2, %xmm0
	movsd	-24(%rax), %xmm2
	mulsd	%xmm1, %xmm2
	addsd	%xmm2, %xmm0
	movsd	-16(%rax), %xmm2
	mulsd	%xmm1, %xmm2
	addsd	%xmm2, %xmm0
	movsd	-8(%rax), %xmm2
	mulsd	%xmm1, %xmm2
	addsd	%xmm2, %xmm0
	unpcklpd	%xmm0, %xmm0
	movups	%xmm0, -64(%rdx)
	movups	%xmm0, -48(%rdx)
	movups	%xmm0, -32(%rdx)
	movups	%xmm0, -16(%rdx)
	cmpq	%rcx, %rax
	jne	.L8
	leaq	.LC3(%rip), %rdi
	leaq	64(%r14), %r12
	addq	$576, %r14
	call	puts@PLT
	leaq	.LC4(%rip), %r13
	.p2align 4,,10
	.p2align 3
.L9:
	leaq	-64(%r12), %rbx
	.p2align 4,,10
	.p2align 3
.L10:
	movsd	(%rbx), %xmm0
	movq	%r13, %rsi
	movl	$1, %edi
	addq	$8, %rbx
	movl	$1, %eax
	call	__printf_chk@PLT
	cmpq	%r12, %rbx
	jne	.L10
	movl	$10, %edi
	leaq	64(%rbx), %r12
	call	putchar@PLT
	cmpq	%r14, %r12
	jne	.L9
	movq	-40(%rbp), %rax
	subq	%fs:40, %rax
	jne	.L18
	leaq	-32(%rbp), %rsp
	xorl	%eax, %eax
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%rbp
	.cfi_remember_state
	.cfi_def_cfa 7, 8
	ret
.L18:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE23:
	.size	main, .-main
	.globl	SIZE
	.section	.rodata
	.align 4
	.type	SIZE, @object
	.size	SIZE, 4
SIZE:
	.long	8
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC0:
	.long	0
	.long	1074003968
	.long	0
	.long	1074003968
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC1:
	.long	0
	.long	1074790400
	.ident	"GCC: (Ubuntu 11.3.0-1ubuntu1~22.04) 11.3.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:

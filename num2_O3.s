	.file	"num2.c"
	.text
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC1:
	.string	"Result: "
.LC2:
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
.L12:
	subq	$4096, %rsp
	orq	$0, 4088(%rsp)
	cmpq	%rax, %rsp
	jne	.L12
.L3:
	subq	$512, %rsp
	orq	$0, 504(%rsp)
	movapd	.LC0(%rip), %xmm0
	leaq	.LC1(%rip), %rdi
	leaq	.LC2(%rip), %r13
	leaq	7(%rsp), %r14
	movq	%r14, %rax
	andq	$-8, %r14
	shrq	$3, %rax
	leaq	64(%r14), %r12
	addq	$576, %r14
	movups	%xmm0, 0(,%rax,8)
	movups	%xmm0, 16(,%rax,8)
	movups	%xmm0, 32(,%rax,8)
	movups	%xmm0, 48(,%rax,8)
	movups	%xmm0, 64(,%rax,8)
	movups	%xmm0, 80(,%rax,8)
	movups	%xmm0, 96(,%rax,8)
	movups	%xmm0, 112(,%rax,8)
	movups	%xmm0, 128(,%rax,8)
	movups	%xmm0, 144(,%rax,8)
	movups	%xmm0, 160(,%rax,8)
	movups	%xmm0, 176(,%rax,8)
	movups	%xmm0, 192(,%rax,8)
	movups	%xmm0, 208(,%rax,8)
	movups	%xmm0, 224(,%rax,8)
	movups	%xmm0, 240(,%rax,8)
	movups	%xmm0, 256(,%rax,8)
	movups	%xmm0, 272(,%rax,8)
	movups	%xmm0, 288(,%rax,8)
	movups	%xmm0, 304(,%rax,8)
	movups	%xmm0, 320(,%rax,8)
	movups	%xmm0, 336(,%rax,8)
	movups	%xmm0, 352(,%rax,8)
	movups	%xmm0, 368(,%rax,8)
	movups	%xmm0, 384(,%rax,8)
	movups	%xmm0, 400(,%rax,8)
	movups	%xmm0, 416(,%rax,8)
	movups	%xmm0, 432(,%rax,8)
	movups	%xmm0, 448(,%rax,8)
	movups	%xmm0, 464(,%rax,8)
	movups	%xmm0, 480(,%rax,8)
	movups	%xmm0, 496(,%rax,8)
	call	puts@PLT
	.p2align 4,,10
	.p2align 3
.L5:
	leaq	-64(%r12), %rbx
	.p2align 4,,10
	.p2align 3
.L6:
	movsd	(%rbx), %xmm0
	movq	%r13, %rsi
	movl	$1, %edi
	addq	$8, %rbx
	movl	$1, %eax
	call	__printf_chk@PLT
	cmpq	%r12, %rbx
	jne	.L6
	movl	$10, %edi
	leaq	64(%rbx), %r12
	call	putchar@PLT
	cmpq	%r14, %r12
	jne	.L5
	movq	-40(%rbp), %rax
	subq	%fs:40, %rax
	jne	.L13
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
.L13:
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
	.long	1075052544
	.long	0
	.long	1075052544
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

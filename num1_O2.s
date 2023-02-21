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
.L28:
	subq	$4096, %rsp
	orq	$0, 4088(%rsp)
	cmpq	%rax, %rsp
	jne	.L28
.L3:
	subq	$512, %rsp
	orq	$0, 504(%rsp)
	movq	%rsp, %rdi
	movq	%rsp, %rax
.L5:
	cmpq	%rax, %rsp
	je	.L6
	subq	$4096, %rsp
	orq	$0, 4088(%rsp)
	jmp	.L5
.L6:
	subq	$512, %rsp
	orq	$0, 504(%rsp)
	movq	%rsp, %rcx
	movq	%rsp, %rax
.L8:
	cmpq	%rax, %rsp
	je	.L9
	subq	$4096, %rsp
	orq	$0, 4088(%rsp)
	jmp	.L8
.L9:
	subq	$512, %rsp
	orq	$0, 504(%rsp)
	movsd	.LC1(%rip), %xmm1
	movsd	.LC2(%rip), %xmm0
	movl	$64, %edx
	movq	%rsp, %r14
	.p2align 4,,10
	.p2align 3
.L11:
	leaq	-64(%rdx), %rax
	.p2align 4,,10
	.p2align 3
.L12:
	movsd	%xmm1, (%rdi,%rax)
	movsd	%xmm0, (%rcx,%rax)
	addq	$8, %rax
	cmpq	%rdx, %rax
	jne	.L12
	leaq	64(%rax), %rdx
	cmpq	$512, %rax
	jne	.L11
	leaq	512(%r14), %r11
	movq	%r14, %r9
	pxor	%xmm2, %xmm2
	leaq	512(%rcx), %r10
	leaq	576(%rcx), %r8
	.p2align 4,,10
	.p2align 3
.L13:
	pxor	%xmm0, %xmm0
	movq	%r10, %rcx
	movq	%r9, %rsi
	movups	%xmm0, (%r9)
	movups	%xmm0, 16(%r9)
	movups	%xmm0, 32(%r9)
	movups	%xmm0, 48(%r9)
	.p2align 4,,10
	.p2align 3
.L15:
	leaq	-512(%rcx), %rax
	movq	%rdi, %rdx
	movapd	%xmm2, %xmm1
	.p2align 4,,10
	.p2align 3
.L14:
	movsd	(%rdx), %xmm0
	mulsd	(%rax), %xmm0
	addq	$64, %rax
	addq	$8, %rdx
	addsd	%xmm0, %xmm1
	cmpq	%rcx, %rax
	jne	.L14
	leaq	8(%rax), %rcx
	movsd	%xmm1, (%rsi)
	addq	$8, %rsi
	cmpq	%r8, %rcx
	jne	.L15
	addq	$64, %r9
	addq	$64, %rdi
	cmpq	%r11, %r9
	jne	.L13
	leaq	.LC3(%rip), %rdi
	leaq	64(%r14), %r12
	addq	$576, %r14
	call	puts@PLT
	leaq	.LC4(%rip), %r13
	.p2align 4,,10
	.p2align 3
.L17:
	leaq	-64(%r12), %rbx
	.p2align 4,,10
	.p2align 3
.L18:
	movsd	(%rbx), %xmm0
	movq	%r13, %rsi
	movl	$1, %edi
	addq	$8, %rbx
	movl	$1, %eax
	call	__printf_chk@PLT
	cmpq	%rbx, %r12
	jne	.L18
	movl	$10, %edi
	addq	$64, %r12
	call	putchar@PLT
	cmpq	%r12, %r14
	jne	.L17
	movq	-40(%rbp), %rax
	subq	%fs:40, %rax
	jne	.L29
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
.L29:
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
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC1:
	.long	0
	.long	1074003968
	.align 8
.LC2:
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

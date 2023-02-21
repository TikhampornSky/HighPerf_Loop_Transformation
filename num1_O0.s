	.file	"num1.c"
	.text
	.globl	SIZE
	.section	.rodata
	.align 4
	.type	SIZE, @object
	.size	SIZE, 4
SIZE:
	.long	8
	.align 8
.LC3:
	.string	"Result of metric multiplication: "
.LC4:
	.string	"%f\t"
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$264, %rsp
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movq	%fs:40, %rax
	movq	%rax, -56(%rbp)
	xorl	%eax, %eax
	movq	%rsp, %rax
	movq	%rax, -160(%rbp)
	movl	$8, %eax
	cltq
	subq	$1, %rax
	movq	%rax, -128(%rbp)
	movl	$8, %eax
	cltq
	movq	%rax, %rcx
	movl	$0, %ebx
	movl	$8, %eax
	cltq
	salq	$3, %rax
	movq	%rax, -152(%rbp)
	movl	$8, %eax
	cltq
	subq	$1, %rax
	movq	%rax, -120(%rbp)
	movl	$8, %eax
	cltq
	movq	%rax, %r8
	movl	$0, %r9d
	movl	$8, %eax
	cltq
	movq	%rax, %rsi
	movl	$0, %edi
	movq	%r9, %rdx
	imulq	%rsi, %rdx
	movq	%rdi, %rax
	imulq	%r8, %rax
	leaq	(%rdx,%rax), %rcx
	movq	%r8, %rax
	mulq	%rsi
	addq	%rdx, %rcx
	movq	%rcx, %rdx
	movl	$8, %eax
	cltq
	movq	%rax, %r12
	movl	$0, %r13d
	movl	$8, %eax
	cltq
	movq	%rax, %r10
	movl	$0, %r11d
	movq	%r13, %rdx
	imulq	%r10, %rdx
	movq	%r11, %rax
	imulq	%r12, %rax
	leaq	(%rdx,%rax), %rcx
	movq	%r12, %rax
	mulq	%r10
	addq	%rdx, %rcx
	movq	%rcx, %rdx
	movl	$8, %eax
	movslq	%eax, %rdx
	movl	$8, %eax
	cltq
	imulq	%rdx, %rax
	leaq	0(,%rax,8), %rdx
	movl	$16, %eax
	subq	$1, %rax
	addq	%rdx, %rax
	movl	$16, %edi
	movl	$0, %edx
	divq	%rdi
	imulq	$16, %rax, %rdx
	movq	%rdx, %rax
	andq	$-4096, %rax
	movq	%rsp, %rcx
	subq	%rax, %rcx
.L2:
	cmpq	%rcx, %rsp
	je	.L3
	subq	$4096, %rsp
	orq	$0, 4088(%rsp)
	jmp	.L2
.L3:
	movq	%rdx, %rax
	andl	$4095, %eax
	subq	%rax, %rsp
	movq	%rdx, %rax
	andl	$4095, %eax
	testq	%rax, %rax
	je	.L4
	movq	%rdx, %rax
	andl	$4095, %eax
	subq	$8, %rax
	addq	%rsp, %rax
	orq	$0, (%rax)
.L4:
	movq	%rsp, %rax
	addq	$7, %rax
	shrq	$3, %rax
	salq	$3, %rax
	movq	%rax, -112(%rbp)
	movl	$8, %eax
	cltq
	subq	$1, %rax
	movq	%rax, -104(%rbp)
	movl	$8, %eax
	cltq
	movq	%rax, -288(%rbp)
	movq	$0, -280(%rbp)
	movl	$8, %eax
	cltq
	leaq	0(,%rax,8), %rdi
	movl	$8, %eax
	cltq
	subq	$1, %rax
	movq	%rax, -96(%rbp)
	movl	$8, %eax
	cltq
	movq	%rax, -176(%rbp)
	movq	$0, -168(%rbp)
	movl	$8, %eax
	cltq
	movq	%rax, %r14
	movl	$0, %r15d
	movq	-176(%rbp), %rbx
	movq	-168(%rbp), %rsi
	movq	%rsi, %rdx
	imulq	%r14, %rdx
	movq	%rbx, %rax
	imulq	%r15, %rax
	leaq	(%rdx,%rax), %rcx
	movq	%rbx, %rax
	mulq	%r14
	addq	%rdx, %rcx
	movq	%rcx, %rdx
	movl	$8, %eax
	cltq
	movq	%rax, -192(%rbp)
	movq	$0, -184(%rbp)
	movl	$8, %eax
	cltq
	movq	%rax, -208(%rbp)
	movq	$0, -200(%rbp)
	movq	-192(%rbp), %rbx
	movq	-184(%rbp), %rsi
	movq	%rsi, %rdx
	movq	-208(%rbp), %r9
	movq	-200(%rbp), %r10
	imulq	%r9, %rdx
	movq	%r10, %rax
	imulq	%rbx, %rax
	leaq	(%rdx,%rax), %rcx
	movq	%rbx, %rax
	mulq	%r9
	addq	%rdx, %rcx
	movq	%rcx, %rdx
	movl	$8, %eax
	movslq	%eax, %rdx
	movl	$8, %eax
	cltq
	imulq	%rdx, %rax
	leaq	0(,%rax,8), %rdx
	movl	$16, %eax
	subq	$1, %rax
	addq	%rdx, %rax
	movl	$16, %ebx
	movl	$0, %edx
	divq	%rbx
	imulq	$16, %rax, %rdx
	movq	%rdx, %rax
	andq	$-4096, %rax
	movq	%rsp, %rcx
	subq	%rax, %rcx
.L5:
	cmpq	%rcx, %rsp
	je	.L6
	subq	$4096, %rsp
	orq	$0, 4088(%rsp)
	jmp	.L5
.L6:
	movq	%rdx, %rax
	andl	$4095, %eax
	subq	%rax, %rsp
	movq	%rdx, %rax
	andl	$4095, %eax
	testq	%rax, %rax
	je	.L7
	movq	%rdx, %rax
	andl	$4095, %eax
	subq	$8, %rax
	addq	%rsp, %rax
	orq	$0, (%rax)
.L7:
	movq	%rsp, %rax
	addq	$7, %rax
	shrq	$3, %rax
	salq	$3, %rax
	movq	%rax, -88(%rbp)
	movl	$8, %eax
	cltq
	subq	$1, %rax
	movq	%rax, -80(%rbp)
	movl	$8, %eax
	cltq
	movq	%rax, -304(%rbp)
	movq	$0, -296(%rbp)
	movl	$8, %eax
	cltq
	leaq	0(,%rax,8), %rbx
	movl	$8, %eax
	cltq
	subq	$1, %rax
	movq	%rax, -72(%rbp)
	movl	$8, %eax
	cltq
	movq	%rax, -224(%rbp)
	movq	$0, -216(%rbp)
	movl	$8, %eax
	cltq
	movq	%rax, -240(%rbp)
	movq	$0, -232(%rbp)
	movq	-224(%rbp), %r14
	movq	-216(%rbp), %r15
	movq	%r15, %rdx
	movq	-240(%rbp), %r11
	movq	-232(%rbp), %r12
	imulq	%r11, %rdx
	movq	%r12, %rax
	imulq	%r14, %rax
	leaq	(%rdx,%rax), %rcx
	movq	%r14, %rax
	mulq	%r11
	addq	%rdx, %rcx
	movq	%rcx, %rdx
	movl	$8, %eax
	cltq
	movq	%rax, -256(%rbp)
	movq	$0, -248(%rbp)
	movl	$8, %eax
	cltq
	movq	%rax, -272(%rbp)
	movq	$0, -264(%rbp)
	movq	-256(%rbp), %r11
	movq	-248(%rbp), %r12
	movq	%r12, %rdx
	movq	-272(%rbp), %r8
	movq	-264(%rbp), %r9
	imulq	%r8, %rdx
	movq	%r9, %rax
	imulq	%r11, %rax
	leaq	(%rdx,%rax), %rcx
	movq	%r11, %rax
	mulq	%r8
	addq	%rdx, %rcx
	movq	%rcx, %rdx
	movl	$8, %eax
	movslq	%eax, %rdx
	movl	$8, %eax
	cltq
	imulq	%rdx, %rax
	leaq	0(,%rax,8), %rdx
	movl	$16, %eax
	subq	$1, %rax
	addq	%rdx, %rax
	movl	$16, %esi
	movl	$0, %edx
	divq	%rsi
	imulq	$16, %rax, %rax
	movq	%rax, %rcx
	andq	$-4096, %rcx
	movq	%rsp, %rdx
	subq	%rcx, %rdx
.L8:
	cmpq	%rdx, %rsp
	je	.L9
	subq	$4096, %rsp
	orq	$0, 4088(%rsp)
	jmp	.L8
.L9:
	movq	%rax, %rdx
	andl	$4095, %edx
	subq	%rdx, %rsp
	movq	%rax, %rdx
	andl	$4095, %edx
	testq	%rdx, %rdx
	je	.L10
	andl	$4095, %eax
	subq	$8, %rax
	addq	%rsp, %rax
	orq	$0, (%rax)
.L10:
	movq	%rsp, %rax
	addq	$7, %rax
	shrq	$3, %rax
	salq	$3, %rax
	movq	%rax, -64(%rbp)
	movl	$8, -132(%rbp)
	movl	$0, -144(%rbp)
	jmp	.L11
.L14:
	movl	$0, -140(%rbp)
	jmp	.L12
.L13:
	movq	-152(%rbp), %rcx
	shrq	$3, %rcx
	movq	-112(%rbp), %rax
	movl	-140(%rbp), %edx
	movslq	%edx, %rsi
	movl	-144(%rbp), %edx
	movslq	%edx, %rdx
	imulq	%rcx, %rdx
	addq	%rsi, %rdx
	movsd	.LC0(%rip), %xmm0
	movsd	%xmm0, (%rax,%rdx,8)
	movq	%rdi, %rcx
	shrq	$3, %rcx
	movq	-88(%rbp), %rax
	movl	-140(%rbp), %edx
	movslq	%edx, %rsi
	movl	-144(%rbp), %edx
	movslq	%edx, %rdx
	imulq	%rcx, %rdx
	addq	%rsi, %rdx
	movsd	.LC1(%rip), %xmm0
	movsd	%xmm0, (%rax,%rdx,8)
	addl	$1, -140(%rbp)
.L12:
	movl	-140(%rbp), %eax
	cmpl	-132(%rbp), %eax
	jl	.L13
	addl	$1, -144(%rbp)
.L11:
	movl	-144(%rbp), %eax
	cmpl	-132(%rbp), %eax
	jl	.L14
	movl	$0, -144(%rbp)
	jmp	.L15
.L20:
	movl	$0, -140(%rbp)
	jmp	.L16
.L19:
	movq	%rbx, %rcx
	shrq	$3, %rcx
	movq	-64(%rbp), %rax
	movl	-140(%rbp), %edx
	movslq	%edx, %rsi
	movl	-144(%rbp), %edx
	movslq	%edx, %rdx
	imulq	%rcx, %rdx
	addq	%rsi, %rdx
	pxor	%xmm0, %xmm0
	movsd	%xmm0, (%rax,%rdx,8)
	movl	$0, -136(%rbp)
	jmp	.L17
.L18:
	movq	%rbx, %rcx
	shrq	$3, %rcx
	movq	-64(%rbp), %rax
	movl	-140(%rbp), %edx
	movslq	%edx, %rsi
	movl	-144(%rbp), %edx
	movslq	%edx, %rdx
	imulq	%rcx, %rdx
	addq	%rsi, %rdx
	movsd	(%rax,%rdx,8), %xmm1
	movq	-152(%rbp), %rcx
	shrq	$3, %rcx
	movq	-112(%rbp), %rax
	movl	-136(%rbp), %edx
	movslq	%edx, %rsi
	movl	-144(%rbp), %edx
	movslq	%edx, %rdx
	imulq	%rcx, %rdx
	addq	%rsi, %rdx
	movsd	(%rax,%rdx,8), %xmm2
	movq	%rdi, %rcx
	shrq	$3, %rcx
	movq	-88(%rbp), %rax
	movl	-140(%rbp), %edx
	movslq	%edx, %rsi
	movl	-136(%rbp), %edx
	movslq	%edx, %rdx
	imulq	%rcx, %rdx
	addq	%rsi, %rdx
	movsd	(%rax,%rdx,8), %xmm0
	mulsd	%xmm2, %xmm0
	movq	%rbx, %rcx
	shrq	$3, %rcx
	addsd	%xmm1, %xmm0
	movq	-64(%rbp), %rax
	movl	-140(%rbp), %edx
	movslq	%edx, %rsi
	movl	-144(%rbp), %edx
	movslq	%edx, %rdx
	imulq	%rcx, %rdx
	addq	%rsi, %rdx
	movsd	%xmm0, (%rax,%rdx,8)
	addl	$1, -136(%rbp)
.L17:
	movl	-136(%rbp), %eax
	cmpl	-132(%rbp), %eax
	jl	.L18
	addl	$1, -140(%rbp)
.L16:
	movl	-140(%rbp), %eax
	cmpl	-132(%rbp), %eax
	jl	.L19
	addl	$1, -144(%rbp)
.L15:
	movl	-144(%rbp), %eax
	cmpl	-132(%rbp), %eax
	jl	.L20
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$0, -144(%rbp)
	jmp	.L21
.L24:
	movl	$0, -140(%rbp)
	jmp	.L22
.L23:
	movq	%rbx, %rcx
	shrq	$3, %rcx
	movq	-64(%rbp), %rax
	movl	-140(%rbp), %edx
	movslq	%edx, %rsi
	movl	-144(%rbp), %edx
	movslq	%edx, %rdx
	imulq	%rcx, %rdx
	addq	%rsi, %rdx
	movq	(%rax,%rdx,8), %rax
	movq	%rax, %xmm0
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	movl	$1, %eax
	call	printf@PLT
	addl	$1, -140(%rbp)
.L22:
	movl	-140(%rbp), %eax
	cmpl	-132(%rbp), %eax
	jl	.L23
	movl	$10, %edi
	call	putchar@PLT
	addl	$1, -144(%rbp)
.L21:
	movl	-144(%rbp), %eax
	cmpl	-132(%rbp), %eax
	jl	.L24
	movl	$0, %eax
	movq	-160(%rbp), %rsp
	movq	-56(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L26
	call	__stack_chk_fail@PLT
.L26:
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.section	.rodata
	.align 8
.LC0:
	.long	0
	.long	1074003968
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

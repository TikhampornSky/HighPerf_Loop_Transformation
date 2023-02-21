	.file	"num2.c"
	.text
	.globl	SIZE
	.section	.rodata
	.align 4
	.type	SIZE, @object
	.size	SIZE, 4
SIZE:
	.long	8
.LC1:
	.string	"Result: "
.LC2:
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
	subq	$56, %rsp
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movq	%fs:40, %r10
	movq	%r10, -56(%rbp)
	xorl	%r10d, %r10d
	movq	%rsp, %r10
	movq	%r10, %r13
	movl	$8, %r10d
	movslq	%r10d, %r10
	subq	$1, %r10
	movq	%r10, -80(%rbp)
	movl	$8, %r10d
	movslq	%r10d, %r10
	movq	%r10, %r14
	movl	$0, %r15d
	movl	$8, %r10d
	movslq	%r10d, %r10
	leaq	0(,%r10,8), %r12
	movl	$8, %r10d
	movslq	%r10d, %r10
	subq	$1, %r10
	movq	%r10, -72(%rbp)
	movl	$8, %r10d
	movslq	%r10d, %r10
	movq	%r10, %r8
	movl	$0, %r9d
	movl	$8, %r10d
	movslq	%r10d, %r10
	movq	%r10, %rax
	movl	$0, %edx
	movq	%r9, %r11
	imulq	%rax, %r11
	movq	%rdx, %r10
	imulq	%r8, %r10
	addq	%r11, %r10
	mulq	%r8
	leaq	(%r10,%rdx), %r8
	movq	%r8, %rdx
	movl	$8, %eax
	cltq
	movq	%rax, %rsi
	movl	$0, %edi
	movl	$8, %eax
	cltq
	movq	%rax, %rcx
	movl	$0, %ebx
	movq	%rdi, %rdx
	imulq	%rcx, %rdx
	movq	%rbx, %rax
	imulq	%rsi, %rax
	leaq	(%rdx,%rax), %r8
	movq	%rsi, %rax
	mulq	%rcx
	leaq	(%r8,%rdx), %rcx
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
	imulq	$16, %rax, %rax
	movq	%rax, %rcx
	andq	$-4096, %rcx
	movq	%rsp, %rdx
	subq	%rcx, %rdx
.L2:
	cmpq	%rdx, %rsp
	je	.L3
	subq	$4096, %rsp
	orq	$0, 4088(%rsp)
	jmp	.L2
.L3:
	movq	%rax, %rdx
	andl	$4095, %edx
	subq	%rdx, %rsp
	movq	%rax, %rdx
	andl	$4095, %edx
	testq	%rdx, %rdx
	je	.L4
	andl	$4095, %eax
	subq	$8, %rax
	addq	%rsp, %rax
	orq	$0, (%rax)
.L4:
	movq	%rsp, %rax
	addq	$7, %rax
	shrq	$3, %rax
	salq	$3, %rax
	movq	%rax, -64(%rbp)
	movl	$8, -84(%rbp)
	movl	$0, -92(%rbp)
	jmp	.L5
.L8:
	movl	$0, -88(%rbp)
	jmp	.L6
.L7:
	movq	%r12, %rcx
	shrq	$3, %rcx
	movq	-64(%rbp), %rax
	movl	-88(%rbp), %edx
	movslq	%edx, %rsi
	movl	-92(%rbp), %edx
	movslq	%edx, %rdx
	imulq	%rcx, %rdx
	addq	%rsi, %rdx
	movsd	.LC0(%rip), %xmm0
	movsd	%xmm0, (%rax,%rdx,8)
	addl	$1, -88(%rbp)
.L6:
	movl	-88(%rbp), %eax
	cmpl	-84(%rbp), %eax
	jl	.L7
	addl	$1, -92(%rbp)
.L5:
	movl	-92(%rbp), %eax
	cmpl	-84(%rbp), %eax
	jl	.L8
	movl	$0, -92(%rbp)
	jmp	.L9
.L12:
	movl	$0, -88(%rbp)
	jmp	.L10
.L11:
	movq	%r12, %rcx
	shrq	$3, %rcx
	movq	-64(%rbp), %rax
	movl	-88(%rbp), %edx
	movslq	%edx, %rsi
	movl	-92(%rbp), %edx
	movslq	%edx, %rdx
	imulq	%rcx, %rdx
	addq	%rsi, %rdx
	movsd	(%rax,%rdx,8), %xmm1
	movq	%r12, %rcx
	shrq	$3, %rcx
	movsd	.LC0(%rip), %xmm0
	addsd	%xmm1, %xmm0
	movq	-64(%rbp), %rax
	movl	-88(%rbp), %edx
	movslq	%edx, %rsi
	movl	-92(%rbp), %edx
	movslq	%edx, %rdx
	imulq	%rcx, %rdx
	addq	%rsi, %rdx
	movsd	%xmm0, (%rax,%rdx,8)
	addl	$1, -88(%rbp)
.L10:
	movl	-88(%rbp), %eax
	cmpl	-84(%rbp), %eax
	jl	.L11
	addl	$1, -92(%rbp)
.L9:
	movl	-92(%rbp), %eax
	cmpl	-84(%rbp), %eax
	jl	.L12
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$0, -92(%rbp)
	jmp	.L13
.L16:
	movl	$0, -88(%rbp)
	jmp	.L14
.L15:
	movq	%r12, %rcx
	shrq	$3, %rcx
	movq	-64(%rbp), %rax
	movl	-88(%rbp), %edx
	movslq	%edx, %rsi
	movl	-92(%rbp), %edx
	movslq	%edx, %rdx
	imulq	%rcx, %rdx
	addq	%rsi, %rdx
	movq	(%rax,%rdx,8), %rax
	movq	%rax, %xmm0
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	movl	$1, %eax
	call	printf@PLT
	addl	$1, -88(%rbp)
.L14:
	movl	-88(%rbp), %eax
	cmpl	-84(%rbp), %eax
	jl	.L15
	movl	$10, %edi
	call	putchar@PLT
	addl	$1, -92(%rbp)
.L13:
	movl	-92(%rbp), %eax
	cmpl	-84(%rbp), %eax
	jl	.L16
	movl	$0, %eax
	movq	%r13, %rsp
	movq	-56(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L18
	call	__stack_chk_fail@PLT
.L18:
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

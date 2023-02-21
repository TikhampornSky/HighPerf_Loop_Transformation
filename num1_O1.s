	.file	"num1.c"
	.text
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC3:
	.string	"Result of metric multiplication: "
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC4:
	.string	"%f\t"
	.text
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
	xorl	%eax, %eax
	movq	%rsp, %rax
.L2:
	cmpq	%rax, %rsp
	je	.L3
	subq	$4096, %rsp
	orq	$0, 4088(%rsp)
	jmp	.L2
.L3:
	subq	$512, %rsp
	orq	$0, 504(%rsp)
	movq	%rsp, %rcx
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
	movq	%rsp, %r10
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
	movq	%rsp, %r14
	movl	$64, %edx
	movsd	.LC1(%rip), %xmm1
	movsd	.LC2(%rip), %xmm0
.L11:
	leaq	-64(%rdx), %rax
.L12:
	movsd	%xmm1, (%rcx,%rax)
	movsd	%xmm0, (%r10,%rax)
	addq	$8, %rax
	cmpq	%rdx, %rax
	jne	.L12
	addq	$64, %rdx
	cmpq	$576, %rdx
	jne	.L11
	movq	%rcx, %r8
	leaq	512(%rcx), %r9
	movq	%r14, %r12
	leaq	576(%r10), %r11
.L13:
	leaq	512(%r10), %rcx
	movq	%r12, %rsi
.L15:
	movq	%rsi, %rdi
	leaq	-512(%rcx), %rax
	movq	%r8, %rdx
	pxor	%xmm1, %xmm1
.L14:
	movsd	(%rdx), %xmm0
	mulsd	(%rax), %xmm0
	addsd	%xmm0, %xmm1
	addq	$8, %rdx
	addq	$64, %rax
	cmpq	%rcx, %rax
	jne	.L14
	movsd	%xmm1, (%rdi)
	addq	$8, %rsi
	addq	$8, %rcx
	cmpq	%r11, %rcx
	jne	.L15
	addq	$64, %r8
	addq	$64, %r12
	cmpq	%r9, %r8
	jne	.L13
	leaq	.LC3(%rip), %rdi
	call	puts@PLT
	leaq	64(%r14), %r12
	addq	$576, %r14
	leaq	.LC4(%rip), %r13
.L17:
	leaq	-64(%r12), %rbx
.L18:
	movsd	(%rbx), %xmm0
	movq	%r13, %rsi
	movl	$1, %edi
	movl	$1, %eax
	call	__printf_chk@PLT
	addq	$8, %rbx
	cmpq	%rbx, %r12
	jne	.L18
	movl	$10, %edi
	call	putchar@PLT
	addq	$64, %r12
	cmpq	%r12, %r14
	jne	.L17
	movq	-40(%rbp), %rax
	subq	%fs:40, %rax
	jne	.L27
	movl	$0, %eax
	leaq	-32(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%rbp
	.cfi_remember_state
	.cfi_def_cfa 7, 8
	ret
.L27:
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

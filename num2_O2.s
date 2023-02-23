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
	xorl	%eax, %eax
	leaq	-7999488(%rsp), %rax
	cmpq	%rax, %rsp
	je	.L3
.L16:
	subq	$4096, %rsp
	orq	$0, 4088(%rsp)
	cmpq	%rax, %rsp
	jne	.L16
.L3:
	subq	$512, %rsp
	orq	$0, 504(%rsp)
	movsd	.LC0(%rip), %xmm0
	movq	%rsp, %r13
	leaq	8000(%r13), %r12
	addq	$8008000, %r13
	movq	%r12, %rdx
.L5:
	leaq	-8000(%rdx), %rax
	.p2align 4,,10
	.p2align 3
.L6:
	movsd	%xmm0, (%rax)
	addq	$8, %rax
	cmpq	%rdx, %rax
	jne	.L6
	leaq	8000(%rax), %rdx
	cmpq	%r13, %rdx
	jne	.L5
	leaq	.LC1(%rip), %rdi
	leaq	.LC2(%rip), %r14
	call	puts@PLT
.L8:
	leaq	-8000(%r12), %rbx
	.p2align 4,,10
	.p2align 3
.L9:
	movsd	(%rbx), %xmm0
	movq	%r14, %rsi
	movl	$1, %edi
	addq	$8, %rbx
	movl	$1, %eax
	call	__printf_chk@PLT
	cmpq	%r12, %rbx
	jne	.L9
	movl	$10, %edi
	leaq	8000(%rbx), %r12
	call	putchar@PLT
	cmpq	%r13, %r12
	jne	.L8
	movq	-40(%rbp), %rax
	subq	%fs:40, %rax
	jne	.L17
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
.L17:
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
	.long	1000
	.section	.rodata.cst8,"aM",@progbits,8
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

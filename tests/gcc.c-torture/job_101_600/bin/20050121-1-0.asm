strchr:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	nop
	movq	-8(%rbp), %rax
	movzbl	(%rax), %edx
	movl	-12(%rbp), %eax
	cmpb	%al, %dl
	je	L6
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	L3
	movl	$0, %eax
	jmp	L1
L3:
	movq	-8(%rbp), %rax
	jmp	L1
L6:
L1:
	popq	%rbp
	ret
strlen:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movq	$0, -8(%rbp)
	jmp	L8
L9:
	addq	$1, -8(%rbp)
L8:
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	L9
	movq	-8(%rbp), %rax
	popq	%rbp
	ret
strcpy:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	nop
L12:
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movq	-32(%rbp), %rdx
	leaq	1(%rdx), %rcx
	movq	%rcx, -32(%rbp)
	movzbl	(%rdx), %edx
	movb	%dl, (%rax)
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	L12
	movq	-8(%rbp), %rax
	popq	%rbp
	ret
memcmp:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	L15
L18:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %edx
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	%al, %dl
	je	L16
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	jmp	L17
L16:
	addq	$1, -8(%rbp)
	addq	$1, -16(%rbp)
L15:
	movq	-40(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	testq	%rax, %rax
	jne	L18
	movl	$0, %eax
L17:
	popq	%rbp
	ret
exit:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movq $-1, %rax
	jmp %rax
	
	popq	%rbp
	ret
abort:
	pushq	%rbp
	movq	%rsp, %rbp
	movq $-1, %rax
	jmp %rax
	
	popq	%rbp
	ret
memset:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	L22
L23:
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movl	-28(%rbp), %edx
	movb	%dl, (%rax)
L22:
	movq	-40(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	testq	%rax, %rax
	jne	L23
	movq	-24(%rbp), %rax
	popq	%rbp
	ret
memcpy:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	L26
L27:
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movq	-16(%rbp), %rdx
	leaq	1(%rdx), %rcx
	movq	%rcx, -16(%rbp)
	movzbl	(%rdx), %edx
	movb	%dl, (%rax)
L26:
	movq	-40(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	testq	%rax, %rax
	jne	L27
	movq	-24(%rbp), %rax
	popq	%rbp
	ret
malloc:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movl	$1000, %eax
	popq	%rbp
	ret
calloc:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$1000, %eax
	popq	%rbp
	ret
free:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	popq	%rbp
	ret
isprint:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	cmpl	$96, -4(%rbp)
	jle	L35
	cmpl	$122, -4(%rbp)
	jg	L35
	movl	$1, %eax
	jmp	L36
L35:
	cmpl	$64, -4(%rbp)
	jle	L37
	cmpl	$90, -4(%rbp)
	jg	L37
	movl	$1, %eax
	jmp	L36
L37:
	cmpl	$47, -4(%rbp)
	jle	L38
	cmpl	$57, -4(%rbp)
	jg	L38
	movl	$1, %eax
	jmp	L36
L38:
	movl	$0, %eax
L36:
	popq	%rbp
	ret
foo_float:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -20(%rbp)
	movl	-20(%rbp), %eax
	addl	$1, %eax
	vxorps	%xmm1, %xmm1, %xmm1
	vcvtsi2ss	%eax, %xmm1, %xmm1
	vmovd	%xmm1, %eax
	movl	%eax, -4(%rbp)
	movl	-8(%rbp), %eax
	movl	-4(%rbp), %edx
	movl	%edx, -16(%rbp)
	movl	%eax, -12(%rbp)
	movl	-20(%rbp), %eax
	subl	$1, %eax
	vxorps	%xmm2, %xmm2, %xmm2
	vcvtsi2ss	%eax, %xmm2, %xmm2
	vmovd	%xmm2, %eax
	movl	%eax, -8(%rbp)
	movl	-8(%rbp), %eax
	movl	-4(%rbp), %edx
	movl	%edx, -16(%rbp)
	movl	%eax, -12(%rbp)
	movl	-4(%rbp), %edx
	movl	-8(%rbp), %eax
	movl	%edx, -28(%rbp)
	movl	%eax, -24(%rbp)
	movq	-28(%rbp), %rax
	vmovq	%rax, %xmm0
	popq	%rbp
	ret
bar_float:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	$5, %edi
	call	foo_float
	vmovq	%xmm0, %rax
	movq	%rax, -16(%rbp)
	movl	-16(%rbp), %eax
	movq	-8(%rbp), %rdx
	movl	%eax, (%rdx)
	leave
	ret
baz_float:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	$5, %edi
	call	foo_float
	vmovq	%xmm0, %rax
	movq	%rax, -16(%rbp)
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rdx
	movl	%eax, (%rdx)
	leave
	ret
foo_double:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -36(%rbp)
	movl	-36(%rbp), %eax
	addl	$1, %eax
	vxorpd	%xmm2, %xmm2, %xmm2
	vcvtsi2sd	%eax, %xmm2, %xmm2
	vmovq	%xmm2, %rax
	movq	%rax, -8(%rbp)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, -32(%rbp)
	movq	%rax, -24(%rbp)
	movl	-36(%rbp), %eax
	subl	$1, %eax
	vxorpd	%xmm3, %xmm3, %xmm3
	vcvtsi2sd	%eax, %xmm3, %xmm3
	vmovq	%xmm3, %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, -32(%rbp)
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movq	%rcx, %rax
	vmovq	%rax, %xmm0
	vmovq	%rdx, %xmm1
	popq	%rbp
	ret
bar_double:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rdi, -8(%rbp)
	movl	$5, %edi
	call	foo_double
	vmovq	%xmm0, %rax
	movq	-8(%rbp), %rdx
	movq	%rax, (%rdx)
	leave
	ret
baz_double:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rdi, -8(%rbp)
	movl	$5, %edi
	call	foo_double
	vmovq	%xmm1, %rax
	movq	-8(%rbp), %rdx
	movq	%rax, (%rdx)
	leave
	ret
foo_ldouble_t:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	movl	%edi, -84(%rbp)
	movl	-84(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -112(%rbp)
	fildl	-112(%rbp)
	fstpt	-112(%rbp)
	movq	-112(%rbp), %rax
	movl	-104(%rbp), %edx
	movq	%rax, -32(%rbp)
	movl	%edx, -24(%rbp)
	movq	-48(%rbp), %rax
	movl	-40(%rbp), %edx
	movq	-32(%rbp), %rcx
	movl	-24(%rbp), %ebx
	movq	%rcx, -80(%rbp)
	movl	%ebx, -72(%rbp)
	movq	%rax, -64(%rbp)
	movl	%edx, -56(%rbp)
	movl	-84(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -112(%rbp)
	fildl	-112(%rbp)
	fstpt	-112(%rbp)
	movq	-112(%rbp), %rax
	movl	-104(%rbp), %edx
	movq	%rax, -48(%rbp)
	movl	%edx, -40(%rbp)
	movq	-48(%rbp), %rax
	movl	-40(%rbp), %edx
	movq	-32(%rbp), %rcx
	movl	-24(%rbp), %ebx
	movq	%rcx, -80(%rbp)
	movl	%ebx, -72(%rbp)
	movq	%rax, -64(%rbp)
	movl	%edx, -56(%rbp)
	movq	-32(%rbp), %rcx
	movl	-24(%rbp), %ebx
	movq	-48(%rbp), %rax
	movl	-40(%rbp), %edx
	movq	%rcx, -112(%rbp)
	movl	%ebx, -104(%rbp)
	fldt	-112(%rbp)
	movq	%rax, -112(%rbp)
	movl	%edx, -104(%rbp)
	fldt	-112(%rbp)
	flds	LC0(%rip)
	flds	LC0(%rip)
	fstp	%st(0)
	fstp	%st(0)
	fxch	%st(1)
	popq	%rbx
	popq	%rbp
	ret
bar_ldouble_t:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	$5, %edi
	call	foo_ldouble_t
	fstpt	-48(%rbp)
	fstpt	-32(%rbp)
	movq	-48(%rbp), %rax
	movl	-40(%rbp), %edx
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	movl	%edx, 8(%rcx)
	leave
	ret
baz_ldouble_t:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	$5, %edi
	call	foo_ldouble_t
	fstpt	-48(%rbp)
	fstpt	-32(%rbp)
	movq	-32(%rbp), %rax
	movl	-24(%rbp), %edx
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	movl	%edx, 8(%rcx)
	leave
	ret
foo_char:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -20(%rbp)
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movb	%al, -1(%rbp)
	movzbl	-2(%rbp), %eax
	movzbl	-1(%rbp), %edx
	movb	%dl, -4(%rbp)
	movb	%al, -3(%rbp)
	movl	-20(%rbp), %eax
	subl	$1, %eax
	movb	%al, -2(%rbp)
	movzbl	-2(%rbp), %eax
	movzbl	-1(%rbp), %edx
	movb	%dl, -4(%rbp)
	movb	%al, -3(%rbp)
	movzbl	-1(%rbp), %edx
	movzbl	-2(%rbp), %eax
	movl	%edx, %ecx
	movl	%eax, %edx
	movzbl	%cl, %ecx
	movb	$0, %al
	orl	%ecx, %eax
	movb	%dl, %ah
	popq	%rbp
	ret
bar_char:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rdi, -8(%rbp)
	movl	$5, %edi
	call	foo_char
	movl	%eax, %edx
	movzbl	%ah, %eax
	movq	-8(%rbp), %rax
	movb	%dl, (%rax)
	leave
	ret
baz_char:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rdi, -8(%rbp)
	movl	$5, %edi
	call	foo_char
	movzbl	%ah, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movb	%dl, (%rax)
	leave
	ret
foo_short:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -20(%rbp)
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movw	%ax, -2(%rbp)
	movzwl	-4(%rbp), %eax
	movzwl	-2(%rbp), %edx
	movw	%dx, -8(%rbp)
	movw	%ax, -6(%rbp)
	movl	-20(%rbp), %eax
	subl	$1, %eax
	movw	%ax, -4(%rbp)
	movzwl	-4(%rbp), %eax
	movzwl	-2(%rbp), %edx
	movw	%dx, -8(%rbp)
	movw	%ax, -6(%rbp)
	movzwl	-2(%rbp), %edx
	movzwl	-4(%rbp), %eax
	movl	%edx, %ecx
	movl	%eax, %edx
	movzwl	%cx, %ecx
	movw	$0, %ax
	orl	%ecx, %eax
	movzwl	%dx, %edx
	sall	$16, %edx
	movzwl	%ax, %eax
	orl	%edx, %eax
	popq	%rbp
	ret
bar_short:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rdi, -8(%rbp)
	movl	$5, %edi
	call	foo_short
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movw	%dx, (%rax)
	leave
	ret
baz_short:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rdi, -8(%rbp)
	movl	$5, %edi
	call	foo_short
	shrl	$16, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movw	%dx, (%rax)
	leave
	ret
foo_int:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -20(%rbp)
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	movl	-8(%rbp), %eax
	movl	-4(%rbp), %edx
	movl	%edx, -16(%rbp)
	movl	%eax, -12(%rbp)
	movl	-20(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -8(%rbp)
	movl	-8(%rbp), %eax
	movl	-4(%rbp), %edx
	movl	%edx, -16(%rbp)
	movl	%eax, -12(%rbp)
	movl	-4(%rbp), %edx
	movl	-8(%rbp), %eax
	movl	%edx, %ecx
	movl	%eax, %edx
	movl	%ecx, %ecx
	movq	%rax, %rsi
	movabsq	$-4294967296, %rax
	andq	%rsi, %rax
	orq	%rcx, %rax
	movl	%edx, %edx
	salq	$32, %rdx
	movl	%eax, %eax
	orq	%rdx, %rax
	popq	%rbp
	ret
bar_int:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rdi, -8(%rbp)
	movl	$5, %edi
	call	foo_int
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, (%rax)
	leave
	ret
baz_int:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rdi, -8(%rbp)
	movl	$5, %edi
	call	foo_int
	shrq	$32, %rax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, (%rax)
	leave
	ret
foo_long:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -36(%rbp)
	movl	-36(%rbp), %eax
	addl	$1, %eax
	cltq
	movq	%rax, -8(%rbp)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, -32(%rbp)
	movq	%rax, -24(%rbp)
	movl	-36(%rbp), %eax
	subl	$1, %eax
	cltq
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, -32(%rbp)
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rcx
	movq	%rsi, %rax
	movq	%rcx, %rdx
	popq	%rbp
	ret
bar_long:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$8, %rsp
	movq	%rdi, -16(%rbp)
	movl	$5, %edi
	call	foo_long
	movq	%rax, %rcx
	movq	%rdx, %rbx
	movq	%rcx, %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	ret
baz_long:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$8, %rsp
	movq	%rdi, -16(%rbp)
	movl	$5, %edi
	call	foo_long
	movq	%rax, %rcx
	movq	%rdx, %rbx
	movq	%rbx, %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	ret
foo_llong:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -36(%rbp)
	movl	-36(%rbp), %eax
	addl	$1, %eax
	cltq
	movq	%rax, -8(%rbp)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, -32(%rbp)
	movq	%rax, -24(%rbp)
	movl	-36(%rbp), %eax
	subl	$1, %eax
	cltq
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, -32(%rbp)
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rcx
	movq	%rsi, %rax
	movq	%rcx, %rdx
	popq	%rbp
	ret
bar_llong:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$8, %rsp
	movq	%rdi, -16(%rbp)
	movl	$5, %edi
	call	foo_llong
	movq	%rax, %rcx
	movq	%rdx, %rbx
	movq	%rcx, %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	ret
baz_llong:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$8, %rsp
	movq	%rdi, -16(%rbp)
	movl	$5, %edi
	call	foo_llong
	movq	%rax, %rcx
	movq	%rdx, %rbx
	movq	%rbx, %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movl	LC1(%rip), %eax
	movl	%eax, -4(%rbp)
	leaq	-4(%rbp), %rax
	movq	%rax, %rdi
	call	bar_float
	movl	-4(%rbp), %eax
	vmovd	%eax, %xmm0
	vucomiss	LC2(%rip), %xmm0
	jp	L95
	vmovd	%eax, %xmm1
	vucomiss	LC2(%rip), %xmm1
	je	L101
L95:
	call	abort
L101:
	movl	LC1(%rip), %eax
	movl	%eax, -4(%rbp)
	leaq	-4(%rbp), %rax
	movq	%rax, %rdi
	call	baz_float
	movl	-4(%rbp), %eax
	vmovd	%eax, %xmm2
	vucomiss	LC3(%rip), %xmm2
	jp	L96
	vmovd	%eax, %xmm3
	vucomiss	LC3(%rip), %xmm3
	je	L102
L96:
	call	abort
L102:
	movl	$0, %eax
	movq	%rax, -16(%rbp)
	leaq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	bar_double
	movq	-16(%rbp), %rax
	vmovq	%rax, %xmm4
	vucomisd	LC5(%rip), %xmm4
	jp	L97
	vmovq	%rax, %xmm5
	vucomisd	LC5(%rip), %xmm5
	je	L103
L97:
	call	abort
L103:
	movl	$0, %eax
	movq	%rax, -16(%rbp)
	leaq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	baz_double
	movq	-16(%rbp), %rax
	vmovq	%rax, %xmm6
	vucomisd	LC6(%rip), %xmm6
	jp	L98
	vmovq	%rax, %xmm7
	vucomisd	LC6(%rip), %xmm7
	je	L104
L98:
	call	abort
L104:
	movl	$0, %eax
	movl	$0, %edx
	movq	%rax, -32(%rbp)
	movl	%edx, -24(%rbp)
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	bar_ldouble_t
	fldt	-32(%rbp)
	fldt	LC8(%rip)
	fucomip	%st(1), %st
	jp	L107
	fldt	LC8(%rip)
	fucomip	%st(1), %st
	fstp	%st(0)
	je	L105
	jmp	L99
L107:
	fstp	%st(0)
L99:
	call	abort
L105:
	movl	$0, %eax
	movl	$0, %edx
	movq	%rax, -32(%rbp)
	movl	%edx, -24(%rbp)
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	baz_ldouble_t
	fldt	-32(%rbp)
	fldt	LC9(%rip)
	fucomip	%st(1), %st
	jp	L108
	fldt	LC9(%rip)
	fucomip	%st(1), %st
	fstp	%st(0)
	je	L106
	jmp	L100
L108:
	fstp	%st(0)
L100:
	call	abort
L106:
	movb	$0, -33(%rbp)
	leaq	-33(%rbp), %rax
	movq	%rax, %rdi
	call	bar_char
	movzbl	-33(%rbp), %eax
	cmpb	$6, %al
	je	L84
	call	abort
L84:
	movb	$0, -33(%rbp)
	leaq	-33(%rbp), %rax
	movq	%rax, %rdi
	call	baz_char
	movzbl	-33(%rbp), %eax
	cmpb	$4, %al
	je	L85
	call	abort
L85:
	movw	$0, -36(%rbp)
	leaq	-36(%rbp), %rax
	movq	%rax, %rdi
	call	bar_short
	movzwl	-36(%rbp), %eax
	cmpw	$6, %ax
	je	L86
	call	abort
L86:
	movw	$0, -36(%rbp)
	leaq	-36(%rbp), %rax
	movq	%rax, %rdi
	call	baz_short
	movzwl	-36(%rbp), %eax
	cmpw	$4, %ax
	je	L87
	call	abort
L87:
	movl	$0, -40(%rbp)
	leaq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	bar_int
	movl	-40(%rbp), %eax
	cmpl	$6, %eax
	je	L88
	call	abort
L88:
	movl	$0, -40(%rbp)
	leaq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	baz_int
	movl	-40(%rbp), %eax
	cmpl	$4, %eax
	je	L89
	call	abort
L89:
	movq	$0, -48(%rbp)
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	bar_long
	movq	-48(%rbp), %rax
	cmpq	$6, %rax
	je	L90
	call	abort
L90:
	movq	$0, -48(%rbp)
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	baz_long
	movq	-48(%rbp), %rax
	cmpq	$4, %rax
	je	L91
	call	abort
L91:
	movq	$0, -56(%rbp)
	leaq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	bar_llong
	movq	-56(%rbp), %rax
	cmpq	$6, %rax
	je	L92
	call	abort
L92:
	movq	$0, -56(%rbp)
	leaq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	baz_llong
	movq	-56(%rbp), %rax
	cmpq	$4, %rax
	je	L93
	call	abort
L93:
	movl	$0, %eax
	leave
	ret
LC0:
	.long	2143289344
LC1:
	.long	0
LC2:
	.long	1086324736
LC3:
	.long	1082130432
LC5:
	.long	0
	.long	1075314688
LC6:
	.long	0
	.long	1074790400
LC8:
	.long	0
	.long	3221225472
	.long	16385
	.long	0
LC9:
	.long	0
	.long	2147483648
	.long	16385
	.long	0

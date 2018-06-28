	.file	"apk_decompiler.c"
	.def	__main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
	.align 8
.LC0:
	.ascii "You forgot to type your apk file name, please correct it.\0"
.LC1:
	.ascii "CLS\0"
	.align 8
.LC2:
	.ascii "d2j-dex2jar --force winrar-apk\\classes.dex\0"
	.align 8
.LC3:
	.ascii "WinRAR x -y classes-dex2jar.jar apk\\class\\\0"
	.align 8
.LC4:
	.ascii "xcopy /y apk\\apktool.yml apk\\other\\\0"
	.align 8
.LC5:
	.ascii "xcopy /y classes-dex2jar.jar apk\\other\\\0"
.LC6:
	.ascii "del apk\\apktool.yml\0"
.LC7:
	.ascii "del classes-dex2jar.jar\0"
.LC8:
	.ascii "rmdir /s /q winrar-apk\0"
.LC9:
	.ascii "rmdir /s /q apk\0"
	.text
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rbx
	.seh_pushreg	%rbx
	movl	$9792, %eax
	call	___chkstk_ms
	subq	%rax, %rsp
	.seh_stackalloc	9792
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movl	%ecx, 9696(%rbp)
	movq	%rdx, 9704(%rbp)
	call	__main
	movabsq	$2336364831183695969, %rbx
	movq	%rbx, 5616(%rbp)
	movq	$572548713, 5624(%rbp)
	leaq	5632(%rbp), %rax
	movl	$984, %edx
	movq	%rdx, %r8
	movl	$0, %edx
	movq	%rax, %rcx
	call	memset
	movq	$34, 5504(%rbp)
	leaq	5512(%rbp), %rdx
	movl	$0, %eax
	movl	$11, %ecx
	movq	%rdx, %rdi
	rep stosq
	movq	%rdi, %rdx
	movl	%eax, (%rdx)
	addq	$4, %rdx
	movq	%rbx, 4496(%rbp)
	movq	$2236516, 4504(%rbp)
	leaq	4512(%rbp), %rax
	movl	$984, %edx
	movq	%rdx, %r8
	movl	$0, %edx
	movq	%rax, %rcx
	call	memset
	movabsq	$101616516669474, %rax
	movq	%rax, 4384(%rbp)
	leaq	4392(%rbp), %rdx
	movl	$0, %eax
	movl	$11, %ecx
	movq	%rdx, %rdi
	rep stosq
	movq	%rdi, %rdx
	movl	%eax, (%rdx)
	addq	$4, %rdx
	movabsq	$8656008924315412823, %rax
	movq	%rax, 3376(%rbp)
	movabsq	$146573700384, %rax
	movq	%rax, 3384(%rbp)
	leaq	3392(%rbp), %rax
	movl	$984, %edx
	movq	%rdx, %r8
	movl	$0, %edx
	movq	%rax, %rcx
	call	memset
	movabsq	$8241994611606102050, %rax
	movq	%rax, 3264(%rbp)
	movabsq	$396939518253, %rax
	movq	%rax, 3272(%rbp)
	leaq	3280(%rbp), %rdx
	movl	$0, %eax
	movl	$10, %ecx
	movq	%rdx, %rdi
	rep stosq
	movq	%rdi, %rdx
	movl	%eax, (%rdx)
	addq	$4, %rdx
	movabsq	$9605824974711661, %rax
	movq	%rax, 2256(%rbp)
	leaq	2264(%rbp), %rax
	movl	$992, %edx
	movq	%rdx, %r8
	movl	$0, %edx
	movq	%rax, %rcx
	call	memset
	movabsq	$147697333037, %rax
	movq	%rax, 2144(%rbp)
	leaq	2152(%rbp), %rdx
	movl	$0, %eax
	movl	$11, %ecx
	movq	%rdx, %rdi
	rep stosq
	movq	%rdi, %rdx
	movl	%eax, (%rdx)
	addq	$4, %rdx
	movabsq	$8732233908444160888, %rbx
	movq	%rbx, 1136(%rbp)
	movabsq	$2336084394177277728, %rax
	movq	%rax, 1144(%rbp)
	movq	$34, 1152(%rbp)
	leaq	1160(%rbp), %rax
	movl	$976, %edx
	movq	%rdx, %r8
	movl	$0, %edx
	movq	%rax, %rcx
	call	memset
	movabsq	$37780200780589, %rax
	movq	%rax, 1024(%rbp)
	leaq	1032(%rbp), %rdx
	movl	$0, %eax
	movl	$11, %ecx
	movq	%rdx, %rdi
	rep stosq
	movq	%rdi, %rdx
	movl	%eax, (%rdx)
	addq	$4, %rdx
	movq	%rbx, 16(%rbp)
	movq	$8736, 24(%rbp)
	leaq	32(%rbp), %rax
	movl	$984, %edx
	movq	%rdx, %r8
	movl	$0, %edx
	movq	%rax, %rcx
	call	memset
	movabsq	$8390026247331192866, %rax
	movq	%rax, -96(%rbp)
	movq	$1551000936, -88(%rbp)
	leaq	-80(%rbp), %rdx
	movl	$0, %eax
	movl	$10, %ecx
	movq	%rdx, %rdi
	rep stosq
	movq	%rdi, %rdx
	movl	%eax, (%rdx)
	addq	$4, %rdx
	cmpl	$2, 9696(%rbp)
	je	.L2
	leaq	.LC0(%rip), %rcx
	call	printf
	movl	$0, %ecx
	call	exit
.L2:
	movl	$0, 9660(%rbp)
	jmp	.L3
.L5:
	movq	9704(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rdx
	movl	9660(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$92, %al
	jne	.L4
	movl	9660(%rbp), %eax
	cltq
	movb	$92, 8640(%rbp,%rax)
	addl	$1, 9660(%rbp)
.L4:
	movq	9704(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rdx
	movl	9660(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %edx
	movl	9660(%rbp), %eax
	cltq
	movb	%dl, 8640(%rbp,%rax)
	addl	$1, 9660(%rbp)
.L3:
	movq	9704(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rdx
	movl	9660(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L5
	movl	9660(%rbp), %eax
	cltq
	movb	$0, 8640(%rbp,%rax)
	movl	$0, 9660(%rbp)
	jmp	.L6
.L7:
	movl	9660(%rbp), %eax
	cltq
	movzbl	8640(%rbp,%rax), %edx
	movl	9660(%rbp), %eax
	cltq
	movb	%dl, 7632(%rbp,%rax)
	addl	$1, 9660(%rbp)
.L6:
	movl	9660(%rbp), %eax
	movslq	%eax, %rbx
	leaq	8640(%rbp), %rax
	movq	%rax, %rcx
	call	strlen
	subq	$4, %rax
	cmpq	%rax, %rbx
	jb	.L7
	movl	9660(%rbp), %eax
	cltq
	movb	$0, 7632(%rbp,%rax)
	leaq	8640(%rbp), %rdx
	leaq	5616(%rbp), %rax
	movq	%rax, %rcx
	call	strcat
	leaq	5504(%rbp), %rdx
	leaq	5616(%rbp), %rax
	movq	%rax, %rcx
	call	strcat
	leaq	8640(%rbp), %rdx
	leaq	4496(%rbp), %rax
	movq	%rax, %rcx
	call	strcat
	leaq	4384(%rbp), %rdx
	leaq	4496(%rbp), %rax
	movq	%rax, %rcx
	call	strcat
	leaq	8640(%rbp), %rdx
	leaq	3376(%rbp), %rax
	movq	%rax, %rcx
	call	strcat
	leaq	3264(%rbp), %rdx
	leaq	3376(%rbp), %rax
	movq	%rax, %rcx
	call	strcat
	movl	$0, 9660(%rbp)
	jmp	.L8
.L10:
	movl	9660(%rbp), %eax
	cltq
	movzbl	7632(%rbp,%rax), %eax
	cmpb	$92, %al
	jne	.L9
	movl	9660(%rbp), %eax
	movl	%eax, 9652(%rbp)
.L9:
	addl	$1, 9660(%rbp)
.L8:
	movl	9660(%rbp), %eax
	cltq
	movzbl	7632(%rbp,%rax), %eax
	testb	%al, %al
	jne	.L10
	movl	9652(%rbp), %eax
	addl	$1, %eax
	movl	%eax, 9660(%rbp)
	movl	$0, 9656(%rbp)
	jmp	.L11
.L12:
	movl	9660(%rbp), %eax
	cltq
	movzbl	7632(%rbp,%rax), %edx
	movl	9656(%rbp), %eax
	cltq
	movb	%dl, 6624(%rbp,%rax)
	addl	$1, 9660(%rbp)
	addl	$1, 9656(%rbp)
.L11:
	movl	9660(%rbp), %eax
	cltq
	movzbl	7632(%rbp,%rax), %eax
	testb	%al, %al
	jne	.L12
	movl	9656(%rbp), %eax
	cltq
	movb	$0, 6624(%rbp,%rax)
	leaq	6624(%rbp), %rdx
	leaq	2256(%rbp), %rax
	movq	%rax, %rcx
	call	strcat
	leaq	2144(%rbp), %rdx
	leaq	2256(%rbp), %rax
	movq	%rax, %rcx
	call	strcat
	leaq	6624(%rbp), %rdx
	leaq	1136(%rbp), %rax
	movq	%rax, %rcx
	call	strcat
	leaq	1024(%rbp), %rdx
	leaq	1136(%rbp), %rax
	movq	%rax, %rcx
	call	strcat
	leaq	8640(%rbp), %rdx
	leaq	16(%rbp), %rax
	movq	%rax, %rcx
	call	strcat
	leaq	-96(%rbp), %rdx
	leaq	16(%rbp), %rax
	movq	%rax, %rcx
	call	strcat
	leaq	.LC1(%rip), %rcx
	call	system
	leaq	5616(%rbp), %rax
	movq	%rax, %rcx
	call	system
	leaq	4496(%rbp), %rax
	movq	%rax, %rcx
	call	system
	leaq	3376(%rbp), %rax
	movq	%rax, %rcx
	call	system
	leaq	.LC2(%rip), %rcx
	call	system
	leaq	.LC3(%rip), %rcx
	call	system
	leaq	.LC4(%rip), %rcx
	call	system
	leaq	.LC5(%rip), %rcx
	call	system
	leaq	16(%rbp), %rax
	movq	%rax, %rcx
	call	system
	leaq	.LC6(%rip), %rcx
	call	system
	leaq	.LC7(%rip), %rcx
	call	system
	leaq	.LC8(%rip), %rcx
	call	system
	leaq	2256(%rbp), %rax
	movq	%rax, %rcx
	call	system
	leaq	1136(%rbp), %rax
	movq	%rax, %rcx
	call	system
	leaq	.LC9(%rip), %rcx
	call	system
	nop
	addq	$9792, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rbp
	ret
	.seh_endproc
	.ident	"GCC: (x86_64-win32-seh-rev0, Built by MinGW-W64 project) 7.2.0"
	.def	memset;	.scl	2;	.type	32;	.endef
	.def	printf;	.scl	2;	.type	32;	.endef
	.def	exit;	.scl	2;	.type	32;	.endef
	.def	strlen;	.scl	2;	.type	32;	.endef
	.def	strcat;	.scl	2;	.type	32;	.endef
	.def	system;	.scl	2;	.type	32;	.endef

	.file	"codes.c"
	.comm	_tmp, 4, 2
	.text
	.globl	_just_init
	.def	_just_init;	.scl	2;	.type	32;	.endef
_just_init:
LFB0:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$16, %esp
	movb	$4, -1(%ebp)
L2:
	movzbl	-1(%ebp), %eax
	subl	$1, %eax
	movb	%al, -1(%ebp)
	movzbl	-1(%ebp), %eax
	movb	$0, _tmp(%eax)
	cmpb	$0, -1(%ebp)
	jne	L2
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE0:
	.globl	_summ
	.def	_summ;	.scl	2;	.type	32;	.endef
_summ:
LFB1:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	8(%ebp), %edx
	movl	12(%ebp), %eax
	movb	%dl, -20(%ebp)
	movb	%al, -24(%ebp)
L5:
	movzbl	-20(%ebp), %eax
	andb	-24(%ebp), %al
	addl	%eax, %eax
	movb	%al, -1(%ebp)
	movzbl	-20(%ebp), %eax
	xorb	-24(%ebp), %al
	movb	%al, -2(%ebp)
	cmpb	$0, -1(%ebp)
	je	L4
	movzbl	-1(%ebp), %eax
	movb	%al, -20(%ebp)
	movzbl	-2(%ebp), %eax
	movb	%al, -24(%ebp)
	jmp	L5
L4:
	movzbl	-2(%ebp), %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE1:
	.globl	_diff
	.def	_diff;	.scl	2;	.type	32;	.endef
_diff:
LFB2:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$16, %esp
	movl	8(%ebp), %edx
	movl	12(%ebp), %eax
	movb	%dl, -4(%ebp)
	movb	%al, -8(%ebp)
	notb	-8(%ebp)
	movzbl	-8(%ebp), %eax
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	_summ
	movb	%al, -8(%ebp)
	movzbl	-8(%ebp), %edx
	movzbl	-4(%ebp), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_summ
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE2:
	.def	___main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
LC0:
	.ascii "%d\11%d\12\0"
	.text
	.globl	_main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
LFB13:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	andl	$-16, %esp
	subl	$32, %esp
	call	___main
	movb	$-1, 31(%esp)
	movb	$3, 30(%esp)
	movzbl	30(%esp), %edx
	movzbl	31(%esp), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_summ
	movzbl	%al, %edx
	movzbl	31(%esp), %ecx
	movzbl	30(%esp), %eax
	addl	%ecx, %eax
	movzbl	%al, %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$LC0, (%esp)
	call	_printf
	movl	$0, %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE13:
	.ident	"GCC: (MinGW.org GCC-6.3.0-1) 6.3.0"
	.def	_printf;	.scl	2;	.type	32;	.endef

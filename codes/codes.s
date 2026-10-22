	.file	"codes.c"
	.comm	_tmp, 6, 2
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
	movb	$6, -1(%ebp)
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
	.globl	_neg
	.def	_neg;	.scl	2;	.type	32;	.endef
_neg:
LFB2:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$12, %esp
	movl	8(%ebp), %eax
	movb	%al, -4(%ebp)
	notb	-4(%ebp)
	movzbl	-4(%ebp), %eax
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	_summ
	movb	%al, -4(%ebp)
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE2:
	.globl	_diff
	.def	_diff;	.scl	2;	.type	32;	.endef
_diff:
LFB3:
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
	movzbl	-4(%ebp), %eax
	movl	%eax, (%esp)
	call	_neg
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
LFE3:
	.globl	_setA1
	.def	_setA1;	.scl	2;	.type	32;	.endef
_setA1:
LFB4:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	movzbl	_tmp, %eax
	movzbl	%al, %eax
	addl	%eax, %eax
	orl	$1, %eax
	movb	%al, _tmp
	nop
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE4:
	.globl	_setA0
	.def	_setA0;	.scl	2;	.type	32;	.endef
_setA0:
LFB5:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	movzbl	_tmp, %eax
	addl	%eax, %eax
	movb	%al, _tmp
	nop
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE5:
	.globl	_setB1
	.def	_setB1;	.scl	2;	.type	32;	.endef
_setB1:
LFB6:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	movzbl	_tmp+1, %eax
	movzbl	%al, %eax
	addl	%eax, %eax
	orl	$1, %eax
	movb	%al, _tmp+1
	nop
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE6:
	.globl	_setB0
	.def	_setB0;	.scl	2;	.type	32;	.endef
_setB0:
LFB7:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	movzbl	_tmp+1, %eax
	addl	%eax, %eax
	movb	%al, _tmp+1
	nop
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE7:
	.globl	_input
	.def	_input;	.scl	2;	.type	32;	.endef
_input:
LFB8:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$8, %esp
	call	_just_init
	call	_inputA
	call	_inputB
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE8:
	.globl	_output
	.def	_output;	.scl	2;	.type	32;	.endef
_output:
LFB9:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	8(%ebp), %eax
	movb	%al, -12(%ebp)
	movzbl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_invert
	movb	%al, -12(%ebp)
L18:
	movzbl	-12(%ebp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	L16
	call	_output1
	jmp	L17
L16:
	call	_output0
L17:
	shrb	-12(%ebp)
	cmpb	$0, -12(%ebp)
	jne	L18
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE9:
	.globl	_do_work
	.def	_do_work;	.scl	2;	.type	32;	.endef
_do_work:
LFB10:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movzbl	_tmp+1, %eax
	movzbl	%al, %edx
	movzbl	_tmp, %eax
	movzbl	%al, %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_summ
	movzbl	%al, %eax
	movl	%eax, -12(%ebp)
	call	_prepair
	movl	-12(%ebp), %eax
	movzbl	%al, %eax
	movl	%eax, (%esp)
	call	_output
	call	_set_summ
	movzbl	_tmp+1, %eax
	movzbl	%al, %edx
	movzbl	_tmp, %eax
	movzbl	%al, %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_diff
	movzbl	%al, %eax
	movl	%eax, -12(%ebp)
	call	_prepair
	movl	-12(%ebp), %eax
	movzbl	%al, %eax
	movl	%eax, (%esp)
	call	_output
	call	_set_summ
	movzbl	_tmp, %eax
	movzbl	%al, %eax
	movl	%eax, (%esp)
	call	_neg
	movzbl	%al, %eax
	movl	%eax, -12(%ebp)
	call	_prepair
	movl	-12(%ebp), %eax
	movzbl	%al, %eax
	movl	%eax, (%esp)
	call	_output
	call	_set_neg
	movzbl	_tmp, %eax
	movzbl	%al, %eax
	movl	%eax, (%esp)
	call	_invert
	movzbl	%al, %eax
	movl	%eax, -12(%ebp)
	call	_prepair
	movl	-12(%ebp), %eax
	movzbl	%al, %eax
	movl	%eax, (%esp)
	call	_output
	call	_set_inv
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE10:
	.def	___main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
LC0:
	.ascii "%d\11%d\12\0"
	.text
	.globl	_main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
LFB21:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	andl	$-16, %esp
	subl	$32, %esp
	call	___main
	movb	$21, 31(%esp)
	movb	$3, 30(%esp)
	movzbl	31(%esp), %eax
	movl	%eax, (%esp)
	call	_invert
	movb	%al, 30(%esp)
	movl	$8, 24(%esp)
L23:
	subl	$1, 24(%esp)
	movzbl	30(%esp), %eax
	andl	$1, %eax
	movl	%eax, %edx
	movzbl	31(%esp), %eax
	andl	$1, %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$LC0, (%esp)
	call	_printf
	shrb	31(%esp)
	shrb	30(%esp)
	cmpl	$0, 24(%esp)
	jne	L23
	movl	$0, %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE21:
	.globl	_invert
	.def	_invert;	.scl	2;	.type	32;	.endef
_invert:
LFB22:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$4, %esp
	movl	8(%ebp), %eax
	movb	%al, -4(%ebp)
	movzbl	-4(%ebp), %eax
	sall	$4, %eax
	movl	%eax, %edx
	movzbl	-4(%ebp), %eax
	shrb	$4, %al
	orl	%edx, %eax
	movb	%al, -4(%ebp)
	movzbl	-4(%ebp), %eax
	sall	$2, %eax
	andl	$-52, %eax
	movl	%eax, %edx
	movzbl	-4(%ebp), %eax
	sarl	$2, %eax
	andl	$51, %eax
	orl	%edx, %eax
	movb	%al, -4(%ebp)
	movzbl	-4(%ebp), %eax
	addl	%eax, %eax
	andl	$-86, %eax
	movl	%eax, %edx
	movzbl	-4(%ebp), %eax
	sarl	%eax
	andl	$85, %eax
	orl	%edx, %eax
	movb	%al, -4(%ebp)
	movzbl	-4(%ebp), %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE22:
	.ident	"GCC: (MinGW.org GCC-6.3.0-1) 6.3.0"
	.def	_inputA;	.scl	2;	.type	32;	.endef
	.def	_inputB;	.scl	2;	.type	32;	.endef
	.def	_output1;	.scl	2;	.type	32;	.endef
	.def	_output0;	.scl	2;	.type	32;	.endef
	.def	_prepair;	.scl	2;	.type	32;	.endef
	.def	_set_summ;	.scl	2;	.type	32;	.endef
	.def	_set_neg;	.scl	2;	.type	32;	.endef
	.def	_set_inv;	.scl	2;	.type	32;	.endef
	.def	_printf;	.scl	2;	.type	32;	.endef

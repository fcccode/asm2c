	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 11
	.globl	_program
	.align	4, 0x90
_program:                               ## @program
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp0:
	.cfi_def_cfa_offset 16
Ltmp1:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp2:
	.cfi_def_cfa_register %rbp
	subq	$272, %rsp              ## imm = 0x110
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	$0, -168(%rbp)
	movq	$0, -176(%rbp)
	testb	$1, _m+4231(%rip)
	je	LBB0_2
## BB#1:
	jmp	LBB0_39
LBB0_2:
	testb	$1, _m+4230(%rip)
	je	LBB0_4
## BB#3:
	xorl	%esi, %esi
	leaq	-160(%rbp), %rax
	movl	$148, %ecx
	movl	%ecx, %edx
	leaq	_m(%rip), %rdi
	addq	$5005, %rdi             ## imm = 0x138D
	movb	$0, _m+4230(%rip)
	movslq	_m+5001(%rip), %r8
	subq	$148, %r8
	movl	%r8d, %ecx
	movl	%ecx, _m+5001(%rip)
	movq	%rax, %r8
	movslq	_m+5001(%rip), %r9
	shlq	$2, %r9
	addq	%r9, %rdi
	movq	%rdi, -184(%rbp)        ## 8-byte Spill
	movq	%r8, %rdi
	movq	-184(%rbp), %r8         ## 8-byte Reload
	movl	%esi, -188(%rbp)        ## 4-byte Spill
	movq	%r8, %rsi
	movq	%rax, -200(%rbp)        ## 8-byte Spill
	callq	_memcpy
	movq	-200(%rbp), %rdi        ## 8-byte Reload
	movl	-188(%rbp), %esi        ## 4-byte Reload
	callq	_longjmp
LBB0_4:
	leaq	-160(%rbp), %rdi
	movl	$0, _m+4186(%rip)
	movl	$85, _m+4182(%rip)
	movl	_m+4182(%rip), %eax
	subl	_m+4186(%rip), %eax
	movl	%eax, _m+4182(%rip)
	cmpl	$0, _m+4182(%rip)
	sete	%cl
	andb	$1, %cl
	movb	%cl, _m+4227(%rip)
	movl	_m+4186(%rip), %eax
	cmpl	_m+4182(%rip), %eax
	setb	%cl
	andb	$1, %cl
	movb	%cl, _m+4226(%rip)
	movl	_m+4182(%rip), %eax
	shrl	$31, %eax
	cmpl	$0, %eax
	setne	%cl
	andb	$1, %cl
	movb	%cl, _m+4229(%rip)
	movl	_m+4182(%rip), %eax
	addl	$1, %eax
	movl	%eax, _m+4182(%rip)
	cmpl	$0, _m+4182(%rip)
	sete	%cl
	andb	$1, %cl
	movb	%cl, _m+4227(%rip)
	callq	_setjmp
	cmpl	$0, %eax
	jne	LBB0_6
## BB#5:
	movl	$148, %eax
	movl	%eax, %edx
	movq	$-1, %rcx
	leaq	-160(%rbp), %rsi
	leaq	_m(%rip), %rdi
	addq	$5005, %rdi             ## imm = 0x138D
	movslq	_m+5001(%rip), %r8
	shlq	$2, %r8
	addq	%r8, %rdi
	callq	___memcpy_chk
	movslq	_m+5001(%rip), %rcx
	addq	$148, %rcx
	movl	%ecx, %r9d
	movl	%r9d, _m+5001(%rip)
	movq	%rax, -208(%rbp)        ## 8-byte Spill
	jmp	LBB0_27
LBB0_6:
	leaq	_m(%rip), %rax
	movzwl	_m+4216(%rip), %ecx
	movl	%ecx, %edx
	movl	21393(%rax,%rdx,4), %ecx
	movl	%ecx, %edx
	movzbl	85(%rax,%rdx), %ecx
	subl	$100, %ecx
	cmpl	$0, %ecx
	sete	%sil
	andb	$1, %sil
	movb	%sil, _m+4227(%rip)
	movzwl	_m+4216(%rip), %ecx
	movl	%ecx, %edx
	movl	21393(%rax,%rdx,4), %ecx
	movl	%ecx, %edx
	movzbl	85(%rax,%rdx), %ecx
	cmpl	$100, %ecx
	setl	%sil
	andb	$1, %sil
	movb	%sil, _m+4226(%rip)
	movzwl	_m+4216(%rip), %ecx
	movl	%ecx, %edx
	movl	21393(%rax,%rdx,4), %ecx
	movl	%ecx, %edx
	movzbl	85(%rax,%rdx), %ecx
	subl	$100, %ecx
	sarl	$7, %ecx
	cmpl	$0, %ecx
	setne	%sil
	andb	$1, %sil
	movb	%sil, _m+4229(%rip)
	movl	$-13, _m+4182(%rip)
	movl	_m+4182(%rip), %ecx
	subl	$-13, %ecx
	cmpl	$0, %ecx
	sete	%sil
	andb	$1, %sil
	movb	%sil, _m+4227(%rip)
	cmpl	$-13, _m+4182(%rip)
	setb	%sil
	andb	$1, %sil
	movb	%sil, _m+4226(%rip)
	movl	_m+4182(%rip), %ecx
	subl	$-13, %ecx
	shrl	$31, %ecx
	cmpl	$0, %ecx
	setne	%sil
	andb	$1, %sil
	movb	%sil, _m+4229(%rip)
	testb	$1, _m+4227(%rip)
	jne	LBB0_8
## BB#7:
	jmp	LBB0_21
LBB0_8:
	leaq	_m(%rip), %rax
	movzwl	_m+4216(%rip), %ecx
	movl	%ecx, %edx
	movl	21393(%rax,%rdx,4), %ecx
	movl	%ecx, %edx
	movl	4(%rax,%rdx), %ecx
	subl	$-13, %ecx
	cmpl	$0, %ecx
	sete	%sil
	andb	$1, %sil
	movb	%sil, _m+4227(%rip)
	movzwl	_m+4216(%rip), %ecx
	movl	%ecx, %edx
	movl	21393(%rax,%rdx,4), %ecx
	movl	%ecx, %edx
	cmpl	$-13, 4(%rax,%rdx)
	setb	%sil
	andb	$1, %sil
	movb	%sil, _m+4226(%rip)
	movzwl	_m+4216(%rip), %ecx
	movl	%ecx, %edx
	movl	21393(%rax,%rdx,4), %ecx
	movl	%ecx, %edx
	movl	4(%rax,%rdx), %ecx
	subl	$-13, %ecx
	shrl	$31, %ecx
	cmpl	$0, %ecx
	setne	%sil
	andb	$1, %sil
	movb	%sil, _m+4229(%rip)
	testb	$1, _m+4227(%rip)
	jne	LBB0_10
## BB#9:
	jmp	LBB0_21
LBB0_10:
	leaq	_m(%rip), %rax
	movzwl	_m+4216(%rip), %ecx
	movl	%ecx, %edx
	movl	21393(%rax,%rdx,4), %ecx
	movl	%ecx, %edx
	movl	4(%rax,%rdx), %ecx
	addl	$1, %ecx
	movzwl	_m+4216(%rip), %esi
	movl	%esi, %edx
	movl	21393(%rax,%rdx,4), %esi
	movl	%esi, %edx
	movl	%ecx, 4(%rax,%rdx)
	movzwl	_m+4216(%rip), %ecx
	movl	%ecx, %edx
	movl	21393(%rax,%rdx,4), %ecx
	movl	%ecx, %edx
	cmpl	$0, 4(%rax,%rdx)
	sete	%dil
	andb	$1, %dil
	movb	%dil, _m+4227(%rip)
	movzwl	_m+4216(%rip), %ecx
	movl	%ecx, %edx
	movl	21393(%rax,%rdx,4), %ecx
	movl	%ecx, %edx
	movl	4(%rax,%rdx), %ecx
	subl	$-12, %ecx
	cmpl	$0, %ecx
	sete	%dil
	andb	$1, %dil
	movb	%dil, _m+4227(%rip)
	movzwl	_m+4216(%rip), %ecx
	movl	%ecx, %edx
	movl	21393(%rax,%rdx,4), %ecx
	movl	%ecx, %edx
	cmpl	$-12, 4(%rax,%rdx)
	setb	%dil
	andb	$1, %dil
	movb	%dil, _m+4226(%rip)
	movzwl	_m+4216(%rip), %ecx
	movl	%ecx, %edx
	movl	21393(%rax,%rdx,4), %ecx
	movl	%ecx, %edx
	movl	4(%rax,%rdx), %ecx
	subl	$-12, %ecx
	shrl	$31, %ecx
	cmpl	$0, %ecx
	setne	%dil
	andb	$1, %dil
	movb	%dil, _m+4229(%rip)
	testb	$1, _m+4227(%rip)
	jne	LBB0_12
## BB#11:
	jmp	LBB0_21
LBB0_12:
	leaq	_m(%rip), %rax
	movzwl	_m+4216(%rip), %ecx
	movl	%ecx, %edx
	movl	21393(%rax,%rdx,4), %ecx
	movl	%ecx, %edx
	movb	1(%rax,%rdx), %sil
	movb	%sil, -209(%rbp)        ## 1-byte Spill
	callq	_is_little_endian
	leaq	_m(%rip), %rdx
	movl	$3, %ecx
	xorl	%edi, %edi
	movzbl	%al, %r8d
	cmpl	$0, %r8d
	cmovnel	%edi, %ecx
	movslq	%ecx, %r9
	movb	-209(%rbp), %al         ## 1-byte Reload
	movb	%al, 4194(%rdx,%r9)
	callq	_is_little_endian
	leaq	_m(%rip), %rdx
	movl	$3, %ecx
	xorl	%edi, %edi
	movzbl	%al, %r8d
	cmpl	$0, %r8d
	cmovnel	%edi, %ecx
	movslq	%ecx, %r9
	movzbl	4194(%rdx,%r9), %ecx
	subl	$2, %ecx
	cmpl	$0, %ecx
	sete	%al
	andb	$1, %al
	movb	%al, _m+4227(%rip)
	callq	_is_little_endian
	leaq	_m(%rip), %rdx
	movl	$3, %ecx
	xorl	%edi, %edi
	movzbl	%al, %r8d
	cmpl	$0, %r8d
	cmovnel	%edi, %ecx
	movslq	%ecx, %r9
	movzbl	4194(%rdx,%r9), %ecx
	cmpl	$2, %ecx
	setl	%al
	andb	$1, %al
	movb	%al, _m+4226(%rip)
	callq	_is_little_endian
	leaq	_m(%rip), %rdx
	movl	$3, %ecx
	xorl	%edi, %edi
	movzbl	%al, %r8d
	cmpl	$0, %r8d
	cmovnel	%edi, %ecx
	movslq	%ecx, %r9
	movzbl	4194(%rdx,%r9), %ecx
	subl	$2, %ecx
	sarl	$7, %ecx
	cmpl	$0, %ecx
	setne	%al
	andb	$1, %al
	movb	%al, _m+4229(%rip)
	testb	$1, _m+4227(%rip)
	jne	LBB0_14
## BB#13:
	jmp	LBB0_21
LBB0_14:
	leaq	_m(%rip), %rax
	movl	$1, _m+4202(%rip)
	movl	$2, _m+4198(%rip)
	movl	_m+4202(%rip), %ecx
	movl	%ecx, %edx
	movq	%rax, %rsi
	addq	%rdx, %rsi
	movzwl	_m+4216(%rip), %ecx
	movl	%ecx, %edx
	movl	21393(%rax,%rdx,4), %ecx
	movl	%ecx, %eax
	movb	(%rsi,%rax), %dil
	movb	%dil, -210(%rbp)        ## 1-byte Spill
	callq	_is_little_endian
	leaq	_m(%rip), %rdx
	movl	$3, %ecx
	xorl	%r8d, %r8d
	movzbl	%al, %r9d
	cmpl	$0, %r9d
	cmovnel	%r8d, %ecx
	movslq	%ecx, %rsi
	movb	-210(%rbp), %al         ## 1-byte Reload
	movb	%al, 4194(%rdx,%rsi)
	callq	_is_little_endian
	leaq	_m(%rip), %rdx
	movl	$3, %ecx
	xorl	%r8d, %r8d
	movzbl	%al, %r9d
	cmpl	$0, %r9d
	cmovnel	%r8d, %ecx
	movslq	%ecx, %rsi
	movzbl	4194(%rdx,%rsi), %ecx
	subl	$2, %ecx
	cmpl	$0, %ecx
	sete	%al
	andb	$1, %al
	movb	%al, _m+4227(%rip)
	callq	_is_little_endian
	leaq	_m(%rip), %rdx
	movl	$3, %ecx
	xorl	%r8d, %r8d
	movzbl	%al, %r9d
	cmpl	$0, %r9d
	cmovnel	%r8d, %ecx
	movslq	%ecx, %rsi
	movzbl	4194(%rdx,%rsi), %ecx
	cmpl	$2, %ecx
	setl	%al
	andb	$1, %al
	movb	%al, _m+4226(%rip)
	callq	_is_little_endian
	leaq	_m(%rip), %rdx
	movl	$3, %ecx
	xorl	%r8d, %r8d
	movzbl	%al, %r9d
	cmpl	$0, %r9d
	cmovnel	%r8d, %ecx
	movslq	%ecx, %rsi
	movzbl	4194(%rdx,%rsi), %ecx
	subl	$2, %ecx
	sarl	$7, %ecx
	cmpl	$0, %ecx
	setne	%al
	andb	$1, %al
	movb	%al, _m+4229(%rip)
	testb	$1, _m+4227(%rip)
	jne	LBB0_16
## BB#15:
	jmp	LBB0_21
LBB0_16:
	leaq	_m(%rip), %rax
	movl	$1, _m+4202(%rip)
	movl	_m+4202(%rip), %ecx
	addl	$1, %ecx
	movl	%ecx, %ecx
	movl	%ecx, %edx
	movq	%rax, %rsi
	addq	%rdx, %rsi
	movzwl	_m+4216(%rip), %ecx
	movl	%ecx, %edx
	movl	21393(%rax,%rdx,4), %ecx
	movl	%ecx, %eax
	movw	(%rsi,%rax), %di
	movw	%di, -212(%rbp)         ## 2-byte Spill
	callq	_is_little_endian
	leaq	_m(%rip), %rdx
	movl	$2, %ecx
	xorl	%r8d, %r8d
	movzbl	%al, %r9d
	cmpl	$0, %r9d
	cmovnel	%r8d, %ecx
	movslq	%ecx, %rsi
	movw	-212(%rbp), %di         ## 2-byte Reload
	movw	%di, 4194(%rdx,%rsi)
	callq	_is_little_endian
	leaq	_m(%rip), %rdx
	movl	$2, %ecx
	xorl	%r8d, %r8d
	movzbl	%al, %r9d
	cmpl	$0, %r9d
	cmovnel	%r8d, %ecx
	movslq	%ecx, %rsi
	movzwl	4194(%rdx,%rsi), %ecx
	subl	$11, %ecx
	cmpl	$0, %ecx
	sete	%al
	andb	$1, %al
	movb	%al, _m+4227(%rip)
	callq	_is_little_endian
	leaq	_m(%rip), %rdx
	movl	$2, %ecx
	xorl	%r8d, %r8d
	movzbl	%al, %r9d
	cmpl	$0, %r9d
	cmovnel	%r8d, %ecx
	movslq	%ecx, %rsi
	movzwl	4194(%rdx,%rsi), %ecx
	cmpl	$11, %ecx
	setl	%al
	andb	$1, %al
	movb	%al, _m+4226(%rip)
	callq	_is_little_endian
	leaq	_m(%rip), %rdx
	movl	$2, %ecx
	xorl	%r8d, %r8d
	movzbl	%al, %r9d
	cmpl	$0, %r9d
	cmovnel	%r8d, %ecx
	movslq	%ecx, %rsi
	movzwl	4194(%rdx,%rsi), %ecx
	subl	$11, %ecx
	sarl	$15, %ecx
	cmpl	$0, %ecx
	setne	%al
	andb	$1, %al
	movb	%al, _m+4229(%rip)
	testb	$1, _m+4227(%rip)
	jne	LBB0_18
## BB#17:
	jmp	LBB0_21
LBB0_18:
	leaq	_m(%rip), %rax
	movl	_m+4202(%rip), %ecx
	addl	$7, %ecx
	movl	%ecx, %ecx
	movl	%ecx, %edx
	movq	%rax, %rsi
	addq	%rdx, %rsi
	movzwl	_m+4216(%rip), %ecx
	movl	%ecx, %edx
	movl	21393(%rax,%rdx,4), %ecx
	movl	%ecx, %edx
	movzbl	(%rsi,%rdx), %ecx
	addl	$1, %ecx
	movb	%cl, %dil
	movl	_m+4202(%rip), %ecx
	addl	$7, %ecx
	movl	%ecx, %ecx
	movl	%ecx, %edx
	movq	%rax, %rsi
	addq	%rdx, %rsi
	movzwl	_m+4216(%rip), %ecx
	movl	%ecx, %edx
	movl	21393(%rax,%rdx,4), %ecx
	movl	%ecx, %edx
	movb	%dil, (%rsi,%rdx)
	movl	_m+4202(%rip), %ecx
	addl	$7, %ecx
	movl	%ecx, %ecx
	movl	%ecx, %edx
	movq	%rax, %rsi
	addq	%rdx, %rsi
	movzwl	_m+4216(%rip), %ecx
	movl	%ecx, %edx
	movl	21393(%rax,%rdx,4), %ecx
	movl	%ecx, %edx
	movzbl	(%rsi,%rdx), %ecx
	cmpl	$0, %ecx
	sete	%dil
	andb	$1, %dil
	movb	%dil, _m+4227(%rip)
	movl	_m+4202(%rip), %ecx
	addl	$7, %ecx
	movl	%ecx, %ecx
	movl	%ecx, %edx
	movq	%rax, %rsi
	addq	%rdx, %rsi
	movzwl	_m+4216(%rip), %ecx
	movl	%ecx, %edx
	movl	21393(%rax,%rdx,4), %ecx
	movl	%ecx, %edx
	movzbl	(%rsi,%rdx), %ecx
	subl	$132, %ecx
	cmpl	$0, %ecx
	sete	%dil
	andb	$1, %dil
	movb	%dil, _m+4227(%rip)
	movl	_m+4202(%rip), %ecx
	addl	$7, %ecx
	movl	%ecx, %ecx
	movl	%ecx, %edx
	movq	%rax, %rsi
	addq	%rdx, %rsi
	movzwl	_m+4216(%rip), %ecx
	movl	%ecx, %edx
	movl	21393(%rax,%rdx,4), %ecx
	movl	%ecx, %edx
	movzbl	(%rsi,%rdx), %ecx
	cmpl	$132, %ecx
	setl	%dil
	andb	$1, %dil
	movb	%dil, _m+4226(%rip)
	movl	_m+4202(%rip), %ecx
	addl	$7, %ecx
	movl	%ecx, %ecx
	movl	%ecx, %edx
	movq	%rax, %rsi
	addq	%rdx, %rsi
	movzwl	_m+4216(%rip), %ecx
	movl	%ecx, %edx
	movl	21393(%rax,%rdx,4), %ecx
	movl	%ecx, %eax
	movzbl	(%rsi,%rax), %ecx
	subl	$132, %ecx
	sarl	$7, %ecx
	cmpl	$0, %ecx
	setne	%dil
	andb	$1, %dil
	movb	%dil, _m+4229(%rip)
	testb	$1, _m+4227(%rip)
	jne	LBB0_20
## BB#19:
	jmp	LBB0_21
LBB0_20:
	callq	_is_little_endian
	leaq	_m(%rip), %rcx
	movl	$3, %edx
	xorl	%esi, %esi
	movzbl	%al, %edi
	cmpl	$0, %edi
	cmovnel	%esi, %edx
	movslq	%edx, %r8
	movb	$0, 4182(%rcx,%r8)
	jmp	LBB0_22
LBB0_21:
	callq	_is_little_endian
	leaq	_m(%rip), %rcx
	movl	$3, %edx
	xorl	%esi, %esi
	movzbl	%al, %edi
	cmpl	$0, %edi
	cmovnel	%esi, %edx
	movslq	%edx, %r8
	movb	$1, 4182(%rcx,%r8)
LBB0_22:
	callq	_is_little_endian
	movl	$33, %edi
	leaq	_m(%rip), %rcx
	movl	$2, %edx
	movl	$1, %esi
	movzbl	%al, %r8d
	cmpl	$0, %r8d
	cmovnel	%esi, %edx
	movslq	%edx, %r9
	movb	$76, 4182(%rcx,%r9)
	callq	_asm2C_INT
	testb	$1, _m+4230(%rip)
	je	LBB0_26
## BB#23:
	leaq	-160(%rbp), %rdi
	callq	_setjmp
	cmpl	$0, %eax
	jne	LBB0_25
## BB#24:
	movl	$148, %eax
	movl	%eax, %edx
	movq	$-1, %rcx
	leaq	-160(%rbp), %rsi
	leaq	_m(%rip), %rdi
	addq	$5005, %rdi             ## imm = 0x138D
	movslq	_m+5001(%rip), %r8
	shlq	$2, %r8
	addq	%r8, %rdi
	callq	___memcpy_chk
	movslq	_m+5001(%rip), %rcx
	addq	$148, %rcx
	movl	%ecx, %r9d
	movl	%r9d, _m+5001(%rip)
	movq	%rax, -224(%rbp)        ## 8-byte Spill
	jmp	LBB0_39
LBB0_25:
	jmp	LBB0_26
LBB0_26:
	jmp	LBB0_27
LBB0_27:
	movl	$70, _m+4202(%rip)
	callq	_is_little_endian
	leaq	_m(%rip), %rcx
	movl	$3, %edx
	xorl	%esi, %esi
	movzbl	%al, %edi
	cmpl	$0, %edi
	cmovnel	%esi, %edx
	movslq	%edx, %r8
	movb	$8, 4190(%rcx,%r8)
LBB0_28:                                ## =>This Inner Loop Header: Depth=1
	movl	_m+4182(%rip), %eax
	shll	$4, %eax
	movl	_m+4182(%rip), %ecx
	shrl	$28, %ecx
	orl	%ecx, %eax
	movl	%eax, _m+4182(%rip)
	callq	_is_little_endian
	leaq	_m(%rip), %rdx
	movl	$3, %ecx
	xorl	%esi, %esi
	movzbl	%al, %edi
	cmpl	$0, %edi
	cmovnel	%esi, %ecx
	movslq	%ecx, %r8
	movb	4182(%rdx,%r8), %al
	movb	%al, -225(%rbp)         ## 1-byte Spill
	callq	_is_little_endian
	leaq	_m(%rip), %rdx
	movl	$3, %ecx
	xorl	%esi, %esi
	movzbl	%al, %edi
	cmpl	$0, %edi
	cmovnel	%esi, %ecx
	movslq	%ecx, %r8
	movb	-225(%rbp), %al         ## 1-byte Reload
	movb	%al, 4186(%rdx,%r8)
	callq	_is_little_endian
	leaq	_m(%rip), %rdx
	movl	$3, %ecx
	xorl	%esi, %esi
	movzbl	%al, %edi
	cmpl	$0, %edi
	cmovnel	%esi, %ecx
	movslq	%ecx, %r8
	movzbl	4186(%rdx,%r8), %ecx
	andl	$15, %ecx
	movb	%cl, %al
	movb	%al, -226(%rbp)         ## 1-byte Spill
	callq	_is_little_endian
	leaq	_m(%rip), %rdx
	movl	$3, %ecx
	xorl	%esi, %esi
	movzbl	%al, %edi
	cmpl	$0, %edi
	cmovnel	%esi, %ecx
	movslq	%ecx, %r8
	movb	-226(%rbp), %al         ## 1-byte Reload
	movb	%al, 4186(%rdx,%r8)
	callq	_is_little_endian
	leaq	_m(%rip), %rdx
	movl	$3, %ecx
	xorl	%esi, %esi
	movzbl	%al, %edi
	cmpl	$0, %edi
	cmovnel	%esi, %ecx
	movslq	%ecx, %r8
	movzbl	4186(%rdx,%r8), %ecx
	cmpl	$0, %ecx
	sete	%al
	andb	$1, %al
	movb	%al, _m+4227(%rip)
	callq	_is_little_endian
	leaq	_m(%rip), %rdx
	movl	$3, %ecx
	xorl	%esi, %esi
	movzbl	%al, %edi
	cmpl	$0, %edi
	cmovnel	%esi, %ecx
	movslq	%ecx, %r8
	movzbl	4186(%rdx,%r8), %ecx
	sarl	$7, %ecx
	cmpl	$0, %ecx
	setne	%al
	andb	$1, %al
	movb	%al, _m+4229(%rip)
	callq	_is_little_endian
	leaq	_m(%rip), %rdx
	movl	$3, %ecx
	xorl	%esi, %esi
	movzbl	%al, %edi
	cmpl	$0, %edi
	cmovnel	%esi, %ecx
	movslq	%ecx, %r8
	movzbl	4186(%rdx,%r8), %ecx
	addl	$48, %ecx
	movb	%cl, %al
	movb	%al, -227(%rbp)         ## 1-byte Spill
	callq	_is_little_endian
	leaq	_m(%rip), %rdx
	movl	$3, %ecx
	xorl	%esi, %esi
	movzbl	%al, %edi
	cmpl	$0, %edi
	cmovnel	%esi, %ecx
	movslq	%ecx, %r8
	movb	-227(%rbp), %al         ## 1-byte Reload
	movb	%al, 4186(%rdx,%r8)
	callq	_is_little_endian
	leaq	_m(%rip), %rdx
	movl	$3, %ecx
	xorl	%esi, %esi
	movzbl	%al, %edi
	cmpl	$0, %edi
	cmovnel	%esi, %ecx
	movslq	%ecx, %r8
	movzbl	4186(%rdx,%r8), %ecx
	cmpl	$0, %ecx
	sete	%al
	andb	$1, %al
	movb	%al, _m+4227(%rip)
	callq	_is_little_endian
	leaq	_m(%rip), %rdx
	movl	$3, %ecx
	xorl	%esi, %esi
	movzbl	%al, %edi
	cmpl	$0, %edi
	cmovnel	%esi, %ecx
	movslq	%ecx, %r8
	movzbl	4186(%rdx,%r8), %ecx
	cmpl	$48, %ecx
	setl	%al
	andb	$1, %al
	movb	%al, _m+4226(%rip)
	callq	_is_little_endian
	leaq	_m(%rip), %rdx
	movl	$3, %ecx
	xorl	%esi, %esi
	movzbl	%al, %edi
	cmpl	$0, %edi
	cmovnel	%esi, %ecx
	movslq	%ecx, %r8
	movzbl	4186(%rdx,%r8), %ecx
	sarl	$7, %ecx
	cmpl	$0, %ecx
	setne	%al
	andb	$1, %al
	movb	%al, _m+4229(%rip)
	callq	_is_little_endian
	leaq	_m(%rip), %rdx
	movl	$3, %ecx
	xorl	%esi, %esi
	movzbl	%al, %edi
	cmpl	$0, %edi
	cmovnel	%esi, %ecx
	movslq	%ecx, %r8
	movzbl	4186(%rdx,%r8), %ecx
	subl	$57, %ecx
	cmpl	$0, %ecx
	sete	%al
	andb	$1, %al
	movb	%al, _m+4227(%rip)
	callq	_is_little_endian
	leaq	_m(%rip), %rdx
	movl	$3, %ecx
	xorl	%esi, %esi
	movzbl	%al, %edi
	cmpl	$0, %edi
	cmovnel	%esi, %ecx
	movslq	%ecx, %r8
	movzbl	4186(%rdx,%r8), %ecx
	cmpl	$57, %ecx
	setl	%al
	andb	$1, %al
	movb	%al, _m+4226(%rip)
	callq	_is_little_endian
	leaq	_m(%rip), %rdx
	movl	$3, %ecx
	xorl	%esi, %esi
	movzbl	%al, %edi
	cmpl	$0, %edi
	cmovnel	%esi, %ecx
	movslq	%ecx, %r8
	movzbl	4186(%rdx,%r8), %ecx
	subl	$57, %ecx
	sarl	$7, %ecx
	cmpl	$0, %ecx
	setne	%al
	andb	$1, %al
	movb	%al, _m+4229(%rip)
	testb	$1, _m+4226(%rip)
	jne	LBB0_30
## BB#29:                               ##   in Loop: Header=BB0_28 Depth=1
	testb	$1, _m+4227(%rip)
	je	LBB0_31
LBB0_30:                                ##   in Loop: Header=BB0_28 Depth=1
	jmp	LBB0_32
LBB0_31:                                ##   in Loop: Header=BB0_28 Depth=1
	callq	_is_little_endian
	leaq	_m(%rip), %rcx
	movl	$3, %edx
	xorl	%esi, %esi
	movzbl	%al, %edi
	cmpl	$0, %edi
	cmovnel	%esi, %edx
	movslq	%edx, %r8
	movzbl	4186(%rcx,%r8), %edx
	addl	$7, %edx
	movb	%dl, %al
	movb	%al, -228(%rbp)         ## 1-byte Spill
	callq	_is_little_endian
	leaq	_m(%rip), %rcx
	movl	$3, %edx
	xorl	%esi, %esi
	movzbl	%al, %edi
	cmpl	$0, %edi
	cmovnel	%esi, %edx
	movslq	%edx, %r8
	movb	-228(%rbp), %al         ## 1-byte Reload
	movb	%al, 4186(%rcx,%r8)
	callq	_is_little_endian
	leaq	_m(%rip), %rcx
	movl	$3, %edx
	xorl	%esi, %esi
	movzbl	%al, %edi
	cmpl	$0, %edi
	cmovnel	%esi, %edx
	movslq	%edx, %r8
	movzbl	4186(%rcx,%r8), %edx
	cmpl	$0, %edx
	sete	%al
	andb	$1, %al
	movb	%al, _m+4227(%rip)
	callq	_is_little_endian
	leaq	_m(%rip), %rcx
	movl	$3, %edx
	xorl	%esi, %esi
	movzbl	%al, %edi
	cmpl	$0, %edi
	cmovnel	%esi, %edx
	movslq	%edx, %r8
	movzbl	4186(%rcx,%r8), %edx
	cmpl	$7, %edx
	setl	%al
	andb	$1, %al
	movb	%al, _m+4226(%rip)
	callq	_is_little_endian
	leaq	_m(%rip), %rcx
	movl	$3, %edx
	xorl	%esi, %esi
	movzbl	%al, %edi
	cmpl	$0, %edi
	cmovnel	%esi, %edx
	movslq	%edx, %r8
	movzbl	4186(%rcx,%r8), %edx
	sarl	$7, %edx
	cmpl	$0, %edx
	setne	%al
	andb	$1, %al
	movb	%al, _m+4229(%rip)
LBB0_32:                                ##   in Loop: Header=BB0_28 Depth=1
	callq	_is_little_endian
	leaq	_m(%rip), %rcx
	movl	$3, %edx
	xorl	%esi, %esi
	movzbl	%al, %edi
	cmpl	$0, %edi
	cmovnel	%esi, %edx
	movslq	%edx, %r8
	movb	4186(%rcx,%r8), %al
	movl	_m+4202(%rip), %edx
	movl	%edx, %r8d
	movq	%rcx, %r9
	addq	%r8, %r9
	movzwl	_m+4216(%rip), %edx
	movl	%edx, %r8d
	movl	21393(%rcx,%r8,4), %edx
	movl	%edx, %ecx
	movb	%al, (%r9,%rcx)
	movl	_m+4202(%rip), %edx
	addl	$1, %edx
	movl	%edx, _m+4202(%rip)
	cmpl	$0, _m+4202(%rip)
	sete	%al
	andb	$1, %al
	movb	%al, _m+4227(%rip)
	callq	_is_little_endian
	leaq	_m(%rip), %rcx
	movl	$3, %edx
	xorl	%esi, %esi
	movzbl	%al, %edi
	cmpl	$0, %edi
	cmovnel	%esi, %edx
	movslq	%edx, %r8
	movzbl	4190(%rcx,%r8), %edx
	subl	$1, %edx
	movb	%dl, %al
	movb	%al, -229(%rbp)         ## 1-byte Spill
	callq	_is_little_endian
	leaq	_m(%rip), %rcx
	movl	$3, %edx
	xorl	%esi, %esi
	movzbl	%al, %edi
	cmpl	$0, %edi
	cmovnel	%esi, %edx
	movslq	%edx, %r8
	movb	-229(%rbp), %al         ## 1-byte Reload
	movb	%al, 4190(%rcx,%r8)
	callq	_is_little_endian
	leaq	_m(%rip), %rcx
	movl	$3, %edx
	xorl	%esi, %esi
	movzbl	%al, %edi
	cmpl	$0, %edi
	cmovnel	%esi, %edx
	movslq	%edx, %r8
	movzbl	4190(%rcx,%r8), %edx
	cmpl	$0, %edx
	sete	%al
	andb	$1, %al
	movb	%al, _m+4227(%rip)
	testb	$1, _m+4227(%rip)
	jne	LBB0_34
## BB#33:                               ##   in Loop: Header=BB0_28 Depth=1
	jmp	LBB0_28
LBB0_34:
	movl	$70, _m+4194(%rip)
	callq	_is_little_endian
	movl	$33, %edi
	leaq	_m(%rip), %rcx
	movl	$2, %edx
	movl	$1, %esi
	movzbl	%al, %r8d
	cmpl	$0, %r8d
	cmovnel	%esi, %edx
	movslq	%edx, %r9
	movb	$9, 4182(%rcx,%r9)
	callq	_asm2C_INT
	testb	$1, _m+4230(%rip)
	je	LBB0_38
## BB#35:
	leaq	-160(%rbp), %rdi
	callq	_setjmp
	cmpl	$0, %eax
	jne	LBB0_37
## BB#36:
	movl	$148, %eax
	movl	%eax, %edx
	movq	$-1, %rcx
	leaq	-160(%rbp), %rsi
	leaq	_m(%rip), %rdi
	addq	$5005, %rdi             ## imm = 0x138D
	movslq	_m+5001(%rip), %r8
	shlq	$2, %r8
	addq	%r8, %rdi
	callq	___memcpy_chk
	movslq	_m+5001(%rip), %rcx
	addq	$148, %rcx
	movl	%ecx, %r9d
	movl	%r9d, _m+5001(%rip)
	movq	%rax, -240(%rbp)        ## 8-byte Spill
	jmp	LBB0_39
LBB0_37:
	jmp	LBB0_38
LBB0_38:
	xorl	%esi, %esi
	leaq	-160(%rbp), %rax
	movl	$148, %ecx
	movl	%ecx, %edx
	leaq	_m(%rip), %rdi
	addq	$5005, %rdi             ## imm = 0x138D
	movslq	_m+5001(%rip), %r8
	subq	$148, %r8
	movl	%r8d, %ecx
	movl	%ecx, _m+5001(%rip)
	movq	%rax, %r8
	movslq	_m+5001(%rip), %r9
	shlq	$2, %r9
	addq	%r9, %rdi
	movq	%rdi, -248(%rbp)        ## 8-byte Spill
	movq	%r8, %rdi
	movq	-248(%rbp), %r8         ## 8-byte Reload
	movl	%esi, -252(%rbp)        ## 4-byte Spill
	movq	%r8, %rsi
	movq	%rax, -264(%rbp)        ## 8-byte Spill
	callq	_memcpy
	movq	-264(%rbp), %rdi        ## 8-byte Reload
	movl	-252(%rbp), %esi        ## 4-byte Reload
	callq	_longjmp
LBB0_39:
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movb	_m+4231(%rip), %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	cmpl	$0, %edx
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movq	(%rax), %rax
	cmpq	-8(%rbp), %rax
	movl	%edx, -268(%rbp)        ## 4-byte Spill
	jne	LBB0_41
## BB#40:
	movl	-268(%rbp), %eax        ## 4-byte Reload
	addq	$272, %rsp              ## imm = 0x110
	popq	%rbp
	retq
LBB0_41:
	callq	___stack_chk_fail
	.cfi_endproc

	.align	4, 0x90
_is_little_endian:                      ## @is_little_endian
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp3:
	.cfi_def_cfa_offset 16
Ltmp4:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp5:
	.cfi_def_cfa_register %rbp
	movb	$1, %al
	movzbl	%al, %eax
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_asm2C_INT
	.align	4, 0x90
_asm2C_INT:                             ## @asm2C_INT
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp6:
	.cfi_def_cfa_offset 16
Ltmp7:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp8:
	.cfi_def_cfa_register %rbp
	subq	$1312, %rsp             ## imm = 0x520
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movl	%edi, -1012(%rbp)
	callq	_is_little_endian
	cmpb	$1, %al
	movl	$1, %edi
	adcl	$0, %edi
	movl	%edi, %ecx
	leaq	_m(%rip), %rdx
	movb	4182(%rcx,%rdx), %al
	movb	%al, -1013(%rbp)
	movq	%rdx, -1096(%rbp)       ## 8-byte Spill
	callq	_is_little_endian
	testb	%al, %al
	sete	%al
	movzbl	%al, %edi
	movl	%edi, %ecx
	leal	(%rcx,%rcx,2), %edi
	movl	%edi, %ecx
	movq	-1096(%rbp), %rdx       ## 8-byte Reload
	movb	4182(%rcx,%rdx), %al
	movb	%al, -1014(%rbp)
	callq	_is_little_endian
	testb	%al, %al
	sete	%al
	movzbl	%al, %edi
	movl	%edi, %ecx
	movq	-1096(%rbp), %rdx       ## 8-byte Reload
	movw	4182(%rdx,%rcx,2), %si
	movw	%si, -1016(%rbp)
	callq	_is_little_endian
	testb	%al, %al
	sete	%al
	movzbl	%al, %edi
	movl	%edi, %ecx
	movq	-1096(%rbp), %rdx       ## 8-byte Reload
	movw	4186(%rdx,%rcx,2), %si
	movw	%si, -1018(%rbp)
	callq	_is_little_endian
	testb	%al, %al
	sete	%al
	movzbl	%al, %edi
	movl	%edi, %ecx
	movq	-1096(%rbp), %rdx       ## 8-byte Reload
	movw	4190(%rdx,%rcx,2), %si
	movw	%si, -1020(%rbp)
	callq	_is_little_endian
	testb	%al, %al
	sete	%al
	movzbl	%al, %edi
	movl	%edi, %ecx
	movq	-1096(%rbp), %rdx       ## 8-byte Reload
	movw	4194(%rdx,%rcx,2), %si
	movw	%si, -1022(%rbp)
	movb	$0, _m+4226(%rip)
	movl	-1012(%rbp), %edi
	movl	%edi, %r8d
	subl	$16, %r8d
	movl	%edi, -1100(%rbp)       ## 4-byte Spill
	movl	%r8d, -1104(%rbp)       ## 4-byte Spill
	je	LBB2_1
	jmp	LBB2_64
LBB2_64:
	movl	-1100(%rbp), %eax       ## 4-byte Reload
	subl	$33, %eax
	movl	%eax, -1108(%rbp)       ## 4-byte Spill
	je	LBB2_5
	jmp	LBB2_65
LBB2_65:
	movl	-1100(%rbp), %eax       ## 4-byte Reload
	subl	$49, %eax
	movl	%eax, -1112(%rbp)       ## 4-byte Spill
	je	LBB2_41
	jmp	LBB2_59
LBB2_1:
	movzwl	-1016(%rbp), %eax
	movl	%eax, %ecx
	subl	$3, %ecx
	movl	%eax, -1116(%rbp)       ## 4-byte Spill
	movl	%ecx, -1120(%rbp)       ## 4-byte Spill
	je	LBB2_2
	jmp	LBB2_74
LBB2_74:
	movl	-1116(%rbp), %eax       ## 4-byte Reload
	subl	$19, %eax
	movl	%eax, -1124(%rbp)       ## 4-byte Spill
	je	LBB2_3
	jmp	LBB2_4
LBB2_2:
	leaq	L_.str.35(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	%eax, -1128(%rbp)       ## 4-byte Spill
	jmp	LBB2_61
LBB2_3:
	leaq	L_.str.36(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	%eax, -1132(%rbp)       ## 4-byte Spill
	jmp	LBB2_61
LBB2_4:
	jmp	LBB2_60
LBB2_5:
	movzbl	-1013(%rbp), %eax
	addl	$-9, %eax
	movl	%eax, %ecx
	subl	$67, %eax
	movq	%rcx, -1144(%rbp)       ## 8-byte Spill
	movl	%eax, -1148(%rbp)       ## 4-byte Spill
	ja	LBB2_39
## BB#66:
	leaq	LJTI2_0(%rip), %rax
	movq	-1144(%rbp), %rcx       ## 8-byte Reload
	movslq	(%rax,%rcx,4), %rdx
	addq	%rax, %rdx
	jmpq	*%rdx
LBB2_6:
	leaq	_m(%rip), %rax
	movl	_m+4194(%rip), %ecx
	movl	%ecx, %edx
	movq	%rax, %rsi
	addq	%rdx, %rsi
	movzwl	_m+4216(%rip), %ecx
	movl	%ecx, %edx
	movl	21393(%rax,%rdx,4), %ecx
	movl	%ecx, %eax
	addq	%rax, %rsi
	movq	%rsi, -1032(%rbp)
	movl	$0, -1036(%rbp)
LBB2_7:                                 ## =>This Inner Loop Header: Depth=1
	movslq	-1036(%rbp), %rax
	movq	-1032(%rbp), %rcx
	movsbl	(%rcx,%rax), %edx
	cmpl	$36, %edx
	je	LBB2_10
## BB#8:                                ##   in Loop: Header=BB2_7 Depth=1
	leaq	L_.str.37(%rip), %rdi
	movslq	-1036(%rbp), %rax
	movq	-1032(%rbp), %rcx
	movsbl	(%rcx,%rax), %esi
	movb	$0, %al
	callq	_printf
	movl	%eax, -1152(%rbp)       ## 4-byte Spill
## BB#9:                                ##   in Loop: Header=BB2_7 Depth=1
	movl	-1036(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -1036(%rbp)
	jmp	LBB2_7
LBB2_10:
	jmp	LBB2_61
LBB2_11:
	movl	$512, _m+4194(%rip)     ## imm = 0x200
	jmp	LBB2_61
LBB2_12:
	cmpq	$0, _m+4408213(%rip)
	je	LBB2_14
## BB#13:
	xorl	%esi, %esi
	movl	$1000, %eax             ## imm = 0x3E8
	movl	%eax, %edx
	leaq	L_.str.38(%rip), %rcx
	leaq	_m(%rip), %rdi
	leaq	-1008(%rbp), %r8
	movq	_m+4408213(%rip), %r9
	movl	_m+4194(%rip), %eax
	movl	%eax, %r10d
	movq	%rdi, %r11
	addq	%r10, %r11
	movzwl	_m+4216(%rip), %eax
	movl	%eax, %r10d
	movl	21393(%rdi,%r10,4), %eax
	movl	%eax, %edi
	addq	%rdi, %r11
	movq	%r8, %rdi
	movq	%r9, %r8
	movq	%r11, %r9
	movb	$0, %al
	callq	___sprintf_chk
	movl	%eax, -1156(%rbp)       ## 4-byte Spill
	jmp	LBB2_15
LBB2_14:
	xorl	%esi, %esi
	movl	$1000, %eax             ## imm = 0x3E8
	movl	%eax, %edx
	leaq	L_.str.39(%rip), %rcx
	leaq	_m(%rip), %rdi
	leaq	-1008(%rbp), %r8
	movl	_m+4194(%rip), %eax
	movl	%eax, %r9d
	movq	%rdi, %r10
	addq	%r9, %r10
	movzwl	_m+4216(%rip), %eax
	movl	%eax, %r9d
	movl	21393(%rdi,%r9,4), %eax
	movl	%eax, %edi
	addq	%rdi, %r10
	movq	%r8, %rdi
	movq	%r10, %r8
	movb	$0, %al
	callq	___sprintf_chk
	movl	%eax, -1160(%rbp)       ## 4-byte Spill
LBB2_15:
	leaq	L_.str.40(%rip), %rsi
	leaq	-1008(%rbp), %rdi
	callq	_fopen
	leaq	L_.str.41(%rip), %rdi
	leaq	-1008(%rbp), %rsi
	movq	%rax, _asm2C_INT.file(%rip)
	movq	_asm2C_INT.file(%rip), %rax
	movq	%rax, %rdx
	movb	$0, %al
	callq	_printf
	cmpq	$0, _asm2C_INT.file(%rip)
	movl	%eax, -1164(%rbp)       ## 4-byte Spill
	je	LBB2_17
## BB#16:
	movl	$1, _m+4182(%rip)
	jmp	LBB2_18
LBB2_17:
	leaq	L_.str.42(%rip), %rdi
	leaq	-1008(%rbp), %rsi
	movb	$1, _m+4226(%rip)
	movb	$0, %al
	callq	_printf
	movl	%eax, -1168(%rbp)       ## 4-byte Spill
LBB2_18:
	jmp	LBB2_61
LBB2_19:
	leaq	L_.str.43(%rip), %rdi
	movzwl	-1018(%rbp), %esi
	movb	$0, %al
	callq	_printf
	movq	_asm2C_INT.file(%rip), %rdi
	movl	%eax, -1172(%rbp)       ## 4-byte Spill
	callq	_fclose
	cmpl	$0, %eax
	je	LBB2_21
## BB#20:
	leaq	L_.str.44(%rip), %rdi
	movb	$1, _m+4226(%rip)
	callq	_perror
	leaq	L_.str.45(%rip), %rdi
	movzwl	-1018(%rbp), %esi
	movq	_asm2C_INT.file(%rip), %rax
	movq	%rax, %rdx
	movb	$0, %al
	callq	_printf
	movl	%eax, -1176(%rbp)       ## 4-byte Spill
LBB2_21:
	movq	$0, _asm2C_INT.file(%rip)
	jmp	LBB2_61
LBB2_22:
	leaq	L_.str.46(%rip), %rdi
	leaq	_m(%rip), %rax
	movl	_m+4194(%rip), %ecx
	movl	%ecx, %edx
	movq	%rax, %rsi
	addq	%rdx, %rsi
	movzwl	_m+4216(%rip), %ecx
	movl	%ecx, %edx
	movl	21393(%rax,%rdx,4), %ecx
	movl	%ecx, %eax
	addq	%rax, %rsi
	movq	%rsi, -1048(%rbp)
	movl	_m+4190(%rip), %esi
	movzwl	-1020(%rbp), %edx
	movzwl	_m+4216(%rip), %ecx
	movl	_m+4194(%rip), %r8d
	movq	-1048(%rbp), %r9
	movq	_asm2C_INT.file(%rip), %rax
	movq	%rax, (%rsp)
	movb	$0, %al
	callq	_printf
	movq	_asm2C_INT.file(%rip), %rdi
	movl	%eax, -1180(%rbp)       ## 4-byte Spill
	callq	_feof
	cmpl	$0, %eax
	je	LBB2_24
## BB#23:
	leaq	L_.str.47(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	$0, _m+4182(%rip)
	movl	%eax, -1184(%rbp)       ## 4-byte Spill
	jmp	LBB2_30
LBB2_24:
	movl	$1, %eax
	movl	%eax, %esi
	movq	-1048(%rbp), %rdi
	movzwl	-1020(%rbp), %eax
	movl	%eax, %edx
	movq	_asm2C_INT.file(%rip), %rcx
	callq	_fread
	movq	%rax, -1056(%rbp)
	movq	-1056(%rbp), %rax
	movzwl	-1020(%rbp), %r8d
	movl	%r8d, %ecx
	cmpq	%rcx, %rax
	je	LBB2_28
## BB#25:
	leaq	L_.str.44(%rip), %rdi
	callq	_perror
	leaq	L_.str.48(%rip), %rdi
	movzwl	-1020(%rbp), %esi
	movq	-1056(%rbp), %rdx
	movb	$0, %al
	callq	_printf
	movq	_asm2C_INT.file(%rip), %rdi
	movl	%eax, -1188(%rbp)       ## 4-byte Spill
	callq	_feof
	cmpl	$0, %eax
	jne	LBB2_27
## BB#26:
	leaq	L_.str.49(%rip), %rdi
	movzwl	-1020(%rbp), %esi
	movq	-1056(%rbp), %rdx
	movq	_asm2C_INT.file(%rip), %rax
	movq	%rax, %rcx
	movb	$0, %al
	callq	_printf
	movb	$1, _m+4226(%rip)
	movl	%eax, -1192(%rbp)       ## 4-byte Spill
LBB2_27:
	jmp	LBB2_29
LBB2_28:
	leaq	L_.str.50(%rip), %rdi
	movq	_asm2C_INT.file(%rip), %rax
	movq	%rax, %rsi
	movb	$0, %al
	callq	_printf
	movl	%eax, -1196(%rbp)       ## 4-byte Spill
LBB2_29:
	movq	-1056(%rbp), %rax
	movl	%eax, %ecx
	movl	%ecx, _m+4182(%rip)
LBB2_30:
	jmp	LBB2_61
LBB2_31:
	movl	$0, -1060(%rbp)
	movzbl	-1013(%rbp), %eax
	testl	%eax, %eax
	movl	%eax, -1200(%rbp)       ## 4-byte Spill
	je	LBB2_32
	jmp	LBB2_67
LBB2_67:
	movl	-1200(%rbp), %eax       ## 4-byte Reload
	subl	$1, %eax
	movl	%eax, -1204(%rbp)       ## 4-byte Spill
	je	LBB2_33
	jmp	LBB2_68
LBB2_68:
	movl	-1200(%rbp), %eax       ## 4-byte Reload
	subl	$2, %eax
	movl	%eax, -1208(%rbp)       ## 4-byte Spill
	je	LBB2_34
	jmp	LBB2_35
LBB2_32:
	movl	$0, -1060(%rbp)
	jmp	LBB2_35
LBB2_33:
	movl	$1, -1060(%rbp)
	jmp	LBB2_35
LBB2_34:
	movl	$2, -1060(%rbp)
LBB2_35:
	leaq	L_.str.51(%rip), %rdi
	movzwl	-1020(%rbp), %eax
	shll	$16, %eax
	movzwl	-1022(%rbp), %ecx
	addl	%ecx, %eax
	movslq	%eax, %rdx
	movq	%rdx, -1072(%rbp)
	movq	-1072(%rbp), %rsi
	movl	-1060(%rbp), %edx
	movb	$0, %al
	callq	_printf
	movq	_asm2C_INT.file(%rip), %rdi
	movq	-1072(%rbp), %rsi
	movl	-1060(%rbp), %edx
	movl	%eax, -1212(%rbp)       ## 4-byte Spill
	callq	_fseek
	cmpl	$0, %eax
	je	LBB2_37
## BB#36:
	leaq	L_.str.52(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	%eax, -1216(%rbp)       ## 4-byte Spill
LBB2_37:
	jmp	LBB2_61
LBB2_38:
	callq	_stackDump
	movb	$1, _m+4230(%rip)
	movb	$1, _m+4231(%rip)
	movb	-1014(%rbp), %al
	movb	%al, _m+4232(%rip)
	jmp	LBB2_61
LBB2_39:
	jmp	LBB2_40
LBB2_40:
	jmp	LBB2_41
LBB2_41:
	movzwl	-1016(%rbp), %eax
	testl	%eax, %eax
	movl	%eax, -1220(%rbp)       ## 4-byte Spill
	je	LBB2_42
	jmp	LBB2_69
LBB2_69:
	movl	-1220(%rbp), %eax       ## 4-byte Reload
	subl	$2, %eax
	movl	%eax, -1224(%rbp)       ## 4-byte Spill
	je	LBB2_46
	jmp	LBB2_70
LBB2_70:
	movl	-1220(%rbp), %eax       ## 4-byte Reload
	subl	$7, %eax
	movl	%eax, -1228(%rbp)       ## 4-byte Spill
	je	LBB2_49
	jmp	LBB2_71
LBB2_71:
	movl	-1220(%rbp), %eax       ## 4-byte Reload
	subl	$8, %eax
	movl	%eax, -1232(%rbp)       ## 4-byte Spill
	je	LBB2_52
	jmp	LBB2_72
LBB2_72:
	movl	-1220(%rbp), %eax       ## 4-byte Reload
	subl	$517, %eax              ## imm = 0x205
	movl	%eax, -1236(%rbp)       ## 4-byte Spill
	je	LBB2_56
	jmp	LBB2_73
LBB2_73:
	movl	-1220(%rbp), %eax       ## 4-byte Reload
	subl	$1281, %eax             ## imm = 0x501
	movl	%eax, -1240(%rbp)       ## 4-byte Spill
	je	LBB2_53
	jmp	LBB2_57
LBB2_42:
	leaq	L_.str.53(%rip), %rdi
	movzwl	-1020(%rbp), %esi
	movb	$0, %al
	callq	_printf
	movl	_m+21389(%rip), %esi
	movzwl	-1020(%rbp), %ecx
	addl	%ecx, %esi
	cmpl	$128, %esi
	movl	%eax, -1244(%rbp)       ## 4-byte Spill
	jb	LBB2_44
## BB#43:
	leaq	L_.str.54(%rip), %rdi
	movb	$1, _m+4226(%rip)
	movb	$0, %al
	callq	_printf
	movl	%eax, -1248(%rbp)       ## 4-byte Spill
	jmp	LBB2_61
LBB2_44:
	leaq	L_.str.55(%rip), %rdi
	movl	_m+21389(%rip), %eax
	movl	%eax, _m+4182(%rip)
	movzwl	-1020(%rbp), %eax
	addl	_m+21389(%rip), %eax
	movl	%eax, _m+21389(%rip)
	movl	_m+4182(%rip), %esi
	movb	$0, %al
	callq	_printf
	movl	%eax, -1252(%rbp)       ## 4-byte Spill
## BB#45:
	jmp	LBB2_61
LBB2_46:
	leaq	L_.str.56(%rip), %rdi
	movl	_m+4186(%rip), %esi
	movb	$0, %al
	callq	_printf
	movl	_m+21389(%rip), %esi
	addl	$1, %esi
	cmpl	$128, %esi
	movl	%eax, -1256(%rbp)       ## 4-byte Spill
	jb	LBB2_48
## BB#47:
	leaq	L_.str.54(%rip), %rdi
	movb	$1, _m+4226(%rip)
	movb	$0, %al
	callq	_printf
	movl	%eax, -1260(%rbp)       ## 4-byte Spill
	jmp	LBB2_61
LBB2_48:
	leaq	L_.str.57(%rip), %rdi
	leaq	_m(%rip), %rax
	movl	_m+21389(%rip), %ecx
	movl	%ecx, %edx
	movl	$4280213, 21393(%rax,%rdx,4) ## imm = 0x414F95
	movl	_m+21389(%rip), %ecx
	movl	%ecx, _m+4182(%rip)
	movl	_m+4182(%rip), %esi
	movb	$0, %al
	callq	_printf
	movl	_m+21389(%rip), %ecx
	addl	$1, %ecx
	movl	%ecx, _m+21389(%rip)
	movl	%eax, -1264(%rbp)       ## 4-byte Spill
	jmp	LBB2_61
LBB2_49:
	leaq	L_.str.58(%rip), %rdi
	movl	_m+4186(%rip), %esi
	movl	_m+4194(%rip), %edx
	movl	_m+4190(%rip), %ecx
	movb	$0, %al
	callq	_printf
	movzwl	-1018(%rbp), %ecx
	cmpl	_m+21389(%rip), %ecx
	movl	%eax, -1268(%rbp)       ## 4-byte Spill
	jbe	LBB2_51
## BB#50:
	leaq	L_.str.59(%rip), %rdi
	movb	$1, _m+4226(%rip)
	movb	$0, %al
	callq	_printf
	movl	%eax, -1272(%rbp)       ## 4-byte Spill
	jmp	LBB2_61
LBB2_51:
	callq	_is_little_endian
	leaq	_m(%rip), %rcx
	movl	$2, %edx
	xorl	%esi, %esi
	movzbl	%al, %edi
	cmpl	$0, %edi
	cmovnel	%esi, %edx
	movslq	%edx, %r8
	movzwl	4194(%rcx,%r8), %edx
	andl	$65535, %edx            ## imm = 0xFFFF
	movl	%edx, -1276(%rbp)       ## 4-byte Spill
	callq	_is_little_endian
	leaq	L_.str.60(%rip), %rdi
	leaq	_m(%rip), %rcx
	movl	$2, %edx
	xorl	%esi, %esi
	movzbl	%al, %r9d
	cmpl	$0, %r9d
	cmovnel	%esi, %edx
	movslq	%edx, %r8
	movzwl	4190(%rcx,%r8), %edx
	shll	$16, %edx
	movl	-1276(%rbp), %esi       ## 4-byte Reload
	addl	%edx, %esi
	movzwl	-1018(%rbp), %edx
	movl	%edx, %r8d
	movl	%esi, 21393(%rcx,%r8,4)
	movzwl	-1018(%rbp), %esi
	movzwl	-1018(%rbp), %edx
	movl	%edx, %r8d
	movl	21393(%rcx,%r8,4), %edx
	movb	$0, %al
	callq	_printf
	movl	%eax, -1280(%rbp)       ## 4-byte Spill
	jmp	LBB2_61
LBB2_52:
	leaq	L_.str.61(%rip), %rdi
	movzwl	-1018(%rbp), %esi
	movb	$0, %al
	callq	_printf
	movl	%eax, -1284(%rbp)       ## 4-byte Spill
	jmp	LBB2_61
LBB2_53:
	leaq	L_.str.62(%rip), %rdi
	movzwl	-1018(%rbp), %eax
	shll	$16, %eax
	movzwl	-1020(%rbp), %ecx
	addl	%ecx, %eax
	movl	%eax, -1076(%rbp)
	movl	-1076(%rbp), %esi
	movb	$0, %al
	callq	_printf
	movl	_m+21905(%rip), %ecx
	addl	-1076(%rbp), %ecx
	cmpl	$4194304, %ecx          ## imm = 0x400000
	movl	%eax, -1288(%rbp)       ## 4-byte Spill
	jb	LBB2_55
## BB#54:
	leaq	L_.str.63(%rip), %rdi
	movb	$1, _m+4226(%rip)
	movb	$0, %al
	callq	_printf
	movl	%eax, -1292(%rbp)       ## 4-byte Spill
	jmp	LBB2_61
LBB2_55:
	leaq	L_.str.64(%rip), %rdi
	movl	_m+21905(%rip), %eax
	movl	%eax, %ecx
	addq	$21909, %rcx            ## imm = 0x5595
	movl	%ecx, %eax
	movl	%eax, -1080(%rbp)
	movl	-1076(%rbp), %eax
	addl	_m+21905(%rip), %eax
	movl	%eax, _m+21905(%rip)
	movl	_m+21905(%rip), %eax
	movl	%eax, %ecx
	addq	$21909, %rcx            ## imm = 0x5595
	movl	%ecx, %eax
	movl	%eax, -1084(%rbp)
	movl	-1084(%rbp), %esi
	movb	$0, %al
	callq	_printf
	leaq	L_.str.65(%rip), %rdi
	movl	-1080(%rbp), %esi
	andl	$65535, %esi            ## imm = 0xFFFF
	movl	%esi, _m+4190(%rip)
	movl	-1080(%rbp), %esi
	shrl	$16, %esi
	movl	%esi, _m+4186(%rip)
	movl	$0, _m+4202(%rip)
	movl	$0, _m+4198(%rip)
	movl	-1080(%rbp), %esi
	movl	_m+4186(%rip), %edx
	movl	_m+4190(%rip), %ecx
	movl	%eax, -1296(%rbp)       ## 4-byte Spill
	movb	$0, %al
	callq	_printf
	movl	%eax, -1300(%rbp)       ## 4-byte Spill
	jmp	LBB2_61
LBB2_56:
	jmp	LBB2_61
LBB2_57:
	jmp	LBB2_58
LBB2_58:
	jmp	LBB2_60
LBB2_59:
	jmp	LBB2_60
LBB2_60:
	leaq	L_.str.66(%rip), %rdi
	movb	$1, _m+4226(%rip)
	movl	-1012(%rbp), %esi
	movzbl	-1013(%rbp), %edx
	movzbl	-1014(%rbp), %ecx
	movb	$0, %al
	callq	_printf
	movl	%eax, -1304(%rbp)       ## 4-byte Spill
LBB2_61:
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	cmpq	-8(%rbp), %rax
	jne	LBB2_63
## BB#62:
	addq	$1312, %rsp             ## imm = 0x520
	popq	%rbp
	retq
LBB2_63:
	callq	___stack_chk_fail
	.cfi_endproc
	.align	2, 0x90
L2_0_set_6 = LBB2_6-LJTI2_0
L2_0_set_39 = LBB2_39-LJTI2_0
L2_0_set_11 = LBB2_11-LJTI2_0
L2_0_set_12 = LBB2_12-LJTI2_0
L2_0_set_19 = LBB2_19-LJTI2_0
L2_0_set_22 = LBB2_22-LJTI2_0
L2_0_set_31 = LBB2_31-LJTI2_0
L2_0_set_38 = LBB2_38-LJTI2_0
LJTI2_0:
	.long	L2_0_set_6
	.long	L2_0_set_39
	.long	L2_0_set_39
	.long	L2_0_set_39
	.long	L2_0_set_39
	.long	L2_0_set_39
	.long	L2_0_set_39
	.long	L2_0_set_39
	.long	L2_0_set_39
	.long	L2_0_set_39
	.long	L2_0_set_39
	.long	L2_0_set_39
	.long	L2_0_set_39
	.long	L2_0_set_39
	.long	L2_0_set_39
	.long	L2_0_set_39
	.long	L2_0_set_39
	.long	L2_0_set_39
	.long	L2_0_set_39
	.long	L2_0_set_39
	.long	L2_0_set_39
	.long	L2_0_set_39
	.long	L2_0_set_39
	.long	L2_0_set_39
	.long	L2_0_set_39
	.long	L2_0_set_39
	.long	L2_0_set_39
	.long	L2_0_set_39
	.long	L2_0_set_39
	.long	L2_0_set_39
	.long	L2_0_set_39
	.long	L2_0_set_39
	.long	L2_0_set_39
	.long	L2_0_set_39
	.long	L2_0_set_39
	.long	L2_0_set_11
	.long	L2_0_set_39
	.long	L2_0_set_39
	.long	L2_0_set_39
	.long	L2_0_set_39
	.long	L2_0_set_39
	.long	L2_0_set_39
	.long	L2_0_set_39
	.long	L2_0_set_39
	.long	L2_0_set_39
	.long	L2_0_set_39
	.long	L2_0_set_39
	.long	L2_0_set_39
	.long	L2_0_set_39
	.long	L2_0_set_39
	.long	L2_0_set_39
	.long	L2_0_set_39
	.long	L2_0_set_12
	.long	L2_0_set_19
	.long	L2_0_set_22
	.long	L2_0_set_39
	.long	L2_0_set_39
	.long	L2_0_set_31
	.long	L2_0_set_39
	.long	L2_0_set_39
	.long	L2_0_set_39
	.long	L2_0_set_39
	.long	L2_0_set_39
	.long	L2_0_set_39
	.long	L2_0_set_39
	.long	L2_0_set_39
	.long	L2_0_set_39
	.long	L2_0_set_38

	.globl	_stackDump
	.align	4, 0x90
_stackDump:                             ## @stackDump
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp9:
	.cfi_def_cfa_offset 16
Ltmp10:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp11:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	callq	_is_little_endian
	leaq	L_.str(%rip), %rdi
	movzbl	%al, %esi
	movb	$0, %al
	callq	_printf
	leaq	L_.str.1(%rip), %rdi
	movl	$4, %esi
                                        ## 
	movl	%eax, -4(%rbp)          ## 4-byte Spill
	movb	$0, %al
	callq	_printf
	leaq	L_.str.2(%rip), %rdi
	movl	$8, %ecx
	movl	%ecx, %esi
	movl	%eax, -8(%rbp)          ## 4-byte Spill
	movb	$0, %al
	callq	_printf
	leaq	L_.str.3(%rip), %rdi
	movl	$2, %ecx
	movl	%ecx, %esi
	movl	%eax, -12(%rbp)         ## 4-byte Spill
	movb	$0, %al
	callq	_printf
	leaq	L_.str.4(%rip), %rdi
	movl	$1, %ecx
	movl	%ecx, %esi
	movl	%eax, -16(%rbp)         ## 4-byte Spill
	movb	$0, %al
	callq	_printf
	leaq	L_.str.5(%rip), %rdi
	movl	$4408221, %ecx          ## imm = 0x43439D
	movl	%ecx, %esi
	movl	%eax, -20(%rbp)         ## 4-byte Spill
	movb	$0, %al
	callq	_printf
	leaq	L_.str.6(%rip), %rdi
	movl	_m+4182(%rip), %esi
	movl	%eax, -24(%rbp)         ## 4-byte Spill
	movb	$0, %al
	callq	_printf
	leaq	_m(%rip), %rdi
	addq	$4182, %rdi             ## imm = 0x1056
	movl	$4, %esi
	movl	%eax, -28(%rbp)         ## 4-byte Spill
	callq	_hexDump
	leaq	L_.str.7(%rip), %rdi
	movl	_m+4186(%rip), %esi
	movb	$0, %al
	callq	_printf
	leaq	L_.str.8(%rip), %rdi
	movl	_m+4190(%rip), %esi
	movl	%eax, -32(%rbp)         ## 4-byte Spill
	movb	$0, %al
	callq	_printf
	leaq	L_.str.9(%rip), %rdi
	movl	_m+4194(%rip), %esi
	movl	%eax, -36(%rbp)         ## 4-byte Spill
	movb	$0, %al
	callq	_printf
	leaq	L_.str.10(%rip), %rdi
	movl	_m+4206(%rip), %esi
	movl	%eax, -40(%rbp)         ## 4-byte Spill
	movb	$0, %al
	callq	_printf
	leaq	L_.str.11(%rip), %rdi
	leaq	_m(%rip), %rdx
	movzwl	_m+4214(%rip), %esi
	movzwl	_m+4214(%rip), %ecx
	movl	%ecx, %r8d
	movl	21393(%rdx,%r8,4), %ecx
	movl	%ecx, %r8d
	addq	%r8, %rdx
	movl	%eax, -44(%rbp)         ## 4-byte Spill
	movb	$0, %al
	callq	_printf
	leaq	L_.str.12(%rip), %rdi
	leaq	_m(%rip), %rdx
	movzwl	_m+4216(%rip), %esi
	movzwl	_m+4216(%rip), %ecx
	movl	%ecx, %r8d
	movl	21393(%rdx,%r8,4), %ecx
	movl	%ecx, %r8d
	addq	%r8, %rdx
	movl	%eax, -48(%rbp)         ## 4-byte Spill
	movb	$0, %al
	callq	_printf
	leaq	L_.str.13(%rip), %rdi
	movl	_m+4198(%rip), %esi
	movl	%eax, -52(%rbp)         ## 4-byte Spill
	movb	$0, %al
	callq	_printf
	leaq	L_.str.14(%rip), %rdi
	leaq	_m(%rip), %rdx
	movl	_m+4198(%rip), %ecx
	movl	%ecx, %r8d
	movq	%rdx, %r9
	addq	%r8, %r9
	movzwl	_m+4216(%rip), %ecx
	movl	%ecx, %r8d
	movl	21393(%rdx,%r8,4), %ecx
	movl	%ecx, %edx
	addq	%rdx, %r9
	movq	%r9, %rsi
	movl	%eax, -56(%rbp)         ## 4-byte Spill
	movb	$0, %al
	callq	_printf
	leaq	L_.str.15(%rip), %rdi
	leaq	_m(%rip), %rdx
	movzwl	_m+4218(%rip), %esi
	movzwl	_m+4218(%rip), %ecx
	movl	%ecx, %r8d
	movl	21393(%rdx,%r8,4), %ecx
	movl	%ecx, %r8d
	addq	%r8, %rdx
	movl	%eax, -60(%rbp)         ## 4-byte Spill
	movb	$0, %al
	callq	_printf
	leaq	_m(%rip), %rdx
	addq	$4218, %rdx             ## imm = 0x107A
	movl	$4, %esi
	movq	%rdx, %rdi
	movl	%eax, -64(%rbp)         ## 4-byte Spill
	callq	_hexDump
	leaq	L_.str.16(%rip), %rdi
	movl	_m+4202(%rip), %esi
	movb	$0, %al
	callq	_printf
	leaq	L_.str.17(%rip), %rdi
	leaq	_m(%rip), %rdx
	movl	_m+4202(%rip), %ecx
	movl	%ecx, %r8d
	movq	%rdx, %r9
	addq	%r8, %r9
	movzwl	_m+4218(%rip), %ecx
	movl	%ecx, %r8d
	movl	21393(%rdx,%r8,4), %ecx
	movl	%ecx, %edx
	addq	%rdx, %r9
	movq	%r9, %rsi
	movl	%eax, -68(%rbp)         ## 4-byte Spill
	movb	$0, %al
	callq	_printf
	movl	$50, %esi
	leaq	_m(%rip), %rdx
	movl	_m+4202(%rip), %ecx
	movl	%ecx, %edi
	movq	%rdx, %r8
	addq	%rdi, %r8
	movzwl	_m+4218(%rip), %ecx
	movl	%ecx, %edi
	movl	21393(%rdx,%rdi,4), %ecx
	movl	%ecx, %edx
	addq	%rdx, %r8
	movq	%r8, %rdi
	movl	%eax, -72(%rbp)         ## 4-byte Spill
	callq	_hexDump
	leaq	L_.str.18(%rip), %rdi
	leaq	_m(%rip), %rdx
	movzwl	_m+4220(%rip), %esi
	movzwl	_m+4220(%rip), %eax
	movl	%eax, %r8d
	movl	21393(%rdx,%r8,4), %eax
	movl	%eax, %r8d
	addq	%r8, %rdx
	movb	$0, %al
	callq	_printf
	leaq	L_.str.19(%rip), %rdi
	leaq	_m(%rip), %rdx
	movzwl	_m+4222(%rip), %esi
	movzwl	_m+4222(%rip), %ecx
	movl	%ecx, %r8d
	movl	21393(%rdx,%r8,4), %ecx
	movl	%ecx, %r8d
	addq	%r8, %rdx
	movl	%eax, -76(%rbp)         ## 4-byte Spill
	movb	$0, %al
	callq	_printf
	leaq	L_.str.20(%rip), %rdi
	leaq	_m(%rip), %rdx
	addq	$21909, %rdx            ## imm = 0x5595
	movq	%rdx, %rsi
	movl	%eax, -80(%rbp)         ## 4-byte Spill
	movb	$0, %al
	callq	_printf
	leaq	L_.str.21(%rip), %rdi
	leaq	_m(%rip), %rdx
	addq	$4280213, %rdx          ## imm = 0x414F95
	movq	%rdx, %rsi
	movl	%eax, -84(%rbp)         ## 4-byte Spill
	movb	$0, %al
	callq	_printf
	leaq	L_.str.22(%rip), %rdi
	movzbl	_m+4280213(%rip), %esi
	movl	%eax, -88(%rbp)         ## 4-byte Spill
	movb	$0, %al
	callq	_printf
	leaq	L_.str.23(%rip), %rdi
	movb	_m+4227(%rip), %r10b
	andb	$1, %r10b
	movzbl	%r10b, %esi
	movl	%eax, -92(%rbp)         ## 4-byte Spill
	movb	$0, %al
	callq	_printf
	leaq	L_.str.24(%rip), %rdi
	movl	_m+5001(%rip), %esi
	movl	%eax, -96(%rbp)         ## 4-byte Spill
	movb	$0, %al
	callq	_printf
	movl	%eax, -100(%rbp)        ## 4-byte Spill
	addq	$112, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_hexDump
	.align	4, 0x90
_hexDump:                               ## @hexDump
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp12:
	.cfi_def_cfa_offset 16
Ltmp13:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp14:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	leaq	L_.str.25(%rip), %rax
	movq	___stack_chk_guard@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -8(%rbp)
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movq	-40(%rbp), %rcx
	movq	%rcx, -56(%rbp)
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	movb	$0, %al
	callq	_printf
	cmpl	$0, -44(%rbp)
	movl	%eax, -60(%rbp)         ## 4-byte Spill
	jne	LBB4_2
## BB#1:
	leaq	L_.str.26(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	%eax, -64(%rbp)         ## 4-byte Spill
	jmp	LBB4_20
LBB4_2:
	cmpl	$0, -44(%rbp)
	jge	LBB4_4
## BB#3:
	leaq	L_.str.27(%rip), %rdi
	movl	-44(%rbp), %esi
	movb	$0, %al
	callq	_printf
	movl	%eax, -68(%rbp)         ## 4-byte Spill
	jmp	LBB4_20
LBB4_4:
	movl	$0, -48(%rbp)
LBB4_5:                                 ## =>This Inner Loop Header: Depth=1
	movl	-48(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jge	LBB4_16
## BB#6:                                ##   in Loop: Header=BB4_5 Depth=1
	movl	$16, %eax
	movl	-48(%rbp), %ecx
	movl	%eax, -72(%rbp)         ## 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-72(%rbp), %ecx         ## 4-byte Reload
	idivl	%ecx
	cmpl	$0, %edx
	jne	LBB4_10
## BB#7:                                ##   in Loop: Header=BB4_5 Depth=1
	cmpl	$0, -48(%rbp)
	je	LBB4_9
## BB#8:                                ##   in Loop: Header=BB4_5 Depth=1
	leaq	L_.str.28(%rip), %rdi
	leaq	-32(%rbp), %rsi
	movb	$0, %al
	callq	_printf
	movl	%eax, -76(%rbp)         ## 4-byte Spill
LBB4_9:                                 ##   in Loop: Header=BB4_5 Depth=1
	leaq	L_.str.29(%rip), %rdi
	movl	-48(%rbp), %esi
	movb	$0, %al
	callq	_printf
	movl	%eax, -80(%rbp)         ## 4-byte Spill
LBB4_10:                                ##   in Loop: Header=BB4_5 Depth=1
	leaq	L_.str.30(%rip), %rdi
	movslq	-48(%rbp), %rax
	movq	-56(%rbp), %rcx
	movzbl	(%rcx,%rax), %esi
	movb	$0, %al
	callq	_printf
	movslq	-48(%rbp), %rcx
	movq	-56(%rbp), %rdi
	movzbl	(%rdi,%rcx), %esi
	cmpl	$32, %esi
	movl	%eax, -84(%rbp)         ## 4-byte Spill
	jl	LBB4_12
## BB#11:                               ##   in Loop: Header=BB4_5 Depth=1
	movslq	-48(%rbp), %rax
	movq	-56(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	cmpl	$126, %edx
	jle	LBB4_13
LBB4_12:                                ##   in Loop: Header=BB4_5 Depth=1
	movl	$16, %eax
	movl	-48(%rbp), %ecx
	movl	%eax, -88(%rbp)         ## 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-88(%rbp), %ecx         ## 4-byte Reload
	idivl	%ecx
	movslq	%edx, %rsi
	movb	$46, -32(%rbp,%rsi)
	jmp	LBB4_14
LBB4_13:                                ##   in Loop: Header=BB4_5 Depth=1
	movl	$16, %eax
	movslq	-48(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movb	(%rdx,%rcx), %sil
	movl	-48(%rbp), %edi
	movl	%eax, -92(%rbp)         ## 4-byte Spill
	movl	%edi, %eax
	cltd
	movl	-92(%rbp), %edi         ## 4-byte Reload
	idivl	%edi
	movslq	%edx, %rcx
	movb	%sil, -32(%rbp,%rcx)
LBB4_14:                                ##   in Loop: Header=BB4_5 Depth=1
	movl	$16, %eax
	movl	-48(%rbp), %ecx
	movl	%eax, -96(%rbp)         ## 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-96(%rbp), %ecx         ## 4-byte Reload
	idivl	%ecx
	addl	$1, %edx
	movslq	%edx, %rsi
	movb	$0, -32(%rbp,%rsi)
## BB#15:                               ##   in Loop: Header=BB4_5 Depth=1
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	LBB4_5
LBB4_16:
	jmp	LBB4_17
LBB4_17:                                ## =>This Inner Loop Header: Depth=1
	movl	$16, %eax
	movl	-48(%rbp), %ecx
	movl	%eax, -100(%rbp)        ## 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-100(%rbp), %ecx        ## 4-byte Reload
	idivl	%ecx
	cmpl	$0, %edx
	je	LBB4_19
## BB#18:                               ##   in Loop: Header=BB4_17 Depth=1
	leaq	L_.str.31(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	-48(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -48(%rbp)
	movl	%eax, -104(%rbp)        ## 4-byte Spill
	jmp	LBB4_17
LBB4_19:
	leaq	L_.str.28(%rip), %rdi
	leaq	-32(%rbp), %rsi
	movb	$0, %al
	callq	_printf
	movl	%eax, -108(%rbp)        ## 4-byte Spill
LBB4_20:
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	cmpq	-8(%rbp), %rax
	jne	LBB4_22
## BB#21:
	addq	$112, %rsp
	popq	%rbp
	retq
LBB4_22:
	callq	___stack_chk_fail
	.cfi_endproc

	.globl	_asm2C_OUT
	.align	4, 0x90
_asm2C_OUT:                             ## @asm2C_OUT
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp15:
	.cfi_def_cfa_offset 16
Ltmp16:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp17:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movw	%di, %ax
	movw	%ax, -2(%rbp)
	movl	%esi, -8(%rbp)
	movswl	-2(%rbp), %esi
	movl	%esi, %edi
	subl	$968, %edi              ## imm = 0x3C8
	movl	%esi, -12(%rbp)         ## 4-byte Spill
	movl	%edi, -16(%rbp)         ## 4-byte Spill
	je	LBB5_1
	jmp	LBB5_8
LBB5_8:
	movl	-12(%rbp), %eax         ## 4-byte Reload
	subl	$969, %eax              ## imm = 0x3C9
	movl	%eax, -20(%rbp)         ## 4-byte Spill
	je	LBB5_2
	jmp	LBB5_6
LBB5_1:
	movl	-8(%rbp), %eax
	movl	%eax, _asm2C_OUT.indexPalette(%rip)
	jmp	LBB5_7
LBB5_2:
	cmpl	$768, _asm2C_OUT.indexPalette(%rip) ## imm = 0x300
	jge	LBB5_4
## BB#3:
	leaq	_m(%rip), %rax
	movl	-8(%rbp), %ecx
	movb	%cl, %dl
	movslq	_asm2C_OUT.indexPalette(%rip), %rsi
	movb	%dl, 4233(%rax,%rsi)
	movl	_asm2C_OUT.indexPalette(%rip), %ecx
	addl	$1, %ecx
	movl	%ecx, _asm2C_OUT.indexPalette(%rip)
	jmp	LBB5_5
LBB5_4:
	leaq	L_.str.32(%rip), %rdi
	movl	_asm2C_OUT.indexPalette(%rip), %esi
	movb	$0, %al
	callq	_printf
	movl	%eax, -24(%rbp)         ## 4-byte Spill
LBB5_5:
	jmp	LBB5_7
LBB5_6:
	leaq	L_.str.33(%rip), %rdi
	movswl	-2(%rbp), %esi
	movl	-8(%rbp), %edx
	movb	$0, %al
	callq	_printf
	movl	%eax, -28(%rbp)         ## 4-byte Spill
LBB5_7:
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_asm2C_IN
	.align	4, 0x90
_asm2C_IN:                              ## @asm2C_IN
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp18:
	.cfi_def_cfa_offset 16
Ltmp19:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp20:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movw	%di, %ax
	movw	%ax, -4(%rbp)
	movzwl	%ax, %edi
	subl	$986, %edi              ## imm = 0x3DA
	movl	%edi, -8(%rbp)          ## 4-byte Spill
	jne	LBB6_4
	jmp	LBB6_1
LBB6_1:
	testb	$1, _asm2C_IN.vblTick(%rip)
	je	LBB6_3
## BB#2:
	movb	$0, _asm2C_IN.vblTick(%rip)
	movb	$0, -1(%rbp)
	jmp	LBB6_5
LBB6_3:
	movb	$1, _asm2C_IN.vblTick(%rip)
	movb	$1, _m+4230(%rip)
	movb	$8, -1(%rbp)
	jmp	LBB6_5
LBB6_4:
	leaq	L_.str.34(%rip), %rdi
	movswl	-4(%rbp), %esi
	movb	$0, %al
	callq	_printf
	movb	$0, -1(%rbp)
	movl	%eax, -12(%rbp)         ## 4-byte Spill
LBB6_5:
	movsbl	-1(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_main
	.align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp21:
	.cfi_def_cfa_offset 16
Ltmp22:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp23:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	$0, -4(%rbp)
	callq	_stackDump
LBB7_1:                                 ## =>This Inner Loop Header: Depth=1
	callq	_program
	cmpl	$0, %eax
	je	LBB7_3
## BB#2:                                ##   in Loop: Header=BB7_1 Depth=1
	jmp	LBB7_1
LBB7_3:
	movzbl	_m+4232(%rip), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.section	__DATA,__data
	.globl	_m                      ## @m
_m:
	.byte	4                       ## 0x4
	.byte	2                       ## 0x2
	.short	11                      ## 0xb
	.long	4294967283              ## 0xfffffff3
	.byte	131                     ## 0x83
	.byte	141                     ## 0x8d
	.short	2                       ## 0x2
	.short	5                       ## 0x5
	.short	0                       ## 0x0
	.long	9                       ## 0x9
	.long	8                       ## 0x8
	.long	7                       ## 0x7
	.long	1                       ## 0x1
	.long	111                     ## 0x6f
	.long	1                       ## 0x1
	.short	223                     ## 0xdf
	.short	22                      ## 0x16
	.ascii	"OKOKOKOK\n\r"
	.space	4,5
	.ascii	"OKOKOKOK"
	.long	10                      ## 0xa
	.ascii	"00000000\r\n$"
	.ascii	"abcd"
	.byte	4                       ## 0x4
	.space	4096
	.long	0                       ## 0x0
	.long	0                       ## 0x0
	.long	0                       ## 0x0
	.long	0                       ## 0x0
	.long	0                       ## 0x0
	.long	0                       ## 0x0
	.long	0                       ## 0x0
	.long	0                       ## 0x0
	.short	0                       ## 0x0
	.short	0                       ## 0x0
	.short	0                       ## 0x0
	.short	0                       ## 0x0
	.short	0                       ## 0x0
	.short	0                       ## 0x0
	.byte	0                       ## 0x0
	.byte	0                       ## 0x0
	.byte	0                       ## 0x0
	.byte	0                       ## 0x0
	.byte	0                       ## 0x0
	.byte	0                       ## 0x0
	.byte	0                       ## 0x0
	.space	768
	.long	0                       ## 0x0
	.space	16384
	.long	1                       ## 0x1
	.space	512
	.long	0                       ## 0x0
	.space	4194304
	.space	64000
	.space	64000
	.space	64000
	.quad	0

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"is_little_endian()=%d\n"

L_.str.1:                               ## @.str.1
	.asciz	"sizeof(dd)=%zu\n"

L_.str.2:                               ## @.str.2
	.asciz	"sizeof(dd *)=%zu\n"

L_.str.3:                               ## @.str.3
	.asciz	"sizeof(dw)=%zu\n"

L_.str.4:                               ## @.str.4
	.asciz	"sizeof(db)=%zu\n"

L_.str.5:                               ## @.str.5
	.asciz	"sizeof(mem)=%zu\n"

L_.str.6:                               ## @.str.6
	.asciz	"eax: %x\n"

L_.str.7:                               ## @.str.7
	.asciz	"ebx: %x\n"

L_.str.8:                               ## @.str.8
	.asciz	"ecx: %x\n"

L_.str.9:                               ## @.str.9
	.asciz	"edx: %x\n"

L_.str.10:                              ## @.str.10
	.asciz	"ebp: %x\n"

L_.str.11:                              ## @.str.11
	.asciz	"cs: %d -> %p\n"

L_.str.12:                              ## @.str.12
	.asciz	"ds: %d -> %p\n"

L_.str.13:                              ## @.str.13
	.asciz	"esi: %x\n"

L_.str.14:                              ## @.str.14
	.asciz	"ds:esi %p\n"

L_.str.15:                              ## @.str.15
	.asciz	"es: %d -> %p\n"

L_.str.16:                              ## @.str.16
	.asciz	"edi: %x\n"

L_.str.17:                              ## @.str.17
	.asciz	"es:edi %p\n"

L_.str.18:                              ## @.str.18
	.asciz	"fs: %d -> %p\n"

L_.str.19:                              ## @.str.19
	.asciz	"gs: %d -> %p\n"

L_.str.20:                              ## @.str.20
	.asciz	"adress heap: %p\n"

L_.str.21:                              ## @.str.21
	.asciz	"adress vgaRam: %p\n"

L_.str.22:                              ## @.str.22
	.asciz	"first pixels vgaRam: %x\n"

L_.str.23:                              ## @.str.23
	.asciz	"flags: ZF = %d\n"

L_.str.24:                              ## @.str.24
	.asciz	"top stack=%d\n"

L_.str.25:                              ## @.str.25
	.asciz	"hexDump %p:\n"

L_.str.26:                              ## @.str.26
	.asciz	"  ZERO LENGTH\n"

L_.str.27:                              ## @.str.27
	.asciz	"  NEGATIVE LENGTH: %i\n"

L_.str.28:                              ## @.str.28
	.asciz	"  %s\n"

L_.str.29:                              ## @.str.29
	.asciz	"  %04x "

L_.str.30:                              ## @.str.30
	.asciz	" %02x"

L_.str.31:                              ## @.str.31
	.asciz	"   "

.zerofill __DATA,__bss,_asm2C_OUT.indexPalette,4,2 ## @asm2C_OUT.indexPalette
L_.str.32:                              ## @.str.32
	.asciz	"Error: indexPalette>767 %d\n"

L_.str.33:                              ## @.str.33
	.asciz	"unknown OUT %d,%d\n"

	.section	__DATA,__data
_asm2C_IN.vblTick:                      ## @asm2C_IN.vblTick
	.byte	1                       ## 0x1

	.section	__TEXT,__cstring,cstring_literals
L_.str.34:                              ## @.str.34
	.asciz	"Unknown IN %d\n"

.zerofill __DATA,__bss,_asm2C_INT.file,8,3 ## @asm2C_INT.file
L_.str.35:                              ## @.str.35
	.asciz	"Switch to text mode\n"

L_.str.36:                              ## @.str.36
	.asciz	"Switch to VGA\n"

L_.str.37:                              ## @.str.37
	.asciz	"%c"

L_.str.38:                              ## @.str.38
	.asciz	"%s/%s"

L_.str.39:                              ## @.str.39
	.asciz	"%s"

L_.str.40:                              ## @.str.40
	.asciz	"rb"

L_.str.41:                              ## @.str.41
	.asciz	"Opening file %s -> %p\n"

L_.str.42:                              ## @.str.42
	.asciz	"Error opening file %s\n"

L_.str.43:                              ## @.str.43
	.asciz	"Closing file. bx:%d\n"

L_.str.44:                              ## @.str.44
	.asciz	"Error"

L_.str.45:                              ## @.str.45
	.asciz	"Error closing file ? bx:%d %p\n"

L_.str.46:                              ## @.str.46
	.asciz	"Reading ecx=%d cx=%d eds=%x edx=%x -> %p file: %p\n"

L_.str.47:                              ## @.str.47
	.asciz	"feof(file)\n"

L_.str.48:                              ## @.str.48
	.asciz	"r!=cx cx:%d R:%zu \n"

L_.str.49:                              ## @.str.49
	.asciz	"Error reading ? %d %zu %p\n"

L_.str.50:                              ## @.str.50
	.asciz	"Reading OK %p\n"

L_.str.51:                              ## @.str.51
	.asciz	"Seeking to offset %ld %d\n"

L_.str.52:                              ## @.str.52
	.asciz	"Error seeking\n"

L_.str.53:                              ## @.str.53
	.asciz	"Function 0000h - Allocate %d Descriptors\n"

L_.str.54:                              ## @.str.54
	.asciz	"Not enough free selectors (increase NB_SELECTORS)\n"

L_.str.55:                              ## @.str.55
	.asciz	"Return %x\n"

L_.str.56:                              ## @.str.56
	.asciz	"Function 0002h - Converts a real mode segment into a protected mode descriptor real mode segment: %d\n"

L_.str.57:                              ## @.str.57
	.asciz	"Returns new selector: eax: %d\n"

L_.str.58:                              ## @.str.58
	.asciz	"Function 0007h - Set Segment Base Address: ebx: %x, edx:%x ecx:%x\n"

L_.str.59:                              ## @.str.59
	.asciz	"Error: selector number doesnt exist\n"

L_.str.60:                              ## @.str.60
	.asciz	"Address for selector %d: %x\n"

L_.str.61:                              ## @.str.61
	.asciz	"Function 0008h - Set Segment Limit for selector %d (Ignored)\n"

L_.str.62:                              ## @.str.62
	.asciz	"Function 0501h - Allocate Memory Block: %d bytes\n"

L_.str.63:                              ## @.str.63
	.asciz	"Not enough memory (increase HEAP_SIZE)\n"

L_.str.64:                              ## @.str.64
	.asciz	"New top of heap: %x\n"

L_.str.65:                              ## @.str.65
	.asciz	"Return %x ebx:ecx %x:%x\n"

L_.str.66:                              ## @.str.66
	.asciz	"Error DOSInt 0x%x ah:0x%x al:0x%x: not supported.\n"


.subsections_via_symbols
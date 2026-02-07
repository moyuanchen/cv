	.file	"main.cpp"
	.text
#APP
	.globl _ZSt21ios_base_library_initv
#NO_APP
	.section	.text._ZN10VPutOptionD2Ev,"axG",@progbits,_ZN10VPutOptionD5Ev,comdat
	.align 2
	.p2align 4
	.weak	_ZN10VPutOptionD2Ev
	.type	_ZN10VPutOptionD2Ev, @function
_ZN10VPutOptionD2Ev:
.LFB5439:
	.cfi_startproc
	endbr64
	ret
	.cfi_endproc
.LFE5439:
	.size	_ZN10VPutOptionD2Ev, .-_ZN10VPutOptionD2Ev
	.weak	_ZN10VPutOptionD1Ev
	.set	_ZN10VPutOptionD1Ev,_ZN10VPutOptionD2Ev
	.section	.text._ZN11VCallOptionD2Ev,"axG",@progbits,_ZN11VCallOptionD5Ev,comdat
	.align 2
	.p2align 4
	.weak	_ZN11VCallOptionD2Ev
	.type	_ZN11VCallOptionD2Ev, @function
_ZN11VCallOptionD2Ev:
.LFB5443:
	.cfi_startproc
	endbr64
	ret
	.cfi_endproc
.LFE5443:
	.size	_ZN11VCallOptionD2Ev, .-_ZN11VCallOptionD2Ev
	.weak	_ZN11VCallOptionD1Ev
	.set	_ZN11VCallOptionD1Ev,_ZN11VCallOptionD2Ev
	.section	.text._ZN11VCallOptionD0Ev,"axG",@progbits,_ZN11VCallOptionD5Ev,comdat
	.align 2
	.p2align 4
	.weak	_ZN11VCallOptionD0Ev
	.type	_ZN11VCallOptionD0Ev, @function
_ZN11VCallOptionD0Ev:
.LFB5445:
	.cfi_startproc
	endbr64
	movl	$32, %esi
	jmp	_ZdlPvm@PLT
	.cfi_endproc
.LFE5445:
	.size	_ZN11VCallOptionD0Ev, .-_ZN11VCallOptionD0Ev
	.section	.text._ZN10VPutOptionD0Ev,"axG",@progbits,_ZN10VPutOptionD5Ev,comdat
	.align 2
	.p2align 4
	.weak	_ZN10VPutOptionD0Ev
	.type	_ZN10VPutOptionD0Ev, @function
_ZN10VPutOptionD0Ev:
.LFB5441:
	.cfi_startproc
	endbr64
	movl	$32, %esi
	jmp	_ZdlPvm@PLT
	.cfi_endproc
.LFE5441:
	.size	_ZN10VPutOptionD0Ev, .-_ZN10VPutOptionD0Ev
	.section	.text._ZNK10VPutOption5priceEv,"axG",@progbits,_ZNK10VPutOption5priceEv,comdat
	.align 2
	.p2align 4
	.weak	_ZNK10VPutOption5priceEv
	.type	_ZNK10VPutOption5priceEv, @function
_ZNK10VPutOption5priceEv:
.LFB4396:
	.cfi_startproc
	endbr64
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rdi, %rbx
	subq	$56, %rsp
	.cfi_def_cfa_offset 80
	vmovss	12(%rdi), %xmm6
	vmovss	16(%rdi), %xmm7
	vdivss	%xmm7, %xmm6, %xmm0
	vmovd	%xmm6, %r14d
	vmovss	%xmm7, 32(%rsp)
	vcvtss2sd	%xmm0, %xmm0, %xmm0
	call	log@PLT
	vmovss	24(%rbx), %xmm2
	vmovss	8(%rbx), %xmm3
	vmovss	20(%rbx), %xmm4
	vmulss	%xmm2, %xmm2, %xmm1
	vcvtss2sd	%xmm2, %xmm2, %xmm2
	vfmadd132ss	.LC0(%rip), %xmm3, %xmm1
	vcvtss2sd	%xmm4, %xmm4, %xmm5
	vmulss	%xmm4, %xmm1, %xmm1
	vcvtss2sd	%xmm1, %xmm1, %xmm1
	vaddsd	%xmm0, %xmm1, %xmm1
	vxorpd	%xmm0, %xmm0, %xmm0
	vucomisd	%xmm5, %xmm0
	ja	.L11
	vsqrtsd	%xmm5, %xmm5, %xmm5
	vmulsd	%xmm5, %xmm2, %xmm2
	vdivsd	%xmm2, %xmm1, %xmm1
	vcvtsd2ss	%xmm1, %xmm1, %xmm1
	vcvtss2sd	%xmm1, %xmm1, %xmm1
.L9:
	vmulsd	.LC2(%rip), %xmm1, %xmm0
	vmovsd	%xmm2, 40(%rsp)
	vmovsd	%xmm1, 24(%rsp)
	vmovss	%xmm4, 36(%rsp)
	vmovss	%xmm3, 8(%rsp)
	call	erfc@PLT
	vmovss	8(%rsp), %xmm3
	vmovss	36(%rsp), %xmm4
	vmovss	.LC3(%rip), %xmm5
	vmovsd	%xmm0, 16(%rsp)
	vxorps	%xmm5, %xmm3, %xmm3
	vmulss	%xmm4, %xmm3, %xmm3
	vcvtss2sd	%xmm3, %xmm3, %xmm0
	call	exp@PLT
	vmovsd	24(%rsp), %xmm1
	vmovsd	40(%rsp), %xmm2
	vmovsd	%xmm0, 8(%rsp)
	vsubsd	%xmm2, %xmm1, %xmm0
	vcvtsd2ss	%xmm0, %xmm0, %xmm0
	vcvtss2sd	%xmm0, %xmm0, %xmm0
	vmulsd	.LC2(%rip), %xmm0, %xmm0
	call	erfc@PLT
	vmovd	%r14d, %xmm6
	vmovsd	.LC4(%rip), %xmm3
	vmovss	.LC3(%rip), %xmm5
	vxorps	%xmm5, %xmm6, %xmm2
	vcvtss2sd	32(%rsp), %xmm1, %xmm1
	vmulsd	%xmm3, %xmm0, %xmm0
	vmulsd	16(%rsp), %xmm3, %xmm3
	vmulsd	8(%rsp), %xmm1, %xmm1
	addq	$56, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	vcvtsd2ss	%xmm0, %xmm0, %xmm0
	vcvtss2sd	%xmm0, %xmm0, %xmm0
	vcvtsd2ss	%xmm3, %xmm3, %xmm3
	vmulss	%xmm3, %xmm2, %xmm2
	vcvtss2sd	%xmm2, %xmm2, %xmm2
	vfmadd132sd	%xmm1, %xmm2, %xmm0
	vcvtsd2ss	%xmm0, %xmm0, %xmm0
	ret
.L11:
	.cfi_restore_state
	vmovsd	%xmm5, %xmm5, %xmm0
	vmovss	%xmm4, 40(%rsp)
	vmovss	%xmm3, 36(%rsp)
	vmovsd	%xmm2, 16(%rsp)
	vmovsd	%xmm1, 8(%rsp)
	vmovsd	%xmm5, 24(%rsp)
	call	sqrt@PLT
	vmovsd	16(%rsp), %xmm2
	vmovsd	8(%rsp), %xmm1
	vmovsd	24(%rsp), %xmm5
	vmulsd	%xmm0, %xmm2, %xmm0
	vdivsd	%xmm0, %xmm1, %xmm1
	vmovsd	%xmm5, %xmm5, %xmm0
	vcvtsd2ss	%xmm1, %xmm1, %xmm1
	vcvtss2sd	%xmm1, %xmm1, %xmm1
	vmovsd	%xmm1, 8(%rsp)
	call	sqrt@PLT
	vmovsd	16(%rsp), %xmm2
	vmovss	40(%rsp), %xmm4
	vmovss	36(%rsp), %xmm3
	vmovsd	8(%rsp), %xmm1
	vmulsd	%xmm0, %xmm2, %xmm2
	jmp	.L9
	.cfi_endproc
.LFE4396:
	.size	_ZNK10VPutOption5priceEv, .-_ZNK10VPutOption5priceEv
	.section	.text._ZNK11VCallOption5priceEv,"axG",@progbits,_ZNK11VCallOption5priceEv,comdat
	.align 2
	.p2align 4
	.weak	_ZNK11VCallOption5priceEv
	.type	_ZNK11VCallOption5priceEv, @function
_ZNK11VCallOption5priceEv:
.LFB4392:
	.cfi_startproc
	endbr64
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdi, %rbx
	subq	$48, %rsp
	.cfi_def_cfa_offset 64
	vmovss	12(%rdi), %xmm6
	vmovss	16(%rdi), %xmm7
	vdivss	%xmm7, %xmm6, %xmm0
	vmovss	%xmm6, 4(%rsp)
	vmovss	%xmm7, 40(%rsp)
	vcvtss2sd	%xmm0, %xmm0, %xmm0
	call	log@PLT
	vmovss	24(%rbx), %xmm2
	vmovss	8(%rbx), %xmm3
	vmovss	20(%rbx), %xmm4
	vmulss	%xmm2, %xmm2, %xmm1
	vcvtss2sd	%xmm2, %xmm2, %xmm2
	vfmadd132ss	.LC0(%rip), %xmm3, %xmm1
	vcvtss2sd	%xmm4, %xmm4, %xmm5
	vmulss	%xmm4, %xmm1, %xmm1
	vcvtss2sd	%xmm1, %xmm1, %xmm1
	vaddsd	%xmm0, %xmm1, %xmm1
	vxorpd	%xmm0, %xmm0, %xmm0
	vucomisd	%xmm5, %xmm0
	ja	.L18
	vsqrtsd	%xmm5, %xmm5, %xmm5
	vmulsd	%xmm5, %xmm2, %xmm2
	vdivsd	%xmm2, %xmm1, %xmm1
	vcvtsd2ss	%xmm1, %xmm1, %xmm1
	vcvtss2sd	%xmm1, %xmm1, %xmm5
	vmovq	%xmm5, %rbx
.L16:
	vxorps	.LC3(%rip), %xmm1, %xmm1
	vmovsd	%xmm2, 32(%rsp)
	vmovss	%xmm4, 24(%rsp)
	vcvtss2sd	%xmm1, %xmm1, %xmm1
	vmulsd	.LC2(%rip), %xmm1, %xmm0
	vmovss	%xmm3, 8(%rsp)
	call	erfc@PLT
	vmovss	24(%rsp), %xmm4
	vmovss	8(%rsp), %xmm3
	vxorps	.LC3(%rip), %xmm3, %xmm3
	vmovsd	%xmm0, 16(%rsp)
	vmulss	%xmm4, %xmm3, %xmm3
	vcvtss2sd	%xmm3, %xmm3, %xmm0
	call	exp@PLT
	vmovsd	32(%rsp), %xmm2
	vmovq	%rbx, %xmm5
	vmovsd	%xmm0, 8(%rsp)
	vsubsd	%xmm2, %xmm5, %xmm0
	vcvtsd2ss	%xmm0, %xmm0, %xmm0
	vxorps	.LC3(%rip), %xmm0, %xmm0
	vcvtss2sd	%xmm0, %xmm0, %xmm0
	vmulsd	.LC2(%rip), %xmm0, %xmm0
	call	erfc@PLT
	vmovsd	.LC4(%rip), %xmm2
	vcvtss2sd	40(%rsp), %xmm1, %xmm1
	vmulsd	8(%rsp), %xmm1, %xmm1
	vmulsd	%xmm2, %xmm0, %xmm0
	vmulsd	16(%rsp), %xmm2, %xmm2
	vcvtsd2ss	%xmm0, %xmm0, %xmm0
	vcvtss2sd	%xmm0, %xmm0, %xmm0
	vcvtsd2ss	%xmm2, %xmm2, %xmm2
	vmulss	4(%rsp), %xmm2, %xmm2
	addq	$48, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	vcvtss2sd	%xmm2, %xmm2, %xmm2
	vfnmadd132sd	%xmm1, %xmm2, %xmm0
	vcvtsd2ss	%xmm0, %xmm0, %xmm0
	ret
.L18:
	.cfi_restore_state
	vmovsd	%xmm5, %xmm5, %xmm0
	vmovss	%xmm3, 32(%rsp)
	vmovsd	%xmm2, 16(%rsp)
	vmovsd	%xmm1, 8(%rsp)
	vmovss	%xmm4, 44(%rsp)
	vmovsd	%xmm5, 24(%rsp)
	call	sqrt@PLT
	vmovsd	16(%rsp), %xmm2
	vmovsd	8(%rsp), %xmm1
	vmovsd	24(%rsp), %xmm5
	vmulsd	%xmm0, %xmm2, %xmm0
	vdivsd	%xmm0, %xmm1, %xmm1
	vmovsd	%xmm5, %xmm5, %xmm0
	vcvtsd2ss	%xmm1, %xmm1, %xmm1
	vcvtss2sd	%xmm1, %xmm1, %xmm4
	vmovss	%xmm1, 8(%rsp)
	vmovq	%xmm4, %rbx
	call	sqrt@PLT
	vmovsd	16(%rsp), %xmm2
	vmovss	44(%rsp), %xmm4
	vmovss	32(%rsp), %xmm3
	vmovss	8(%rsp), %xmm1
	vmulsd	%xmm0, %xmm2, %xmm2
	jmp	.L16
	.cfi_endproc
.LFE4392:
	.size	_ZNK11VCallOption5priceEv, .-_ZNK11VCallOption5priceEv
	.text
	.p2align 4
	.type	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0, @function
_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0:
.LFB5450:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	movq	(%rdi), %rax
	movq	-24(%rax), %rax
	movq	240(%rdi,%rax), %rbp
	testq	%rbp, %rbp
	je	.L25
	cmpb	$0, 56(%rbp)
	movq	%rdi, %rbx
	je	.L22
	movsbl	67(%rbp), %esi
.L23:
	movq	%rbx, %rdi
	call	_ZNSo3putEc@PLT
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	movq	%rax, %rdi
	popq	%rbp
	.cfi_def_cfa_offset 8
	jmp	_ZNSo5flushEv@PLT
.L22:
	.cfi_restore_state
	movq	%rbp, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	0(%rbp), %rax
	movl	$10, %esi
	movq	%rbp, %rdi
	call	*48(%rax)
	movsbl	%al, %esi
	jmp	.L23
.L25:
	call	_ZSt16__throw_bad_castv@PLT
	.cfi_endproc
.LFE5450:
	.size	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0, .-_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0
	.section	.text._ZNSt13random_deviceC2Ev,"axG",@progbits,_ZNSt13random_deviceC5Ev,comdat
	.align 2
	.p2align 4
	.weak	_ZNSt13random_deviceC2Ev
	.type	_ZNSt13random_deviceC2Ev, @function
_ZNSt13random_deviceC2Ev:
.LFB3119:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA3119
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$56, %rsp
	.cfi_def_cfa_offset 80
	movq	%fs:40, %rax
	movq	%rax, 40(%rsp)
	xorl	%eax, %eax
	movq	%rsp, %rbp
	leaq	16(%rsp), %rbx
	movb	$0, 23(%rsp)
	movq	%rbp, %rsi
	movq	%rbx, (%rsp)
	movl	$1634100580, 16(%rsp)
	movq	$7, 8(%rsp)
	movl	$1953264993, 19(%rsp)
.LEHB0:
	call	_ZNSt13random_device7_M_initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE@PLT
.LEHE0:
	movq	(%rsp), %rdi
	cmpq	%rbx, %rdi
	je	.L26
	movq	16(%rsp), %rax
	leaq	1(%rax), %rsi
	call	_ZdlPvm@PLT
.L26:
	movq	40(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L34
	addq	$56, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
.L28:
	.cfi_restore_state
	movq	%rbp, %rdi
	vzeroupper
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	movq	40(%rsp), %rax
	subq	%fs:40, %rax
	je	.L29
.L34:
	call	__stack_chk_fail@PLT
.L31:
	endbr64
	movq	%rax, %rbx
	jmp	.L28
.L29:
	movq	%rbx, %rdi
.LEHB1:
	call	_Unwind_Resume@PLT
.LEHE1:
	.cfi_endproc
.LFE3119:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table._ZNSt13random_deviceC2Ev,"aG",@progbits,_ZNSt13random_deviceC5Ev,comdat
.LLSDA3119:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3119-.LLSDACSB3119
.LLSDACSB3119:
	.uleb128 .LEHB0-.LFB3119
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L31-.LFB3119
	.uleb128 0
	.uleb128 .LEHB1-.LFB3119
	.uleb128 .LEHE1-.LEHB1
	.uleb128 0
	.uleb128 0
.LLSDACSE3119:
	.section	.text._ZNSt13random_deviceC2Ev,"axG",@progbits,_ZNSt13random_deviceC5Ev,comdat
	.size	_ZNSt13random_deviceC2Ev, .-_ZNSt13random_deviceC2Ev
	.weak	_ZNSt13random_deviceC1Ev
	.set	_ZNSt13random_deviceC1Ev,_ZNSt13random_deviceC2Ev
	.text
	.p2align 4
	.globl	_Z3cdff
	.type	_Z3cdff, @function
_Z3cdff:
.LFB4372:
	.cfi_startproc
	endbr64
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	vxorps	.LC3(%rip), %xmm0, %xmm0
	vcvtss2sd	%xmm0, %xmm0, %xmm0
	vmulsd	.LC2(%rip), %xmm0, %xmm0
	call	erfc@PLT
	vmulsd	.LC4(%rip), %xmm0, %xmm0
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	vcvtsd2ss	%xmm0, %xmm0, %xmm0
	ret
	.cfi_endproc
.LFE4372:
	.size	_Z3cdff, .-_Z3cdff
	.section	.text._ZNSt6vectorI10CallOptionSaIS0_EED2Ev,"axG",@progbits,_ZNSt6vectorI10CallOptionSaIS0_EED5Ev,comdat
	.align 2
	.p2align 4
	.weak	_ZNSt6vectorI10CallOptionSaIS0_EED2Ev
	.type	_ZNSt6vectorI10CallOptionSaIS0_EED2Ev, @function
_ZNSt6vectorI10CallOptionSaIS0_EED2Ev:
.LFB4795:
	.cfi_startproc
	endbr64
	movq	(%rdi), %rax
	testq	%rax, %rax
	je	.L39
	movq	16(%rdi), %rsi
	movq	%rax, %rdi
	subq	%rax, %rsi
	jmp	_ZdlPvm@PLT
	.p2align 4,,10
	.p2align 3
.L39:
	ret
	.cfi_endproc
.LFE4795:
	.size	_ZNSt6vectorI10CallOptionSaIS0_EED2Ev, .-_ZNSt6vectorI10CallOptionSaIS0_EED2Ev
	.weak	_ZNSt6vectorI10CallOptionSaIS0_EED1Ev
	.set	_ZNSt6vectorI10CallOptionSaIS0_EED1Ev,_ZNSt6vectorI10CallOptionSaIS0_EED2Ev
	.section	.text._ZNSt6vectorI9PutOptionSaIS0_EED2Ev,"axG",@progbits,_ZNSt6vectorI9PutOptionSaIS0_EED5Ev,comdat
	.align 2
	.p2align 4
	.weak	_ZNSt6vectorI9PutOptionSaIS0_EED2Ev
	.type	_ZNSt6vectorI9PutOptionSaIS0_EED2Ev, @function
_ZNSt6vectorI9PutOptionSaIS0_EED2Ev:
.LFB4812:
	.cfi_startproc
	endbr64
	movq	(%rdi), %rax
	testq	%rax, %rax
	je	.L42
	movq	16(%rdi), %rsi
	movq	%rax, %rdi
	subq	%rax, %rsi
	jmp	_ZdlPvm@PLT
	.p2align 4,,10
	.p2align 3
.L42:
	ret
	.cfi_endproc
.LFE4812:
	.size	_ZNSt6vectorI9PutOptionSaIS0_EED2Ev, .-_ZNSt6vectorI9PutOptionSaIS0_EED2Ev
	.weak	_ZNSt6vectorI9PutOptionSaIS0_EED1Ev
	.set	_ZNSt6vectorI9PutOptionSaIS0_EED1Ev,_ZNSt6vectorI9PutOptionSaIS0_EED2Ev
	.section	.text._ZNSt6vectorIP11VBaseOptionSaIS1_EED2Ev,"axG",@progbits,_ZNSt6vectorIP11VBaseOptionSaIS1_EED5Ev,comdat
	.align 2
	.p2align 4
	.weak	_ZNSt6vectorIP11VBaseOptionSaIS1_EED2Ev
	.type	_ZNSt6vectorIP11VBaseOptionSaIS1_EED2Ev, @function
_ZNSt6vectorIP11VBaseOptionSaIS1_EED2Ev:
.LFB4829:
	.cfi_startproc
	endbr64
	movq	(%rdi), %rax
	testq	%rax, %rax
	je	.L45
	movq	16(%rdi), %rsi
	movq	%rax, %rdi
	subq	%rax, %rsi
	jmp	_ZdlPvm@PLT
	.p2align 4,,10
	.p2align 3
.L45:
	ret
	.cfi_endproc
.LFE4829:
	.size	_ZNSt6vectorIP11VBaseOptionSaIS1_EED2Ev, .-_ZNSt6vectorIP11VBaseOptionSaIS1_EED2Ev
	.weak	_ZNSt6vectorIP11VBaseOptionSaIS1_EED1Ev
	.set	_ZNSt6vectorIP11VBaseOptionSaIS1_EED1Ev,_ZNSt6vectorIP11VBaseOptionSaIS1_EED2Ev
	.section	.rodata._ZNSt6vectorIP11VBaseOptionSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.str1.1,"aMS",@progbits,1
.LC5:
	.string	"vector::_M_realloc_insert"
	.section	.text._ZNSt6vectorIP11VBaseOptionSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_,"axG",@progbits,_ZNSt6vectorIP11VBaseOptionSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_,comdat
	.align 2
	.p2align 4
	.weak	_ZNSt6vectorIP11VBaseOptionSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
	.type	_ZNSt6vectorIP11VBaseOptionSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_, @function
_ZNSt6vectorIP11VBaseOptionSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_:
.LFB5273:
	.cfi_startproc
	endbr64
	movabsq	$1152921504606846975, %rcx
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$40, %rsp
	.cfi_def_cfa_offset 96
	movq	8(%rdi), %r12
	movq	(%rdi), %r13
	movq	%r12, %rax
	subq	%r13, %rax
	sarq	$3, %rax
	cmpq	%rcx, %rax
	je	.L69
	movq	%rsi, %r15
	movq	%rdi, %rbp
	movq	%rsi, %r14
	subq	%r13, %r15
	cmpq	%r12, %r13
	je	.L70
	leaq	(%rax,%rax), %rcx
	cmpq	%rax, %rcx
	jb	.L61
	testq	%rcx, %rcx
	jne	.L71
	xorl	%ebx, %ebx
	xorl	%edi, %edi
.L52:
	movq	(%rdx), %rax
	leaq	8(%rdi,%r15), %rcx
	subq	%r14, %r12
	vmovq	%rdi, %xmm1
	movq	%rax, (%rdi,%r15)
	leaq	(%rcx,%r12), %rax
	vpinsrq	$1, %rax, %xmm1, %xmm0
	vmovdqa	%xmm0, (%rsp)
	testq	%r15, %r15
	jg	.L72
	testq	%r12, %r12
	jle	.L56
	movq	%r12, %rdx
	movq	%r14, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
.L56:
	testq	%r13, %r13
	jne	.L55
.L58:
	vmovdqa	(%rsp), %xmm2
	movq	%rbx, 16(%rbp)
	vmovdqu	%xmm2, 0(%rbp)
	addq	$40, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L61:
	.cfi_restore_state
	movabsq	$9223372036854775800, %rbx
.L51:
	movq	%rbx, %rdi
	movq	%rdx, (%rsp)
	call	_Znwm@PLT
	movq	(%rsp), %rdx
	movq	%rax, %rdi
	addq	%rax, %rbx
	jmp	.L52
	.p2align 4,,10
	.p2align 3
.L72:
	movq	%r15, %rdx
	movq	%r13, %rsi
	movq	%rcx, 24(%rsp)
	call	memmove@PLT
	testq	%r12, %r12
	jg	.L73
.L55:
	movq	16(%rbp), %rsi
	movq	%r13, %rdi
	subq	%r13, %rsi
	call	_ZdlPvm@PLT
	jmp	.L58
	.p2align 4,,10
	.p2align 3
.L70:
	addq	$1, %rax
	jc	.L61
	movabsq	$1152921504606846975, %rcx
	cmpq	%rcx, %rax
	movq	%rcx, %rbx
	cmovbe	%rax, %rbx
	salq	$3, %rbx
	jmp	.L51
	.p2align 4,,10
	.p2align 3
.L73:
	movq	24(%rsp), %rdi
	movq	%r14, %rsi
	movq	%r12, %rdx
	call	memcpy@PLT
	movq	16(%rbp), %rsi
	movq	%r13, %rdi
	subq	%r13, %rsi
	call	_ZdlPvm@PLT
	jmp	.L58
.L71:
	movabsq	$1152921504606846975, %rax
	cmpq	%rax, %rcx
	cmova	%rax, %rcx
	leaq	0(,%rcx,8), %rbx
	jmp	.L51
.L69:
	leaq	.LC5(%rip), %rdi
	call	_ZSt20__throw_length_errorPKc@PLT
	.cfi_endproc
.LFE5273:
	.size	_ZNSt6vectorIP11VBaseOptionSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_, .-_ZNSt6vectorIP11VBaseOptionSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
	.section	.text._ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv,"axG",@progbits,_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv,comdat
	.align 2
	.p2align 4
	.weak	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv
	.type	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv, @function
_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv:
.LFB5428:
	.cfi_startproc
	endbr64
	movq	%rdi, %rdx
	leaq	1792(%rdi), %rcx
	vpxor	%xmm7, %xmm7, %xmm7
	movq	%rdi, %rax
	movq	$-2147483648, %rdi
	vmovq	%rdi, %xmm0
	movl	$2147483647, %edi
	vmovq	%rdi, %xmm1
	movl	$1, %edi
	vpbroadcastq	%xmm0, %ymm10
	vmovq	%rdi, %xmm2
	movl	$2567483615, %edi
	vpbroadcastq	%xmm1, %ymm9
	vmovq	%rdi, %xmm3
	vpbroadcastq	%xmm2, %ymm8
	vpbroadcastq	%xmm3, %ymm6
	.p2align 4,,10
	.p2align 3
.L75:
	vpand	8(%rax), %ymm9, %ymm5
	vpand	(%rax), %ymm10, %ymm4
	addq	$32, %rax
	vpor	%ymm5, %ymm4, %ymm4
	vpsrlq	$1, %ymm4, %ymm5
	vpand	%ymm8, %ymm4, %ymm4
	vpxor	3144(%rax), %ymm5, %ymm5
	vpsubq	%ymm4, %ymm7, %ymm4
	vpand	%ymm6, %ymm4, %ymm4
	vpxor	%ymm4, %ymm5, %ymm4
	vmovdqu	%ymm4, -32(%rax)
	cmpq	%rax, %rcx
	jne	.L75
	movq	1808(%rdx), %rax
	vpunpcklqdq	%xmm0, %xmm0, %xmm0
	vpunpcklqdq	%xmm1, %xmm1, %xmm1
	vpunpcklqdq	%xmm2, %xmm2, %xmm2
	movq	1816(%rdx), %rcx
	vpand	1800(%rdx), %xmm1, %xmm1
	vpxor	%xmm6, %xmm6, %xmm6
	leaq	4984(%rdx), %rsi
	andq	$-2147483648, %rax
	vpand	1792(%rdx), %xmm0, %xmm0
	andl	$2147483647, %ecx
	orq	%rcx, %rax
	vpor	%xmm1, %xmm0, %xmm0
	movq	%rax, %rcx
	vpsrlq	$1, %xmm0, %xmm1
	vpand	%xmm2, %xmm0, %xmm0
	andl	$1, %eax
	negq	%rax
	vpxor	%xmm2, %xmm2, %xmm2
	shrq	%rcx
	xorq	4984(%rdx), %rcx
	andl	$2567483615, %eax
	vpxor	4968(%rdx), %xmm1, %xmm1
	vpsubq	%xmm0, %xmm2, %xmm0
	xorq	%rcx, %rax
	vpunpcklqdq	%xmm3, %xmm3, %xmm2
	leaq	1816(%rdx), %rcx
	vpbroadcastq	.LC14(%rip), %ymm3
	vpand	%xmm2, %xmm0, %xmm0
	movq	%rax, 1808(%rdx)
	movl	$2567483615, %eax
	vpbroadcastq	.LC15(%rip), %ymm2
	vpxor	%xmm0, %xmm1, %xmm0
	vmovq	%rax, %xmm7
	vpbroadcastq	.LC16(%rip), %ymm1
	vmovdqu	%xmm0, 1792(%rdx)
	vpbroadcastq	%xmm7, %ymm0
.L76:
	vpand	8(%rcx), %ymm2, %ymm5
	vpand	(%rcx), %ymm3, %ymm4
	addq	$32, %rcx
	vpor	%ymm5, %ymm4, %ymm4
	vpsrlq	$1, %ymm4, %ymm5
	vpand	%ymm1, %ymm4, %ymm4
	vpxor	-1848(%rcx), %ymm5, %ymm5
	vpsubq	%ymm4, %ymm6, %ymm4
	vpand	%ymm0, %ymm4, %ymm4
	vpxor	%ymm4, %ymm5, %ymm4
	vmovdqu	%ymm4, -32(%rcx)
	cmpq	%rcx, %rsi
	jne	.L76
	movq	4984(%rdx), %rax
	movq	(%rdx), %rcx
	movq	$0, 4992(%rdx)
	andl	$2147483647, %ecx
	andq	$-2147483648, %rax
	orq	%rcx, %rax
	movq	%rax, %rcx
	andl	$1, %eax
	negq	%rax
	shrq	%rcx
	xorq	3168(%rdx), %rcx
	andl	$2567483615, %eax
	xorq	%rcx, %rax
	movq	%rax, 4984(%rdx)
	vzeroupper
	ret
	.cfi_endproc
.LFE5428:
	.size	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv, .-_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC30:
	.string	"CRTP pricing of "
.LC31:
	.string	" options took "
.LC32:
	.string	" microseconds"
.LC33:
	.string	"Portfolio Value: "
.LC34:
	.string	"Virtual pricing of "
	.section	.text.unlikely,"ax",@progbits
.LCOLDB36:
	.section	.text.startup,"ax",@progbits
.LHOTB36:
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB4397:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA4397
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$4096, %rsp
	.cfi_def_cfa_offset 4152
	orq	$0, (%rsp)
	subq	$4096, %rsp
	.cfi_def_cfa_offset 8248
	orq	$0, (%rsp)
	subq	$2072, %rsp
	.cfi_def_cfa_offset 10320
	movq	%fs:40, %rax
	movq	%rax, 10248(%rsp)
	xorl	%eax, %eax
	leaq	240(%rsp), %rax
	movq	%rax, %rbx
	movq	%rax, %rdi
	movq	%rax, 112(%rsp)
.LEHB2:
	call	_ZNSt13random_deviceC1Ev
.LEHE2:
	movq	%rbx, %rdi
.LEHB3:
	call	_ZNSt13random_device9_M_getvalEv@PLT
.LEHE3:
	movl	%eax, %eax
	movl	$1, %ebx
	leaq	5248(%rsp), %r13
	movq	%rax, 5248(%rsp)
	movq	%rax, %rdx
	.p2align 4,,10
	.p2align 3
.L80:
	movq	%rdx, %rax
	shrq	$30, %rax
	xorq	%rdx, %rax
	imulq	$1812433253, %rax, %rax
	leal	(%rax,%rbx), %edx
	movq	%rdx, 0(%r13,%rbx,8)
	incq	%rbx
	cmpq	$624, %rbx
	jne	.L80
	vpxor	%xmm0, %xmm0, %xmm0
	movl	$20000000, %edi
	movq	$624, 10240(%rsp)
	movq	$0, 160(%rsp)
	vmovdqa	%xmm0, 144(%rsp)
.LEHB4:
	call	_Znwm@PLT
.LEHE4:
	vmovq	%rax, %xmm4
	movq	%rax, %r12
	movl	$20000000, %edi
	movq	$0, 192(%rsp)
	vpunpcklqdq	%xmm4, %xmm4, %xmm0
	leaq	20000000(%rax), %rax
	vmovdqa	%xmm0, 144(%rsp)
	vpxor	%xmm0, %xmm0, %xmm0
	movq	%rax, 80(%rsp)
	movq	%rax, 160(%rsp)
	vmovdqa	%xmm0, 176(%rsp)
.LEHB5:
	call	_Znwm@PLT
.LEHE5:
	vmovq	%rax, %xmm7
	movq	%rax, %rbp
	movl	$16000000, %edi
	movq	$0, 224(%rsp)
	vpunpcklqdq	%xmm7, %xmm7, %xmm0
	leaq	20000000(%rax), %rax
	vmovdqa	%xmm0, 176(%rsp)
	vpxor	%xmm0, %xmm0, %xmm0
	movq	%rax, 192(%rsp)
	vmovdqa	%xmm0, 208(%rsp)
.LEHB6:
	call	_Znwm@PLT
	vmovq	%rax, %xmm1
	addq	$16000000, %rax
	movl	$1000000, %r15d
	vpunpcklqdq	%xmm1, %xmm1, %xmm0
	movq	%rax, 224(%rsp)
	vmovdqa	%xmm0, 208(%rsp)
	jmp	.L81
	.p2align 4,,10
	.p2align 3
.L192:
	vxorps	%xmm4, %xmm4, %xmm4
	vcvtsi2ssq	%rax, %xmm4, %xmm0
.L83:
	vxorps	%xmm7, %xmm7, %xmm7
	vaddss	%xmm7, %xmm0, %xmm0
	vmulss	.LC22(%rip), %xmm0, %xmm0
	vcomiss	.LC23(%rip), %xmm0
	jnb	.L153
	vfmadd132ss	.LC24(%rip), %xmm7, %xmm0
	vmovss	%xmm0, 48(%rsp)
.L84:
	cmpq	$623, %rcx
	ja	.L186
.L87:
	movq	5248(%rsp,%rcx,8), %rax
	leaq	1(%rcx), %rdx
	movq	%rdx, 10240(%rsp)
	movq	%rax, %rcx
	shrq	$11, %rcx
	movl	%ecx, %ecx
	xorq	%rcx, %rax
	movq	%rax, %rcx
	salq	$7, %rcx
	andl	$2636928640, %ecx
	xorq	%rcx, %rax
	movq	%rax, %rcx
	salq	$15, %rcx
	andl	$4022730752, %ecx
	xorq	%rcx, %rax
	movq	%rax, %rcx
	shrq	$18, %rcx
	xorq	%rcx, %rax
	js	.L88
	vxorps	%xmm3, %xmm3, %xmm3
	vcvtsi2ssq	%rax, %xmm3, %xmm0
.L89:
	vxorps	%xmm2, %xmm2, %xmm2
	vaddss	%xmm2, %xmm0, %xmm0
	vmulss	.LC22(%rip), %xmm0, %xmm0
	vcomiss	.LC23(%rip), %xmm0
	jnb	.L154
	vmovss	.LC26(%rip), %xmm2
	vfmadd132ss	.LC25(%rip), %xmm2, %xmm0
	vmovss	%xmm0, 32(%rsp)
.L90:
	cmpq	$623, %rdx
	ja	.L187
.L91:
	movq	5248(%rsp,%rdx,8), %rax
	leaq	1(%rdx), %rcx
	movq	%rcx, 10240(%rsp)
	movq	%rax, %rdx
	shrq	$11, %rdx
	movl	%edx, %edx
	xorq	%rdx, %rax
	movq	%rax, %rdx
	salq	$7, %rdx
	andl	$2636928640, %edx
	xorq	%rdx, %rax
	movq	%rax, %rdx
	salq	$15, %rdx
	andl	$4022730752, %edx
	xorq	%rdx, %rax
	movq	%rax, %rdx
	shrq	$18, %rdx
	xorq	%rdx, %rax
	js	.L92
	vxorps	%xmm5, %xmm5, %xmm5
	vcvtsi2ssq	%rax, %xmm5, %xmm0
.L93:
	vxorps	%xmm5, %xmm5, %xmm5
	vaddss	%xmm5, %xmm0, %xmm0
	vmulss	.LC22(%rip), %xmm0, %xmm0
	vcomiss	.LC23(%rip), %xmm0
	jnb	.L155
	vmovss	.LC26(%rip), %xmm6
	vfmadd132ss	.LC25(%rip), %xmm6, %xmm0
	vmovss	%xmm0, 16(%rsp)
.L94:
	cmpq	$623, %rcx
	ja	.L188
.L95:
	movq	5248(%rsp,%rcx,8), %rax
	leaq	1(%rcx), %rdx
	movq	%rdx, 10240(%rsp)
	movq	%rax, %rcx
	shrq	$11, %rcx
	movl	%ecx, %ecx
	xorq	%rcx, %rax
	movq	%rax, %rcx
	salq	$7, %rcx
	andl	$2636928640, %ecx
	xorq	%rcx, %rax
	movq	%rax, %rcx
	salq	$15, %rcx
	andl	$4022730752, %ecx
	xorq	%rcx, %rax
	movq	%rax, %rcx
	shrq	$18, %rcx
	xorq	%rcx, %rax
	js	.L96
	vxorps	%xmm1, %xmm1, %xmm1
	vcvtsi2ssq	%rax, %xmm1, %xmm0
.L97:
	vxorps	%xmm1, %xmm1, %xmm1
	vaddss	%xmm1, %xmm0, %xmm0
	vmulss	.LC22(%rip), %xmm0, %xmm0
	vcomiss	.LC23(%rip), %xmm0
	jnb	.L156
	vmovss	.LC28(%rip), %xmm4
	vfmadd132ss	.LC27(%rip), %xmm4, %xmm0
	vmovss	%xmm0, 56(%rsp)
.L98:
	cmpq	$623, %rdx
	ja	.L189
.L99:
	movq	5248(%rsp,%rdx,8), %rax
	leaq	1(%rdx), %rbx
	movq	%rbx, 10240(%rsp)
	movq	%rax, %rdx
	shrq	$11, %rdx
	movl	%edx, %edx
	xorq	%rdx, %rax
	movq	%rax, %rdx
	salq	$7, %rdx
	andl	$2636928640, %edx
	xorq	%rdx, %rax
	movq	%rax, %rdx
	salq	$15, %rdx
	andl	$4022730752, %edx
	xorq	%rdx, %rax
	movq	%rax, %rdx
	shrq	$18, %rdx
	xorq	%rdx, %rax
	js	.L100
	vxorps	%xmm4, %xmm4, %xmm4
	vcvtsi2ssq	%rax, %xmm4, %xmm0
.L101:
	vxorps	%xmm7, %xmm7, %xmm7
	vaddss	%xmm7, %xmm0, %xmm0
	vmulss	.LC22(%rip), %xmm0, %xmm0
	vcomiss	.LC23(%rip), %xmm0
	jnb	.L157
	vmovss	.LC28(%rip), %xmm3
	vfmadd132ss	.LC29(%rip), %xmm3, %xmm0
	vmovss	%xmm0, (%rsp)
.L102:
	cmpq	%r12, 80(%rsp)
	je	.L103
	vmovss	16(%rsp), %xmm5
	vmovss	48(%rsp), %xmm1
	addq	$20, %r12
	vinsertps	$0x10, 56(%rsp), %xmm5, %xmm4
	vinsertps	$0x10, 32(%rsp), %xmm1, %xmm3
	vmovss	(%rsp), %xmm7
	vmovlhps	%xmm4, %xmm3, %xmm0
	vmovlps	%xmm4, 16(%rsp)
	vmovups	%xmm0, -20(%r12)
	vmovss	%xmm7, -4(%r12)
	vmovlps	%xmm3, 48(%rsp)
	movq	%r12, 152(%rsp)
	cmpq	%rbp, 192(%rsp)
	je	.L115
.L196:
	vmovq	48(%rsp), %xmm2
	vmovss	(%rsp), %xmm6
	addq	$20, %rbp
	vmovhps	16(%rsp), %xmm2, %xmm0
	vmovss	%xmm6, -4(%rbp)
	vmovups	%xmm0, -20(%rbp)
	movq	%rbp, 184(%rsp)
.L116:
	movl	$32, %edi
	call	_Znwm@PLT
	vmovq	48(%rsp), %xmm2
	vmovss	(%rsp), %xmm4
	leaq	16+_ZTV11VCallOption(%rip), %rdi
	movq	%rax, 136(%rsp)
	movq	%rdi, (%rax)
	movq	216(%rsp), %rsi
	vmovhps	16(%rsp), %xmm2, %xmm6
	vmovss	%xmm4, 24(%rax)
	vmovaps	%xmm6, 16(%rsp)
	vmovups	%xmm6, 8(%rax)
	cmpq	224(%rsp), %rsi
	je	.L127
	leaq	8(%rsi), %r14
	movq	%rax, (%rsi)
	movq	%r14, 216(%rsp)
.L128:
	movl	$32, %edi
	call	_Znwm@PLT
	vmovaps	16(%rsp), %xmm5
	vmovss	(%rsp), %xmm1
	leaq	16+_ZTV10VPutOption(%rip), %rsi
	movq	%rax, 136(%rsp)
	movq	%rsi, (%rax)
	vmovups	%xmm5, 8(%rax)
	vmovss	%xmm1, 24(%rax)
	cmpq	224(%rsp), %r14
	je	.L129
	movq	%rax, (%r14)
	addq	$8, %r14
	movq	%r14, 216(%rsp)
	decl	%r15d
	je	.L190
.L81:
	cmpq	$623, %rbx
	ja	.L191
.L86:
	movq	5248(%rsp,%rbx,8), %rax
	leaq	1(%rbx), %rcx
	movq	%rcx, 10240(%rsp)
	movq	%rax, %rdx
	shrq	$11, %rdx
	movl	%edx, %edx
	xorq	%rdx, %rax
	movq	%rax, %rdx
	salq	$7, %rdx
	andl	$2636928640, %edx
	xorq	%rdx, %rax
	movq	%rax, %rdx
	salq	$15, %rdx
	andl	$4022730752, %edx
	xorq	%rdx, %rax
	movq	%rax, %rdx
	shrq	$18, %rdx
	xorq	%rdx, %rax
	jns	.L192
	movq	%rax, %rdx
	andl	$1, %eax
	vxorps	%xmm7, %xmm7, %xmm7
	shrq	%rdx
	orq	%rax, %rdx
	vcvtsi2ssq	%rdx, %xmm7, %xmm0
	vaddss	%xmm0, %xmm0, %xmm0
	jmp	.L83
	.p2align 4,,10
	.p2align 3
.L100:
	movq	%rax, %rdx
	andl	$1, %eax
	vxorps	%xmm6, %xmm6, %xmm6
	shrq	%rdx
	orq	%rax, %rdx
	vcvtsi2ssq	%rdx, %xmm6, %xmm0
	vaddss	%xmm0, %xmm0, %xmm0
	jmp	.L101
	.p2align 4,,10
	.p2align 3
.L96:
	movq	%rax, %rcx
	andl	$1, %eax
	vxorps	%xmm5, %xmm5, %xmm5
	shrq	%rcx
	orq	%rax, %rcx
	vcvtsi2ssq	%rcx, %xmm5, %xmm0
	vaddss	%xmm0, %xmm0, %xmm0
	jmp	.L97
	.p2align 4,,10
	.p2align 3
.L92:
	movq	%rax, %rdx
	andl	$1, %eax
	vxorps	%xmm3, %xmm3, %xmm3
	shrq	%rdx
	orq	%rax, %rdx
	vcvtsi2ssq	%rdx, %xmm3, %xmm0
	vaddss	%xmm0, %xmm0, %xmm0
	jmp	.L93
	.p2align 4,,10
	.p2align 3
.L88:
	movq	%rax, %rcx
	andl	$1, %eax
	vxorps	%xmm2, %xmm2, %xmm2
	shrq	%rcx
	orq	%rax, %rcx
	vcvtsi2ssq	%rcx, %xmm2, %xmm0
	vaddss	%xmm0, %xmm0, %xmm0
	jmp	.L89
	.p2align 4,,10
	.p2align 3
.L188:
	movq	%r13, %rdi
	call	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv
	movq	10240(%rsp), %rcx
	jmp	.L95
	.p2align 4,,10
	.p2align 3
.L187:
	movq	%r13, %rdi
	call	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv
	movq	10240(%rsp), %rdx
	jmp	.L91
	.p2align 4,,10
	.p2align 3
.L186:
	movq	%r13, %rdi
	call	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv
	movq	10240(%rsp), %rcx
	jmp	.L87
	.p2align 4,,10
	.p2align 3
.L189:
	movq	%r13, %rdi
	call	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv
	movq	10240(%rsp), %rdx
	jmp	.L99
	.p2align 4,,10
	.p2align 3
.L191:
	movq	%r13, %rdi
	call	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv
	movq	10240(%rsp), %rbx
	jmp	.L86
	.p2align 4,,10
	.p2align 3
.L103:
	movq	144(%rsp), %r14
	movq	80(%rsp), %rax
	movabsq	$-3689348814741910323, %rdx
	subq	%r14, %rax
	movq	%rax, 64(%rsp)
	sarq	$2, %rax
	imulq	%rdx, %rax
	movabsq	$461168601842738790, %rdx
	cmpq	%rdx, %rax
	je	.L193
	movq	80(%rsp), %rdi
	cmpq	%rdi, %r14
	je	.L194
	leaq	(%rax,%rax), %rdx
	cmpq	%rax, %rdx
	jb	.L159
	testq	%rdx, %rdx
	jne	.L195
	vmovss	16(%rsp), %xmm6
	movq	64(%rsp), %rax
	xorl	%esi, %esi
	xorl	%r8d, %r8d
	vinsertps	$0x10, 56(%rsp), %xmm6, %xmm5
	vmovss	48(%rsp), %xmm3
	vinsertps	$0x10, 32(%rsp), %xmm3, %xmm4
	vmovlps	%xmm5, 16(%rsp)
	vmovlhps	%xmm5, %xmm4, %xmm0
	vmovss	(%rsp), %xmm5
	vmovlps	%xmm4, 48(%rsp)
	vmovups	%xmm0, (%rax)
	vmovss	%xmm5, 16(%rax)
	xorl	%eax, %eax
.L151:
	movq	%r14, %rdx
	.p2align 4,,10
	.p2align 3
.L113:
	vmovdqu	(%rdx), %xmm7
	movl	16(%rdx), %ecx
	addq	$20, %rdx
	addq	$20, %rax
	vmovdqu	%xmm7, -20(%rax)
	movl	%ecx, -4(%rax)
	cmpq	%r12, %rdx
	jne	.L113
	subq	%r14, %r12
	vmovq	%rsi, %xmm2
	movabsq	$922337203685477581, %rdx
	leaq	-20(%r12), %rax
	shrq	$2, %rax
	imulq	%rdx, %rax
	movabsq	$4611686018427387903, %rdx
	andq	%rdx, %rax
	leaq	(%rax,%rax,4), %rax
	leaq	40(%rsi,%rax,4), %r12
	vpinsrq	$1, %r12, %xmm2, %xmm0
	testq	%r14, %r14
	jne	.L150
	movq	%r8, 80(%rsp)
.L114:
	movq	%r8, 160(%rsp)
	vmovdqa	%xmm0, 144(%rsp)
	cmpq	%rbp, 192(%rsp)
	jne	.L196
	.p2align 4,,10
	.p2align 3
.L115:
	movq	176(%rsp), %r14
	movq	%rbp, %rax
	movabsq	$-3689348814741910323, %rdx
	subq	%r14, %rax
	movq	%rax, 32(%rsp)
	sarq	$2, %rax
	imulq	%rdx, %rax
	movabsq	$461168601842738790, %rdx
	cmpq	%rdx, %rax
	je	.L197
	cmpq	%rbp, %r14
	je	.L198
	leaq	(%rax,%rax), %rdx
	cmpq	%rax, %rdx
	jb	.L162
	testq	%rdx, %rdx
	jne	.L199
	vmovq	48(%rsp), %xmm7
	movq	32(%rsp), %rax
	xorl	%esi, %esi
	xorl	%r8d, %r8d
	vmovss	(%rsp), %xmm1
	vmovhps	16(%rsp), %xmm7, %xmm0
	vmovups	%xmm0, (%rax)
	vmovss	%xmm1, 16(%rax)
	xorl	%eax, %eax
.L149:
	movq	%r14, %rdx
	.p2align 4,,10
	.p2align 3
.L125:
	vmovdqu	(%rdx), %xmm5
	movl	16(%rdx), %ecx
	addq	$20, %rdx
	addq	$20, %rax
	vmovdqu	%xmm5, -20(%rax)
	movl	%ecx, -4(%rax)
	cmpq	%rbp, %rdx
	jne	.L125
	subq	%r14, %rbp
	vmovq	%rsi, %xmm3
	movabsq	$922337203685477581, %rdx
	leaq	-20(%rbp), %rax
	shrq	$2, %rax
	imulq	%rdx, %rax
	movabsq	$4611686018427387903, %rdx
	andq	%rdx, %rax
	leaq	(%rax,%rax,4), %rax
	leaq	40(%rsi,%rax,4), %rbp
	vpinsrq	$1, %rbp, %xmm3, %xmm0
	testq	%r14, %r14
	je	.L126
.L148:
	movq	32(%rsp), %rsi
	movq	%r14, %rdi
	movq	%r8, 56(%rsp)
	vmovdqa	%xmm0, 64(%rsp)
	call	_ZdlPvm@PLT
	vmovdqa	64(%rsp), %xmm0
	movq	56(%rsp), %r8
.L126:
	movq	%r8, 192(%rsp)
	vmovdqa	%xmm0, 176(%rsp)
	jmp	.L116
	.p2align 4,,10
	.p2align 3
.L129:
	leaq	136(%rsp), %rdx
	leaq	208(%rsp), %rdi
	movq	%r14, %rsi
	call	_ZNSt6vectorIP11VBaseOptionSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
	decl	%r15d
	jne	.L81
.L190:
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	movq	144(%rsp), %r15
	movl	$0x00000000, 16(%rsp)
	movq	%rax, %r13
	cmpq	%r15, %r12
	je	.L131
	vmovss	.LC0(%rip), %xmm4
	vmovsd	.LC4(%rip), %xmm2
	vmovss	.LC3(%rip), %xmm7
	xorl	%r14d, %r14d
	vmovaps	%xmm7, (%rsp)
	vmovss	%xmm4, 32(%rsp)
	vmovsd	.LC2(%rip), %xmm4
	vmovsd	%xmm2, 56(%rsp)
	vmovsd	%xmm4, 48(%rsp)
	.p2align 4,,10
	.p2align 3
.L135:
	vmovss	8(%r15), %xmm4
	vmovss	4(%r15), %xmm6
	vdivss	%xmm4, %xmm6, %xmm0
	vmovss	%xmm4, 64(%rsp)
	vmovss	%xmm6, 80(%rsp)
	vcvtss2sd	%xmm0, %xmm0, %xmm0
	call	log@PLT
	vmovss	(%r15), %xmm3
	vmovss	12(%r15), %xmm4
	vmovsd	%xmm0, %xmm0, %xmm2
	vmovss	16(%r15), %xmm0
	vmovq	%r14, %xmm7
	vcvtss2sd	%xmm4, %xmm4, %xmm5
	vucomisd	%xmm5, %xmm7
	vmulss	%xmm0, %xmm0, %xmm1
	vfmadd132ss	32(%rsp), %xmm3, %xmm1
	vmulss	%xmm4, %xmm1, %xmm1
	vcvtss2sd	%xmm1, %xmm1, %xmm1
	vaddsd	%xmm2, %xmm1, %xmm1
	vcvtss2sd	%xmm0, %xmm0, %xmm2
	ja	.L181
	vsqrtsd	%xmm5, %xmm5, %xmm5
	vmulsd	%xmm2, %xmm5, %xmm2
	vdivsd	%xmm2, %xmm1, %xmm1
	vcvtsd2ss	%xmm1, %xmm1, %xmm1
	vcvtss2sd	%xmm1, %xmm1, %xmm5
	vmovq	%xmm5, %rbx
.L134:
	vxorps	(%rsp), %xmm1, %xmm1
	vmovsd	%xmm2, 104(%rsp)
	addq	$20, %r15
	vmovss	%xmm4, 120(%rsp)
	vcvtss2sd	%xmm1, %xmm1, %xmm1
	vmulsd	48(%rsp), %xmm1, %xmm0
	vmovss	%xmm3, 96(%rsp)
	call	erfc@PLT
	vmovss	120(%rsp), %xmm4
	vmovss	96(%rsp), %xmm3
	vxorps	(%rsp), %xmm3, %xmm3
	vmovsd	%xmm0, 88(%rsp)
	vmulss	%xmm4, %xmm3, %xmm0
	vcvtss2sd	%xmm0, %xmm0, %xmm0
	call	exp@PLT
	vmovsd	104(%rsp), %xmm2
	vmovq	%rbx, %xmm3
	vmovsd	%xmm0, 96(%rsp)
	vsubsd	%xmm2, %xmm3, %xmm0
	vcvtsd2ss	%xmm0, %xmm0, %xmm0
	vxorps	(%rsp), %xmm0, %xmm0
	vcvtss2sd	%xmm0, %xmm0, %xmm0
	vmulsd	48(%rsp), %xmm0, %xmm0
	call	erfc@PLT
	vmovsd	56(%rsp), %xmm3
	vmulsd	88(%rsp), %xmm3, %xmm1
	vmovsd	%xmm0, %xmm0, %xmm2
	vcvtss2sd	64(%rsp), %xmm0, %xmm0
	vmulsd	%xmm3, %xmm2, %xmm2
	vmulsd	96(%rsp), %xmm0, %xmm0
	vcvtsd2ss	%xmm1, %xmm1, %xmm1
	vmulss	80(%rsp), %xmm1, %xmm1
	vcvtsd2ss	%xmm2, %xmm2, %xmm2
	vcvtss2sd	%xmm2, %xmm2, %xmm2
	vcvtss2sd	%xmm1, %xmm1, %xmm1
	vfnmadd132sd	%xmm2, %xmm1, %xmm0
	vcvtsd2ss	%xmm0, %xmm0, %xmm0
	vaddss	16(%rsp), %xmm0, %xmm2
	vmovss	%xmm2, 16(%rsp)
	cmpq	%r15, %r12
	jne	.L135
.L131:
	movq	176(%rsp), %r14
	cmpq	%rbp, %r14
	je	.L136
	vmovss	.LC0(%rip), %xmm7
	vmovsd	.LC2(%rip), %xmm1
	xorl	%r12d, %r12d
	vmovss	.LC3(%rip), %xmm4
	vmovsd	.LC4(%rip), %xmm2
	vmovaps	%xmm4, (%rsp)
	vmovss	%xmm7, 32(%rsp)
	vmovsd	%xmm1, 48(%rsp)
	vmovsd	%xmm2, 56(%rsp)
	.p2align 4,,10
	.p2align 3
.L140:
	movl	4(%r14), %ebx
	vmovss	8(%r14), %xmm7
	vmovd	%ebx, %xmm3
	vmovss	%xmm7, 80(%rsp)
	vdivss	%xmm7, %xmm3, %xmm0
	vcvtss2sd	%xmm0, %xmm0, %xmm0
	call	log@PLT
	vmovss	(%r14), %xmm3
	vmovss	12(%r14), %xmm4
	vmovsd	%xmm0, %xmm0, %xmm2
	vmovss	16(%r14), %xmm0
	vmovq	%r12, %xmm7
	vcvtss2sd	%xmm4, %xmm4, %xmm5
	vucomisd	%xmm5, %xmm7
	vmulss	%xmm0, %xmm0, %xmm1
	vfmadd132ss	32(%rsp), %xmm3, %xmm1
	vmulss	%xmm4, %xmm1, %xmm1
	vcvtss2sd	%xmm1, %xmm1, %xmm1
	vaddsd	%xmm2, %xmm1, %xmm1
	vcvtss2sd	%xmm0, %xmm0, %xmm2
	ja	.L182
	vsqrtsd	%xmm5, %xmm5, %xmm5
	vmulsd	%xmm5, %xmm2, %xmm2
	vdivsd	%xmm2, %xmm1, %xmm1
	vcvtsd2ss	%xmm1, %xmm1, %xmm1
	vcvtss2sd	%xmm1, %xmm1, %xmm1
.L139:
	vmulsd	48(%rsp), %xmm1, %xmm0
	vmovsd	%xmm2, 104(%rsp)
	addq	$20, %r14
	vmovsd	%xmm1, 96(%rsp)
	vmovss	%xmm4, 120(%rsp)
	vmovss	%xmm3, 88(%rsp)
	call	erfc@PLT
	vmovss	120(%rsp), %xmm4
	vmovss	88(%rsp), %xmm3
	vxorps	(%rsp), %xmm3, %xmm3
	vmovsd	%xmm0, 64(%rsp)
	vmulss	%xmm4, %xmm3, %xmm0
	vcvtss2sd	%xmm0, %xmm0, %xmm0
	call	exp@PLT
	vmovsd	96(%rsp), %xmm1
	vmovsd	104(%rsp), %xmm2
	vmovsd	%xmm0, 88(%rsp)
	vsubsd	%xmm2, %xmm1, %xmm0
	vcvtsd2ss	%xmm0, %xmm0, %xmm0
	vcvtss2sd	%xmm0, %xmm0, %xmm0
	vmulsd	48(%rsp), %xmm0, %xmm0
	call	erfc@PLT
	vmovsd	56(%rsp), %xmm6
	vmovd	%ebx, %xmm5
	vxorps	(%rsp), %xmm5, %xmm1
	vmulsd	64(%rsp), %xmm6, %xmm3
	vmovsd	%xmm0, %xmm0, %xmm2
	vcvtss2sd	80(%rsp), %xmm0, %xmm0
	vmulsd	%xmm6, %xmm2, %xmm2
	vmulsd	88(%rsp), %xmm0, %xmm0
	vcvtsd2ss	%xmm3, %xmm3, %xmm3
	vmulss	%xmm3, %xmm1, %xmm1
	vcvtsd2ss	%xmm2, %xmm2, %xmm2
	vcvtss2sd	%xmm2, %xmm2, %xmm2
	vcvtss2sd	%xmm1, %xmm1, %xmm1
	vfmadd132sd	%xmm2, %xmm1, %xmm0
	vcvtsd2ss	%xmm0, %xmm0, %xmm0
	vaddss	16(%rsp), %xmm0, %xmm2
	vmovss	%xmm2, 16(%rsp)
	cmpq	%r14, %rbp
	jne	.L140
.L136:
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	movl	$1000, %ecx
	leaq	_ZSt4cout(%rip), %r12
	leaq	.LC30(%rip), %rsi
	subq	%r13, %rax
	movq	%r12, %rdi
	cqto
	idivq	%rcx
	movl	$16, %edx
	movq	%rax, %rbp
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	$2000000, %esi
	movq	%r12, %rdi
	call	_ZNSolsEi@PLT
	leaq	.LC31(%rip), %r15
	movl	$14, %edx
	movq	%rax, %rdi
	movq	%rax, %rbx
	movq	%r15, %rsi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%rbp, %rsi
	movq	%rbx, %rdi
	call	_ZNSo9_M_insertIlEERSoT_@PLT
	leaq	.LC32(%rip), %r14
	movl	$13, %edx
	movq	%rax, %rdi
	movq	%rax, %rbx
	movq	%r14, %rsi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%rbx, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0
	leaq	.LC33(%rip), %r13
	movl	$17, %edx
	movq	%r12, %rdi
	movq	%r13, %rsi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%r12, %rdi
	vcvtss2sd	16(%rsp), %xmm0, %xmm0
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	movq	%rax, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	movq	208(%rsp), %rbx
	movq	216(%rsp), %rbp
	movl	$0x00000000, (%rsp)
	movq	%rax, 16(%rsp)
	cmpq	%rbx, %rbp
	je	.L141
	.p2align 4,,10
	.p2align 3
.L142:
	movq	(%rbx), %rdi
	movq	(%rdi), %rax
	call	*16(%rax)
	vaddss	(%rsp), %xmm0, %xmm4
	addq	$8, %rbx
	vmovss	%xmm4, (%rsp)
	cmpq	%rbx, %rbp
	jne	.L142
.L141:
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	movq	16(%rsp), %rdi
	movl	$1000, %ecx
	leaq	.LC34(%rip), %rsi
	subq	%rdi, %rax
	movq	%r12, %rdi
	cqto
	idivq	%rcx
	movl	$19, %edx
	movq	%rax, %rbx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	$2000000, %esi
	movq	%r12, %rdi
	call	_ZNSolsEi@PLT
	movl	$14, %edx
	movq	%r15, %rsi
	movq	%rax, %rdi
	movq	%rax, %rbp
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%rbx, %rsi
	movq	%rbp, %rdi
	call	_ZNSo9_M_insertIlEERSoT_@PLT
	movl	$13, %edx
	movq	%r14, %rsi
	movq	%rax, %rdi
	movq	%rax, %rbx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%rbx, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0
	movl	$17, %edx
	movq	%r13, %rsi
	movq	%r12, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%r12, %rdi
	vcvtss2sd	(%rsp), %xmm0, %xmm0
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	movq	%rax, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0
.LEHE6:
	leaq	208(%rsp), %rdi
	call	_ZNSt6vectorIP11VBaseOptionSaIS1_EED1Ev
	leaq	176(%rsp), %rdi
	call	_ZNSt6vectorI9PutOptionSaIS0_EED1Ev
	leaq	144(%rsp), %rdi
	call	_ZNSt6vectorI10CallOptionSaIS0_EED1Ev
	movq	112(%rsp), %rdi
	call	_ZNSt13random_device7_M_finiEv@PLT
	movq	10248(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L183
	addq	$10264, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L127:
	.cfi_restore_state
	leaq	136(%rsp), %rdx
	leaq	208(%rsp), %rdi
.LEHB7:
	call	_ZNSt6vectorIP11VBaseOptionSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
	movq	216(%rsp), %r14
	jmp	.L128
	.p2align 4,,10
	.p2align 3
.L157:
	vmovss	.LC20(%rip), %xmm2
	vmovss	%xmm2, (%rsp)
	jmp	.L102
	.p2align 4,,10
	.p2align 3
.L155:
	vmovss	.LC18(%rip), %xmm1
	vmovss	%xmm1, 16(%rsp)
	jmp	.L94
	.p2align 4,,10
	.p2align 3
.L154:
	movl	$0x43c7ffff, 32(%rsp)
	jmp	.L90
	.p2align 4,,10
	.p2align 3
.L153:
	movl	$0x3d4ccccc, 48(%rsp)
	jmp	.L84
	.p2align 4,,10
	.p2align 3
.L156:
	vmovss	.LC19(%rip), %xmm3
	vmovss	%xmm3, 56(%rsp)
	jmp	.L98
.L112:
	leaq	20(%rax), %r12
	vmovq	%rax, %xmm2
	vpinsrq	$1, %r12, %xmm2, %xmm0
.L150:
	movq	80(%rsp), %rsi
	movq	%r14, %rdi
	movq	%r8, 56(%rsp)
	vmovdqa	%xmm0, 32(%rsp)
	subq	%r14, %rsi
	call	_ZdlPvm@PLT
	movq	56(%rsp), %r8
	vmovdqa	32(%rsp), %xmm0
	movq	%r8, 80(%rsp)
	jmp	.L114
	.p2align 4,,10
	.p2align 3
.L194:
	addq	$1, %rax
	jc	.L159
	movabsq	$461168601842738790, %rdx
	cmpq	%rdx, %rax
	cmova	%rdx, %rax
	leaq	(%rax,%rax,4), %rax
	salq	$2, %rax
	movq	%rax, 88(%rsp)
	movq	%rax, %rdi
.L110:
	call	_Znwm@PLT
	vmovss	16(%rsp), %xmm7
	vmovss	48(%rsp), %xmm5
	vinsertps	$0x10, 56(%rsp), %xmm7, %xmm1
	vinsertps	$0x10, 32(%rsp), %xmm5, %xmm5
	movq	64(%rsp), %rdx
	movq	88(%rsp), %r8
	vmovlhps	%xmm1, %xmm5, %xmm0
	vmovlps	%xmm1, 16(%rsp)
	vmovss	(%rsp), %xmm1
	addq	%rax, %rdx
	addq	%rax, %r8
	vmovlps	%xmm5, 48(%rsp)
	vmovups	%xmm0, (%rdx)
	vmovss	%xmm1, 16(%rdx)
	cmpq	%r12, %r14
	je	.L112
	movq	%rax, %rsi
	jmp	.L151
	.p2align 4,,10
	.p2align 3
.L198:
	addq	$1, %rax
	jc	.L162
	movabsq	$461168601842738790, %rdx
	cmpq	%rdx, %rax
	cmova	%rdx, %rax
	leaq	(%rax,%rax,4), %rax
	salq	$2, %rax
	movq	%rax, 56(%rsp)
	movq	%rax, %rdi
.L122:
	call	_Znwm@PLT
	movq	32(%rsp), %rdi
	vmovq	48(%rsp), %xmm3
	movq	56(%rsp), %r8
	vmovss	(%rsp), %xmm2
	leaq	(%rax,%rdi), %rdx
	vmovhps	16(%rsp), %xmm3, %xmm0
	addq	%rax, %r8
	vmovups	%xmm0, (%rdx)
	vmovss	%xmm2, 16(%rdx)
	cmpq	%rbp, %r14
	je	.L124
	movq	%rax, %rsi
	jmp	.L149
	.p2align 4,,10
	.p2align 3
.L159:
	movabsq	$9223372036854775800, %rax
	movq	%rax, 88(%rsp)
	movq	%rax, %rdi
	jmp	.L110
	.p2align 4,,10
	.p2align 3
.L162:
	movabsq	$9223372036854775800, %rax
	movq	%rax, 56(%rsp)
	movq	%rax, %rdi
	jmp	.L122
.L124:
	leaq	20(%rax), %rbp
	vmovq	%rax, %xmm7
	vpinsrq	$1, %rbp, %xmm7, %xmm0
	jmp	.L148
.L199:
	movabsq	$461168601842738790, %rax
	cmpq	%rax, %rdx
	cmova	%rax, %rdx
	imulq	$20, %rdx, %rax
	movq	%rax, 56(%rsp)
	movq	%rax, %rdi
	jmp	.L122
.L195:
	movabsq	$461168601842738790, %rax
	cmpq	%rax, %rdx
	cmova	%rax, %rdx
	imulq	$20, %rdx, %rax
	movq	%rax, 88(%rsp)
	movq	%rax, %rdi
	jmp	.L110
.L197:
	movq	10248(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L183
	leaq	.LC5(%rip), %rdi
	call	_ZSt20__throw_length_errorPKc@PLT
.L181:
	vmovsd	%xmm5, %xmm5, %xmm0
	vmovss	%xmm4, 124(%rsp)
	vmovss	%xmm3, 120(%rsp)
	vmovsd	%xmm2, 96(%rsp)
	vmovsd	%xmm1, 88(%rsp)
	vmovsd	%xmm5, 104(%rsp)
	call	sqrt@PLT
	vmovsd	96(%rsp), %xmm2
	vmovsd	88(%rsp), %xmm1
	vmovsd	104(%rsp), %xmm5
	vmulsd	%xmm0, %xmm2, %xmm0
	vdivsd	%xmm0, %xmm1, %xmm1
	vmovsd	%xmm5, %xmm5, %xmm0
	vcvtsd2ss	%xmm1, %xmm1, %xmm1
	vcvtss2sd	%xmm1, %xmm1, %xmm7
	vmovss	%xmm1, 88(%rsp)
	vmovq	%xmm7, %rbx
	call	sqrt@PLT
	vmovsd	96(%rsp), %xmm2
	vmovss	124(%rsp), %xmm4
	vmovss	120(%rsp), %xmm3
	vmovss	88(%rsp), %xmm1
	vmulsd	%xmm0, %xmm2, %xmm2
	jmp	.L134
.L193:
	movq	10248(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L183
	leaq	.LC5(%rip), %rdi
	call	_ZSt20__throw_length_errorPKc@PLT
.LEHE7:
.L182:
	vmovsd	%xmm5, %xmm5, %xmm0
	vmovss	%xmm4, 120(%rsp)
	vmovss	%xmm3, 104(%rsp)
	vmovsd	%xmm2, 88(%rsp)
	vmovsd	%xmm1, 64(%rsp)
	vmovsd	%xmm5, 96(%rsp)
	call	sqrt@PLT
	vmovsd	88(%rsp), %xmm2
	vmovsd	64(%rsp), %xmm1
	vmovsd	96(%rsp), %xmm5
	vmulsd	%xmm2, %xmm0, %xmm0
	vdivsd	%xmm0, %xmm1, %xmm1
	vmovsd	%xmm5, %xmm5, %xmm0
	vcvtsd2ss	%xmm1, %xmm1, %xmm1
	vcvtss2sd	%xmm1, %xmm1, %xmm1
	vmovsd	%xmm1, 64(%rsp)
	call	sqrt@PLT
	vmovsd	88(%rsp), %xmm2
	vmovss	120(%rsp), %xmm4
	vmovss	104(%rsp), %xmm3
	vmovsd	64(%rsp), %xmm1
	vmulsd	%xmm0, %xmm2, %xmm2
	jmp	.L139
.L183:
	call	__stack_chk_fail@PLT
.L167:
	endbr64
	movq	%rax, %rbx
	vzeroupper
	jmp	.L144
.L166:
	endbr64
	movq	%rax, %rbx
	vzeroupper
	jmp	.L145
.L165:
	endbr64
	movq	%rax, %rbx
	vzeroupper
	jmp	.L146
.L168:
	endbr64
	movq	%rax, %rbx
	jmp	.L143
	.section	.gcc_except_table,"a",@progbits
.LLSDA4397:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4397-.LLSDACSB4397
.LLSDACSB4397:
	.uleb128 .LEHB2-.LFB4397
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB3-.LFB4397
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L165-.LFB4397
	.uleb128 0
	.uleb128 .LEHB4-.LFB4397
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L166-.LFB4397
	.uleb128 0
	.uleb128 .LEHB5-.LFB4397
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L167-.LFB4397
	.uleb128 0
	.uleb128 .LEHB6-.LFB4397
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L168-.LFB4397
	.uleb128 0
	.uleb128 .LEHB7-.LFB4397
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L168-.LFB4397
	.uleb128 0
.LLSDACSE4397:
	.section	.text.startup
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC4397
	.type	main.cold, @function
main.cold:
.LFSB4397:
.L143:
	.cfi_def_cfa_offset 10320
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	leaq	208(%rsp), %rdi
	vzeroupper
	call	_ZNSt6vectorIP11VBaseOptionSaIS1_EED1Ev
.L144:
	leaq	176(%rsp), %rdi
	call	_ZNSt6vectorI9PutOptionSaIS0_EED1Ev
.L145:
	leaq	144(%rsp), %rdi
	call	_ZNSt6vectorI10CallOptionSaIS0_EED1Ev
.L146:
	movq	112(%rsp), %rdi
	call	_ZNSt13random_device7_M_finiEv@PLT
	movq	10248(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L200
	movq	%rbx, %rdi
.LEHB8:
	call	_Unwind_Resume@PLT
.LEHE8:
.L200:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE4397:
	.section	.gcc_except_table
.LLSDAC4397:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC4397-.LLSDACSBC4397
.LLSDACSBC4397:
	.uleb128 .LEHB8-.LCOLDB36
	.uleb128 .LEHE8-.LEHB8
	.uleb128 0
	.uleb128 0
.LLSDACSEC4397:
	.section	.text.unlikely
	.section	.text.startup
	.size	main, .-main
	.section	.text.unlikely
	.size	main.cold, .-main.cold
.LCOLDE36:
	.section	.text.startup
.LHOTE36:
	.weak	_ZTS11VBaseOption
	.section	.rodata._ZTS11VBaseOption,"aG",@progbits,_ZTS11VBaseOption,comdat
	.align 8
	.type	_ZTS11VBaseOption, @object
	.size	_ZTS11VBaseOption, 14
_ZTS11VBaseOption:
	.string	"11VBaseOption"
	.weak	_ZTI11VBaseOption
	.section	.data.rel.ro._ZTI11VBaseOption,"awG",@progbits,_ZTI11VBaseOption,comdat
	.align 8
	.type	_ZTI11VBaseOption, @object
	.size	_ZTI11VBaseOption, 16
_ZTI11VBaseOption:
	.quad	_ZTVN10__cxxabiv117__class_type_infoE+16
	.quad	_ZTS11VBaseOption
	.weak	_ZTS11VCallOption
	.section	.rodata._ZTS11VCallOption,"aG",@progbits,_ZTS11VCallOption,comdat
	.align 8
	.type	_ZTS11VCallOption, @object
	.size	_ZTS11VCallOption, 14
_ZTS11VCallOption:
	.string	"11VCallOption"
	.weak	_ZTI11VCallOption
	.section	.data.rel.ro._ZTI11VCallOption,"awG",@progbits,_ZTI11VCallOption,comdat
	.align 8
	.type	_ZTI11VCallOption, @object
	.size	_ZTI11VCallOption, 24
_ZTI11VCallOption:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	_ZTS11VCallOption
	.quad	_ZTI11VBaseOption
	.weak	_ZTS10VPutOption
	.section	.rodata._ZTS10VPutOption,"aG",@progbits,_ZTS10VPutOption,comdat
	.align 8
	.type	_ZTS10VPutOption, @object
	.size	_ZTS10VPutOption, 13
_ZTS10VPutOption:
	.string	"10VPutOption"
	.weak	_ZTI10VPutOption
	.section	.data.rel.ro._ZTI10VPutOption,"awG",@progbits,_ZTI10VPutOption,comdat
	.align 8
	.type	_ZTI10VPutOption, @object
	.size	_ZTI10VPutOption, 24
_ZTI10VPutOption:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	_ZTS10VPutOption
	.quad	_ZTI11VBaseOption
	.weak	_ZTV11VCallOption
	.section	.data.rel.ro.local._ZTV11VCallOption,"awG",@progbits,_ZTV11VCallOption,comdat
	.align 8
	.type	_ZTV11VCallOption, @object
	.size	_ZTV11VCallOption, 40
_ZTV11VCallOption:
	.quad	0
	.quad	_ZTI11VCallOption
	.quad	_ZN11VCallOptionD1Ev
	.quad	_ZN11VCallOptionD0Ev
	.quad	_ZNK11VCallOption5priceEv
	.weak	_ZTV10VPutOption
	.section	.data.rel.ro.local._ZTV10VPutOption,"awG",@progbits,_ZTV10VPutOption,comdat
	.align 8
	.type	_ZTV10VPutOption, @object
	.size	_ZTV10VPutOption, 40
_ZTV10VPutOption:
	.quad	0
	.quad	_ZTI10VPutOption
	.quad	_ZN10VPutOptionD1Ev
	.quad	_ZN10VPutOptionD0Ev
	.quad	_ZNK10VPutOption5priceEv
	.section	.rodata.cst4,"aM",@progbits,4
	.align 4
.LC0:
	.long	1056964608
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC2:
	.long	1719614413
	.long	1072079006
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC3:
	.long	-2147483648
	.long	0
	.long	0
	.long	0
	.section	.rodata.cst8
	.align 8
.LC4:
	.long	0
	.long	1071644672
	.align 8
.LC14:
	.quad	-2147483648
	.align 8
.LC15:
	.quad	2147483647
	.align 8
.LC16:
	.quad	1
	.section	.rodata.cst4
	.align 4
.LC18:
	.long	1137180671
	.align 4
.LC19:
	.long	1073741823
	.align 4
.LC20:
	.long	1045220556
	.align 4
.LC22:
	.long	796917760
	.align 4
.LC23:
	.long	1065353216
	.align 4
.LC24:
	.long	1028443341
	.align 4
.LC25:
	.long	1133903872
	.align 4
.LC26:
	.long	1120403456
	.align 4
.LC27:
	.long	1073657938
	.align 4
.LC28:
	.long	1008981770
	.align 4
.LC29:
	.long	1044549468
	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.rel.local.DW.ref.__gxx_personality_v0,"awG",@progbits,DW.ref.__gxx_personality_v0,comdat
	.align 8
	.type	DW.ref.__gxx_personality_v0, @object
	.size	DW.ref.__gxx_personality_v0, 8
DW.ref.__gxx_personality_v0:
	.quad	__gxx_personality_v0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
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

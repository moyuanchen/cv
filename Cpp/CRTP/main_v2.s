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
.LFB5599:
	.cfi_startproc
	endbr64
	ret
	.cfi_endproc
.LFE5599:
	.size	_ZN10VPutOptionD2Ev, .-_ZN10VPutOptionD2Ev
	.weak	_ZN10VPutOptionD1Ev
	.set	_ZN10VPutOptionD1Ev,_ZN10VPutOptionD2Ev
	.section	.text._ZN11VCallOptionD2Ev,"axG",@progbits,_ZN11VCallOptionD5Ev,comdat
	.align 2
	.p2align 4
	.weak	_ZN11VCallOptionD2Ev
	.type	_ZN11VCallOptionD2Ev, @function
_ZN11VCallOptionD2Ev:
.LFB5603:
	.cfi_startproc
	endbr64
	ret
	.cfi_endproc
.LFE5603:
	.size	_ZN11VCallOptionD2Ev, .-_ZN11VCallOptionD2Ev
	.weak	_ZN11VCallOptionD1Ev
	.set	_ZN11VCallOptionD1Ev,_ZN11VCallOptionD2Ev
	.section	.text._ZN11VCallOptionD0Ev,"axG",@progbits,_ZN11VCallOptionD5Ev,comdat
	.align 2
	.p2align 4
	.weak	_ZN11VCallOptionD0Ev
	.type	_ZN11VCallOptionD0Ev, @function
_ZN11VCallOptionD0Ev:
.LFB5605:
	.cfi_startproc
	endbr64
	movl	$32, %esi
	jmp	_ZdlPvm@PLT
	.cfi_endproc
.LFE5605:
	.size	_ZN11VCallOptionD0Ev, .-_ZN11VCallOptionD0Ev
	.section	.text._ZN10VPutOptionD0Ev,"axG",@progbits,_ZN10VPutOptionD5Ev,comdat
	.align 2
	.p2align 4
	.weak	_ZN10VPutOptionD0Ev
	.type	_ZN10VPutOptionD0Ev, @function
_ZN10VPutOptionD0Ev:
.LFB5601:
	.cfi_startproc
	endbr64
	movl	$32, %esi
	jmp	_ZdlPvm@PLT
	.cfi_endproc
.LFE5601:
	.size	_ZN10VPutOptionD0Ev, .-_ZN10VPutOptionD0Ev
	.section	.text._ZNK10VPutOption5priceEv,"axG",@progbits,_ZNK10VPutOption5priceEv,comdat
	.align 2
	.p2align 4
	.weak	_ZNK10VPutOption5priceEv
	.type	_ZNK10VPutOption5priceEv, @function
_ZNK10VPutOption5priceEv:
.LFB4528:
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
.LFE4528:
	.size	_ZNK10VPutOption5priceEv, .-_ZNK10VPutOption5priceEv
	.section	.text._ZNK11VCallOption5priceEv,"axG",@progbits,_ZNK11VCallOption5priceEv,comdat
	.align 2
	.p2align 4
	.weak	_ZNK11VCallOption5priceEv
	.type	_ZNK11VCallOption5priceEv, @function
_ZNK11VCallOption5priceEv:
.LFB4524:
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
.LFE4524:
	.size	_ZNK11VCallOption5priceEv, .-_ZNK11VCallOption5priceEv
	.text
	.p2align 4
	.type	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0, @function
_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0:
.LFB5610:
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
.LFE5610:
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
.LFB4504:
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
.LFE4504:
	.size	_Z3cdff, .-_Z3cdff
	.section	.text._ZNK10CallOption11priceOptionEv,"axG",@progbits,_ZNK10CallOption11priceOptionEv,comdat
	.align 2
	.p2align 4
	.weak	_ZNK10CallOption11priceOptionEv
	.type	_ZNK10CallOption11priceOptionEv, @function
_ZNK10CallOption11priceOptionEv:
.LFB4506:
	.cfi_startproc
	endbr64
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdi, %rbx
	subq	$48, %rsp
	.cfi_def_cfa_offset 64
	vmovss	4(%rdi), %xmm6
	vmovss	8(%rdi), %xmm7
	vdivss	%xmm7, %xmm6, %xmm0
	vmovss	%xmm6, 4(%rsp)
	vmovss	%xmm7, 40(%rsp)
	vcvtss2sd	%xmm0, %xmm0, %xmm0
	call	log@PLT
	vmovss	16(%rbx), %xmm2
	vmovss	(%rbx), %xmm3
	vmovss	12(%rbx), %xmm4
	vmulss	%xmm2, %xmm2, %xmm1
	vcvtss2sd	%xmm2, %xmm2, %xmm2
	vfmadd132ss	.LC0(%rip), %xmm3, %xmm1
	vcvtss2sd	%xmm4, %xmm4, %xmm5
	vmulss	%xmm4, %xmm1, %xmm1
	vcvtss2sd	%xmm1, %xmm1, %xmm1
	vaddsd	%xmm0, %xmm1, %xmm1
	vxorpd	%xmm0, %xmm0, %xmm0
	vucomisd	%xmm5, %xmm0
	ja	.L42
	vsqrtsd	%xmm5, %xmm5, %xmm5
	vmulsd	%xmm5, %xmm2, %xmm2
	vdivsd	%xmm2, %xmm1, %xmm1
	vcvtsd2ss	%xmm1, %xmm1, %xmm1
	vcvtss2sd	%xmm1, %xmm1, %xmm5
	vmovq	%xmm5, %rbx
.L40:
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
.L42:
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
	jmp	.L40
	.cfi_endproc
.LFE4506:
	.size	_ZNK10CallOption11priceOptionEv, .-_ZNK10CallOption11priceOptionEv
	.section	.text._ZNK9PutOption11priceOptionEv,"axG",@progbits,_ZNK9PutOption11priceOptionEv,comdat
	.align 2
	.p2align 4
	.weak	_ZNK9PutOption11priceOptionEv
	.type	_ZNK9PutOption11priceOptionEv, @function
_ZNK9PutOption11priceOptionEv:
.LFB4510:
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
	vmovss	4(%rdi), %xmm6
	vmovss	8(%rdi), %xmm7
	vdivss	%xmm7, %xmm6, %xmm0
	vmovd	%xmm6, %r14d
	vmovss	%xmm7, 32(%rsp)
	vcvtss2sd	%xmm0, %xmm0, %xmm0
	call	log@PLT
	vmovss	16(%rbx), %xmm2
	vmovss	(%rbx), %xmm3
	vmovss	12(%rbx), %xmm4
	vmulss	%xmm2, %xmm2, %xmm1
	vcvtss2sd	%xmm2, %xmm2, %xmm2
	vfmadd132ss	.LC0(%rip), %xmm3, %xmm1
	vcvtss2sd	%xmm4, %xmm4, %xmm5
	vmulss	%xmm4, %xmm1, %xmm1
	vcvtss2sd	%xmm1, %xmm1, %xmm1
	vaddsd	%xmm0, %xmm1, %xmm1
	vxorpd	%xmm0, %xmm0, %xmm0
	vucomisd	%xmm5, %xmm0
	ja	.L49
	vsqrtsd	%xmm5, %xmm5, %xmm5
	vmulsd	%xmm5, %xmm2, %xmm2
	vdivsd	%xmm2, %xmm1, %xmm1
	vcvtsd2ss	%xmm1, %xmm1, %xmm1
	vcvtss2sd	%xmm1, %xmm1, %xmm1
.L47:
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
.L49:
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
	jmp	.L47
	.cfi_endproc
.LFE4510:
	.size	_ZNK9PutOption11priceOptionEv, .-_ZNK9PutOption11priceOptionEv
	.section	.text._ZNSt6vectorISt7variantIJ10CallOption9PutOptionEESaIS3_EED2Ev,"axG",@progbits,_ZNSt6vectorISt7variantIJ10CallOption9PutOptionEESaIS3_EED5Ev,comdat
	.align 2
	.p2align 4
	.weak	_ZNSt6vectorISt7variantIJ10CallOption9PutOptionEESaIS3_EED2Ev
	.type	_ZNSt6vectorISt7variantIJ10CallOption9PutOptionEESaIS3_EED2Ev, @function
_ZNSt6vectorISt7variantIJ10CallOption9PutOptionEESaIS3_EED2Ev:
.LFB4925:
	.cfi_startproc
	endbr64
	movq	(%rdi), %rax
	testq	%rax, %rax
	je	.L53
	movq	16(%rdi), %rsi
	movq	%rax, %rdi
	subq	%rax, %rsi
	jmp	_ZdlPvm@PLT
	.p2align 4,,10
	.p2align 3
.L53:
	ret
	.cfi_endproc
.LFE4925:
	.size	_ZNSt6vectorISt7variantIJ10CallOption9PutOptionEESaIS3_EED2Ev, .-_ZNSt6vectorISt7variantIJ10CallOption9PutOptionEESaIS3_EED2Ev
	.weak	_ZNSt6vectorISt7variantIJ10CallOption9PutOptionEESaIS3_EED1Ev
	.set	_ZNSt6vectorISt7variantIJ10CallOption9PutOptionEESaIS3_EED1Ev,_ZNSt6vectorISt7variantIJ10CallOption9PutOptionEESaIS3_EED2Ev
	.section	.text._ZNSt6vectorIP11VBaseOptionSaIS1_EED2Ev,"axG",@progbits,_ZNSt6vectorIP11VBaseOptionSaIS1_EED5Ev,comdat
	.align 2
	.p2align 4
	.weak	_ZNSt6vectorIP11VBaseOptionSaIS1_EED2Ev
	.type	_ZNSt6vectorIP11VBaseOptionSaIS1_EED2Ev, @function
_ZNSt6vectorIP11VBaseOptionSaIS1_EED2Ev:
.LFB4942:
	.cfi_startproc
	endbr64
	movq	(%rdi), %rax
	testq	%rax, %rax
	je	.L56
	movq	16(%rdi), %rsi
	movq	%rax, %rdi
	subq	%rax, %rsi
	jmp	_ZdlPvm@PLT
	.p2align 4,,10
	.p2align 3
.L56:
	ret
	.cfi_endproc
.LFE4942:
	.size	_ZNSt6vectorIP11VBaseOptionSaIS1_EED2Ev, .-_ZNSt6vectorIP11VBaseOptionSaIS1_EED2Ev
	.weak	_ZNSt6vectorIP11VBaseOptionSaIS1_EED1Ev
	.set	_ZNSt6vectorIP11VBaseOptionSaIS1_EED1Ev,_ZNSt6vectorIP11VBaseOptionSaIS1_EED2Ev
	.section	.rodata._ZNSt6vectorISt7variantIJ10CallOption9PutOptionEESaIS3_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.str1.1,"aMS",@progbits,1
.LC5:
	.string	"vector::_M_realloc_insert"
	.section	.text._ZNSt6vectorISt7variantIJ10CallOption9PutOptionEESaIS3_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_,"axG",@progbits,_ZNSt6vectorISt7variantIJ10CallOption9PutOptionEESaIS3_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_,comdat
	.align 2
	.p2align 4
	.weak	_ZNSt6vectorISt7variantIJ10CallOption9PutOptionEESaIS3_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_
	.type	_ZNSt6vectorISt7variantIJ10CallOption9PutOptionEESaIS3_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_, @function
_ZNSt6vectorISt7variantIJ10CallOption9PutOptionEESaIS3_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_:
.LFB5205:
	.cfi_startproc
	endbr64
	movabsq	$-6148914691236517205, %rcx
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
	movq	8(%rdi), %r14
	movq	(%rdi), %rbp
	movq	%r14, %rax
	subq	%rbp, %rax
	sarq	$3, %rax
	imulq	%rcx, %rax
	movabsq	$384307168202282325, %rcx
	cmpq	%rcx, %rax
	je	.L76
	movq	%rsi, %rbx
	movq	%rdi, %r13
	subq	%rbp, %rsi
	cmpq	%r14, %rbp
	je	.L77
	leaq	(%rax,%rax), %rcx
	cmpq	%rax, %rcx
	jb	.L69
	testq	%rcx, %rcx
	jne	.L78
	movl	$24, %ecx
	xorl	%r12d, %r12d
	xorl	%r15d, %r15d
.L63:
	vmovdqu	(%rdx), %xmm2
	movl	16(%rdx), %edx
	leaq	(%r15,%rsi), %rax
	movb	$0, 20(%rax)
	movl	%edx, 16(%rax)
	vmovdqu	%xmm2, (%rax)
	cmpq	%rbp, %rbx
	je	.L64
	movq	%r15, %rdx
	movq	%rbp, %rax
	.p2align 4,,10
	.p2align 3
.L65:
	vmovdqu	(%rax), %xmm1
	movq	16(%rax), %rcx
	addq	$24, %rax
	addq	$24, %rdx
	vmovdqu	%xmm1, -24(%rdx)
	movq	%rcx, -8(%rdx)
	cmpq	%rbx, %rax
	jne	.L65
	movabsq	$768614336404564651, %rdx
	leaq	-24(%rbx), %rax
	subq	%rbp, %rax
	shrq	$3, %rax
	imulq	%rdx, %rax
	movabsq	$2305843009213693951, %rdx
	andq	%rdx, %rax
	leaq	(%rax,%rax,2), %rax
	leaq	48(%r15,%rax,8), %rcx
.L64:
	cmpq	%r14, %rbx
	je	.L66
	subq	%rbx, %r14
	movq	%rcx, %rdi
	movq	%rbx, %rsi
	movabsq	$768614336404564651, %rdx
	leaq	-24(%r14), %rax
	shrq	$3, %rax
	imulq	%rdx, %rax
	movabsq	$2305843009213693951, %rdx
	andq	%rdx, %rax
	leaq	3(%rax,%rax,2), %r14
	salq	$3, %r14
	movq	%r14, %rdx
	call	memcpy@PLT
	movq	%rax, %rcx
	addq	%r14, %rcx
.L66:
	vmovq	%r15, %xmm3
	vpinsrq	$1, %rcx, %xmm3, %xmm0
	testq	%rbp, %rbp
	je	.L67
	movq	16(%r13), %rsi
	movq	%rbp, %rdi
	vmovdqa	%xmm0, (%rsp)
	subq	%rbp, %rsi
	call	_ZdlPvm@PLT
	vmovdqa	(%rsp), %xmm0
.L67:
	movq	%r12, 16(%r13)
	vmovdqu	%xmm0, 0(%r13)
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
.L69:
	.cfi_restore_state
	movabsq	$9223372036854775800, %r12
.L62:
	movq	%r12, %rdi
	movq	%rdx, 24(%rsp)
	movq	%rsi, (%rsp)
	call	_Znwm@PLT
	movq	(%rsp), %rsi
	movq	24(%rsp), %rdx
	movq	%rax, %r15
	addq	%rax, %r12
	leaq	24(%rax), %rcx
	jmp	.L63
	.p2align 4,,10
	.p2align 3
.L77:
	addq	$1, %rax
	jc	.L69
	movabsq	$384307168202282325, %rcx
	cmpq	%rcx, %rax
	cmova	%rcx, %rax
	leaq	(%rax,%rax,2), %r12
	salq	$3, %r12
	jmp	.L62
.L78:
	movabsq	$384307168202282325, %rax
	cmpq	%rax, %rcx
	cmova	%rax, %rcx
	leaq	(%rcx,%rcx,2), %r12
	salq	$3, %r12
	jmp	.L62
.L76:
	leaq	.LC5(%rip), %rdi
	call	_ZSt20__throw_length_errorPKc@PLT
	.cfi_endproc
.LFE5205:
	.size	_ZNSt6vectorISt7variantIJ10CallOption9PutOptionEESaIS3_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_, .-_ZNSt6vectorISt7variantIJ10CallOption9PutOptionEESaIS3_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_
	.section	.text._ZNSt6vectorISt7variantIJ10CallOption9PutOptionEESaIS3_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_,"axG",@progbits,_ZNSt6vectorISt7variantIJ10CallOption9PutOptionEESaIS3_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_,comdat
	.align 2
	.p2align 4
	.weak	_ZNSt6vectorISt7variantIJ10CallOption9PutOptionEESaIS3_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_
	.type	_ZNSt6vectorISt7variantIJ10CallOption9PutOptionEESaIS3_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_, @function
_ZNSt6vectorISt7variantIJ10CallOption9PutOptionEESaIS3_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_:
.LFB5209:
	.cfi_startproc
	endbr64
	movabsq	$-6148914691236517205, %rcx
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
	movq	8(%rdi), %r14
	movq	(%rdi), %rbp
	movq	%r14, %rax
	subq	%rbp, %rax
	sarq	$3, %rax
	imulq	%rcx, %rax
	movabsq	$384307168202282325, %rcx
	cmpq	%rcx, %rax
	je	.L98
	movq	%rsi, %rbx
	movq	%rdi, %r13
	subq	%rbp, %rsi
	cmpq	%r14, %rbp
	je	.L99
	leaq	(%rax,%rax), %rcx
	cmpq	%rax, %rcx
	jb	.L91
	testq	%rcx, %rcx
	jne	.L100
	movl	$24, %ecx
	xorl	%r12d, %r12d
	xorl	%r15d, %r15d
.L85:
	vmovdqu	(%rdx), %xmm2
	movl	16(%rdx), %edx
	leaq	(%r15,%rsi), %rax
	movb	$1, 20(%rax)
	movl	%edx, 16(%rax)
	vmovdqu	%xmm2, (%rax)
	cmpq	%rbp, %rbx
	je	.L86
	movq	%r15, %rdx
	movq	%rbp, %rax
	.p2align 4,,10
	.p2align 3
.L87:
	vmovdqu	(%rax), %xmm1
	movq	16(%rax), %rcx
	addq	$24, %rax
	addq	$24, %rdx
	vmovdqu	%xmm1, -24(%rdx)
	movq	%rcx, -8(%rdx)
	cmpq	%rbx, %rax
	jne	.L87
	movabsq	$768614336404564651, %rdx
	leaq	-24(%rbx), %rax
	subq	%rbp, %rax
	shrq	$3, %rax
	imulq	%rdx, %rax
	movabsq	$2305843009213693951, %rdx
	andq	%rdx, %rax
	leaq	(%rax,%rax,2), %rax
	leaq	48(%r15,%rax,8), %rcx
.L86:
	cmpq	%r14, %rbx
	je	.L88
	subq	%rbx, %r14
	movq	%rcx, %rdi
	movq	%rbx, %rsi
	movabsq	$768614336404564651, %rdx
	leaq	-24(%r14), %rax
	shrq	$3, %rax
	imulq	%rdx, %rax
	movabsq	$2305843009213693951, %rdx
	andq	%rdx, %rax
	leaq	3(%rax,%rax,2), %r14
	salq	$3, %r14
	movq	%r14, %rdx
	call	memcpy@PLT
	movq	%rax, %rcx
	addq	%r14, %rcx
.L88:
	vmovq	%r15, %xmm3
	vpinsrq	$1, %rcx, %xmm3, %xmm0
	testq	%rbp, %rbp
	je	.L89
	movq	16(%r13), %rsi
	movq	%rbp, %rdi
	vmovdqa	%xmm0, (%rsp)
	subq	%rbp, %rsi
	call	_ZdlPvm@PLT
	vmovdqa	(%rsp), %xmm0
.L89:
	movq	%r12, 16(%r13)
	vmovdqu	%xmm0, 0(%r13)
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
.L91:
	.cfi_restore_state
	movabsq	$9223372036854775800, %r12
.L84:
	movq	%r12, %rdi
	movq	%rdx, 24(%rsp)
	movq	%rsi, (%rsp)
	call	_Znwm@PLT
	movq	(%rsp), %rsi
	movq	24(%rsp), %rdx
	movq	%rax, %r15
	addq	%rax, %r12
	leaq	24(%rax), %rcx
	jmp	.L85
	.p2align 4,,10
	.p2align 3
.L99:
	addq	$1, %rax
	jc	.L91
	movabsq	$384307168202282325, %rcx
	cmpq	%rcx, %rax
	cmova	%rcx, %rax
	leaq	(%rax,%rax,2), %r12
	salq	$3, %r12
	jmp	.L84
.L100:
	movabsq	$384307168202282325, %rax
	cmpq	%rax, %rcx
	cmova	%rax, %rcx
	leaq	(%rcx,%rcx,2), %r12
	salq	$3, %r12
	jmp	.L84
.L98:
	leaq	.LC5(%rip), %rdi
	call	_ZSt20__throw_length_errorPKc@PLT
	.cfi_endproc
.LFE5209:
	.size	_ZNSt6vectorISt7variantIJ10CallOption9PutOptionEESaIS3_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_, .-_ZNSt6vectorISt7variantIJ10CallOption9PutOptionEESaIS3_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_
	.section	.text._ZNSt6vectorIP11VBaseOptionSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_,"axG",@progbits,_ZNSt6vectorIP11VBaseOptionSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_,comdat
	.align 2
	.p2align 4
	.weak	_ZNSt6vectorIP11VBaseOptionSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
	.type	_ZNSt6vectorIP11VBaseOptionSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_, @function
_ZNSt6vectorIP11VBaseOptionSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_:
.LFB5377:
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
	je	.L124
	movq	%rsi, %r15
	movq	%rdi, %rbp
	movq	%rsi, %r14
	subq	%r13, %r15
	cmpq	%r12, %r13
	je	.L125
	leaq	(%rax,%rax), %rcx
	cmpq	%rax, %rcx
	jb	.L116
	testq	%rcx, %rcx
	jne	.L126
	xorl	%ebx, %ebx
	xorl	%edi, %edi
.L107:
	movq	(%rdx), %rax
	leaq	8(%rdi,%r15), %rcx
	subq	%r14, %r12
	vmovq	%rdi, %xmm1
	movq	%rax, (%rdi,%r15)
	leaq	(%rcx,%r12), %rax
	vpinsrq	$1, %rax, %xmm1, %xmm0
	vmovdqa	%xmm0, (%rsp)
	testq	%r15, %r15
	jg	.L127
	testq	%r12, %r12
	jle	.L111
	movq	%r12, %rdx
	movq	%r14, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
.L111:
	testq	%r13, %r13
	jne	.L110
.L113:
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
.L116:
	.cfi_restore_state
	movabsq	$9223372036854775800, %rbx
.L106:
	movq	%rbx, %rdi
	movq	%rdx, (%rsp)
	call	_Znwm@PLT
	movq	(%rsp), %rdx
	movq	%rax, %rdi
	addq	%rax, %rbx
	jmp	.L107
	.p2align 4,,10
	.p2align 3
.L127:
	movq	%r15, %rdx
	movq	%r13, %rsi
	movq	%rcx, 24(%rsp)
	call	memmove@PLT
	testq	%r12, %r12
	jg	.L128
.L110:
	movq	16(%rbp), %rsi
	movq	%r13, %rdi
	subq	%r13, %rsi
	call	_ZdlPvm@PLT
	jmp	.L113
	.p2align 4,,10
	.p2align 3
.L125:
	addq	$1, %rax
	jc	.L116
	movabsq	$1152921504606846975, %rcx
	cmpq	%rcx, %rax
	movq	%rcx, %rbx
	cmovbe	%rax, %rbx
	salq	$3, %rbx
	jmp	.L106
	.p2align 4,,10
	.p2align 3
.L128:
	movq	24(%rsp), %rdi
	movq	%r14, %rsi
	movq	%r12, %rdx
	call	memcpy@PLT
	movq	16(%rbp), %rsi
	movq	%r13, %rdi
	subq	%r13, %rsi
	call	_ZdlPvm@PLT
	jmp	.L113
.L126:
	movabsq	$1152921504606846975, %rax
	cmpq	%rax, %rcx
	cmova	%rax, %rcx
	leaq	0(,%rcx,8), %rbx
	jmp	.L106
.L124:
	leaq	.LC5(%rip), %rdi
	call	_ZSt20__throw_length_errorPKc@PLT
	.cfi_endproc
.LFE5377:
	.size	_ZNSt6vectorIP11VBaseOptionSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_, .-_ZNSt6vectorIP11VBaseOptionSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
	.section	.text._ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv,"axG",@progbits,_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv,comdat
	.align 2
	.p2align 4
	.weak	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv
	.type	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv, @function
_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv:
.LFB5536:
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
.L130:
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
	jne	.L130
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
.L131:
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
	jne	.L131
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
.LFE5536:
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
.LFB4529:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA4529
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
	subq	$1976, %rsp
	.cfi_def_cfa_offset 10224
	movq	%fs:40, %rax
	movq	%rax, 10152(%rsp)
	xorl	%eax, %eax
	leaq	144(%rsp), %rax
	movq	%rax, %rbx
	movq	%rax, %rdi
	movq	%rax, 40(%rsp)
.LEHB2:
	call	_ZNSt13random_deviceC1Ev
.LEHE2:
	movq	%rbx, %rdi
.LEHB3:
	call	_ZNSt13random_device9_M_getvalEv@PLT
.LEHE3:
	movl	%eax, %edx
	movl	$1, %ebp
	leaq	5152(%rsp), %r14
	movq	%rdx, 5152(%rsp)
	.p2align 4,,10
	.p2align 3
.L135:
	movq	%rdx, %rax
	shrq	$30, %rax
	xorq	%rdx, %rax
	imulq	$1812433253, %rax, %rax
	leal	(%rax,%rbp), %edx
	movq	%rdx, (%r14,%rbp,8)
	incq	%rbp
	cmpq	$624, %rbp
	jne	.L135
	vpxor	%xmm0, %xmm0, %xmm0
	movl	$48000000, %edi
	movq	$624, 10144(%rsp)
	movq	$0, 96(%rsp)
	vmovdqa	%xmm0, 80(%rsp)
.LEHB4:
	call	_Znwm@PLT
.LEHE4:
	vmovq	%rax, %xmm6
	leaq	48000000(%rax), %r12
	movq	%rax, %rbx
	movl	$16000000, %edi
	vpunpcklqdq	%xmm6, %xmm6, %xmm0
	leaq	112(%rsp), %rax
	movq	%r12, 96(%rsp)
	leaq	80(%rsp), %r15
	vmovdqa	%xmm0, 80(%rsp)
	vpxor	%xmm0, %xmm0, %xmm0
	movq	$0, 128(%rsp)
	movq	%rax, 32(%rsp)
	vmovdqa	%xmm0, 112(%rsp)
.LEHB5:
	call	_Znwm@PLT
	vmovq	%rax, %xmm6
	addq	$16000000, %rax
	movl	$1000000, %r13d
	movq	%rax, 128(%rsp)
	vpunpcklqdq	%xmm6, %xmm6, %xmm0
	leaq	112(%rsp), %rax
	movq	%rax, 32(%rsp)
	vmovdqa	%xmm0, 112(%rsp)
	jmp	.L136
	.p2align 4,,10
	.p2align 3
.L199:
	vxorps	%xmm6, %xmm6, %xmm6
	vcvtsi2ssq	%rax, %xmm6, %xmm1
.L138:
	vxorps	%xmm4, %xmm4, %xmm4
	vaddss	%xmm4, %xmm1, %xmm1
	vmulss	.LC22(%rip), %xmm1, %xmm1
	vcomiss	.LC23(%rip), %xmm1
	jnb	.L178
	vfmadd132ss	.LC24(%rip), %xmm4, %xmm1
.L139:
	cmpq	$623, %rdx
	ja	.L193
.L142:
	movq	5152(%rsp,%rdx,8), %rax
	leaq	1(%rdx), %rcx
	movq	%rcx, 10144(%rsp)
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
	js	.L143
	vxorps	%xmm7, %xmm7, %xmm7
	vcvtsi2ssq	%rax, %xmm7, %xmm2
.L144:
	vxorps	%xmm5, %xmm5, %xmm5
	vaddss	%xmm5, %xmm2, %xmm2
	vmulss	.LC22(%rip), %xmm2, %xmm2
	vcomiss	.LC23(%rip), %xmm2
	jnb	.L179
	vmovss	.LC26(%rip), %xmm7
	vfmadd132ss	.LC25(%rip), %xmm7, %xmm2
.L145:
	cmpq	$623, %rcx
	ja	.L194
.L146:
	movq	5152(%rsp,%rcx,8), %rax
	leaq	1(%rcx), %rdx
	movq	%rdx, 10144(%rsp)
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
	js	.L147
	vxorps	%xmm4, %xmm4, %xmm4
	vcvtsi2ssq	%rax, %xmm4, %xmm0
.L148:
	vxorps	%xmm6, %xmm6, %xmm6
	vaddss	%xmm6, %xmm0, %xmm0
	vmulss	.LC22(%rip), %xmm0, %xmm0
	vcomiss	.LC23(%rip), %xmm0
	jnb	.L180
	vmovss	.LC26(%rip), %xmm6
	vfmadd132ss	.LC25(%rip), %xmm6, %xmm0
.L149:
	cmpq	$623, %rdx
	ja	.L195
.L150:
	movq	5152(%rsp,%rdx,8), %rax
	leaq	1(%rdx), %rcx
	movq	%rcx, 10144(%rsp)
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
	js	.L151
	vxorps	%xmm6, %xmm6, %xmm6
	vcvtsi2ssq	%rax, %xmm6, %xmm3
.L152:
	vxorps	%xmm7, %xmm7, %xmm7
	vaddss	%xmm7, %xmm3, %xmm3
	vmulss	.LC22(%rip), %xmm3, %xmm3
	vcomiss	.LC23(%rip), %xmm3
	jnb	.L181
	vmovss	.LC28(%rip), %xmm7
	vfmadd132ss	.LC27(%rip), %xmm7, %xmm3
.L153:
	vunpcklps	%xmm3, %xmm0, %xmm0
	vunpcklps	%xmm2, %xmm1, %xmm1
	vmovlhps	%xmm0, %xmm1, %xmm4
	vmovaps	%xmm4, (%rsp)
	cmpq	$623, %rcx
	ja	.L196
.L154:
	movq	5152(%rsp,%rcx,8), %rax
	leaq	1(%rcx), %rbp
	movq	%rbp, 10144(%rsp)
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
	js	.L155
	vxorps	%xmm7, %xmm7, %xmm7
	vcvtsi2ssq	%rax, %xmm7, %xmm0
.L156:
	vxorps	%xmm5, %xmm5, %xmm5
	vaddss	%xmm5, %xmm0, %xmm0
	vmulss	.LC22(%rip), %xmm0, %xmm0
	vcomiss	.LC23(%rip), %xmm0
	jnb	.L182
	vmovss	.LC28(%rip), %xmm4
	vfmadd132ss	.LC29(%rip), %xmm4, %xmm0
	vmovss	%xmm0, 16(%rsp)
	vmovaps	%xmm0, %xmm7
.L157:
	vmovaps	(%rsp), %xmm6
	vmovss	%xmm7, 64(%rsp)
	vmovaps	%xmm6, 48(%rsp)
	cmpq	%r12, %rbx
	je	.L158
	movl	64(%rsp), %eax
	leaq	24(%rbx), %rsi
	vmovdqa	48(%rsp), %xmm5
	movb	$0, 20(%rbx)
	movq	%rsi, 88(%rsp)
	movl	%eax, 16(%rbx)
	vmovdqu	%xmm5, (%rbx)
.L159:
	vmovaps	(%rsp), %xmm4
	vmovss	16(%rsp), %xmm5
	vmovaps	%xmm4, 48(%rsp)
	vmovss	%xmm5, 64(%rsp)
	cmpq	%r12, %rsi
	je	.L160
	vmovdqa	48(%rsp), %xmm5
	movl	64(%rsp), %eax
	movb	$1, 20(%rsi)
	addq	$24, %rsi
	vmovdqu	%xmm5, -24(%rsi)
	movl	%eax, -8(%rsi)
	movq	%rsi, 88(%rsp)
.L161:
	movl	$32, %edi
	call	_Znwm@PLT
	vmovaps	(%rsp), %xmm6
	vmovss	16(%rsp), %xmm7
	movq	%rax, 48(%rsp)
	leaq	16+_ZTV11VCallOption(%rip), %rdi
	movq	%rdi, (%rax)
	movq	120(%rsp), %rsi
	vmovups	%xmm6, 8(%rax)
	vmovss	%xmm7, 24(%rax)
	cmpq	128(%rsp), %rsi
	je	.L162
	leaq	8(%rsi), %rbx
	movq	%rax, (%rsi)
	movq	%rbx, 120(%rsp)
.L163:
	movl	$32, %edi
	call	_Znwm@PLT
	vmovaps	(%rsp), %xmm4
	vmovss	16(%rsp), %xmm5
	movq	%rax, 48(%rsp)
	leaq	16+_ZTV10VPutOption(%rip), %rdi
	movq	%rdi, (%rax)
	vmovups	%xmm4, 8(%rax)
	vmovss	%xmm5, 24(%rax)
	cmpq	%rbx, 128(%rsp)
	je	.L164
	movq	%rax, (%rbx)
	addq	$8, %rbx
	movq	%rbx, 120(%rsp)
	movq	88(%rsp), %rbx
	decl	%r13d
	je	.L197
.L166:
	movq	96(%rsp), %r12
.L136:
	cmpq	$623, %rbp
	ja	.L198
.L141:
	movq	5152(%rsp,%rbp,8), %rax
	leaq	1(%rbp), %rdx
	movq	%rdx, 10144(%rsp)
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
	jns	.L199
	movq	%rax, %rcx
	andl	$1, %eax
	vxorps	%xmm5, %xmm5, %xmm5
	shrq	%rcx
	orq	%rax, %rcx
	vcvtsi2ssq	%rcx, %xmm5, %xmm1
	vaddss	%xmm1, %xmm1, %xmm1
	jmp	.L138
	.p2align 4,,10
	.p2align 3
.L155:
	movq	%rax, %rdx
	andl	$1, %eax
	vxorps	%xmm4, %xmm4, %xmm4
	shrq	%rdx
	orq	%rax, %rdx
	vcvtsi2ssq	%rdx, %xmm4, %xmm0
	vaddss	%xmm0, %xmm0, %xmm0
	jmp	.L156
	.p2align 4,,10
	.p2align 3
.L151:
	movq	%rax, %rdx
	andl	$1, %eax
	vxorps	%xmm3, %xmm3, %xmm3
	shrq	%rdx
	orq	%rax, %rdx
	vcvtsi2ssq	%rdx, %xmm3, %xmm3
	vaddss	%xmm3, %xmm3, %xmm3
	jmp	.L152
	.p2align 4,,10
	.p2align 3
.L147:
	movq	%rax, %rcx
	andl	$1, %eax
	vxorps	%xmm5, %xmm5, %xmm5
	shrq	%rcx
	orq	%rax, %rcx
	vcvtsi2ssq	%rcx, %xmm5, %xmm0
	vaddss	%xmm0, %xmm0, %xmm0
	jmp	.L148
	.p2align 4,,10
	.p2align 3
.L143:
	movq	%rax, %rdx
	andl	$1, %eax
	vxorps	%xmm4, %xmm4, %xmm4
	shrq	%rdx
	orq	%rax, %rdx
	vcvtsi2ssq	%rdx, %xmm4, %xmm2
	vaddss	%xmm2, %xmm2, %xmm2
	jmp	.L144
	.p2align 4,,10
	.p2align 3
.L193:
	movq	%r14, %rdi
	vmovss	%xmm1, (%rsp)
	call	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv
	movq	10144(%rsp), %rdx
	vmovss	(%rsp), %xmm1
	jmp	.L142
	.p2align 4,,10
	.p2align 3
.L194:
	movq	%r14, %rdi
	vmovss	%xmm2, 16(%rsp)
	vmovss	%xmm1, (%rsp)
	call	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv
	vmovss	16(%rsp), %xmm2
	vmovss	(%rsp), %xmm1
	movq	10144(%rsp), %rcx
	jmp	.L146
	.p2align 4,,10
	.p2align 3
.L195:
	movq	%r14, %rdi
	vmovss	%xmm0, 28(%rsp)
	vmovss	%xmm2, 16(%rsp)
	vmovss	%xmm1, (%rsp)
	call	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv
	vmovss	28(%rsp), %xmm0
	vmovss	16(%rsp), %xmm2
	movq	10144(%rsp), %rdx
	vmovss	(%rsp), %xmm1
	jmp	.L150
	.p2align 4,,10
	.p2align 3
.L198:
	movq	%r14, %rdi
	call	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv
	movq	10144(%rsp), %rbp
	jmp	.L141
	.p2align 4,,10
	.p2align 3
.L196:
	movq	%r14, %rdi
	call	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv
	movq	10144(%rsp), %rcx
	jmp	.L154
	.p2align 4,,10
	.p2align 3
.L160:
	leaq	48(%rsp), %rdx
	movq	%r15, %rdi
	call	_ZNSt6vectorISt7variantIJ10CallOption9PutOptionEESaIS3_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_
	jmp	.L161
	.p2align 4,,10
	.p2align 3
.L158:
	leaq	48(%rsp), %rdx
	movq	%rbx, %rsi
	movq	%r15, %rdi
	call	_ZNSt6vectorISt7variantIJ10CallOption9PutOptionEESaIS3_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_
	movq	88(%rsp), %rsi
	movq	96(%rsp), %r12
	jmp	.L159
	.p2align 4,,10
	.p2align 3
.L162:
	movq	32(%rsp), %rdi
	leaq	48(%rsp), %rdx
	call	_ZNSt6vectorIP11VBaseOptionSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
	movq	120(%rsp), %rbx
	jmp	.L163
	.p2align 4,,10
	.p2align 3
.L164:
	movq	32(%rsp), %rdi
	leaq	48(%rsp), %rdx
	movq	%rbx, %rsi
	call	_ZNSt6vectorIP11VBaseOptionSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
	movq	88(%rsp), %rbx
	decl	%r13d
	jne	.L166
.L197:
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	movq	80(%rsp), %rbp
	movl	$0x00000000, (%rsp)
	movq	%rax, %r12
	cmpq	%rbx, %rbp
	jne	.L170
	jmp	.L167
	.p2align 4,,10
	.p2align 3
.L200:
	call	_ZNK10CallOption11priceOptionEv
.L169:
	vaddss	(%rsp), %xmm0, %xmm7
	addq	$24, %rbp
	vmovss	%xmm7, (%rsp)
	cmpq	%rbx, %rbp
	je	.L167
.L170:
	cmpb	$0, 20(%rbp)
	movq	%rbp, %rdi
	je	.L200
	call	_ZNK9PutOption11priceOptionEv
	jmp	.L169
	.p2align 4,,10
	.p2align 3
.L182:
	vmovss	.LC20(%rip), %xmm6
	vmovss	%xmm6, 16(%rsp)
	vmovaps	%xmm6, %xmm7
	jmp	.L157
	.p2align 4,,10
	.p2align 3
.L181:
	vmovss	.LC19(%rip), %xmm3
	jmp	.L153
	.p2align 4,,10
	.p2align 3
.L180:
	vmovss	.LC18(%rip), %xmm0
	jmp	.L149
	.p2align 4,,10
	.p2align 3
.L179:
	vmovss	.LC18(%rip), %xmm2
	jmp	.L145
	.p2align 4,,10
	.p2align 3
.L178:
	vmovss	.LC17(%rip), %xmm1
	jmp	.L139
.L167:
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	leaq	.LC30(%rip), %rsi
	movabsq	$2361183241434822607, %rdx
	subq	%r12, %rax
	leaq	_ZSt4cout(%rip), %r12
	movq	%rax, %rcx
	imulq	%rdx
	movq	%r12, %rdi
	sarq	$63, %rcx
	sarq	$7, %rdx
	subq	%rcx, %rdx
	movq	%rdx, %rbp
	movl	$16, %edx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	$2000000, %esi
	movq	%r12, %rdi
	call	_ZNSolsEi@PLT
	leaq	.LC31(%rip), %r13
	movl	$14, %edx
	movq	%rax, %rdi
	movq	%rax, %rbx
	movq	%r13, %rsi
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
	movl	$17, %edx
	leaq	.LC33(%rip), %rsi
	movq	%r12, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%r12, %rdi
	vcvtss2sd	(%rsp), %xmm0, %xmm0
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	movq	%rax, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	movq	112(%rsp), %rbx
	movq	120(%rsp), %rbp
	movl	$0x00000000, (%rsp)
	movq	%rax, 16(%rsp)
	cmpq	%rbx, %rbp
	je	.L171
	.p2align 4,,10
	.p2align 3
.L172:
	movq	(%rbx), %rdi
	movq	(%rdi), %rax
	call	*16(%rax)
	vaddss	(%rsp), %xmm0, %xmm6
	addq	$8, %rbx
	vmovss	%xmm6, (%rsp)
	cmpq	%rbx, %rbp
	jne	.L172
.L171:
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	movq	16(%rsp), %rdi
	movabsq	$2361183241434822607, %rdx
	leaq	.LC34(%rip), %rsi
	subq	%rdi, %rax
	movq	%r12, %rdi
	movq	%rax, %rcx
	imulq	%rdx
	sarq	$63, %rcx
	sarq	$7, %rdx
	subq	%rcx, %rdx
	movq	%rdx, %rbp
	movl	$19, %edx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	$2000000, %esi
	movq	%r12, %rdi
	call	_ZNSolsEi@PLT
	movl	$14, %edx
	movq	%r13, %rsi
	movq	%rax, %rdi
	movq	%rax, %rbx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%rbp, %rsi
	movq	%rbx, %rdi
	call	_ZNSo9_M_insertIlEERSoT_@PLT
	movl	$13, %edx
	movq	%r14, %rsi
	movq	%rax, %rdi
	movq	%rax, %rbx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%rbx, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0
	movl	$17, %edx
	leaq	.LC33(%rip), %rsi
	movq	%r12, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%r12, %rdi
	vcvtss2sd	(%rsp), %xmm0, %xmm0
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	movq	%rax, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0
.LEHE5:
	movq	32(%rsp), %rdi
	call	_ZNSt6vectorIP11VBaseOptionSaIS1_EED1Ev
	movq	%r15, %rdi
	call	_ZNSt6vectorISt7variantIJ10CallOption9PutOptionEESaIS3_EED1Ev
	movq	40(%rsp), %rdi
	call	_ZNSt13random_device7_M_finiEv@PLT
	movq	10152(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L201
	addq	$10168, %rsp
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
.L201:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
.L187:
	endbr64
	movq	%rax, %rbx
	jmp	.L173
.L186:
	endbr64
	movq	%rax, %rbx
	leaq	80(%rsp), %r15
	vzeroupper
	jmp	.L174
.L185:
	endbr64
	movq	%rax, %rbx
	vzeroupper
	jmp	.L175
	.section	.gcc_except_table,"a",@progbits
.LLSDA4529:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4529-.LLSDACSB4529
.LLSDACSB4529:
	.uleb128 .LEHB2-.LFB4529
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB3-.LFB4529
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L185-.LFB4529
	.uleb128 0
	.uleb128 .LEHB4-.LFB4529
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L186-.LFB4529
	.uleb128 0
	.uleb128 .LEHB5-.LFB4529
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L187-.LFB4529
	.uleb128 0
.LLSDACSE4529:
	.section	.text.startup
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC4529
	.type	main.cold, @function
main.cold:
.LFSB4529:
.L173:
	.cfi_def_cfa_offset 10224
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	movq	32(%rsp), %rdi
	vzeroupper
	call	_ZNSt6vectorIP11VBaseOptionSaIS1_EED1Ev
.L174:
	movq	%r15, %rdi
	call	_ZNSt6vectorISt7variantIJ10CallOption9PutOptionEESaIS3_EED1Ev
.L175:
	movq	40(%rsp), %rdi
	call	_ZNSt13random_device7_M_finiEv@PLT
	movq	10152(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L202
	movq	%rbx, %rdi
.LEHB6:
	call	_Unwind_Resume@PLT
.LEHE6:
.L202:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE4529:
	.section	.gcc_except_table
.LLSDAC4529:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC4529-.LLSDACSBC4529
.LLSDACSBC4529:
	.uleb128 .LEHB6-.LCOLDB36
	.uleb128 .LEHE6-.LEHB6
	.uleb128 0
	.uleb128 0
.LLSDACSEC4529:
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
.LC17:
	.long	1028443340
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

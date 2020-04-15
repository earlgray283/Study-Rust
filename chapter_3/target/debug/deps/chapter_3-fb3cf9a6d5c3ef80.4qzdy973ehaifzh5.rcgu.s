	.text
	.file	"4qzdy973ehaifzh5"
	.section	".text._ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17hb30a7dcec9a4fe2fE","ax",@progbits
	.hidden	_ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17hb30a7dcec9a4fe2fE
	.globl	_ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17hb30a7dcec9a4fe2fE
	.p2align	4, 0x90
	.type	_ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17hb30a7dcec9a4fe2fE,@function
_ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17hb30a7dcec9a4fe2fE:
.Lfunc_begin0:
	.file	1 "/rustc/b8cedc00407a4c56a3bda1ed605c6fc166655447/src/libstd/process.rs"
	.loc	1 1653 0
	.cfi_startproc
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	xorl	%edi, %edi
.Ltmp0:
	.loc	1 1654 8 prologue_end
	callq	_ZN68_$LT$std..process..ExitCode$u20$as$u20$std..process..Termination$GT$6report17h5d0ee5550281656dE
	movl	%eax, 12(%rsp)
	.loc	1 0 8 is_stmt 0
	movl	12(%rsp), %eax
	.loc	1 1655 5 is_stmt 1
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	retq
.Ltmp1:
.Lfunc_end0:
	.size	_ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17hb30a7dcec9a4fe2fE, .Lfunc_end0-_ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17hb30a7dcec9a4fe2fE
	.cfi_endproc

	.section	".text._ZN68_$LT$std..process..ExitCode$u20$as$u20$std..process..Termination$GT$6report17h5d0ee5550281656dE","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN68_$LT$std..process..ExitCode$u20$as$u20$std..process..Termination$GT$6report17h5d0ee5550281656dE,@function
_ZN68_$LT$std..process..ExitCode$u20$as$u20$std..process..Termination$GT$6report17h5d0ee5550281656dE:
.Lfunc_begin1:
	.loc	1 1687 0
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	movb	%dil, 7(%rsp)
.Ltmp2:
	.loc	1 1688 8 prologue_end
	leaq	7(%rsp), %rdi
.Ltmp3:
	callq	_ZN3std3sys4unix7process14process_common8ExitCode6as_i3217h8600bfa9b448ee65E
.Ltmp4:
	.loc	1 0 8 is_stmt 0
	movl	%eax, (%rsp)
	movl	(%rsp), %eax
	.loc	1 1689 5 is_stmt 1
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Ltmp5:
.Lfunc_end1:
	.size	_ZN68_$LT$std..process..ExitCode$u20$as$u20$std..process..Termination$GT$6report17h5d0ee5550281656dE, .Lfunc_end1-_ZN68_$LT$std..process..ExitCode$u20$as$u20$std..process..Termination$GT$6report17h5d0ee5550281656dE
	.cfi_endproc

	.type	__rustc_debug_gdb_scripts_section__,@object
	.section	.debug_gdb_scripts,"aMS",@progbits,1
	.weak	__rustc_debug_gdb_scripts_section__
__rustc_debug_gdb_scripts_section__:
	.asciz	"\001gdb_load_rust_pretty_printers.py"
	.size	__rustc_debug_gdb_scripts_section__, 34

	.hidden	_ZN3std3sys4unix7process14process_common8ExitCode6as_i3217h8600bfa9b448ee65E
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"clang LLVM (rustc version 1.42.0 (b8cedc004 2020-03-09))"
.Linfo_string1:
	.asciz	"src/main.rs"
.Linfo_string2:
	.asciz	"/home/earlgray283/Source/study-rust/chapter_3"
.Linfo_string3:
	.asciz	"std"
.Linfo_string4:
	.asciz	"process"
.Linfo_string5:
	.asciz	"{{impl}}"
.Linfo_string6:
	.asciz	"_ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17hb30a7dcec9a4fe2fE"
.Linfo_string7:
	.asciz	"report"
.Linfo_string8:
	.asciz	"i32"
.Linfo_string9:
	.asciz	"_ZN68_$LT$std..process..ExitCode$u20$as$u20$std..process..Termination$GT$6report17h5d0ee5550281656dE"
.Linfo_string10:
	.asciz	"self"
.Linfo_string11:
	.asciz	"()"
.Linfo_string12:
	.asciz	"__0"
.Linfo_string13:
	.asciz	"sys"
.Linfo_string14:
	.asciz	"unix"
.Linfo_string15:
	.asciz	"process_common"
.Linfo_string16:
	.asciz	"u8"
.Linfo_string17:
	.asciz	"ExitCode"
	.section	.debug_abbrev,"",@progbits
	.byte	1
	.byte	17
	.byte	1
	.byte	37
	.byte	14
	.byte	19
	.byte	5
	.byte	3
	.byte	14
	.byte	16
	.byte	23
	.byte	27
	.byte	14
	.ascii	"\264B"
	.byte	25
	.byte	17
	.byte	1
	.byte	85
	.byte	23
	.byte	0
	.byte	0
	.byte	2
	.byte	57
	.byte	1
	.byte	3
	.byte	14
	.byte	0
	.byte	0
	.byte	3
	.byte	46
	.byte	1
	.byte	17
	.byte	1
	.byte	18
	.byte	6
	.byte	64
	.byte	24
	.byte	110
	.byte	14
	.byte	3
	.byte	14
	.byte	58
	.byte	11
	.byte	59
	.byte	5
	.byte	73
	.byte	19
	.byte	0
	.byte	0
	.byte	4
	.byte	5
	.byte	0
	.byte	2
	.byte	24
	.byte	3
	.byte	14
	.byte	58
	.byte	11
	.byte	59
	.byte	5
	.byte	73
	.byte	19
	.byte	0
	.byte	0
	.byte	5
	.byte	19
	.byte	1
	.byte	3
	.byte	14
	.byte	11
	.byte	11
	.ascii	"\210\001"
	.byte	15
	.byte	0
	.byte	0
	.byte	6
	.byte	13
	.byte	0
	.byte	3
	.byte	14
	.byte	73
	.byte	19
	.ascii	"\210\001"
	.byte	15
	.byte	56
	.byte	11
	.byte	0
	.byte	0
	.byte	7
	.byte	36
	.byte	0
	.byte	3
	.byte	14
	.byte	62
	.byte	11
	.byte	11
	.byte	11
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0
.Ldebug_info_start0:
	.short	4
	.long	.debug_abbrev
	.byte	8
	.byte	1
	.long	.Linfo_string0
	.short	28
	.long	.Linfo_string1
	.long	.Lline_table_start0
	.long	.Linfo_string2

	.quad	0
	.long	.Ldebug_ranges0
	.byte	2
	.long	.Linfo_string3
	.byte	2
	.long	.Linfo_string4
	.byte	2
	.long	.Linfo_string5
	.byte	3
	.quad	.Lfunc_begin0
	.long	.Lfunc_end0-.Lfunc_begin0
	.byte	1
	.byte	87
	.long	.Linfo_string6
	.long	.Linfo_string7
	.byte	1
	.short	1653
	.long	214
	.byte	4
	.byte	2
	.byte	145
	.byte	16
	.long	.Linfo_string10
	.byte	1
	.short	1653
	.long	221
	.byte	0
	.byte	3
	.quad	.Lfunc_begin1
	.long	.Lfunc_end1-.Lfunc_begin1
	.byte	1
	.byte	87
	.long	.Linfo_string9
	.long	.Linfo_string7
	.byte	1
	.short	1687
	.long	214
	.byte	4
	.byte	2
	.byte	145
	.byte	7
	.long	.Linfo_string10
	.byte	1
	.short	1687
	.long	150
	.byte	0
	.byte	0
	.byte	5
	.long	.Linfo_string17
	.byte	1
	.byte	1
	.byte	6
	.long	.Linfo_string12
	.long	190
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	2
	.long	.Linfo_string13
	.byte	2
	.long	.Linfo_string14
	.byte	2
	.long	.Linfo_string4
	.byte	2
	.long	.Linfo_string15
	.byte	5
	.long	.Linfo_string17
	.byte	1
	.byte	1
	.byte	6
	.long	.Linfo_string12
	.long	228
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	7
	.long	.Linfo_string8
	.byte	5
	.byte	4
	.byte	7
	.long	.Linfo_string11
	.byte	7
	.byte	0
	.byte	7
	.long	.Linfo_string16
	.byte	7
	.byte	1
	.byte	0
.Ldebug_info_end0:
	.section	".text._ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17hb30a7dcec9a4fe2fE","ax",@progbits
.Lsec_end0:
	.section	".text._ZN68_$LT$std..process..ExitCode$u20$as$u20$std..process..Termination$GT$6report17h5d0ee5550281656dE","ax",@progbits
.Lsec_end1:
	.section	.debug_aranges,"",@progbits
	.long	60
	.short	2
	.long	.Lcu_begin0
	.byte	8
	.byte	0
	.zero	4,255
	.quad	.Lfunc_begin0
	.quad	.Lsec_end0-.Lfunc_begin0
	.quad	.Lfunc_begin1
	.quad	.Lsec_end1-.Lfunc_begin1
	.quad	0
	.quad	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.Lfunc_begin0
	.quad	.Lfunc_end0
	.quad	.Lfunc_begin1
	.quad	.Lfunc_end1
	.quad	0
	.quad	0
	.section	.debug_macinfo,"",@progbits
	.byte	0
	.section	.debug_pubnames,"",@progbits
	.long	.LpubNames_end0-.LpubNames_begin0
.LpubNames_begin0:
	.short	2
	.long	.Lcu_begin0
	.long	236
	.long	170
	.asciz	"sys"
	.long	52
	.asciz	"{{impl}}"
	.long	175
	.asciz	"unix"
	.long	185
	.asciz	"process_common"
	.long	42
	.asciz	"std"
	.long	103
	.asciz	"report"
	.long	180
	.asciz	"process"
	.long	0
.LpubNames_end0:
	.section	.debug_pubtypes,"",@progbits
	.long	.LpubTypes_end0-.LpubTypes_begin0
.LpubTypes_begin0:
	.short	2
	.long	.Lcu_begin0
	.long	236
	.long	221
	.asciz	"()"
	.long	190
	.asciz	"ExitCode"
	.long	228
	.asciz	"u8"
	.long	214
	.asciz	"i32"
	.long	0
.LpubTypes_end0:

	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:

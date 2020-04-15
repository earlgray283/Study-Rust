	.text
	.file	"34if1sye8uwh32lw"
	.section	.text._ZN3std2rt10lang_start17h95a2ebc839f13595E,"ax",@progbits
	.hidden	_ZN3std2rt10lang_start17h95a2ebc839f13595E
	.globl	_ZN3std2rt10lang_start17h95a2ebc839f13595E
	.p2align	4, 0x90
	.type	_ZN3std2rt10lang_start17h95a2ebc839f13595E,@function
_ZN3std2rt10lang_start17h95a2ebc839f13595E:
.Lfunc_begin0:
	.file	1 "/rustc/b8cedc00407a4c56a3bda1ed605c6fc166655447/src/libstd/rt.rs"
	.loc	1 62 0
	.cfi_startproc
	subq	$56, %rsp
	.cfi_def_cfa_offset 64
	leaq	.L__unnamed_1(%rip), %rax
	movq	%rdi, 24(%rsp)
	movq	%rsi, 32(%rsp)
	movq	%rdx, 40(%rsp)
.Ltmp0:
	.loc	1 67 25 prologue_end
	movq	24(%rsp), %rcx
	movq	%rcx, 48(%rsp)
	.loc	1 67 24 is_stmt 0
	leaq	48(%rsp), %rcx
	.loc	1 67 50
	movq	32(%rsp), %rdx
	.loc	1 67 56
	movq	40(%rsp), %rsi
	.loc	1 67 4
	movq	%rcx, %rdi
	movq	%rsi, 16(%rsp)
	movq	%rax, %rsi
	movq	16(%rsp), %rcx
	callq	*_ZN3std2rt19lang_start_internal17h9cf8802361ad86c2E@GOTPCREL(%rip)
	movq	%rax, 8(%rsp)
	.loc	1 0 4
	movq	8(%rsp), %rax
	.loc	1 68 1 is_stmt 1
	addq	$56, %rsp
	.cfi_def_cfa_offset 8
	retq
.Ltmp1:
.Lfunc_end0:
	.size	_ZN3std2rt10lang_start17h95a2ebc839f13595E, .Lfunc_end0-_ZN3std2rt10lang_start17h95a2ebc839f13595E
	.cfi_endproc

	.section	".text._ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h6fa77a636e9baf3fE","ax",@progbits
	.hidden	_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h6fa77a636e9baf3fE
	.globl	_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h6fa77a636e9baf3fE
	.p2align	4, 0x90
	.type	_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h6fa77a636e9baf3fE,@function
_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h6fa77a636e9baf3fE:
.Lfunc_begin1:
	.loc	1 67 0
	.cfi_startproc
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 16(%rsp)
.Ltmp2:
	.loc	1 67 33 prologue_end
	movq	16(%rsp), %rax
	callq	*(%rax)
	callq	_ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17hb30a7dcec9a4fe2fE
	movl	%eax, 12(%rsp)
	.loc	1 0 33 is_stmt 0
	movl	12(%rsp), %eax
	.loc	1 67 48
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	retq
.Ltmp3:
.Lfunc_end1:
	.size	_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h6fa77a636e9baf3fE, .Lfunc_end1-_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h6fa77a636e9baf3fE
	.cfi_endproc

	.type	.L__unnamed_1,@object
	.section	.data.rel.ro..L__unnamed_1,"aw",@progbits
	.p2align	3
.L__unnamed_1:
	.quad	_ZN4core3ptr13drop_in_place17h2d2b31ebc437634aE
	.quad	8
	.quad	8
	.quad	_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h6fa77a636e9baf3fE
	.quad	_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h6fa77a636e9baf3fE
	.quad	_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17hcd711893c6f7ae37E
	.size	.L__unnamed_1, 48

	.type	__rustc_debug_gdb_scripts_section__,@object
	.section	.debug_gdb_scripts,"aMS",@progbits,1
	.weak	__rustc_debug_gdb_scripts_section__
__rustc_debug_gdb_scripts_section__:
	.asciz	"\001gdb_load_rust_pretty_printers.py"
	.size	__rustc_debug_gdb_scripts_section__, 34

	.hidden	_ZN4core3ptr13drop_in_place17h2d2b31ebc437634aE
	.hidden	_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17hcd711893c6f7ae37E
	.hidden	_ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17hb30a7dcec9a4fe2fE
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"clang LLVM (rustc version 1.42.0 (b8cedc004 2020-03-09))"
.Linfo_string1:
	.asciz	"src/main.rs"
.Linfo_string2:
	.asciz	"/home/earlgray283/Source/study-rust/chapter_3"
.Linfo_string3:
	.asciz	"vtable"
.Linfo_string4:
	.asciz	"std"
.Linfo_string5:
	.asciz	"rt"
.Linfo_string6:
	.asciz	"lang_start"
.Linfo_string7:
	.asciz	"__0"
.Linfo_string8:
	.asciz	"fn()"
.Linfo_string9:
	.asciz	"closure-0"
.Linfo_string10:
	.asciz	"()"
.Linfo_string11:
	.asciz	"T"
.Linfo_string12:
	.asciz	"_ZN3std2rt10lang_start17h95a2ebc839f13595E"
.Linfo_string13:
	.asciz	"lang_start<()>"
.Linfo_string14:
	.asciz	"isize"
.Linfo_string15:
	.asciz	"_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h6fa77a636e9baf3fE"
.Linfo_string16:
	.asciz	"{{closure}}<()>"
.Linfo_string17:
	.asciz	"i32"
.Linfo_string18:
	.asciz	"main"
.Linfo_string19:
	.asciz	"argc"
.Linfo_string20:
	.asciz	"argv"
.Linfo_string21:
	.asciz	"u8"
.Linfo_string22:
	.asciz	"*const u8"
.Linfo_string23:
	.asciz	"*const *const u8"
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
	.byte	52
	.byte	0
	.byte	3
	.byte	14
	.byte	73
	.byte	19
	.byte	2
	.byte	24
	.byte	0
	.byte	0
	.byte	3
	.byte	19
	.byte	0
	.byte	29
	.byte	19
	.byte	3
	.byte	14
	.byte	11
	.byte	11
	.ascii	"\210\001"
	.byte	15
	.byte	0
	.byte	0
	.byte	4
	.byte	57
	.byte	1
	.byte	3
	.byte	14
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
	.byte	11
	.byte	73
	.byte	19
	.byte	0
	.byte	0
	.byte	8
	.byte	52
	.byte	0
	.byte	2
	.byte	24
	.byte	3
	.byte	14
	.ascii	"\210\001"
	.byte	15
	.byte	58
	.byte	11
	.byte	59
	.byte	11
	.byte	73
	.byte	19
	.byte	0
	.byte	0
	.byte	9
	.byte	47
	.byte	0
	.byte	73
	.byte	19
	.byte	3
	.byte	14
	.byte	0
	.byte	0
	.byte	10
	.byte	5
	.byte	0
	.byte	2
	.byte	24
	.byte	3
	.byte	14
	.byte	58
	.byte	11
	.byte	59
	.byte	11
	.byte	73
	.byte	19
	.byte	0
	.byte	0
	.byte	11
	.byte	15
	.byte	0
	.byte	73
	.byte	19
	.byte	3
	.byte	14
	.byte	0
	.byte	0
	.byte	12
	.byte	21
	.byte	0
	.byte	0
	.byte	0
	.byte	13
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
	.long	61
	.byte	9
	.byte	3
	.quad	.L__unnamed_1
	.byte	3
	.long	87
	.long	.Linfo_string3
	.byte	0
	.byte	8
	.byte	4
	.long	.Linfo_string4
	.byte	4
	.long	.Linfo_string5
	.byte	4
	.long	.Linfo_string6
	.byte	5
	.long	.Linfo_string9
	.byte	8
	.byte	8
	.byte	6
	.long	.Linfo_string7
	.long	245
	.byte	8
	.byte	0
	.byte	0
	.byte	7
	.quad	.Lfunc_begin1
	.long	.Lfunc_end1-.Lfunc_begin1
	.byte	1
	.byte	87
	.long	.Linfo_string15
	.long	.Linfo_string16
	.byte	1
	.byte	67
	.long	269
	.byte	8
	.byte	3
	.byte	145
	.byte	16
	.byte	6
	.long	.Linfo_string18
	.byte	1
	.byte	1
	.byte	63
	.long	245
	.byte	9
	.long	255
	.long	.Linfo_string11
	.byte	0
	.byte	0
	.byte	7
	.quad	.Lfunc_begin0
	.long	.Lfunc_end0-.Lfunc_begin0
	.byte	1
	.byte	87
	.long	.Linfo_string12
	.long	.Linfo_string13
	.byte	1
	.byte	62
	.long	262
	.byte	10
	.byte	2
	.byte	145
	.byte	24
	.long	.Linfo_string18
	.byte	1
	.byte	63
	.long	245
	.byte	10
	.byte	2
	.byte	145
	.byte	32
	.long	.Linfo_string19
	.byte	1
	.byte	64
	.long	262
	.byte	10
	.byte	2
	.byte	145
	.byte	40
	.long	.Linfo_string20
	.byte	1
	.byte	65
	.long	276
	.byte	9
	.long	255
	.long	.Linfo_string11
	.byte	0
	.byte	0
	.byte	0
	.byte	11
	.long	254
	.long	.Linfo_string8
	.byte	12
	.byte	13
	.long	.Linfo_string10
	.byte	7
	.byte	0
	.byte	13
	.long	.Linfo_string14
	.byte	5
	.byte	8
	.byte	13
	.long	.Linfo_string17
	.byte	5
	.byte	4
	.byte	11
	.long	285
	.long	.Linfo_string23
	.byte	11
	.long	294
	.long	.Linfo_string22
	.byte	13
	.long	.Linfo_string21
	.byte	7
	.byte	1
	.byte	0
.Ldebug_info_end0:
	.section	.data.rel.ro..L__unnamed_1,"aw",@progbits
.Lsec_end0:
	.section	.text._ZN3std2rt10lang_start17h95a2ebc839f13595E,"ax",@progbits
.Lsec_end1:
	.section	".text._ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h6fa77a636e9baf3fE","ax",@progbits
.Lsec_end2:
	.section	.debug_aranges,"",@progbits
	.long	76
	.short	2
	.long	.Lcu_begin0
	.byte	8
	.byte	0
	.zero	4,255
	.quad	.L__unnamed_1
	.quad	.Lsec_end0-.L__unnamed_1
	.quad	.Lfunc_begin0
	.quad	.Lsec_end1-.Lfunc_begin0
	.quad	.Lfunc_begin1
	.quad	.Lsec_end2-.Lfunc_begin1
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
	.long	302
	.long	77
	.asciz	"rt"
	.long	106
	.asciz	"{{closure}}<()>"
	.long	162
	.asciz	"lang_start<()>"
	.long	72
	.asciz	"std"
	.long	42
	.asciz	"vtable"
	.long	82
	.asciz	"lang_start"
	.long	0
.LpubNames_end0:
	.section	.debug_pubtypes,"",@progbits
	.long	.LpubTypes_end0-.LpubTypes_begin0
.LpubTypes_begin0:
	.short	2
	.long	.Lcu_begin0
	.long	302
	.long	276
	.asciz	"*const *const u8"
	.long	255
	.asciz	"()"
	.long	262
	.asciz	"isize"
	.long	245
	.asciz	"fn()"
	.long	285
	.asciz	"*const u8"
	.long	87
	.asciz	"closure-0"
	.long	294
	.asciz	"u8"
	.long	61
	.asciz	"vtable"
	.long	269
	.asciz	"i32"
	.long	0
.LpubTypes_end0:

	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:

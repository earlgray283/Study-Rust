	.text
	.file	"2rpyn1zyembyh7dx"
	.section	".text._ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17hcd711893c6f7ae37E","ax",@progbits
	.hidden	_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17hcd711893c6f7ae37E
	.globl	_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17hcd711893c6f7ae37E
	.p2align	4, 0x90
	.type	_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17hcd711893c6f7ae37E,@function
_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17hcd711893c6f7ae37E:
.Lfunc_begin0:
	.file	1 "/rustc/b8cedc00407a4c56a3bda1ed605c6fc166655447/src/libcore/ops/function.rs"
	.loc	1 232 0
	.cfi_startproc
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 8(%rsp)
.Ltmp0:
	.loc	1 232 4 prologue_end
	movq	8(%rsp), %rax
	movq	(%rax), %rdi
	callq	_ZN4core3ops8function6FnOnce9call_once17hb7f0785bced9f793E
	movl	%eax, 4(%rsp)
	.loc	1 0 4 is_stmt 0
	movl	4(%rsp), %eax
	.loc	1 232 4
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	retq
.Ltmp1:
.Lfunc_end0:
	.size	_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17hcd711893c6f7ae37E, .Lfunc_end0-_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17hcd711893c6f7ae37E
	.cfi_endproc

	.section	.text._ZN4core3ops8function6FnOnce9call_once17hb7f0785bced9f793E,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ops8function6FnOnce9call_once17hb7f0785bced9f793E,@function
_ZN4core3ops8function6FnOnce9call_once17hb7f0785bced9f793E:
.Lfunc_begin1:
	.loc	1 232 0 is_stmt 1
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception0
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	%rdi, 8(%rsp)
.Ltmp2:
	leaq	8(%rsp), %rdi
.Ltmp5:
	.loc	1 232 4 prologue_end
	callq	_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h6fa77a636e9baf3fE
.Ltmp3:
	movl	%eax, 4(%rsp)
	jmp	.LBB1_1
.LBB1_1:
	jmp	.LBB1_2
.LBB1_2:
	.loc	1 0 4 is_stmt 0
	movl	4(%rsp), %eax
	.loc	1 232 4
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB1_3:
	.cfi_def_cfa_offset 48
	jmp	.LBB1_4
.LBB1_4:
	movq	24(%rsp), %rdi
	callq	_Unwind_Resume@PLT
	ud2
.Ltmp6:
.LBB1_5:
.Ltmp4:
	.loc	1 0 4
	movq	%rax, 24(%rsp)
	movl	%edx, 32(%rsp)
	jmp	.LBB1_3
.Lfunc_end1:
	.size	_ZN4core3ops8function6FnOnce9call_once17hb7f0785bced9f793E, .Lfunc_end1-_ZN4core3ops8function6FnOnce9call_once17hb7f0785bced9f793E
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table1:
.Lexception0:
	.byte	255
	.byte	255
	.byte	1
	.uleb128 .Lcst_end0-.Lcst_begin0
.Lcst_begin0:
	.uleb128 .Ltmp2-.Lfunc_begin1
	.uleb128 .Ltmp3-.Ltmp2
	.uleb128 .Ltmp4-.Lfunc_begin1
	.byte	0
	.uleb128 .Ltmp3-.Lfunc_begin1
	.uleb128 .Lfunc_end1-.Ltmp3
	.byte	0
	.byte	0
.Lcst_end0:
	.p2align	2

	.section	.text._ZN4core3ptr13drop_in_place17h2d2b31ebc437634aE,"ax",@progbits
	.hidden	_ZN4core3ptr13drop_in_place17h2d2b31ebc437634aE
	.globl	_ZN4core3ptr13drop_in_place17h2d2b31ebc437634aE
	.p2align	4, 0x90
	.type	_ZN4core3ptr13drop_in_place17h2d2b31ebc437634aE,@function
_ZN4core3ptr13drop_in_place17h2d2b31ebc437634aE:
.Lfunc_begin2:
	.file	2 "/rustc/b8cedc00407a4c56a3bda1ed605c6fc166655447/src/libcore/ptr/mod.rs"
	.loc	2 174 0 is_stmt 1
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	%rdi, (%rsp)
.Ltmp7:
	.loc	2 174 0 prologue_end
	popq	%rax
	.cfi_def_cfa_offset 8
	retq
.Ltmp8:
.Lfunc_end2:
	.size	_ZN4core3ptr13drop_in_place17h2d2b31ebc437634aE, .Lfunc_end2-_ZN4core3ptr13drop_in_place17h2d2b31ebc437634aE
	.cfi_endproc

	.type	__rustc_debug_gdb_scripts_section__,@object
	.section	.debug_gdb_scripts,"aMS",@progbits,1
	.weak	__rustc_debug_gdb_scripts_section__
__rustc_debug_gdb_scripts_section__:
	.asciz	"\001gdb_load_rust_pretty_printers.py"
	.size	__rustc_debug_gdb_scripts_section__, 34

	.hidden	_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h6fa77a636e9baf3fE
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"clang LLVM (rustc version 1.42.0 (b8cedc004 2020-03-09))"
.Linfo_string1:
	.asciz	"src/main.rs"
.Linfo_string2:
	.asciz	"/home/earlgray283/Source/study-rust/chapter_3"
.Linfo_string3:
	.asciz	"core"
.Linfo_string4:
	.asciz	"ops"
.Linfo_string5:
	.asciz	"function"
.Linfo_string6:
	.asciz	"FnOnce"
.Linfo_string7:
	.asciz	"ptr"
.Linfo_string8:
	.asciz	"std"
.Linfo_string9:
	.asciz	"rt"
.Linfo_string10:
	.asciz	"lang_start"
.Linfo_string11:
	.asciz	"__0"
.Linfo_string12:
	.asciz	"fn()"
.Linfo_string13:
	.asciz	"closure-0"
.Linfo_string14:
	.asciz	"Self"
.Linfo_string15:
	.asciz	"()"
.Linfo_string16:
	.asciz	"Args"
.Linfo_string17:
	.asciz	"_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17hcd711893c6f7ae37E"
.Linfo_string18:
	.asciz	"call_once<closure-0,()>"
.Linfo_string19:
	.asciz	"i32"
.Linfo_string20:
	.asciz	"_ZN4core3ops8function6FnOnce9call_once17hb7f0785bced9f793E"
.Linfo_string21:
	.asciz	"T"
.Linfo_string22:
	.asciz	"_ZN4core3ptr13drop_in_place17h2d2b31ebc437634aE"
.Linfo_string23:
	.asciz	"drop_in_place<closure-0>"
.Linfo_string24:
	.asciz	"*mut closure-0"
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
	.byte	11
	.byte	73
	.byte	19
	.byte	0
	.byte	0
	.byte	4
	.byte	5
	.byte	0
	.byte	2
	.byte	24
	.byte	58
	.byte	11
	.byte	59
	.byte	11
	.byte	73
	.byte	19
	.byte	0
	.byte	0
	.byte	5
	.byte	47
	.byte	0
	.byte	73
	.byte	19
	.byte	3
	.byte	14
	.byte	0
	.byte	0
	.byte	6
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
	.byte	0
	.byte	0
	.byte	7
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
	.byte	8
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
	.byte	9
	.byte	15
	.byte	0
	.byte	73
	.byte	19
	.byte	3
	.byte	14
	.byte	0
	.byte	0
	.byte	10
	.byte	21
	.byte	0
	.byte	0
	.byte	0
	.byte	11
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
	.byte	2
	.long	.Linfo_string6
	.byte	3
	.quad	.Lfunc_begin0
	.long	.Lfunc_end0-.Lfunc_begin0
	.byte	1
	.byte	87
	.long	.Linfo_string17
	.long	.Linfo_string18
	.byte	1
	.byte	232
	.long	307
	.byte	4
	.byte	2
	.byte	145
	.byte	8
	.byte	1
	.byte	232
	.long	314
	.byte	4
	.byte	2
	.byte	145
	.byte	16
	.byte	1
	.byte	232
	.long	300
	.byte	5
	.long	268
	.long	.Linfo_string14
	.byte	5
	.long	300
	.long	.Linfo_string16
	.byte	0
	.byte	3
	.quad	.Lfunc_begin1
	.long	.Lfunc_end1-.Lfunc_begin1
	.byte	1
	.byte	87
	.long	.Linfo_string20
	.long	.Linfo_string18
	.byte	1
	.byte	232
	.long	307
	.byte	4
	.byte	2
	.byte	145
	.byte	8
	.byte	1
	.byte	232
	.long	268
	.byte	4
	.byte	2
	.byte	145
	.byte	16
	.byte	1
	.byte	232
	.long	300
	.byte	5
	.long	268
	.long	.Linfo_string14
	.byte	5
	.long	300
	.long	.Linfo_string16
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	2
	.long	.Linfo_string7
	.byte	6
	.quad	.Lfunc_begin2
	.long	.Lfunc_end2-.Lfunc_begin2
	.byte	1
	.byte	87
	.long	.Linfo_string22
	.long	.Linfo_string23
	.byte	2
	.byte	174
	.byte	4
	.byte	2
	.byte	145
	.byte	0
	.byte	2
	.byte	174
	.long	314
	.byte	5
	.long	268
	.long	.Linfo_string21
	.byte	0
	.byte	0
	.byte	0
	.byte	2
	.long	.Linfo_string8
	.byte	2
	.long	.Linfo_string9
	.byte	2
	.long	.Linfo_string10
	.byte	7
	.long	.Linfo_string13
	.byte	8
	.byte	8
	.byte	8
	.long	.Linfo_string11
	.long	290
	.byte	8
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	9
	.long	299
	.long	.Linfo_string12
	.byte	10
	.byte	11
	.long	.Linfo_string15
	.byte	7
	.byte	0
	.byte	11
	.long	.Linfo_string19
	.byte	5
	.byte	4
	.byte	9
	.long	268
	.long	.Linfo_string24
	.byte	0
.Ldebug_info_end0:
	.section	".text._ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17hcd711893c6f7ae37E","ax",@progbits
.Lsec_end0:
	.section	.text._ZN4core3ops8function6FnOnce9call_once17hb7f0785bced9f793E,"ax",@progbits
.Lsec_end1:
	.section	.text._ZN4core3ptr13drop_in_place17h2d2b31ebc437634aE,"ax",@progbits
.Lsec_end2:
	.section	.debug_aranges,"",@progbits
	.long	76
	.short	2
	.long	.Lcu_begin0
	.byte	8
	.byte	0
	.zero	4,255
	.quad	.Lfunc_begin0
	.quad	.Lsec_end0-.Lfunc_begin0
	.quad	.Lfunc_begin1
	.quad	.Lsec_end1-.Lfunc_begin1
	.quad	.Lfunc_begin2
	.quad	.Lsec_end2-.Lfunc_begin2
	.quad	0
	.quad	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.Lfunc_begin0
	.quad	.Lfunc_end0
	.quad	.Lfunc_begin1
	.quad	.Lfunc_end1
	.quad	.Lfunc_begin2
	.quad	.Lfunc_end2
	.quad	0
	.quad	0
	.section	.debug_macinfo,"",@progbits
	.byte	0
	.section	.debug_pubnames,"",@progbits
	.long	.LpubNames_end0-.LpubNames_begin0
.LpubNames_begin0:
	.short	2
	.long	.Lcu_begin0
	.long	324
	.long	130
	.asciz	"call_once<closure-0,()>"
	.long	47
	.asciz	"ops"
	.long	206
	.asciz	"drop_in_place<closure-0>"
	.long	52
	.asciz	"function"
	.long	201
	.asciz	"ptr"
	.long	42
	.asciz	"core"
	.long	57
	.asciz	"FnOnce"
	.long	253
	.asciz	"std"
	.long	258
	.asciz	"rt"
	.long	263
	.asciz	"lang_start"
	.long	0
.LpubNames_end0:
	.section	.debug_pubtypes,"",@progbits
	.long	.LpubTypes_end0-.LpubTypes_begin0
.LpubTypes_begin0:
	.short	2
	.long	.Lcu_begin0
	.long	324
	.long	300
	.asciz	"()"
	.long	290
	.asciz	"fn()"
	.long	268
	.asciz	"closure-0"
	.long	314
	.asciz	"*mut closure-0"
	.long	307
	.asciz	"i32"
	.long	0
.LpubTypes_end0:
	.hidden	DW.ref.rust_eh_personality
	.weak	DW.ref.rust_eh_personality
	.section	.data.DW.ref.rust_eh_personality,"aGw",@progbits,DW.ref.rust_eh_personality,comdat
	.p2align	3
	.type	DW.ref.rust_eh_personality,@object
	.size	DW.ref.rust_eh_personality, 8
DW.ref.rust_eh_personality:
	.quad	rust_eh_personality

	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:

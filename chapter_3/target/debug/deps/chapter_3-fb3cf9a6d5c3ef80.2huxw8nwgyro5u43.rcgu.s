	.text
	.file	"2huxw8nwgyro5u43"
	.section	.text._ZN4core3fmt10ArgumentV13new17h5d7d0837f1d6be2eE,"ax",@progbits
	.hidden	_ZN4core3fmt10ArgumentV13new17h5d7d0837f1d6be2eE
	.globl	_ZN4core3fmt10ArgumentV13new17h5d7d0837f1d6be2eE
	.p2align	4, 0x90
	.type	_ZN4core3fmt10ArgumentV13new17h5d7d0837f1d6be2eE,@function
_ZN4core3fmt10ArgumentV13new17h5d7d0837f1d6be2eE:
.Lfunc_begin0:
	.file	1 "/rustc/b8cedc00407a4c56a3bda1ed605c6fc166655447/src/libcore/fmt/mod.rs"
	.loc	1 274 0
	.cfi_startproc
	subq	$64, %rsp
	.cfi_def_cfa_offset 72
	movq	%rdi, 16(%rsp)
	movq	%rsi, 24(%rsp)
.Ltmp0:
	.loc	1 275 56 prologue_end
	movq	24(%rsp), %rax
	.loc	1 275 41 is_stmt 0
	movq	%rax, 48(%rsp)
	movq	48(%rsp), %rax
	movq	%rax, 8(%rsp)
	.loc	1 275 82
	movq	16(%rsp), %rax
	.loc	1 275 67
	movq	%rax, 56(%rsp)
	movq	56(%rsp), %rax
	movq	%rax, (%rsp)
	.loc	1 0 67
	movq	(%rsp), %rax
	.loc	1 275 17
	movq	%rax, 32(%rsp)
	movq	8(%rsp), %rcx
	movq	%rcx, 40(%rsp)
.Ltmp1:
	.loc	1 276 5 is_stmt 1
	movq	32(%rsp), %rax
	movq	40(%rsp), %rdx
	addq	$64, %rsp
	.cfi_def_cfa_offset 8
	retq
.Ltmp2:
.Lfunc_end0:
	.size	_ZN4core3fmt10ArgumentV13new17h5d7d0837f1d6be2eE, .Lfunc_end0-_ZN4core3fmt10ArgumentV13new17h5d7d0837f1d6be2eE
	.cfi_endproc

	.type	__rustc_debug_gdb_scripts_section__,@object
	.section	.debug_gdb_scripts,"aMS",@progbits,1
	.weak	__rustc_debug_gdb_scripts_section__
__rustc_debug_gdb_scripts_section__:
	.asciz	"\001gdb_load_rust_pretty_printers.py"
	.size	__rustc_debug_gdb_scripts_section__, 34

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
	.asciz	"result"
.Linfo_string5:
	.asciz	"u8"
.Linfo_string6:
	.asciz	"Ok"
.Linfo_string7:
	.asciz	"Err"
.Linfo_string8:
	.asciz	"Result"
.Linfo_string9:
	.asciz	"fmt"
.Linfo_string10:
	.asciz	"rt"
.Linfo_string11:
	.asciz	"v1"
.Linfo_string12:
	.asciz	"Left"
.Linfo_string13:
	.asciz	"Right"
.Linfo_string14:
	.asciz	"Center"
.Linfo_string15:
	.asciz	"Unknown"
.Linfo_string16:
	.asciz	"Alignment"
.Linfo_string17:
	.asciz	"value"
.Linfo_string18:
	.asciz	"_priv"
.Linfo_string19:
	.asciz	"()"
.Linfo_string20:
	.asciz	"_oibit_remover"
.Linfo_string21:
	.asciz	"marker"
.Linfo_string22:
	.asciz	"ops"
.Linfo_string23:
	.asciz	"function"
.Linfo_string24:
	.asciz	"pointer"
.Linfo_string25:
	.asciz	"*mut u8"
.Linfo_string26:
	.asciz	"vtable"
.Linfo_string27:
	.asciz	"usize"
.Linfo_string28:
	.asciz	"__ARRAY_SIZE_TYPE__"
.Linfo_string29:
	.asciz	"&[usize; 3]"
.Linfo_string30:
	.asciz	"*mut Fn<()>"
.Linfo_string31:
	.asciz	"T"
.Linfo_string32:
	.asciz	"PhantomData<*mut Fn<()>>"
.Linfo_string33:
	.asciz	"Void"
.Linfo_string34:
	.asciz	"&core::fmt::Void"
.Linfo_string35:
	.asciz	"formatter"
.Linfo_string36:
	.asciz	"flags"
.Linfo_string37:
	.asciz	"u32"
.Linfo_string38:
	.asciz	"fill"
.Linfo_string39:
	.asciz	"char"
.Linfo_string40:
	.asciz	"align"
.Linfo_string41:
	.asciz	"width"
.Linfo_string42:
	.asciz	"option"
.Linfo_string43:
	.asciz	"u64"
.Linfo_string44:
	.asciz	"None"
.Linfo_string45:
	.asciz	"Some"
.Linfo_string46:
	.asciz	"__0"
.Linfo_string47:
	.asciz	"Option<usize>"
.Linfo_string48:
	.asciz	"precision"
.Linfo_string49:
	.asciz	"buf"
.Linfo_string50:
	.asciz	"&mut Write"
.Linfo_string51:
	.asciz	"Formatter"
.Linfo_string52:
	.asciz	"&mut core::fmt::Formatter"
.Linfo_string53:
	.asciz	"fn(&core::fmt::Void, &mut core::fmt::Formatter) -> core::result::Result<(), core::fmt::Error>"
.Linfo_string54:
	.asciz	"ArgumentV1"
.Linfo_string55:
	.asciz	"i32"
.Linfo_string56:
	.asciz	"_ZN4core3fmt10ArgumentV13new17h5d7d0837f1d6be2eE"
.Linfo_string57:
	.asciz	"new<i32>"
.Linfo_string58:
	.asciz	"x"
.Linfo_string59:
	.asciz	"&i32"
.Linfo_string60:
	.asciz	"f"
.Linfo_string61:
	.asciz	"fn(&i32, &mut core::fmt::Formatter) -> core::result::Result<(), core::fmt::Error>"
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
	.byte	18
	.byte	6
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
	.byte	4
	.byte	1
	.byte	73
	.byte	19
	.byte	109
	.byte	25
	.byte	3
	.byte	14
	.byte	11
	.byte	11
	.ascii	"\210\001"
	.byte	15
	.byte	0
	.byte	0
	.byte	4
	.byte	40
	.byte	0
	.byte	3
	.byte	14
	.byte	28
	.byte	15
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
	.byte	5
	.byte	73
	.byte	19
	.byte	0
	.byte	0
	.byte	8
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
	.byte	52
	.byte	25
	.byte	0
	.byte	0
	.byte	11
	.byte	51
	.byte	1
	.byte	21
	.byte	19
	.byte	0
	.byte	0
	.byte	12
	.byte	13
	.byte	0
	.byte	73
	.byte	19
	.ascii	"\210\001"
	.byte	15
	.byte	56
	.byte	11
	.byte	52
	.byte	25
	.byte	0
	.byte	0
	.byte	13
	.byte	25
	.byte	1
	.byte	22
	.byte	11
	.byte	0
	.byte	0
	.byte	14
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
	.byte	15
	.byte	15
	.byte	0
	.byte	73
	.byte	19
	.byte	3
	.byte	14
	.byte	0
	.byte	0
	.byte	16
	.byte	1
	.byte	1
	.byte	73
	.byte	19
	.byte	0
	.byte	0
	.byte	17
	.byte	33
	.byte	0
	.byte	73
	.byte	19
	.byte	34
	.byte	11
	.byte	55
	.byte	11
	.byte	0
	.byte	0
	.byte	18
	.byte	36
	.byte	0
	.byte	3
	.byte	14
	.byte	11
	.byte	11
	.byte	62
	.byte	11
	.byte	0
	.byte	0
	.byte	19
	.byte	21
	.byte	1
	.byte	73
	.byte	19
	.byte	0
	.byte	0
	.byte	20
	.byte	5
	.byte	0
	.byte	73
	.byte	19
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

	.quad	.Lfunc_begin0
	.long	.Lfunc_end0-.Lfunc_begin0
	.byte	2
	.long	.Linfo_string3
	.byte	2
	.long	.Linfo_string4
	.byte	3
	.long	531

	.long	.Linfo_string8
	.byte	1
	.byte	1
	.byte	4
	.long	.Linfo_string6
	.byte	0
	.byte	4
	.long	.Linfo_string7
	.byte	1
	.byte	0
	.byte	0
	.byte	2
	.long	.Linfo_string9
	.byte	2
	.long	.Linfo_string10
	.byte	2
	.long	.Linfo_string11
	.byte	3
	.long	531

	.long	.Linfo_string16
	.byte	1
	.byte	1
	.byte	4
	.long	.Linfo_string12
	.byte	0
	.byte	4
	.long	.Linfo_string13
	.byte	1
	.byte	4
	.long	.Linfo_string14
	.byte	2
	.byte	4
	.long	.Linfo_string15
	.byte	3
	.byte	0
	.byte	0
	.byte	0
	.byte	5
	.long	.Linfo_string54
	.byte	16
	.byte	8
	.byte	6
	.long	.Linfo_string17
	.long	538
	.byte	8
	.byte	0
	.byte	6
	.long	.Linfo_string35
	.long	599
	.byte	8
	.byte	8
	.byte	7
	.quad	.Lfunc_begin0
	.long	.Lfunc_end0-.Lfunc_begin0
	.byte	1
	.byte	87
	.long	.Linfo_string56
	.long	.Linfo_string57
	.byte	1
	.short	274
	.long	130
	.byte	8
	.byte	2
	.byte	145
	.byte	16
	.long	.Linfo_string58
	.byte	1
	.short	274
	.long	661
	.byte	8
	.byte	2
	.byte	145
	.byte	24
	.long	.Linfo_string60
	.byte	1
	.short	274
	.long	670
	.byte	9
	.long	654
	.long	.Linfo_string31
	.byte	0
	.byte	0
	.byte	5
	.long	.Linfo_string33
	.byte	0
	.byte	1
	.byte	6
	.long	.Linfo_string18
	.long	547
	.byte	1
	.byte	0
	.byte	6
	.long	.Linfo_string20
	.long	370
	.byte	1
	.byte	0
	.byte	0
	.byte	5
	.long	.Linfo_string51
	.byte	64
	.byte	8
	.byte	6
	.long	.Linfo_string36
	.long	633
	.byte	4
	.byte	48
	.byte	6
	.long	.Linfo_string38
	.long	640
	.byte	4
	.byte	52
	.byte	6
	.long	.Linfo_string40
	.long	92
	.byte	1
	.byte	56
	.byte	6
	.long	.Linfo_string41
	.long	435
	.byte	8
	.byte	0
	.byte	6
	.long	.Linfo_string48
	.long	435
	.byte	8
	.byte	16
	.byte	6
	.long	.Linfo_string49
	.long	334
	.byte	8
	.byte	32
	.byte	0
	.byte	5
	.long	.Linfo_string50
	.byte	16
	.byte	8
	.byte	10
	.long	.Linfo_string24
	.long	554
	.byte	8
	.byte	0

	.byte	10
	.long	.Linfo_string26
	.long	563
	.byte	8
	.byte	8

	.byte	0
	.byte	0
	.byte	2
	.long	.Linfo_string21
	.byte	5
	.long	.Linfo_string32
	.byte	0
	.byte	1
	.byte	9
	.long	398
	.long	.Linfo_string31
	.byte	0
	.byte	0
	.byte	2
	.long	.Linfo_string22
	.byte	2
	.long	.Linfo_string23
	.byte	5
	.long	.Linfo_string30
	.byte	16
	.byte	8
	.byte	10
	.long	.Linfo_string24
	.long	554
	.byte	8
	.byte	0

	.byte	10
	.long	.Linfo_string26
	.long	563
	.byte	8
	.byte	8

	.byte	0
	.byte	0
	.byte	0
	.byte	2
	.long	.Linfo_string42
	.byte	5
	.long	.Linfo_string47
	.byte	16
	.byte	8
	.byte	11
	.long	447
	.byte	12
	.long	647
	.byte	8
	.byte	0

	.byte	13
	.byte	0
	.byte	6
	.long	.Linfo_string44
	.long	483
	.byte	8
	.byte	0
	.byte	0
	.byte	13
	.byte	1
	.byte	6
	.long	.Linfo_string45
	.long	500
	.byte	8
	.byte	0
	.byte	0
	.byte	0
	.byte	5
	.long	.Linfo_string44
	.byte	16
	.byte	8
	.byte	9
	.long	585
	.long	.Linfo_string31
	.byte	0
	.byte	5
	.long	.Linfo_string45
	.byte	16
	.byte	8
	.byte	6
	.long	.Linfo_string46
	.long	585
	.byte	8
	.byte	8
	.byte	9
	.long	585
	.long	.Linfo_string31
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	14
	.long	.Linfo_string5
	.byte	7
	.byte	1
	.byte	15
	.long	230
	.long	.Linfo_string34
	.byte	14
	.long	.Linfo_string19
	.byte	7
	.byte	0
	.byte	15
	.long	531
	.long	.Linfo_string25
	.byte	15
	.long	572
	.long	.Linfo_string29
	.byte	16
	.long	585
	.byte	17
	.long	592
	.byte	0
	.byte	3
	.byte	0
	.byte	14
	.long	.Linfo_string27
	.byte	7
	.byte	8
	.byte	18
	.long	.Linfo_string28
	.byte	8
	.byte	7
	.byte	15
	.long	608
	.long	.Linfo_string53
	.byte	19
	.long	52
	.byte	20
	.long	538
	.byte	20
	.long	624
	.byte	0
	.byte	15
	.long	260
	.long	.Linfo_string52
	.byte	14
	.long	.Linfo_string37
	.byte	7
	.byte	4
	.byte	14
	.long	.Linfo_string39
	.byte	8
	.byte	4
	.byte	14
	.long	.Linfo_string43
	.byte	7
	.byte	8
	.byte	14
	.long	.Linfo_string55
	.byte	5
	.byte	4
	.byte	15
	.long	654
	.long	.Linfo_string59
	.byte	15
	.long	679
	.long	.Linfo_string61
	.byte	19
	.long	52
	.byte	20
	.long	661
	.byte	20
	.long	624
	.byte	0
	.byte	0
.Ldebug_info_end0:
	.section	.text._ZN4core3fmt10ArgumentV13new17h5d7d0837f1d6be2eE,"ax",@progbits
.Lsec_end0:
	.section	.debug_aranges,"",@progbits
	.long	44
	.short	2
	.long	.Lcu_begin0
	.byte	8
	.byte	0
	.zero	4,255
	.quad	.Lfunc_begin0
	.quad	.Lsec_end0-.Lfunc_begin0
	.quad	0
	.quad	0
	.section	.debug_macinfo,"",@progbits
	.byte	0
	.section	.debug_pubnames,"",@progbits
	.long	.LpubNames_end0-.LpubNames_begin0
.LpubNames_begin0:
	.short	2
	.long	.Lcu_begin0
	.long	696
	.long	115
	.asciz	"Center"
	.long	365
	.asciz	"marker"
	.long	82
	.asciz	"rt"
	.long	77
	.asciz	"fmt"
	.long	87
	.asciz	"v1"
	.long	42
	.asciz	"core"
	.long	69
	.asciz	"Err"
	.long	103
	.asciz	"Left"
	.long	393
	.asciz	"function"
	.long	121
	.asciz	"Unknown"
	.long	388
	.asciz	"ops"
	.long	159
	.asciz	"new<i32>"
	.long	430
	.asciz	"option"
	.long	63
	.asciz	"Ok"
	.long	109
	.asciz	"Right"
	.long	47
	.asciz	"result"
	.long	0
.LpubNames_end0:
	.section	.debug_pubtypes,"",@progbits
	.long	.LpubTypes_end0-.LpubTypes_begin0
.LpubTypes_begin0:
	.short	2
	.long	.Lcu_begin0
	.long	696
	.long	398
	.asciz	"*mut Fn<()>"
	.long	670
	.asciz	"fn(&i32, &mut core::fmt::Formatter) -> core::result::Result<(), core::fmt::Error>"
	.long	52
	.asciz	"Result"
	.long	435
	.asciz	"Option<usize>"
	.long	647
	.asciz	"u64"
	.long	334
	.asciz	"&mut Write"
	.long	624
	.asciz	"&mut core::fmt::Formatter"
	.long	130
	.asciz	"ArgumentV1"
	.long	370
	.asciz	"PhantomData<*mut Fn<()>>"
	.long	531
	.asciz	"u8"
	.long	554
	.asciz	"*mut u8"
	.long	654
	.asciz	"i32"
	.long	538
	.asciz	"&core::fmt::Void"
	.long	585
	.asciz	"usize"
	.long	230
	.asciz	"Void"
	.long	547
	.asciz	"()"
	.long	260
	.asciz	"Formatter"
	.long	661
	.asciz	"&i32"
	.long	633
	.asciz	"u32"
	.long	599
	.asciz	"fn(&core::fmt::Void, &mut core::fmt::Formatter) -> core::result::Result<(), core::fmt::Error>"
	.long	563
	.asciz	"&[usize; 3]"
	.long	640
	.asciz	"char"
	.long	92
	.asciz	"Alignment"
	.long	0
.LpubTypes_end0:

	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:

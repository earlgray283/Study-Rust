	.text
	.file	"3l8z74wwzfz7vuhl"
	.section	.text._ZN4core3fmt9Arguments6new_v117h5d6ae134673f6e50E,"ax",@progbits
	.hidden	_ZN4core3fmt9Arguments6new_v117h5d6ae134673f6e50E
	.globl	_ZN4core3fmt9Arguments6new_v117h5d6ae134673f6e50E
	.p2align	4, 0x90
	.type	_ZN4core3fmt9Arguments6new_v117h5d6ae134673f6e50E,@function
_ZN4core3fmt9Arguments6new_v117h5d6ae134673f6e50E:
.Lfunc_begin0:
	.file	1 "/rustc/b8cedc00407a4c56a3bda1ed605c6fc166655447/src/libcore/fmt/mod.rs"
	.loc	1 310 0
	.cfi_startproc
	subq	$48, %rsp
	.cfi_def_cfa_offset 56
	movq	%rdi, %rax
	movq	%rsi, (%rsp)
	movq	%rdx, 8(%rsp)
	movq	%rcx, 16(%rsp)
	movq	%r8, 24(%rsp)
.Ltmp0:
	.loc	1 311 20 prologue_end
	movq	(%rsp), %rcx
	movq	8(%rsp), %rdx
	.loc	1 311 33 is_stmt 0
	movq	$0, 32(%rsp)
	.loc	1 311 39
	movq	16(%rsp), %rsi
	movq	24(%rsp), %r8
	.loc	1 311 8
	movq	%rcx, (%rdi)
	movq	%rdx, 8(%rdi)
	movq	32(%rsp), %rcx
	movq	40(%rsp), %rdx
	movq	%rcx, 16(%rdi)
	movq	%rdx, 24(%rdi)
	movq	%rsi, 32(%rdi)
	movq	%r8, 40(%rdi)
	.loc	1 312 5 is_stmt 1
	addq	$48, %rsp
	.cfi_def_cfa_offset 8
	retq
.Ltmp1:
.Lfunc_end0:
	.size	_ZN4core3fmt9Arguments6new_v117h5d6ae134673f6e50E, .Lfunc_end0-_ZN4core3fmt9Arguments6new_v117h5d6ae134673f6e50E
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
	.asciz	"fmt"
.Linfo_string5:
	.asciz	"rt"
.Linfo_string6:
	.asciz	"v1"
.Linfo_string7:
	.asciz	"u8"
.Linfo_string8:
	.asciz	"Left"
.Linfo_string9:
	.asciz	"Right"
.Linfo_string10:
	.asciz	"Center"
.Linfo_string11:
	.asciz	"Unknown"
.Linfo_string12:
	.asciz	"Alignment"
.Linfo_string13:
	.asciz	"result"
.Linfo_string14:
	.asciz	"Ok"
.Linfo_string15:
	.asciz	"Err"
.Linfo_string16:
	.asciz	"Result"
.Linfo_string17:
	.asciz	"pieces"
.Linfo_string18:
	.asciz	"data_ptr"
.Linfo_string19:
	.asciz	"*const u8"
.Linfo_string20:
	.asciz	"length"
.Linfo_string21:
	.asciz	"usize"
.Linfo_string22:
	.asciz	"&str"
.Linfo_string23:
	.asciz	"*const &str"
.Linfo_string24:
	.asciz	"&[&str]"
.Linfo_string25:
	.asciz	"option"
.Linfo_string26:
	.asciz	"u64"
.Linfo_string27:
	.asciz	"None"
.Linfo_string28:
	.asciz	"position"
.Linfo_string29:
	.asciz	"format"
.Linfo_string30:
	.asciz	"fill"
.Linfo_string31:
	.asciz	"char"
.Linfo_string32:
	.asciz	"align"
.Linfo_string33:
	.asciz	"flags"
.Linfo_string34:
	.asciz	"u32"
.Linfo_string35:
	.asciz	"precision"
.Linfo_string36:
	.asciz	"Is"
.Linfo_string37:
	.asciz	"__0"
.Linfo_string38:
	.asciz	"Param"
.Linfo_string39:
	.asciz	"Implied"
.Linfo_string40:
	.asciz	"Count"
.Linfo_string41:
	.asciz	"width"
.Linfo_string42:
	.asciz	"FormatSpec"
.Linfo_string43:
	.asciz	"Argument"
.Linfo_string44:
	.asciz	"*const core::fmt::rt::v1::Argument"
.Linfo_string45:
	.asciz	"&[core::fmt::rt::v1::Argument]"
.Linfo_string46:
	.asciz	"T"
.Linfo_string47:
	.asciz	"Some"
.Linfo_string48:
	.asciz	"Option<&[core::fmt::rt::v1::Argument]>"
.Linfo_string49:
	.asciz	"args"
.Linfo_string50:
	.asciz	"value"
.Linfo_string51:
	.asciz	"_priv"
.Linfo_string52:
	.asciz	"()"
.Linfo_string53:
	.asciz	"_oibit_remover"
.Linfo_string54:
	.asciz	"marker"
.Linfo_string55:
	.asciz	"ops"
.Linfo_string56:
	.asciz	"function"
.Linfo_string57:
	.asciz	"pointer"
.Linfo_string58:
	.asciz	"*mut u8"
.Linfo_string59:
	.asciz	"vtable"
.Linfo_string60:
	.asciz	"__ARRAY_SIZE_TYPE__"
.Linfo_string61:
	.asciz	"&[usize; 3]"
.Linfo_string62:
	.asciz	"*mut Fn<()>"
.Linfo_string63:
	.asciz	"PhantomData<*mut Fn<()>>"
.Linfo_string64:
	.asciz	"Void"
.Linfo_string65:
	.asciz	"&core::fmt::Void"
.Linfo_string66:
	.asciz	"formatter"
.Linfo_string67:
	.asciz	"Option<usize>"
.Linfo_string68:
	.asciz	"buf"
.Linfo_string69:
	.asciz	"&mut Write"
.Linfo_string70:
	.asciz	"Formatter"
.Linfo_string71:
	.asciz	"&mut core::fmt::Formatter"
.Linfo_string72:
	.asciz	"fn(&core::fmt::Void, &mut core::fmt::Formatter) -> core::result::Result<(), core::fmt::Error>"
.Linfo_string73:
	.asciz	"ArgumentV1"
.Linfo_string74:
	.asciz	"*const core::fmt::ArgumentV1"
.Linfo_string75:
	.asciz	"&[core::fmt::ArgumentV1]"
.Linfo_string76:
	.asciz	"Arguments"
.Linfo_string77:
	.asciz	"_ZN4core3fmt9Arguments6new_v117h5d6ae134673f6e50E"
.Linfo_string78:
	.asciz	"new_v1"
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
	.byte	51
	.byte	1
	.byte	21
	.byte	19
	.byte	0
	.byte	0
	.byte	8
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
	.byte	9
	.byte	25
	.byte	1
	.byte	22
	.byte	11
	.byte	0
	.byte	0
	.byte	10
	.byte	19
	.byte	0
	.byte	3
	.byte	14
	.byte	11
	.byte	11
	.ascii	"\210\001"
	.byte	15
	.byte	0
	.byte	0
	.byte	11
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
	.byte	12
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
	.byte	13
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
	.byte	14
	.byte	25
	.byte	1
	.byte	0
	.byte	0
	.byte	15
	.byte	47
	.byte	0
	.byte	73
	.byte	19
	.byte	3
	.byte	14
	.byte	0
	.byte	0
	.byte	16
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
	.byte	17
	.byte	15
	.byte	0
	.byte	73
	.byte	19
	.byte	3
	.byte	14
	.byte	0
	.byte	0
	.byte	18
	.byte	1
	.byte	1
	.byte	73
	.byte	19
	.byte	0
	.byte	0
	.byte	19
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
	.byte	20
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
	.byte	21
	.byte	21
	.byte	1
	.byte	73
	.byte	19
	.byte	0
	.byte	0
	.byte	22
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
	.byte	2
	.long	.Linfo_string5
	.byte	2
	.long	.Linfo_string6
	.byte	3
	.long	857

	.long	.Linfo_string12
	.byte	1
	.byte	1
	.byte	4
	.long	.Linfo_string8
	.byte	0
	.byte	4
	.long	.Linfo_string9
	.byte	1
	.byte	4
	.long	.Linfo_string10
	.byte	2
	.byte	4
	.long	.Linfo_string11
	.byte	3
	.byte	0
	.byte	5
	.long	.Linfo_string43
	.byte	56
	.byte	8
	.byte	6
	.long	.Linfo_string28
	.long	942
	.byte	8
	.byte	0
	.byte	6
	.long	.Linfo_string29
	.long	128
	.byte	8
	.byte	8
	.byte	0
	.byte	5
	.long	.Linfo_string42
	.byte	48
	.byte	8
	.byte	6
	.long	.Linfo_string30
	.long	995
	.byte	4
	.byte	32
	.byte	6
	.long	.Linfo_string32
	.long	62
	.byte	1
	.byte	40
	.byte	6
	.long	.Linfo_string33
	.long	1002
	.byte	4
	.byte	36
	.byte	6
	.long	.Linfo_string35
	.long	191
	.byte	8
	.byte	0
	.byte	6
	.long	.Linfo_string41
	.long	191
	.byte	8
	.byte	16
	.byte	0
	.byte	5
	.long	.Linfo_string40
	.byte	16
	.byte	8
	.byte	7
	.long	203
	.byte	8
	.long	949
	.byte	8
	.byte	0

	.byte	9
	.byte	0
	.byte	6
	.long	.Linfo_string36
	.long	253
	.byte	8
	.byte	0
	.byte	0
	.byte	9
	.byte	1
	.byte	6
	.long	.Linfo_string38
	.long	272
	.byte	8
	.byte	0
	.byte	0
	.byte	9
	.byte	2
	.byte	6
	.long	.Linfo_string39
	.long	291
	.byte	8
	.byte	0
	.byte	0
	.byte	0
	.byte	5
	.long	.Linfo_string36
	.byte	16
	.byte	8
	.byte	6
	.long	.Linfo_string37
	.long	942
	.byte	8
	.byte	8
	.byte	0
	.byte	5
	.long	.Linfo_string38
	.byte	16
	.byte	8
	.byte	6
	.long	.Linfo_string37
	.long	942
	.byte	8
	.byte	8
	.byte	0
	.byte	10
	.long	.Linfo_string39
	.byte	16
	.byte	8
	.byte	0
	.byte	0
	.byte	0
	.byte	5
	.long	.Linfo_string76
	.byte	48
	.byte	8
	.byte	6
	.long	.Linfo_string17
	.long	864
	.byte	8
	.byte	0
	.byte	6
	.long	.Linfo_string4
	.long	603
	.byte	8
	.byte	16
	.byte	6
	.long	.Linfo_string49
	.long	1009
	.byte	8
	.byte	32
	.byte	11
	.quad	.Lfunc_begin0
	.long	.Lfunc_end0-.Lfunc_begin0
	.byte	1
	.byte	87
	.long	.Linfo_string77
	.long	.Linfo_string78
	.byte	1
	.short	310
	.long	301
	.byte	12
	.byte	2
	.byte	145
	.byte	0
	.long	.Linfo_string17
	.byte	1
	.short	310
	.long	864
	.byte	12
	.byte	2
	.byte	145
	.byte	16
	.long	.Linfo_string49
	.byte	1
	.short	310
	.long	1009
	.byte	0
	.byte	0
	.byte	5
	.long	.Linfo_string73
	.byte	16
	.byte	8
	.byte	6
	.long	.Linfo_string50
	.long	1048
	.byte	8
	.byte	0
	.byte	6
	.long	.Linfo_string66
	.long	1102
	.byte	8
	.byte	8
	.byte	0
	.byte	5
	.long	.Linfo_string64
	.byte	0
	.byte	1
	.byte	6
	.long	.Linfo_string51
	.long	1057
	.byte	1
	.byte	0
	.byte	6
	.long	.Linfo_string53
	.long	796
	.byte	1
	.byte	0
	.byte	0
	.byte	5
	.long	.Linfo_string70
	.byte	64
	.byte	8
	.byte	6
	.long	.Linfo_string33
	.long	1002
	.byte	4
	.byte	48
	.byte	6
	.long	.Linfo_string30
	.long	995
	.byte	4
	.byte	52
	.byte	6
	.long	.Linfo_string32
	.long	62
	.byte	1
	.byte	56
	.byte	6
	.long	.Linfo_string41
	.long	696
	.byte	8
	.byte	0
	.byte	6
	.long	.Linfo_string35
	.long	696
	.byte	8
	.byte	16
	.byte	6
	.long	.Linfo_string68
	.long	537
	.byte	8
	.byte	32
	.byte	0
	.byte	5
	.long	.Linfo_string69
	.byte	16
	.byte	8
	.byte	13
	.long	.Linfo_string57
	.long	1064
	.byte	8
	.byte	0

	.byte	13
	.long	.Linfo_string59
	.long	1073
	.byte	8
	.byte	8

	.byte	0
	.byte	0
	.byte	2
	.long	.Linfo_string13
	.byte	3
	.long	857

	.long	.Linfo_string16
	.byte	1
	.byte	1
	.byte	4
	.long	.Linfo_string14
	.byte	0
	.byte	4
	.long	.Linfo_string15
	.byte	1
	.byte	0
	.byte	0
	.byte	2
	.long	.Linfo_string25
	.byte	5
	.long	.Linfo_string48
	.byte	16
	.byte	8
	.byte	7
	.long	615
	.byte	8
	.long	949
	.byte	8
	.byte	0

	.byte	9
	.byte	0
	.byte	6
	.long	.Linfo_string27
	.long	650
	.byte	8
	.byte	0
	.byte	0
	.byte	14
	.byte	6
	.long	.Linfo_string47
	.long	667
	.byte	8
	.byte	0
	.byte	0
	.byte	0
	.byte	5
	.long	.Linfo_string27
	.byte	16
	.byte	8
	.byte	15
	.long	956
	.long	.Linfo_string46
	.byte	0
	.byte	5
	.long	.Linfo_string47
	.byte	16
	.byte	8
	.byte	6
	.long	.Linfo_string37
	.long	956
	.byte	8
	.byte	0
	.byte	15
	.long	956
	.long	.Linfo_string46
	.byte	0
	.byte	0
	.byte	5
	.long	.Linfo_string67
	.byte	16
	.byte	8
	.byte	7
	.long	708
	.byte	8
	.long	949
	.byte	8
	.byte	0

	.byte	9
	.byte	0
	.byte	6
	.long	.Linfo_string27
	.long	744
	.byte	8
	.byte	0
	.byte	0
	.byte	9
	.byte	1
	.byte	6
	.long	.Linfo_string47
	.long	761
	.byte	8
	.byte	0
	.byte	0
	.byte	0
	.byte	5
	.long	.Linfo_string27
	.byte	16
	.byte	8
	.byte	15
	.long	942
	.long	.Linfo_string46
	.byte	0
	.byte	5
	.long	.Linfo_string47
	.byte	16
	.byte	8
	.byte	6
	.long	.Linfo_string37
	.long	942
	.byte	8
	.byte	8
	.byte	15
	.long	942
	.long	.Linfo_string46
	.byte	0
	.byte	0
	.byte	0
	.byte	2
	.long	.Linfo_string54
	.byte	5
	.long	.Linfo_string63
	.byte	0
	.byte	1
	.byte	15
	.long	824
	.long	.Linfo_string46
	.byte	0
	.byte	0
	.byte	2
	.long	.Linfo_string55
	.byte	2
	.long	.Linfo_string56
	.byte	5
	.long	.Linfo_string62
	.byte	16
	.byte	8
	.byte	13
	.long	.Linfo_string57
	.long	1064
	.byte	8
	.byte	0

	.byte	13
	.long	.Linfo_string59
	.long	1073
	.byte	8
	.byte	8

	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	16
	.long	.Linfo_string7
	.byte	7
	.byte	1
	.byte	5
	.long	.Linfo_string24
	.byte	16
	.byte	8
	.byte	6
	.long	.Linfo_string18
	.long	894
	.byte	8
	.byte	0
	.byte	6
	.long	.Linfo_string20
	.long	942
	.byte	8
	.byte	8
	.byte	0
	.byte	17
	.long	903
	.long	.Linfo_string23
	.byte	5
	.long	.Linfo_string22
	.byte	16
	.byte	8
	.byte	6
	.long	.Linfo_string18
	.long	933
	.byte	8
	.byte	0
	.byte	6
	.long	.Linfo_string20
	.long	942
	.byte	8
	.byte	8
	.byte	0
	.byte	17
	.long	857
	.long	.Linfo_string19
	.byte	16
	.long	.Linfo_string21
	.byte	7
	.byte	8
	.byte	16
	.long	.Linfo_string26
	.byte	7
	.byte	8
	.byte	5
	.long	.Linfo_string45
	.byte	16
	.byte	8
	.byte	6
	.long	.Linfo_string18
	.long	986
	.byte	8
	.byte	0
	.byte	6
	.long	.Linfo_string20
	.long	942
	.byte	8
	.byte	8
	.byte	0
	.byte	17
	.long	98
	.long	.Linfo_string44
	.byte	16
	.long	.Linfo_string31
	.byte	8
	.byte	4
	.byte	16
	.long	.Linfo_string34
	.byte	7
	.byte	4
	.byte	5
	.long	.Linfo_string75
	.byte	16
	.byte	8
	.byte	6
	.long	.Linfo_string18
	.long	1039
	.byte	8
	.byte	0
	.byte	6
	.long	.Linfo_string20
	.long	942
	.byte	8
	.byte	8
	.byte	0
	.byte	17
	.long	403
	.long	.Linfo_string74
	.byte	17
	.long	433
	.long	.Linfo_string65
	.byte	16
	.long	.Linfo_string52
	.byte	7
	.byte	0
	.byte	17
	.long	857
	.long	.Linfo_string58
	.byte	17
	.long	1082
	.long	.Linfo_string61
	.byte	18
	.long	942
	.byte	19
	.long	1095
	.byte	0
	.byte	3
	.byte	0
	.byte	20
	.long	.Linfo_string60
	.byte	8
	.byte	7
	.byte	17
	.long	1111
	.long	.Linfo_string72
	.byte	21
	.long	573
	.byte	22
	.long	1048
	.byte	22
	.long	1127
	.byte	0
	.byte	17
	.long	463
	.long	.Linfo_string71
	.byte	0
.Ldebug_info_end0:
	.section	.text._ZN4core3fmt9Arguments6new_v117h5d6ae134673f6e50E,"ax",@progbits
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
	.long	1137
	.long	85
	.asciz	"Center"
	.long	791
	.asciz	"marker"
	.long	52
	.asciz	"rt"
	.long	47
	.asciz	"fmt"
	.long	57
	.asciz	"v1"
	.long	42
	.asciz	"core"
	.long	590
	.asciz	"Err"
	.long	73
	.asciz	"Left"
	.long	819
	.asciz	"function"
	.long	91
	.asciz	"Unknown"
	.long	341
	.asciz	"new_v1"
	.long	814
	.asciz	"ops"
	.long	598
	.asciz	"option"
	.long	584
	.asciz	"Ok"
	.long	79
	.asciz	"Right"
	.long	568
	.asciz	"result"
	.long	0
.LpubNames_end0:
	.section	.debug_pubtypes,"",@progbits
	.long	.LpubTypes_end0-.LpubTypes_begin0
.LpubTypes_begin0:
	.short	2
	.long	.Lcu_begin0
	.long	1137
	.long	1009
	.asciz	"&[core::fmt::ArgumentV1]"
	.long	986
	.asciz	"*const core::fmt::rt::v1::Argument"
	.long	537
	.asciz	"&mut Write"
	.long	1127
	.asciz	"&mut core::fmt::Formatter"
	.long	796
	.asciz	"PhantomData<*mut Fn<()>>"
	.long	857
	.asciz	"u8"
	.long	1064
	.asciz	"*mut u8"
	.long	1048
	.asciz	"&core::fmt::Void"
	.long	894
	.asciz	"*const &str"
	.long	1057
	.asciz	"()"
	.long	942
	.asciz	"usize"
	.long	1039
	.asciz	"*const core::fmt::ArgumentV1"
	.long	128
	.asciz	"FormatSpec"
	.long	463
	.asciz	"Formatter"
	.long	1073
	.asciz	"&[usize; 3]"
	.long	864
	.asciz	"&[&str]"
	.long	995
	.asciz	"char"
	.long	949
	.asciz	"u64"
	.long	62
	.asciz	"Alignment"
	.long	603
	.asciz	"Option<&[core::fmt::rt::v1::Argument]>"
	.long	573
	.asciz	"Result"
	.long	98
	.asciz	"Argument"
	.long	933
	.asciz	"*const u8"
	.long	824
	.asciz	"*mut Fn<()>"
	.long	1102
	.asciz	"fn(&core::fmt::Void, &mut core::fmt::Formatter) -> core::result::Result<(), core::fmt::Error>"
	.long	191
	.asciz	"Count"
	.long	403
	.asciz	"ArgumentV1"
	.long	696
	.asciz	"Option<usize>"
	.long	956
	.asciz	"&[core::fmt::rt::v1::Argument]"
	.long	433
	.asciz	"Void"
	.long	301
	.asciz	"Arguments"
	.long	1002
	.asciz	"u32"
	.long	903
	.asciz	"&str"
	.long	0
.LpubTypes_end0:

	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:

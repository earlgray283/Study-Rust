	.text
	.file	"5fslhgmz4kx7kd5l"
	.section	.text._ZN9chapter_34main17h52e138e905f6572eE,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN9chapter_34main17h52e138e905f6572eE,@function
_ZN9chapter_34main17h52e138e905f6572eE:
.Lfunc_begin0:
	.file	1 "/home/earlgray283/Source/study-rust/chapter_3/src/main.rs"
	.loc	1 1 0
	.cfi_startproc
	subq	$136, %rsp
	.cfi_def_cfa_offset 144
	movq	_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h765415089818841eE@GOTPCREL(%rip), %rsi
.Ltmp0:
	.loc	1 2 10 prologue_end
	movl	$1, 36(%rsp)
	movl	$2, 40(%rsp)
	movl	$3, 44(%rsp)
	movl	$4, 48(%rsp)
	movl	$5, 52(%rsp)
.Ltmp1:
	.loc	1 3 13
	movq	.L__unnamed_1(%rip), %rax
	.loc	1 3 18 is_stmt 0
	leaq	36(%rsp), %rcx
.Ltmp2:
	addq	$16, %rcx
.Ltmp3:
	.loc	1 3 4
	movq	%rcx, 120(%rsp)
	movq	120(%rsp), %rcx
	movq	%rcx, 128(%rsp)
.Ltmp4:
	.loc	1 3 4
	movq	128(%rsp), %rdi
	movq	%rax, 24(%rsp)
	callq	_ZN4core3fmt10ArgumentV13new17h5d7d0837f1d6be2eE
	movq	%rax, 16(%rsp)
	movq	%rdx, 8(%rsp)
	.loc	1 0 4
	movq	16(%rsp), %rax
	.loc	1 3 4
	movq	%rax, 104(%rsp)
	movq	8(%rsp), %rcx
	movq	%rcx, 112(%rsp)
.Ltmp5:
	.loc	1 3 4
	leaq	104(%rsp), %rdx
	leaq	56(%rsp), %rdi
	movq	24(%rsp), %rsi
	movl	$2, %r8d
	movq	%rdx, (%rsp)
	movq	%r8, %rdx
	movq	(%rsp), %rcx
	movl	$1, %r8d
	callq	_ZN4core3fmt9Arguments6new_v117h5d6ae134673f6e50E
	leaq	56(%rsp), %rdi
	callq	*_ZN3std2io5stdio6_print17h7e1d4022dd9ebaeaE@GOTPCREL(%rip)
.Ltmp6:
	.loc	1 4 1 is_stmt 1
	addq	$136, %rsp
	.cfi_def_cfa_offset 8
	retq
.Ltmp7:
.Lfunc_end0:
	.size	_ZN9chapter_34main17h52e138e905f6572eE, .Lfunc_end0-_ZN9chapter_34main17h52e138e905f6572eE
	.cfi_endproc

	.section	.text.main,"ax",@progbits
	.globl	main
	.p2align	4, 0x90
	.type	main,@function
main:
.Lfunc_begin1:
	.cfi_startproc
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movb	__rustc_debug_gdb_scripts_section__(%rip), %al
	movslq	%edi, %rcx
	leaq	_ZN9chapter_34main17h52e138e905f6572eE(%rip), %rdi
	movq	%rsi, 16(%rsp)
	movq	%rcx, %rsi
	movq	16(%rsp), %rdx
	movb	%al, 15(%rsp)
	callq	_ZN3std2rt10lang_start17h95a2ebc839f13595E
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
	.cfi_endproc

	.type	.L__unnamed_2,@object
	.section	.rodata..L__unnamed_2,"a",@progbits
.L__unnamed_2:
	.size	.L__unnamed_2, 0

	.type	.L__unnamed_3,@object
	.section	.rodata..L__unnamed_3,"a",@progbits
.L__unnamed_3:
	.byte	10
	.size	.L__unnamed_3, 1

	.type	.L__unnamed_4,@object
	.section	.data.rel.ro..L__unnamed_4,"aw",@progbits
	.p2align	3
.L__unnamed_4:
	.quad	.L__unnamed_2
	.zero	8
	.quad	.L__unnamed_3
	.asciz	"\001\000\000\000\000\000\000"
	.size	.L__unnamed_4, 32

	.type	.L__unnamed_1,@object
	.section	.data.rel.ro..L__unnamed_1,"aw",@progbits
	.p2align	3
.L__unnamed_1:
	.quad	.L__unnamed_4
	.size	.L__unnamed_1, 8

	.type	__rustc_debug_gdb_scripts_section__,@object
	.section	.debug_gdb_scripts,"aMS",@progbits,1
	.weak	__rustc_debug_gdb_scripts_section__
__rustc_debug_gdb_scripts_section__:
	.asciz	"\001gdb_load_rust_pretty_printers.py"
	.size	__rustc_debug_gdb_scripts_section__, 34

	.hidden	_ZN4core3fmt10ArgumentV13new17h5d7d0837f1d6be2eE
	.hidden	_ZN4core3fmt9Arguments6new_v117h5d6ae134673f6e50E
	.hidden	_ZN3std2rt10lang_start17h95a2ebc839f13595E
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"clang LLVM (rustc version 1.42.0 (b8cedc004 2020-03-09))"
.Linfo_string1:
	.asciz	"src/main.rs"
.Linfo_string2:
	.asciz	"/home/earlgray283/Source/study-rust/chapter_3"
.Linfo_string3:
	.asciz	"chapter_3"
.Linfo_string4:
	.asciz	"_ZN9chapter_34main17h52e138e905f6572eE"
.Linfo_string5:
	.asciz	"main"
.Linfo_string6:
	.asciz	"a"
.Linfo_string7:
	.asciz	"i32"
.Linfo_string8:
	.asciz	"__ARRAY_SIZE_TYPE__"
.Linfo_string9:
	.asciz	"arg0"
.Linfo_string10:
	.asciz	"&i32"
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
	.byte	106
	.byte	25
	.byte	0
	.byte	0
	.byte	4
	.byte	11
	.byte	1
	.byte	17
	.byte	1
	.byte	18
	.byte	6
	.byte	0
	.byte	0
	.byte	5
	.byte	52
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
	.byte	6
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
	.byte	7
	.byte	1
	.byte	1
	.byte	73
	.byte	19
	.byte	0
	.byte	0
	.byte	8
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
	.byte	9
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
	.byte	10
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
	.byte	11
	.byte	15
	.byte	0
	.byte	73
	.byte	19
	.byte	3
	.byte	14
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
	.byte	3
	.quad	.Lfunc_begin0
	.long	.Lfunc_end0-.Lfunc_begin0
	.byte	1
	.byte	87
	.long	.Linfo_string4
	.long	.Linfo_string5
	.byte	1
	.byte	1

	.byte	4
	.quad	.Ltmp1
	.long	.Ltmp6-.Ltmp1
	.byte	5
	.byte	2
	.byte	145
	.byte	36
	.long	.Linfo_string6
	.byte	1
	.byte	2
	.long	132
	.byte	4
	.quad	.Ltmp4
	.long	.Ltmp5-.Ltmp4
	.byte	6
	.byte	3
	.byte	145
	.ascii	"\200\001"
	.long	.Linfo_string9
	.byte	1
	.byte	1
	.byte	3
	.long	159
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	7
	.long	145
	.byte	8
	.long	152
	.byte	0
	.byte	5
	.byte	0
	.byte	9
	.long	.Linfo_string7
	.byte	5
	.byte	4
	.byte	10
	.long	.Linfo_string8
	.byte	8
	.byte	7
	.byte	11
	.long	145
	.long	.Linfo_string10
	.byte	0
.Ldebug_info_end0:
	.section	.text._ZN9chapter_34main17h52e138e905f6572eE,"ax",@progbits
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
	.long	169
	.long	47
	.asciz	"main"
	.long	42
	.asciz	"chapter_3"
	.long	0
.LpubNames_end0:
	.section	.debug_pubtypes,"",@progbits
	.long	.LpubTypes_end0-.LpubTypes_begin0
.LpubTypes_begin0:
	.short	2
	.long	.Lcu_begin0
	.long	169
	.long	159
	.asciz	"&i32"
	.long	145
	.asciz	"i32"
	.long	0
.LpubTypes_end0:

	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:

	.text
	.file	"57ozqxt6uieh214p"
	.section	.text._ZN3std3sys4unix7process14process_common8ExitCode6as_i3217h8600bfa9b448ee65E,"ax",@progbits
	.hidden	_ZN3std3sys4unix7process14process_common8ExitCode6as_i3217h8600bfa9b448ee65E
	.globl	_ZN3std3sys4unix7process14process_common8ExitCode6as_i3217h8600bfa9b448ee65E
	.p2align	4, 0x90
	.type	_ZN3std3sys4unix7process14process_common8ExitCode6as_i3217h8600bfa9b448ee65E,@function
_ZN3std3sys4unix7process14process_common8ExitCode6as_i3217h8600bfa9b448ee65E:
.Lfunc_begin0:
	.file	1 "/rustc/b8cedc00407a4c56a3bda1ed605c6fc166655447/src/libstd/sys/unix/process/process_common.rs"
	.loc	1 398 0
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	%rdi, (%rsp)
.Ltmp0:
	.loc	1 399 8 prologue_end
	movq	(%rsp), %rax
	movzbl	(%rax), %eax
	.loc	1 400 5
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Ltmp1:
.Lfunc_end0:
	.size	_ZN3std3sys4unix7process14process_common8ExitCode6as_i3217h8600bfa9b448ee65E, .Lfunc_end0-_ZN3std3sys4unix7process14process_common8ExitCode6as_i3217h8600bfa9b448ee65E
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
	.asciz	"std"
.Linfo_string4:
	.asciz	"sys"
.Linfo_string5:
	.asciz	"unix"
.Linfo_string6:
	.asciz	"process"
.Linfo_string7:
	.asciz	"process_common"
.Linfo_string8:
	.asciz	"__0"
.Linfo_string9:
	.asciz	"u8"
.Linfo_string10:
	.asciz	"ExitCode"
.Linfo_string11:
	.asciz	"_ZN3std3sys4unix7process14process_common8ExitCode6as_i3217h8600bfa9b448ee65E"
.Linfo_string12:
	.asciz	"as_i32"
.Linfo_string13:
	.asciz	"i32"
.Linfo_string14:
	.asciz	"self"
.Linfo_string15:
	.asciz	"&std::sys::unix::process::process_common::ExitCode"
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
	.byte	4
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
	.byte	5
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
	.byte	6
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
	.byte	8
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
	.byte	2
	.long	.Linfo_string4
	.byte	2
	.long	.Linfo_string5
	.byte	2
	.long	.Linfo_string6
	.byte	2
	.long	.Linfo_string7
	.byte	3
	.long	.Linfo_string10
	.byte	1
	.byte	1
	.byte	4
	.long	.Linfo_string8
	.long	137
	.byte	1
	.byte	0
	.byte	5
	.quad	.Lfunc_begin0
	.long	.Lfunc_end0-.Lfunc_begin0
	.byte	1
	.byte	87
	.long	.Linfo_string11
	.long	.Linfo_string12
	.byte	1
	.short	398
	.long	144
	.byte	6
	.byte	2
	.byte	145
	.byte	0
	.long	.Linfo_string14
	.byte	1
	.short	398
	.long	151
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	7
	.long	.Linfo_string9
	.byte	7
	.byte	1
	.byte	7
	.long	.Linfo_string13
	.byte	5
	.byte	4
	.byte	8
	.long	67
	.long	.Linfo_string15
	.byte	0
.Ldebug_info_end0:
	.section	.text._ZN3std3sys4unix7process14process_common8ExitCode6as_i3217h8600bfa9b448ee65E,"ax",@progbits
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
	.long	161
	.long	57
	.asciz	"process"
	.long	85
	.asciz	"as_i32"
	.long	52
	.asciz	"unix"
	.long	62
	.asciz	"process_common"
	.long	42
	.asciz	"std"
	.long	47
	.asciz	"sys"
	.long	0
.LpubNames_end0:
	.section	.debug_pubtypes,"",@progbits
	.long	.LpubTypes_end0-.LpubTypes_begin0
.LpubTypes_begin0:
	.short	2
	.long	.Lcu_begin0
	.long	161
	.long	151
	.asciz	"&std::sys::unix::process::process_common::ExitCode"
	.long	67
	.asciz	"ExitCode"
	.long	137
	.asciz	"u8"
	.long	144
	.asciz	"i32"
	.long	0
.LpubTypes_end0:

	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:

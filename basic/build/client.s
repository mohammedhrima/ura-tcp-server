	.build_version macos, 16, 0
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_log                            ; -- Begin function log
	.p2align	2
_log:                                   ; @log
Lfunc_begin0:
	.file	1 "ura-tcp-server/basic" "client.ura"
	.loc	1 3 0                           ; client.ura:3:0
	.cfi_startproc
; %bb.0:                                ; %entry
	sub	sp, sp, #48
	stp	x20, x19, [sp, #16]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	.cfi_def_cfa_offset 48
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	mov	x19, x0
Ltmp2:
	.loc	1 3 0 prologue_end              ; client.ura:3:0
	str	x0, [sp, #8]
	.loc	1 4 0                           ; client.ura:4:0
	bl	_strlen
	mov	w2, w0
	mov	w0, #1                          ; =0x1
	mov	x1, x19
	bl	_write
	.loc	1 4 0 epilogue_begin is_stmt 0  ; client.ura:4:0
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
Ltmp3:
Lfunc_end0:
	.cfi_endproc
                                        ; -- End function
	.globl	_get_time                       ; -- Begin function get_time
	.p2align	2
_get_time:                              ; @get_time
Lfunc_begin1:
	.loc	1 6 0 is_stmt 1                 ; client.ura:6:0
	.cfi_startproc
; %bb.0:                                ; %entry
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	.cfi_def_cfa_offset 48
	.cfi_offset w30, -8
	.cfi_offset w29, -16
Ltmp4:
	.loc	1 6 0 prologue_end              ; client.ura:6:0
	mov	w0, #16                         ; =0x10
	mov	w1, #1                          ; =0x1
	str	xzr, [sp, #24]
	bl	_calloc
	stp	xzr, x0, [sp, #16]
	.loc	1 8 0                           ; client.ura:8:0
	mov	x0, xzr
	bl	_time
	.loc	1 6 0                           ; client.ura:6:0
	stp	xzr, x0, [sp, #8]
	.loc	1 9 0                           ; client.ura:9:0
	add	x0, sp, #16
	bl	_localtime
	mov	x3, x0
	.loc	1 10 0                          ; client.ura:10:0
	ldr	x0, [sp, #24]
Lloh0:
	adrp	x2, l_STR0@PAGE
Lloh1:
	add	x2, x2, l_STR0@PAGEOFF
	mov	w1, #16                         ; =0x10
	.loc	1 9 0                           ; client.ura:9:0
	str	x3, [sp, #8]
	.loc	1 10 0                          ; client.ura:10:0
	bl	_strftime
	.loc	1 10 0 epilogue_begin is_stmt 0 ; client.ura:10:0
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	ldr	x0, [sp, #24]
	add	sp, sp, #48
	ret
Ltmp5:
	.loh AdrpAdd	Lloh0, Lloh1
Lfunc_end1:
	.cfi_endproc
                                        ; -- End function
	.globl	_log_ts                         ; -- Begin function log_ts
	.p2align	2
_log_ts:                                ; @log_ts
Lfunc_begin2:
	.loc	1 13 0 is_stmt 1                ; client.ura:13:0
	.cfi_startproc
; %bb.0:                                ; %entry
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	.cfi_def_cfa_offset 48
	.cfi_offset w30, -8
	.cfi_offset w29, -16
Ltmp6:
	.loc	1 13 0 prologue_end             ; client.ura:13:0
	stp	x1, x0, [sp, #16]
	stp	xzr, x2, [sp]
	.loc	1 14 0                          ; client.ura:14:0
	bl	_get_time
	str	x0, [sp]
	.loc	1 15 0                          ; client.ura:15:0
Lloh2:
	adrp	x0, l_STR1@PAGE
Lloh3:
	add	x0, x0, l_STR1@PAGEOFF
	bl	_log
	.loc	1 16 0                          ; client.ura:16:0
	ldr	x0, [sp]
	bl	_log
	.loc	1 17 0                          ; client.ura:17:0
Lloh4:
	adrp	x0, l_STR2@PAGE
Lloh5:
	add	x0, x0, l_STR2@PAGEOFF
	bl	_log
	.loc	1 18 0                          ; client.ura:18:0
	ldr	x0, [sp, #24]
	bl	_log
	.loc	1 19 0                          ; client.ura:19:0
	ldr	x0, [sp, #16]
	bl	_log
	.loc	1 20 0                          ; client.ura:20:0
Lloh6:
	adrp	x0, l_STR3@PAGE
Lloh7:
	add	x0, x0, l_STR3@PAGEOFF
	bl	_log
	.loc	1 21 0                          ; client.ura:21:0
	ldr	x0, [sp, #8]
	bl	_log
	.loc	1 22 0                          ; client.ura:22:0
Lloh8:
	adrp	x0, l_STR4@PAGE
Lloh9:
	add	x0, x0, l_STR4@PAGEOFF
	bl	_log
	.loc	1 23 0                          ; client.ura:23:0
	ldr	x0, [sp]
	bl	_free
	.loc	1 23 0 epilogue_begin is_stmt 0 ; client.ura:23:0
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
Ltmp7:
	.loh AdrpAdd	Lloh8, Lloh9
	.loh AdrpAdd	Lloh6, Lloh7
	.loh AdrpAdd	Lloh4, Lloh5
	.loh AdrpAdd	Lloh2, Lloh3
Lfunc_end2:
	.cfi_endproc
                                        ; -- End function
	.globl	_SockAddr.init                  ; -- Begin function SockAddr.init
	.p2align	2
_SockAddr.init:                         ; @SockAddr.init
Lfunc_begin3:
	.loc	1 40 0 is_stmt 1                ; client.ura:40:0
	.cfi_startproc
; %bb.0:                                ; %entry
	sub	sp, sp, #48
	stp	x20, x19, [sp, #16]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	.cfi_def_cfa_offset 48
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	mov	x19, x0
Ltmp8:
	.loc	1 40 0 prologue_end             ; client.ura:40:0
	str	x0, [sp, #8]
	mov	w0, #16                         ; =0x10
	mov	w1, #1                          ; =0x1
	mov	w20, #16                        ; =0x10
	bl	_calloc
	.loc	1 42 0                          ; client.ura:42:0
	ldr	x8, [sp, #8]
	.loc	1 40 0                          ; client.ura:40:0
	str	x0, [x19]
	.loc	1 43 0 epilogue_begin           ; client.ura:43:0
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	.loc	1 42 0                          ; client.ura:42:0
	ldr	x9, [x8]
	strb	w20, [x9]
	.loc	1 43 0                          ; client.ura:43:0
	ldp	x20, x19, [sp, #16]             ; 16-byte Folded Reload
	ldr	x8, [x8]
	mov	w9, #2                          ; =0x2
	strb	w9, [x8, #1]
	add	sp, sp, #48
	ret
Ltmp9:
Lfunc_end3:
	.cfi_endproc
                                        ; -- End function
	.globl	_SockAddr.set_port              ; -- Begin function SockAddr.set_port
	.p2align	2
_SockAddr.set_port:                     ; @SockAddr.set_port
Lfunc_begin4:
	.loc	1 45 0                          ; client.ura:45:0
	.cfi_startproc
; %bb.0:                                ; %entry
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
Ltmp10:
	.loc	1 46 0 prologue_end             ; client.ura:46:0
	ldr	x8, [x1]
	lsr	w9, w0, #8
	.loc	1 45 0                          ; client.ura:45:0
	str	w0, [sp, #12]
	str	x1, [sp]
	.loc	1 46 0                          ; client.ura:46:0
	strb	w9, [x8, #2]
	.loc	1 47 0                          ; client.ura:47:0
	ldr	x8, [x1]
	strb	w0, [x8, #3]
	.loc	1 47 0 epilogue_begin is_stmt 0 ; client.ura:47:0
	add	sp, sp, #16
	ret
Ltmp11:
Lfunc_end4:
	.cfi_endproc
                                        ; -- End function
	.globl	_SockAddr.set_ip                ; -- Begin function SockAddr.set_ip
	.p2align	2
_SockAddr.set_ip:                       ; @SockAddr.set_ip
Lfunc_begin5:
	.loc	1 49 0 is_stmt 1                ; client.ura:49:0
	.cfi_startproc
; %bb.0:                                ; %entry
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
Ltmp12:
	.loc	1 50 0 prologue_end             ; client.ura:50:0
	ldr	x8, [x4]
	.loc	1 49 0                          ; client.ura:49:0
	stp	w1, w0, [sp, #24]
	stp	w3, w2, [sp, #16]
	.loc	1 50 0                          ; client.ura:50:0
	strb	w0, [x8, #4]
	.loc	1 51 0                          ; client.ura:51:0
	ldr	x8, [x4]
	.loc	1 49 0                          ; client.ura:49:0
	str	x4, [sp, #8]
	.loc	1 51 0                          ; client.ura:51:0
	strb	w1, [x8, #5]
	.loc	1 52 0                          ; client.ura:52:0
	ldr	x8, [x4]
	strb	w2, [x8, #6]
	.loc	1 53 0                          ; client.ura:53:0
	ldr	x8, [x4]
	strb	w3, [x8, #7]
	.loc	1 53 0 epilogue_begin is_stmt 0 ; client.ura:53:0
	add	sp, sp, #32
	ret
Ltmp13:
Lfunc_end5:
	.cfi_endproc
                                        ; -- End function
	.globl	_SockAddr.clean                 ; -- Begin function SockAddr.clean
	.p2align	2
_SockAddr.clean:                        ; @SockAddr.clean
Lfunc_begin6:
	.loc	1 55 0 is_stmt 1                ; client.ura:55:0
	.cfi_startproc
; %bb.0:                                ; %entry
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	.cfi_def_cfa_offset 32
	.cfi_offset w30, -8
	.cfi_offset w29, -16
Ltmp14:
	.loc	1 56 0 prologue_end             ; client.ura:56:0
	ldr	x8, [x0]
	.loc	1 55 0                          ; client.ura:55:0
	str	x0, [sp, #8]
	.loc	1 56 0                          ; client.ura:56:0
	mov	x0, x8
	bl	_free
	.loc	1 56 0 epilogue_begin is_stmt 0 ; client.ura:56:0
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
Ltmp15:
Lfunc_end6:
	.cfi_endproc
                                        ; -- End function
	.globl	_banner                         ; -- Begin function banner
	.p2align	2
_banner:                                ; @banner
Lfunc_begin7:
	.loc	1 4 0 is_stmt 1                 ; client.ura:4:0
	.cfi_startproc
; %bb.0:                                ; %entry
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	.cfi_def_cfa_offset 48
	.cfi_offset w30, -8
	.cfi_offset w29, -16
Ltmp16:
	.loc	1 4 0 prologue_end              ; client.ura:4:0
	str	x0, [sp, #24]
	.loc	1 5 0                           ; client.ura:5:0
Lloh10:
	adrp	x0, l_STR5@PAGE
Lloh11:
	add	x0, x0, l_STR5@PAGEOFF
	.loc	1 4 0                           ; client.ura:4:0
	str	w1, [sp, #20]
	.loc	1 5 0                           ; client.ura:5:0
	bl	_log
	.loc	1 6 0                           ; client.ura:6:0
Lloh12:
	adrp	x0, l_STR6@PAGE
Lloh13:
	add	x0, x0, l_STR6@PAGEOFF
	bl	_log
	.loc	1 7 0                           ; client.ura:7:0
Lloh14:
	adrp	x0, l_STR7@PAGE
Lloh15:
	add	x0, x0, l_STR7@PAGEOFF
	bl	_log
	.loc	1 8 0                           ; client.ura:8:0
Lloh16:
	adrp	x0, l_STR8@PAGE
Lloh17:
	add	x0, x0, l_STR8@PAGEOFF
	bl	_log
	.loc	1 9 0                           ; client.ura:9:0
Lloh18:
	adrp	x0, l_STR9@PAGE
Lloh19:
	add	x0, x0, l_STR9@PAGEOFF
	bl	_log
	.loc	1 10 0                          ; client.ura:10:0
Lloh20:
	adrp	x0, l_STR10@PAGE
Lloh21:
	add	x0, x0, l_STR10@PAGEOFF
	bl	_log
	.loc	1 11 0                          ; client.ura:11:0
Lloh22:
	adrp	x0, l_STR11@PAGE
Lloh23:
	add	x0, x0, l_STR11@PAGEOFF
	bl	_log
	.loc	1 12 0                          ; client.ura:12:0
Lloh24:
	adrp	x0, l_STR12@PAGE
Lloh25:
	add	x0, x0, l_STR12@PAGEOFF
	bl	_log
	.loc	1 13 0                          ; client.ura:13:0
Lloh26:
	adrp	x0, l_STR13@PAGE
Lloh27:
	add	x0, x0, l_STR13@PAGEOFF
	bl	_log
	ldr	x8, [sp, #24]
	ldr	w9, [sp, #20]
Lloh28:
	adrp	x0, l_output_fmt@PAGE
Lloh29:
	add	x0, x0, l_output_fmt@PAGEOFF
	mov	w1, #2                          ; =0x2
	stp	x8, x9, [sp]
	bl	_printf
	.loc	1 15 0                          ; client.ura:15:0
Lloh30:
	adrp	x0, l_STR17@PAGE
Lloh31:
	add	x0, x0, l_STR17@PAGEOFF
	bl	_log
	.loc	1 15 0 epilogue_begin is_stmt 0 ; client.ura:15:0
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
Ltmp17:
	.loh AdrpAdd	Lloh30, Lloh31
	.loh AdrpAdd	Lloh28, Lloh29
	.loh AdrpAdd	Lloh26, Lloh27
	.loh AdrpAdd	Lloh24, Lloh25
	.loh AdrpAdd	Lloh22, Lloh23
	.loh AdrpAdd	Lloh20, Lloh21
	.loh AdrpAdd	Lloh18, Lloh19
	.loh AdrpAdd	Lloh16, Lloh17
	.loh AdrpAdd	Lloh14, Lloh15
	.loh AdrpAdd	Lloh12, Lloh13
	.loh AdrpAdd	Lloh10, Lloh11
Lfunc_end7:
	.cfi_endproc
                                        ; -- End function
	.globl	_Client.clean                   ; -- Begin function Client.clean
	.p2align	2
_Client.clean:                          ; @Client.clean
Lfunc_begin8:
	.cfi_startproc
; %bb.0:                                ; %entry
	ret
Lfunc_end8:
	.cfi_endproc
                                        ; -- End function
	.globl	_Client.init                    ; -- Begin function Client.init
	.p2align	2
_Client.init:                           ; @Client.init
Lfunc_begin9:
	.loc	1 22 0 is_stmt 1                ; client.ura:22:0
	.cfi_startproc
; %bb.0:                                ; %entry
	sub	sp, sp, #48
	stp	x20, x19, [sp, #16]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	.cfi_def_cfa_offset 48
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	mov	x19, x0
Ltmp18:
	.loc	1 22 0 prologue_end             ; client.ura:22:0
	str	x0, [sp, #8]
	.loc	1 23 0                          ; client.ura:23:0
	mov	w0, #2                          ; =0x2
	mov	w1, #1                          ; =0x1
	mov	w2, wzr
	bl	_socket
	ldr	x8, [sp, #8]
	str	w0, [x19]
	ldr	w8, [x8]
	tbz	w8, #31, LBB9_2
; %bb.1:                                ; %if.then
	.loc	1 25 0                          ; client.ura:25:0
Lloh32:
	adrp	x0, l_STR18@PAGE
Lloh33:
	add	x0, x0, l_STR18@PAGEOFF
	bl	_log
	.loc	1 26 0                          ; client.ura:26:0
	mov	w0, #1                          ; =0x1
	bl	_exit
LBB9_2:                                 ; %if.end
	.loc	1 26 0                          ; client.ura:26:0
	ldr	x19, [sp, #8]
	mov	w0, #1024                       ; =0x400
	mov	w1, #1                          ; =0x1
	bl	_calloc
	ldr	x20, [sp, #8]
	str	x0, [x19, #8]
	mov	w0, #1024                       ; =0x400
	mov	w1, #1                          ; =0x1
	bl	_calloc
	.loc	1 29 0                          ; client.ura:29:0
	ldr	x8, [sp, #8]
	.loc	1 26 0                          ; client.ura:26:0
	str	x0, [x20, #16]
	.loc	1 29 0                          ; client.ura:29:0
	mov	w1, #1024                       ; =0x400
	ldr	x0, [x8, #8]
	bl	_bzero
	.loc	1 30 0                          ; client.ura:30:0
	ldr	x8, [sp, #8]
	mov	w1, #1024                       ; =0x400
	ldr	x0, [x8, #16]
	bl	_bzero
	.loc	1 30 0 epilogue_begin is_stmt 0 ; client.ura:30:0
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
Ltmp19:
	.loh AdrpAdd	Lloh32, Lloh33
Lfunc_end9:
	.cfi_endproc
                                        ; -- End function
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
Lfunc_begin10:
	.loc	1 32 0 is_stmt 1                ; client.ura:32:0
	.cfi_startproc
; %bb.0:                                ; %entry
	sub	sp, sp, #112
	stp	x22, x21, [sp, #64]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #80]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #96]             ; 16-byte Folded Spill
	.cfi_def_cfa_offset 112
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
Ltmp20:
	.loc	1 32 0 prologue_end             ; client.ura:32:0
Lloh34:
	adrp	x0, l_STR19@PAGE
Lloh35:
	add	x0, x0, l_STR19@PAGEOFF
	mov	w8, #17000                      ; =0x4268
	.loc	1 35 0                          ; client.ura:35:0
	mov	w1, #17000                      ; =0x4268
	.loc	1 32 0                          ; client.ura:32:0
	str	x0, [sp, #56]
	str	w8, [sp, #52]
	.loc	1 35 0                          ; client.ura:35:0
	bl	_banner
	.loc	1 32 0                          ; client.ura:32:0
	add	x0, sp, #40
	str	xzr, [sp, #40]
	bl	_SockAddr.init
	.loc	1 38 0                          ; client.ura:38:0
	ldr	w0, [sp, #52]
	add	x1, sp, #40
	bl	_SockAddr.set_port
	.loc	1 39 0                          ; client.ura:39:0
	add	x4, sp, #40
	mov	w0, #127                        ; =0x7f
	mov	w1, wzr
	mov	w2, wzr
	mov	w3, #1                          ; =0x1
	bl	_SockAddr.set_ip
	.loc	1 32 0                          ; client.ura:32:0
	add	x0, sp, #16
	stp	xzr, xzr, [sp, #24]
	str	wzr, [sp, #16]
	bl	_Client.init
	ldr	w8, [sp, #16]
	tbnz	w8, #31, LBB10_6
; %bb.1:                                ; %if.end
	.loc	1 46 0                          ; client.ura:46:0
	ldr	w0, [sp, #16]
	ldr	x1, [sp, #40]
	mov	w2, #16                         ; =0x10
	.loc	1 32 0                          ; client.ura:32:0
	str	wzr, [sp, #12]
	.loc	1 46 0                          ; client.ura:46:0
	bl	_connect
	str	w0, [sp, #12]
	tbnz	w0, #31, LBB10_8
; %bb.2:                                ; %if.end8
	.loc	1 51 0                          ; client.ura:51:0
Lloh36:
	adrp	x0, l_STR26@PAGE
Lloh37:
	add	x0, x0, l_STR26@PAGEOFF
Lloh38:
	adrp	x1, l_STR27@PAGE
Lloh39:
	add	x1, x1, l_STR27@PAGEOFF
Lloh40:
	adrp	x2, l_STR28@PAGE
Lloh41:
	add	x2, x2, l_STR28@PAGEOFF
	bl	_log_ts
	.loc	1 32 0                          ; client.ura:32:0
	stp	wzr, wzr, [sp, #4]
	.loc	1 54 0                          ; client.ura:54:0
	bl	_fork
	str	w0, [sp, #4]
	cbz	w0, LBB10_10
; %bb.3:                                ; %while.start28.preheader
	.loc	1 0 0 is_stmt 0                 ; client.ura:0:0
Lloh42:
	adrp	x0, l_STR36@PAGE
Lloh43:
	add	x0, x0, l_STR36@PAGEOFF
Lloh44:
	adrp	x19, l_STR37@PAGE
Lloh45:
	add	x19, x19, l_STR37@PAGEOFF
LBB10_4:                                ; %while.start28
                                        ; =>This Inner Loop Header: Depth=1
	bl	_log
	.loc	1 69 0 is_stmt 1                ; client.ura:69:0
	ldr	x1, [sp, #24]
	mov	w0, wzr
	mov	w2, #1023                       ; =0x3ff
	bl	_read
	cmp	w0, #1
	str	w0, [sp, #8]
	b.lt	LBB10_7
; %bb.5:                                ; %if.end34
                                        ;   in Loop: Header=BB10_4 Depth=1
	.loc	1 72 0                          ; client.ura:72:0
	ldr	w8, [sp, #8]
	ldr	x9, [sp, #24]
	sub	w2, w8, #1
	strb	wzr, [x9, w2, sxtw]
	.loc	1 73 0                          ; client.ura:73:0
	ldr	w0, [sp, #16]
	ldr	x1, [sp, #24]
	bl	_write
	mov	x0, x19
	.loc	1 74 0                          ; client.ura:74:0
	b	LBB10_4
LBB10_6:                                ; %if.then
	.loc	1 43 0                          ; client.ura:43:0
Lloh46:
	adrp	x0, l_STR20@PAGE
Lloh47:
	add	x0, x0, l_STR20@PAGEOFF
Lloh48:
	adrp	x1, l_STR21@PAGE
Lloh49:
	add	x1, x1, l_STR21@PAGEOFF
Lloh50:
	adrp	x2, l_STR22@PAGE
Lloh51:
	add	x2, x2, l_STR22@PAGEOFF
	b	LBB10_9
LBB10_7:                                ; %if.then35
	.loc	1 76 0                          ; client.ura:76:0
	ldr	w0, [sp, #16]
	bl	_close
	.loc	1 77 0                          ; client.ura:77:0
	add	x0, sp, #40
	bl	_SockAddr.clean
	add	x0, sp, #40
	bl	_SockAddr.clean
	add	x0, sp, #16
	bl	_Client.clean
	b	LBB10_14
LBB10_8:                                ; %if.then9
	.loc	1 48 0                          ; client.ura:48:0
Lloh52:
	adrp	x0, l_STR23@PAGE
Lloh53:
	add	x0, x0, l_STR23@PAGEOFF
Lloh54:
	adrp	x1, l_STR24@PAGE
Lloh55:
	add	x1, x1, l_STR24@PAGEOFF
Lloh56:
	adrp	x2, l_STR25@PAGE
Lloh57:
	add	x2, x2, l_STR25@PAGEOFF
LBB10_9:                                ; %common.ret
	.loc	1 0 0 is_stmt 0                 ; client.ura:0:0
	bl	_log_ts
	mov	w0, #1                          ; =0x1
	.loc	1 43 0 is_stmt 1                ; client.ura:43:0
	b	LBB10_15
LBB10_10:
	.loc	1 0 0 is_stmt 0                 ; client.ura:0:0
Lloh58:
	adrp	x19, l_STR32@PAGE
Lloh59:
	add	x19, x19, l_STR32@PAGEOFF
Lloh60:
	adrp	x20, l_STR33@PAGE
Lloh61:
	add	x20, x20, l_STR33@PAGEOFF
Lloh62:
	adrp	x21, l_STR34@PAGE
Lloh63:
	add	x21, x21, l_STR34@PAGEOFF
Lloh64:
	adrp	x22, l_STR35@PAGE
Lloh65:
	add	x22, x22, l_STR35@PAGEOFF
LBB10_11:                               ; %while.then
                                        ; =>This Inner Loop Header: Depth=1
	.loc	1 57 0 is_stmt 1                ; client.ura:57:0
	ldr	w0, [sp, #16]
	ldr	x1, [sp, #32]
	mov	w2, #1023                       ; =0x3ff
	bl	_read
	cmp	w0, #1
	str	w0, [sp, #8]
	b.lt	LBB10_13
; %bb.12:                               ; %if.end20
                                        ;   in Loop: Header=BB10_11 Depth=1
	.loc	1 61 0                          ; client.ura:61:0
	ldr	x8, [sp, #32]
	ldrsw	x9, [sp, #8]
	.loc	1 62 0                          ; client.ura:62:0
	mov	x0, x19
	.loc	1 61 0                          ; client.ura:61:0
	strb	wzr, [x8, x9]
	.loc	1 62 0                          ; client.ura:62:0
	bl	_log
	.loc	1 63 0                          ; client.ura:63:0
	ldr	x2, [sp, #32]
	mov	x0, x20
	mov	x1, x21
	bl	_log_ts
	.loc	1 64 0                          ; client.ura:64:0
	mov	x0, x22
	bl	_log
	b	LBB10_11
LBB10_13:                               ; %if.then21
	.loc	1 59 0                          ; client.ura:59:0
Lloh66:
	adrp	x0, l_STR29@PAGE
Lloh67:
	add	x0, x0, l_STR29@PAGEOFF
Lloh68:
	adrp	x1, l_STR30@PAGE
Lloh69:
	add	x1, x1, l_STR30@PAGEOFF
Lloh70:
	adrp	x2, l_STR31@PAGE
Lloh71:
	add	x2, x2, l_STR31@PAGEOFF
	bl	_log_ts
LBB10_14:                               ; %common.ret
	.loc	1 0 0 is_stmt 0                 ; client.ura:0:0
	mov	w0, wzr
LBB10_15:                               ; %common.ret
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #80]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
Ltmp21:
	.loh AdrpAdd	Lloh34, Lloh35
	.loh AdrpAdd	Lloh40, Lloh41
	.loh AdrpAdd	Lloh38, Lloh39
	.loh AdrpAdd	Lloh36, Lloh37
	.loh AdrpAdd	Lloh44, Lloh45
	.loh AdrpAdd	Lloh42, Lloh43
	.loh AdrpAdd	Lloh50, Lloh51
	.loh AdrpAdd	Lloh48, Lloh49
	.loh AdrpAdd	Lloh46, Lloh47
	.loh AdrpAdd	Lloh56, Lloh57
	.loh AdrpAdd	Lloh54, Lloh55
	.loh AdrpAdd	Lloh52, Lloh53
	.loh AdrpAdd	Lloh64, Lloh65
	.loh AdrpAdd	Lloh62, Lloh63
	.loh AdrpAdd	Lloh60, Lloh61
	.loh AdrpAdd	Lloh58, Lloh59
	.loh AdrpAdd	Lloh70, Lloh71
	.loh AdrpAdd	Lloh68, Lloh69
	.loh AdrpAdd	Lloh66, Lloh67
Lfunc_end10:
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_STR0:                                 ; @STR0
	.asciz	"%H:%M:%S"

l_STR1:                                 ; @STR1
	.asciz	"\033[0;90m["

l_STR2:                                 ; @STR2
	.asciz	"]\033[0m "

l_STR3:                                 ; @STR3
	.asciz	"\033[0m "

l_STR4:                                 ; @STR4
	.asciz	"\n"

l_STR5:                                 ; @STR5
	.asciz	"\033[0;36m"

l_STR6:                                 ; @STR6
	.asciz	"  \342\226\210\342\226\210\342\226\210\342\226\210\342\226\210\342\226\210\342\225\227\342\226\210\342\226\210\342\225\227     \342\226\210\342\226\210\342\225\227\342\226\210\342\226\210\342\226\210\342\226\210\342\226\210\342\226\210\342\226\210\342\225\227\342\226\210\342\226\210\342\226\210\342\225\227   \342\226\210\342\226\210\342\225\227\342\226\210\342\226\210\342\226\210\342\226\210\342\226\210\342\226\210\342\226\210\342\226\210\342\225\227\n"

l_STR7:                                 ; @STR7
	.asciz	" \342\226\210\342\226\210\342\225\224\342\225\220\342\225\220\342\225\220\342\225\220\342\225\235\342\226\210\342\226\210\342\225\221     \342\226\210\342\226\210\342\225\221\342\226\210\342\226\210\342\225\224\342\225\220\342\225\220\342\225\220\342\225\220\342\225\235\342\226\210\342\226\210\342\226\210\342\226\210\342\225\227  \342\226\210\342\226\210\342\225\221\342\225\232\342\225\220\342\225\220\342\226\210\342\226\210\342\225\224\342\225\220\342\225\220\342\225\235\n"

l_STR8:                                 ; @STR8
	.asciz	" \342\226\210\342\226\210\342\225\221     \342\226\210\342\226\210\342\225\221     \342\226\210\342\226\210\342\225\221\342\226\210\342\226\210\342\226\210\342\226\210\342\226\210\342\225\227  \342\226\210\342\226\210\342\225\224\342\226\210\342\226\210\342\225\227 \342\226\210\342\226\210\342\225\221   \342\226\210\342\226\210\342\225\221   \n"

l_STR9:                                 ; @STR9
	.asciz	" \342\226\210\342\226\210\342\225\221     \342\226\210\342\226\210\342\225\221     \342\226\210\342\226\210\342\225\221\342\226\210\342\226\210\342\225\224\342\225\220\342\225\220\342\225\235  \342\226\210\342\226\210\342\225\221\342\225\232\342\226\210\342\226\210\342\225\227\342\226\210\342\226\210\342\225\221   \342\226\210\342\226\210\342\225\221   \n"

l_STR10:                                ; @STR10
	.asciz	" \342\225\232\342\226\210\342\226\210\342\226\210\342\226\210\342\226\210\342\226\210\342\225\227\342\226\210\342\226\210\342\226\210\342\226\210\342\226\210\342\226\210\342\226\210\342\225\227\342\226\210\342\226\210\342\225\221\342\226\210\342\226\210\342\226\210\342\226\210\342\226\210\342\226\210\342\226\210\342\225\227\342\226\210\342\226\210\342\225\221 \342\225\232\342\226\210\342\226\210\342\226\210\342\226\210\342\225\221   \342\226\210\342\226\210\342\225\221   \n"

l_STR11:                                ; @STR11
	.asciz	"  \342\225\232\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\235\342\225\232\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\235\342\225\232\342\225\220\342\225\235\342\225\232\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\235\342\225\232\342\225\220\342\225\235  \342\225\232\342\225\220\342\225\220\342\225\220\342\225\235   \342\225\232\342\225\220\342\225\235   \n"

l_STR12:                                ; @STR12
	.asciz	"\033[0m"

l_STR13:                                ; @STR13
	.asciz	"\033[0;90m\342\224\200\342\224\200\342\224\200\342\224\200\342\224\200\342\224\200\342\224\200\342\224\200\342\224\200\342\224\200\342\224\200\342\224\200\342\224\200\342\224\200\342\224\200\342\224\200\342\224\200\342\224\200\342\224\200\342\224\200\342\224\200\342\224\200\342\224\200\342\224\200\342\224\200\342\224\200\342\224\200\342\224\200\342\224\200\342\224\200\342\224\200\342\224\200\342\224\200\342\224\200\342\224\200\342\224\200\342\224\200\342\224\200\342\224\200\342\224\200\342\224\200\342\224\200\342\224\200\342\224\200\342\224\200\033[0m\n"

l_STR14:                                ; @STR14
	.asciz	"\033[0;36m  URA Chat Client  \033[0;90m\342\224\202\033[0m connecting to \033[0;33m"

l_STR15:                                ; @STR15
	.asciz	":"

l_STR16:                                ; @STR16
	.asciz	"\033[0m\n"

l_output_fmt:                           ; @output_fmt
	.asciz	"\033[0;36m  URA Chat Client  \033[0;90m\342\224\202\033[0m connecting to \033[0;33m%s:%d\033[0m\n"

l_STR17:                                ; @STR17
	.asciz	"\033[0;90m\342\224\200\342\224\200\342\224\200\342\224\200\342\224\200\342\224\200\342\224\200\342\224\200\342\224\200\342\224\200\342\224\200\342\224\200\342\224\200\342\224\200\342\224\200\342\224\200\342\224\200\342\224\200\342\224\200\342\224\200\342\224\200\342\224\200\342\224\200\342\224\200\342\224\200\342\224\200\342\224\200\342\224\200\342\224\200\342\224\200\342\224\200\342\224\200\342\224\200\342\224\200\342\224\200\342\224\200\342\224\200\342\224\200\342\224\200\342\224\200\342\224\200\342\224\200\342\224\200\342\224\200\342\224\200\033[0m\n\n"

l_STR18:                                ; @STR18
	.asciz	"failed to create client socket\n"

l_STR19:                                ; @STR19
	.asciz	"127.0.0.1"

l_STR20:                                ; @STR20
	.asciz	"\033[0;31m"

l_STR21:                                ; @STR21
	.asciz	"[client]"

l_STR22:                                ; @STR22
	.asciz	"socket failed"

l_STR23:                                ; @STR23
	.asciz	"\033[0;31m"

l_STR24:                                ; @STR24
	.asciz	"[client]"

l_STR25:                                ; @STR25
	.asciz	"connect failed"

l_STR26:                                ; @STR26
	.asciz	"\033[0;36m"

l_STR27:                                ; @STR27
	.asciz	"[client]"

l_STR28:                                ; @STR28
	.asciz	"connected to server"

l_STR29:                                ; @STR29
	.asciz	"\033[0;31m"

l_STR30:                                ; @STR30
	.asciz	"[client]"

l_STR31:                                ; @STR31
	.asciz	"server disconnected"

l_STR32:                                ; @STR32
	.asciz	"\r\033[2K"

l_STR33:                                ; @STR33
	.asciz	"\033[0;33m"

l_STR34:                                ; @STR34
	.asciz	"[server]"

l_STR35:                                ; @STR35
	.asciz	"\033[0;36m[client]\033[0m > "

l_STR36:                                ; @STR36
	.asciz	"\033[0;36m[client]\033[0m > "

l_STR37:                                ; @STR37
	.asciz	"\033[0;36m[client]\033[0m > "

	.section	__DWARF,__debug_abbrev,regular,debug
Lsection_abbrev:
	.byte	1                               ; Abbreviation Code
	.byte	17                              ; DW_TAG_compile_unit
	.byte	1                               ; DW_CHILDREN_yes
	.byte	37                              ; DW_AT_producer
	.byte	14                              ; DW_FORM_strp
	.byte	19                              ; DW_AT_language
	.byte	5                               ; DW_FORM_data2
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.byte	16                              ; DW_AT_stmt_list
	.byte	23                              ; DW_FORM_sec_offset
	.byte	27                              ; DW_AT_comp_dir
	.byte	14                              ; DW_FORM_strp
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	85                              ; DW_AT_ranges
	.byte	23                              ; DW_FORM_sec_offset
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	2                               ; Abbreviation Code
	.byte	46                              ; DW_TAG_subprogram
	.byte	0                               ; DW_CHILDREN_no
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
	.ascii	"\347\177"                      ; DW_AT_APPLE_omit_frame_ptr
	.byte	25                              ; DW_FORM_flag_present
	.byte	64                              ; DW_AT_frame_base
	.byte	24                              ; DW_FORM_exprloc
	.byte	110                             ; DW_AT_linkage_name
	.byte	14                              ; DW_FORM_strp
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.byte	58                              ; DW_AT_decl_file
	.byte	11                              ; DW_FORM_data1
	.byte	59                              ; DW_AT_decl_line
	.byte	11                              ; DW_FORM_data1
	.byte	63                              ; DW_AT_external
	.byte	25                              ; DW_FORM_flag_present
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	0                               ; EOM(3)
	.section	__DWARF,__debug_info,regular,debug
Lsection_info:
Lcu_begin0:
.set Lset0, Ldebug_info_end0-Ldebug_info_start0 ; Length of Unit
	.long	Lset0
Ldebug_info_start0:
	.short	4                               ; DWARF version number
.set Lset1, Lsection_abbrev-Lsection_abbrev ; Offset Into Abbrev. Section
	.long	Lset1
	.byte	8                               ; Address Size (in bytes)
	.byte	1                               ; Abbrev [1] 0xb:0x11a DW_TAG_compile_unit
	.long	0                               ; DW_AT_producer
	.short	2                               ; DW_AT_language
	.long	4                               ; DW_AT_name
.set Lset2, Lline_table_start0-Lsection_line ; DW_AT_stmt_list
	.long	Lset2
	.long	15                              ; DW_AT_comp_dir
	.quad	0                               ; DW_AT_low_pc
.set Lset3, Ldebug_ranges0-Ldebug_range ; DW_AT_ranges
	.long	Lset3
	.byte	2                               ; Abbrev [2] 0x2a:0x19 DW_TAG_subprogram
	.quad	Lfunc_begin0                    ; DW_AT_low_pc
.set Lset4, Lfunc_end0-Lfunc_begin0     ; DW_AT_high_pc
	.long	Lset4
                                        ; DW_AT_APPLE_omit_frame_ptr
	.byte	1                               ; DW_AT_frame_base
	.byte	111
	.long	36                              ; DW_AT_linkage_name
	.long	36                              ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	3                               ; DW_AT_decl_line
                                        ; DW_AT_external
	.byte	2                               ; Abbrev [2] 0x43:0x19 DW_TAG_subprogram
	.quad	Lfunc_begin1                    ; DW_AT_low_pc
.set Lset5, Lfunc_end1-Lfunc_begin1     ; DW_AT_high_pc
	.long	Lset5
                                        ; DW_AT_APPLE_omit_frame_ptr
	.byte	1                               ; DW_AT_frame_base
	.byte	111
	.long	40                              ; DW_AT_linkage_name
	.long	40                              ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	6                               ; DW_AT_decl_line
                                        ; DW_AT_external
	.byte	2                               ; Abbrev [2] 0x5c:0x19 DW_TAG_subprogram
	.quad	Lfunc_begin2                    ; DW_AT_low_pc
.set Lset6, Lfunc_end2-Lfunc_begin2     ; DW_AT_high_pc
	.long	Lset6
                                        ; DW_AT_APPLE_omit_frame_ptr
	.byte	1                               ; DW_AT_frame_base
	.byte	111
	.long	49                              ; DW_AT_linkage_name
	.long	49                              ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	13                              ; DW_AT_decl_line
                                        ; DW_AT_external
	.byte	2                               ; Abbrev [2] 0x75:0x19 DW_TAG_subprogram
	.quad	Lfunc_begin3                    ; DW_AT_low_pc
.set Lset7, Lfunc_end3-Lfunc_begin3     ; DW_AT_high_pc
	.long	Lset7
                                        ; DW_AT_APPLE_omit_frame_ptr
	.byte	1                               ; DW_AT_frame_base
	.byte	111
	.long	56                              ; DW_AT_linkage_name
	.long	56                              ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	40                              ; DW_AT_decl_line
                                        ; DW_AT_external
	.byte	2                               ; Abbrev [2] 0x8e:0x19 DW_TAG_subprogram
	.quad	Lfunc_begin4                    ; DW_AT_low_pc
.set Lset8, Lfunc_end4-Lfunc_begin4     ; DW_AT_high_pc
	.long	Lset8
                                        ; DW_AT_APPLE_omit_frame_ptr
	.byte	1                               ; DW_AT_frame_base
	.byte	111
	.long	70                              ; DW_AT_linkage_name
	.long	70                              ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	45                              ; DW_AT_decl_line
                                        ; DW_AT_external
	.byte	2                               ; Abbrev [2] 0xa7:0x19 DW_TAG_subprogram
	.quad	Lfunc_begin5                    ; DW_AT_low_pc
.set Lset9, Lfunc_end5-Lfunc_begin5     ; DW_AT_high_pc
	.long	Lset9
                                        ; DW_AT_APPLE_omit_frame_ptr
	.byte	1                               ; DW_AT_frame_base
	.byte	111
	.long	88                              ; DW_AT_linkage_name
	.long	88                              ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	49                              ; DW_AT_decl_line
                                        ; DW_AT_external
	.byte	2                               ; Abbrev [2] 0xc0:0x19 DW_TAG_subprogram
	.quad	Lfunc_begin6                    ; DW_AT_low_pc
.set Lset10, Lfunc_end6-Lfunc_begin6    ; DW_AT_high_pc
	.long	Lset10
                                        ; DW_AT_APPLE_omit_frame_ptr
	.byte	1                               ; DW_AT_frame_base
	.byte	111
	.long	104                             ; DW_AT_linkage_name
	.long	104                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	55                              ; DW_AT_decl_line
                                        ; DW_AT_external
	.byte	2                               ; Abbrev [2] 0xd9:0x19 DW_TAG_subprogram
	.quad	Lfunc_begin7                    ; DW_AT_low_pc
.set Lset11, Lfunc_end7-Lfunc_begin7    ; DW_AT_high_pc
	.long	Lset11
                                        ; DW_AT_APPLE_omit_frame_ptr
	.byte	1                               ; DW_AT_frame_base
	.byte	111
	.long	119                             ; DW_AT_linkage_name
	.long	119                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	4                               ; DW_AT_decl_line
                                        ; DW_AT_external
	.byte	2                               ; Abbrev [2] 0xf2:0x19 DW_TAG_subprogram
	.quad	Lfunc_begin9                    ; DW_AT_low_pc
.set Lset12, Lfunc_end9-Lfunc_begin9    ; DW_AT_high_pc
	.long	Lset12
                                        ; DW_AT_APPLE_omit_frame_ptr
	.byte	1                               ; DW_AT_frame_base
	.byte	111
	.long	126                             ; DW_AT_linkage_name
	.long	126                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	22                              ; DW_AT_decl_line
                                        ; DW_AT_external
	.byte	2                               ; Abbrev [2] 0x10b:0x19 DW_TAG_subprogram
	.quad	Lfunc_begin10                   ; DW_AT_low_pc
.set Lset13, Lfunc_end10-Lfunc_begin10  ; DW_AT_high_pc
	.long	Lset13
                                        ; DW_AT_APPLE_omit_frame_ptr
	.byte	1                               ; DW_AT_frame_base
	.byte	111
	.long	138                             ; DW_AT_linkage_name
	.long	138                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	32                              ; DW_AT_decl_line
                                        ; DW_AT_external
	.byte	0                               ; End Of Children Mark
Ldebug_info_end0:
	.section	__DWARF,__debug_ranges,regular,debug
Ldebug_range:
Ldebug_ranges0:
	.quad	Lfunc_begin0
	.quad	Lfunc_end7
	.quad	Lfunc_begin9
	.quad	Lfunc_end10
	.quad	0
	.quad	0
	.section	__DWARF,__debug_str,regular,debug
Linfo_string:
	.asciz	"ura"                           ; string offset=0
	.asciz	"client.ura"                    ; string offset=4
	.asciz	"ura-tcp-server/basic"          ; string offset=15
	.asciz	"log"                           ; string offset=36
	.asciz	"get_time"                      ; string offset=40
	.asciz	"log_ts"                        ; string offset=49
	.asciz	"SockAddr.init"                 ; string offset=56
	.asciz	"SockAddr.set_port"             ; string offset=70
	.asciz	"SockAddr.set_ip"               ; string offset=88
	.asciz	"SockAddr.clean"                ; string offset=104
	.asciz	"banner"                        ; string offset=119
	.asciz	"Client.init"                   ; string offset=126
	.asciz	"main"                          ; string offset=138
	.section	__DWARF,__apple_names,regular,debug
Lnames_begin:
	.long	1212240712                      ; Header Magic
	.short	1                               ; Header Version
	.short	0                               ; Header Hash Function
	.long	10                              ; Header Bucket Count
	.long	10                              ; Header Hash Count
	.long	12                              ; Header Data Length
	.long	0                               ; HeaderData Die Offset Base
	.long	1                               ; HeaderData Atom Count
	.short	1                               ; DW_ATOM_die_offset
	.short	6                               ; DW_FORM_data4
	.long	0                               ; Bucket 0
	.long	1                               ; Bucket 1
	.long	2                               ; Bucket 2
	.long	4                               ; Bucket 3
	.long	5                               ; Bucket 4
	.long	6                               ; Bucket 5
	.long	7                               ; Bucket 6
	.long	-1                              ; Bucket 7
	.long	-1                              ; Bucket 8
	.long	8                               ; Bucket 9
	.long	1892955170                      ; Hash in Bucket 0
	.long	-25636205                       ; Hash in Bucket 1
	.long	-1576193774                     ; Hash in Bucket 2
	.long	-1447155514                     ; Hash in Bucket 2
	.long	-481979263                      ; Hash in Bucket 3
	.long	-155867602                      ; Hash in Bucket 4
	.long	193498375                       ; Hash in Bucket 5
	.long	2090499946                      ; Hash in Bucket 6
	.long	199157549                       ; Hash in Bucket 9
	.long	-208531877                      ; Hash in Bucket 9
.set Lset14, LNames5-Lnames_begin       ; Offset in Bucket 0
	.long	Lset14
.set Lset15, LNames1-Lnames_begin       ; Offset in Bucket 1
	.long	Lset15
.set Lset16, LNames3-Lnames_begin       ; Offset in Bucket 2
	.long	Lset16
.set Lset17, LNames8-Lnames_begin       ; Offset in Bucket 2
	.long	Lset17
.set Lset18, LNames6-Lnames_begin       ; Offset in Bucket 3
	.long	Lset18
.set Lset19, LNames4-Lnames_begin       ; Offset in Bucket 4
	.long	Lset19
.set Lset20, LNames0-Lnames_begin       ; Offset in Bucket 5
	.long	Lset20
.set Lset21, LNames9-Lnames_begin       ; Offset in Bucket 6
	.long	Lset21
.set Lset22, LNames2-Lnames_begin       ; Offset in Bucket 9
	.long	Lset22
.set Lset23, LNames7-Lnames_begin       ; Offset in Bucket 9
	.long	Lset23
LNames5:
	.long	88                              ; SockAddr.set_ip
	.long	1                               ; Num DIEs
	.long	167
	.long	0
LNames1:
	.long	40                              ; get_time
	.long	1                               ; Num DIEs
	.long	67
	.long	0
LNames3:
	.long	56                              ; SockAddr.init
	.long	1                               ; Num DIEs
	.long	117
	.long	0
LNames8:
	.long	126                             ; Client.init
	.long	1                               ; Num DIEs
	.long	242
	.long	0
LNames6:
	.long	104                             ; SockAddr.clean
	.long	1                               ; Num DIEs
	.long	192
	.long	0
LNames4:
	.long	70                              ; SockAddr.set_port
	.long	1                               ; Num DIEs
	.long	142
	.long	0
LNames0:
	.long	36                              ; log
	.long	1                               ; Num DIEs
	.long	42
	.long	0
LNames9:
	.long	138                             ; main
	.long	1                               ; Num DIEs
	.long	267
	.long	0
LNames2:
	.long	49                              ; log_ts
	.long	1                               ; Num DIEs
	.long	92
	.long	0
LNames7:
	.long	119                             ; banner
	.long	1                               ; Num DIEs
	.long	217
	.long	0
	.section	__DWARF,__apple_objc,regular,debug
Lobjc_begin:
	.long	1212240712                      ; Header Magic
	.short	1                               ; Header Version
	.short	0                               ; Header Hash Function
	.long	1                               ; Header Bucket Count
	.long	0                               ; Header Hash Count
	.long	12                              ; Header Data Length
	.long	0                               ; HeaderData Die Offset Base
	.long	1                               ; HeaderData Atom Count
	.short	1                               ; DW_ATOM_die_offset
	.short	6                               ; DW_FORM_data4
	.long	-1                              ; Bucket 0
	.section	__DWARF,__apple_namespac,regular,debug
Lnamespac_begin:
	.long	1212240712                      ; Header Magic
	.short	1                               ; Header Version
	.short	0                               ; Header Hash Function
	.long	1                               ; Header Bucket Count
	.long	0                               ; Header Hash Count
	.long	12                              ; Header Data Length
	.long	0                               ; HeaderData Die Offset Base
	.long	1                               ; HeaderData Atom Count
	.short	1                               ; DW_ATOM_die_offset
	.short	6                               ; DW_FORM_data4
	.long	-1                              ; Bucket 0
	.section	__DWARF,__apple_types,regular,debug
Ltypes_begin:
	.long	1212240712                      ; Header Magic
	.short	1                               ; Header Version
	.short	0                               ; Header Hash Function
	.long	1                               ; Header Bucket Count
	.long	0                               ; Header Hash Count
	.long	20                              ; Header Data Length
	.long	0                               ; HeaderData Die Offset Base
	.long	3                               ; HeaderData Atom Count
	.short	1                               ; DW_ATOM_die_offset
	.short	6                               ; DW_FORM_data4
	.short	3                               ; DW_ATOM_die_tag
	.short	5                               ; DW_FORM_data2
	.short	4                               ; DW_ATOM_type_flags
	.short	11                              ; DW_FORM_data1
	.long	-1                              ; Bucket 0
.subsections_via_symbols
	.section	__DWARF,__debug_line,regular,debug
Lsection_line:
Lline_table_start0:

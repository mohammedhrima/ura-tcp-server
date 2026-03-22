	.build_version macos, 16, 0
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_log                            ; -- Begin function log
	.p2align	2
_log:                                   ; @log
Lfunc_begin0:
	.file	1 "ura-tcp-server/cmd" "server.ura"
	.loc	1 3 0                           ; server.ura:3:0
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
	.loc	1 3 0 prologue_end              ; server.ura:3:0
	str	x0, [sp, #8]
	.loc	1 4 0                           ; server.ura:4:0
	bl	_strlen
	mov	w2, w0
	mov	w0, #1                          ; =0x1
	mov	x1, x19
	bl	_write
	.loc	1 4 0 epilogue_begin is_stmt 0  ; server.ura:4:0
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
	.loc	1 6 0 is_stmt 1                 ; server.ura:6:0
	.cfi_startproc
; %bb.0:                                ; %entry
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	.cfi_def_cfa_offset 48
	.cfi_offset w30, -8
	.cfi_offset w29, -16
Ltmp4:
	.loc	1 6 0 prologue_end              ; server.ura:6:0
	mov	w0, #16                         ; =0x10
	mov	w1, #1                          ; =0x1
	str	xzr, [sp, #24]
	bl	_calloc
	stp	xzr, x0, [sp, #16]
	.loc	1 8 0                           ; server.ura:8:0
	mov	x0, xzr
	bl	_time
	.loc	1 6 0                           ; server.ura:6:0
	stp	xzr, x0, [sp, #8]
	.loc	1 9 0                           ; server.ura:9:0
	add	x0, sp, #16
	bl	_localtime
	mov	x3, x0
	.loc	1 10 0                          ; server.ura:10:0
	ldr	x0, [sp, #24]
Lloh0:
	adrp	x2, l_STR0@PAGE
Lloh1:
	add	x2, x2, l_STR0@PAGEOFF
	mov	w1, #16                         ; =0x10
	.loc	1 9 0                           ; server.ura:9:0
	str	x3, [sp, #8]
	.loc	1 10 0                          ; server.ura:10:0
	bl	_strftime
	.loc	1 10 0 epilogue_begin is_stmt 0 ; server.ura:10:0
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
	.loc	1 13 0 is_stmt 1                ; server.ura:13:0
	.cfi_startproc
; %bb.0:                                ; %entry
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	.cfi_def_cfa_offset 48
	.cfi_offset w30, -8
	.cfi_offset w29, -16
Ltmp6:
	.loc	1 13 0 prologue_end             ; server.ura:13:0
	stp	x1, x0, [sp, #16]
	stp	xzr, x2, [sp]
	.loc	1 14 0                          ; server.ura:14:0
	bl	_get_time
	str	x0, [sp]
	.loc	1 15 0                          ; server.ura:15:0
Lloh2:
	adrp	x0, l_STR1@PAGE
Lloh3:
	add	x0, x0, l_STR1@PAGEOFF
	bl	_log
	.loc	1 16 0                          ; server.ura:16:0
	ldr	x0, [sp]
	bl	_log
	.loc	1 17 0                          ; server.ura:17:0
Lloh4:
	adrp	x0, l_STR2@PAGE
Lloh5:
	add	x0, x0, l_STR2@PAGEOFF
	bl	_log
	.loc	1 18 0                          ; server.ura:18:0
	ldr	x0, [sp, #24]
	bl	_log
	.loc	1 19 0                          ; server.ura:19:0
	ldr	x0, [sp, #16]
	bl	_log
	.loc	1 20 0                          ; server.ura:20:0
Lloh6:
	adrp	x0, l_STR3@PAGE
Lloh7:
	add	x0, x0, l_STR3@PAGEOFF
	bl	_log
	.loc	1 21 0                          ; server.ura:21:0
	ldr	x0, [sp, #8]
	bl	_log
	.loc	1 22 0                          ; server.ura:22:0
Lloh8:
	adrp	x0, l_STR4@PAGE
Lloh9:
	add	x0, x0, l_STR4@PAGEOFF
	bl	_log
	.loc	1 23 0                          ; server.ura:23:0
	ldr	x0, [sp]
	bl	_free
	.loc	1 23 0 epilogue_begin is_stmt 0 ; server.ura:23:0
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
	.loc	1 40 0 is_stmt 1                ; server.ura:40:0
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
	.loc	1 40 0 prologue_end             ; server.ura:40:0
	str	x0, [sp, #8]
	mov	w0, #16                         ; =0x10
	mov	w1, #1                          ; =0x1
	mov	w20, #16                        ; =0x10
	bl	_calloc
	.loc	1 42 0                          ; server.ura:42:0
	ldr	x8, [sp, #8]
	.loc	1 40 0                          ; server.ura:40:0
	str	x0, [x19]
	.loc	1 43 0 epilogue_begin           ; server.ura:43:0
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	.loc	1 42 0                          ; server.ura:42:0
	ldr	x9, [x8]
	strb	w20, [x9]
	.loc	1 43 0                          ; server.ura:43:0
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
	.loc	1 45 0                          ; server.ura:45:0
	.cfi_startproc
; %bb.0:                                ; %entry
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
Ltmp10:
	.loc	1 46 0 prologue_end             ; server.ura:46:0
	ldr	x8, [x1]
	lsr	w9, w0, #8
	.loc	1 45 0                          ; server.ura:45:0
	str	w0, [sp, #12]
	str	x1, [sp]
	.loc	1 46 0                          ; server.ura:46:0
	strb	w9, [x8, #2]
	.loc	1 47 0                          ; server.ura:47:0
	ldr	x8, [x1]
	strb	w0, [x8, #3]
	.loc	1 47 0 epilogue_begin is_stmt 0 ; server.ura:47:0
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
	.loc	1 49 0 is_stmt 1                ; server.ura:49:0
	.cfi_startproc
; %bb.0:                                ; %entry
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
Ltmp12:
	.loc	1 50 0 prologue_end             ; server.ura:50:0
	ldr	x8, [x4]
	.loc	1 49 0                          ; server.ura:49:0
	stp	w1, w0, [sp, #24]
	stp	w3, w2, [sp, #16]
	.loc	1 50 0                          ; server.ura:50:0
	strb	w0, [x8, #4]
	.loc	1 51 0                          ; server.ura:51:0
	ldr	x8, [x4]
	.loc	1 49 0                          ; server.ura:49:0
	str	x4, [sp, #8]
	.loc	1 51 0                          ; server.ura:51:0
	strb	w1, [x8, #5]
	.loc	1 52 0                          ; server.ura:52:0
	ldr	x8, [x4]
	strb	w2, [x8, #6]
	.loc	1 53 0                          ; server.ura:53:0
	ldr	x8, [x4]
	strb	w3, [x8, #7]
	.loc	1 53 0 epilogue_begin is_stmt 0 ; server.ura:53:0
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
	.loc	1 55 0 is_stmt 1                ; server.ura:55:0
	.cfi_startproc
; %bb.0:                                ; %entry
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	.cfi_def_cfa_offset 32
	.cfi_offset w30, -8
	.cfi_offset w29, -16
Ltmp14:
	.loc	1 56 0 prologue_end             ; server.ura:56:0
	ldr	x8, [x0]
	.loc	1 55 0                          ; server.ura:55:0
	str	x0, [sp, #8]
	.loc	1 56 0                          ; server.ura:56:0
	mov	x0, x8
	bl	_free
	.loc	1 56 0 epilogue_begin is_stmt 0 ; server.ura:56:0
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
	.loc	1 3 0 is_stmt 1                 ; server.ura:3:0
	.cfi_startproc
; %bb.0:                                ; %entry
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	.cfi_def_cfa_offset 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
Ltmp16:
	.loc	1 4 0 prologue_end              ; server.ura:4:0
Lloh10:
	adrp	x0, l_STR5@PAGE
Lloh11:
	add	x0, x0, l_STR5@PAGEOFF
	bl	_log
	.loc	1 5 0                           ; server.ura:5:0
Lloh12:
	adrp	x0, l_STR6@PAGE
Lloh13:
	add	x0, x0, l_STR6@PAGEOFF
	bl	_log
	.loc	1 6 0                           ; server.ura:6:0
Lloh14:
	adrp	x0, l_STR7@PAGE
Lloh15:
	add	x0, x0, l_STR7@PAGEOFF
	bl	_log
	.loc	1 7 0                           ; server.ura:7:0
Lloh16:
	adrp	x0, l_STR8@PAGE
Lloh17:
	add	x0, x0, l_STR8@PAGEOFF
	bl	_log
	.loc	1 8 0                           ; server.ura:8:0
Lloh18:
	adrp	x0, l_STR9@PAGE
Lloh19:
	add	x0, x0, l_STR9@PAGEOFF
	bl	_log
	.loc	1 9 0                           ; server.ura:9:0
Lloh20:
	adrp	x0, l_STR10@PAGE
Lloh21:
	add	x0, x0, l_STR10@PAGEOFF
	bl	_log
	.loc	1 10 0                          ; server.ura:10:0
Lloh22:
	adrp	x0, l_STR11@PAGE
Lloh23:
	add	x0, x0, l_STR11@PAGEOFF
	bl	_log
	.loc	1 11 0                          ; server.ura:11:0
Lloh24:
	adrp	x0, l_STR12@PAGE
Lloh25:
	add	x0, x0, l_STR12@PAGEOFF
	bl	_log
	.loc	1 12 0                          ; server.ura:12:0
Lloh26:
	adrp	x0, l_STR13@PAGE
Lloh27:
	add	x0, x0, l_STR13@PAGEOFF
	bl	_log
	.loc	1 13 0                          ; server.ura:13:0
Lloh28:
	adrp	x0, l_STR14@PAGE
Lloh29:
	add	x0, x0, l_STR14@PAGEOFF
	bl	_log
	.loc	1 14 0                          ; server.ura:14:0
Lloh30:
	adrp	x0, l_STR15@PAGE
Lloh31:
	add	x0, x0, l_STR15@PAGEOFF
	bl	_log
	.loc	1 14 0 epilogue_begin is_stmt 0 ; server.ura:14:0
	ldp	x29, x30, [sp], #16             ; 16-byte Folded Reload
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
	.globl	_Server.init                    ; -- Begin function Server.init
	.p2align	2
_Server.init:                           ; @Server.init
Lfunc_begin8:
	.loc	1 22 0 is_stmt 1                ; server.ura:22:0
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
	.loc	1 22 0 prologue_end             ; server.ura:22:0
	str	x0, [sp, #8]
	.loc	1 23 0                          ; server.ura:23:0
	mov	w0, #2                          ; =0x2
	mov	w1, #1                          ; =0x1
	mov	w2, wzr
	bl	_socket
	ldr	x8, [sp, #8]
	str	w0, [x19]
	ldr	w8, [x8]
	tbz	w8, #31, LBB8_2
; %bb.1:                                ; %if.then
	.loc	1 25 0                          ; server.ura:25:0
Lloh32:
	adrp	x0, l_STR16@PAGE
Lloh33:
	add	x0, x0, l_STR16@PAGEOFF
	bl	_log
	.loc	1 26 0                          ; server.ura:26:0
	mov	w0, #1                          ; =0x1
	bl	_exit
LBB8_2:                                 ; %if.end
	.loc	1 26 0                          ; server.ura:26:0
	ldr	x19, [sp, #8]
	mov	w0, #1024                       ; =0x400
	mov	w1, #1                          ; =0x1
	str	wzr, [x19, #4]
	bl	_calloc
	ldr	x20, [sp, #8]
	str	x0, [x19, #8]
	mov	w0, #1024                       ; =0x400
	mov	w1, #1                          ; =0x1
	bl	_calloc
	str	x0, [x20, #16]
	.loc	1 26 0 epilogue_begin is_stmt 0 ; server.ura:26:0
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
Ltmp19:
	.loh AdrpAdd	Lloh32, Lloh33
Lfunc_end8:
	.cfi_endproc
                                        ; -- End function
	.globl	_Server.set_reuse               ; -- Begin function Server.set_reuse
	.p2align	2
_Server.set_reuse:                      ; @Server.set_reuse
Lfunc_begin9:
	.loc	1 32 0 is_stmt 1                ; server.ura:32:0
	.cfi_startproc
; %bb.0:                                ; %entry
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	.cfi_def_cfa_offset 48
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	mov	w8, #1                          ; =0x1
Ltmp20:
	.loc	1 32 0 prologue_end             ; server.ura:32:0
	str	x0, [sp, #24]
	.loc	1 35 0                          ; server.ura:35:0
	add	x3, sp, #12
	.loc	1 34 0                          ; server.ura:34:0
	strb	w8, [sp, #12]
	add	x8, sp, #12
	.loc	1 35 0                          ; server.ura:35:0
	mov	w1, #65535                      ; =0xffff
	ldr	w0, [x0]
	mov	w2, #4                          ; =0x4
	mov	w4, #4                          ; =0x4
	.loc	1 32 0                          ; server.ura:32:0
	str	x8, [sp, #16]
	.loc	1 35 0                          ; server.ura:35:0
	bl	_setsockopt
	.loc	1 36 0                          ; server.ura:36:0
	ldp	x3, x8, [sp, #16]
	mov	w1, #65535                      ; =0xffff
	mov	w2, #512                        ; =0x200
	mov	w4, #4                          ; =0x4
	ldr	w0, [x8]
	bl	_setsockopt
	.loc	1 36 0 epilogue_begin is_stmt 0 ; server.ura:36:0
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
Ltmp21:
Lfunc_end9:
	.cfi_endproc
                                        ; -- End function
	.globl	_Server.handle_client           ; -- Begin function Server.handle_client
	.p2align	2
_Server.handle_client:                  ; @Server.handle_client
Lfunc_begin10:
	.loc	1 38 0 is_stmt 1                ; server.ura:38:0
	.cfi_startproc
; %bb.0:                                ; %entry
	sub	sp, sp, #144
	stp	x28, x27, [sp, #48]             ; 16-byte Folded Spill
	stp	x26, x25, [sp, #64]             ; 16-byte Folded Spill
	stp	x24, x23, [sp, #80]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #96]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #112]            ; 16-byte Folded Spill
	stp	x29, x30, [sp, #128]            ; 16-byte Folded Spill
	.cfi_def_cfa_offset 144
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	.cfi_offset w25, -72
	.cfi_offset w26, -80
	.cfi_offset w27, -88
	.cfi_offset w28, -96
Ltmp22:
	.loc	1 38 0 prologue_end             ; server.ura:38:0
	stp	xzr, x0, [sp, #32]
	.loc	1 40 0                          ; server.ura:40:0
	bl	_fork
	str	w0, [sp, #32]
	cbz	w0, LBB10_5
; %bb.1:                                ; %while.start78.preheader
	.loc	1 0 0 is_stmt 0                 ; server.ura:0:0
Lloh34:
	adrp	x0, l_STR32@PAGE
Lloh35:
	add	x0, x0, l_STR32@PAGEOFF
Lloh36:
	adrp	x19, l_STR33@PAGE
Lloh37:
	add	x19, x19, l_STR33@PAGEOFF
LBB10_2:                                ; %while.start78
                                        ; =>This Inner Loop Header: Depth=1
	bl	_log
	.loc	1 83 0 is_stmt 1                ; server.ura:83:0
	ldr	x8, [sp, #40]
	mov	w0, wzr
	mov	w2, #1023                       ; =0x3ff
	ldr	x1, [x8, #16]
	bl	_read
	.loc	1 0 0 is_stmt 0                 ; server.ura:0:0
	ldr	x8, [sp, #40]
	.loc	1 83 0                          ; server.ura:83:0
	cmp	w0, #1
	str	w0, [sp, #36]
	b.lt	LBB10_4
; %bb.3:                                ; %if.end85
                                        ;   in Loop: Header=BB10_2 Depth=1
	.loc	1 87 0 is_stmt 1                ; server.ura:87:0
	ldr	w9, [sp, #36]
	ldr	x8, [x8, #16]
	sub	w2, w9, #1
	.loc	1 88 0                          ; server.ura:88:0
	ldr	x9, [sp, #40]
	.loc	1 87 0                          ; server.ura:87:0
	strb	wzr, [x8, w2, sxtw]
	.loc	1 88 0                          ; server.ura:88:0
	ldr	w0, [x9, #4]
	ldr	x1, [x9, #16]
	bl	_write
	mov	x0, x19
	.loc	1 89 0                          ; server.ura:89:0
	b	LBB10_2
LBB10_4:                                ; %if.then86
	.loc	1 91 0                          ; server.ura:91:0
	ldr	w0, [x8, #4]
	bl	_close
	b	LBB10_16
LBB10_5:                                ; %if.then
	.loc	1 44 0                          ; server.ura:44:0
	ldr	x8, [sp, #40]
	.loc	1 38 0                          ; server.ura:38:0
Lloh38:
	adrp	x20, l_STR17@PAGE
Lloh39:
	add	x20, x20, l_STR17@PAGEOFF
	.loc	1 44 0                          ; server.ura:44:0
	mov	x0, x20
	.loc	1 38 0                          ; server.ura:38:0
	str	x20, [sp, #24]
	.loc	1 44 0                          ; server.ura:44:0
	ldr	w19, [x8, #4]
	bl	_strlen
	mov	w2, w0
	mov	w0, w19
	mov	x1, x20
	bl	_write
Lloh40:
	adrp	x19, l_STR21@PAGE
Lloh41:
	add	x19, x19, l_STR21@PAGEOFF
Lloh42:
	adrp	x20, l_STR22@PAGE
Lloh43:
	add	x20, x20, l_STR22@PAGEOFF
Lloh44:
	adrp	x21, l_STR23@PAGE
Lloh45:
	add	x21, x21, l_STR23@PAGEOFF
Lloh46:
	adrp	x22, l_STR24@PAGE
Lloh47:
	add	x22, x22, l_STR24@PAGEOFF
Lloh48:
	adrp	x23, l_STR25@PAGE
Lloh49:
	add	x23, x23, l_STR25@PAGEOFF
Lloh50:
	adrp	x24, l_STR26@PAGE
Lloh51:
	add	x24, x24, l_STR26@PAGEOFF
Lloh52:
	adrp	x27, l_STR30@PAGE
Lloh53:
	add	x27, x27, l_STR30@PAGEOFF
Lloh54:
	adrp	x28, l_STR31@PAGE
Lloh55:
	add	x28, x28, l_STR31@PAGEOFF
	b	LBB10_7
LBB10_6:                                ; %if.then21
                                        ;   in Loop: Header=BB10_7 Depth=1
	.loc	1 57 0                          ; server.ura:57:0
	ldr	x8, [sp, #40]
	mov	x0, x20
	.loc	1 55 0                          ; server.ura:55:0
	str	x20, [sp, #16]
	.loc	1 57 0                          ; server.ura:57:0
	ldr	w25, [x8, #4]
	bl	_strlen
	mov	w2, w0
	mov	w0, w25
	mov	x1, x20
	bl	_write
LBB10_7:                                ; %while.then
                                        ; =>This Inner Loop Header: Depth=1
	.loc	1 47 0                          ; server.ura:47:0
	ldr	x8, [sp, #40]
	mov	w2, #1023                       ; =0x3ff
	ldr	w0, [x8, #4]
	ldr	x1, [x8, #8]
	bl	_read
	.loc	1 38 0                          ; server.ura:38:0
	cmp	w0, #1
	str	xzr, [sp, #16]
	.loc	1 47 0                          ; server.ura:47:0
	str	w0, [sp, #36]
	.loc	1 38 0                          ; server.ura:38:0
	b.lt	LBB10_15
; %bb.8:                                ; %if.end12
                                        ;   in Loop: Header=BB10_7 Depth=1
	.loc	1 53 0                          ; server.ura:53:0
	ldr	x8, [sp, #40]
	ldrsw	x10, [sp, #36]
	.loc	1 55 0                          ; server.ura:55:0
	mov	x1, x19
	.loc	1 53 0                          ; server.ura:53:0
	ldr	x9, [x8, #8]
	strb	wzr, [x9, x10]
	.loc	1 55 0                          ; server.ura:55:0
	ldr	x0, [x8, #8]
	bl	_strcmp
	cbz	w0, LBB10_6
; %bb.9:                                ; %elif.start
                                        ;   in Loop: Header=BB10_7 Depth=1
	.loc	1 59 0                          ; server.ura:59:0
	ldr	x8, [sp, #40]
	mov	x1, x21
	ldr	x0, [x8, #8]
	bl	_strcmp
	cbz	w0, LBB10_13
; %bb.10:                               ; %elif.start33
                                        ;   in Loop: Header=BB10_7 Depth=1
	.loc	1 65 0                          ; server.ura:65:0
	ldr	x8, [sp, #40]
	mov	x1, x22
	ldr	x0, [x8, #8]
	bl	_strcmp
	cbz	w0, LBB10_14
; %bb.11:                               ; %elif.start49
                                        ;   in Loop: Header=BB10_7 Depth=1
	.loc	1 69 0                          ; server.ura:69:0
	ldr	x8, [sp, #40]
	mov	x1, x24
	ldr	x0, [x8, #8]
	bl	_strcmp
	cbz	w0, LBB10_17
; %bb.12:                               ; %if.else
                                        ;   in Loop: Header=BB10_7 Depth=1
	.loc	1 75 0                          ; server.ura:75:0
Lloh56:
	adrp	x0, l_STR28@PAGE
Lloh57:
	add	x0, x0, l_STR28@PAGEOFF
	bl	_log
	.loc	1 76 0                          ; server.ura:76:0
	ldr	x8, [sp, #40]
Lloh58:
	adrp	x0, l_STR29@PAGE
Lloh59:
	add	x0, x0, l_STR29@PAGEOFF
	mov	x1, x27
	ldr	x2, [x8, #8]
	bl	_log_ts
	.loc	1 77 0                          ; server.ura:77:0
	mov	x0, x28
	bl	_log
	b	LBB10_7
LBB10_13:                               ; %elif.then
                                        ;   in Loop: Header=BB10_7 Depth=1
	.loc	1 38 0                          ; server.ura:38:0
	mov	w0, #100                        ; =0x64
	mov	w1, #1                          ; =0x1
	str	xzr, [sp, #8]
	bl	_calloc
	mov	x25, x0
	str	x0, [sp, #8]
	.loc	1 61 0                          ; server.ura:61:0
	bl	_get_time
	mov	x1, x0
	mov	x0, x25
	bl	_strcpy
	.loc	1 62 0                          ; server.ura:62:0
	ldr	x8, [sp, #40]
	ldr	x26, [sp, #8]
	ldr	w25, [x8, #4]
	mov	x0, x26
	bl	_strlen
	mov	w2, w0
	mov	w0, w25
	mov	x1, x26
	bl	_write
	.loc	1 63 0                          ; server.ura:63:0
	ldr	x0, [sp, #8]
	bl	_free
	.loc	1 77 0                          ; server.ura:77:0
	b	LBB10_7
LBB10_14:                               ; %elif.then48
                                        ;   in Loop: Header=BB10_7 Depth=1
	.loc	1 67 0                          ; server.ura:67:0
	ldr	x8, [sp, #40]
	mov	x0, x23
	.loc	1 65 0                          ; server.ura:65:0
	str	x23, [sp, #16]
	.loc	1 67 0                          ; server.ura:67:0
	ldr	w25, [x8, #4]
	bl	_strlen
	mov	w2, w0
	mov	w0, w25
	mov	x1, x23
	bl	_write
	b	LBB10_7
LBB10_15:                               ; %if.then13
	.loc	1 50 0                          ; server.ura:50:0
Lloh60:
	adrp	x0, l_STR18@PAGE
Lloh61:
	add	x0, x0, l_STR18@PAGEOFF
Lloh62:
	adrp	x1, l_STR19@PAGE
Lloh63:
	add	x1, x1, l_STR19@PAGEOFF
Lloh64:
	adrp	x2, l_STR20@PAGE
Lloh65:
	add	x2, x2, l_STR20@PAGEOFF
	bl	_log_ts
LBB10_16:                               ; %common.ret
	.loc	1 0 0 epilogue_begin is_stmt 0  ; server.ura:0:0
	ldp	x29, x30, [sp, #128]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #112]            ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #96]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #80]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #64]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #144
	ret
LBB10_17:                               ; %elif.then62
	.loc	1 71 0 is_stmt 1                ; server.ura:71:0
	ldr	x8, [sp, #40]
	.loc	1 38 0                          ; server.ura:38:0
Lloh66:
	adrp	x20, l_STR27@PAGE
Lloh67:
	add	x20, x20, l_STR27@PAGEOFF
	.loc	1 71 0                          ; server.ura:71:0
	mov	x0, x20
	.loc	1 38 0                          ; server.ura:38:0
	str	x20, [sp]
	.loc	1 71 0                          ; server.ura:71:0
	ldr	w19, [x8, #4]
	bl	_strlen
	mov	w2, w0
	mov	w0, w19
	mov	x1, x20
	bl	_write
	b	LBB10_16
Ltmp23:
	.loh AdrpAdd	Lloh36, Lloh37
	.loh AdrpAdd	Lloh34, Lloh35
	.loh AdrpAdd	Lloh54, Lloh55
	.loh AdrpAdd	Lloh52, Lloh53
	.loh AdrpAdd	Lloh50, Lloh51
	.loh AdrpAdd	Lloh48, Lloh49
	.loh AdrpAdd	Lloh46, Lloh47
	.loh AdrpAdd	Lloh44, Lloh45
	.loh AdrpAdd	Lloh42, Lloh43
	.loh AdrpAdd	Lloh40, Lloh41
	.loh AdrpAdd	Lloh38, Lloh39
	.loh AdrpAdd	Lloh58, Lloh59
	.loh AdrpAdd	Lloh56, Lloh57
	.loh AdrpAdd	Lloh64, Lloh65
	.loh AdrpAdd	Lloh62, Lloh63
	.loh AdrpAdd	Lloh60, Lloh61
	.loh AdrpAdd	Lloh66, Lloh67
Lfunc_end10:
	.cfi_endproc
                                        ; -- End function
	.globl	_Server.clean                   ; -- Begin function Server.clean
	.p2align	2
_Server.clean:                          ; @Server.clean
Lfunc_begin11:
	.loc	1 93 0                          ; server.ura:93:0
	.cfi_startproc
; %bb.0:                                ; %entry
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	.cfi_def_cfa_offset 32
	.cfi_offset w30, -8
	.cfi_offset w29, -16
Ltmp24:
	.loc	1 94 0 prologue_end             ; server.ura:94:0
	ldr	x8, [x0, #8]
	.loc	1 93 0                          ; server.ura:93:0
	str	x0, [sp, #8]
	.loc	1 94 0                          ; server.ura:94:0
	mov	x0, x8
	bl	_free
	.loc	1 95 0                          ; server.ura:95:0
	ldr	x8, [sp, #8]
	ldr	x0, [x8, #16]
	bl	_free
	.loc	1 95 0 epilogue_begin is_stmt 0 ; server.ura:95:0
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
Ltmp25:
Lfunc_end11:
	.cfi_endproc
                                        ; -- End function
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
Lfunc_begin12:
	.loc	1 97 0 is_stmt 1                ; server.ura:97:0
	.cfi_startproc
; %bb.0:                                ; %entry
	sub	sp, sp, #96
	stp	x22, x21, [sp, #48]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #64]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #80]             ; 16-byte Folded Spill
	.cfi_def_cfa_offset 96
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
Ltmp26:
	.loc	1 98 0 prologue_end             ; server.ura:98:0
	bl	_banner
	add	x0, sp, #40
	str	xzr, [sp, #40]
	bl	_SockAddr.init
	mov	w8, #17000                      ; =0x4268
	.loc	1 102 0                         ; server.ura:102:0
	add	x1, sp, #40
	mov	w0, #17000                      ; =0x4268
	.loc	1 98 0                          ; server.ura:98:0
	str	w8, [sp, #36]
	.loc	1 102 0                         ; server.ura:102:0
	bl	_SockAddr.set_port
	.loc	1 103 0                         ; server.ura:103:0
	add	x4, sp, #40
	mov	w0, wzr
	mov	w1, wzr
	mov	w2, wzr
	mov	w3, wzr
	bl	_SockAddr.set_ip
	.loc	1 98 0                          ; server.ura:98:0
	add	x0, sp, #8
	stp	xzr, xzr, [sp, #8]
	str	xzr, [sp, #24]
	bl	_Server.init
	.loc	1 107 0                         ; server.ura:107:0
	add	x0, sp, #8
	bl	_Server.set_reuse
	.loc	1 109 0                         ; server.ura:109:0
	ldr	w0, [sp, #8]
	ldr	x1, [sp, #40]
	mov	w2, #16                         ; =0x10
	bl	_bind
	tbnz	w0, #31, LBB12_6
; %bb.1:                                ; %if.end
	.loc	1 113 0                         ; server.ura:113:0
	ldr	w0, [sp, #8]
	mov	w1, #5                          ; =0x5
	bl	_listen
	.loc	1 114 0                         ; server.ura:114:0
Lloh68:
	adrp	x0, l_STR37@PAGE
Lloh69:
	add	x0, x0, l_STR37@PAGEOFF
Lloh70:
	adrp	x1, l_STR38@PAGE
Lloh71:
	add	x1, x1, l_STR38@PAGEOFF
Lloh72:
	adrp	x2, l_STR39@PAGE
Lloh73:
	add	x2, x2, l_STR39@PAGEOFF
	bl	_log_ts
Lloh74:
	adrp	x19, l_STR40@PAGE
Lloh75:
	add	x19, x19, l_STR40@PAGEOFF
Lloh76:
	adrp	x20, l_STR41@PAGE
Lloh77:
	add	x20, x20, l_STR41@PAGEOFF
Lloh78:
	adrp	x21, l_STR42@PAGE
Lloh79:
	add	x21, x21, l_STR42@PAGEOFF
LBB12_2:                                ; %while.then
                                        ; =>This Inner Loop Header: Depth=1
	.loc	1 117 0                         ; server.ura:117:0
	ldr	w0, [sp, #8]
	mov	x1, xzr
	mov	x2, xzr
	bl	_accept
	str	w0, [sp, #12]
	tbnz	w0, #31, LBB12_2
; %bb.3:                                ; %if.end8
                                        ;   in Loop: Header=BB12_2 Depth=1
	.loc	1 121 0                         ; server.ura:121:0
	mov	x0, x19
	mov	x1, x20
	mov	x2, x21
	bl	_log_ts
	.loc	1 98 0                          ; server.ura:98:0
	str	wzr, [sp, #4]
	.loc	1 123 0                         ; server.ura:123:0
	bl	_fork
	str	w0, [sp, #4]
	cbz	w0, LBB12_5
; %bb.4:                                ; %if.end14
                                        ;   in Loop: Header=BB12_2 Depth=1
	.loc	1 129 0                         ; server.ura:129:0
	ldr	w0, [sp, #12]
	bl	_close
	b	LBB12_2
LBB12_5:                                ; %if.then15
	.loc	1 125 0                         ; server.ura:125:0
	ldr	w0, [sp, #8]
	bl	_close
	.loc	1 126 0                         ; server.ura:126:0
	add	x0, sp, #8
	bl	_Server.handle_client
	mov	w0, wzr
	b	LBB12_7
LBB12_6:                                ; %if.then
	.loc	1 110 0                         ; server.ura:110:0
Lloh80:
	adrp	x0, l_STR34@PAGE
Lloh81:
	add	x0, x0, l_STR34@PAGEOFF
Lloh82:
	adrp	x1, l_STR35@PAGE
Lloh83:
	add	x1, x1, l_STR35@PAGEOFF
Lloh84:
	adrp	x2, l_STR36@PAGE
Lloh85:
	add	x2, x2, l_STR36@PAGEOFF
	bl	_log_ts
	mov	w0, #1                          ; =0x1
LBB12_7:                                ; %common.ret
	.loc	1 0 0 epilogue_begin is_stmt 0  ; server.ura:0:0
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #64]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #96
	ret
Ltmp27:
	.loh AdrpAdd	Lloh78, Lloh79
	.loh AdrpAdd	Lloh76, Lloh77
	.loh AdrpAdd	Lloh74, Lloh75
	.loh AdrpAdd	Lloh72, Lloh73
	.loh AdrpAdd	Lloh70, Lloh71
	.loh AdrpAdd	Lloh68, Lloh69
	.loh AdrpAdd	Lloh84, Lloh85
	.loh AdrpAdd	Lloh82, Lloh83
	.loh AdrpAdd	Lloh80, Lloh81
Lfunc_end12:
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
	.asciz	"\033[0;32m"

l_STR6:                                 ; @STR6
	.asciz	"  \342\226\210\342\226\210\342\226\210\342\226\210\342\226\210\342\226\210\342\225\227\342\226\210\342\226\210\342\225\227  \342\226\210\342\226\210\342\225\227 \342\226\210\342\226\210\342\226\210\342\226\210\342\226\210\342\225\227 \342\226\210\342\226\210\342\226\210\342\226\210\342\226\210\342\226\210\342\226\210\342\226\210\342\225\227\n"

l_STR7:                                 ; @STR7
	.asciz	" \342\226\210\342\226\210\342\225\224\342\225\220\342\225\220\342\225\220\342\225\220\342\225\235\342\226\210\342\226\210\342\225\221  \342\226\210\342\226\210\342\225\221\342\226\210\342\226\210\342\225\224\342\225\220\342\225\220\342\226\210\342\226\210\342\225\227\342\225\232\342\225\220\342\225\220\342\226\210\342\226\210\342\225\224\342\225\220\342\225\220\342\225\235\n"

l_STR8:                                 ; @STR8
	.asciz	" \342\226\210\342\226\210\342\225\221     \342\226\210\342\226\210\342\226\210\342\226\210\342\226\210\342\226\210\342\226\210\342\225\221\342\226\210\342\226\210\342\226\210\342\226\210\342\226\210\342\226\210\342\226\210\342\225\221   \342\226\210\342\226\210\342\225\221   \n"

l_STR9:                                 ; @STR9
	.asciz	" \342\226\210\342\226\210\342\225\221     \342\226\210\342\226\210\342\225\224\342\225\220\342\225\220\342\226\210\342\226\210\342\225\221\342\226\210\342\226\210\342\225\224\342\225\220\342\225\220\342\226\210\342\226\210\342\225\221   \342\226\210\342\226\210\342\225\221   \n"

l_STR10:                                ; @STR10
	.asciz	" \342\225\232\342\226\210\342\226\210\342\226\210\342\226\210\342\226\210\342\226\210\342\225\227\342\226\210\342\226\210\342\225\221  \342\226\210\342\226\210\342\225\221\342\226\210\342\226\210\342\225\221  \342\226\210\342\226\210\342\225\221   \342\226\210\342\226\210\342\225\221   \n"

l_STR11:                                ; @STR11
	.asciz	"  \342\225\232\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\235\342\225\232\342\225\220\342\225\235  \342\225\232\342\225\220\342\225\235\342\225\232\342\225\220\342\225\235  \342\225\232\342\225\220\342\225\235   \342\225\232\342\225\220\342\225\235   \n"

l_STR12:                                ; @STR12
	.asciz	"\033[0m"

l_STR13:                                ; @STR13
	.asciz	"\033[0;90m\342\224\200\342\224\200\342\224\200\342\224\200\342\224\200\342\224\200\342\224\200\342\224\200\342\224\200\342\224\200\342\224\200\342\224\200\342\224\200\342\224\200\342\224\200\342\224\200\342\224\200\342\224\200\342\224\200\342\224\200\342\224\200\342\224\200\342\224\200\342\224\200\342\224\200\342\224\200\342\224\200\342\224\200\342\224\200\342\224\200\342\224\200\342\224\200\342\224\200\033[0m\n"

l_STR14:                                ; @STR14
	.asciz	"\033[0;32m  URA Chat Server  \033[0;90m\342\224\202\033[0m port \033[0;33m17000\033[0m\n"

l_STR15:                                ; @STR15
	.asciz	"\033[0;90m\342\224\200\342\224\200\342\224\200\342\224\200\342\224\200\342\224\200\342\224\200\342\224\200\342\224\200\342\224\200\342\224\200\342\224\200\342\224\200\342\224\200\342\224\200\342\224\200\342\224\200\342\224\200\342\224\200\342\224\200\342\224\200\342\224\200\342\224\200\342\224\200\342\224\200\342\224\200\342\224\200\342\224\200\342\224\200\342\224\200\342\224\200\342\224\200\342\224\200\033[0m\n\n"

l_STR16:                                ; @STR16
	.asciz	"failed to create server socket\n"

l_STR17:                                ; @STR17
	.asciz	"\033[0;35mWelcome to URA Secure Server\nType /help\n\033[0m"

l_STR18:                                ; @STR18
	.asciz	"\033[0;31m"

l_STR19:                                ; @STR19
	.asciz	"[server]"

l_STR20:                                ; @STR20
	.asciz	"client disconnected"

l_STR21:                                ; @STR21
	.asciz	"/help"

l_STR22:                                ; @STR22
	.asciz	"Commands: /help /time /whoami /exit\n"

l_STR23:                                ; @STR23
	.asciz	"/time"

l_STR24:                                ; @STR24
	.asciz	"/whoami"

l_STR25:                                ; @STR25
	.asciz	"You are connected to URA TCP Engine.\n"

l_STR26:                                ; @STR26
	.asciz	"/exit"

l_STR27:                                ; @STR27
	.asciz	"Session closed.\n"

l_STR28:                                ; @STR28
	.asciz	"\r\033[2K"

l_STR29:                                ; @STR29
	.asciz	"\033[0;36m"

l_STR30:                                ; @STR30
	.asciz	"[client]"

l_STR31:                                ; @STR31
	.asciz	"\033[0;32m[server]\033[0m > "

l_STR32:                                ; @STR32
	.asciz	"\033[0;32m[server]\033[0m > "

l_STR33:                                ; @STR33
	.asciz	"\033[0;32m[server]\033[0m > "

l_STR34:                                ; @STR34
	.asciz	"\033[0;31m"

l_STR35:                                ; @STR35
	.asciz	"[server]"

l_STR36:                                ; @STR36
	.asciz	"bind failed"

l_STR37:                                ; @STR37
	.asciz	"\033[0;32m"

l_STR38:                                ; @STR38
	.asciz	"[server]"

l_STR39:                                ; @STR39
	.asciz	"listening on port 17000..."

l_STR40:                                ; @STR40
	.asciz	"\033[0;32m"

l_STR41:                                ; @STR41
	.asciz	"[server]"

l_STR42:                                ; @STR42
	.asciz	"client connected"

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
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
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
	.byte	1                               ; Abbrev [1] 0xb:0x165 DW_TAG_compile_unit
	.long	0                               ; DW_AT_producer
	.short	2                               ; DW_AT_language
	.long	4                               ; DW_AT_name
.set Lset2, Lline_table_start0-Lsection_line ; DW_AT_stmt_list
	.long	Lset2
	.long	15                              ; DW_AT_comp_dir
	.quad	Lfunc_begin0                    ; DW_AT_low_pc
.set Lset3, Lfunc_end12-Lfunc_begin0    ; DW_AT_high_pc
	.long	Lset3
	.byte	2                               ; Abbrev [2] 0x2a:0x19 DW_TAG_subprogram
	.quad	Lfunc_begin0                    ; DW_AT_low_pc
.set Lset4, Lfunc_end0-Lfunc_begin0     ; DW_AT_high_pc
	.long	Lset4
                                        ; DW_AT_APPLE_omit_frame_ptr
	.byte	1                               ; DW_AT_frame_base
	.byte	111
	.long	34                              ; DW_AT_linkage_name
	.long	34                              ; DW_AT_name
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
	.long	38                              ; DW_AT_linkage_name
	.long	38                              ; DW_AT_name
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
	.long	47                              ; DW_AT_linkage_name
	.long	47                              ; DW_AT_name
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
	.long	54                              ; DW_AT_linkage_name
	.long	54                              ; DW_AT_name
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
	.long	68                              ; DW_AT_linkage_name
	.long	68                              ; DW_AT_name
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
	.long	86                              ; DW_AT_linkage_name
	.long	86                              ; DW_AT_name
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
	.long	102                             ; DW_AT_linkage_name
	.long	102                             ; DW_AT_name
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
	.long	117                             ; DW_AT_linkage_name
	.long	117                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	3                               ; DW_AT_decl_line
                                        ; DW_AT_external
	.byte	2                               ; Abbrev [2] 0xf2:0x19 DW_TAG_subprogram
	.quad	Lfunc_begin8                    ; DW_AT_low_pc
.set Lset12, Lfunc_end8-Lfunc_begin8    ; DW_AT_high_pc
	.long	Lset12
                                        ; DW_AT_APPLE_omit_frame_ptr
	.byte	1                               ; DW_AT_frame_base
	.byte	111
	.long	124                             ; DW_AT_linkage_name
	.long	124                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	22                              ; DW_AT_decl_line
                                        ; DW_AT_external
	.byte	2                               ; Abbrev [2] 0x10b:0x19 DW_TAG_subprogram
	.quad	Lfunc_begin9                    ; DW_AT_low_pc
.set Lset13, Lfunc_end9-Lfunc_begin9    ; DW_AT_high_pc
	.long	Lset13
                                        ; DW_AT_APPLE_omit_frame_ptr
	.byte	1                               ; DW_AT_frame_base
	.byte	111
	.long	136                             ; DW_AT_linkage_name
	.long	136                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	32                              ; DW_AT_decl_line
                                        ; DW_AT_external
	.byte	2                               ; Abbrev [2] 0x124:0x19 DW_TAG_subprogram
	.quad	Lfunc_begin10                   ; DW_AT_low_pc
.set Lset14, Lfunc_end10-Lfunc_begin10  ; DW_AT_high_pc
	.long	Lset14
                                        ; DW_AT_APPLE_omit_frame_ptr
	.byte	1                               ; DW_AT_frame_base
	.byte	111
	.long	153                             ; DW_AT_linkage_name
	.long	153                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	38                              ; DW_AT_decl_line
                                        ; DW_AT_external
	.byte	2                               ; Abbrev [2] 0x13d:0x19 DW_TAG_subprogram
	.quad	Lfunc_begin11                   ; DW_AT_low_pc
.set Lset15, Lfunc_end11-Lfunc_begin11  ; DW_AT_high_pc
	.long	Lset15
                                        ; DW_AT_APPLE_omit_frame_ptr
	.byte	1                               ; DW_AT_frame_base
	.byte	111
	.long	174                             ; DW_AT_linkage_name
	.long	174                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	93                              ; DW_AT_decl_line
                                        ; DW_AT_external
	.byte	2                               ; Abbrev [2] 0x156:0x19 DW_TAG_subprogram
	.quad	Lfunc_begin12                   ; DW_AT_low_pc
.set Lset16, Lfunc_end12-Lfunc_begin12  ; DW_AT_high_pc
	.long	Lset16
                                        ; DW_AT_APPLE_omit_frame_ptr
	.byte	1                               ; DW_AT_frame_base
	.byte	111
	.long	187                             ; DW_AT_linkage_name
	.long	187                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	97                              ; DW_AT_decl_line
                                        ; DW_AT_external
	.byte	0                               ; End Of Children Mark
Ldebug_info_end0:
	.section	__DWARF,__debug_str,regular,debug
Linfo_string:
	.asciz	"ura"                           ; string offset=0
	.asciz	"server.ura"                    ; string offset=4
	.asciz	"ura-tcp-server/cmd"            ; string offset=15
	.asciz	"log"                           ; string offset=34
	.asciz	"get_time"                      ; string offset=38
	.asciz	"log_ts"                        ; string offset=47
	.asciz	"SockAddr.init"                 ; string offset=54
	.asciz	"SockAddr.set_port"             ; string offset=68
	.asciz	"SockAddr.set_ip"               ; string offset=86
	.asciz	"SockAddr.clean"                ; string offset=102
	.asciz	"banner"                        ; string offset=117
	.asciz	"Server.init"                   ; string offset=124
	.asciz	"Server.set_reuse"              ; string offset=136
	.asciz	"Server.handle_client"          ; string offset=153
	.asciz	"Server.clean"                  ; string offset=174
	.asciz	"main"                          ; string offset=187
	.section	__DWARF,__apple_names,regular,debug
Lnames_begin:
	.long	1212240712                      ; Header Magic
	.short	1                               ; Header Version
	.short	0                               ; Header Hash Function
	.long	13                              ; Header Bucket Count
	.long	13                              ; Header Hash Count
	.long	12                              ; Header Data Length
	.long	0                               ; HeaderData Die Offset Base
	.long	1                               ; HeaderData Atom Count
	.short	1                               ; DW_ATOM_die_offset
	.short	6                               ; DW_FORM_data4
	.long	-1                              ; Bucket 0
	.long	0                               ; Bucket 1
	.long	1                               ; Bucket 2
	.long	-1                              ; Bucket 3
	.long	-1                              ; Bucket 4
	.long	4                               ; Bucket 5
	.long	5                               ; Bucket 6
	.long	6                               ; Bucket 7
	.long	-1                              ; Bucket 8
	.long	-1                              ; Bucket 9
	.long	8                               ; Bucket 10
	.long	11                              ; Bucket 11
	.long	12                              ; Bucket 12
	.long	-208531877                      ; Hash in Bucket 1
	.long	1892955170                      ; Hash in Bucket 2
	.long	2090499946                      ; Hash in Bucket 2
	.long	-155867602                      ; Hash in Bucket 2
	.long	193498375                       ; Hash in Bucket 5
	.long	199157549                       ; Hash in Bucket 6
	.long	1126173133                      ; Hash in Bucket 7
	.long	-225956642                      ; Hash in Bucket 7
	.long	103860468                       ; Hash in Bucket 10
	.long	-1576193774                     ; Hash in Bucket 10
	.long	-481979263                      ; Hash in Bucket 10
	.long	-722114183                      ; Hash in Bucket 11
	.long	-25636205                       ; Hash in Bucket 12
.set Lset17, LNames7-Lnames_begin       ; Offset in Bucket 1
	.long	Lset17
.set Lset18, LNames5-Lnames_begin       ; Offset in Bucket 2
	.long	Lset18
.set Lset19, LNames12-Lnames_begin      ; Offset in Bucket 2
	.long	Lset19
.set Lset20, LNames4-Lnames_begin       ; Offset in Bucket 2
	.long	Lset20
.set Lset21, LNames0-Lnames_begin       ; Offset in Bucket 5
	.long	Lset21
.set Lset22, LNames2-Lnames_begin       ; Offset in Bucket 6
	.long	Lset22
.set Lset23, LNames11-Lnames_begin      ; Offset in Bucket 7
	.long	Lset23
.set Lset24, LNames8-Lnames_begin       ; Offset in Bucket 7
	.long	Lset24
.set Lset25, LNames10-Lnames_begin      ; Offset in Bucket 10
	.long	Lset25
.set Lset26, LNames3-Lnames_begin       ; Offset in Bucket 10
	.long	Lset26
.set Lset27, LNames6-Lnames_begin       ; Offset in Bucket 10
	.long	Lset27
.set Lset28, LNames9-Lnames_begin       ; Offset in Bucket 11
	.long	Lset28
.set Lset29, LNames1-Lnames_begin       ; Offset in Bucket 12
	.long	Lset29
LNames7:
	.long	117                             ; banner
	.long	1                               ; Num DIEs
	.long	217
	.long	0
LNames5:
	.long	86                              ; SockAddr.set_ip
	.long	1                               ; Num DIEs
	.long	167
	.long	0
LNames12:
	.long	187                             ; main
	.long	1                               ; Num DIEs
	.long	342
	.long	0
LNames4:
	.long	68                              ; SockAddr.set_port
	.long	1                               ; Num DIEs
	.long	142
	.long	0
LNames0:
	.long	34                              ; log
	.long	1                               ; Num DIEs
	.long	42
	.long	0
LNames2:
	.long	47                              ; log_ts
	.long	1                               ; Num DIEs
	.long	92
	.long	0
LNames11:
	.long	174                             ; Server.clean
	.long	1                               ; Num DIEs
	.long	317
	.long	0
LNames8:
	.long	124                             ; Server.init
	.long	1                               ; Num DIEs
	.long	242
	.long	0
LNames10:
	.long	153                             ; Server.handle_client
	.long	1                               ; Num DIEs
	.long	292
	.long	0
LNames3:
	.long	54                              ; SockAddr.init
	.long	1                               ; Num DIEs
	.long	117
	.long	0
LNames6:
	.long	102                             ; SockAddr.clean
	.long	1                               ; Num DIEs
	.long	192
	.long	0
LNames9:
	.long	136                             ; Server.set_reuse
	.long	1                               ; Num DIEs
	.long	267
	.long	0
LNames1:
	.long	38                              ; get_time
	.long	1                               ; Num DIEs
	.long	67
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

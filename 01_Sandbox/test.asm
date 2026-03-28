; Atari 2600 - DASM header template
cpu 6507
include "vcs.h"

; ROM origin (uncomment appropriate size)
; org $F800  ; 2K ROM
org $F000   ; 4K ROM (common)
; org $E000  ; 8K ROM
; org $8000  ; 16K ROM (banked)

; ----- reset / init -----
reset:
    sei
    cld
    ldx #$FF
    txs
    jmp Start

Start:
    ; game init / main loop placeholder
MainLoop:
    lda #0
    sta WSYNC
    jmp MainLoop

; ----- vectors -----
nmi:
    rti

irq:
    rti

org $FFFA
    .word nmi      ; NMI vector
    .word reset    ; RESET vector
    .word irq      ; IRQ/BRK vector
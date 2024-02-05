;-- SCREEN 0 ---------------------------
; Coloca o VDP no modo SCREEN 0 
; Autor: Wilson "Barney" Pilon
;        Janeiro, 2024
;---------------------------------------

include msx.asm         ;Sistema MSX

cseg                    ;Codigo
public Screen0
extrn BIOS

Screen0:
    ld a,1
    ld (FORCLR),a
    ld a,15
    ld (BAKCLR),a
    ld a,40
    ld (LINLEN),a
    ld ix,INITXT
    call BIOS
    ret

dseg                    ;Dados

end

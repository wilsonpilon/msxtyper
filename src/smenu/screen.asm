;-- SCREEN IV --------------------------
; Coloca o VDP no modo SCREEN 1 e o 
;   sistema em SCREEN 2
; Autor: Wilson "Barney" Pilon
;        Abril, 2023
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

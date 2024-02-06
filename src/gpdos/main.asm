;-- GuiaProg ---------------------------
; Rotinas em Assembly para MSX
; Autor: Eduardo A.Barbosa
;       1990
; Adaptacao MSX-DOS: Wilson Pilon
;       Janeiro, 2024
; Formato N80/LK80
;---------------------------------------
include msx.asm         ;Sistema MSX
.relab

cseg                    ;Codigo
public  MSXVERSION
extrn   BIOS
extrn   MSXVER
;-- Laco Principal ---------------------
GPDOS:
    call MSXVER
    ld a,(MSXVERSION)
    add a,48d
    ld e,a
    ld c,02h
    call DOS
    jp 0



dseg                    ;Dados
    PROGRAMA:       db "Guia do Programador\0"
    MSXVERSION:     db 0
end

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

;-- Laco Principal ---------------------
Menu:
    ld a,(#d2)
    jp 0


dseg                    ;Dados
    Programa:     db "Guia do Programador\0"
end

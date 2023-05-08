;-- MENU -------------------------------
; Menu MSX, no modo MIX SCREEN 1 e 2
; Autor: Wilson "Barney" Pilon
;        Abril, 2023
; Formato N80/LK80
;---------------------------------------

include msx.asm         ;Sistema MSX

cseg                    ;Codigo
extrn Print             ;Impressao de zString via BIOS
extrn Screen0           ;Inicializa o modo Screen 0
extrn BIOS              ;Chamada da BIOS via MSX-DOS
extrn LDAlfabeto        ;Carrega fonte na VRAM

;-- Laco Principal ---------------------
Menu:
    call Screen0
    call LDAlfabeto
    ld h,1
    ld l,2
    ld ix,Posit
    call BIOS
    ld hl,Hello
    call Print
    ld ix,KILBUF
    call BIOS
    ld ix,CHGET
    call BIOS
    jp 0
dseg                    ;Dados
    Hello:      db 10,"ABC -> Hello!\0"

end

;-- MENU -------------------------------
; Menu MSX, no modo MIX SCREEN 1 e 2
; Autor: Wilson "Barney" Pilon
;        Abril, 2023
; Formato N80/LK80
;---------------------------------------
include msx.asm         ;Sistema MSX
.relab

cseg                    ;Codigo
extrn Print             ;Impressao de zString via BIOS
extrn Screen0           ;Inicializa o modo Screen 0
extrn BIOS              ;Chamada da BIOS via MSX-DOS
extrn LDAlfabeto        ;Carrega fonte na VRAM
extrn Write_Hex         ;Imprime em Hexadecimal
extrn Write_Decimal     ;Imprime em Decimal
extrn GOTOXY            ;Posicona o cursor
extrn ClearScreen       ;Limpa a tela
extrn WaitKey           ;Aguarda Tecla
extrn LastKey           ;Byte da ultima tecla pressionada

;-- Laco Principal ---------------------
Menu:
    call Screen0
    call LDAlfabeto
    ld d,15
    ld e,6
    call GOTOXY
    ld hl,Hello
    call Print

    ld d,3Fh
    call Write_Hex

    ld hl,1234
    call Write_Decimal
    call LastKey
    call ClearScreen
    jp 0
dseg                    ;Dados
    Banner:     db "MSX - Menu\0"
end

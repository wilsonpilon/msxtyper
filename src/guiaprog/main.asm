;-- GuiaProg ---------------------------
; Janelas, no modo SCREEN 0
; Autor: Wilson "Barney" Pilon
;        Janeiro, 2024
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
    ld hl,Banner
    call Print

ld a,#0
ld hl,#002d
call BIOS
ld hl,Banner
ld (hl),a

    ld d,10
    ld e,10
    call GOTOXY
    ld hl,Banner
    call Print



    call LastKey
    call ClearScreen
    jp 0
dseg                    ;Dados
    Banner:     db "MSX - Menu\0"
end

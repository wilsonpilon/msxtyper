;-- Chamadas e variaves do sistema MSX

;-- Chamadas do MSX-DOS
CONOUT: equ 002h        ;Imprime caracter
DOS:    equ 005h        ;Chama a BDOS

;-- Chamadas do MSX-BIOS
CALSLT: equ 01Ch        ;Chamada interslots
CLS:    equ 0C3h        ;Limpa a tela
POSIT:  equ 0C6h        ;Posiciona o caracter na tela 
CHPUT:  equ 0A2h        ;Imprime caracter na tela
CHGET:  equ 09Fh        ;Aguarada o pressionamento de tecla
INITXT: equ 06Ch        ;Inicia o modo SCREEN 0
INIT32: equ 06Fh        ;Inicia o modo SCREEN 1
INIGRP: equ 072h        ;Inicia o modo SCREEN 2
SETGRP: equ 07Eh        ;Seta o VDP no modo SCREEN 2
KILBUF: equ 156h        ;Limpa o buffer do teclado
LDIRVM: equ 05Ch        ;Move dados da RAM para VRAM
LDIRMV: equ 059h        ;Move dados da VRAM para RAM
ERAFNK: equ 0CCh        ;Oculta teclas de funcao

;-- Chamadas do MSX-BASIC

;-- Variaveis do MSX-BIOS
EXPTBL: equ 0FCC1h      ;Tabela de Slots
FORCLR: equ 0F3E9h      ;Cor de frente
BAKCLR: equ 0F3EAh      ;Cor de fundo
BDRCLR: equ 0F3EBh      ;Cor da borda
LINLEN: equ 0F3B0h      ;Largura da tela em modo texto
LIN40:  equ 0F3AEh      ;Largura da tela em modo Screen 0
LIN32:  equ 0F3AFh      ;Largura da tela em modo Screen 1
TXTNAM:	equ 0F3B3h		;Tabela de Nomes na VRAM Screen 0
TXTCGP:	equ 0F3B7h		;Tabela de Padroes na VRAM Screen 0
GRPNAM:	equ 0F3C7h		;Tabela de Nomes VRAM Screen 2
GRPCOL:	equ 0F3C9h		;Tabela de Cores VRAM Screen 2


;-- Constantes do MSX
BLACK:      equ 1
GREEN:      equ 2
LGREEN:     equ 3
DBLUE:      equ 4
BLUE:       equ 5
DRED:       equ 6
CYAN:       equ 7
RED:        equ 8
LRED:       equ 9
DYELLOW:    equ 10
YELLOW:     equ 11
DGREEN:     equ 12
GRAY:       equ 14
WHITE:      equ 15

CR:         equ 13
LF:         equ 10

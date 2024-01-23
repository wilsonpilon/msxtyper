; ** Rotina de Inversao de caracteres
versao:	equ #2d
linlen:	equ #f3b0
valtyp:	equ #f663
argusr: equ #f7f8
txtcgp:	equ #f3b7



	org #d000 - 7
	db #fe
	dw MAIN
	dw QUIT
	dw MAIN

MAIN:
	ld a,(valtyp)		;verfica parametro
	cp #03				;string? se nao for
	ret nz				; volta ao BASIC
	ld ix,(argusr)		;ponteiro para string
	ld hl,(txtcgp)		;tabela de padroes
	ld a,(versao)		;versao do MSX
	or a 				;zero? MSX1
	jr z,INICIO1		; sim
	ld a,(linlen)		;MSX2, 80 colunas?
	cp 41
	jr c,INICIO1		; nao
	add hl,hl			; sim, calcula tabela padrao
INICIO1:
	di
	push hl
	ld de,#e0 * 8			;calcula endereco da
	add hl,de				; letra 
	ex de,hl			; salva
	ld c,#e0
	ld b,(ix+#00)		;qtd caracteres da string
	ld l,(ix+#01)		;endereco da string
	ld h,(ix+#02)
	push hl
	pop ix
	pop hl
LOOP1:
	push bc
	push hl
	push de
	ld de,#0008			;bytes de cada caracter
	ld b,(ix+#00)		;caracter a inverter
LOOP2:
	add hl,de				;calcula endereco do
	djnz LOOP2			;caractere
	pop de
	ld b,#08				;prepara modificacao
LOOP3:
	call RDVRAM			;le o byte original
	cpl					;inverte
	ex de,hl			;transfere ao destino
	call WTVRAM			;escreve o novo byte
	ex de,hl
	inc hl
	inc de
	djnz LOOP3
	pop hl
	pop bc
	ld (ix+#00),c		;modifica string
	inc c
	inc ix				;proximo caractere
	djnz LOOP1			;repete ate o fim da string
	ei
	ret

; ** Rotinas de Video
; Leitura VRAM
RDVRAM:
	ld a,(versao)		;versao do MSX
	or a				;MSX 1?
	jr z,RDVRAM1		; sim
	xor a				; nao
	out (#99),a			; inicia VDP MSX 2
	ld a,#8e
	out (#99),a
RDVRAM1:
	ld a,l				;informa endereco
	out (#99),a			;VRAM para ler
	ld a,h				;o dado
	and #3f
	out (#99),a
	ex (sp),hl			;sincronizacao
	ex (sp),hl			;por delay
	in a,(#98)			;le dado na VRAM
	ret

; ** Rotinas de Video
; Leitura VRAM
WTVRAM:
	push af
	ld a,(versao)		;Versao do MSX
	or a				;MSX 1?
	jr z,WTVRAM1		; sim
	xor a				; nao
	out (#99),a			; inicia VDP MSX 2
	ld a,#8e
	out (#99),a
WTVRAM1:
	ld a,l				;informa endereco
	out (#99),a			;VRAM para gravar
	ld a,h				;o dado
	and #3f
	or #40
	out (#99),a
	ex (sp),hl			;sincronizacao
	ex (sp),hl			;por delay
	pop af
	out (#98),a			;grava o dado na VRAM
	ret


QUIT: equ $
end
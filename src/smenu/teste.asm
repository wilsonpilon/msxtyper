
	org 0e000h - 7
	db 0FEh
	dw MAIN
	dw QUIT
	dw MAIN

MAIN:
	di
	ld hl,(0F7F8h)
LOOP1:
	ld a,00001111b
	out (0ABh),a
	ld b,0ffh
LOOP2:
	djnz LOOP2
	ld a,00001110b
	out (0ABh),a
	ld b,0FFh
LOOP3:
	djnz LOOP3
	dec hl
	ld a,h
	or l
	jr nz,LOOP1
	ei
	ret
QUIT:
end
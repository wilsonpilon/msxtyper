include msx.asm
.relab

cseg
public	BIOS
public	MSXVER
extrn	MSXVERSION
BIOS:
    ld iy,(EXPTBL - 1)
    call CALSLT
    ret

MSXVER:
	push hl
	push de
	push bc
	push af
	ld a,0
    ld hl,02dh
    call RDSLT
    ld (MSXVERSION),a
    pop af
    pop bc
    pop de
    pop hl
    ret

dseg
end

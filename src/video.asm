include msx.asm
cseg
public Print
extrn BIOS
Print:
    ld a,(hl)
    or a
    ret z
    push hl
    ld ix,CHPUT
    call BIOS
    pop hl
    inc hl
    jp Print
dseg
end

include msx.asm

cseg
public BIOS
BIOS:
    ld iy,(EXPTBL - 1)
    call CALSLT
    ret
dseg
end
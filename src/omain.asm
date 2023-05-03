include msx.asm
cseg
extrn Print
extrn CharTable
extrn BIOS
Menu:
    ld ix,Posit
    ld h,10
    ld l,20
    call BIOS
    ld hl,Hello
    call Print
    ld ix,KILBUF
    call BIOS
    ld ix,CHGET
    call BIOS
    call CharTable
    ret
dseg
Hello:      db 10,"Hello!\0"
end

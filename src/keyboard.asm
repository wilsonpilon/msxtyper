include msx.asm
.relab

cseg
public WaitKey
public LastKey
extrn BIOS
;-------------------------------------------------------------------------;
; Esta procedure limpa o buffer e aguarda uma tecla                       ;
;                                                                         ;
;      LastKey: Armazena tecla pressionada                                ;
;-------------------------------------------------------------------------;
WaitKey:
    push af
    push hl
    ld ix,KILBUF
    call BIOS
    ld ix,CHGET
    call BIOS
    pop hl
    pop af
    ret
dseg
LastKey:    db 0
end
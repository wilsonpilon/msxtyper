include msx.asm
.relab

cseg
public GOTOXY
extrn BIOS
;-------------------------------------------------------------------------;
; Esta procedure posiciona o cursor usando a BIOS                         ;
;                                                                         ;
;      D: Posicao X                                                       ;
;      E: Posicao Y                                                       ;
;                                                                         ;
;-------------------------------------------------------------------------;
GOTOXY:
        push hl
        ld l,e
        ld h,d
        ld ix,POSIT
        call BIOS
        pop hl
        ret

end
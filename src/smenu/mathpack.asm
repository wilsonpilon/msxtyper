.relab

cseg
public Divide_ByteByte
public Divide_WordWord
public Divide_WordByte
public Multiply_ByteByte
public Multiply_WordWord
public Multiply_WordByte
;-------------------------------------------------------------------------;
; Esta rotina Divideide um numero de 8 bits por outro de 8 bits              ;
;                                                                         ;
;        C: O numerador                                                   ;
;        D: O denominador                                                 ;
;                                                                         ;
;  Retorna: A com o resto                                                 ;
;           C com o resultado                                             ;
;-------------------------------------------------------------------------;
Divide_ByteByte:
        ld b,8
        xor a
.loop:
        sla c
        rla
        cp d
        jr c,$+4
        inc c
        sub d
        djnz .loop
        ret
        
;-------------------------------------------------------------------------;
; Esta rotina Divideide um numero de 16 bits por outro de 8 bits             ;
;                                                                         ;
;       HL: O word que contem o numerador                                 ;
;        C: O denomionador                                                ;
;                                                                         ;
;  Retorna: A com o resto                                                 ;
;           HL resultado                                                  ;
;-------------------------------------------------------------------------;
Divide_WordByte:
        ld b,16             
        xor a               
.loop:
        add hl,hl           
        rla                 
        cp c                
        jr c,$+4            
        inc l               
        sub c               
        djnz .loop
        ret

;-------------------------------------------------------------------------;
; Esta rotina Divideide um numero de 16 bits por outro de 16 bits            ;
;                                                                         ;
;       DE: O word que contem o numerador                                 ;
;       BC: O denomionador                                                ;
;                                                                         ;
;  Retorna: HL com o resto                                                ;
;           AC resultado                                                  ;
;-------------------------------------------------------------------------;
Divide_WordWord:
        ld hl,0
        ld b,16
.loop:
        db 0CBh,030h            ;sll c
        rla
        adc hl,hl
        sbc hl,de
        jr nc,$+4
        add hl,de
        dec c
        djnz .loop
        ret

;-------------------------------------------------------------------------;
; Esta rotina multiplica um numero de 8 bits por outro de 8 bits          ;
;                                                                         ;
;        H: O multiplicador                                               ;
;        D: O multiplicando                                               ;
;                                                                         ;
;  Retorna: HL produto                                                    ;
;-------------------------------------------------------------------------;
Multiply_ByteByte:
        ld l,0
        ld d,l
        sla h
        jr nc,$+3
        ld l,e
        ld b,7
.loop:
        add hl,hl
        jr nc,$+3
        add hl,de
        djnz .loop
        ret
        
;-------------------------------------------------------------------------;
; Esta rotina multiplica um numero de 16 bits por outro de 8 bits         ;
;                                                                         ;
;       DE: O multiplicador                                               ;
;        A: O multiplicando                                               ;
;                                                                         ;
;  Retorna: HL parte baixa do produto                                     ;
;             A parte alta do produto (O resultado fica em 24 bits)        ;
;-------------------------------------------------------------------------;
Multiply_WordByte:
        ld c,0
        ld h,c
        ld l,h
        add a,a
        jr nc,$+4
        ld h,d
        ld l,e
        ld b,7
.loop:
        add hl,hl
        rla
        jr nc,$+4
        add hl,de
        add a,c
        djnz .loop
        ret

;-------------------------------------------------------------------------;
; Esta rotina multiplica um numero de 16 bits por outro de 16 bits        ;
;                                                                         ;
;       BC: O multiplicador                                               ;
;       DE: O multiplicando                                               ;
;                                                                         ;
;  Retorna: DE parte baixa do produto                                     ;
;            HL parte alta do produto (O resultado fica em 24 bits)        ;
;-------------------------------------------------------------------------;
Multiply_WordWord:
        ld hl,0
        sla e
        rl d
        jr nc,$+4
        ld h,b
        ld l,c
        ld a,15
.loop:
        add hl,hl
        rl e
        rl d
        jr nc,$+6
        add hl,bc
        jr nc,$+3
        dec a
        djnz .loop
        ret

end
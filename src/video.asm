include msx.asm
.relab
cseg
public Print
public Write_Hex
public Write_HexDig
public Write_Char
public Write_Decimal
public Send_CR
extrn BIOS
extrn Divide_WordByte
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

;-------------------------------------------------------------------------;
; Esta procedure escreve uma word, usigned em notacao decimal             ;
;                                                                         ;
;      HL: O word a ser convertido para decimal                           ;
;                                                                         ;
;-------------------------------------------------------------------------;
Write_Decimal:
        ld c,10d                ;Divisao por 10
        ld b,0                  ;Conta numero de digitos da pilha
_nozwd: push bc                 ;Salva contador
        call Divide_WordByte    ;Divide HL por C
        pop bc                  ;Recupera contador
        push af                 ;Salva resto na pilha
        inc b                   ;Incrementa controle de digitos
        ld a,0                  ;HL = 0? se nao divide novamente por 10
        cp h
        jr nz,_nozwd
        ld a,0
        cp l
        jr nz,_nozwd
.loop:  pop af                  ;Recupera digito da pilha
        ld d,a                  ;Prepara para impressao
        push bc                 ;Salva contador
        call Write_HexDig       ;Imprime digito (reaproveita WRT_HD)
        pop bc                  ;Restaura contador
        djnz .loop              ;Continua se houver mais digitos
        ret


;-------------------------------------------------------------------------;
; Esta procedure converte o byte no registrador DL para hexa e imprime    ;
; os dois digitos na posicao corrente do cursor                           ;
;                                                                         ;
;       D: Byte a ser convertido para hexa.                               ;
;                                                                         ;
;     Usa: Write_HexDig                                                   ;
;-------------------------------------------------------------------------;
Write_Hex:
    ld a,d                  ;Faz uma copia do byte
    srl a                   ;Pega o nibble superior
    srl a
    srl a
    srl a
    push de
    ld d,a
    call Write_HexDig       ;Imprime o primeiro digito
    pop de
    ld a,d                  ;Pega o nibble inferior
    and 0Fh                 ;Remove o nibble superior
    push de
    ld d,a
    call Write_HexDig       ;Imprime o segundo digito
    pop de
    ret

;-------------------------------------------------------------------------;
; Esta rotina converte os quatro bits mais baixos de D num digito hexa    ;
; e imprime na tela                                                       ;
;                                                                         ;
;       D: Os quatro digitos inferiores contendo o numero em hexa         ;
;                                                                         ;
;     Usa: Write_Char                                                     ;
;                                                                         ;
;-------------------------------------------------------------------------;
Write_HexDig:
    push de                 ;Salva os registradores usados
    ld a,d                  ;Usa registro A para calculos
    cp 10                   ;O nibble e <10?
    jp p,.letra             ;Nao, converte em letra
    add a,"0"               ;Sim, converte em numero
    jp .digito              ;Agora imprime o caractere
.letra:
    add a,"A"-10            ;Converte para letra hexa
.digito:
    ld d,a                  ;WRT_CHR usa D
    call Write_Char         ;Imprime o caractere na tela
    pop de                  ;Recupera os registradores usados
    ret

;-------------------------------------------------------------------------;
; Esta rotina imprime um caractere na tela usando uma funcao do MSX-DOS   ;
;                                                                         ;
;       D: O byte do caractere a ser impresso                             ;
;                                                                         ;
;-------------------------------------------------------------------------;
Write_Char:
    push de                 ;Salva os registradores usados
    ld c,02h                ;Chamada para impressao de caractere
    ld e,d                  ;Caractere em E
    call DOS              ;Imprime o caractere em E
    pop de                  ;Recupera os registradores usados
    ret                     ;E retorna

;-------------------------------------------------------------------------;
; Esta rotina apenas envia um retorno de carro e um avanco de linha para  ;
; a tela, usando a chamada 02 do BDOS, rolando a tela como no MSX-DOS     ;
;                                                                         ;
;-------------------------------------------------------------------------;
Send_CR:
        push af                 ;Salva Registradores
        push bc
        push de
        push hl
        ld c,CONOUT             ;
        ld e,CR                 ;Imprime CD
        call DOS                ;
        ld c,CONOUT             ;
        ld e,LF                 ;Imprime LF
        call DOS                ;
        pop hl                  ;Recupera Registradores
        pop de
        pop bc
        pop af
        ret

dseg
end

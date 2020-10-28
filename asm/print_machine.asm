        org 40000

        ld d, 0         ; Initial YPOS

scroll  push de
        call 3435       ; CLS
        ld a, 2
        call 5633       ; CHAN-OPEN 2

        ld a, 16        ; INK
        rst 16
        ld a, ink
        rst 16

        ld a, 17        ; PAPER
        rst 16
        ld a, paper
        rst 16

        pop de
        ld a, 22        ; AT
        rst 16
        ld a, d
        rst $10
        ld a, xpos
        rst 16

        ld hl, msg
        ld b, len
loop    ld a, (hl)
        rst 16
        inc hl
        djnz loop
        
        ld bc, $1fff
pause   dec bc
        ld a, b
        or c
        jr nz, pause

        inc d
        ld a, d
        cp 21
        jp nz, scroll
        ret

msg     defb    'MACHINE CODE!'
len     equ     $-msg
xpos    equ     10
ypos    equ     0
ink     equ     1
paper   equ     6 
 
        end 40000
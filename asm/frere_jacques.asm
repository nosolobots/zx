        org 40000

        ld b, 0
        ld ix, notes
loop    ld d, (ix)
        inc ix
        inc b
        ld e, (ix)
        inc ix
        inc b
        ld h, (ix)
        inc ix
        inc b
        ld l, (ix)
        inc ix
        inc b
        push bc
        push ix
        call $03b5      ; call BEEPER
        pop ix
        pop bc
        ld a, b
        cp numb
        jr nz, loop

        ret

notes   defb $1, $5, $6, $6a, $1, $25, $5, $b3, $0, $9c, $5, $60, $0, $93, $5, $b3, $1, $5, $6, $6a
        defb $1, $5, $6, $6a, $1, $25, $5, $b3, $0, $9c, $5, $60, $0, $93, $5, $b3, $1, $5, $6, $6a
        defb $1, $37, $5, $60, $1, $5d, $4, $c6, $3, $10, $4, $3d
        defb $1, $37, $5, $60, $1, $5d, $4, $c6, $3, $10, $4, $3d
numb    equ $-notes

        end 40000


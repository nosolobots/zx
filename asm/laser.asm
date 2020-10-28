        org 40000

        ld hl, 5
        ld de, 5
        ld b, 160
loop    push  hl
        push de
        push bc
        call $03b5      ; BEEPER
        pop bc
        pop de
        pop hl
        inc hl
        djnz loop

        ret

        end 40000
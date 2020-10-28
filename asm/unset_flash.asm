        org 40000

        ld hl, 5800h
        ld bc, 768

loop    res 7, (hl)
        inc hl
        dec bc
        ld a, c
        or b
        jr nz, loop
        ret

        end 40000





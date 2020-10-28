        org 40000

        call 0d6bh      ; CLS
        ld a, 2
        call 1601h      ; CHAN-OPEN 2

        ld a, 32        ; first printable character
loop    push af
        rst 10h         ; PRINT-CH (A)
        pop af
        inc a
        cp 165
        jr nz, loop
        ret

        end 40000
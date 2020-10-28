        org 40000

        call 0d6bh      ; CLS
        ld a, 2
        call 1601h      ; CHAN-OPEN 2
        ld bc, 704
loop    ld a, 42        ; *
        rst 10h         ; PRT-CH
        dec bc
        ld a, b
        or c 
        jr nz, loop
        ret

        end 40000

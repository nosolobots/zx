org 40000

    ld bc, 6143
    ld hl, 16384
    ld (hl), 255
    ld de, 16385
    ldir
    ld bc, 767
    ld (hl), 2
    ldir
    ret

end 40000
        
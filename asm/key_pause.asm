        org 40000

        ; print message
        ld a, 2         ; upper screen
        call $1601      ; open channel
        ld de, string   ; load string address
        ld bc, len      ; load length of the string
        call $203c      ; call PR-STRING

        ; check key press
        ld bc, $7ffe    ; SPACE to B port
pause   in a, (c)       ; read port
        and 1           ; check SPACE key
        jp nz, pause
        ret

string  defb 22,10,2,'Pulsa <SPACE> para terminar'
len     equ $-string

        end 40000

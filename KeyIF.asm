.8086
.model tiny
code SEGMENT
    org 100h
    START:
        mov dx, offset fMessage
        call PrintMessage
        PressKey:
                mov ah, 10h
                int 16h
                cmp al,'a'
                jz K_pressed ; jump if zero

                mov dx, offset Fmess
                call PrintMessage

        jmp PressKey
        

        K_Pressed:
                mov ah, 9h
                mov dx, offset message
                int 21h
                int 20h
                
        PrintMessage proc
                mov ah,9h
                int 21h
                ret
        PrintMessage endp

        fMessage db 'Press a key!',10,'$'
        message db 'You pressed A key!',10,'$'
       ;newline db 10,'$'
        Fmess db 'You pressed wrong key!',10,'$'
code ends
end START
.8086
.model tiny

code segment
    org 100h
    START:
        mov ah,9h
        mov dx, offset message
        int 21h
        int 20h
        message db 'Hello world!$'
code ends
end START
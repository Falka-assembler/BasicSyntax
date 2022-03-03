.8086
.model tiny

code SEGMENT
    org 100h
    START:
    mov ah,9   
    mov cx,5
Label_1:
    mov dx, offset message
    int 21h

    mov dx, offset newline
    int 21h

    loop Label_1
    ret
    message db 'Hello world!$'
    newline db 10,'$'

code ends
end START
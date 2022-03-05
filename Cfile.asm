.8086
.model tiny

code SEGMENT
    org 100h
    START:
    mov ah,3CH ;3Ch - create file
    mov cx,00; file attriute (default 0)
    mov dx, offset filename
    int 21h
    jc ErrorMessage ; jump if error
    Quit_Prog:
        mov ah,9h
        int 20h

    ErrorMessage:
        mov ah,9h
        mov dx, offset Mess_error
        int 21h
        jmp Quit_Prog

    Mess_error db 'Error creating file '
    filename db 'C:\temp\test.txt',0,'!$'
code ends
end START
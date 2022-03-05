.8086
.model tiny

code SEGMENT
    org 100h
    START:
    Quit_Prog:
        mov ah,9h
        int 20h

    Mess_error db 'Error opening file '
    filename db 'C:\temp\test.txt',0,'!$'
code ends
end START
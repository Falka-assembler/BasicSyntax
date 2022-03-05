.8086
.model tiny

code SEGMENT
    org 100h
    START:
    mov ax,3D00h ;3D - file operations/ 00 -  open for read
    mov dx, offset filename
    int 21h
    jc ErrorMessage ; if error jmp

    mov Handle, ax ; remembering file number
    mov bx, ax ; We need to write file number in bx to read file
    mov ah, 3Fh; 3F read file function
    mov cx, 0FDE8h; we will read 0FDE8h - 65000 bytes (in hex)
    ; ds:dx - point on buffer in memory
    mov dx, offset Buffer
    int 21h; - read file
    
    mov ah,3Eh; - close file
    ; file number need to be in bx. But bx changed 
    ; so we load file number in bx 
    mov bx, Handle
    int 21h; close file

    mov ah, 9h
    mov dx, offset Mess_ok
    int 21h
    Quit_Prog:
        mov ah,9h
        int 20h
    ErrorMessage:
        mov ah,9h
        mov dx, offset Mess_error
        int 21h
        jmp Quit_Prog
    
    Handle dw 0 ; 2 bytes for variable
    Mess_error db 'Error opening file '
    filename db 'C:\temp\test.txt',0,'!$'
    Mess_ok db 'File loaded!$'
    Buffer equ $
code ends
end START
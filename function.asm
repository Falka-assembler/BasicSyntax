.8086
.model tiny
code segment
    org 100h
    START:

    mov ah, 9h
    
    mov dx, offset pressMessage
    call PrintString
    call WaitPress

    mov dx, offset newline
    call PrintString

    mov dx, offset doneMessage
    call PrintString
    call WaitPress

    ret
    
    PrintString proc
            mov ah,9h
            int 21h
            ret
    PrintString endp

    WaitPress proc
            mov ah,10h
            int 16h
            ret
    WaitPress endp

    pressMessage db 'Press any key o continue!$'
    doneMessage db 'You pressed a key!$'
    newline db 10,'$'
    
code ends
end START
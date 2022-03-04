.8086
.model tiny
code SEGMENT
org 100h
Start:
    mov dx, offset helloMess
    call PrintText

    mov ah,10h
    int 16h
    cmp al,'a'
    jz First_Action
    cmp al,'b'
    jz Secound_Action

    mov dx, offset wrongButtonMessage
    call PrintText
    
    Quit_Prog:
        mov dx, offset newline
        call PrintText
        
        mov dx, offset pressKeyToExit
        call PrintText

        mov ah,10h
        int 16h

        mov ah,9h
        int 20h

    First_Action :
        mov cx,70
        mov ah,9h
        mov dx, offset AprintingMessage
        FLoopStart:
            call PrintText
        loop FLoopStart
        jmp Quit_Prog

    Secound_Action:
        mov cx,50
        mov dx, offset secoundMessage
        SLoop:
            call PrintText
        loop SLoop
        jmp Quit_Prog

    PrintText proc
        mov ah,9h
        int 21h
        ret
    PrintText endp


    helloMess db 'Press a or b',10,'$'
    AprintingMessage db 'A$'
    newline db 10,'$'
    secoundMessage db 'B$'
    wrongButtonMessage db 'Wrong button!$'
    pressKeyToExit db 'Press any key to exit$'
code ends
end Start
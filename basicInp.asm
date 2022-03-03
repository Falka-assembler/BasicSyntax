.8086
.model tiny
code segment
    org 100h
    START:
    mov ah,9h
    mov dx, offset message
    int 21h

    mov ah, 10h ;функция 10h
    int 16h ;вызываем прерывание 16h — сервис работы с клавиатурой BIOS
    
    mov ah,9h
    mov dx, offset newline
    int 21h
    mov dx, offset helloMes
    int 21h

    mov ah, 10h
    int 16h
    
    int 20h
    message db 'Press any key to continue$'
    newline db 10,'$'
    helloMes db 'Hello user!$'
code ends
end START
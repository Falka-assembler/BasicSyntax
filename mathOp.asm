.8086
.model tiny
code segment
    org 100h
    START:
    mov bh,10
    mov bl, 20

    add bh,bl ;bh - reciver

    mov al, 10
    sub al,7 ; al - reciver

    inc bl ; increasing bl on 1
    dec bl ; decreasing bl on 1

    ;mov ah, 9h
    ;mov dx, al
    ;int 21h
    int 20h
code ends
end START
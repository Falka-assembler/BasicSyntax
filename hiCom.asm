.8086
code SEGMENT para USE16 PUBLIC 'code'
    ASSUME CS:code, DS:code, SS:code, ES:code
    ORG 100h
    START:
    message db 'Hello World$'
    mov ah, 9h
    mov dx, offset message
    int 21h
    ret
code ends
end START
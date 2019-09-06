assume cs:code, ds:data

data segment
    db '1. file         '
    db '2. edit         '
    db '3. search       '
    db '4. view         '
    db '5. options      '
    db '6. help         '
data ends

code segment
start: mov ax, data
       mov ds, ax
       mov bx, 0
       mov cx, 6
    s: mov al, 3[bx]
       and al, 11011111b
       mov 3[bx], al
       add bx, 16
       loop s
    
    mov ax, 4c00h
    int 21h
code ends
end start

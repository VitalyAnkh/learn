
.model small
.stack 100h

.data
a db 09h
b db 02h
.code
mov ax,@data
mov ds,ax
mov al,a
mov bl,b
add al,bl
mov cl,al
int 21h
mov ah,4ch
int 3h
end

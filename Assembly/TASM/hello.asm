.model small
.stack 100h
.data
message db 'hello world'
.code
mov ax,@data
mov ds,ax
mov ah,9
mov dx,OFFSET message
int 21h
mov ah,4ch
int 21h
end

assume cs:code
code segment
  
  mov ax, 0fff0h
  mov ds, ax
  mov bx, 0

  mov dx, 0

  mov cx, 50

s: mov al, ds:[bx]
  mov ah, 0
  add dx, ax
  inc bx 
  loop s

  mov ax, 4c00h
  int 21h

code ends
end
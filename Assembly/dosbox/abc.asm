assume cs:code

code segment
  
  mov ax,3
  add ax,ax
  add ax,ax

  mov ax,4c00H
  int 21H
  
code ends

end
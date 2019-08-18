mov ax, 0xb800
mov ds, ax 
mov [0x00], word 'a'
mov [0x02], word 's'
mov [0x04], word 'm'
jmp $
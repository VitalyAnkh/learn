default rel

section .rodata
msg: db "Goodbye, Mars!", 0

section .text
global hello
hello:
    lea rax, [msg]
    ret

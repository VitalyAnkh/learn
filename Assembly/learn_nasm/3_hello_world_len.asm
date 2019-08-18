SECTION .data
msg db 'Hello, brave new world!', 0Ah

SECTION .text
global _start

_start:
    
    mov ebx, msg
    mov eax, ebx

next_char:
    cmp byte [eax], 0
    jz finished
    inc eax
    jmp next_char

finished:
    sub eax, ebx
    mov edx, eax
    mov ecx, msg
    mov ebx, 1
    mov eax, 4
    int 80h

    mov ebx, 0
    mov eax, 1
    int 80h
    
    mov edx, 13
    mov ecx, msg
    mov ebx, 1
    mov eax, 4
    int 80h
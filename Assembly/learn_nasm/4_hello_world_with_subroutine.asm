SECTION .data
msg db 'Hello, brave fdsaf fdsalfdsalj fdl;sa new world!', 0Ah

SECTION .text
global _start

_start:
    
    mov eax, msg 
    call strlen 
    
    mov edx, eax
    mov ecx, msg
    mov ebx, 1
    mov eax, 4
    int 80h

    mov ebx, 0
    mov eax, 1
    int 80h

strlen:
    push ebx
    mov ebx, eax

next_char:
    cmp byte [eax], 0
    jz finished
    inc eax
    jmp next_char

finished:
    sub eax, ebx
    pop ebx
    ret ;; without this `ret`, this code could als epass compiling and linking but will meet a coredump when running

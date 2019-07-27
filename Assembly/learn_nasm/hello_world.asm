; Hello World Program
;; Learn from asmtutor.com
;; Link with (64 bit systems require elf_i386 option): ld -m elf_i386 hello_world.o hello_world
;; Run with ./hello_world

SECTION .data
msg db 'Hello world!', 0Ah ;; assign msg variable with message string

SECTION .text
global _start

_start:
    mov edx, 13 ; number of bytes to write - one for each letter plus 0Ah (line feed character)
    mov ecx, msg ;; mov the memory address of our messgae string to ecx 
    mov ebx, 1 ;; write to the stdout file
    int 80h
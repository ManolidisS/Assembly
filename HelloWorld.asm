; For 64-bit x86 running Linux Kernel

global _start

section .text
_start:
    mov eax, 1
    mov ebx, 1
    mov ecx, message
    mov edx, messagelength
    int 128
    
    mov eax, 1
    mov ebx, 0
    int 128
    
section .data
    message db "Hello, world!",10
    messagelength equ $-message

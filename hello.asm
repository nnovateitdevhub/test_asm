section .data
    msg db "Hello, world", 0

section .text
    global _start

_start:
    ; write to stdout
    mov eax, 4
    mov ebx, 1
    mov ecx, msg
    mov edx, 13
    int 0x80

    ; exit
    mov eax, 1
    xor ebx, ebx
    int 0x80
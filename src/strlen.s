SECTION .data
msg:    db "Bonjour je suis pilote, il est l'heure", 10

SECTION .text
global  _start
_start:
    mov rbx, msg ; Move the address of the message in rbx
    mov rdi, rbx ; Move the address in rbx into rdi, they now point to the same section in memory

strlen:
    cmp byte [rdi], 0
    jz  finished
    inc rdi
    jmp strlen

finished:
    sub rdi, rbx

    mov rdx,rdi
    mov rax, 1
    mov rdi, 1
    mov rsi, msg
    syscall

    mov rax, 60
    mov rdi, 1
    syscall



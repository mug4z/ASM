%include '../Lib/miniLib.s'

SECTION .text
global _start

_start:
    mov rcx, 0
nextNumber:
    inc rcx
    mov rax, rcx
    add rax, 48
    push rax
    mov rax, rsp
    call printLF

    pop rax
    cmp rcx,10
    jne nextNumber

    call quit


%include '../Lib/miniLib.s'

SECTION .bss
;variableName1:      RESB    1       ; reserve space for 1 byte
;variableName2:      RESW    1       ; reserve space for 1 word
;variableName3:      RESD    1       ; reserve space for 1 double word
;variableName4:      RESQ    1       ; reserve space for 1 double precision float (quad word)
;variableName5:      REST    1       ; reserve space for 1 extended precision float
userInput resb 255

SECTION .data
msg1 db 'Please enter your name: ',0
msg2 db 'Hello, ',0

SECTION .text
global _start

_start:
mov rax, msg1
call print

; Read
mov rax, 0
mov rdi, 0
mov rsi, userInput
mov rdx, 255
syscall

mov rax, msg2
call print

mov rax, userInput 
call print

call quit


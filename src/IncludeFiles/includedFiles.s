%include 'miniLib.s'

SECTION .data
msg:    db "Bonjour", 10
msg1:   db "SALUT", 10

SECTION .text

; The programm will print something odd like 2 times the msg1
global _start
_start:
	mov rax, msg
	call print

	mov rax, msg1
	call print

	call quit




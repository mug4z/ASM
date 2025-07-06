%include '../Lib/miniLib.s'

SECTION .data
msg:    db "Bonjour", 10,0 ; the zero represent the null terminating byte in order correctly setup the string
msg1:   db "SALUT", 10,0

SECTION .text

; The programm will print something odd like 2 times the msg1
global _start
_start:
	mov rax, msg
	call print

	mov rax, msg1
	call print

	call quit




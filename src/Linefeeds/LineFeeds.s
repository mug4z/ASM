%include '../Lib/miniLib.s'

SECTION .data
msg:    db "Bonjour",0 ; we remove the \n character (new line , LF)
msg1:   db "SALUT", 0 
newLine: db 0AH

SECTION .text

; The programm will print something odd like 2 times the msg1
global _start
_start:
	mov r10, msg
	mov rax, msg
	call printLF

	mov rax, msg1
	call printLF

	call quit




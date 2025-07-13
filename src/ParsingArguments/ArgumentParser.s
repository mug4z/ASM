%include '../Lib/miniLib.s'

SECTION .text

global _start
_start:
	pop rcx

nextArg:
	cmp rcx, 0
	jz noMoreArgs
	pop rax
	call printLF
	dec rcx
	jmp nextArg

noMoreArgs:
	call quit

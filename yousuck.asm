bits 64

section .data
	msg1 db "You suck!", 0x0A
	msg1len equ $ - msg1
	msg2 db "Fuck you!", 0x0A
	msg2len equ $ - msg2
	msg3 db "LOL you're trash!", 0x0A
	msg3len equ $ - msg3

section .text
	global _start

_start:
	mov rax, 1        ; sys_write
	mov rdi, 1        ; stdout
	mov rsi, msg1     ; buf
	mov rdx, msg1len  ; count
	syscall

	mov rax, 1        ; sys_write
	mov rdi, 1        ; stdout
	mov rsi, msg2     ; buf
	mov rdx, msg2len  ; count
	syscall

	mov rax, 1        ; sys_write
	mov rdi, 1        ; stdout
	mov rsi, msg3     ; buf
	mov rdx, msg3len  ; count
	syscall

	jmp _start

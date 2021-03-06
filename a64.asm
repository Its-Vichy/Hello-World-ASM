bits 64

section .data
    message db 'Hello World !', 10
section .text
    global _start
        _start:
            ; Print message
            mov rax, 1
            mov rdi, 1
            mov rsi, message
            mov rdx, 13 + 1
            syscall

	    ; Quit program
            mov rax, 60
            mov rdi, 0
            syscall

<h1 align="center"> Hello World ASM </h1>

## x64 |  64 bits
```asm
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
```

#

## x86 |  32 bits
```asm
bits 32

section .data
    message db 'Hello World', 10

section .text
    global _start
    _start:
 	; Print message
        mov eax, 4
        mov ebx, 1
        mov ecx, message
        mov rdx, 13 + 1
        int 0x80

	; Quit program
        mov eax, 1
        mov ebx, 0
        int 0x80
```

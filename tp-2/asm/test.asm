section .data
    nb db 48

section .text
    global _start

_start:
    loop :
    mov rax, 1      ;syscall write
    mov rdi, 1      ;stdout

    inc byte [nb]
    mov rsi, nb
    mov rdx, 1
    syscall

    cmp byte [nb] , 57
    jne loop

    mov	eax,1       ;syscall exit
    int	0x80 
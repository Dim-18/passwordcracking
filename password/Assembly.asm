section .data
    prompt db "Enter your password: ", 0
    newline db 10, 0
    password db 30 dup(0)
    predicted_pass db 30 dup(0)

section .bss
    input resb 1

section .text
    global _start

_start:
    mov rsi, prompt
    call print_string

    mov rdi, password
    call read_password

    call guess_password

    mov rsi, predicted_pass
    call print_string

    mov rax, 60
    xor rdi, rdi
    syscall

print_string:
    mov rax, 0x1
    mov rdi, 0x1
    mov rdx, 100
    syscall
    ret

read_password:
    xor rsi, rsi
    xor rdx, rdx
.read_loop:
    mov rax, 0
    syscall
    cmp byte [rdi], 10
    je .done
    inc rdi
    jmp .read_loop
.done:
    ret

guess_password:
    mov rax, 201
    syscall

.guess_loop:
    mov rdi, predicted_pass
    ret

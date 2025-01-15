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
    ; print prompt
    mov rsi, prompt
    call print_string

    ; read password from user
    mov rdi, password
    call read_password

    ; generate password guess
    call guess_password

    ; print guessed password
    mov rsi, predicted_pass
    call print_string

    ; exit program
    mov rax, 60
    xor rdi, rdi
    syscall

; function to print string
print_string:
    mov rax, 0x1
    mov rdi, 0x1
    mov rdx, 100
    syscall
    ret

; function to read password
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

; function to guess password
guess_password:
    ; srand using time (using system time)
    mov rax, 201
    syscall

    ; generate random numbers for password guessing
    ; print guessed password until correct
.guess_loop:
    mov rdi, predicted_pass
    ; print password (generating random guesses)
    ret

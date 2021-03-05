global rindex

; char *rindex(const char *s, int c);
;              rdi,           rsi
section .text
rindex:
    xor rbx, rbx
.start:
    cmp BYTE [rdi+rbx], 0
    je .loop
    inc rbx
    jmp .start

.loop:
    cmp [rdi+rbx], sil
    je .found
    test rbx, rbx
    jz .not_found
    dec rbx
    jmp .loop

.found:
    mov rax, rdi
    add rax, rbx
    ret

.not_found:
    xor rax, rax
    ret
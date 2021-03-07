global strchr

; char *strchr(const char *s, int c);
;              rdi,           rsi
section .text
strchr:
    xor rbx, rbx

.loop:
    cmp [rdi+rbx], sil
    je .found
    cmp BYTE [rdi+rbx], 0
    jz .not_found
    inc rbx
    jmp .loop

.found:
    mov rax, rdi
    add rax, rbx
    ret

.not_found:
    xor rax, rax
    ret
global memset

; void *memset(void *s, int c, size_t n);
;              rdi,     rsi,   rdx
section .text
memset:
    xor rcx, rcx

.loop:
    cmp rcx, rdx
    je .end
    mov [rdi+rcx], sil
    inc rcx
    jmp .loop

.end:
    mov rax, rdi
    ret
global memset

; void *memset(void *s, int c, size_t n);
;              rdi,     rsi,   rdx
section .text
memset:
    xor rbx, rbx

.loop:
    cmp rbx, rdx
    je .end
    mov [rdi+rbx], sil
    inc rbx
    jmp .loop

.end:
    mov rax, rdi
    ret
global strstr

; char *strstr(const char *haystack, const char *needle);
;              rdi,                  rsi
section .text
strstr:
    xor rcx, rcx
    xor rbx, rbx

.loop:
    mov r8b, [rdi+rcx]
    test r8b, r8b
    jz .not_found_end

.loop_needle:
    mov r9b, [rsi+rbx]
    cmp r8b, r9b
    jne .continue_loop
    inc rbx
    mov r9b, [rsi+rbx]
    test r9b, r9b
    jz .found_end
    inc rcx
    jmp .loop_needle

.continue_loop:
    inc rcx
    jmp .loop

.not_found_end:
    xor rax, rax
    ret

.found_end:
    mov rax, rcx
    sub rax, rbx
    inc rax
    ret
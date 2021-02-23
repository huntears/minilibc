global strlen

section .text
strlen:
    mov rcx, -1         ; Put rcx to -1 to prepare for repne
    xor eax, eax        ; Put eax to 0, better performance using xor than mov
    repne scasb         ; Scan the string for a null-byte, result is stored in rcx
    not rcx
    mov rax, rcx 
    ret
#define SYSCALL_EXIT(code)                                                                                          \
    mov INT(SYS_exit), %eax                                                                                         ; \
    mov INT(code), %ebx                                                                                             ; \
    int $0x80

#define SYSCALL_WRITE(begin, end)                                                                                   \
    PUSH_REGS                                                                                                       ; \
    mov INT(SYS_write), %eax                                                                                        ; \
    mov INT(STDOUT), %ebx                                                                                           ; \
    mov INT(begin), %ecx                                                                                            ; \
    mov INT(end - begin), %edx                                                                                      ; \
    int $0x80                                                                                                       ; \
    POP_REGS

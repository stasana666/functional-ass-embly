#define EXIT(code)                                                                                                  \
    mov INT(SYS_exit), %eax                                                                                         ; \
    mov INT(code), %ebx                                                                                             ; \
    int $0x80

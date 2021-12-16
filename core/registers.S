#define PUSH_REGS                                                                                                   \
    push %eax                                                                                                       ; \
    push %ebx                                                                                                       ; \
    push %ecx                                                                                                       ; \
    push %edx

#define POP_REGS                                                                                                    \
    pop %eax                                                                                                        ; \
    pop %ebx                                                                                                        ; \
    pop %ecx                                                                                                        ; \
    pop %edx

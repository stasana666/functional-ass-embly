#include "../../core/core.S"

#define PRINT_STRING_HELPER(message, unique_id)                                                                     \
    .data                                                                                                           ; \
    CONCATINATE(unique_string_begin_id_, unique_id):                                                                ; \
    .ascii message                                                                                                  ; \
    CONCATINATE(unique_string_end_id_, unique_id):                                                                  ; \
    .text                                                                                                           ; \
    PUSH_REGS                                                                                                       ; \
    mov INT(SYS_write), %eax                                                                                        ; \
    mov INT(STDOUT), %ebx                                                                                           ; \
    mov INT(CONCATINATE(unique_string_begin_id_, unique_id)), %ecx                                                  ; \
    mov INT(CONCATINATE(unique_string_end_id_, unique_id) - CONCATINATE(unique_string_begin_id_, unique_id)), %edx  ; \
    int $0x80                                                                                                       ; \
    POP_REGS

#define SYS_exit 1
#define SYS_write 4
#define SYS_read 3
#define STDIN 0
#define STDOUT 1
#define STDERR 2

#define CONCATINATE_HELPER(x, y) x##y
#define CONCATINATE(x, y) CONCATINATE_HELPER(x, y)

#define INT(x) CONCATINATE($, x)

#define EXIT(code)                                                                                                  \
    mov INT(SYS_exit), %eax                                                                                         ; \
    mov INT(code), %ebx                                                                                             ; \
    int $0x80

#define MAIN(...)                                                                                                   \
    .global main                                                                                                    ; \
    main:                                                                                                           ; \
    __VA_ARGS__                                                                                                     ; \
    EXIT(0)

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

#define PRINT_STRING(message)                                                                                       \
    PRINT_STRING_HELPER(message, __COUNTER__)


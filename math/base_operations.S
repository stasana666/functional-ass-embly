#include <../core/core.h>

#define SET_INT32(var, value)                                     \
    push %eax                                                   ; \
    mov  INT(value), %eax                                       ; \
    mov  %eax, CONCATENATE(unique_global_var_int32_, var)       ; \
    pop  %eax

#define ADD(var, value)                                           \
    push %eax                                                   ; \
    mov  CONCATENATE(unique_global_var_int32_, var), %eax       ; \
    add  INT(value), %eax                                       ; \
    mov  %eax, CONCATENATE(unique_global_var_int32_, var)       ; \
    pop  %eax

#define SUB(var, value)                                           \
    push %eax                                                   ; \
    mov  CONCATENATE(unique_global_var_int32_, var), %eax       ; \
    sub  INT(value), %eax                                       ; \
    mov  %eax, CONCATENATE(unique_global_var_int32_, var)       ; \
    pop  %eax

#define MUL(var, value)                                           \
    PUSH_REGS                                                   ; \
    mov  CONCATENATE(unique_global_var_int32_, var), %eax       ; \
    mov  INT(value), %ebx                                       ; \
    imul %ebx                                                   ; \
    mov  %eax, CONCATENATE(unique_global_var_int32_, var)       ; \
    POP_REGS

#define DIV(var, value)                                           \
    PUSH_REGS                                                   ; \
    mov  CONCATENATE(unique_global_var_int32_, var), %eax       ; \
    cdq                                                         ; \
    mov  INT(value), %ebx                                       ; \
    idiv %ebx                                                   ; \
    mov  %eax, CONCATENATE(unique_global_var_int32_, var)       ; \
    POP_REGS

#define MOD(var, value)                                           \
    PUSH_REGS                                                   ; \
    mov  CONCATENATE(unique_global_var_int32_, var), %eax       ; \
    cdq                                                         ; \
    mov  INT(value), %ebx                                       ; \
    idiv %ebx                                                   ; \
    mov  %edx, CONCATENATE(unique_global_var_int32_, var)       ; \
    POP_REGS


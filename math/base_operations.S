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
    push %eax                                                   ; \
    push %edx                                                   ; \
    mov  CONCATENATE(unique_global_var_int32_, var), %eax       ; \
    imul INT(value)                                             ; \
    mov  %eax, CONCATENATE(unique_global_var_int32_, var)       ; \
    pop  %edx                                                   ; \
    pop  %eax                                                   ; \

#define DIV(var, value)                                           \
    push %eax                                                   ; \
    push %edx                                                   ; \
    mov  CONCATENATE(unique_global_var_int32_, var), %eax       ; \
    cdq                                                         ; \
    idiv INT(value)                                             ; \
    mov  %eax, CONCATENATE(unique_global_var_int32_, var)       ; \
    pop  %edx                                                   ; \
    pop  %eax                                                   ; \

#define MOD(var, value)                                           \
    push %eax                                                   ; \
    push %edx                                                   ; \
    mov  CONCATENATE(unique_global_var_int32_, var), %eax       ; \
    cdq                                                         ; \
    idiv INT(value)                                             ; \
    mov  %edx, CONCATENATE(unique_global_var_int32_, var)       ; \
    pop  %edx                                                   ; \
    pop  %eax                                                   ; \


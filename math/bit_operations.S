#define AND(var, value)                                           \
    push %eax                                                   ; \
    mov  CONCATENATE(unique_global_var_int32_, var), %eax       ; \
    and  INT(value), %eax                                       ; \
    mov  %eax, CONCATENATE(unique_global_var_int32_, var)       ; \
    pop  %eax

#define OR(var, value)                                            \
    push %eax                                                   ; \
    mov  CONCATENATE(unique_global_var_int32_, var), %eax       ; \
    or   INT(value), %eax                                       ; \
    mov  %eax, CONCATENATE(unique_global_var_int32_, var)       ; \
    pop  %eax

#define XOR(var, value)                                           \
    push %eax                                                   ; \
    mov  CONCATENATE(unique_global_var_int32_, var), %eax       ; \
    xor  INT(value), %eax                                       ; \
    mov  %eax, CONCATENATE(unique_global_var_int32_, var)       ; \
    pop  %eax

#define NOT(var, value)                                           \
    push %eax                                                   ; \
    mov  CONCATENATE(unique_global_var_int32_, var), %eax       ; \
    neg  %eax                                                   ; \
    mov  %eax, CONCATENATE(unique_global_var_int32_, var)       ; \
    pop  %eax

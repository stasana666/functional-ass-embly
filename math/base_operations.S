#define SET_INT32(var, value)                                   \
    push %eax                                                   ; \
    mov INT(value), %eax                                        ; \
    mov %eax, CONCATENATE(unique_global_var_int32_, var)        ; \
    pop %eax

#define SUB(var, value)                                         \
    push %eax                                                   ; \
    mov CONCATENATE(unique_global_var_int32_, var), %eax        ; \
    sub INT(value), %eax                                        ; \
    mov %eax, CONCATENATE(unique_global_var_int32_, var)        ; \
    pop %eax

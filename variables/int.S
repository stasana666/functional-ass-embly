#define CREATE_GLOBAL_INT32(name)                   \
    .data                                           ; \
    CONCATENATE(unique_global_var_int32_, name):    ; \
    .int 0                                          ; \
    .text

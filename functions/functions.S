#define CREATE_FUNCTION(name, ...)                    \
    CONCATENATE(unique_function_, name):            ; \
    __VA_ARGS__                                     ; \
    ret

#define CALL_FUNCTION(name)                           \
    call CONCATENATE(unique_function_, name)

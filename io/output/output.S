#include "helpers.S"
#include "../simpleio.S"

#define PRINT_STRING(message)                               \
    PRINT_STRING_HELPER(message, __COUNTER__)

#define PRINT_INT32(var)                                        \
    push %eax                                                   ; \
    mov CONCATENATE(unique_global_var_int32_, var), %eax       ; \
    call writei32                                               ; \
    pop %eax

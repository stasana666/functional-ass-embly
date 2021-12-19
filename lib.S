#include "core/core.S"
#include "io/io.S"
#include "functions/functions.S"
#include "variables/variables.S"
#include "math/math.S"

#define MAIN(...)                                                                                                   \
    .global main                                                                                                    ; \
    main:                                                                                                           ; \
    __VA_ARGS__                                                                                                     ; \
    SYSCALL_EXIT(0)

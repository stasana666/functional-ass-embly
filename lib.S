#include "core/core.S"
#include "io/io.S"

#define MAIN(...)                                                                                                   \
    .global main                                                                                                    ; \
    main:                                                                                                           ; \
    __VA_ARGS__                                                                                                     ; \
    EXIT(0)

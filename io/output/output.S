#include "helpers.S"

#define PRINT_STRING(message)                                                                                       \
    PRINT_STRING_HELPER(message, __COUNTER__)

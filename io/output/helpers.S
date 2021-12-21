#define PRINT_STRING_HELPER(message, unique_id)                                                                       \
    .data                                                                                                           ; \
    CONCATENATE(unique_string_begin_id_, unique_id):                                                                ; \
    .ascii message                                                                                                  ; \
    CONCATENATE(unique_string_end_id_, unique_id):                                                                  ; \
    .text                                                                                                           ; \
    SYSCALL_WRITE(CONCATENATE(unique_string_begin_id_, unique_id), CONCATENATE(unique_string_end_id_, unique_id))

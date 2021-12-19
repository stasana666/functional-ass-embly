#include "lib.S"

CREATE_FUNCTION (KalekaKek,
    PRINT_INT32(zxc);
    SUB(zxc, 7);
    CALL_FUNCTION(KalekaKek);
)

MAIN (
    CREATE_GLOBAL_INT32(zxc);
    SET_INT32(zxc, 1000);
    ADD(zxc, 7);
    CALL_FUNCTION(KalekaKek);
)

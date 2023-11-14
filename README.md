# Ассемблер с кучей синтаксического сахара, с помощью define

Например следующая программа бесконечно выводит последовательность чисел: 1000, 993, 986, 979, 972, ...
```
#include "lib.S"

CREATE_FUNCTION (KalekaKek,
    PRINT_INT32(zxc);
    SUB(zxc, 7);
    CALL_FUNCTION(KalekaKek);
)

MAIN (
    CREATE_GLOBAL_INT32(zxc);
    SET_INT32(zxc, 1000);
    CALL_FUNCTION(KalekaKek);
)
```

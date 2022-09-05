#include "nok_02.h"

static char* N(exit_str_0) = "nok_01";
static char* N(exit_str_1) = "nok_03";
static char* N(exit_str_2) = "tik_01";
static char* N(exit_str_3) = "";

#include "world/common/atomic/Pipe.inc.c"

#include "world/common/StashVars.inc.c"

#define NAMESPACE dup_nok_02
#include "world/common/GetItemName.inc.c"
#define NAMESPACE nok_02

#define NAMESPACE dup_nok_02
#include "world/common/GetNpcCollisionHeight.inc.c"
#define NAMESPACE nok_02

#define NAMESPACE dup_nok_02
#include "world/common/AddPlayerHandsOffset.inc.c"
#define NAMESPACE nok_02

INCLUDE_ASM(s32, "world/area_nok/nok_02/9D7020", func_80240624_9D7644);

INCLUDE_ASM(s32, "world/area_nok/nok_02/9D7020", func_80240678_9D7698);

extern s32 D_802547D0[];

ApiStatus func_802406B0_9D76D0(Evt* script, s32 isInitialCall) {
    Bytecode* args = script->ptrReadPos;
    s32* ptr = (s32*) evt_get_variable(script, *args++);
    s32 i;

    if (ptr != NULL) {
        for (i = 0; ptr[i] != 0; i++) {
            D_802547D0[i] = ptr[i];
        }
        D_802547D0[i] = 0;
    } else {
        for (i = 0; i < 112; i++) {
            D_802547D0[i] = i + 16;
            D_802547D0[112] = 0;
        }
    }
    return ApiStatus_DONE2;
}

#include "trd_00.h"

//INCLUDE_ASM(s32, "world/area_trd/trd_00/999F80", func_80240310_999F80);
extern s32 *D_80241340_99AFB0;

ApiStatus func_80240310_999F80(Evt* script, s32 isInitialCall) {
    s32 *temp_v0;
    s32 *temp_v0_2;
    s32 temp_v1;
    s32 temp_v1_2;
    Evt *phi_a0;
    s32 *phi_a1;
    s32 phi_v1;
    s32 *phi_a1_2;
    Evt *phi_a0_2;
    s32 phi_v1_2;

    temp_v0 = D_80241340_99AFB0;
    if (!temp_v0) {
        temp_v0_2 = heap_malloc(0x40);
        D_80241340_99AFB0 = temp_v0_2;
        phi_v1 = 0;
        phi_a1 = temp_v0_2;
        phi_a0 = script;
       
        
        do {
            temp_v1 = phi_v1 + 1;
            *phi_a1 = phi_a0->varTable[0];
            (s32*)phi_a0 += 1;
            phi_a1 += 1;
            phi_v1 = temp_v1;
        } while (temp_v1 < 0x10);
    } else {
        
        phi_v1_2 = 0;
        phi_a1_2 = temp_v0;
        phi_a0_2 = script;
        
        do {
            temp_v1_2 = phi_v1_2 + 1;
            phi_a0_2->varTable[0] = *phi_a1_2;
            phi_a1_2 += 1;
            (s32*)phi_a0_2 += 1;
            phi_v1_2 = temp_v1_2;
        } while (temp_v1_2 < 0x10);
        heap_free(D_80241340_99AFB0);
        D_80241340_99AFB0 = NULL;
    }
    return ApiStatus_DONE2;
}


#include "world/common/GetItemName.inc.c"

#include "world/common/SomeItemEntityFunc.inc.c"

#include "world/common/CheckItemFlags40.inc.c"

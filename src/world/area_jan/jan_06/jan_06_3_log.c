#include "jan_06.h"
#include "effects.h"

EvtScript N(EVS_SetupLogObjects) = {
    EVT_IF_EQ(GF_JAN06_CreateLogBridge, FALSE)
        EVT_CALL(ModifyColliderFlags, MODIFY_COLLIDER_FLAGS_SET_BITS, COLLIDER_o169, COLLIDER_FLAGS_UPPER_MASK)
        EVT_CALL(EnableModel, MODEL_o95, FALSE)
        EVT_CALL(EnableModel, MODEL_o96, FALSE)
        EVT_CALL(TranslateGroup, MODEL_g20, 0, -150, 0)
        EVT_CALL(TranslateGroup, MODEL_g21, 0, -150, 0)
    EVT_ELSE
        EVT_CALL(ModifyColliderFlags, MODIFY_COLLIDER_FLAGS_SET_BITS, COLLIDER_o167, COLLIDER_FLAGS_UPPER_MASK)
        EVT_CALL(ModifyColliderFlags, MODIFY_COLLIDER_FLAGS_SET_BITS, COLLIDER_o168, COLLIDER_FLAGS_UPPER_MASK)
        EVT_CALL(ModifyColliderFlags, MODIFY_COLLIDER_FLAGS_CLEAR_BITS, COLLIDER_o169, COLLIDER_FLAGS_UPPER_MASK)
        EVT_CALL(EnableModel, MODEL_o95, TRUE)
        EVT_CALL(EnableModel, MODEL_o96, TRUE)
        EVT_CALL(TranslateGroup, MODEL_g20, 0, 10, 0)
        EVT_CALL(TranslateGroup, MODEL_g21, 0, 10, 0)
        EVT_CALL(RotateGroup, MODEL_g20, -90, 0, 0, 1)
        EVT_CALL(RotateGroup, MODEL_g21, -90, 0, 0, 1)
        EVT_CALL(RotateGroup, MODEL_g20, 90, 0, 1, 0)
        EVT_CALL(RotateGroup, MODEL_g21, -90, 0, 1, 0)
    EVT_END_IF
    EVT_RETURN
    EVT_END
};

EvtScript N(EVS_LogAnim_RiseUp) = {
    EVT_CALL(PlaySoundAtCollider, COLLIDER_o167, SOUND_SMASH_GOOMNUT_TREE, 0)
    EVT_CALL(MakeLerp, -150, -169, 5, EASING_QUARTIC_OUT)
    EVT_LOOP(0)
        EVT_CALL(UpdateLerp)
        EVT_CALL(TranslateGroup, MODEL_g20, 0, LVar0, 0)
        EVT_CALL(TranslateGroup, MODEL_g21, 0, LVar0, 0)
        EVT_WAIT(1)
        EVT_IF_EQ(LVar1, 0)
            EVT_BREAK_LOOP
        EVT_END_IF
    EVT_END_LOOP
    EVT_RETURN
    EVT_END
};

#include "world/common/todo/UpdateLogShadow.inc.c"

EvtScript N(EVS_LogAnim_FallDown) = {
    EVT_THREAD
        EVT_WAIT(17)
        EVT_CALL(SetPlayerAnimation, ANIM_Mario1_LookUp)
        EVT_CALL(N(UpdateLogShadow), 130, MF_KillLogShadow)
    EVT_END_THREAD
    EVT_CALL(ModifyColliderFlags, MODIFY_COLLIDER_FLAGS_SET_BITS, COLLIDER_o167, COLLIDER_FLAGS_UPPER_MASK)
    EVT_CALL(MakeLerp, -169, 60, 30, EASING_QUADRATIC_OUT)
    EVT_LOOP(0)
        EVT_CALL(UpdateLerp)
        EVT_CALL(TranslateGroup, MODEL_g20, 0, LVar0, 0)
        EVT_CALL(TranslateGroup, MODEL_g21, 0, LVar0, 0)
        EVT_WAIT(1)
        EVT_IF_EQ(LVar1, 0)
            EVT_BREAK_LOOP
        EVT_END_IF
    EVT_END_LOOP
    EVT_WAIT(1)
    EVT_CALL(MakeLerp, 60, 0, 30, EASING_CUBIC_IN)
    EVT_LOOP(0)
        EVT_CALL(UpdateLerp)
        EVT_CALL(TranslateGroup, MODEL_g20, 0, LVar0, 0)
        EVT_CALL(TranslateGroup, MODEL_g21, 0, LVar0, 0)
        EVT_WAIT(1)
        EVT_IF_EQ(LVar1, 0)
            EVT_BREAK_LOOP
        EVT_END_IF
    EVT_END_LOOP
    EVT_CALL(SetPlayerAnimation, ANIM_Mario1_Idle)
    EVT_CALL(PlaySoundAtCollider, COLLIDER_o167, SOUND_209D, 0)
    EVT_PLAY_EFFECT(EFFECT_LANDING_DUST, 4, -100, 0, 60, 0)
    EVT_CALL(ShakeCam, CAM_DEFAULT, 2, 3, 1)
    EVT_RETURN
    EVT_END
};

EvtScript N(EVS_LogAnim_FallOver) = {
    EVT_THREAD
        EVT_WAIT(50)
        EVT_SET(MF_KillLogShadow, TRUE)
    EVT_END_THREAD
    EVT_CALL(MakeLerp, 0, -90, 60, EASING_CUBIC_IN)
    EVT_LOOP(0)
        EVT_CALL(UpdateLerp)
        EVT_CALL(TranslateGroup, MODEL_g20, 0, 0, 0)
        EVT_CALL(TranslateGroup, MODEL_g21, 0, 0, 0)
        EVT_CALL(RotateGroup, MODEL_g20, LVar0, 0, 0, 1)
        EVT_CALL(RotateGroup, MODEL_g21, LVar0, 0, 0, 1)
        EVT_WAIT(1)
        EVT_IF_EQ(LVar1, 0)
            EVT_BREAK_LOOP
        EVT_END_IF
    EVT_END_LOOP
    EVT_THREAD
        EVT_CALL(ShakeCam, CAM_DEFAULT, 2, 3, 1)
    EVT_END_THREAD
    EVT_RETURN
    EVT_END
};

EvtScript N(EVS_LogAnim_Split) = {
    EVT_CALL(PlaySoundAtCollider, COLLIDER_o167, SOUND_209E, 0)
    EVT_CALL(EnableModel, MODEL_o95, TRUE)
    EVT_CALL(EnableModel, MODEL_o96, TRUE)
    EVT_CALL(MakeLerp, 0, 90, 30, EASING_COS_FAST_OVERSHOOT)
    EVT_LOOP(0)
        EVT_CALL(UpdateLerp)
        EVT_SET(LVar2, LVar0)
        EVT_DIVF(LVar2, 9)
        EVT_CALL(TranslateGroup, MODEL_g20, 0, LVar2, 0)
        EVT_CALL(TranslateGroup, MODEL_g21, 0, LVar2, 0)
        EVT_CALL(RotateGroup, MODEL_g20, -90, 0, 0, 1)
        EVT_CALL(RotateGroup, MODEL_g21, -90, 0, 0, 1)
        EVT_CALL(RotateGroup, MODEL_g20, LVar0, 0, 1, 0)
        EVT_CALL(RotateGroup, MODEL_g21, LVar0, 0, -1, 0)
        EVT_WAIT(1)
        EVT_IF_EQ(LVar1, 0)
            EVT_BREAK_LOOP
        EVT_END_IF
    EVT_END_LOOP
    EVT_RETURN
    EVT_END
};

EvtScript N(EVS_Smash_BuriedLog) = {
    EVT_SET(GF_JAN06_CreateLogBridge, TRUE)
    EVT_CALL(DisablePlayerInput, TRUE)
    EVT_EXEC_WAIT(N(EVS_LogAnim_RiseUp))
    EVT_WAIT(1)
    EVT_EXEC_WAIT(N(EVS_LogAnim_FallDown))
    EVT_WAIT(1)
    EVT_EXEC_WAIT(N(EVS_LogAnim_FallOver))
    EVT_WAIT(1)
    EVT_EXEC_WAIT(N(EVS_LogAnim_Split))
    EVT_WAIT(1)
    EVT_CALL(DisablePlayerInput, FALSE)
    EVT_EXEC(N(EVS_SetupLogObjects))
    EVT_RETURN
    EVT_END
};

EvtScript N(EVS_SetupLogs) = {
    EVT_IF_EQ(GF_JAN06_CreateLogBridge, FALSE)
        EVT_BIND_TRIGGER(EVT_PTR(N(EVS_Smash_BuriedLog)), TRIGGER_WALL_HAMMER, COLLIDER_o167, 1, 0)
    EVT_END_IF
    EVT_EXEC(N(EVS_SetupLogObjects))
    EVT_RETURN
    EVT_END
};

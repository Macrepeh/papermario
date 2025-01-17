#include "omo_10.h"

EvtScript N(EVS_ExitWalk_omo_11_1) = EVT_EXIT_WALK(60, omo_10_ENTRY_0, "omo_11", omo_11_ENTRY_1);
EvtScript N(EVS_ExitWalk_omo_02_0) = EVT_EXIT_WALK(60, omo_10_ENTRY_1, "omo_02", omo_02_ENTRY_0);

EvtScript N(EVS_BindExitTriggers) = {
    EVT_BIND_TRIGGER(EVT_PTR(N(EVS_ExitWalk_omo_11_1)), TRIGGER_FLOOR_ABOVE, COLLIDER_deili4, 1, 0)
    EVT_BIND_TRIGGER(EVT_PTR(N(EVS_ExitWalk_omo_02_0)), TRIGGER_FLOOR_ABOVE, COLLIDER_deili1, 1, 0)
    EVT_RETURN
    EVT_END
};

EvtScript N(EVS_EnterMap) = {
    EVT_CALL(GetLoadType, LVar1)
    EVT_IF_EQ(LVar1, LOAD_FROM_FILE_SELECT)
        EVT_EXEC(EnterSavePoint)
        EVT_EXEC(N(EVS_BindExitTriggers))
        EVT_RETURN
    EVT_END_IF
    EVT_CALL(GetEntryID, LVar0)
    EVT_SWITCH(LVar0)
        EVT_CASE_RANGE(omo_10_ENTRY_0, omo_10_ENTRY_1)
            EVT_SET(LVar0, EVT_PTR(N(EVS_BindExitTriggers)))
            EVT_EXEC(EnterWalk)
            EVT_WAIT(1)
        EVT_CASE_DEFAULT
            EVT_EXEC(N(EVS_BindExitTriggers))
            EVT_WAIT(3)
    EVT_END_SWITCH
    EVT_RETURN
    EVT_END
};

EvtScript N(EVS_Main) = {
    EVT_SET(GB_WorldLocation, LOCATION_SHY_GUYS_TOYBOX)
    EVT_CALL(SetSpriteShading, SHADING_NONE)
    EVT_SETUP_CAMERA_ALT_NO_LEAD()
    EVT_CALL(MakeNpcs, TRUE, EVT_PTR(N(DefaultNPCs)))
    EVT_EXEC_WAIT(N(EVS_MakeEntities))
    EVT_EXEC_WAIT(N(EVS_SetupGizmos))
    EVT_EXEC_WAIT(N(EVS_SetupMusic))
    EVT_EXEC_WAIT(N(EVS_SetupTrain))
    EVT_EXEC(N(EVS_EnterMap))
    EVT_WAIT(1)
    EVT_RETURN
    EVT_END
};

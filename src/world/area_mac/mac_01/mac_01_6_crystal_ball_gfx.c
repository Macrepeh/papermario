#include "mac_01.h"
#include "model.h"
#include "nu/nusys.h"

s32 N(CrystallBallRenderCounter) = 0;
s32 N(UnusedCrystalBallField) = 0;

void N(gfx_build_crystal_ball_pre)(void) {
    Camera* camera = &gCameras[gCurrentCameraID];
    Matrix4f sp50;
    LookAt sp90;

    N(CrystallBallRenderCounter)++;
    guLookAtHiliteF(sp50, &sp90, &gDisplayContext->hilite,
                    camera->lookAt_eye.x, camera->lookAt_eye.y, camera->lookAt_eye.z,
                    camera->lookAt_obj.x, camera->lookAt_obj.y, camera->lookAt_obj.z,
                    0.0f, 1.0f, 0.0f,
                    -50.0f, 63.0f, 95.0f,
                    31.0f, 63.0f, 95.0f,
                    64, 64);
    gSPLookAtX(gMasterGfxPos++, &gDisplayContext->lookAt.l[0]);
    gSPLookAtY(gMasterGfxPos++, &gDisplayContext->lookAt.l[1]);
    gDPSetHilite1Tile(gMasterGfxPos++, G_TX_RENDERTILE, &gDisplayContext->hilite, 64, 64);
    gDPSetHilite2Tile(gMasterGfxPos++, G_TX_MIRROR, &gDisplayContext->hilite, 64, 64);
    gSPTexture(gMasterGfxPos++, 0x1000, 0x1000, 0, G_TX_RENDERTILE, G_ON);
    gSPSetGeometryMode(gMasterGfxPos++, G_TEXTURE_GEN);
}

void N(gfx_build_crystal_ball_post)(void) {
    gSPClearGeometryMode(gMasterGfxPos++, G_TEXTURE_GEN);
    gSPEndDisplayList(gMasterGfxPos++);
}

void N(gfx_build_inside_crystal_ball)(void) {
    f32 x, y, z, s;
    f32 f20, f22;
    f32 f0, f2;
    s32 ulx, uly;
    Camera* camera = &gCameras[gCurrentCameraID];
    Model* model = get_model_from_list_index(get_model_list_index_from_tree_index(MODEL_tama));

    transform_point(camera->perspectiveMatrix, model->center.x, model->center.y, model->center.z, 1.0f, &x, &y, &z, &s);
    s = 1.0f / s;
    x *= s;
    y *= -s;
    z = (z * s + 1.0f) * 0.5;

    if (!(z > 0.0f)) {
        return;
    }

    f20 = (x * camera->viewportW + camera->viewportW) * 0.5f;
    f22 = (y * camera->viewportH + camera->viewportH) * 0.5f;
    f0 = f20;
    f2 = f22;

    if (f20 < 0.0f) {
        f20 = 0.0f;
    }
    if (f0 < 4.0f) {
        f0 = 4.0f;
    }

    if (f22 < 0.0f) {
        f22 = 0.0f;
    }
    if (f2 < 4.0f) {
        f2 = 4.0f;
    }

    if (f20 >= camera->viewportW - 4) {
        f20 = camera->viewportW - 5;
    }
    if (f0 >= camera->viewportW - 4) {
        f0 = camera->viewportW - 5;
    }
    if (f22 >= camera->viewportH - 4) {
        f22 = camera->viewportH - 5;
    }
    if (f2 >= camera->viewportH - 4) {
        f2 = camera->viewportH - 5;
    }

    f20 += camera->viewportStartX;
    f22 += camera->viewportStartY;

    gDPSetCycleType(gMasterGfxPos++, G_CYC_1CYCLE);
    gDPSetRenderMode(gMasterGfxPos++, Z_CMP | CVG_DST_CLAMP | ZMODE_OPA | FORCE_BL | G_RM_PASS, Z_CMP | CVG_DST_CLAMP | ZMODE_OPA | FORCE_BL | GBL_c2(G_BL_CLR_IN, G_BL_0, G_BL_CLR_IN, G_BL_1));
    gDPSetColorImage(gMasterGfxPos++, G_IM_FMT_RGBA, G_IM_SIZ_16b, SCREEN_WIDTH, osVirtualToPhysical(nuGfxZBuffer));
    gDPSetCombineLERP(gMasterGfxPos++, 0, 0, 0, PRIMITIVE, 0, 0, 0, 0, 0, 0, 0, PRIMITIVE, 0, 0, 0, 0);
    gDPSetPrimColor(gMasterGfxPos++, 0, 0, 248, 240, 240, 0);
    gDPPipeSync(gMasterGfxPos++);
    gSPDisplayList(gMasterGfxPos++, model->modelNode->displayData->displayList);
    gDPPipeSync(gMasterGfxPos++);
    gDPSetColorImage(gMasterGfxPos++, G_IM_FMT_RGBA, G_IM_SIZ_16b, SCREEN_WIDTH, osVirtualToPhysical(nuGfxCfb_ptr));
    gDPSetDepthSource(gMasterGfxPos++, G_ZS_PRIM);
    gDPSetPrimDepth(gMasterGfxPos++, 32734, 0);
    gDPSetRenderMode(gMasterGfxPos++, G_RM_ZB_OPA_DECAL, G_RM_ZB_OPA_DECAL2);
    gDPSetTextureFilter(gMasterGfxPos++, G_TF_POINT);
    gDPSetTexturePersp(gMasterGfxPos++, G_TP_NONE);
    gSPTexture(gMasterGfxPos++, 0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON);
    gDPSetTextureLUT(gMasterGfxPos++, G_TT_NONE);
    gDPSetTextureDetail(gMasterGfxPos++, G_TD_CLAMP);
    gDPSetTextureLOD(gMasterGfxPos++, G_TL_TILE);
    gDPPipeSync(gMasterGfxPos++);

    ulx = f20 / 32.0f * 32.0f - 8.0f;
    uly = f22 / 32.0f * 32.0f - 8.0f;
    if (ulx >= 0 && uly >= 0 && ulx + 40 < SCREEN_WIDTH && uly + 40 < SCREEN_HEIGHT) {
        gDPLoadTextureTile(gMasterGfxPos++, osVirtualToPhysical(nuGfxCfb_ptr), G_IM_FMT_RGBA, G_IM_SIZ_16b,
                           SCREEN_WIDTH, SCREEN_HEIGHT, ulx, uly, ulx + 31, uly + 31, 0,
                           G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD);
        gDPSetCombineLERP(gMasterGfxPos++, 0, 0, 0, TEXEL0, 0, 0, 0, 0, 0, 0, 0, TEXEL0, 0, 0, 0, 0);
        gSPScisTextureRectangle(gMasterGfxPos++, (ulx - 8) * 4, (uly - 8) * 4, (ulx + 24) * 4, (uly + 24) * 4,
                                G_TX_RENDERTILE, (ulx & 0x1F) << 5, (uly & 0x1F) << 5, 700, 700);
    }

    gDPPipeSync(gMasterGfxPos++);
    gDPSetDepthSource(gMasterGfxPos++, G_ZS_PIXEL);
    gDPSetRenderMode(gMasterGfxPos++, G_RM_AA_ZB_XLU_SURF, G_RM_AA_ZB_XLU_SURF2);
    gDPSetCombineMode(gMasterGfxPos++, G_CC_SHADE, G_CC_SHADE);
    gDPSetTexturePersp(gMasterGfxPos++, G_TP_PERSP);
    gSPTexture(gMasterGfxPos++, 0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_OFF);
}

EvtScript N(EVS_SetupCrystalBallGfx) = {
    EVT_WAIT(1)
    EVT_CALL(SetCustomGfxBuilders, CUSTOM_GFX_2, EVT_PTR(N(gfx_build_crystal_ball_pre)), EVT_PTR(N(gfx_build_crystal_ball_post)))
    EVT_CALL(SetModelCustomGfx, MODEL_mirrorball, CUSTOM_GFX_2, -1)
    EVT_CALL(EnableModel, MODEL_mirrorball, FALSE)
    EVT_CALL(SetCustomGfxBuilders, CUSTOM_GFX_3, EVT_PTR(N(gfx_build_inside_crystal_ball)), 0)
    EVT_CALL(SetModelCustomGfx, MODEL_tama, CUSTOM_GFX_3, -1)
    EVT_CALL(SetModelFlags, MODEL_tama, MODEL_FLAGS_USE_CAMERA_UNK_MATRIX, TRUE)
    EVT_CALL(SetModelFlags, MODEL_ohosi, MODEL_FLAGS_USE_CAMERA_UNK_MATRIX, TRUE)
    EVT_RETURN
    EVT_END
};
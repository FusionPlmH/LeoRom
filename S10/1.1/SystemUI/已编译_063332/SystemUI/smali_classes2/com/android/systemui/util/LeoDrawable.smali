.class public Lcom/android/systemui/util/LeoDrawable;
.super Lcom/fusionleo/LeoX/systemui/LeoConfig;
.source "LeoDrawable.java"


# static fields
.field static mDrawabe:Ljava/lang/String;

.field public static mG5LeoICON:I

.field public static mG5LeoIConnected:I

.field public static mLeoStatusBarMaxRssiLevel:I

.field public static mLeoStatusBarSignal:Ljava/lang/String;

.field public static mLeoStatusBarSignal5IconStyle:[[I

.field public static mLeoStatusBarWIFIActivity:[I

.field public static mLeoStatusBarWifiIconStyle:[[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "drawable/stat_sys_"

    sput-object v0, Lcom/android/systemui/util/LeoDrawable;->mDrawabe:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/systemui/util/LeoDrawable;->mDrawabe:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "data_connected_leo_5g"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/util/LeoDrawable;->getLeoResource(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/systemui/util/LeoDrawable;->mG5LeoIConnected:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/systemui/util/LeoDrawable;->mDrawabe:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "data_type_signal_leo_5g"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/util/LeoDrawable;->getLeoResource(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/systemui/util/LeoDrawable;->mG5LeoICON:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/fusionleo/LeoX/systemui/LeoConfig;-><init>()V

    return-void
.end method

.method public static ChinaIconSignalStyle(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const-string v0, "signal_5_level"

    return-object v0

    :pswitch_0
    const-string v0, "signal_r"

    return-object v0

    :pswitch_1
    const-string v0, "signal_q"

    return-object v0

    :pswitch_2
    const-string v0, "signal_p"

    return-object v0

    :pswitch_3
    const-string v0, "signal_o"

    return-object v0

    :pswitch_4
    const-string v0, "signal_n"

    return-object v0

    :pswitch_5
    const-string v0, "signal_m"

    return-object v0

    :pswitch_6
    const-string v0, "signal_l"

    return-object v0

    :pswitch_7
    const-string v0, "signal_k"

    return-object v0

    :pswitch_8
    const-string v0, "signal_j"

    return-object v0

    :pswitch_9
    const-string v0, "signal_i"

    return-object v0

    :pswitch_a
    const-string v0, "signal_h"

    return-object v0

    :pswitch_b
    const-string v0, "signal_g"

    return-object v0

    :pswitch_c
    const-string v0, "signal_f"

    return-object v0

    :pswitch_d
    const-string v0, "signal_e"

    return-object v0

    :pswitch_e
    const-string v0, "signal_d"

    return-object v0

    :pswitch_f
    const-string v0, "signal_c"

    return-object v0

    :pswitch_10
    const-string v0, "signal_b"

    return-object v0

    :pswitch_11
    const-string v0, "signal_a"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static LeoWifiStyle(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const-string v0, "wifi_signal"

    return-object v0

    :pswitch_0
    const-string v0, "wifi_signal_o"

    return-object v0

    :pswitch_1
    const-string v0, "wifi_signal_n"

    return-object v0

    :pswitch_2
    const-string v0, "wifi_signal_m"

    return-object v0

    :pswitch_3
    const-string v0, "wifi_signal_l"

    return-object v0

    :pswitch_4
    const-string v0, "wifi_signal_k"

    return-object v0

    :pswitch_5
    const-string v0, "wifi_signal_j"

    return-object v0

    :pswitch_6
    const-string v0, "wifi_signal_i"

    return-object v0

    :pswitch_7
    const-string v0, "wifi_signal_h"

    return-object v0

    :pswitch_8
    const-string v0, "wifi_signal_g"

    return-object v0

    :pswitch_9
    const-string v0, "wifi_signal_f"

    return-object v0

    :pswitch_a
    const-string v0, "wifi_signal_e"

    return-object v0

    :pswitch_b
    const-string v0, "wifi_signal_d"

    return-object v0

    :pswitch_c
    const-string v0, "wifi_signal_c"

    return-object v0

    :pswitch_d
    const-string v0, "wifi_signal_b"

    return-object v0

    :pswitch_e
    const-string v0, "wifi_signal_a"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static Signal5IconStyle(ZI)V
    .locals 23

    sget-object v0, Lcom/android/systemui/util/LeoDrawable;->mDrawabe:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/systemui/util/LeoDrawable;->ChinaIconSignalStyle(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_0_simplified_auto_rotate"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/systemui/util/LeoDrawable;->getLeoResource(Ljava/lang/String;)I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "_1_simplified_auto_rotate"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/systemui/util/LeoDrawable;->getLeoResource(Ljava/lang/String;)I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "_2_simplified_auto_rotate"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/systemui/util/LeoDrawable;->getLeoResource(Ljava/lang/String;)I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "_3_simplified_auto_rotate"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/systemui/util/LeoDrawable;->getLeoResource(Ljava/lang/String;)I

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "_4_simplified_auto_rotate"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/systemui/util/LeoDrawable;->getLeoResource(Ljava/lang/String;)I

    move-result v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "_5_simplified_auto_rotate"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/systemui/util/LeoDrawable;->getLeoResource(Ljava/lang/String;)I

    move-result v8

    invoke-static {}, Lcom/fusionleo/LeoProvider/LeoManages;->VersionNumber()Z

    move-result v9

    if-eqz v9, :cond_1

    if-eqz p0, :cond_0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/util/LeoDrawable;->ChinaIconSignalStyle(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "_0_auto_rotate"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/systemui/util/LeoDrawable;->getLeoResource(Ljava/lang/String;)I

    move-result v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/util/LeoDrawable;->ChinaIconSignalStyle(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "_1_auto_rotate"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/systemui/util/LeoDrawable;->getLeoResource(Ljava/lang/String;)I

    move-result v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/util/LeoDrawable;->ChinaIconSignalStyle(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "_2_auto_rotate"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/systemui/util/LeoDrawable;->getLeoResource(Ljava/lang/String;)I

    move-result v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/util/LeoDrawable;->ChinaIconSignalStyle(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "_3_auto_rotate"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/systemui/util/LeoDrawable;->getLeoResource(Ljava/lang/String;)I

    move-result v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/util/LeoDrawable;->ChinaIconSignalStyle(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "_4_auto_rotate"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/systemui/util/LeoDrawable;->getLeoResource(Ljava/lang/String;)I

    move-result v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/util/LeoDrawable;->ChinaIconSignalStyle(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "_5_auto_rotate"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/android/systemui/util/LeoDrawable;->getLeoResource(Ljava/lang/String;)I

    move-result v14

    goto :goto_0

    :cond_0
    move v9, v3

    move v10, v4

    move v11, v5

    move v12, v6

    move v13, v7

    move v14, v8

    goto :goto_0

    :cond_1
    move v9, v3

    move v10, v4

    move v11, v5

    move v12, v6

    move v13, v7

    move v14, v8

    :goto_0
    const/4 v15, 0x2

    new-array v2, v15, [[I

    const/4 v15, 0x6

    move-object/from16 v18, v0

    new-array v0, v15, [I

    const/16 v16, 0x0

    aput v9, v0, v16

    const/16 v19, 0x1

    aput v10, v0, v19

    const/16 v17, 0x2

    aput v11, v0, v17

    const/16 v20, 0x3

    aput v12, v0, v20

    const/16 v21, 0x4

    aput v13, v0, v21

    const/16 v22, 0x5

    aput v14, v0, v22

    aput-object v0, v2, v16

    new-array v0, v15, [I

    aput v9, v0, v16

    aput v10, v0, v19

    aput v11, v0, v17

    aput v12, v0, v20

    aput v13, v0, v21

    aput v14, v0, v22

    aput-object v0, v2, v19

    sput-object v2, Lcom/android/systemui/util/LeoDrawable;->mLeoStatusBarSignal5IconStyle:[[I

    return-void
.end method

.method public static getLeoAndroidResource(Ljava/lang/String;)I
    .locals 3

    invoke-static {}, Lcom/android/systemui/SystemUIApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "android"

    invoke-virtual {v0, p0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getLeoDrawable()V
    .locals 2

    invoke-static {}, Lcom/android/systemui/SystemUIApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/fusionleo/LeoProvider/LeoManages;->LeoSysUiManages(Landroid/content/Context;)V

    sget-boolean v0, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoUesrStatusbarWifiIconEnabled:Z

    sget v1, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoUesrStatusbarWIFIIcon:I

    invoke-static {v0, v1}, Lcom/android/systemui/util/LeoDrawable;->updateLeoWifiIcons(ZI)V

    sget-boolean v0, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoUesrStatusbarSignalIconEnabled:Z

    sget v1, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoUesrStatusbarSignalIcon:I

    invoke-static {v0, v1}, Lcom/android/systemui/util/LeoDrawable;->Signal5IconStyle(ZI)V

    return-void
.end method

.method public static getLeoResource(Ljava/lang/String;)I
    .locals 3

    invoke-static {}, Lcom/android/systemui/SystemUIApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "com.android.systemui"

    invoke-virtual {v0, p0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static setLeoStatusBarPadding(ZI)V
    .locals 4

    if-eqz p0, :cond_0

    int-to-float v0, p1

    goto :goto_0

    :cond_0
    const/high16 v0, 0x41200000    # 10.0f

    :goto_0
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_SYSTEMUI_CONFIG_CORNER_ROUND"

    const-string v3, "0.0"

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    sput v1, Lcom/android/systemui/Rune;->STATBAR_CONFIG_DEVICE_CORNER_ROUND:F

    sget v1, Lcom/android/systemui/Rune;->STATBAR_CONFIG_DEVICE_CORNER_ROUND:F

    sget v2, Lcom/android/systemui/Rune;->STATBAR_CONFIG_DEVICE_CORNER_ROUND:F

    sub-float v2, v0, v2

    mul-float v1, v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/systemui/Rune;->STATBAR_CONFIG_STATUSBAR_SIDE_PADDING:I

    return-void
.end method

.method public static setMinipopVisibility(Z)V
    .locals 3

    const/16 v0, 0x8

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->stop()V

    const/4 v1, 0x1

    sput-boolean v1, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->mOriginSide:Z

    const/4 v1, -0x1

    sput v1, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->baseX:I

    sget v2, Lcom/fusionleo/LeoX/systemui/widget/MeterHome;->baseY:I

    invoke-static {v1, v2}, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->updateAll(II)V

    sget-object v1, Lcom/fusionleo/LeoX/systemui/widget/MeterBase;->MeterMap:Ljava/util/Map;

    sget-object v2, Lcom/fusionleo/LeoX/systemui/widget/MeterHome;->NAME:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fusionleo/LeoX/systemui/widget/MeterBase;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/fusionleo/LeoX/systemui/widget/MeterBase;->setVisibility(I)V

    sget-object v1, Lcom/fusionleo/LeoX/systemui/widget/MeterBase;->MeterMap:Ljava/util/Map;

    sget-object v2, Lcom/fusionleo/LeoX/systemui/widget/MeterBack;->NAME:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fusionleo/LeoX/systemui/widget/MeterBase;

    invoke-virtual {v1, v0}, Lcom/fusionleo/LeoX/systemui/widget/MeterBase;->setVisibility(I)V

    sget-object v1, Lcom/fusionleo/LeoX/systemui/widget/MeterBase;->MeterMap:Ljava/util/Map;

    sget-object v2, Lcom/fusionleo/LeoX/systemui/widget/MeterRecent;->NAME:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fusionleo/LeoX/systemui/widget/MeterBase;

    invoke-virtual {v1, v0}, Lcom/fusionleo/LeoX/systemui/widget/MeterBase;->setVisibility(I)V

    sget-object v1, Lcom/fusionleo/LeoX/systemui/widget/MeterBase;->MeterMap:Ljava/util/Map;

    sget-object v2, Lcom/fusionleo/LeoX/systemui/widget/MeterFlashlight;->NAME:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fusionleo/LeoX/systemui/widget/MeterBase;

    invoke-virtual {v1, v0}, Lcom/fusionleo/LeoX/systemui/widget/MeterBase;->setVisibility(I)V

    sget-object v0, Lcom/fusionleo/LeoX/systemui/widget/MeterBase;->MeterMap:Ljava/util/Map;

    sget-object v1, Lcom/fusionleo/LeoX/systemui/widget/MeterHome;->NAME:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusionleo/LeoX/systemui/widget/MeterBase;

    const v1, 0x3ecccccd    # 0.4f

    invoke-virtual {v0, v1}, Lcom/fusionleo/LeoX/systemui/widget/MeterBase;->setAlpha(F)V

    invoke-static {}, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->shrinkStart()V

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/fusionleo/LeoX/systemui/widget/MeterBase;->MeterMap:Ljava/util/Map;

    sget-object v2, Lcom/fusionleo/LeoX/systemui/widget/MeterBack;->NAME:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fusionleo/LeoX/systemui/widget/MeterBase;

    invoke-virtual {v1, v0}, Lcom/fusionleo/LeoX/systemui/widget/MeterBase;->setVisibility(I)V

    sget-object v1, Lcom/fusionleo/LeoX/systemui/widget/MeterBase;->MeterMap:Ljava/util/Map;

    sget-object v2, Lcom/fusionleo/LeoX/systemui/widget/MeterRecent;->NAME:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fusionleo/LeoX/systemui/widget/MeterBase;

    invoke-virtual {v1, v0}, Lcom/fusionleo/LeoX/systemui/widget/MeterBase;->setVisibility(I)V

    sget-object v1, Lcom/fusionleo/LeoX/systemui/widget/MeterBase;->MeterMap:Ljava/util/Map;

    sget-object v2, Lcom/fusionleo/LeoX/systemui/widget/MeterFlashlight;->NAME:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fusionleo/LeoX/systemui/widget/MeterBase;

    invoke-virtual {v1, v0}, Lcom/fusionleo/LeoX/systemui/widget/MeterBase;->setVisibility(I)V

    sget-object v1, Lcom/fusionleo/LeoX/systemui/widget/MeterBase;->MeterMap:Ljava/util/Map;

    sget-object v2, Lcom/fusionleo/LeoX/systemui/widget/MeterHome;->NAME:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fusionleo/LeoX/systemui/widget/MeterBase;

    invoke-virtual {v1, v0}, Lcom/fusionleo/LeoX/systemui/widget/MeterBase;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method static updateLeoWifiIcons(ZI)V
    .locals 27

    sget-object v0, Lcom/android/systemui/util/LeoDrawable;->mDrawabe:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/systemui/util/LeoDrawable;->LeoWifiStyle(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_0"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/util/LeoDrawable;->getLeoResource(Ljava/lang/String;)I

    move-result v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/android/systemui/util/LeoDrawable;->LeoWifiStyle(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "_1"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/systemui/util/LeoDrawable;->getLeoResource(Ljava/lang/String;)I

    move-result v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/android/systemui/util/LeoDrawable;->LeoWifiStyle(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "_2"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/systemui/util/LeoDrawable;->getLeoResource(Ljava/lang/String;)I

    move-result v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/android/systemui/util/LeoDrawable;->LeoWifiStyle(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "_3"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/systemui/util/LeoDrawable;->getLeoResource(Ljava/lang/String;)I

    move-result v8

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/android/systemui/util/LeoDrawable;->LeoWifiStyle(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "_4"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/systemui/util/LeoDrawable;->getLeoResource(Ljava/lang/String;)I

    move-result v10

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "wifi_signal_no_inout"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/systemui/util/LeoDrawable;->getLeoResource(Ljava/lang/String;)I

    move-result v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "wifi_signal_in"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/systemui/util/LeoDrawable;->getLeoResource(Ljava/lang/String;)I

    move-result v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "wifi_signal_out"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/android/systemui/util/LeoDrawable;->getLeoResource(Ljava/lang/String;)I

    move-result v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "wifi_signal_inout"

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/systemui/util/LeoDrawable;->getLeoResource(Ljava/lang/String;)I

    move-result v2

    invoke-static {}, Lcom/fusionleo/LeoProvider/LeoManages;->VersionNumber()Z

    move-result v15

    if-eqz v15, :cond_1

    if-eqz p0, :cond_0

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v17, v2

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/util/LeoDrawable;->LeoWifiStyle(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/systemui/util/LeoDrawable;->getLeoResource(Ljava/lang/String;)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/util/LeoDrawable;->LeoWifiStyle(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/systemui/util/LeoDrawable;->getLeoResource(Ljava/lang/String;)I

    move-result v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/util/LeoDrawable;->LeoWifiStyle(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/systemui/util/LeoDrawable;->getLeoResource(Ljava/lang/String;)I

    move-result v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/util/LeoDrawable;->LeoWifiStyle(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/systemui/util/LeoDrawable;->getLeoResource(Ljava/lang/String;)I

    move-result v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/util/LeoDrawable;->LeoWifiStyle(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/systemui/util/LeoDrawable;->getLeoResource(Ljava/lang/String;)I

    move-result v9

    const-string v11, "drawable/default_lock_wallpaper"

    invoke-static {v11}, Lcom/android/systemui/util/LeoDrawable;->getLeoAndroidResource(Ljava/lang/String;)I

    move-result v11

    move v15, v11

    move/from16 v18, v11

    move/from16 v19, v11

    nop

    goto :goto_0

    :cond_0
    move/from16 v17, v2

    move v2, v1

    move v3, v4

    move v5, v6

    move v7, v8

    move v9, v10

    move v15, v12

    move/from16 v18, v13

    move/from16 v19, v14

    move/from16 v11, v17

    goto :goto_0

    :cond_1
    move/from16 v17, v2

    move v2, v1

    move v3, v4

    move v5, v6

    move v7, v8

    move v9, v10

    move v15, v12

    move/from16 v18, v13

    move/from16 v19, v14

    move/from16 v11, v17

    :goto_0
    move-object/from16 v20, v0

    const/4 v0, 0x4

    move/from16 v21, v1

    new-array v1, v0, [I

    const/16 v16, 0x0

    aput v15, v1, v16

    const/16 v22, 0x1

    aput v18, v1, v22

    const/4 v0, 0x2

    aput v19, v1, v0

    const/16 v24, 0x3

    aput v11, v1, v24

    sput-object v1, Lcom/android/systemui/util/LeoDrawable;->mLeoStatusBarWIFIActivity:[I

    new-array v1, v0, [[I

    const/4 v0, 0x5

    move/from16 v26, v4

    new-array v4, v0, [I

    const/16 v16, 0x0

    aput v2, v4, v16

    aput v3, v4, v22

    const/16 v25, 0x2

    aput v5, v4, v25

    aput v7, v4, v24

    const/16 v23, 0x4

    aput v9, v4, v23

    aput-object v4, v1, v16

    new-array v0, v0, [I

    aput v2, v0, v16

    aput v3, v0, v22

    aput v5, v0, v25

    aput v7, v0, v24

    aput v9, v0, v23

    aput-object v0, v1, v22

    sput-object v1, Lcom/android/systemui/util/LeoDrawable;->mLeoStatusBarWifiIconStyle:[[I

    return-void
.end method

.method public static updateStatusBarIcons(Landroid/content/Context;)V
    .locals 4

    invoke-static {p0}, Lcom/fusionleo/LeoProvider/LeoManages;->LeoSysUiManages(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/fusionleo/LeoX/systemui/widget/Until;->initialPop(Landroid/content/Context;)V

    new-instance v0, Lcom/fusionleo/LeoX/systemui/widget/MeterFlashlight;

    invoke-direct {v0, p0}, Lcom/fusionleo/LeoX/systemui/widget/MeterFlashlight;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/fusionleo/LeoX/systemui/widget/MeterRecent;

    invoke-direct {v0, p0}, Lcom/fusionleo/LeoX/systemui/widget/MeterRecent;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/fusionleo/LeoX/systemui/widget/MeterBack;

    invoke-direct {v0, p0}, Lcom/fusionleo/LeoX/systemui/widget/MeterBack;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/fusionleo/LeoX/systemui/widget/MeterHome;

    invoke-direct {v0, p0}, Lcom/fusionleo/LeoX/systemui/widget/MeterHome;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/android/systemui/fusionleo/LeoFloatBall;

    invoke-direct {v0, p0}, Lcom/android/systemui/fusionleo/LeoFloatBall;-><init>(Landroid/content/Context;)V

    sget-boolean v0, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoUesrStatusbarIconPaddingEnabled:Z

    sget v1, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoUesrStatusbarIconPadding:I

    invoke-static {v0, v1}, Lcom/android/systemui/util/LeoDrawable;->setLeoStatusBarPadding(ZI)V

    sget-boolean v0, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoUesrStatusbarSignalIconEnabled:Z

    invoke-static {}, Lcom/android/systemui/util/LeoDrawable;->ioChinese()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, ""

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Leo_ConfigOpBrandingForIndicatorIcon"

    invoke-virtual {v2, v3, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/systemui/Rune;->STATBAR_ICON_BRANDING:Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    const-string v3, "CscFeature_SystemUI_ConfigOpBrandingForIndicatorIcon"

    invoke-virtual {v2, v3, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/systemui/Rune;->STATBAR_ICON_BRANDING:Ljava/lang/String;

    :cond_1
    :goto_0
    invoke-static {}, Lcom/android/systemui/util/LeoDrawable;->ioChinese()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    move v1, v0

    :goto_1
    if-eqz v1, :cond_3

    const/4 v2, 0x5

    goto :goto_2

    :cond_3
    const/4 v2, 0x4

    :goto_2
    sput v2, Lcom/android/systemui/Rune;->STATBAR_MAX_SIGNAL_LEVEL:I

    return-void
.end method

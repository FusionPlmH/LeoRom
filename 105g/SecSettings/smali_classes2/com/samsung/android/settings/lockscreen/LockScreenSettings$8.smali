.class Lcom/samsung/android/settings/lockscreen/LockScreenSettings$8;
.super Lcom/samsung/android/settings/logging/status/BaseStatusLoggingProvider;
.source "LockScreenSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/lockscreen/LockScreenSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/logging/status/BaseStatusLoggingProvider;-><init>()V

    return-void
.end method

.method private getFaceWidgetValue(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p1, p2, v1}, Lcom/samsung/android/settings/lockscreen/LockUtils;->getFaceWidgetInfo(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p2}, Lcom/samsung/android/settings/lockscreen/LockUtils;->getFaceWidgetListDefaultValue(Ljava/lang/String;)I

    move-result v3

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method public getStatusLoggingData(Landroid/content/Context;)Ljava/util/List;
    .locals 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/settings/logging/status/StatusData;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v0

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    move-object v4, v0

    const/16 v5, 0x7a

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v8, v7

    const/4 v9, 0x1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->access$000()I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->access$000()I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x61

    :goto_0
    move v5, v0

    goto/16 :goto_2

    :cond_0
    const/16 v0, 0x62

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v14

    invoke-virtual {v4, v9, v14}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v14

    if-eqz v14, :cond_2

    const/4 v0, 0x1

    :cond_2
    const/16 v14, 0x10

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v15

    invoke-virtual {v4, v14, v15}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v14

    if-eqz v14, :cond_3

    const/4 v10, 0x1

    :cond_3
    const/16 v14, 0x100

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v15

    invoke-virtual {v4, v14, v15}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v14

    if-eqz v14, :cond_4

    const/4 v11, 0x1

    :cond_4
    const/16 v14, 0x1000

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v15

    invoke-virtual {v4, v14, v15}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v14

    if-eqz v14, :cond_5

    const/4 v12, 0x1

    :cond_5
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v14

    invoke-static {v2, v14}, Lcom/samsung/android/settings/security/SecurityUtils;->isFingerprintDisabledByDPM(Landroid/content/Context;I)Z

    move-result v14

    if-eqz v14, :cond_6

    const/4 v0, 0x0

    :cond_6
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v14

    invoke-static {v2, v14}, Lcom/samsung/android/settings/security/SecurityUtils;->isFaceDisabledByDPM(Landroid/content/Context;I)Z

    move-result v14

    if-eqz v14, :cond_7

    const/4 v11, 0x0

    :cond_7
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v14

    invoke-static {v2, v14}, Lcom/samsung/android/settings/security/SecurityUtils;->isIrisDisabledByDPM(Landroid/content/Context;I)Z

    move-result v14

    if-eqz v14, :cond_8

    const/4 v10, 0x0

    :cond_8
    if-eqz v0, :cond_9

    if-nez v10, :cond_9

    if-nez v11, :cond_9

    if-nez v12, :cond_9

    const/4 v13, 0x1

    goto :goto_1

    :cond_9
    if-eqz v0, :cond_a

    if-eqz v10, :cond_a

    if-nez v11, :cond_a

    if-nez v12, :cond_a

    const/4 v13, 0x2

    goto :goto_1

    :cond_a
    if-eqz v0, :cond_c

    if-nez v10, :cond_c

    if-nez v11, :cond_b

    if-eqz v12, :cond_c

    :cond_b
    const/4 v13, 0x3

    goto :goto_1

    :cond_c
    if-nez v0, :cond_d

    if-eqz v10, :cond_d

    if-nez v11, :cond_d

    if-nez v12, :cond_d

    const/4 v13, 0x4

    goto :goto_1

    :cond_d
    if-nez v0, :cond_f

    if-nez v10, :cond_f

    if-nez v11, :cond_e

    if-eqz v12, :cond_f

    :cond_e
    const/4 v13, 0x5

    :cond_f
    :goto_1
    invoke-static {}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->access$000()I

    move-result v14

    invoke-virtual {v4, v14}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v14

    const/high16 v15, 0x10000

    if-eq v14, v15, :cond_12

    const/high16 v15, 0x20000

    if-eq v14, v15, :cond_11

    const/high16 v15, 0x30000

    if-eq v14, v15, :cond_11

    const/high16 v15, 0x40000

    if-eq v14, v15, :cond_10

    const/high16 v15, 0x50000

    if-eq v14, v15, :cond_10

    const/high16 v15, 0x60000

    if-eq v14, v15, :cond_10

    goto :goto_2

    :cond_10
    const/16 v15, 0x6f

    add-int/2addr v15, v13

    int-to-char v0, v15

    goto/16 :goto_0

    :cond_11
    const/16 v15, 0x63

    add-int/2addr v15, v13

    int-to-char v5, v15

    goto :goto_2

    :cond_12
    const/16 v15, 0x69

    add-int/2addr v15, v13

    int-to-char v5, v15

    nop

    :goto_2
    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->getDeviceOwnerInfo()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v10

    invoke-virtual {v4, v10}, Lcom/android/internal/widget/LockPatternUtils;->getOwnerInfo(I)Ljava/lang/String;

    move-result-object v10

    if-nez v0, :cond_13

    if-eqz v10, :cond_14

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_14

    :cond_13
    const/4 v6, 0x1

    :cond_14
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isDomesticModel()Z

    move-result v11

    if-eqz v11, :cond_15

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v11

    invoke-virtual {v4, v11}, Lcom/android/internal/widget/LockPatternUtils;->getPasswordHint(I)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_15

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v12
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v12, :cond_15

    const/4 v8, 0x1

    :cond_15
    goto :goto_3

    :catch_0
    move-exception v0

    const-string v10, "LockScreenSettings"

    const-string v11, "SecurityException in isSecure"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    new-instance v0, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    const/16 v10, 0x233a

    invoke-direct {v0, v10}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;-><init>(I)V

    if-eqz v6, :cond_16

    move v10, v9

    goto :goto_4

    :cond_16
    move v10, v7

    :goto_4
    invoke-virtual {v0, v10}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->setValue(I)Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->build()Lcom/samsung/android/settings/logging/status/StatusData;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isDomesticModel()Z

    move-result v10

    if-eqz v10, :cond_18

    new-instance v10, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    const/16 v11, 0x2334

    invoke-direct {v10, v11}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;-><init>(I)V

    if-eqz v8, :cond_17

    move v11, v9

    goto :goto_5

    :cond_17
    move v11, v7

    :goto_5
    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->setValue(I)Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->build()Lcom/samsung/android/settings/logging/status/StatusData;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_18
    new-instance v10, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    const/16 v11, 0x232a

    invoke-direct {v10, v11}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;-><init>(I)V

    invoke-static {v5}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->setValue(Ljava/lang/String;)Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->build()Lcom/samsung/android/settings/logging/status/StatusData;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v11, ""

    const-string v12, "servicebox_music"

    invoke-direct {v1, v2, v12}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings$8;->getFaceWidgetValue(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_19

    const-string v12, "Music "

    goto :goto_6

    :cond_19
    const-string v12, ""

    :goto_6
    const-string v13, "servicebox_calendar"

    invoke-direct {v1, v2, v13}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings$8;->getFaceWidgetValue(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1a

    const-string v13, "Schedule "

    goto :goto_7

    :cond_1a
    const-string v13, ""

    :goto_7
    const-string v14, "servicebox_alarm"

    invoke-direct {v1, v2, v14}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings$8;->getFaceWidgetValue(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1b

    const-string v14, "Alarm "

    goto :goto_8

    :cond_1b
    const-string v14, ""

    :goto_8
    const-string v15, "com.sec.android.daemonapp#weather"

    invoke-direct {v1, v2, v15}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings$8;->getFaceWidgetValue(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_1c

    const-string v15, "Weather "

    goto :goto_9

    :cond_1c
    const-string v15, ""

    :goto_9
    const-string v9, "com.samsung.android.app.routines#dashboard"

    invoke-direct {v1, v2, v9}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings$8;->getFaceWidgetValue(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1d

    const-string v9, "Routine "

    goto :goto_a

    :cond_1d
    const-string v9, ""

    :goto_a
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v11, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    move-object/from16 v16, v0

    const/16 v0, 0x232d

    invoke-direct {v11, v0}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;-><init>(I)V

    invoke-virtual {v11, v7}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->setValue(Ljava/lang/String;)Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->build()Lcom/samsung/android/settings/logging/status/StatusData;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->access$000()I

    move-result v11

    invoke-virtual {v4, v11}, Lcom/android/internal/widget/LockPatternUtils;->getPowerButtonInstantlyLocks(I)Z

    move-result v11

    invoke-static {v11}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v17, v0

    new-instance v0, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    const/16 v1, 0x2346

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;-><init>(I)V

    invoke-virtual {v0, v11}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->setValue(Ljava/lang/String;)Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->build()Lcom/samsung/android/settings/logging/status/StatusData;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x61

    move-object/from16 v18, v0

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    move/from16 v19, v1

    const v1, 0x7f0300c3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object/from16 v20, v4

    const-string v4, "lock_screen_lock_after_timeout"

    move/from16 v22, v5

    move/from16 v21, v6

    const-wide/16 v5, 0x1388

    invoke-static {v1, v4, v5, v6}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v4

    move/from16 v6, v19

    const/4 v1, 0x0

    :goto_b
    move-object/from16 v23, v7

    array-length v7, v0

    if-ge v1, v7, :cond_1f

    aget-object v7, v0, v1

    invoke-static {v7}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    cmp-long v7, v24, v4

    if-nez v7, :cond_1e

    add-int v7, v6, v1

    int-to-char v6, v7

    :cond_1e
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v7, v23

    goto :goto_b

    :cond_1f
    new-instance v1, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    const/16 v7, 0x2345

    invoke-direct {v1, v7}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;-><init>(I)V

    invoke-static {v6}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->setValue(Ljava/lang/String;)Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->build()Lcom/samsung/android/settings/logging/status/StatusData;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    move-object/from16 v26, v0

    const-string v0, "face_widgets_option"

    move-object/from16 v27, v1

    const/4 v1, 0x0

    invoke-static {v7, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_20

    const/4 v0, 0x1

    goto :goto_c

    :cond_20
    const/4 v0, 0x0

    :goto_c
    new-instance v1, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    const/16 v7, 0x2336

    invoke-direct {v1, v7}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;-><init>(I)V

    if-eqz v0, :cond_21

    const/4 v7, 0x1

    goto :goto_d

    :cond_21
    const/4 v7, 0x0

    :goto_d
    invoke-virtual {v1, v7}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->setValue(I)Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->build()Lcom/samsung/android/settings/logging/status/StatusData;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    move/from16 v28, v0

    const-string v0, "roaming_clock_option"

    move-object/from16 v29, v1

    const/4 v1, 0x0

    invoke-static {v7, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_22

    const/4 v0, 0x1

    goto :goto_e

    :cond_22
    move v0, v1

    :goto_e
    new-instance v7, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    const/16 v1, 0x2335

    invoke-direct {v7, v1}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;-><init>(I)V

    if-eqz v0, :cond_23

    const/4 v1, 0x1

    goto :goto_f

    :cond_23
    const/4 v1, 0x0

    :goto_f
    invoke-virtual {v7, v1}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->setValue(I)Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->build()Lcom/samsung/android/settings/logging/status/StatusData;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v3
.end method

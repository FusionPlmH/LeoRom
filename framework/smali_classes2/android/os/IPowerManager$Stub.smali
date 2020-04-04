.class public abstract Landroid/os/IPowerManager$Stub;
.super Landroid/os/Binder;
.source "IPowerManager.java"

# interfaces
.implements Landroid/os/IPowerManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IPowerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IPowerManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.os.IPowerManager"

.field static final TRANSACTION_acquireWakeLock:I = 0x1

.field static final TRANSACTION_acquireWakeLockWithUid:I = 0x2

.field static final TRANSACTION_boostScreenBrightness:I = 0x18

.field static final TRANSACTION_crash:I = 0x15

.field static final TRANSACTION_getCurrentBrightness:I = 0x20

.field static final TRANSACTION_getLastShutdownReason:I = 0x16

.field static final TRANSACTION_getPowerSaveState:I = 0xe

.field static final TRANSACTION_goToSleep:I = 0xa

.field static final TRANSACTION_isDeviceIdleMode:I = 0x10

.field static final TRANSACTION_isInteractive:I = 0xc

.field static final TRANSACTION_isInteractiveForDisplay:I = 0x31

.field static final TRANSACTION_isLightDeviceIdleMode:I = 0x11

.field static final TRANSACTION_isPowerSaveMode:I = 0xd

.field static final TRANSACTION_isScreenBrightnessBoosted:I = 0x19

.field static final TRANSACTION_isWakeLockLevelSupported:I = 0x7

.field static final TRANSACTION_nap:I = 0xb

.field static final TRANSACTION_powerHint:I = 0x5

.field static final TRANSACTION_reboot:I = 0x12

.field static final TRANSACTION_rebootSafeMode:I = 0x13

.field static final TRANSACTION_releaseWakeLock:I = 0x3

.field static final TRANSACTION_resetPersonalAutoBrightnessData:I = 0x2d

.field static final TRANSACTION_setAttentionLight:I = 0x1a

.field static final TRANSACTION_setAutoBrightnessForEbookOnly:I = 0x22

.field static final TRANSACTION_setAutoBrightnessLimit:I = 0x1c

.field static final TRANSACTION_setButtonBrightnessLimit:I = 0x25

.field static final TRANSACTION_setCameraMode:I = 0x2f

.field static final TRANSACTION_setClearViewBrightnessMode:I = 0x1d

.field static final TRANSACTION_setColorWeaknessMode:I = 0x1e

.field static final TRANSACTION_setCoverType:I = 0x26

.field static final TRANSACTION_setDozeAfterScreenOff:I = 0x1b

.field static final TRANSACTION_setDozeOverrideFromAod:I = 0x29

.field static final TRANSACTION_setDualScreenPolicy:I = 0x32

.field static final TRANSACTION_setEarlyWakeUp:I = 0x33

.field static final TRANSACTION_setFreezingScreenBrightness:I = 0x34

.field static final TRANSACTION_setKeyboardVisibility:I = 0x21

.field static final TRANSACTION_setLCDFlashMode:I = 0x2c

.field static final TRANSACTION_setMasterBrightnessLimit:I = 0x1f

.field static final TRANSACTION_setPowerSaveMode:I = 0xf

.field static final TRANSACTION_setProximityDebounceTime:I = 0x2e

.field static final TRANSACTION_setScreenBrightnessScaleFactor:I = 0x2b

.field static final TRANSACTION_setSmartGlowState:I = 0x30

.field static final TRANSACTION_setStayOnSetting:I = 0x17

.field static final TRANSACTION_setTemporaryMarkerScreenBrightnessSettingOverride:I = 0x2a

.field static final TRANSACTION_shutdown:I = 0x14

.field static final TRANSACTION_switchForceLcdBacklightOffState:I = 0x24

.field static final TRANSACTION_systemReboot:I = 0x27

.field static final TRANSACTION_updateCoverState:I = 0x23

.field static final TRANSACTION_updateWakeLockUids:I = 0x4

.field static final TRANSACTION_updateWakeLockWorkSource:I = 0x6

.field static final TRANSACTION_userActivity:I = 0x8

.field static final TRANSACTION_wakeUp:I = 0x9

.field static final TRANSACTION_wakeUpWithReason:I = 0x28


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.os.IPowerManager"

    invoke-virtual {p0, p0, v0}, Landroid/os/IPowerManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "android.os.IPowerManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/os/IPowerManager;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/os/IPowerManager;

    return-object v1

    :cond_1
    new-instance v1, Landroid/os/IPowerManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/IPowerManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 32
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v15, p0

    move/from16 v14, p1

    move-object/from16 v13, p2

    move-object/from16 v12, p3

    const-string v11, "android.os.IPowerManager"

    const v0, 0x5f4e5446

    const/4 v10, 0x1

    if-eq v14, v0, :cond_17

    const/4 v0, 0x0

    const/4 v1, 0x0

    packed-switch v14, :pswitch_data_0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :pswitch_0
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    move v1, v10

    nop

    :cond_0
    move v0, v1

    invoke-virtual {v15, v0}, Landroid/os/IPowerManager$Stub;->setFreezingScreenBrightness(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    :pswitch_1
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    move v1, v10

    nop

    :cond_1
    move v0, v1

    invoke-virtual {v15, v0}, Landroid/os/IPowerManager$Stub;->setEarlyWakeUp(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    :pswitch_2
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v15, v0}, Landroid/os/IPowerManager$Stub;->setDualScreenPolicy(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    :pswitch_3
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v15, v0}, Landroid/os/IPowerManager$Stub;->isInteractiveForDisplay(I)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v10

    :pswitch_4
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v26

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v28

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v29

    move-object v0, v15

    move/from16 v1, v16

    move/from16 v2, v17

    move/from16 v3, v18

    move/from16 v4, v19

    move/from16 v5, v20

    move/from16 v6, v21

    move/from16 v7, v22

    move/from16 v8, v23

    move/from16 v9, v24

    move v15, v10

    move/from16 v10, v25

    move-object/from16 v30, v11

    move/from16 v11, v26

    move/from16 v12, v27

    move/from16 v13, v28

    move/from16 v14, v29

    invoke-virtual/range {v0 .. v14}, Landroid/os/IPowerManager$Stub;->setSmartGlowState(IIIIIIIIIIIIII)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v15

    :pswitch_5
    move v15, v10

    move-object/from16 v30, v11

    move-object/from16 v8, v30

    move-object/from16 v7, p2

    invoke-virtual {v7, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    move v1, v15

    nop

    :cond_2
    move v0, v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    move-object/from16 v9, p0

    invoke-virtual {v9, v0, v1}, Landroid/os/IPowerManager$Stub;->setCameraMode(ZLandroid/os/IBinder;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v15

    :pswitch_6
    move-object v8, v11

    move-object v7, v13

    move-object v9, v15

    move v15, v10

    invoke-virtual {v7, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v9, v0, v1, v2}, Landroid/os/IPowerManager$Stub;->setProximityDebounceTime(Landroid/os/IBinder;II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v15

    :pswitch_7
    move-object v8, v11

    move-object v7, v13

    move-object v9, v15

    move v15, v10

    invoke-virtual {v7, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/IPowerManager$Stub;->resetPersonalAutoBrightnessData()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v15

    :pswitch_8
    move-object v8, v11

    move-object v7, v13

    move-object v9, v15

    move v15, v10

    invoke-virtual {v7, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    move v1, v15

    nop

    :cond_3
    move v0, v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/os/IPowerManager$Stub;->setLCDFlashMode(ZLandroid/os/IBinder;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v15

    :pswitch_9
    move-object v8, v11

    move-object v7, v13

    move-object v9, v15

    move v15, v10

    invoke-virtual {v7, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/os/IPowerManager$Stub;->setScreenBrightnessScaleFactor(FLandroid/os/IBinder;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v15

    :pswitch_a
    move-object v8, v11

    move-object v7, v13

    move-object v9, v15

    move v15, v10

    invoke-virtual {v7, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v9, v0}, Landroid/os/IPowerManager$Stub;->setTemporaryMarkerScreenBrightnessSettingOverride(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v15

    :pswitch_b
    move-object v8, v11

    move-object v7, v13

    move-object v9, v15

    move v15, v10

    invoke-virtual {v7, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/os/IPowerManager$Stub;->setDozeOverrideFromAod(IIILandroid/os/IBinder;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v15

    :pswitch_c
    move-object v8, v11

    move-object v7, v13

    move-object v9, v15

    move v15, v10

    invoke-virtual {v7, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/os/IPowerManager$Stub;->wakeUpWithReason(JII)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v15

    :pswitch_d
    move-object v8, v11

    move-object v7, v13

    move-object v9, v15

    move v15, v10

    invoke-virtual {v7, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/os/IPowerManager$Stub;->systemReboot(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v15

    :pswitch_e
    move-object v8, v11

    move-object v7, v13

    move-object v9, v15

    move v15, v10

    invoke-virtual {v7, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v9, v0}, Landroid/os/IPowerManager$Stub;->setCoverType(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v15

    :pswitch_f
    move-object v8, v11

    move-object v7, v13

    move-object v9, v15

    move v15, v10

    invoke-virtual {v7, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v9, v0}, Landroid/os/IPowerManager$Stub;->setButtonBrightnessLimit(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v15

    :pswitch_10
    move-object v8, v11

    move-object v7, v13

    move-object v9, v15

    move v15, v10

    invoke-virtual {v7, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/IPowerManager$Stub;->switchForceLcdBacklightOffState()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v15

    :pswitch_11
    move-object v8, v11

    move-object v7, v13

    move-object v9, v15

    move v15, v10

    invoke-virtual {v7, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    move v1, v15

    nop

    :cond_4
    move v0, v1

    invoke-virtual {v9, v0}, Landroid/os/IPowerManager$Stub;->updateCoverState(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v15

    :pswitch_12
    move-object v8, v11

    move-object v7, v13

    move-object v9, v15

    move v15, v10

    invoke-virtual {v7, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5

    move v1, v15

    nop

    :cond_5
    move v0, v1

    invoke-virtual {v9, v0}, Landroid/os/IPowerManager$Stub;->setAutoBrightnessForEbookOnly(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v15

    :pswitch_13
    move-object v8, v11

    move-object v7, v13

    move-object v9, v15

    move v15, v10

    invoke-virtual {v7, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6

    move v1, v15

    nop

    :cond_6
    move v0, v1

    invoke-virtual {v9, v0}, Landroid/os/IPowerManager$Stub;->setKeyboardVisibility(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v15

    :pswitch_14
    move-object v8, v11

    move-object v7, v13

    move-object v9, v15

    move v15, v10

    invoke-virtual {v7, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_7

    move v1, v15

    nop

    :cond_7
    move v0, v1

    invoke-virtual {v9, v0}, Landroid/os/IPowerManager$Stub;->getCurrentBrightness(Z)F

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v10, p3

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeFloat(F)V

    return v15

    :pswitch_15
    move-object v8, v11

    move-object v7, v13

    move-object v9, v15

    move v15, v10

    move-object v10, v12

    invoke-virtual {v7, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v9, v0, v1}, Landroid/os/IPowerManager$Stub;->setMasterBrightnessLimit(II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v15

    :pswitch_16
    move-object v8, v11

    move-object v7, v13

    move-object v9, v15

    move v15, v10

    move-object v10, v12

    invoke-virtual {v7, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_8

    move v1, v15

    nop

    :cond_8
    move v0, v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/os/IPowerManager$Stub;->setColorWeaknessMode(ZLandroid/os/IBinder;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v15

    :pswitch_17
    move-object v8, v11

    move-object v7, v13

    move-object v9, v15

    move v15, v10

    move-object v10, v12

    invoke-virtual {v7, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_9

    move v1, v15

    nop

    :cond_9
    move v0, v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v9, v0, v1, v2}, Landroid/os/IPowerManager$Stub;->setClearViewBrightnessMode(ZILandroid/os/IBinder;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v15

    :pswitch_18
    move-object v8, v11

    move-object v7, v13

    move-object v9, v15

    move v15, v10

    move-object v10, v12

    invoke-virtual {v7, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_a

    move v1, v15

    nop

    :cond_a
    invoke-virtual {v9, v0, v2, v1}, Landroid/os/IPowerManager$Stub;->setAutoBrightnessLimit(IIZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v15

    :pswitch_19
    move-object v8, v11

    move-object v7, v13

    move-object v9, v15

    move v15, v10

    move-object v10, v12

    invoke-virtual {v7, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_b

    move v1, v15

    nop

    :cond_b
    move v0, v1

    invoke-virtual {v9, v0}, Landroid/os/IPowerManager$Stub;->setDozeAfterScreenOff(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v15

    :pswitch_1a
    move-object v8, v11

    move-object v7, v13

    move-object v9, v15

    move v15, v10

    move-object v10, v12

    invoke-virtual {v7, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_c

    move v1, v15

    nop

    :cond_c
    move v0, v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v9, v0, v1}, Landroid/os/IPowerManager$Stub;->setAttentionLight(ZI)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v15

    :pswitch_1b
    move-object v8, v11

    move-object v7, v13

    move-object v9, v15

    move v15, v10

    move-object v10, v12

    invoke-virtual {v7, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/IPowerManager$Stub;->isScreenBrightnessBoosted()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    :pswitch_1c
    move-object v8, v11

    move-object v7, v13

    move-object v9, v15

    move v15, v10

    move-object v10, v12

    invoke-virtual {v7, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-virtual {v9, v0, v1}, Landroid/os/IPowerManager$Stub;->boostScreenBrightness(J)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v15

    :pswitch_1d
    move-object v8, v11

    move-object v7, v13

    move-object v9, v15

    move v15, v10

    move-object v10, v12

    invoke-virtual {v7, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v9, v0}, Landroid/os/IPowerManager$Stub;->setStayOnSetting(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v15

    :pswitch_1e
    move-object v8, v11

    move-object v7, v13

    move-object v9, v15

    move v15, v10

    move-object v10, v12

    invoke-virtual {v7, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/IPowerManager$Stub;->getLastShutdownReason()I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    :pswitch_1f
    move-object v8, v11

    move-object v7, v13

    move-object v9, v15

    move v15, v10

    move-object v10, v12

    invoke-virtual {v7, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/os/IPowerManager$Stub;->crash(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v15

    :pswitch_20
    move-object v8, v11

    move-object v7, v13

    move-object v9, v15

    move v15, v10

    move-object v10, v12

    invoke-virtual {v7, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_d

    move v0, v15

    goto :goto_0

    :cond_d
    move v0, v1

    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_e

    move v1, v15

    nop

    :cond_e
    invoke-virtual {v9, v0, v2, v1}, Landroid/os/IPowerManager$Stub;->shutdown(ZLjava/lang/String;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v15

    :pswitch_21
    move-object v8, v11

    move-object v7, v13

    move-object v9, v15

    move v15, v10

    move-object v10, v12

    invoke-virtual {v7, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_f

    move v0, v15

    goto :goto_1

    :cond_f
    move v0, v1

    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_10

    move v1, v15

    nop

    :cond_10
    invoke-virtual {v9, v0, v1}, Landroid/os/IPowerManager$Stub;->rebootSafeMode(ZZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v15

    :pswitch_22
    move-object v8, v11

    move-object v7, v13

    move-object v9, v15

    move v15, v10

    move-object v10, v12

    invoke-virtual {v7, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_11

    move v0, v15

    goto :goto_2

    :cond_11
    move v0, v1

    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_12

    move v1, v15

    nop

    :cond_12
    invoke-virtual {v9, v0, v2, v1}, Landroid/os/IPowerManager$Stub;->reboot(ZLjava/lang/String;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v15

    :pswitch_23
    move-object v8, v11

    move-object v7, v13

    move-object v9, v15

    move v15, v10

    move-object v10, v12

    invoke-virtual {v7, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/IPowerManager$Stub;->isLightDeviceIdleMode()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    :pswitch_24
    move-object v8, v11

    move-object v7, v13

    move-object v9, v15

    move v15, v10

    move-object v10, v12

    invoke-virtual {v7, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/IPowerManager$Stub;->isDeviceIdleMode()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    :pswitch_25
    move-object v8, v11

    move-object v7, v13

    move-object v9, v15

    move v15, v10

    move-object v10, v12

    invoke-virtual {v7, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_13

    move v1, v15

    nop

    :cond_13
    move v0, v1

    invoke-virtual {v9, v0}, Landroid/os/IPowerManager$Stub;->setPowerSaveMode(Z)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    :pswitch_26
    move-object v8, v11

    move-object v7, v13

    move-object v9, v15

    move v15, v10

    move-object v10, v12

    invoke-virtual {v7, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v9, v0}, Landroid/os/IPowerManager$Stub;->getPowerSaveState(I)Landroid/os/PowerSaveState;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_14

    invoke-virtual {v10, v15}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2, v10, v15}, Landroid/os/PowerSaveState;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_3

    :cond_14
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_3
    return v15

    :pswitch_27
    move-object v8, v11

    move-object v7, v13

    move-object v9, v15

    move v15, v10

    move-object v10, v12

    invoke-virtual {v7, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/IPowerManager$Stub;->isPowerSaveMode()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    :pswitch_28
    move-object v8, v11

    move-object v7, v13

    move-object v9, v15

    move v15, v10

    move-object v10, v12

    invoke-virtual {v7, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/IPowerManager$Stub;->isInteractive()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    :pswitch_29
    move-object v8, v11

    move-object v7, v13

    move-object v9, v15

    move v15, v10

    move-object v10, v12

    invoke-virtual {v7, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-virtual {v9, v0, v1}, Landroid/os/IPowerManager$Stub;->nap(J)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v15

    :pswitch_2a
    move-object v8, v11

    move-object v7, v13

    move-object v9, v15

    move v15, v10

    move-object v10, v12

    invoke-virtual {v7, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/os/IPowerManager$Stub;->goToSleep(JII)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v15

    :pswitch_2b
    move-object v8, v11

    move-object v7, v13

    move-object v9, v15

    move v15, v10

    move-object v10, v12

    invoke-virtual {v7, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/os/IPowerManager$Stub;->wakeUp(JLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v15

    :pswitch_2c
    move-object v8, v11

    move-object v7, v13

    move-object v9, v15

    move v15, v10

    move-object v10, v12

    invoke-virtual {v7, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/os/IPowerManager$Stub;->userActivity(JII)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v15

    :pswitch_2d
    move-object v8, v11

    move-object v7, v13

    move-object v9, v15

    move v15, v10

    move-object v10, v12

    invoke-virtual {v7, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v9, v0}, Landroid/os/IPowerManager$Stub;->isWakeLockLevelSupported(I)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    :pswitch_2e
    move-object v8, v11

    move-object v7, v13

    move-object v9, v15

    move v15, v10

    move-object v10, v12

    invoke-virtual {v7, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_15

    sget-object v0, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v7}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/WorkSource;

    goto :goto_4

    :cond_15
    nop

    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v1, v0, v2}, Landroid/os/IPowerManager$Stub;->updateWakeLockWorkSource(Landroid/os/IBinder;Landroid/os/WorkSource;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v15

    :pswitch_2f
    move-object v8, v11

    move-object v7, v13

    move-object v9, v15

    move v15, v10

    move-object v10, v12

    invoke-virtual {v7, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v9, v0, v1}, Landroid/os/IPowerManager$Stub;->powerHint(II)V

    return v15

    :pswitch_30
    move-object v8, v11

    move-object v7, v13

    move-object v9, v15

    move v15, v10

    move-object v10, v12

    invoke-virtual {v7, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/os/IPowerManager$Stub;->updateWakeLockUids(Landroid/os/IBinder;[I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v15

    :pswitch_31
    move-object v8, v11

    move-object v7, v13

    move-object v9, v15

    move v15, v10

    move-object v10, v12

    invoke-virtual {v7, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v9, v0, v1}, Landroid/os/IPowerManager$Stub;->releaseWakeLock(Landroid/os/IBinder;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v15

    :pswitch_32
    move-object v8, v11

    move-object v7, v13

    move-object v9, v15

    move v15, v10

    move-object v10, v12

    invoke-virtual {v7, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    move-object v0, v9

    move-object v1, v6

    move v2, v11

    move-object v3, v12

    move-object v4, v13

    move v5, v14

    invoke-virtual/range {v0 .. v5}, Landroid/os/IPowerManager$Stub;->acquireWakeLockWithUid(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v15

    :pswitch_33
    move-object v8, v11

    move-object v7, v13

    move-object v9, v15

    move v15, v10

    move-object v10, v12

    invoke-virtual {v7, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_16

    sget-object v0, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v7}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/WorkSource;

    :goto_5
    move-object v5, v0

    goto :goto_6

    :cond_16
    goto :goto_5

    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    move-object v0, v9

    move-object v1, v11

    move v2, v12

    move-object v3, v13

    move-object v4, v14

    move-object/from16 v6, v16

    invoke-virtual/range {v0 .. v6}, Landroid/os/IPowerManager$Stub;->acquireWakeLock(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v15

    :cond_17
    move-object v8, v11

    move-object v7, v13

    move-object v9, v15

    move v15, v10

    move-object v10, v12

    invoke-virtual {v10, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v15

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
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

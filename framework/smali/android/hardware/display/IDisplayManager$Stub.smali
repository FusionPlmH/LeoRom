.class public abstract Landroid/hardware/display/IDisplayManager$Stub;
.super Landroid/os/Binder;
.source "IDisplayManager.java"

# interfaces
.implements Landroid/hardware/display/IDisplayManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/display/IDisplayManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/display/IDisplayManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.hardware.display.IDisplayManager"

.field static final TRANSACTION_connectDevice:I = 0x14

.field static final TRANSACTION_connectWifiDisplay:I = 0x6

.field static final TRANSACTION_createVirtualDisplay:I = 0xf

.field static final TRANSACTION_disconnectDevice:I = 0x15

.field static final TRANSACTION_disconnectWifiDisplay:I = 0x7

.field static final TRANSACTION_enableMagnifierWindowController:I = 0x3d

.field static final TRANSACTION_enableOverlayMagnifier:I = 0x3e

.field static final TRANSACTION_fitToActiveDisplay:I = 0x26

.field static final TRANSACTION_forgetWifiDisplay:I = 0x9

.field static final TRANSACTION_getActiveDevice:I = 0x19

.field static final TRANSACTION_getActiveSinkDisplay:I = 0x2c

.field static final TRANSACTION_getAmbientBrightnessStats:I = 0x32

.field static final TRANSACTION_getBackupBrightnessConfiguration:I = 0x3a

.field static final TRANSACTION_getBrightnessConfigurationForUser:I = 0x34

.field static final TRANSACTION_getBrightnessEvents:I = 0x31

.field static final TRANSACTION_getDefaultBrightnessConfiguration:I = 0x35

.field static final TRANSACTION_getDeviceMaxVolume:I = 0x22

.field static final TRANSACTION_getDeviceMinVolume:I = 0x20

.field static final TRANSACTION_getDisplayIds:I = 0x2

.field static final TRANSACTION_getDisplayInfo:I = 0x1

.field static final TRANSACTION_getDisplayInfoUsingAppToken:I = 0x43

.field static final TRANSACTION_getLastConnectedDevice:I = 0x16

.field static final TRANSACTION_getMinimumBrightnessCurve:I = 0x3c

.field static final TRANSACTION_getPresentationOwner:I = 0x28

.field static final TRANSACTION_getStableDisplaySize:I = 0x30

.field static final TRANSACTION_getWifiDisplayStatus:I = 0xc

.field static final TRANSACTION_isConnWithPinSupported:I = 0x25

.field static final TRANSACTION_isDeviceVolumeMuted:I = 0x21

.field static final TRANSACTION_isDongleRenameSupported:I = 0x23

.field static final TRANSACTION_isFitToActiveDisplay:I = 0x27

.field static final TRANSACTION_isScreenInSinkConnected:I = 0x2b

.field static final TRANSACTION_isWifiDisplaySinkConnected:I = 0x2a

.field static final TRANSACTION_pauseWifiDisplay:I = 0xa

.field static final TRANSACTION_registerCallback:I = 0x3

.field static final TRANSACTION_releaseVirtualDisplay:I = 0x13

.field static final TRANSACTION_removeLastConnectedDevice:I = 0x1a

.field static final TRANSACTION_renameDongle:I = 0x24

.field static final TRANSACTION_renameWifiDisplay:I = 0x8

.field static final TRANSACTION_requestColorMode:I = 0xd

.field static final TRANSACTION_resetBrightnessConfigurationForUser:I = 0x36

.field static final TRANSACTION_resizeVirtualDisplay:I = 0x11

.field static final TRANSACTION_restartWifiDisplay:I = 0x29

.field static final TRANSACTION_resumeWifiDisplay:I = 0xb

.field static final TRANSACTION_setAppListSupportingDirectStream:I = 0x1c

.field static final TRANSACTION_setBackupBrightnessConfiguration:I = 0x39

.field static final TRANSACTION_setBrightnessConfigurationForUser:I = 0x33

.field static final TRANSACTION_setCurrentDisplayIdMagnifier:I = 0x41

.field static final TRANSACTION_setCurrentFollowingStatus:I = 0x42

.field static final TRANSACTION_setDeviceVolume:I = 0x1d

.field static final TRANSACTION_setDeviceVolumeMuted:I = 0x1e

.field static final TRANSACTION_setMagnificationSettings:I = 0x40

.field static final TRANSACTION_setMagnificationSpec:I = 0x3f

.field static final TRANSACTION_setSaturationLevel:I = 0xe

.field static final TRANSACTION_setScanningChannel:I = 0x2f

.field static final TRANSACTION_setTemporaryAutoBrightnessAdjustment:I = 0x3b

.field static final TRANSACTION_setTemporaryBrightness:I = 0x37

.field static final TRANSACTION_setTemporaryBrightnessForSlowChange:I = 0x38

.field static final TRANSACTION_setVirtualDisplaySurface:I = 0x12

.field static final TRANSACTION_setVolumeKeyEvent:I = 0x1f

.field static final TRANSACTION_setWifiDisplayCPUBoost:I = 0x2d

.field static final TRANSACTION_setWifiDisplayParam:I = 0x2e

.field static final TRANSACTION_setWifiDisplayRealSize:I = 0x1b

.field static final TRANSACTION_startWifiDisplayChannelScan:I = 0x17

.field static final TRANSACTION_startWifiDisplayScan:I = 0x4

.field static final TRANSACTION_stopWifiDisplayScan:I = 0x5

.field static final TRANSACTION_updateDeviceState:I = 0x18

.field static final TRANSACTION_wakeupOrSleepDexVirtualDisplay:I = 0x10


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.hardware.display.IDisplayManager"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/display/IDisplayManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IDisplayManager;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "android.hardware.display.IDisplayManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/hardware/display/IDisplayManager;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/hardware/display/IDisplayManager;

    return-object v1

    :cond_1
    new-instance v1, Landroid/hardware/display/IDisplayManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/display/IDisplayManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v12, p0

    move/from16 v13, p1

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    const-string v11, "android.hardware.display.IDisplayManager"

    const v0, 0x5f4e5446

    const/4 v10, 0x1

    if-eq v13, v0, :cond_1b

    const/4 v0, 0x0

    const/4 v1, 0x0

    packed-switch v13, :pswitch_data_0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :pswitch_0
    invoke-virtual {v14, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v12, v0, v2}, Landroid/hardware/display/IDisplayManager$Stub;->getDisplayInfoUsingAppToken(ILandroid/os/IBinder;)Landroid/view/DisplayInfo;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_0

    invoke-virtual {v15, v10}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v3, v15, v10}, Landroid/view/DisplayInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return v10

    :pswitch_1
    invoke-virtual {v14, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    move v1, v10

    nop

    :cond_1
    move v0, v1

    invoke-virtual {v12, v0}, Landroid/hardware/display/IDisplayManager$Stub;->setCurrentFollowingStatus(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    :pswitch_2
    invoke-virtual {v14, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v12, v0}, Landroid/hardware/display/IDisplayManager$Stub;->setCurrentDisplayIdMagnifier(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    :pswitch_3
    invoke-virtual {v14, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    invoke-virtual {v12, v0, v1, v2}, Landroid/hardware/display/IDisplayManager$Stub;->setMagnificationSettings(IIF)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    :pswitch_4
    invoke-virtual {v14, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2

    sget-object v0, Landroid/view/MagnificationSpec;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v14}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MagnificationSpec;

    goto :goto_1

    :cond_2
    nop

    :goto_1
    invoke-virtual {v12, v0}, Landroid/hardware/display/IDisplayManager$Stub;->setMagnificationSpec(Landroid/view/MagnificationSpec;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    :pswitch_5
    invoke-virtual {v14, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    move v1, v10

    nop

    :cond_3
    move v0, v1

    invoke-virtual {v12, v0}, Landroid/hardware/display/IDisplayManager$Stub;->enableOverlayMagnifier(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    :pswitch_6
    invoke-virtual {v14, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    move v1, v10

    nop

    :cond_4
    move v0, v1

    invoke-virtual {v12, v0}, Landroid/hardware/display/IDisplayManager$Stub;->enableMagnifierWindowController(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    :pswitch_7
    invoke-virtual {v14, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/display/IDisplayManager$Stub;->getMinimumBrightnessCurve()Landroid/hardware/display/Curve;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_5

    invoke-virtual {v15, v10}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, v15, v10}, Landroid/hardware/display/Curve;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    :cond_5
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_2
    return v10

    :pswitch_8
    invoke-virtual {v14, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    invoke-virtual {v12, v0}, Landroid/hardware/display/IDisplayManager$Stub;->setTemporaryAutoBrightnessAdjustment(F)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    :pswitch_9
    invoke-virtual {v14, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v12, v0}, Landroid/hardware/display/IDisplayManager$Stub;->getBackupBrightnessConfiguration(I)Landroid/hardware/display/BrightnessConfiguration;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_6

    invoke-virtual {v15, v10}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2, v15, v10}, Landroid/hardware/display/BrightnessConfiguration;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_3

    :cond_6
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_3
    return v10

    :pswitch_a
    invoke-virtual {v14, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_7

    sget-object v0, Landroid/hardware/display/BrightnessConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v14}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/BrightnessConfiguration;

    goto :goto_4

    :cond_7
    nop

    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v0, v1, v2}, Landroid/hardware/display/IDisplayManager$Stub;->setBackupBrightnessConfiguration(Landroid/hardware/display/BrightnessConfiguration;ILjava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    :pswitch_b
    invoke-virtual {v14, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_8

    move v1, v10

    nop

    :cond_8
    invoke-virtual {v12, v0, v1}, Landroid/hardware/display/IDisplayManager$Stub;->setTemporaryBrightnessForSlowChange(IZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    :pswitch_c
    invoke-virtual {v14, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v12, v0}, Landroid/hardware/display/IDisplayManager$Stub;->setTemporaryBrightness(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    :pswitch_d
    invoke-virtual {v14, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Landroid/hardware/display/IDisplayManager$Stub;->resetBrightnessConfigurationForUser(ILjava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    :pswitch_e
    invoke-virtual {v14, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/display/IDisplayManager$Stub;->getDefaultBrightnessConfiguration()Landroid/hardware/display/BrightnessConfiguration;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_9

    invoke-virtual {v15, v10}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, v15, v10}, Landroid/hardware/display/BrightnessConfiguration;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_5

    :cond_9
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_5
    return v10

    :pswitch_f
    invoke-virtual {v14, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v12, v0}, Landroid/hardware/display/IDisplayManager$Stub;->getBrightnessConfigurationForUser(I)Landroid/hardware/display/BrightnessConfiguration;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_a

    invoke-virtual {v15, v10}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2, v15, v10}, Landroid/hardware/display/BrightnessConfiguration;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_6

    :cond_a
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_6
    return v10

    :pswitch_10
    invoke-virtual {v14, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_b

    sget-object v0, Landroid/hardware/display/BrightnessConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v14}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/BrightnessConfiguration;

    goto :goto_7

    :cond_b
    nop

    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v0, v1, v2}, Landroid/hardware/display/IDisplayManager$Stub;->setBrightnessConfigurationForUser(Landroid/hardware/display/BrightnessConfiguration;ILjava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    :pswitch_11
    invoke-virtual {v14, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/display/IDisplayManager$Stub;->getAmbientBrightnessStats()Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_c

    invoke-virtual {v15, v10}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, v15, v10}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_8

    :cond_c
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_8
    return v10

    :pswitch_12
    invoke-virtual {v14, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroid/hardware/display/IDisplayManager$Stub;->getBrightnessEvents(Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_d

    invoke-virtual {v15, v10}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2, v15, v10}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_9

    :cond_d
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_9
    return v10

    :pswitch_13
    invoke-virtual {v14, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/display/IDisplayManager$Stub;->getStableDisplaySize()Landroid/graphics/Point;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_e

    invoke-virtual {v15, v10}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, v15, v10}, Landroid/graphics/Point;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_a

    :cond_e
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_a
    return v10

    :pswitch_14
    invoke-virtual {v14, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v12, v0}, Landroid/hardware/display/IDisplayManager$Stub;->setScanningChannel(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    :pswitch_15
    invoke-virtual {v14, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Landroid/hardware/display/IDisplayManager$Stub;->setWifiDisplayParam(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    :pswitch_16
    invoke-virtual {v14, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Landroid/hardware/display/IDisplayManager$Stub;->setWifiDisplayCPUBoost(ILandroid/os/IBinder;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    :pswitch_17
    invoke-virtual {v14, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/display/IDisplayManager$Stub;->getActiveSinkDisplay()Landroid/hardware/display/SemWifiDisplay;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_f

    invoke-virtual {v15, v10}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, v15, v10}, Landroid/hardware/display/SemWifiDisplay;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_b

    :cond_f
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_b
    return v10

    :pswitch_18
    invoke-virtual {v14, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/display/IDisplayManager$Stub;->isScreenInSinkConnected()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v10

    :pswitch_19
    invoke-virtual {v14, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/display/IDisplayManager$Stub;->isWifiDisplaySinkConnected()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v10

    :pswitch_1a
    invoke-virtual {v14, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/display/IDisplayManager$Stub;->restartWifiDisplay()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    :pswitch_1b
    invoke-virtual {v14, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v12, v0}, Landroid/hardware/display/IDisplayManager$Stub;->getPresentationOwner(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v10

    :pswitch_1c
    invoke-virtual {v14, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/display/IDisplayManager$Stub;->isFitToActiveDisplay()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v10

    :pswitch_1d
    invoke-virtual {v14, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_10

    move v1, v10

    nop

    :cond_10
    move v0, v1

    invoke-virtual {v12, v0}, Landroid/hardware/display/IDisplayManager$Stub;->fitToActiveDisplay(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    :pswitch_1e
    invoke-virtual {v14, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroid/hardware/display/IDisplayManager$Stub;->isConnWithPinSupported(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v10

    :pswitch_1f
    invoke-virtual {v14, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroid/hardware/display/IDisplayManager$Stub;->renameDongle(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    :pswitch_20
    invoke-virtual {v14, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/display/IDisplayManager$Stub;->isDongleRenameSupported()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v10

    :pswitch_21
    invoke-virtual {v14, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/display/IDisplayManager$Stub;->getDeviceMaxVolume()I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v10

    :pswitch_22
    invoke-virtual {v14, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/display/IDisplayManager$Stub;->isDeviceVolumeMuted()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v10

    :pswitch_23
    invoke-virtual {v14, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/display/IDisplayManager$Stub;->getDeviceMinVolume()I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v10

    :pswitch_24
    invoke-virtual {v14, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v12, v0}, Landroid/hardware/display/IDisplayManager$Stub;->setVolumeKeyEvent(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    :pswitch_25
    invoke-virtual {v14, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_11

    move v1, v10

    nop

    :cond_11
    move v0, v1

    invoke-virtual {v12, v0}, Landroid/hardware/display/IDisplayManager$Stub;->setDeviceVolumeMuted(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    :pswitch_26
    invoke-virtual {v14, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v12, v0}, Landroid/hardware/display/IDisplayManager$Stub;->setDeviceVolume(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    :pswitch_27
    invoke-virtual {v14, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroid/hardware/display/IDisplayManager$Stub;->setAppListSupportingDirectStream(Ljava/util/List;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    :pswitch_28
    invoke-virtual {v14, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroid/hardware/display/IDisplayManager$Stub;->setWifiDisplayRealSize(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    :pswitch_29
    invoke-virtual {v14, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/display/IDisplayManager$Stub;->removeLastConnectedDevice()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    :pswitch_2a
    invoke-virtual {v14, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/display/IDisplayManager$Stub;->getActiveDevice()Landroid/hardware/display/SemDeviceInfo;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_12

    invoke-virtual {v15, v10}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, v15, v10}, Landroid/hardware/display/SemDeviceInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_c

    :cond_12
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_c
    return v10

    :pswitch_2b
    invoke-virtual {v14, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_13

    sget-object v0, Landroid/hardware/display/SemDeviceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v14}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/SemDeviceInfo;

    goto :goto_d

    :cond_13
    nop

    :goto_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Landroid/hardware/display/IDisplayManager$Stub;->updateDeviceState(Landroid/hardware/display/SemDeviceInfo;Landroid/os/IBinder;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    :pswitch_2c
    invoke-virtual {v14, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v12, v0}, Landroid/hardware/display/IDisplayManager$Stub;->startWifiDisplayChannelScan(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    :pswitch_2d
    invoke-virtual {v14, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/display/IDisplayManager$Stub;->getLastConnectedDevice()Landroid/hardware/display/SemDeviceInfo;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_14

    invoke-virtual {v15, v10}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, v15, v10}, Landroid/hardware/display/SemDeviceInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_e

    :cond_14
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_e
    return v10

    :pswitch_2e
    invoke-virtual {v14, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/display/IDisplayManager$Stub;->disconnectDevice()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    :pswitch_2f
    invoke-virtual {v14, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_15

    sget-object v0, Landroid/hardware/display/SemDeviceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v14}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/SemDeviceInfo;

    goto :goto_f

    :cond_15
    nop

    :goto_f
    invoke-virtual {v12, v0}, Landroid/hardware/display/IDisplayManager$Stub;->connectDevice(Landroid/hardware/display/SemDeviceInfo;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    :pswitch_30
    invoke-virtual {v14, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/display/IVirtualDisplayCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IVirtualDisplayCallback;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroid/hardware/display/IDisplayManager$Stub;->releaseVirtualDisplay(Landroid/hardware/display/IVirtualDisplayCallback;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    :pswitch_31
    invoke-virtual {v14, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/display/IVirtualDisplayCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IVirtualDisplayCallback;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_16

    sget-object v0, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v14}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Surface;

    goto :goto_10

    :cond_16
    nop

    :goto_10
    invoke-virtual {v12, v1, v0}, Landroid/hardware/display/IDisplayManager$Stub;->setVirtualDisplaySurface(Landroid/hardware/display/IVirtualDisplayCallback;Landroid/view/Surface;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    :pswitch_32
    invoke-virtual {v14, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/display/IVirtualDisplayCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IVirtualDisplayCallback;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/hardware/display/IDisplayManager$Stub;->resizeVirtualDisplay(Landroid/hardware/display/IVirtualDisplayCallback;III)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    :pswitch_33
    invoke-virtual {v14, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_17

    move v1, v10

    nop

    :cond_17
    move v0, v1

    invoke-virtual {v12, v0}, Landroid/hardware/display/IDisplayManager$Stub;->wakeupOrSleepDexVirtualDisplay(Z)I

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v10

    :pswitch_34
    invoke-virtual {v14, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/display/IVirtualDisplayCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IVirtualDisplayCallback;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/projection/IMediaProjection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/projection/IMediaProjection;

    move-result-object v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_18

    sget-object v0, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v14}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Surface;

    :goto_11
    move-object v8, v0

    goto :goto_12

    :cond_18
    goto :goto_11

    :goto_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    move-object v0, v12

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    move-object/from16 v4, v19

    move/from16 v5, v20

    move/from16 v6, v21

    move/from16 v7, v22

    move/from16 v9, v23

    move v13, v10

    move-object/from16 v10, v24

    move-object/from16 v26, v11

    move/from16 v11, v25

    invoke-virtual/range {v0 .. v11}, Landroid/hardware/display/IDisplayManager$Stub;->createVirtualDisplay(Landroid/hardware/display/IVirtualDisplayCallback;Landroid/media/projection/IMediaProjection;Ljava/lang/String;Ljava/lang/String;IIILandroid/view/Surface;ILjava/lang/String;I)I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v13

    :pswitch_35
    move v13, v10

    move-object/from16 v26, v11

    move-object/from16 v0, v26

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    invoke-virtual {v12, v1}, Landroid/hardware/display/IDisplayManager$Stub;->setSaturationLevel(F)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v13

    :pswitch_36
    move v13, v10

    move-object v0, v11

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v12, v1, v2}, Landroid/hardware/display/IDisplayManager$Stub;->requestColorMode(II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v13

    :pswitch_37
    move v13, v10

    move-object v0, v11

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/display/IDisplayManager$Stub;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_19

    invoke-virtual {v15, v13}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2, v15, v13}, Landroid/hardware/display/WifiDisplayStatus;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_13

    :cond_19
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_13
    return v13

    :pswitch_38
    move v13, v10

    move-object v0, v11

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/display/IDisplayManager$Stub;->resumeWifiDisplay()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v13

    :pswitch_39
    move v13, v10

    move-object v0, v11

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/display/IDisplayManager$Stub;->pauseWifiDisplay()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v13

    :pswitch_3a
    move v13, v10

    move-object v0, v11

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Landroid/hardware/display/IDisplayManager$Stub;->forgetWifiDisplay(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v13

    :pswitch_3b
    move v13, v10

    move-object v0, v11

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v1, v2}, Landroid/hardware/display/IDisplayManager$Stub;->renameWifiDisplay(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v13

    :pswitch_3c
    move v13, v10

    move-object v0, v11

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/display/IDisplayManager$Stub;->disconnectWifiDisplay()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v13

    :pswitch_3d
    move v13, v10

    move-object v0, v11

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Landroid/hardware/display/IDisplayManager$Stub;->connectWifiDisplay(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v13

    :pswitch_3e
    move v13, v10

    move-object v0, v11

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/display/IDisplayManager$Stub;->stopWifiDisplayScan()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v13

    :pswitch_3f
    move v13, v10

    move-object v0, v11

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/display/IDisplayManager$Stub;->startWifiDisplayScan()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v13

    :pswitch_40
    move v13, v10

    move-object v0, v11

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/display/IDisplayManagerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IDisplayManagerCallback;

    move-result-object v1

    invoke-virtual {v12, v1}, Landroid/hardware/display/IDisplayManager$Stub;->registerCallback(Landroid/hardware/display/IDisplayManagerCallback;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v13

    :pswitch_41
    move v13, v10

    move-object v0, v11

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/display/IDisplayManager$Stub;->getDisplayIds()[I

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    return v13

    :pswitch_42
    move v13, v10

    move-object v0, v11

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v12, v2}, Landroid/hardware/display/IDisplayManager$Stub;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_1a

    invoke-virtual {v15, v13}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v3, v15, v13}, Landroid/view/DisplayInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_14

    :cond_1a
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_14
    return v13

    :cond_1b
    move v13, v10

    move-object v0, v11

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v13

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
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

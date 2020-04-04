.class public abstract Lcom/samsung/android/aod/IAODManager$Stub;
.super Landroid/os/Binder;
.source "IAODManager.java"

# interfaces
.implements Lcom/samsung/android/aod/IAODManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/aod/IAODManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/aod/IAODManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.aod.IAODManager"

.field static final TRANSACTION_acquireDoze:I = 0x16

.field static final TRANSACTION_addLogText:I = 0x4

.field static final TRANSACTION_getActiveImageInfo:I = 0xf

.field static final TRANSACTION_getSelfIconImageInfo:I = 0x10

.field static final TRANSACTION_isAODState:I = 0x1

.field static final TRANSACTION_isSViewCoverBrightnessHigh:I = 0x19

.field static final TRANSACTION_readyToScreenTurningOn:I = 0x11

.field static final TRANSACTION_registerAODDozeCallback:I = 0x14

.field static final TRANSACTION_registerAODListener:I = 0x12

.field static final TRANSACTION_releaseDoze:I = 0x17

.field static final TRANSACTION_requestAODToast:I = 0x18

.field static final TRANSACTION_requestExpandNotificationPanel:I = 0x1a

.field static final TRANSACTION_setActiveImage:I = 0xe

.field static final TRANSACTION_setAnalogClockInfo:I = 0xc

.field static final TRANSACTION_setAnalogClockInfoV4:I = 0x1c

.field static final TRANSACTION_setCurrentTime:I = 0x9

.field static final TRANSACTION_setDigitalClockInfo:I = 0xd

.field static final TRANSACTION_setDigitalClockInfoV4:I = 0x1d

.field static final TRANSACTION_setLiveClockCommand:I = 0x1f

.field static final TRANSACTION_setLiveClockImage:I = 0x1e

.field static final TRANSACTION_setLiveClockInfo:I = 0x5

.field static final TRANSACTION_setLiveClockNeedle:I = 0x6

.field static final TRANSACTION_setSelfGridInfo:I = 0xb

.field static final TRANSACTION_setSelfIconInfo:I = 0xa

.field static final TRANSACTION_setSelfPartialHLPMScan:I = 0x1b

.field static final TRANSACTION_turnOffSelfMove:I = 0x8

.field static final TRANSACTION_turnOnSelfMove:I = 0x7

.field static final TRANSACTION_unregisterAODDozeCallback:I = 0x15

.field static final TRANSACTION_unregisterAODListener:I = 0x13

.field static final TRANSACTION_updateAODTspRect:I = 0x2

.field static final TRANSACTION_writeAODCommand:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.samsung.android.aod.IAODManager"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/aod/IAODManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/aod/IAODManager;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "com.samsung.android.aod.IAODManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/aod/IAODManager;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/aod/IAODManager;

    return-object v1

    :cond_1
    new-instance v1, Lcom/samsung/android/aod/IAODManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/aod/IAODManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 45
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v15, p0

    move/from16 v14, p1

    move-object/from16 v13, p2

    move-object/from16 v12, p3

    const-string v11, "com.samsung.android.aod.IAODManager"

    const v0, 0x5f4e5446

    const/16 v21, 0x1

    if-eq v14, v0, :cond_2

    const/4 v0, 0x0

    packed-switch v14, :pswitch_data_0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :pswitch_0
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    invoke-virtual {v15, v0, v1, v2, v3}, Lcom/samsung/android/aod/IAODManager$Stub;->setLiveClockCommand(III[I)I

    move-result v4

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v21

    :pswitch_1
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v0, v1, v2, v3}, Lcom/samsung/android/aod/IAODManager$Stub;->setLiveClockImage(II[BLjava/lang/String;)I

    move-result v4

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v21

    :pswitch_2
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

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

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v30

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v31

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v32

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v33

    move-object v0, v15

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    move/from16 v4, v20

    move/from16 v5, v22

    move/from16 v6, v23

    move/from16 v7, v24

    move/from16 v8, v25

    move/from16 v9, v26

    move/from16 v10, v27

    move-object/from16 v34, v11

    move/from16 v11, v28

    move/from16 v12, v29

    move/from16 v13, v30

    move/from16 v14, v31

    move/from16 v15, v32

    move/from16 v16, v33

    invoke-virtual/range {v0 .. v16}, Lcom/samsung/android/aod/IAODManager$Stub;->setDigitalClockInfoV4(IIIIIIIIIIIIIIII)I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v15, p3

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v21

    :pswitch_3
    move-object/from16 v34, v11

    move-object v15, v12

    move-object/from16 v13, v34

    move-object/from16 v14, p2

    invoke-virtual {v14, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    move-object/from16 v0, p0

    move v1, v7

    move v2, v8

    move v3, v9

    move v4, v10

    move v5, v11

    move v6, v12

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/aod/IAODManager$Stub;->setAnalogClockInfoV4(IIIIII)I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v21

    :pswitch_4
    move-object v15, v12

    move-object v14, v13

    move-object v13, v11

    invoke-virtual {v14, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

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

    move-result v22

    move-object/from16 v0, p0

    move v1, v10

    move v2, v11

    move v3, v12

    move/from16 v4, v16

    move/from16 v5, v17

    move/from16 v6, v18

    move/from16 v7, v19

    move/from16 v8, v20

    move/from16 v9, v22

    invoke-virtual/range {v0 .. v9}, Lcom/samsung/android/aod/IAODManager$Stub;->setSelfPartialHLPMScan(IIIIIIIII)I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v21

    :pswitch_5
    move-object v15, v12

    move-object v14, v13

    move-object v13, v11

    invoke-virtual {v14, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Landroid/service/notification/StatusBarNotification;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v14}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/notification/StatusBarNotification;

    goto :goto_0

    :cond_0
    nop

    :goto_0
    move-object/from16 v12, p0

    invoke-virtual {v12, v0}, Lcom/samsung/android/aod/IAODManager$Stub;->requestExpandNotificationPanel(Landroid/service/notification/StatusBarNotification;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v21

    :pswitch_6
    move-object v14, v13

    move-object v13, v11

    move-object/from16 v44, v15

    move-object v15, v12

    move-object/from16 v12, v44

    invoke-virtual {v14, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/aod/IAODManager$Stub;->isSViewCoverBrightnessHigh()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v21

    :pswitch_7
    move-object v14, v13

    move-object v13, v11

    move-object/from16 v44, v15

    move-object v15, v12

    move-object/from16 v12, v44

    invoke-virtual {v14, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    sget-object v0, Lcom/samsung/android/aod/AODToast;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v14}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/aod/AODToast;

    goto :goto_1

    :cond_1
    nop

    :goto_1
    invoke-virtual {v12, v1, v0}, Lcom/samsung/android/aod/IAODManager$Stub;->requestAODToast(Ljava/lang/String;Lcom/samsung/android/aod/AODToast;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v21

    :pswitch_8
    move-object v14, v13

    move-object v13, v11

    move-object/from16 v44, v15

    move-object v15, v12

    move-object/from16 v12, v44

    invoke-virtual {v14, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/samsung/android/aod/IAODManager$Stub;->releaseDoze(Landroid/os/IBinder;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v21

    :pswitch_9
    move-object v14, v13

    move-object v13, v11

    move-object/from16 v44, v15

    move-object v15, v12

    move-object/from16 v12, v44

    invoke-virtual {v14, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v0, v1, v2}, Lcom/samsung/android/aod/IAODManager$Stub;->acquireDoze(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v21

    :pswitch_a
    move-object v14, v13

    move-object v13, v11

    move-object/from16 v44, v15

    move-object v15, v12

    move-object/from16 v12, v44

    invoke-virtual {v14, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/samsung/android/aod/IAODManager$Stub;->unregisterAODDozeCallback(Landroid/os/IBinder;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v21

    :pswitch_b
    move-object v14, v13

    move-object v13, v11

    move-object/from16 v44, v15

    move-object v15, v12

    move-object/from16 v12, v44

    invoke-virtual {v14, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/samsung/android/aod/IAODManager$Stub;->registerAODDozeCallback(Landroid/os/IBinder;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v21

    :pswitch_c
    move-object v14, v13

    move-object v13, v11

    move-object/from16 v44, v15

    move-object v15, v12

    move-object/from16 v12, v44

    invoke-virtual {v14, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/samsung/android/aod/IAODManager$Stub;->unregisterAODListener(Landroid/os/IBinder;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v21

    :pswitch_d
    move-object v14, v13

    move-object v13, v11

    move-object/from16 v44, v15

    move-object v15, v12

    move-object/from16 v12, v44

    invoke-virtual {v14, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/samsung/android/aod/IAODManager$Stub;->registerAODListener(Landroid/os/IBinder;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v21

    :pswitch_e
    move-object v14, v13

    move-object v13, v11

    move-object/from16 v44, v15

    move-object v15, v12

    move-object/from16 v12, v44

    invoke-virtual {v14, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/aod/IAODManager$Stub;->readyToScreenTurningOn()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v21

    :pswitch_f
    move-object v14, v13

    move-object v13, v11

    move-object/from16 v44, v15

    move-object v15, v12

    move-object/from16 v12, v44

    invoke-virtual {v14, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/aod/IAODManager$Stub;->getSelfIconImageInfo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v21

    :pswitch_10
    move-object v14, v13

    move-object v13, v11

    move-object/from16 v44, v15

    move-object v15, v12

    move-object/from16 v12, v44

    invoke-virtual {v14, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/aod/IAODManager$Stub;->getActiveImageInfo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v21

    :pswitch_11
    move-object v14, v13

    move-object v13, v11

    move-object/from16 v44, v15

    move-object v15, v12

    move-object/from16 v12, v44

    invoke-virtual {v14, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v0, v1, v2}, Lcom/samsung/android/aod/IAODManager$Stub;->setActiveImage(I[BLjava/lang/String;)I

    move-result v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v15, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v21

    :pswitch_12
    move-object v14, v13

    move-object v13, v11

    move-object/from16 v44, v15

    move-object v15, v12

    move-object/from16 v12, v44

    invoke-virtual {v14, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

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

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v30

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v31

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v32

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v33

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v34

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v35

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v36

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v37

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v38

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v39

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v41

    move-object v0, v12

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    move/from16 v4, v25

    move/from16 v5, v26

    move/from16 v6, v27

    move/from16 v7, v28

    move/from16 v8, v29

    move/from16 v9, v30

    move/from16 v10, v31

    move/from16 v11, v32

    move/from16 v12, v33

    move-object/from16 v42, v13

    move/from16 v13, v34

    move/from16 v14, v35

    move/from16 v15, v36

    move/from16 v16, v37

    move/from16 v17, v38

    move/from16 v18, v39

    move/from16 v19, v40

    move/from16 v20, v41

    invoke-virtual/range {v0 .. v20}, Lcom/samsung/android/aod/IAODManager$Stub;->setDigitalClockInfo(IIIIIIIIIIIIIIIIIIII)I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v14, p3

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v21

    :pswitch_13
    move-object/from16 v42, v11

    move-object v14, v12

    move-object/from16 v12, v42

    move-object/from16 v15, p2

    invoke-virtual {v15, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    move-object/from16 v13, p0

    invoke-virtual {v13, v0, v1, v2, v3}, Lcom/samsung/android/aod/IAODManager$Stub;->setAnalogClockInfo(IIII)I

    move-result v4

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v21

    :pswitch_14
    move-object v14, v12

    move-object v12, v11

    move-object/from16 v44, v15

    move-object v15, v13

    move-object/from16 v13, v44

    invoke-virtual {v15, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    move-object v0, v13

    move v1, v6

    move v2, v7

    move v3, v8

    move v4, v9

    move v5, v10

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/aod/IAODManager$Stub;->setSelfGridInfo(IIIII)I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v21

    :pswitch_15
    move-object v14, v12

    move-object v12, v11

    move-object/from16 v44, v15

    move-object v15, v13

    move-object/from16 v13, v44

    invoke-virtual {v15, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    move-object v0, v13

    move v1, v7

    move v2, v8

    move v3, v9

    move v4, v10

    move v5, v11

    move/from16 v6, v16

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/aod/IAODManager$Stub;->setSelfIconInfo(IIIIII)I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v21

    :pswitch_16
    move-object v14, v12

    move-object v12, v11

    move-object/from16 v44, v15

    move-object v15, v13

    move-object/from16 v13, v44

    invoke-virtual {v15, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    move-object v0, v13

    move v1, v7

    move v2, v8

    move v3, v9

    move v4, v10

    move v5, v11

    move/from16 v6, v16

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/aod/IAODManager$Stub;->setCurrentTime(IIIIII)I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v21

    :pswitch_17
    move-object v14, v12

    move-object v12, v11

    move-object/from16 v44, v15

    move-object v15, v13

    move-object/from16 v13, v44

    invoke-virtual {v15, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/aod/IAODManager$Stub;->turnOffSelfMove()I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v21

    :pswitch_18
    move-object v14, v12

    move-object v12, v11

    move-object/from16 v44, v15

    move-object v15, v13

    move-object/from16 v13, v44

    invoke-virtual {v15, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/aod/IAODManager$Stub;->turnOnSelfMove()I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v21

    :pswitch_19
    move-object v14, v12

    move-object v12, v11

    move-object/from16 v44, v15

    move-object v15, v13

    move-object/from16 v13, v44

    invoke-virtual {v15, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    invoke-virtual {v13, v0}, Lcom/samsung/android/aod/IAODManager$Stub;->setLiveClockNeedle([B)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v21

    :pswitch_1a
    move-object v14, v12

    move-object v12, v11

    move-object/from16 v44, v15

    move-object v15, v13

    move-object/from16 v13, v44

    invoke-virtual {v15, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v19

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v22

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v24

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v26

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v28

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v30

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v32

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v34

    move-object v0, v13

    move/from16 v1, v18

    move-wide/from16 v2, v19

    move-wide/from16 v4, v22

    move-wide/from16 v6, v24

    move-wide/from16 v8, v26

    move-wide/from16 v10, v28

    move-object/from16 v43, v12

    move-wide/from16 v12, v30

    move-wide/from16 v14, v32

    move-wide/from16 v16, v34

    invoke-virtual/range {v0 .. v17}, Lcom/samsung/android/aod/IAODManager$Stub;->setLiveClockInfo(IJJJJJJJJ)I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v6, p3

    invoke-virtual {v6, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v21

    :pswitch_1b
    move-object/from16 v43, v11

    move-object v6, v12

    move-object/from16 v8, v43

    move-object/from16 v7, p2

    invoke-virtual {v7, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    move-object/from16 v9, p0

    invoke-virtual {v9, v0}, Lcom/samsung/android/aod/IAODManager$Stub;->addLogText(Ljava/util/List;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v21

    :pswitch_1c
    move-object v8, v11

    move-object v6, v12

    move-object v7, v13

    move-object v9, v15

    invoke-virtual {v7, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    move-object v0, v9

    move-object v1, v10

    move-object v2, v11

    move-object v3, v12

    move-object v4, v13

    move-object v5, v14

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/aod/IAODManager$Stub;->writeAODCommand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v21

    :pswitch_1d
    move-object v8, v11

    move-object v6, v12

    move-object v7, v13

    move-object v9, v15

    invoke-virtual {v7, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v9, v0, v1, v2, v3}, Lcom/samsung/android/aod/IAODManager$Stub;->updateAODTspRect(IIII)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v21

    :pswitch_1e
    move-object v8, v11

    move-object v6, v12

    move-object v7, v13

    move-object v9, v15

    invoke-virtual {v7, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/aod/IAODManager$Stub;->isAODState()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v6, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v21

    :cond_2
    move-object v8, v11

    move-object v6, v12

    move-object v7, v13

    move-object v9, v15

    invoke-virtual {v6, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v21

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

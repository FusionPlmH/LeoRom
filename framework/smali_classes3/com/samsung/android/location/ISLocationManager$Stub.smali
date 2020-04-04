.class public abstract Lcom/samsung/android/location/ISLocationManager$Stub;
.super Landroid/os/Binder;
.source "ISLocationManager.java"

# interfaces
.implements Lcom/samsung/android/location/ISLocationManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/location/ISLocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/location/ISLocationManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.location.ISLocationManager"

.field static final TRANSACTION_addGeofence:I = 0x4

.field static final TRANSACTION_checkPassiveLocation:I = 0x16

.field static final TRANSACTION_cleanup:I = 0x26

.field static final TRANSACTION_flushCoreBatchedLocations:I = 0x25

.field static final TRANSACTION_getCellCountForEventGeofence:I = 0xa

.field static final TRANSACTION_getGeofenceIdList:I = 0x2

.field static final TRANSACTION_injectDeviceContext:I = 0x27

.field static final TRANSACTION_isCoreBatchingSupported:I = 0x23

.field static final TRANSACTION_removeCurrentLocation:I = 0x15

.field static final TRANSACTION_removeGeofence:I = 0x7

.field static final TRANSACTION_removeLocation:I = 0x12

.field static final TRANSACTION_removeSingleLocation:I = 0x13

.field static final TRANSACTION_reportCellGeofenceDetected:I = 0x1d

.field static final TRANSACTION_reportCellGeofenceRequestFail:I = 0x1e

.field static final TRANSACTION_reportFlpHardwareLocation:I = 0x1f

.field static final TRANSACTION_reportGpsGeofenceAddStatus:I = 0x19

.field static final TRANSACTION_reportGpsGeofencePauseStatus:I = 0x1b

.field static final TRANSACTION_reportGpsGeofenceRemoveStatus:I = 0x1a

.field static final TRANSACTION_reportGpsGeofenceResumeStatus:I = 0x1c

.field static final TRANSACTION_reportGpsGeofenceStatus:I = 0x18

.field static final TRANSACTION_reportGpsGeofenceTransition:I = 0x17

.field static final TRANSACTION_requestBatchOfLocations:I = 0xd

.field static final TRANSACTION_requestCoreBatchOfLocations:I = 0x24

.field static final TRANSACTION_requestCurrentLocation:I = 0x14

.field static final TRANSACTION_requestLocation:I = 0x10

.field static final TRANSACTION_requestLocationToPoi:I = 0x11

.field static final TRANSACTION_requestSingleLocation:I = 0xf

.field static final TRANSACTION_setGpsGeofenceHardware:I = 0x1

.field static final TRANSACTION_startCoreBatching:I = 0x20

.field static final TRANSACTION_startGeofence:I = 0x5

.field static final TRANSACTION_startLearning:I = 0x8

.field static final TRANSACTION_startLocationBatching:I = 0xb

.field static final TRANSACTION_stopCoreBatching:I = 0x21

.field static final TRANSACTION_stopGeofence:I = 0x6

.field static final TRANSACTION_stopLearning:I = 0x9

.field static final TRANSACTION_stopLocationBatching:I = 0xc

.field static final TRANSACTION_syncGeofence:I = 0x3

.field static final TRANSACTION_updateBatchingOptions:I = 0xe

.field static final TRANSACTION_updateCoreBatchingOptions:I = 0x22


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.samsung.android.location.ISLocationManager"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/location/ISLocationManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/location/ISLocationManager;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "com.samsung.android.location.ISLocationManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/location/ISLocationManager;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/location/ISLocationManager;

    return-object v1

    :cond_1
    new-instance v1, Lcom/samsung/android/location/ISLocationManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/location/ISLocationManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 36
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v15, p0

    move/from16 v14, p1

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    const-string v11, "com.samsung.android.location.ISLocationManager"

    const v0, 0x5f4e5446

    const/16 v17, 0x1

    if-eq v14, v0, :cond_a

    const/4 v0, 0x0

    const/4 v1, 0x0

    packed-switch v14, :pswitch_data_0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :pswitch_0
    invoke-virtual {v12, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v15, v0}, Lcom/samsung/android/location/ISLocationManager$Stub;->injectDeviceContext(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v17

    :pswitch_1
    invoke-virtual {v12, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/location/ISLocationManager$Stub;->cleanup()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v17

    :pswitch_2
    invoke-virtual {v12, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/location/ISLocationManager$Stub;->flushCoreBatchedLocations()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v17

    :pswitch_3
    invoke-virtual {v12, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v15, v0}, Lcom/samsung/android/location/ISLocationManager$Stub;->requestCoreBatchOfLocations(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v17

    :pswitch_4
    invoke-virtual {v12, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/location/ISLocationManager$Stub;->isCoreBatchingSupported()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v17

    :pswitch_5
    invoke-virtual {v12, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    sget-object v1, Landroid/location/FusedBatchOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/FusedBatchOptions;

    goto :goto_0

    :cond_0
    nop

    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/location/ISLocationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/location/ISLocationListener;

    move-result-object v2

    invoke-virtual {v15, v0, v1, v2}, Lcom/samsung/android/location/ISLocationManager$Stub;->updateCoreBatchingOptions(ILandroid/location/FusedBatchOptions;Lcom/samsung/android/location/ISLocationListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v17

    :pswitch_6
    invoke-virtual {v12, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v15, v0}, Lcom/samsung/android/location/ISLocationManager$Stub;->stopCoreBatching(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v17

    :pswitch_7
    invoke-virtual {v12, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    sget-object v1, Landroid/location/FusedBatchOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/FusedBatchOptions;

    goto :goto_1

    :cond_1
    nop

    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/location/ISLocationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/location/ISLocationListener;

    move-result-object v2

    invoke-virtual {v15, v0, v1, v2}, Lcom/samsung/android/location/ISLocationManager$Stub;->startCoreBatching(ILandroid/location/FusedBatchOptions;Lcom/samsung/android/location/ISLocationListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v17

    :pswitch_8
    invoke-virtual {v12, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object v0, Landroid/location/Location;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/location/Location;

    invoke-virtual {v15, v0}, Lcom/samsung/android/location/ISLocationManager$Stub;->reportFlpHardwareLocation([Landroid/location/Location;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v17

    :pswitch_9
    invoke-virtual {v12, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v15, v0}, Lcom/samsung/android/location/ISLocationManager$Stub;->reportCellGeofenceRequestFail(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v17

    :pswitch_a
    invoke-virtual {v12, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v15, v0, v1}, Lcom/samsung/android/location/ISLocationManager$Stub;->reportCellGeofenceDetected(II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v17

    :pswitch_b
    invoke-virtual {v12, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v15, v0, v1}, Lcom/samsung/android/location/ISLocationManager$Stub;->reportGpsGeofenceResumeStatus(II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v17

    :pswitch_c
    invoke-virtual {v12, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v15, v0, v1}, Lcom/samsung/android/location/ISLocationManager$Stub;->reportGpsGeofencePauseStatus(II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v17

    :pswitch_d
    invoke-virtual {v12, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v15, v0, v1}, Lcom/samsung/android/location/ISLocationManager$Stub;->reportGpsGeofenceRemoveStatus(II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v17

    :pswitch_e
    invoke-virtual {v12, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v15, v0, v1}, Lcom/samsung/android/location/ISLocationManager$Stub;->reportGpsGeofenceAddStatus(II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v17

    :pswitch_f
    invoke-virtual {v12, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v19

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v21

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v23

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v25

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v26

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v27

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v28

    move-object v0, v15

    move/from16 v1, v16

    move/from16 v2, v18

    move-wide/from16 v3, v19

    move-wide/from16 v5, v21

    move-wide/from16 v7, v23

    move/from16 v9, v25

    move/from16 v10, v26

    move-object v14, v11

    move/from16 v11, v27

    move-object v15, v12

    move-wide/from16 v12, v28

    invoke-virtual/range {v0 .. v13}, Lcom/samsung/android/location/ISLocationManager$Stub;->reportGpsGeofenceStatus(IIDDDFFFJ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v17

    :pswitch_10
    move-object v14, v11

    move-object v15, v12

    invoke-virtual {v15, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v20

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v22

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v24

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v26

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v27

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v28

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v30

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v29

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v32

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    move-wide/from16 v3, v20

    move-wide/from16 v5, v22

    move-wide/from16 v7, v24

    move/from16 v9, v26

    move/from16 v10, v27

    move/from16 v11, v28

    move-wide/from16 v12, v30

    move-object/from16 v34, v14

    move/from16 v14, v29

    move-wide/from16 v15, v32

    invoke-virtual/range {v0 .. v16}, Lcom/samsung/android/location/ISLocationManager$Stub;->reportGpsGeofenceTransition(IIDDDFFFJIJ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v17

    :pswitch_11
    move-object/from16 v34, v11

    move-object/from16 v7, v34

    move-object/from16 v6, p2

    invoke-virtual {v6, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/location/ISLocationManager$Stub;->checkPassiveLocation()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v8, p3

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v17

    :pswitch_12
    move-object v7, v11

    move-object v6, v12

    move-object v8, v13

    invoke-virtual {v6, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move-object/from16 v9, p0

    invoke-virtual {v9, v0}, Lcom/samsung/android/location/ISLocationManager$Stub;->removeCurrentLocation(I)I

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v17

    :pswitch_13
    move-object v7, v11

    move-object v6, v12

    move-object v8, v13

    move-object v9, v15

    invoke-virtual {v6, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/location/ISCurrentLocListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/location/ISCurrentLocListener;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/samsung/android/location/ISLocationManager$Stub;->requestCurrentLocation(Lcom/samsung/android/location/ISCurrentLocListener;)I

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v17

    :pswitch_14
    move-object v7, v11

    move-object v6, v12

    move-object v8, v13

    move-object v9, v15

    invoke-virtual {v6, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v6}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/app/PendingIntent;

    goto :goto_2

    :cond_2
    nop

    :goto_2
    move-object v0, v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/location/ISLocationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/location/ISLocationListener;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Lcom/samsung/android/location/ISLocationManager$Stub;->removeSingleLocation(Landroid/app/PendingIntent;Lcom/samsung/android/location/ISLocationListener;)I

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v8, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v17

    :pswitch_15
    move-object v7, v11

    move-object v6, v12

    move-object v8, v13

    move-object v9, v15

    invoke-virtual {v6, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/location/ISLocationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/location/ISLocationListener;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/samsung/android/location/ISLocationManager$Stub;->removeLocation(Lcom/samsung/android/location/ISLocationListener;)I

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v17

    :pswitch_16
    move-object v7, v11

    move-object v6, v12

    move-object v8, v13

    move-object v9, v15

    invoke-virtual {v6, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createDoubleArray()[D

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createDoubleArray()[D

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_3

    sget-object v1, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v6}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    goto :goto_3

    :cond_3
    nop

    :goto_3
    invoke-virtual {v9, v0, v2, v1}, Lcom/samsung/android/location/ISLocationManager$Stub;->requestLocationToPoi([D[DLandroid/app/PendingIntent;)I

    move-result v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v8, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v17

    :pswitch_17
    move-object v7, v11

    move-object v6, v12

    move-object v8, v13

    move-object v9, v15

    invoke-virtual {v6, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_4

    move/from16 v0, v17

    nop

    :cond_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/location/ISLocationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/location/ISLocationListener;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Lcom/samsung/android/location/ISLocationManager$Stub;->requestLocation(ZLcom/samsung/android/location/ISLocationListener;)I

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v8, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v17

    :pswitch_18
    move-object v7, v11

    move-object v6, v12

    move-object v8, v13

    move-object v9, v15

    invoke-virtual {v6, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_5

    move/from16 v3, v17

    goto :goto_4

    :cond_5
    move v3, v0

    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v6}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    move-object v4, v0

    goto :goto_5

    :cond_6
    move-object v4, v1

    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/location/ISLocationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/location/ISLocationListener;

    move-result-object v12

    move-object v0, v9

    move v1, v10

    move v2, v11

    move-object v5, v12

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/location/ISLocationManager$Stub;->requestSingleLocation(IIZLandroid/app/PendingIntent;Lcom/samsung/android/location/ISLocationListener;)I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v17

    :pswitch_19
    move-object v7, v11

    move-object v6, v12

    move-object v8, v13

    move-object v9, v15

    invoke-virtual {v6, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v9, v0, v1}, Lcom/samsung/android/location/ISLocationManager$Stub;->updateBatchingOptions(II)I

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v8, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v17

    :pswitch_1a
    move-object v7, v11

    move-object v6, v12

    move-object v8, v13

    move-object v9, v15

    invoke-virtual {v6, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/location/ISLocationManager$Stub;->requestBatchOfLocations()I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v17

    :pswitch_1b
    move-object v7, v11

    move-object v6, v12

    move-object v8, v13

    move-object v9, v15

    invoke-virtual {v6, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v9, v0}, Lcom/samsung/android/location/ISLocationManager$Stub;->stopLocationBatching(I)I

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v17

    :pswitch_1c
    move-object v7, v11

    move-object v6, v12

    move-object v8, v13

    move-object v9, v15

    invoke-virtual {v6, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/location/ISLocationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/location/ISLocationListener;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Lcom/samsung/android/location/ISLocationManager$Stub;->startLocationBatching(ILcom/samsung/android/location/ISLocationListener;)I

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v8, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v17

    :pswitch_1d
    move-object v7, v11

    move-object v6, v12

    move-object v8, v13

    move-object v9, v15

    invoke-virtual {v6, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v9, v0}, Lcom/samsung/android/location/ISLocationManager$Stub;->getCellCountForEventGeofence(I)I

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v17

    :pswitch_1e
    move-object v7, v11

    move-object v6, v12

    move-object v8, v13

    move-object v9, v15

    invoke-virtual {v6, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v9, v0}, Lcom/samsung/android/location/ISLocationManager$Stub;->stopLearning(I)I

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v17

    :pswitch_1f
    move-object v7, v11

    move-object v6, v12

    move-object v8, v13

    move-object v9, v15

    invoke-virtual {v6, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v9, v0}, Lcom/samsung/android/location/ISLocationManager$Stub;->startLearning(I)I

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v17

    :pswitch_20
    move-object v7, v11

    move-object v6, v12

    move-object v8, v13

    move-object v9, v15

    invoke-virtual {v6, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Lcom/samsung/android/location/ISLocationManager$Stub;->removeGeofence(ILjava/lang/String;)I

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v8, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v17

    :pswitch_21
    move-object v7, v11

    move-object v6, v12

    move-object v8, v13

    move-object v9, v15

    invoke-virtual {v6, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_7

    sget-object v1, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v6}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    goto :goto_6

    :cond_7
    nop

    :goto_6
    invoke-virtual {v9, v0, v1}, Lcom/samsung/android/location/ISLocationManager$Stub;->stopGeofence(ILandroid/app/PendingIntent;)I

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v8, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v17

    :pswitch_22
    move-object v7, v11

    move-object v6, v12

    move-object v8, v13

    move-object v9, v15

    invoke-virtual {v6, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_8

    sget-object v1, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v6}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    goto :goto_7

    :cond_8
    nop

    :goto_7
    invoke-virtual {v9, v0, v1}, Lcom/samsung/android/location/ISLocationManager$Stub;->startGeofence(ILandroid/app/PendingIntent;)I

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v8, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v17

    :pswitch_23
    move-object v7, v11

    move-object v6, v12

    move-object v8, v13

    move-object v9, v15

    invoke-virtual {v6, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lcom/samsung/android/location/SemGeofence;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v6}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/location/SemGeofence;

    goto :goto_8

    :cond_9
    nop

    :goto_8
    move-object v0, v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Lcom/samsung/android/location/ISLocationManager$Stub;->addGeofence(Lcom/samsung/android/location/SemGeofence;Ljava/lang/String;)I

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v8, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v17

    :pswitch_24
    move-object v7, v11

    move-object v6, v12

    move-object v8, v13

    move-object v9, v15

    invoke-virtual {v6, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Lcom/samsung/android/location/ISLocationManager$Stub;->syncGeofence([ILjava/lang/String;)I

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v8, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v17

    :pswitch_25
    move-object v7, v11

    move-object v6, v12

    move-object v8, v13

    move-object v9, v15

    invoke-virtual {v6, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/samsung/android/location/ISLocationManager$Stub;->getGeofenceIdList(Ljava/lang/String;)[I

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    return v17

    :pswitch_26
    move-object v7, v11

    move-object v6, v12

    move-object v8, v13

    move-object v9, v15

    invoke-virtual {v6, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/location/IGpsGeofenceHardware$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IGpsGeofenceHardware;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/samsung/android/location/ISLocationManager$Stub;->setGpsGeofenceHardware(Landroid/location/IGpsGeofenceHardware;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v17

    :cond_a
    move-object v7, v11

    move-object v6, v12

    move-object v8, v13

    move-object v9, v15

    invoke-virtual {v8, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v17

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

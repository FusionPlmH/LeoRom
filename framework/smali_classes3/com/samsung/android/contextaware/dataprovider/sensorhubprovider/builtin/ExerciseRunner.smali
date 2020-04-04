.class public Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;
.super Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;
.source "ExerciseRunner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;
    }
.end annotation


# static fields
.field private static final DATA_TYPE_BATCH:B = 0x0t

.field private static final DATA_TYPE_GPS_STATUS:B = 0x1t


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLastGpsEnabled:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSensorType:I

.field private mTotalPedoDistance:D

.field private mTotalStepCount:J

.field private startTimeStamp:J


# direct methods
.method public constructor <init>(ILandroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V
    .locals 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;-><init>(ILandroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;->mTotalStepCount:J

    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;->mTotalPedoDistance:D

    iput-wide v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;->startTimeStamp:J

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;->mSensorType:I

    iput-boolean v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;->mLastGpsEnabled:Z

    new-instance v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$1;-><init>(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;->mReceiver:Landroid/content/BroadcastReceiver;

    iput-object p2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;->isGpsEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;->mLastGpsEnabled:Z

    return v0
.end method

.method static synthetic access$202(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;->mLastGpsEnabled:Z

    return p1
.end method

.method static synthetic access$300(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;BBB[B)Z
    .locals 1

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;->sendPropertyValueToSensorHub(BBB[B)Z

    move-result v0

    return v0
.end method

.method private isGpsEnabled()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public final clear()V
    .locals 2

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;->mTotalStepCount:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;->mTotalPedoDistance:D

    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->clear()V

    return-void
.end method

.method public final disable()V
    .locals 2

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->disable()V

    return-void
.end method

.method public final enable()V
    .locals 4

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    invoke-direct {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;->isGpsEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;->mLastGpsEnabled:Z

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.location.PROVIDERS_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;->startTimeStamp:J

    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->enable()V

    return-void
.end method

.method public final getContextType()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_EXERCISE:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getContextValueNames()[Ljava/lang/String;
    .locals 13

    const-string v0, "TimeStampArray"

    const-string v1, "DataCount"

    const-string v2, "LatitudeArray"

    const-string v3, "LongitudeArray"

    const-string v4, "AltitudeArray"

    const-string v5, "PressureArray"

    const-string v6, "StepCountDiffArray"

    const-string v7, "PedoDistanceDiffArray"

    const-string v8, "PedoSpeedArray"

    const-string v9, "SpeedArray"

    const-string v10, "GpsStatus"

    const-string v11, "TotalStepCount"

    const-string v12, "TotalPedoDistance"

    filled-new-array/range {v0 .. v12}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final getDataPacketToRegisterLib()[B
    .locals 2

    iget v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;->mSensorType:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v0

    return-object v0
.end method

.method public getFaultDetectionResult()Landroid/os/Bundle;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;->checkFaultDetectionResult()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getFaultDetectionResult()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method protected final getInstLibType()B
    .locals 1

    const/16 v0, 0x2e

    return v0
.end method

.method protected final getPowerObserver()Lcom/samsung/android/contextaware/manager/IApPowerObserver;
    .locals 0

    return-object p0
.end method

.method protected final getPowerResetObserver()Lcom/samsung/android/contextaware/manager/ISensorHubResetObserver;
    .locals 0

    return-object p0
.end method

.method protected final getTimeChangeObserver()Lcom/samsung/android/contextaware/utilbundle/ITimeChangeObserver;
    .locals 0

    return-object p0
.end method

.method public final parse([BI)I
    .locals 54

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;->getContextValueNames()[Ljava/lang/String;

    move-result-object v3

    array-length v4, v1

    sub-int/2addr v4, v2

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    const/4 v6, -0x1

    if-gez v4, :cond_0

    sget-object v4, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    return v6

    :cond_0
    add-int/lit8 v4, v2, 0x1

    aget-byte v2, v1, v2

    if-nez v2, :cond_7

    array-length v7, v1

    sub-int/2addr v7, v4

    const/4 v8, 0x6

    sub-int/2addr v7, v8

    if-gez v7, :cond_1

    sget-object v5, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v5}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    return v6

    :cond_1
    const/16 v7, 0x8

    new-array v9, v7, [B

    const/4 v10, 0x0

    aput-byte v10, v9, v10

    aput-byte v10, v9, v5

    const/4 v11, 0x2

    aput-byte v10, v9, v11

    const/4 v12, 0x3

    aput-byte v10, v9, v12

    add-int/lit8 v13, v4, 0x1

    aget-byte v4, v1, v4

    const/4 v14, 0x4

    aput-byte v4, v9, v14

    add-int/lit8 v4, v13, 0x1

    aget-byte v13, v1, v13

    const/4 v15, 0x5

    aput-byte v13, v9, v15

    add-int/lit8 v13, v4, 0x1

    aget-byte v4, v1, v4

    aput-byte v4, v9, v8

    add-int/lit8 v4, v13, 0x1

    aget-byte v13, v1, v13

    const/16 v16, 0x7

    aput-byte v13, v9, v16

    invoke-static {v9}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v17

    iget-wide v8, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;->startTimeStamp:J

    const-wide/16 v20, 0x3e8

    add-long v8, v8, v20

    add-long v17, v17, v8

    new-array v8, v14, [B

    aput-byte v10, v8, v10

    aput-byte v10, v8, v5

    add-int/lit8 v9, v4, 0x1

    aget-byte v4, v1, v4

    aput-byte v4, v8, v11

    add-int/lit8 v4, v9, 0x1

    aget-byte v9, v1, v9

    aput-byte v9, v8, v12

    invoke-static {v8}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v8

    if-gtz v8, :cond_2

    sget-object v5, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_DATA_FIELD_PARSING:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v5}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    return v6

    :cond_2
    array-length v9, v1

    sub-int/2addr v9, v4

    mul-int/lit8 v13, v8, 0x15

    sub-int/2addr v9, v13

    if-gez v9, :cond_3

    sget-object v5, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v5}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    return v6

    :cond_3
    new-array v9, v8, [J

    new-array v13, v8, [D

    new-array v15, v8, [D

    new-array v14, v8, [F

    new-array v12, v8, [F

    new-array v11, v8, [J

    new-array v5, v8, [D

    new-array v6, v8, [D

    new-array v10, v8, [F

    move/from16 v20, v4

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v8, :cond_6

    mul-int/lit16 v7, v4, 0x3e8

    move/from16 v29, v8

    int-to-long v7, v7

    add-long v7, v7, v17

    aput-wide v7, v9, v4

    add-int/lit8 v7, v20, 0x1

    aget-byte v8, v1, v20

    add-int/lit8 v20, v7, 0x1

    aget-byte v7, v1, v7

    add-int/lit8 v21, v20, 0x1

    aget-byte v20, v1, v20

    add-int/lit8 v30, v21, 0x1

    aget-byte v21, v1, v21

    add-int/lit8 v31, v30, 0x1

    aget-byte v30, v1, v30

    move/from16 v32, v2

    and-int/lit16 v2, v8, 0x80

    move-object/from16 v33, v9

    const/16 v9, 0x80

    if-ne v2, v9, :cond_4

    const/16 v2, 0x8

    new-array v9, v2, [B

    const/4 v2, 0x0

    const/16 v27, -0x1

    aput-byte v27, v9, v2

    const/4 v2, 0x1

    aput-byte v27, v9, v2

    const/4 v2, 0x2

    aput-byte v27, v9, v2

    const/4 v2, 0x3

    aput-byte v8, v9, v2

    const/4 v2, 0x4

    aput-byte v7, v9, v2

    const/16 v22, 0x5

    aput-byte v20, v9, v22

    const/16 v19, 0x6

    aput-byte v21, v9, v19

    aput-byte v30, v9, v16

    invoke-static {v9}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v34

    shr-long v34, v34, v2

    goto :goto_1

    :cond_4
    const/4 v2, 0x4

    const/16 v9, 0x8

    new-array v2, v9, [B

    const/4 v9, 0x0

    aput-byte v9, v2, v9

    const/16 v23, 0x1

    aput-byte v9, v2, v23

    const/16 v23, 0x2

    aput-byte v9, v2, v23

    const/4 v9, 0x3

    aput-byte v8, v2, v9

    const/4 v9, 0x4

    aput-byte v7, v2, v9

    const/16 v22, 0x5

    aput-byte v20, v2, v22

    const/16 v19, 0x6

    aput-byte v21, v2, v19

    aput-byte v30, v2, v16

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v34

    shr-long v34, v34, v9

    :goto_1
    move-wide/from16 v37, v34

    move-object/from16 v41, v3

    move/from16 v40, v7

    move/from16 v39, v8

    move-wide/from16 v7, v37

    long-to-double v2, v7

    const-wide v34, 0x4197d78400000000L    # 1.0E8

    div-double v2, v2, v34

    aput-wide v2, v13, v4

    add-int/lit8 v2, v31, 0x1

    aget-byte v3, v1, v31

    add-int/lit8 v9, v2, 0x1

    aget-byte v2, v1, v2

    add-int/lit8 v31, v9, 0x1

    aget-byte v9, v1, v9

    add-int/lit8 v20, v31, 0x1

    aget-byte v21, v1, v31

    move-wide/from16 v42, v7

    and-int/lit8 v7, v30, 0x8

    const/16 v8, 0x8

    if-ne v7, v8, :cond_5

    new-array v7, v8, [B

    const/4 v8, 0x0

    const/16 v27, -0x1

    aput-byte v27, v7, v8

    const/4 v8, 0x1

    aput-byte v27, v7, v8

    const/4 v8, 0x2

    aput-byte v27, v7, v8

    and-int/lit8 v8, v30, 0xf

    or-int/lit16 v8, v8, 0xf0

    int-to-byte v8, v8

    const/16 v24, 0x3

    aput-byte v8, v7, v24

    const/4 v8, 0x4

    aput-byte v3, v7, v8

    const/4 v8, 0x5

    aput-byte v2, v7, v8

    const/4 v8, 0x6

    aput-byte v9, v7, v8

    aput-byte v21, v7, v16

    invoke-static {v7}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v7

    move-wide/from16 v36, v7

    const/4 v7, 0x5

    const/16 v19, 0x6

    goto :goto_2

    :cond_5
    const/16 v7, 0x8

    new-array v8, v7, [B

    const/16 v28, 0x0

    aput-byte v28, v8, v28

    const/16 v26, 0x1

    aput-byte v28, v8, v26

    const/16 v25, 0x2

    aput-byte v28, v8, v25

    and-int/lit8 v7, v30, 0xf

    int-to-byte v7, v7

    const/16 v24, 0x3

    aput-byte v7, v8, v24

    const/4 v7, 0x4

    aput-byte v3, v8, v7

    const/4 v7, 0x5

    aput-byte v2, v8, v7

    const/16 v19, 0x6

    aput-byte v9, v8, v19

    aput-byte v21, v8, v16

    invoke-static {v8}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v36

    :goto_2
    move-wide/from16 v44, v36

    move/from16 v47, v2

    move/from16 v46, v3

    move-wide/from16 v7, v44

    long-to-double v2, v7

    div-double v2, v2, v34

    aput-wide v2, v15, v4

    const/4 v2, 0x4

    new-array v3, v2, [B

    const/4 v2, 0x0

    aput-byte v2, v3, v2

    add-int/lit8 v2, v20, 0x1

    aget-byte v20, v1, v20

    const/16 v22, 0x1

    aput-byte v20, v3, v22

    add-int/lit8 v20, v2, 0x1

    aget-byte v2, v1, v2

    const/16 v22, 0x2

    aput-byte v2, v3, v22

    add-int/lit8 v2, v20, 0x1

    aget-byte v20, v1, v20

    const/16 v22, 0x3

    aput-byte v20, v3, v22

    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    move-wide/from16 v48, v7

    int-to-double v7, v3

    const-wide/high16 v34, 0x4059000000000000L    # 100.0

    div-double v7, v7, v34

    double-to-float v3, v7

    aput v3, v14, v4

    const/4 v3, 0x4

    new-array v7, v3, [B

    const/4 v3, 0x0

    aput-byte v3, v7, v3

    add-int/lit8 v3, v2, 0x1

    aget-byte v2, v1, v2

    const/4 v8, 0x1

    aput-byte v2, v7, v8

    add-int/lit8 v2, v3, 0x1

    aget-byte v3, v1, v3

    const/4 v8, 0x2

    aput-byte v3, v7, v8

    add-int/lit8 v3, v2, 0x1

    aget-byte v2, v1, v2

    const/4 v8, 0x3

    aput-byte v2, v7, v8

    invoke-static {v7}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    int-to-double v7, v2

    const-wide v36, 0x408f400000000000L    # 1000.0

    div-double v7, v7, v36

    double-to-float v2, v7

    aput v2, v12, v4

    iget-wide v7, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;->mTotalStepCount:J

    add-int/lit8 v2, v3, 0x1

    aget-byte v3, v1, v3

    move-object/from16 v51, v14

    move-object/from16 v50, v15

    int-to-long v14, v3

    add-long/2addr v7, v14

    iput-wide v7, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;->mTotalStepCount:J

    iget-wide v7, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;->mTotalStepCount:J

    aput-wide v7, v11, v4

    iget-wide v7, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;->mTotalPedoDistance:D

    const/4 v3, 0x4

    new-array v14, v3, [B

    const/4 v3, 0x0

    aput-byte v3, v14, v3

    const/4 v15, 0x1

    aput-byte v3, v14, v15

    add-int/lit8 v3, v2, 0x1

    aget-byte v2, v1, v2

    const/4 v15, 0x2

    aput-byte v2, v14, v15

    add-int/lit8 v2, v3, 0x1

    aget-byte v3, v1, v3

    const/4 v15, 0x3

    aput-byte v3, v14, v15

    invoke-static {v14}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    int-to-double v14, v3

    div-double v14, v14, v34

    add-double/2addr v7, v14

    iput-wide v7, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;->mTotalPedoDistance:D

    iget-wide v7, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;->mTotalPedoDistance:D

    aput-wide v7, v5, v4

    add-int/lit8 v3, v2, 0x1

    aget-byte v2, v1, v2

    add-int/lit8 v7, v3, 0x1

    aget-byte v3, v1, v3

    const/4 v8, 0x4

    new-array v14, v8, [B

    const/4 v15, 0x0

    aput-byte v15, v14, v15

    const/16 v20, 0x1

    aput-byte v15, v14, v20

    const/4 v15, 0x2

    aput-byte v2, v14, v15

    const/4 v15, 0x3

    aput-byte v3, v14, v15

    invoke-static {v14}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v14

    shr-int/2addr v14, v8

    int-to-double v14, v14

    div-double v14, v14, v34

    aput-wide v14, v6, v4

    new-array v14, v8, [B

    const/4 v15, 0x0

    aput-byte v15, v14, v15

    const/16 v20, 0x1

    aput-byte v15, v14, v20

    and-int/lit8 v8, v3, 0xf

    int-to-byte v8, v8

    const/16 v22, 0x2

    aput-byte v8, v14, v22

    add-int/lit8 v20, v7, 0x1

    aget-byte v7, v1, v7

    const/4 v8, 0x3

    aput-byte v7, v14, v8

    invoke-static {v14}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v7

    move/from16 v52, v9

    int-to-double v8, v7

    div-double v8, v8, v34

    double-to-float v7, v8

    aput v7, v10, v4

    add-int/lit8 v4, v4, 0x1

    move/from16 v8, v29

    move/from16 v2, v32

    move-object/from16 v9, v33

    move-object/from16 v3, v41

    move-object/from16 v15, v50

    move-object/from16 v14, v51

    const/16 v7, 0x8

    goto/16 :goto_0

    :cond_6
    move/from16 v32, v2

    move-object/from16 v41, v3

    move/from16 v29, v8

    move-object/from16 v33, v9

    move-object/from16 v51, v14

    move-object/from16 v50, v15

    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;->TimeStamp:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;

    invoke-static {v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;)B

    move-result v3

    aget-object v3, v41, v3

    move-object/from16 v4, v33

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[J)V

    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;->DataCount:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;

    invoke-static {v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;)B

    move-result v3

    aget-object v3, v41, v3

    move/from16 v7, v29

    invoke-virtual {v2, v3, v7}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;->Latitude:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;

    invoke-static {v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;)B

    move-result v3

    aget-object v3, v41, v3

    invoke-virtual {v2, v3, v13}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[D)V

    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;->Longitude:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;

    invoke-static {v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;)B

    move-result v3

    aget-object v3, v41, v3

    move-object/from16 v8, v50

    invoke-virtual {v2, v3, v8}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[D)V

    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;->Altitude:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;

    invoke-static {v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;)B

    move-result v3

    aget-object v3, v41, v3

    move-object/from16 v9, v51

    invoke-virtual {v2, v3, v9}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[F)V

    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;->Pressure:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;

    invoke-static {v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;)B

    move-result v3

    aget-object v3, v41, v3

    invoke-virtual {v2, v3, v12}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[F)V

    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;->StepCountDiff:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;

    invoke-static {v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;)B

    move-result v3

    aget-object v3, v41, v3

    invoke-virtual {v2, v3, v11}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[J)V

    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;->PedoDistanceDiff:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;

    invoke-static {v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;)B

    move-result v3

    aget-object v3, v41, v3

    invoke-virtual {v2, v3, v5}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[D)V

    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;->PedoSpeed:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;

    invoke-static {v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;)B

    move-result v3

    aget-object v3, v41, v3

    invoke-virtual {v2, v3, v6}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[D)V

    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;->Speed:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;

    invoke-static {v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;)B

    move-result v3

    aget-object v3, v41, v3

    invoke-virtual {v2, v3, v10}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[F)V

    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->notifyObserver()V

    nop

    move/from16 v2, v32

    goto :goto_3

    :cond_7
    move/from16 v32, v2

    move-object/from16 v41, v3

    const/4 v3, 0x1

    if-ne v2, v3, :cond_9

    array-length v5, v1

    sub-int/2addr v5, v4

    sub-int/2addr v5, v3

    if-gez v5, :cond_8

    sget-object v3, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    const/4 v3, -0x1

    return v3

    :cond_8
    add-int/lit8 v20, v4, 0x1

    aget-byte v3, v1, v4

    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;->GpsStatus:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;

    invoke-static {v5}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;)B

    move-result v5

    aget-object v5, v41, v5

    int-to-short v6, v3

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;S)V

    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->notifyObserver()V

    nop

    :goto_3
    return v20

    :cond_9
    sget-object v3, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_DATA_FIELD_PARSING:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    const/4 v3, -0x1

    return v3
.end method

.method public final setPropertyValue(ILjava/lang/Object;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(ITE;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x3f

    if-ne p1, v3, :cond_1

    move-object v3, p2

    check-cast v3, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exercise data type = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    iget v4, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;->mSensorType:I

    or-int/2addr v4, v3

    iput v4, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;->mSensorType:I

    const/16 v4, 0x17

    const/16 v5, 0x2e

    const/16 v6, 0x25

    new-array v7, v2, [B

    invoke-direct {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;->isGpsEnabled()Z

    move-result v8

    if-ne v8, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    int-to-byte v2, v2

    aput-byte v2, v7, v1

    invoke-virtual {p0, v4, v5, v6, v7}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;->sendPropertyValueToSensorHub(BBB[B)Z

    goto :goto_1

    :cond_1
    if-nez p1, :cond_2

    const/4 v3, 0x2

    new-array v3, v3, [B

    aput-byte v2, v3, v1

    aput-byte v1, v3, v2

    const/16 v1, -0x48

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;->getInstLibType()B

    move-result v2

    invoke-virtual {p0, v1, v2, v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;->sendCmdToSensorHub(BB[B)V

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.class public Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;
.super Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;
.source "ApdrRunner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;
    }
.end annotation


# static fields
.field private static final DEFAULT_WAKE_UP_STEP_COUNT:I = 0x1f4

.field private static final DEFAULT_WAKE_UP_TIME_COUNT:I = 0x258

.field private static final STEP_COUNT_HIGH:I = 0x32

.field private static final STEP_COUNT_LOW:I = 0x1f4

.field private static final STEP_COUNT_MEDIUM:I = 0x12c

.field private static final TIME_COUNT_HIGH:I = 0x3c

.field private static final TIME_COUNT_LOW:I = 0x258

.field private static final TIME_COUNT_MEDIUM:I = 0x78

.field private static final TIME_SYNC_TIMER:I = 0x1c20


# instance fields
.field private mLppResolution:I

.field private mSyncSched:Ljava/util/concurrent/ScheduledExecutorService;

.field private final mSyncTime:Landroid/text/format/Time;

.field private mSyncTimeTask:Ljava/lang/Runnable;

.field private mWakeUpStepCount:I

.field private mWakeUpTimeCount:I


# direct methods
.method public constructor <init>(ILandroid/content/Context;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;-><init>(ILandroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V

    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->mSyncTime:Landroid/text/format/Time;

    const/16 v1, 0x1f4

    iput v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->mWakeUpStepCount:I

    const/16 v1, 0x258

    iput v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->mWakeUpTimeCount:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->mLppResolution:I

    nop

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->mSyncSched:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->mSyncTimeTask:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->sendCurTimeToSensorHub()V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->mSyncSched:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method static synthetic access$202(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;Ljava/util/concurrent/ScheduledExecutorService;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->mSyncSched:Ljava/util/concurrent/ScheduledExecutorService;

    return-object p1
.end method

.method static synthetic access$300(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->mSyncTimeTask:Ljava/lang/Runnable;

    return-object v0
.end method

.method private sendCurTimeToSensorHub()V
    .locals 4

    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    const-string v1, "GMT+00:00"

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->mSyncTime:Landroid/text/format/Time;

    invoke-virtual {v1, v0}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    const/4 v1, 0x3

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    iget v2, v0, Landroid/text/format/Time;->hour:I

    int-to-byte v2, v2

    const/4 v3, 0x0

    aput-byte v2, v1, v3

    iget v2, v0, Landroid/text/format/Time;->minute:I

    int-to-byte v2, v2

    const/4 v3, 0x1

    aput-byte v2, v1, v3

    iget v2, v0, Landroid/text/format/Time;->second:I

    int-to-byte v2, v2

    const/4 v3, 0x2

    aput-byte v2, v1, v3

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
    .end array-data
.end method


# virtual methods
.method public final clear()V
    .locals 0

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->clear()V

    return-void
.end method

.method public final disable()V
    .locals 0

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->disable()V

    return-void
.end method

.method public final enable()V
    .locals 1

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->enable()V

    new-instance v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$1;-><init>(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->mSyncTimeTask:Ljava/lang/Runnable;

    return-void
.end method

.method public final getContextType()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_APDR:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getContextValueNames()[Ljava/lang/String;
    .locals 11

    const-string v0, "Alert"

    const-string v1, "Count"

    const-string v2, "Hour"

    const-string v3, "Minute"

    const-string v4, "Second"

    const-string v5, "doe"

    const-string v6, "TimeDifference"

    const-string v7, "IncrementEast"

    const-string v8, "IncrementNorth"

    const-string v9, "ActivityType"

    const-string v10, "StayingArea"

    filled-new-array/range {v0 .. v10}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final getDataPacketToRegisterLib()[B
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [B

    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->mWakeUpStepCount:I

    div-int/lit8 v1, v1, 0x5

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->mWakeUpTimeCount:I

    div-int/lit8 v1, v1, 0x5

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    return-object v0
.end method

.method public getFaultDetectionResult()Landroid/os/Bundle;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->checkFaultDetectionResult()Z

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

    const/16 v0, 0x1c

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

.method public final getSyncTime()Landroid/text/format/Time;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->mSyncTime:Landroid/text/format/Time;

    return-object v0
.end method

.method protected final getTimeChangeObserver()Lcom/samsung/android/contextaware/utilbundle/ITimeChangeObserver;
    .locals 0

    return-object p0
.end method

.method public gpsAvailable()V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [B

    const/4 v2, 0x0

    aput-byte v0, v1, v2

    move-object v0, v1

    const/16 v1, 0x17

    const/16 v2, 0x1c

    const/4 v3, 0x5

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->sendPropertyValueToSensorHub(BBB[B)Z

    return-void
.end method

.method public final gpsBatchStarted()V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/4 v2, 0x3

    aput-byte v2, v0, v1

    const/16 v1, 0x17

    const/16 v2, 0x1c

    const/4 v3, 0x5

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->sendPropertyValueToSensorHub(BBB[B)Z

    return-void
.end method

.method public gpsOffBatchStopped()V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/4 v2, 0x4

    aput-byte v2, v0, v1

    const/16 v1, 0x17

    const/16 v2, 0x1c

    const/4 v3, 0x5

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->sendPropertyValueToSensorHub(BBB[B)Z

    return-void
.end method

.method public gpsOnBatchStopped()V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x5

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    const/16 v2, 0x17

    const/16 v3, 0x1c

    invoke-virtual {p0, v2, v3, v1, v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->sendPropertyValueToSensorHub(BBB[B)Z

    return-void
.end method

.method public gpsUnavailable()V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte v1, v0, v1

    const/16 v1, 0x17

    const/16 v2, 0x1c

    const/4 v3, 0x5

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->sendPropertyValueToSensorHub(BBB[B)Z

    return-void
.end method

.method public final locationUpdate(Landroid/location/Location;)V
    .locals 17

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    const-wide v2, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    mul-double/2addr v4, v2

    double-to-int v1, v4

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getAccuracy()F

    move-result v3

    float-to-int v3, v3

    int-to-byte v3, v3

    new-instance v4, Landroid/text/format/Time;

    invoke-direct {v4}, Landroid/text/format/Time;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getTime()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Landroid/text/format/Time;->set(J)V

    const-string v5, "GMT+00:00"

    invoke-virtual {v4, v5}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    const-string/jumbo v7, "satellites"

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    int-to-byte v6, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "satellites:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getSpeed()F

    move-result v7

    const/high16 v8, 0x42c80000    # 100.0f

    mul-float/2addr v7, v8

    float-to-int v7, v7

    const/4 v8, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    if-eqz v9, :cond_3

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v11

    const-string v12, "gps"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    const/4 v10, 0x1

    goto :goto_0

    :cond_1
    nop

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "network"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    const/4 v10, 0x2

    goto :goto_0

    :cond_2
    nop

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v11

    const-string v12, "GPS batch"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    const/4 v10, 0x4

    :cond_3
    :goto_0
    const/16 v11, 0x16

    invoke-static {v11}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v12

    const/4 v13, 0x4

    invoke-static {v0, v13}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-static {v1, v13}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-static {v2, v13}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v12, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget v13, v4, Landroid/text/format/Time;->hour:I

    int-to-byte v13, v13

    invoke-virtual {v12, v13}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget v13, v4, Landroid/text/format/Time;->minute:I

    int-to-byte v13, v13

    invoke-virtual {v12, v13}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget v13, v4, Landroid/text/format/Time;->second:I

    int-to-byte v13, v13

    invoke-virtual {v12, v13}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {v12, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/4 v13, 0x2

    invoke-static {v7, v13}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-static {v8, v13}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v12, v10}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const-string v13, "LPPApdrR"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "loc time:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v16, v12

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getTime()J

    move-result-wide v11

    invoke-virtual {v14, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v13, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v11, "LPPApdrR"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "hr:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v4, Landroid/text/format/Time;->hour:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " min:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v4, Landroid/text/format/Time;->minute:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " sec:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v4, Landroid/text/format/Time;->second:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v11, "LPPApdrR"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "hr:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v4, Landroid/text/format/Time;->hour:I

    int-to-byte v13, v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " min:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v4, Landroid/text/format/Time;->minute:I

    int-to-byte v13, v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " sec:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v4, Landroid/text/format/Time;->second:I

    int-to-byte v13, v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    nop

    move-object/from16 v11, v16

    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v12

    move-object/from16 v13, p0

    const/16 v14, 0x16

    invoke-virtual {v13, v14, v12}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->sendCommonValueToSensorHub(B[B)Z

    return-void
.end method

.method public final parse([BI)I
    .locals 17

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->getContextValueNames()[Ljava/lang/String;

    move-result-object v2

    const-string v3, "LppApdr"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "parse:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v5, p2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    array-length v3, v0

    sub-int/2addr v3, v1

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    const/4 v6, -0x1

    if-gez v3, :cond_0

    sget-object v3, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    return v6

    :cond_0
    aget-byte v3, v0, v1

    const/4 v7, 0x2

    if-ne v3, v7, :cond_1

    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v3

    sget-object v6, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->StayingArea:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;

    invoke-static {v6}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;)I

    move-result v6

    aget-object v6, v2, v6

    add-int/2addr v1, v4

    aget-byte v7, v0, v1

    invoke-virtual {v3, v6, v7}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->notifyObserver()V

    add-int/2addr v1, v4

    return v1

    :cond_1
    add-int/lit8 v3, v1, 0x1

    aget-byte v1, v0, v1

    if-eq v1, v4, :cond_2

    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_DATA_FIELD_PARSING:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    return v6

    :cond_2
    add-int/lit8 v1, v3, 0x1

    aget-byte v3, v0, v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dataSize:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    if-gtz v3, :cond_3

    sget-object v4, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_DATA_FIELD_PARSING:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    return v6

    :cond_3
    array-length v4, v0

    sub-int/2addr v4, v1

    const/4 v7, 0x4

    const/4 v8, 0x5

    mul-int/2addr v8, v3

    add-int/2addr v7, v8

    if-ge v4, v7, :cond_4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "packet len:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v7, v0

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " tmpNext:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    sget-object v4, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    return v6

    :cond_4
    add-int/lit8 v4, v1, 0x1

    aget-byte v1, v0, v1

    add-int/lit8 v6, v4, 0x1

    aget-byte v4, v0, v4

    add-int/lit8 v7, v6, 0x1

    aget-byte v6, v0, v6

    add-int/lit8 v8, v7, 0x1

    aget-byte v7, v0, v7

    new-array v9, v3, [J

    new-array v10, v3, [I

    new-array v11, v3, [I

    new-array v12, v3, [I

    const/4 v13, 0x0

    :goto_0
    if-ge v13, v3, :cond_5

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "packet length:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v15, v0

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, "  tmpNext:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    add-int/lit8 v14, v8, 0x1

    aget-byte v8, v0, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x8

    add-int/lit8 v15, v14, 0x1

    aget-byte v14, v0, v14

    and-int/lit16 v14, v14, 0xff

    add-int/2addr v8, v14

    mul-int/lit8 v8, v8, 0x64

    move/from16 v16, v7

    int-to-long v7, v8

    aput-wide v7, v9, v13

    add-int/lit8 v7, v15, 0x1

    aget-byte v8, v0, v15

    mul-int/lit8 v8, v8, 0xa

    aput v8, v10, v13

    add-int/lit8 v8, v7, 0x1

    aget-byte v7, v0, v7

    mul-int/lit8 v7, v7, 0xa

    aput v7, v11, v13

    add-int/lit8 v7, v8, 0x1

    aget-byte v8, v0, v8

    aput v8, v12, v13

    add-int/lit8 v13, v13, 0x1

    move v8, v7

    move/from16 v7, v16

    goto :goto_0

    :cond_5
    move/from16 v16, v7

    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v7

    sget-object v13, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->Count:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;

    invoke-static {v13}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;)I

    move-result v13

    aget-object v13, v2, v13

    invoke-virtual {v7, v13, v3}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v7

    sget-object v13, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->Hour:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;

    invoke-static {v13}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;)I

    move-result v13

    aget-object v13, v2, v13

    invoke-virtual {v7, v13, v1}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v7

    sget-object v13, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->Minute:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;

    invoke-static {v13}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;)I

    move-result v13

    aget-object v13, v2, v13

    invoke-virtual {v7, v13, v4}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v7

    sget-object v13, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->Second:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;

    invoke-static {v13}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;)I

    move-result v13

    aget-object v13, v2, v13

    invoke-virtual {v7, v13, v6}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v7

    sget-object v13, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->doe:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;

    invoke-static {v13}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;)I

    move-result v13

    aget-object v13, v2, v13

    move/from16 v14, v16

    invoke-virtual {v7, v13, v14}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v7

    sget-object v13, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->TimeDifference:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;

    invoke-static {v13}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;)I

    move-result v13

    aget-object v13, v2, v13

    invoke-virtual {v7, v13, v9}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[J)V

    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v7

    sget-object v13, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->IncrementEast:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;

    invoke-static {v13}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;)I

    move-result v13

    aget-object v13, v2, v13

    invoke-virtual {v7, v13, v10}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[I)V

    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v7

    sget-object v13, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->IncrementNorth:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;

    invoke-static {v13}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;)I

    move-result v13

    aget-object v13, v2, v13

    invoke-virtual {v7, v13, v11}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[I)V

    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v7

    sget-object v13, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->ActivityType:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;

    invoke-static {v13}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;)I

    move-result v13

    aget-object v13, v2, v13

    invoke-virtual {v7, v13, v12}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[I)V

    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->notifyObserver()V

    return v8
.end method

.method public final sendSleepModeCmdToSensorHub([B)V
    .locals 5

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->getInstLibType()B

    move-result v0

    if-ltz v0, :cond_1

    if-eqz p1, :cond_1

    array-length v0, p1

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    array-length v0, p1

    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-array v0, v0, [B

    new-array v2, v1, [B

    const/4 v3, 0x0

    aput-byte v1, v2, v3

    move-object v1, v2

    array-length v2, v1

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    array-length v2, v1

    array-length v4, p1

    invoke-static {p1, v3, v0, v2, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    const/16 v2, -0x4f

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->getInstLibType()B

    move-result v3

    invoke-super {p0, v2, v3, v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->sendCmdToSensorHub(BB[B)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public final setLppResolution(I)V
    .locals 5

    iput p1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->mLppResolution:I

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-nez p1, :cond_0

    const/16 v2, 0x1f4

    iput v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->mWakeUpStepCount:I

    const/16 v2, 0x258

    iput v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->mWakeUpTimeCount:I

    goto :goto_0

    :cond_0
    if-ne p1, v1, :cond_1

    const/16 v2, 0x12c

    iput v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->mWakeUpStepCount:I

    const/16 v2, 0x78

    iput v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->mWakeUpTimeCount:I

    goto :goto_0

    :cond_1
    if-ne p1, v0, :cond_2

    const/16 v2, 0x32

    iput v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->mWakeUpStepCount:I

    const/16 v2, 0x3c

    iput v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->mWakeUpTimeCount:I

    :cond_2
    :goto_0
    iget v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->mWakeUpStepCount:I

    div-int/lit8 v2, v2, 0x5

    invoke-static {v2, v1}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v2

    const/16 v3, 0x1c

    const/16 v4, 0x17

    invoke-virtual {p0, v4, v3, v1, v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->sendPropertyValueToSensorHub(BBB[B)Z

    iget v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->mWakeUpTimeCount:I

    div-int/lit8 v2, v2, 0x5

    invoke-static {v2, v1}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v1

    invoke-virtual {p0, v4, v3, v0, v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->sendPropertyValueToSensorHub(BBB[B)Z

    return-void
.end method

.method public final setMagneticSensorOffset(III)V
    .locals 8

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v1

    invoke-static {p2, v0}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v2

    invoke-static {p3, v0}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v0

    const/4 v3, 0x6

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    nop

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    const/16 v5, 0x17

    const/16 v6, 0x1c

    const/4 v7, 0x3

    invoke-virtual {p0, v5, v6, v7, v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->sendPropertyValueToSensorHub(BBB[B)Z

    return-void
.end method

.method public final setPropertyValue(ILjava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(ITE;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    const/16 v1, 0x20

    if-ne p1, v1, :cond_0

    move-object v1, p2

    check-cast v1, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->mLppResolution:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->setLppResolution(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

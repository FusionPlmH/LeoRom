.class public Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;
.super Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;
.source "LifeLogComponentRunner.java"

# interfaces
.implements Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ICurrentPositionRequestObserver;
.implements Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/IPassiveCurrrentPositionObserver;


# static fields
.field private static final DEFAULT_BATCHING_PERIOD:I = 0xffff

.field private static final DEFAULT_STOP_PERIOD:I = 0x12c

.field private static final DEFAULT_WAIT_PERIOD:I = 0x5dc


# instance fields
.field private final mCurrentPositionRequest:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/ICurrentPositionRequest;

.field protected final mPassiveCurrentPosition:Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;

.field private mStopPeriod:I

.field private mWaitPeriod:I


# direct methods
.method public constructor <init>(ILandroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V
    .locals 3

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;-><init>(ILandroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V

    const/16 v0, 0x12c

    iput v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->mStopPeriod:I

    const/16 v0, 0x5dc

    iput v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->mWaitPeriod:I

    new-instance v0, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;

    invoke-direct {v0, p2, p3, p0}, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/IPassiveCurrrentPositionObserver;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->mPassiveCurrentPosition:Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;

    new-instance v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner;

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->mCurrentPositionRequest:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/ICurrentPositionRequest;

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->mCurrentPositionRequest:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/ICurrentPositionRequest;

    invoke-interface {v0, p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/ICurrentPositionRequest;->registerObserver(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ICurrentPositionRequestObserver;)V

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->mCurrentPositionRequest:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/ICurrentPositionRequest;

    check-cast v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/ISensorHubRequestParser;

    invoke-virtual {p0, v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->addRequestParser(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/ISensorHubRequestParser;)V

    return-void
.end method

.method private checkMovingPacket([BI)Z
    .locals 2

    add-int/lit8 v0, p2, 0x5

    array-length v1, p1

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private checkStayingAreaPacket([BI)Z
    .locals 2

    add-int/lit8 v0, p2, 0x17

    array-length v1, p1

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private parseForMoving([BIJJ)I
    .locals 16

    move-object/from16 v0, p1

    move/from16 v1, p2

    array-length v2, v0

    sub-int/2addr v2, v1

    add-int/lit8 v2, v2, -0x4

    const/4 v3, -0x1

    if-gez v2, :cond_0

    sget-object v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    return v3

    :cond_0
    add-int/lit8 v2, v1, 0x1

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    add-int/lit8 v4, v2, 0x1

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    add-int/2addr v1, v2

    add-int/lit8 v2, v4, 0x1

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    const/16 v5, 0x8

    shl-int/2addr v4, v5

    add-int/2addr v1, v4

    add-int/lit8 v4, v2, 0x1

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v1, v2

    int-to-long v1, v1

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/CaTimeManager;->getInstance()Lcom/samsung/android/contextaware/utilbundle/CaTimeManager;

    move-result-object v6

    move-wide/from16 v7, p3

    move-wide/from16 v9, p5

    move-wide v11, v1

    invoke-virtual/range {v6 .. v12}, Lcom/samsung/android/contextaware/utilbundle/CaTimeManager;->getTimeStampForUTC(JJJ)J

    move-result-wide v6

    array-length v8, v0

    sub-int/2addr v8, v4

    add-int/lit8 v8, v8, -0x1

    if-gez v8, :cond_1

    sget-object v5, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v5}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    return v3

    :cond_1
    add-int/lit8 v8, v4, 0x1

    aget-byte v4, v0, v4

    if-gtz v4, :cond_2

    return v8

    :cond_2
    new-array v9, v4, [I

    new-array v10, v4, [I

    new-array v11, v4, [I

    const/4 v12, 0x0

    :goto_0
    if-ge v12, v4, :cond_5

    move-object/from16 v13, p0

    invoke-direct {v13, v0, v8}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->checkMovingPacket([BI)Z

    move-result v14

    if-eqz v14, :cond_4

    add-int/lit8 v14, v4, -0x1

    if-le v12, v14, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 v14, v8, 0x1

    aget-byte v8, v0, v8

    aput v8, v9, v12

    add-int/lit8 v8, v14, 0x1

    aget-byte v14, v0, v14

    aput v14, v10, v12

    add-int/lit8 v14, v8, 0x1

    aget-byte v8, v0, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x10

    add-int/lit8 v15, v14, 0x1

    aget-byte v14, v0, v14

    and-int/lit16 v14, v14, 0xff

    shl-int/2addr v14, v5

    add-int/2addr v8, v14

    add-int/lit8 v14, v15, 0x1

    aget-byte v15, v0, v15

    and-int/lit16 v15, v15, 0xff

    add-int/2addr v8, v15

    aput v8, v11, v12

    add-int/lit8 v12, v12, 0x1

    move v8, v14

    goto :goto_0

    :cond_4
    :goto_1
    sget-object v5, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v5}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    return v3

    :cond_5
    move-object/from16 v13, p0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->getContextValueNames()[Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v12

    aget-object v5, v3, v5

    invoke-virtual {v12, v5, v4}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/16 v12, 0x9

    aget-object v12, v3, v12

    invoke-virtual {v5, v12, v6, v7}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/16 v12, 0xa

    aget-object v12, v3, v12

    invoke-virtual {v5, v12, v9}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[I)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/16 v12, 0xb

    aget-object v12, v3, v12

    invoke-virtual {v5, v12, v10}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[I)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/16 v12, 0xc

    aget-object v12, v3, v12

    invoke-virtual {v5, v12, v11}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[I)V

    return v8
.end method

.method private parseForStayingArea([BIJJ)I
    .locals 26

    move-object/from16 v0, p1

    move/from16 v1, p2

    array-length v2, v0

    sub-int/2addr v2, v1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    const/4 v4, -0x1

    if-gez v2, :cond_0

    sget-object v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    return v4

    :cond_0
    add-int/lit8 v2, v1, 0x1

    aget-byte v1, v0, v1

    if-gtz v1, :cond_1

    return v2

    :cond_1
    new-array v5, v1, [J

    new-array v6, v1, [D

    new-array v7, v1, [D

    new-array v8, v1, [D

    new-array v9, v1, [I

    new-array v10, v1, [I

    new-array v11, v1, [I

    move v13, v2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    move-object/from16 v14, p0

    invoke-direct {v14, v0, v13}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->checkStayingAreaPacket([BI)Z

    move-result v15

    if-nez v15, :cond_2

    add-int/lit8 v15, v1, -0x1

    if-lt v2, v15, :cond_2

    sget-object v3, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    return v4

    :cond_2
    add-int/lit8 v15, v13, 0x1

    aget-byte v13, v0, v13

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x18

    add-int/lit8 v16, v15, 0x1

    aget-byte v15, v0, v15

    and-int/lit16 v15, v15, 0xff

    shl-int/lit8 v15, v15, 0x10

    add-int/2addr v13, v15

    add-int/lit8 v15, v16, 0x1

    aget-byte v4, v0, v16

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    add-int/2addr v13, v4

    add-int/lit8 v4, v15, 0x1

    aget-byte v15, v0, v15

    and-int/lit16 v15, v15, 0xff

    add-int/2addr v13, v15

    int-to-long v12, v13

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/CaTimeManager;->getInstance()Lcom/samsung/android/contextaware/utilbundle/CaTimeManager;

    move-result-object v17

    move-wide/from16 v18, p3

    move-wide/from16 v20, p5

    move-wide/from16 v22, v12

    invoke-virtual/range {v17 .. v23}, Lcom/samsung/android/contextaware/utilbundle/CaTimeManager;->getTimeStampForUTC(JJJ)J

    move-result-wide v15

    aput-wide v15, v5, v2

    add-int/lit8 v15, v4, 0x1

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x18

    add-int/lit8 v16, v15, 0x1

    aget-byte v15, v0, v15

    and-int/lit16 v15, v15, 0xff

    shl-int/lit8 v15, v15, 0x10

    add-int/2addr v4, v15

    add-int/lit8 v15, v16, 0x1

    aget-byte v3, v0, v16

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    add-int/2addr v4, v3

    add-int/lit8 v3, v15, 0x1

    aget-byte v15, v0, v15

    and-int/lit16 v15, v15, 0xff

    add-int/2addr v4, v15

    move-wide/from16 v24, v12

    int-to-double v12, v4

    const-wide v15, 0x412e848000000000L    # 1000000.0

    div-double/2addr v12, v15

    aput-wide v12, v6, v2

    add-int/lit8 v4, v3, 0x1

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    add-int/lit8 v12, v4, 0x1

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    add-int/2addr v3, v4

    add-int/lit8 v4, v12, 0x1

    aget-byte v12, v0, v12

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x8

    add-int/2addr v3, v12

    add-int/lit8 v12, v4, 0x1

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v3, v4

    int-to-double v3, v3

    div-double/2addr v3, v15

    aput-wide v3, v7, v2

    add-int/lit8 v3, v12, 0x1

    aget-byte v4, v0, v12

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x18

    add-int/lit8 v12, v3, 0x1

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    add-int/2addr v4, v3

    add-int/lit8 v3, v12, 0x1

    aget-byte v12, v0, v12

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x8

    add-int/2addr v4, v12

    add-int/lit8 v12, v3, 0x1

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v4, v3

    int-to-double v3, v4

    const-wide v15, 0x408f400000000000L    # 1000.0

    div-double/2addr v3, v15

    aput-wide v3, v8, v2

    add-int/lit8 v3, v12, 0x1

    aget-byte v4, v0, v12

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x18

    add-int/lit8 v12, v3, 0x1

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    add-int/2addr v4, v3

    add-int/lit8 v3, v12, 0x1

    aget-byte v12, v0, v12

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x8

    add-int/2addr v4, v12

    add-int/lit8 v12, v3, 0x1

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v4, v3

    aput v4, v9, v2

    add-int/lit8 v3, v12, 0x1

    aget-byte v4, v0, v12

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    add-int/lit8 v12, v3, 0x1

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v4, v3

    aput v4, v10, v2

    add-int/lit8 v13, v12, 0x1

    aget-byte v3, v0, v12

    aput v3, v11, v2

    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    const/4 v4, -0x1

    goto/16 :goto_0

    :cond_3
    move-object/from16 v14, p0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->getContextValueNames()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v4, v2, v4

    invoke-virtual {v3, v4, v1}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v4, v2, v4

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[J)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v3

    const/4 v4, 0x2

    aget-object v4, v2, v4

    invoke-virtual {v3, v4, v6}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[D)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v3

    const/4 v4, 0x3

    aget-object v4, v2, v4

    invoke-virtual {v3, v4, v7}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[D)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v3

    const/4 v4, 0x4

    aget-object v4, v2, v4

    invoke-virtual {v3, v4, v8}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[D)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v3

    const/4 v4, 0x5

    aget-object v4, v2, v4

    invoke-virtual {v3, v4, v9}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[I)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v3

    const/4 v4, 0x6

    aget-object v4, v2, v4

    invoke-virtual {v3, v4, v10}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[I)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v3

    const/4 v4, 0x7

    aget-object v4, v2, v4

    invoke-virtual {v3, v4, v11}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[I)V

    return v13
.end method


# virtual methods
.method public final clear()V
    .locals 0

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->clear()V

    return-void
.end method

.method public final disable()V
    .locals 1

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->mPassiveCurrentPosition:Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;->disable()V

    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->disable()V

    return-void
.end method

.method protected display()V
    .locals 0

    return-void
.end method

.method public final enable()V
    .locals 1

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->mPassiveCurrentPosition:Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;->enable()V

    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->enable()V

    return-void
.end method

.method public final getContextType()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_LIFE_LOG_COMPONENT:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getContextValueNames()[Ljava/lang/String;
    .locals 13

    const-string v0, "StayingAreaCount"

    const-string v1, "StayingAreaTimeStamp"

    const-string v2, "StayingAreaLatitude"

    const-string v3, "StayingAreaLongitude"

    const-string v4, "StayingAreaAltitude"

    const-string v5, "StayingAreaTimeDuration"

    const-string v6, "StayingAreaRadius"

    const-string v7, "StayingAreaStatus"

    const-string v8, "MovingCount"

    const-string v9, "MovingTimeStamp"

    const-string v10, "MovingActivity"

    const-string v11, "MovingAccuracy"

    const-string v12, "MovingTimeDuration"

    filled-new-array/range {v0 .. v12}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final getDataPacketToRegisterLib()[B
    .locals 8

    const/16 v0, 0x9

    new-array v0, v0, [B

    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->mStopPeriod:I

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v1

    const/4 v3, 0x0

    aget-byte v4, v1, v3

    aput-byte v4, v0, v3

    const/4 v4, 0x1

    aget-byte v5, v1, v4

    aput-byte v5, v0, v4

    iget v5, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->mWaitPeriod:I

    invoke-static {v5, v2}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v1

    aget-byte v5, v1, v3

    aput-byte v5, v0, v2

    aget-byte v5, v1, v4

    const/4 v6, 0x3

    aput-byte v5, v0, v6

    const v5, 0xffff

    invoke-static {v5, v2}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v1

    aget-byte v5, v1, v3

    const/4 v6, 0x4

    aput-byte v5, v0, v6

    aget-byte v5, v1, v4

    const/4 v6, 0x5

    aput-byte v5, v0, v6

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentUtcTimeManager;->getInstance()Lcom/samsung/android/contextaware/utilbundle/CaCurrentUtcTimeManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentUtcTimeManager;->getUtcTime()[I

    move-result-object v5

    aget v6, v5, v3

    invoke-static {v6, v4}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v6

    aget-byte v6, v6, v3

    const/4 v7, 0x6

    aput-byte v6, v0, v7

    aget v6, v5, v4

    invoke-static {v6, v4}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v6

    aget-byte v6, v6, v3

    const/4 v7, 0x7

    aput-byte v6, v0, v7

    aget v2, v5, v2

    invoke-static {v2, v4}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v2

    aget-byte v2, v2, v3

    const/16 v3, 0x8

    aput-byte v2, v0, v3

    return-object v0
.end method

.method public getFaultDetectionResult()Landroid/os/Bundle;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->checkFaultDetectionResult()Z

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

    const/16 v0, 0x1d

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

.method public parse([BI)I
    .locals 22

    move/from16 v7, p2

    new-instance v0, Ljava/util/SimpleTimeZone;

    const-string v1, "GMT"

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v8

    const/16 v0, 0xb

    invoke-virtual {v8, v0}, Ljava/util/Calendar;->get(I)I

    move-result v9

    const/16 v0, 0xc

    invoke-virtual {v8, v0}, Ljava/util/Calendar;->get(I)I

    move-result v10

    const/16 v0, 0xd

    invoke-virtual {v8, v0}, Ljava/util/Calendar;->get(I)I

    move-result v11

    const/16 v0, 0xe

    invoke-virtual {v8, v0}, Ljava/util/Calendar;->get(I)I

    move-result v12

    mul-int/lit16 v0, v9, 0xe10

    mul-int/lit8 v1, v10, 0x3c

    add-int/2addr v0, v1

    add-int/2addr v0, v11

    mul-int/lit16 v0, v0, 0x3e8

    add-int/2addr v0, v12

    int-to-long v14, v0

    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v20

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "parse start:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v7

    move-wide v3, v14

    move-wide/from16 v5, v20

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->parseForStayingArea([BIJJ)I

    move-result v0

    if-gtz v0, :cond_0

    return v0

    :cond_0
    move-object/from16 v13, p0

    move-wide v1, v14

    move-object/from16 v14, p1

    move v15, v0

    move-wide/from16 v16, v1

    move-wide/from16 v18, v20

    invoke-direct/range {v13 .. v19}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->parseForMoving([BIJJ)I

    move-result v0

    if-gtz v0, :cond_1

    return v0

    :cond_1
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->notifyObserver()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "parse end:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    return v0
.end method

.method public final setPropertyValue(ILjava/lang/Object;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(ITE;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    const/16 v1, 0x17

    const/4 v2, 0x2

    const/16 v3, 0x1d

    const/16 v4, 0x1c

    if-ne p1, v4, :cond_0

    move-object v4, p2

    check-cast v4, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    invoke-virtual {v4}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "StopPeriod = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    iput v4, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->mStopPeriod:I

    const/4 v5, 0x1

    invoke-static {v4, v2}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v2

    invoke-virtual {p0, v1, v3, v5, v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->sendPropertyValueToSensorHub(BBB[B)Z

    move-result v0

    goto/16 :goto_0

    :cond_0
    if-ne p1, v3, :cond_1

    move-object v4, p2

    check-cast v4, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    invoke-virtual {v4}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WaitPeriod = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    iput v4, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->mWaitPeriod:I

    nop

    invoke-static {v4, v2}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v5

    invoke-virtual {p0, v1, v3, v2, v5}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->sendPropertyValueToSensorHub(BBB[B)Z

    move-result v0

    goto :goto_0

    :cond_1
    const/16 v4, 0x1e

    if-ne p1, v4, :cond_2

    move-object v4, p2

    check-cast v4, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    invoke-virtual {v4}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "StayingRadius = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    const/4 v5, 0x3

    invoke-static {v4, v2}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v2

    invoke-virtual {p0, v1, v3, v5, v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->sendPropertyValueToSensorHub(BBB[B)Z

    move-result v0

    goto :goto_0

    :cond_2
    const/16 v4, 0x1f

    if-ne p1, v4, :cond_3

    move-object v4, p2

    check-cast v4, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    invoke-virtual {v4}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "StayingAreaRadius = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    const/4 v5, 0x4

    invoke-static {v4, v2}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v2

    invoke-virtual {p0, v1, v3, v5, v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->sendPropertyValueToSensorHub(BBB[B)Z

    move-result v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public updatePassiveCurrentPosition(I[IDDDDFFI)V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->isDisable()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, "send the passive current position to SensorHub"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    nop

    invoke-static/range {p1 .. p13}, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;->sendPositionToSensorHub(I[IDDDDFFI)I

    move-result v0

    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->SUCCESS:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v1

    if-eq v0, v1, :cond_1

    invoke-static {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final updatePosition(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;)V
    .locals 17

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->isDisable()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_CURRENT_POSITION_NULL_EXCEPTION:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    return-void

    :cond_1
    move-object/from16 v1, p1

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;->getLatitude()D

    move-result-wide v2

    const-wide v4, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;->getLongitude()D

    move-result-wide v6

    mul-double/2addr v6, v4

    double-to-int v3, v6

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;->getAltitude()D

    move-result-wide v4

    const-wide v6, 0x408f400000000000L    # 1000.0

    mul-double/2addr v4, v6

    double-to-int v4, v4

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;->getAccuracy()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;->getUtcTime()[I

    move-result-object v8

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;->getSatelliteCount()I

    move-result v9

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;->getSpeed()F

    move-result v10

    const/high16 v11, 0x42c80000    # 100.0f

    mul-float/2addr v10, v11

    float-to-int v10, v10

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;->getDistance()D

    move-result-wide v11

    mul-double/2addr v11, v6

    double-to-int v6, v11

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;->getType()I

    move-result v7

    const/16 v11, 0x16

    new-array v12, v11, [B

    const/4 v13, 0x0

    const/4 v14, 0x4

    invoke-static {v2, v14}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v15

    const/4 v11, 0x0

    invoke-static {v15, v11, v12, v13, v14}, Ljava/lang/System;->arraycopy([BI[BII)V

    invoke-static {v3, v14}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v15

    add-int/2addr v13, v14

    invoke-static {v15, v11, v12, v13, v14}, Ljava/lang/System;->arraycopy([BI[BII)V

    invoke-static {v4, v14}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v15

    add-int/2addr v13, v14

    invoke-static {v15, v11, v12, v13, v14}, Ljava/lang/System;->arraycopy([BI[BII)V

    const/4 v15, 0x1

    invoke-static {v5, v15}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v0

    add-int/2addr v13, v14

    invoke-static {v0, v11, v12, v13, v15}, Ljava/lang/System;->arraycopy([BI[BII)V

    aget v0, v8, v11

    invoke-static {v0, v15}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v0

    add-int/2addr v13, v15

    invoke-static {v0, v11, v12, v13, v15}, Ljava/lang/System;->arraycopy([BI[BII)V

    aget v0, v8, v15

    invoke-static {v0, v15}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v0

    add-int/2addr v13, v15

    invoke-static {v0, v11, v12, v13, v15}, Ljava/lang/System;->arraycopy([BI[BII)V

    const/4 v0, 0x2

    aget v14, v8, v0

    invoke-static {v14, v15}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v14

    add-int/2addr v13, v15

    invoke-static {v14, v11, v12, v13, v15}, Ljava/lang/System;->arraycopy([BI[BII)V

    invoke-static {v9, v15}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v14

    add-int/2addr v13, v15

    invoke-static {v14, v11, v12, v13, v15}, Ljava/lang/System;->arraycopy([BI[BII)V

    invoke-static {v10, v0}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v14

    add-int/2addr v13, v15

    invoke-static {v14, v11, v12, v13, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    invoke-static {v6, v0}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v14

    add-int/2addr v13, v0

    invoke-static {v14, v11, v12, v13, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    invoke-static {v7, v15}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v14

    add-int/2addr v13, v0

    invoke-static {v14, v11, v12, v13, v15}, Ljava/lang/System;->arraycopy([BI[BII)V

    move-object/from16 v0, p0

    const/16 v11, 0x16

    invoke-virtual {v0, v11, v12}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->sendCommonValueToSensorHub(B[B)Z

    return-void
.end method

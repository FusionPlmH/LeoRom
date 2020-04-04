.class public abstract Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerProvider;
.super Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;
.source "ActivityTrackerProvider.java"


# direct methods
.method public constructor <init>(ILandroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;-><init>(ILandroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V

    invoke-static {}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerHandler;->getInstance()Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerHandler;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerHandler;->initialize(Landroid/content/Context;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method protected final byteArrayToLong([B)J
    .locals 5

    const/16 v0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    new-array v2, v0, [B

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v0, :cond_0

    aput-byte v3, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    nop

    :goto_1
    move v0, v3

    array-length v3, p1

    if-ge v0, v3, :cond_1

    rsub-int/lit8 v3, v0, 0x7

    array-length v4, p1

    add-int/lit8 v4, v4, -0x1

    sub-int/2addr v4, v0

    aget-byte v4, p1, v4

    aput-byte v4, v2, v3

    add-int/lit8 v3, v0, 0x1

    goto :goto_1

    :cond_1
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v3

    return-wide v3
.end method

.method public disable()V
    .locals 1

    invoke-static {}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerHandler;->getInstance()Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerHandler;->disable()V

    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->disable()V

    return-void
.end method

.method public enable()V
    .locals 1

    invoke-static {}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerHandler;->getInstance()Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerHandler;->enable()V

    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->enable()V

    return-void
.end method

.method protected getAccuracyType()B
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getActivityType()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getBatchingPeriod()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getContextValueNames()[Ljava/lang/String;
    .locals 4

    const-string v0, "OperationMode"

    const-string v1, "TimeStamp"

    const-string v2, "ActivityType"

    const-string v3, "Accuracy"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final getDataPacketToRegisterLib()[B
    .locals 9

    const/16 v0, 0xb

    new-array v1, v0, [B

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerProvider;->getModeType()B

    move-result v2

    const/4 v3, 0x0

    aput-byte v2, v1, v3

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerProvider;->getActivityType()I

    move-result v2

    if-gez v2, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    nop

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerProvider;->getActivityType()I

    move-result v2

    const/4 v4, 0x4

    invoke-static {v2, v4}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v2

    aget-byte v5, v2, v3

    const/4 v6, 0x1

    aput-byte v5, v1, v6

    aget-byte v5, v2, v6

    const/4 v7, 0x2

    aput-byte v5, v1, v7

    aget-byte v5, v2, v7

    const/4 v8, 0x3

    aput-byte v5, v1, v8

    aget-byte v5, v2, v8

    aput-byte v5, v1, v4

    const/4 v4, 0x5

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerProvider;->getAccuracyType()B

    move-result v5

    aput-byte v5, v1, v4

    nop

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerProvider;->getBatchingPeriod()I

    move-result v4

    invoke-static {v4, v7}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v4

    const/4 v5, 0x6

    aget-byte v7, v4, v3

    aput-byte v7, v1, v5

    const/4 v5, 0x7

    aget-byte v6, v4, v6

    aput-byte v6, v1, v5

    new-instance v5, Ljava/util/SimpleTimeZone;

    const-string v6, "GMT"

    invoke-direct {v5, v3, v6}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    invoke-static {v5}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/16 v5, 0xc

    invoke-virtual {v3, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/16 v6, 0xd

    invoke-virtual {v3, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const/16 v7, 0x8

    int-to-byte v8, v0

    aput-byte v8, v1, v7

    const/16 v7, 0x9

    int-to-byte v8, v5

    aput-byte v8, v1, v7

    const/16 v7, 0xa

    int-to-byte v8, v6

    aput-byte v8, v1, v7

    return-object v1
.end method

.method protected final getDataPacketToUnregisterLib()[B
    .locals 8

    const/16 v0, 0x8

    new-array v0, v0, [B

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerProvider;->getModeType()B

    move-result v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerProvider;->getActivityType()I

    move-result v1

    if-gez v1, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    nop

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerProvider;->getActivityType()I

    move-result v1

    const/4 v3, 0x4

    invoke-static {v1, v3}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v1

    aget-byte v4, v1, v2

    const/4 v5, 0x1

    aput-byte v4, v0, v5

    aget-byte v4, v1, v5

    const/4 v6, 0x2

    aput-byte v4, v0, v6

    aget-byte v4, v1, v6

    const/4 v7, 0x3

    aput-byte v4, v0, v7

    aget-byte v4, v1, v7

    aput-byte v4, v0, v3

    const/4 v3, 0x5

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerProvider;->getAccuracyType()B

    move-result v4

    aput-byte v4, v0, v3

    nop

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerProvider;->getBatchingPeriod()I

    move-result v3

    invoke-static {v3, v6}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v3

    const/4 v4, 0x6

    aget-byte v2, v3, v2

    aput-byte v2, v0, v4

    const/4 v2, 0x7

    aget-byte v4, v3, v5

    aput-byte v4, v0, v2

    return-object v0
.end method

.method protected final getInstLibType()B
    .locals 1

    const/16 v0, 0x1a

    return v0
.end method

.method protected abstract getModeType()B
.end method

.method public parse([BI)I
    .locals 9

    move v0, p2

    array-length v1, p1

    sub-int/2addr v1, v0

    const/4 v2, 0x4

    sub-int/2addr v1, v2

    if-gez v1, :cond_0

    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    const/4 v1, -0x1

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerProvider;->getContextValueNames()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v5, v1, v4

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerProvider;->getModeType()B

    move-result v6

    int-to-short v6, v6

    invoke-virtual {v3, v5, v6}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;S)V

    new-array v2, v2, [B

    add-int/lit8 v3, v0, 0x1

    aget-byte v0, p1, v0

    aput-byte v0, v2, v4

    add-int/lit8 v0, v3, 0x1

    aget-byte v3, p1, v3

    const/4 v4, 0x1

    aput-byte v3, v2, v4

    const/4 v3, 0x2

    add-int/lit8 v5, v0, 0x1

    aget-byte v0, p1, v0

    aput-byte v0, v2, v3

    const/4 v0, 0x3

    add-int/lit8 v3, v5, 0x1

    aget-byte v5, p1, v5

    aput-byte v5, v2, v0

    invoke-virtual {p0, v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerProvider;->byteArrayToLong([B)J

    move-result-wide v5

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v0

    aget-object v4, v1, v4

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/CaTimeManager;->getInstance()Lcom/samsung/android/contextaware/utilbundle/CaTimeManager;

    move-result-object v7

    invoke-virtual {v7, v5, v6}, Lcom/samsung/android/contextaware/utilbundle/CaTimeManager;->getTimeStampForUTC(J)J

    move-result-wide v7

    invoke-virtual {v0, v4, v7, v8}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    invoke-virtual {p0, p1, v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerProvider;->parseData([BI)I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerProvider;->notifyObserver()V

    :cond_1
    return v0
.end method

.method protected parseData([BI)I
    .locals 6

    move v0, p2

    array-length v1, p1

    sub-int/2addr v1, v0

    const/4 v2, 0x2

    sub-int/2addr v1, v2

    if-gez v1, :cond_0

    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    const/4 v1, -0x1

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerProvider;->getContextValueNames()[Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v3, v0, 0x1

    aget-byte v0, p1, v0

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v4

    aget-object v2, v1, v2

    invoke-virtual {v4, v2, v0}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    add-int/lit8 v2, v3, 0x1

    aget-byte v3, p1, v3

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v4

    const/4 v5, 0x3

    aget-object v5, v1, v5

    invoke-virtual {v4, v5, v3}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    return v2
.end method

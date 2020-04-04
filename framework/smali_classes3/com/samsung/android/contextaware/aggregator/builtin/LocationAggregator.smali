.class public Lcom/samsung/android/contextaware/aggregator/builtin/LocationAggregator;
.super Lcom/samsung/android/contextaware/aggregator/Aggregator;
.source "LocationAggregator.java"


# static fields
.field private static final ACCURACY_REQUIREMENT_DEFAULT:I = 0x64


# instance fields
.field private mApdrNoti:Z

.field private mCurAccuracy:F

.field private mCurAltitude:D

.field private mCurLatitude:D

.field private mCurLongitude:D

.field private mCurSysTime:J

.field private mCurTimeStamp:J

.field private mPedestrianStatus:I

.field private mUserWantedAccuracy:I


# direct methods
.method public constructor <init>(ILjava/util/concurrent/CopyOnWriteArrayList;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/samsung/android/contextaware/manager/ContextComponent;",
            ">;",
            "Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;",
            ")V"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/contextaware/aggregator/Aggregator;-><init>(ILandroid/content/Context;Landroid/os/Looper;Ljava/util/concurrent/CopyOnWriteArrayList;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/contextaware/aggregator/builtin/LocationAggregator;->mApdrNoti:Z

    return-void
.end method

.method private isFilterInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private notifyLocationContext(JJ[D[FZI)V
    .locals 12

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/builtin/LocationAggregator;->getContextValueNames()[Ljava/lang/String;

    move-result-object v0

    invoke-super {p0}, Lcom/samsung/android/contextaware/aggregator/Aggregator;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v3, v0, v2

    move-wide v4, p1

    invoke-virtual {v1, v3, v4, v5}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    invoke-super {p0}, Lcom/samsung/android/contextaware/aggregator/Aggregator;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v1

    const/4 v3, 0x1

    aget-object v6, v0, v3

    move-wide v7, p3

    invoke-virtual {v1, v6, v7, v8}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    invoke-super {p0}, Lcom/samsung/android/contextaware/aggregator/Aggregator;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v1

    const/4 v6, 0x2

    aget-object v9, v0, v6

    aget-wide v10, p5, v2

    invoke-virtual {v1, v9, v10, v11}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V

    invoke-super {p0}, Lcom/samsung/android/contextaware/aggregator/Aggregator;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v1

    const/4 v9, 0x3

    aget-object v9, v0, v9

    aget-wide v10, p5, v3

    invoke-virtual {v1, v9, v10, v11}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V

    invoke-super {p0}, Lcom/samsung/android/contextaware/aggregator/Aggregator;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v1

    const/4 v9, 0x4

    aget-object v9, v0, v9

    aget-wide v10, p5, v6

    invoke-virtual {v1, v9, v10, v11}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V

    invoke-super {p0}, Lcom/samsung/android/contextaware/aggregator/Aggregator;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v1

    const/4 v9, 0x5

    aget-object v9, v0, v9

    aget v2, p6, v2

    invoke-virtual {v1, v9, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;F)V

    invoke-super {p0}, Lcom/samsung/android/contextaware/aggregator/Aggregator;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v1

    const/4 v2, 0x6

    aget-object v2, v0, v2

    aget v3, p6, v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;F)V

    invoke-super {p0}, Lcom/samsung/android/contextaware/aggregator/Aggregator;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v1

    const/4 v2, 0x7

    aget-object v2, v0, v2

    aget v3, p6, v6

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;F)V

    invoke-super {p0}, Lcom/samsung/android/contextaware/aggregator/Aggregator;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v1

    const/16 v2, 0x8

    aget-object v2, v0, v2

    move/from16 v3, p7

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;Z)V

    invoke-super {p0}, Lcom/samsung/android/contextaware/aggregator/Aggregator;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v1

    const/16 v2, 0x9

    aget-object v2, v0, v2

    move/from16 v6, p8

    invoke-virtual {v1, v2, v6}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    invoke-super {p0}, Lcom/samsung/android/contextaware/aggregator/Aggregator;->notifyObserver()V

    return-void
.end method

.method private receiveApdrNoti(Landroid/os/Bundle;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "Alert"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    return-void

    :cond_1
    iput-boolean v1, p0, Lcom/samsung/android/contextaware/aggregator/builtin/LocationAggregator;->mApdrNoti:Z

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    invoke-super {p0}, Lcom/samsung/android/contextaware/aggregator/Aggregator;->resume()V

    return-void
.end method

.method private requestGpsData(JJ)V
    .locals 27

    const/4 v0, 0x3

    new-array v10, v0, [D

    new-array v0, v0, [F

    const/4 v11, 0x1

    new-array v12, v11, [I

    const/4 v1, 0x1

    const/4 v13, 0x0

    aget v2, v12, v13

    if-ne v2, v11, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v14, v1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :goto_1
    if-eqz v14, :cond_1

    move-object/from16 v15, p0

    iget v9, v15, Lcom/samsung/android/contextaware/aggregator/builtin/LocationAggregator;->mPedestrianStatus:I

    move-object v1, v15

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    move-object v6, v10

    move-object v7, v0

    move v8, v14

    invoke-direct/range {v1 .. v9}, Lcom/samsung/android/contextaware/aggregator/builtin/LocationAggregator;->notifyLocationContext(JJ[D[FZI)V

    aget-wide v20, v10, v13

    aget-wide v22, v10, v11

    const/4 v1, 0x2

    aget-wide v24, v10, v1

    aget v26, v0, v1

    move-wide/from16 v16, p1

    move-wide/from16 v18, p3

    invoke-direct/range {v15 .. v26}, Lcom/samsung/android/contextaware/aggregator/builtin/LocationAggregator;->setCurLocationforHubApdr(JJDDDF)V

    :cond_1
    return-void
.end method

.method private sendSleepModeCmdToSensorHub()V
    .locals 11

    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_APDR:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/contextaware/aggregator/builtin/LocationAggregator;->getSubCollectionObj(Ljava/lang/String;)Lcom/samsung/android/contextaware/manager/ContextComponent;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-wide v1, 0x4042800000000000L    # 37.0

    iput-wide v1, p0, Lcom/samsung/android/contextaware/aggregator/builtin/LocationAggregator;->mCurLatitude:D

    const-wide/high16 v1, 0x4060000000000000L    # 128.0

    iput-wide v1, p0, Lcom/samsung/android/contextaware/aggregator/builtin/LocationAggregator;->mCurLongitude:D

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/samsung/android/contextaware/aggregator/builtin/LocationAggregator;->mCurAltitude:D

    const/high16 v1, 0x41200000    # 10.0f

    iput v1, p0, Lcom/samsung/android/contextaware/aggregator/builtin/LocationAggregator;->mCurAccuracy:F

    iget-wide v1, p0, Lcom/samsung/android/contextaware/aggregator/builtin/LocationAggregator;->mCurLatitude:D

    const-wide v3, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v1, v3

    double-to-int v1, v1

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v1

    iget-wide v5, p0, Lcom/samsung/android/contextaware/aggregator/builtin/LocationAggregator;->mCurLongitude:D

    mul-double/2addr v5, v3

    double-to-int v3, v5

    invoke-static {v3, v2}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v2

    iget-wide v3, p0, Lcom/samsung/android/contextaware/aggregator/builtin/LocationAggregator;->mCurAltitude:D

    const-wide v5, 0x408f400000000000L    # 1000.0

    mul-double/2addr v3, v5

    double-to-int v3, v3

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/contextaware/aggregator/builtin/LocationAggregator;->mCurAccuracy:F

    float-to-int v4, v4

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v4

    iget v6, p0, Lcom/samsung/android/contextaware/aggregator/builtin/LocationAggregator;->mUserWantedAccuracy:I

    invoke-static {v6, v5}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v5

    array-length v6, v1

    array-length v7, v2

    add-int/2addr v6, v7

    array-length v7, v3

    add-int/2addr v6, v7

    array-length v7, v4

    add-int/2addr v6, v7

    array-length v7, v5

    add-int/2addr v6, v7

    new-array v7, v6, [B

    const/4 v8, 0x0

    array-length v9, v1

    const/4 v10, 0x0

    invoke-static {v1, v10, v7, v8, v9}, Ljava/lang/System;->arraycopy([BI[BII)V

    array-length v9, v1

    add-int/2addr v8, v9

    array-length v9, v2

    invoke-static {v2, v10, v7, v8, v9}, Ljava/lang/System;->arraycopy([BI[BII)V

    array-length v9, v2

    add-int/2addr v8, v9

    array-length v9, v3

    invoke-static {v3, v10, v7, v8, v9}, Ljava/lang/System;->arraycopy([BI[BII)V

    array-length v9, v3

    add-int/2addr v8, v9

    array-length v9, v4

    invoke-static {v4, v10, v7, v8, v9}, Ljava/lang/System;->arraycopy([BI[BII)V

    array-length v9, v4

    add-int/2addr v8, v9

    array-length v9, v5

    invoke-static {v5, v10, v7, v8, v9}, Ljava/lang/System;->arraycopy([BI[BII)V

    invoke-virtual {v0, v7}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->sendSleepModeCmdToSensorHub([B)V

    return-void
.end method

.method private setCurLocationforHubApdr(JJDDDF)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/contextaware/aggregator/builtin/LocationAggregator;->mCurSysTime:J

    iput-wide p3, p0, Lcom/samsung/android/contextaware/aggregator/builtin/LocationAggregator;->mCurTimeStamp:J

    iput-wide p5, p0, Lcom/samsung/android/contextaware/aggregator/builtin/LocationAggregator;->mCurLatitude:D

    iput-wide p7, p0, Lcom/samsung/android/contextaware/aggregator/builtin/LocationAggregator;->mCurLongitude:D

    iput-wide p9, p0, Lcom/samsung/android/contextaware/aggregator/builtin/LocationAggregator;->mCurAltitude:D

    iput p11, p0, Lcom/samsung/android/contextaware/aggregator/builtin/LocationAggregator;->mCurAccuracy:F

    return-void
.end method

.method private updateApdrData(Landroid/os/Bundle;)V
    .locals 4

    invoke-direct {p0}, Lcom/samsung/android/contextaware/aggregator/builtin/LocationAggregator;->isFilterInitialized()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/samsung/android/contextaware/aggregator/builtin/LocationAggregator;->mCurSysTime:J

    const-string v2, "DeltaTime"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    double-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/samsung/android/contextaware/aggregator/builtin/LocationAggregator;->mCurSysTime:J

    iget-wide v0, p0, Lcom/samsung/android/contextaware/aggregator/builtin/LocationAggregator;->mCurTimeStamp:J

    const-string v2, "DeltaTime"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    double-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/samsung/android/contextaware/aggregator/builtin/LocationAggregator;->mCurTimeStamp:J

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    iget-wide v0, p0, Lcom/samsung/android/contextaware/aggregator/builtin/LocationAggregator;->mCurSysTime:J

    iget-wide v2, p0, Lcom/samsung/android/contextaware/aggregator/builtin/LocationAggregator;->mCurTimeStamp:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/android/contextaware/aggregator/builtin/LocationAggregator;->requestGpsData(JJ)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method private updateRawGpsData(Landroid/os/Bundle;)V
    .locals 4

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    const-string v0, "SystemTime"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    const-string v2, "TimeStamp"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/android/contextaware/aggregator/builtin/LocationAggregator;->requestGpsData(JJ)V

    return-void
.end method

.method private updateRawSatelliteData(Landroid/os/Bundle;)V
    .locals 4

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->getInstance()Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->isScreenOn()Z

    move-result v0

    invoke-super {p0}, Lcom/samsung/android/contextaware/aggregator/Aggregator;->getAPStatus()I

    move-result v1

    const/4 v2, 0x1

    const/16 v3, -0x2e

    if-ne v1, v3, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/contextaware/aggregator/builtin/LocationAggregator;->isFilterInitialized()Z

    move-result v3

    if-eqz v3, :cond_2

    if-nez v1, :cond_1

    iget-boolean v3, p0, Lcom/samsung/android/contextaware/aggregator/builtin/LocationAggregator;->mApdrNoti:Z

    if-eqz v3, :cond_2

    :cond_1
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/CaAlarmManager;->getInstance()Lcom/samsung/android/contextaware/utilbundle/CaAlarmManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/samsung/android/contextaware/utilbundle/CaAlarmManager;->vibrateAlarm(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/builtin/LocationAggregator;->notifyApStatus()V

    invoke-direct {p0}, Lcom/samsung/android/contextaware/aggregator/builtin/LocationAggregator;->sendSleepModeCmdToSensorHub()V

    :cond_2
    return-void
.end method

.method private updateRawWpsData(Landroid/os/Bundle;)V
    .locals 0

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 2

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    invoke-super {p0}, Lcom/samsung/android/contextaware/aggregator/Aggregator;->clear()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/contextaware/aggregator/builtin/LocationAggregator;->mCurSysTime:J

    iput-wide v0, p0, Lcom/samsung/android/contextaware/aggregator/builtin/LocationAggregator;->mCurTimeStamp:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/contextaware/aggregator/builtin/LocationAggregator;->mCurLatitude:D

    iput-wide v0, p0, Lcom/samsung/android/contextaware/aggregator/builtin/LocationAggregator;->mCurLongitude:D

    iput-wide v0, p0, Lcom/samsung/android/contextaware/aggregator/builtin/LocationAggregator;->mCurAltitude:D

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/contextaware/aggregator/builtin/LocationAggregator;->mCurAccuracy:F

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/contextaware/aggregator/builtin/LocationAggregator;->mPedestrianStatus:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/contextaware/aggregator/builtin/LocationAggregator;->mApdrNoti:Z

    const/16 v0, 0x64

    iput v0, p0, Lcom/samsung/android/contextaware/aggregator/builtin/LocationAggregator;->mUserWantedAccuracy:I

    return-void
.end method

.method public final disable()V
    .locals 0

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    return-void
.end method

.method public final enable()V
    .locals 0

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    return-void
.end method

.method public final getContextType()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->AGGREGATOR_LOCATION:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getContextValueNames()[Ljava/lang/String;
    .locals 10

    const-string v0, "SystemTime"

    const-string v1, "TimeStamp"

    const-string v2, "Latitude"

    const-string v3, "Longitude"

    const-string v4, "Altitude"

    const-string v5, "Heading"

    const-string v6, "Speed"

    const-string v7, "Accuracy"

    const-string v8, "Valid"

    const-string v9, "PedestrianStatus"

    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final getPowerObserver()Lcom/samsung/android/contextaware/manager/IApPowerObserver;
    .locals 0

    return-object p0
.end method

.method protected final getPowerResetObserver()Lcom/samsung/android/contextaware/manager/ISensorHubResetObserver;
    .locals 0

    return-object p0
.end method

.method protected final initializeAggregator()V
    .locals 0

    return-void
.end method

.method public final pause()V
    .locals 0

    return-void
.end method

.method public final resume()V
    .locals 0

    return-void
.end method

.method public final setPropertyValue(ILjava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(ITE;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    move-object v1, p2

    check-cast v1, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/contextaware/aggregator/builtin/LocationAggregator;->mUserWantedAccuracy:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setProperty (User Wanted Accuracy) = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/contextaware/aggregator/builtin/LocationAggregator;->mUserWantedAccuracy:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    invoke-static {}, Lcom/samsung/android/contextaware/manager/CaUserInfo;->getInstance()Lcom/samsung/android/contextaware/manager/CaUserInfo;

    move-result-object v1

    move-object v2, p2

    check-cast v2, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/contextaware/manager/CaUserInfo;->setUserHeight(D)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setProperty (User Height) = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/contextaware/manager/CaUserInfo;->getInstance()Lcom/samsung/android/contextaware/manager/CaUserInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/manager/CaUserInfo;->getUserHeight()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    invoke-static {}, Lcom/samsung/android/contextaware/manager/CaUserInfo;->getInstance()Lcom/samsung/android/contextaware/manager/CaUserInfo;

    move-result-object v1

    move-object v2, p2

    check-cast v2, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/contextaware/manager/CaUserInfo;->setUserWeight(D)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setProperty (User Weight) = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/contextaware/manager/CaUserInfo;->getInstance()Lcom/samsung/android/contextaware/manager/CaUserInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/manager/CaUserInfo;->getUserWeight()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return v0
.end method

.method protected final terminateAggregator()V
    .locals 0

    return-void
.end method

.method protected final updateApSleep()V
    .locals 1

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/contextaware/aggregator/builtin/LocationAggregator;->mApdrNoti:Z

    return-void
.end method

.method protected final updateApWakeup()V
    .locals 1

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/contextaware/aggregator/builtin/LocationAggregator;->mApdrNoti:Z

    invoke-super {p0}, Lcom/samsung/android/contextaware/aggregator/Aggregator;->updateApWakeup()V

    return-void
.end method

.method public final updateContext(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->ANDROID_RUNNER_RAW_GPS:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p2}, Lcom/samsung/android/contextaware/aggregator/builtin/LocationAggregator;->updateRawGpsData(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->ANDROID_RUNNER_RAW_SATELLITE:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p2}, Lcom/samsung/android/contextaware/aggregator/builtin/LocationAggregator;->updateRawSatelliteData(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->ANDROID_RUNNER_RAW_WPS:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, p2}, Lcom/samsung/android/contextaware/aggregator/builtin/LocationAggregator;->updateRawWpsData(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_APDR:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p2}, Landroid/os/Bundle;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_4

    invoke-direct {p0, p2}, Lcom/samsung/android/contextaware/aggregator/builtin/LocationAggregator;->updateApdrData(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_4
    invoke-direct {p0, p2}, Lcom/samsung/android/contextaware/aggregator/builtin/LocationAggregator;->receiveApdrNoti(Landroid/os/Bundle;)V

    :cond_5
    :goto_0
    return-void
.end method

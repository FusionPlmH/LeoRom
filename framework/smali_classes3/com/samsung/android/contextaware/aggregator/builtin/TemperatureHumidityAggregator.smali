.class public Lcom/samsung/android/contextaware/aggregator/builtin/TemperatureHumidityAggregator;
.super Lcom/samsung/android/contextaware/aggregator/EnvironmentSensorAggregator;
.source "TemperatureHumidityAggregator.java"


# instance fields
.field private mCompensationEngine:Lcom/samsung/android/contextaware/lib/builtin/TemperatureHumidityCompensationLibEngine;

.field private mSleepTime:J

.field private mWakeupTime:J


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

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/contextaware/aggregator/EnvironmentSensorAggregator;-><init>(ILandroid/content/Context;Landroid/os/Looper;Ljava/util/concurrent/CopyOnWriteArrayList;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/builtin/TemperatureHumidityAggregator;->mCompensationEngine:Lcom/samsung/android/contextaware/lib/builtin/TemperatureHumidityCompensationLibEngine;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/contextaware/aggregator/builtin/TemperatureHumidityAggregator;->mSleepTime:J

    iput-wide v0, p0, Lcom/samsung/android/contextaware/aggregator/builtin/TemperatureHumidityAggregator;->mWakeupTime:J

    return-void
.end method


# virtual methods
.method protected final checkCompensationData([D)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    array-length v1, p1

    if-lez v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public final clear()V
    .locals 0

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    invoke-super {p0}, Lcom/samsung/android/contextaware/aggregator/EnvironmentSensorAggregator;->clear()V

    return-void
.end method

.method protected clearAccordingToRequest()V
    .locals 0

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    invoke-super {p0}, Lcom/samsung/android/contextaware/aggregator/EnvironmentSensorAggregator;->clearAccordingToRequest()V

    return-void
.end method

.method protected final compensateForRawData([[D)[D
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    array-length v3, v1

    const/4 v4, 0x1

    if-gt v3, v4, :cond_0

    goto/16 :goto_3

    :cond_0
    new-array v3, v4, [D

    new-array v5, v4, [D

    const/4 v6, 0x0

    aget-object v6, v1, v6

    array-length v6, v6

    aget-object v7, v1, v4

    array-length v7, v7

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/aggregator/builtin/TemperatureHumidityAggregator;->getLoggingStatus()I

    move-result v8

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    if-eqz v6, :cond_4

    if-nez v7, :cond_1

    move-object/from16 v18, v5

    move/from16 v19, v6

    move/from16 v20, v7

    goto/16 :goto_2

    :cond_1
    const/4 v2, 0x0

    if-gt v6, v7, :cond_2

    mul-int/lit8 v2, v6, 0x2

    goto :goto_0

    :cond_2
    mul-int/lit8 v2, v7, 0x2

    :goto_0
    new-array v13, v2, [D

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    const-wide/32 v16, 0xf4240

    mul-long v14, v14, v16

    iput-wide v14, v0, Lcom/samsung/android/contextaware/aggregator/builtin/TemperatureHumidityAggregator;->mWakeupTime:J

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "sleepTime = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v18, v5

    iget-wide v4, v0, Lcom/samsung/android/contextaware/aggregator/builtin/TemperatureHumidityAggregator;->mSleepTime:J

    invoke-virtual {v14, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", wakeupTime = "

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v0, Lcom/samsung/android/contextaware/aggregator/builtin/TemperatureHumidityAggregator;->mWakeupTime:J

    invoke-virtual {v14, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    iget-wide v4, v0, Lcom/samsung/android/contextaware/aggregator/builtin/TemperatureHumidityAggregator;->mWakeupTime:J

    iget-wide v14, v0, Lcom/samsung/android/contextaware/aggregator/builtin/TemperatureHumidityAggregator;->mSleepTime:J

    sub-long/2addr v4, v14

    div-int/lit8 v14, v2, 0x2

    int-to-long v14, v14

    div-long/2addr v4, v14

    const/4 v14, 0x2

    if-le v2, v14, :cond_3

    iget-wide v14, v0, Lcom/samsung/android/contextaware/aggregator/builtin/TemperatureHumidityAggregator;->mSleepTime:J

    iget-wide v9, v0, Lcom/samsung/android/contextaware/aggregator/builtin/TemperatureHumidityAggregator;->mWakeupTime:J

    move/from16 v19, v6

    move/from16 v20, v7

    iget-wide v6, v0, Lcom/samsung/android/contextaware/aggregator/builtin/TemperatureHumidityAggregator;->mSleepTime:J

    sub-long/2addr v9, v6

    div-int/lit8 v6, v2, 0x2

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    int-to-long v6, v6

    mul-long/2addr v6, v4

    sub-long/2addr v9, v6

    const-wide/16 v6, 0x2

    div-long/2addr v9, v6

    add-long/2addr v14, v9

    move/from16 v21, v2

    goto :goto_1

    :cond_3
    move/from16 v19, v6

    move/from16 v20, v7

    const-wide/16 v6, 0x2

    iget-wide v9, v0, Lcom/samsung/android/contextaware/aggregator/builtin/TemperatureHumidityAggregator;->mSleepTime:J

    iget-wide v14, v0, Lcom/samsung/android/contextaware/aggregator/builtin/TemperatureHumidityAggregator;->mWakeupTime:J

    move/from16 v21, v2

    iget-wide v1, v0, Lcom/samsung/android/contextaware/aggregator/builtin/TemperatureHumidityAggregator;->mSleepTime:J

    sub-long/2addr v14, v1

    div-long/2addr v14, v6

    add-long/2addr v14, v9

    :goto_1
    iget-wide v1, v0, Lcom/samsung/android/contextaware/aggregator/builtin/TemperatureHumidityAggregator;->mWakeupTime:J

    iput-wide v1, v0, Lcom/samsung/android/contextaware/aggregator/builtin/TemperatureHumidityAggregator;->mSleepTime:J

    return-object v13

    :cond_4
    move-object/from16 v18, v5

    move/from16 v19, v6

    move/from16 v20, v7

    :goto_2
    return-object v2

    :cond_5
    :goto_3
    return-object v2
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

    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->AGGREGATOR_TEMPERATURE_HUMIDITY:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getContextValueNames()[Ljava/lang/String;
    .locals 2

    const-string v0, "Temperature"

    const-string v1, "Humidity"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFaultDetectionResult()Landroid/os/Bundle;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/builtin/TemperatureHumidityAggregator;->checkFaultDetectionResult()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    invoke-super {p0}, Lcom/samsung/android/contextaware/aggregator/EnvironmentSensorAggregator;->getFaultDetectionResult()Landroid/os/Bundle;

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

.method protected final getRawSensorValueNames()[Ljava/lang/String;
    .locals 2

    const-string v0, "Temperature"

    const-string v1, "Humidity"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final initializeAggregator()V
    .locals 1

    new-instance v0, Lcom/samsung/android/contextaware/lib/builtin/TemperatureHumidityCompensationLibEngine;

    invoke-direct {v0}, Lcom/samsung/android/contextaware/lib/builtin/TemperatureHumidityCompensationLibEngine;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/builtin/TemperatureHumidityAggregator;->mCompensationEngine:Lcom/samsung/android/contextaware/lib/builtin/TemperatureHumidityCompensationLibEngine;

    return-void
.end method

.method protected final notifyCompensationData([D)V
    .locals 8

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/builtin/TemperatureHumidityAggregator;->getContextValueNames()[Ljava/lang/String;

    move-result-object v0

    array-length v1, p1

    div-int/lit8 v1, v1, 0x2

    new-array v2, v1, [D

    new-array v3, v1, [D

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v1, :cond_0

    aget-wide v6, p1, v5

    aput-wide v6, v2, v5

    add-int v6, v5, v1

    aget-wide v6, p1, v6

    aput-wide v6, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lcom/samsung/android/contextaware/aggregator/EnvironmentSensorAggregator;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    aget-object v4, v0, v4

    invoke-virtual {v5, v4, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[D)V

    invoke-super {p0}, Lcom/samsung/android/contextaware/aggregator/EnvironmentSensorAggregator;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v5, v0, v5

    invoke-virtual {v4, v5, v3}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[D)V

    invoke-super {p0}, Lcom/samsung/android/contextaware/aggregator/EnvironmentSensorAggregator;->notifyObserver()V

    return-void
.end method

.method protected final terminateAggregator()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/builtin/TemperatureHumidityAggregator;->mCompensationEngine:Lcom/samsung/android/contextaware/lib/builtin/TemperatureHumidityCompensationLibEngine;

    return-void
.end method

.method protected final updateApSleep()V
    .locals 4

    invoke-super {p0}, Lcom/samsung/android/contextaware/aggregator/EnvironmentSensorAggregator;->getTimeStampForApStatus()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    mul-long/2addr v0, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "timeStamp = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    iput-wide v0, p0, Lcom/samsung/android/contextaware/aggregator/builtin/TemperatureHumidityAggregator;->mSleepTime:J

    invoke-super {p0}, Lcom/samsung/android/contextaware/aggregator/EnvironmentSensorAggregator;->updateApSleep()V

    return-void
.end method

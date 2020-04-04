.class public Lcom/samsung/android/contextaware/aggregator/builtin/LifeLogAggregator;
.super Lcom/samsung/android/contextaware/aggregator/Aggregator;
.source "LifeLogAggregator.java"


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

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 0

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    invoke-super {p0}, Lcom/samsung/android/contextaware/aggregator/Aggregator;->clear()V

    return-void
.end method

.method protected clearAccordingToRequest()V
    .locals 0

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    invoke-super {p0}, Lcom/samsung/android/contextaware/aggregator/Aggregator;->clearAccordingToRequest()V

    return-void
.end method

.method public final disable()V
    .locals 0

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    return-void
.end method

.method protected display()V
    .locals 0

    return-void
.end method

.method public final enable()V
    .locals 0

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    return-void
.end method

.method public final getContextType()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->AGGREGATOR_LIFE_LOG:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getContextValueNames()[Ljava/lang/String;
    .locals 2

    const-string v0, "LoggingType"

    const-string v1, "LoggingBundle"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFaultDetectionResult()Landroid/os/Bundle;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/builtin/LifeLogAggregator;->checkFaultDetectionResult()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    invoke-super {p0}, Lcom/samsung/android/contextaware/aggregator/Aggregator;->getFaultDetectionResult()Landroid/os/Bundle;

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

.method public final setPropertyValue(ILjava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(ITE;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    const/16 v1, 0x1c

    if-eq p1, v1, :cond_1

    const/16 v1, 0x1d

    if-eq p1, v1, :cond_1

    const/16 v1, 0x1e

    if-eq p1, v1, :cond_1

    const/16 v1, 0x1f

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x20

    if-ne p1, v1, :cond_2

    sget-object v1, Lcom/samsung/android/contextaware/ContextList$ContextType;->AGGREGATOR_LPP:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    :goto_0
    sget-object v1, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_LIFE_LOG_COMPONENT:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    :cond_2
    :goto_1
    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p0, v0}, Lcom/samsung/android/contextaware/aggregator/builtin/LifeLogAggregator;->getSubCollectionObj(Ljava/lang/String;)Lcom/samsung/android/contextaware/manager/ContextComponent;

    move-result-object v2

    if-nez v2, :cond_4

    sget-object v3, Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;->ERROR_SUB_COLLECTOR_NULL_EXCEPTION:Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;->getCode()I

    move-result v3

    invoke-static {v3}, Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;->getMessage(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    return v1

    :cond_4
    invoke-virtual {v2, p1, p2}, Lcom/samsung/android/contextaware/manager/ContextComponent;->setPropertyValue(ILjava/lang/Object;)Z

    move-result v1

    return v1

    :cond_5
    :goto_2
    return v1
.end method

.method public final declared-synchronized updateContext(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 11

    monitor-enter p0

    if-eqz p1, :cond_8

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    if-nez p2, :cond_1

    sget-object v0, Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;->ERROR_UPDATED_CONTEXT_NULL_EXCEPTION:Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;->getCode()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;->getMessage(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateContext:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_LIFE_LOG_COMPONENT:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v0, :cond_5

    const-string v0, "StayingAreaCount"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/builtin/LifeLogAggregator;->getContextValueNames()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/builtin/LifeLogAggregator;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v6

    aget-object v7, v0, v4

    invoke-virtual {v6, v7, v5}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/builtin/LifeLogAggregator;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v6

    aget-object v7, v0, v5

    invoke-virtual {v6, v7, p2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;Landroid/os/Bundle;)V

    sget-object v6, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_LIFE_LOG_COMPONENT:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v6}, Lcom/samsung/android/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/samsung/android/contextaware/aggregator/builtin/LifeLogAggregator;->getSubCollectionObj(Ljava/lang/String;)Lcom/samsung/android/contextaware/manager/ContextComponent;

    move-result-object v6

    if-nez v6, :cond_2

    const-string v1, "Sub-collection object is null"

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    :try_start_2
    invoke-virtual {v6}, Lcom/samsung/android/contextaware/manager/ContextComponent;->getContextValueNames()[Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/builtin/LifeLogAggregator;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v8

    aget-object v9, v7, v4

    aget-object v10, v7, v4

    invoke-virtual {p2, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v8, v9, v10}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContextForDisplay(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/builtin/LifeLogAggregator;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v8

    aget-object v9, v7, v5

    aget-object v10, v7, v5

    invoke-virtual {p2, v10}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContextForDisplay(Ljava/lang/String;[J)V

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/builtin/LifeLogAggregator;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v8

    aget-object v9, v7, v3

    aget-object v10, v7, v3

    invoke-virtual {p2, v10}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContextForDisplay(Ljava/lang/String;[D)V

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/builtin/LifeLogAggregator;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v8

    aget-object v9, v7, v2

    aget-object v2, v7, v2

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v2

    invoke-virtual {v8, v9, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContextForDisplay(Ljava/lang/String;[D)V

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/builtin/LifeLogAggregator;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v2

    aget-object v8, v7, v1

    aget-object v1, v7, v1

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v1

    invoke-virtual {v2, v8, v1}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContextForDisplay(Ljava/lang/String;[D)V

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/builtin/LifeLogAggregator;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v1

    const/4 v2, 0x5

    aget-object v8, v7, v2

    aget-object v2, v7, v2

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v2

    invoke-virtual {v1, v8, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContextForDisplay(Ljava/lang/String;[I)V

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/builtin/LifeLogAggregator;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v1

    const/4 v2, 0x6

    aget-object v8, v7, v2

    aget-object v2, v7, v2

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v2

    invoke-virtual {v1, v8, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContextForDisplay(Ljava/lang/String;[I)V

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/builtin/LifeLogAggregator;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v1

    const/4 v2, 0x7

    aget-object v8, v7, v2

    aget-object v2, v7, v2

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v2

    invoke-virtual {v1, v8, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContextForDisplay(Ljava/lang/String;[I)V

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/builtin/LifeLogAggregator;->notifyObserver()V

    :cond_3
    const-string v0, "MovingCount"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_7

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/builtin/LifeLogAggregator;->getContextValueNames()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/builtin/LifeLogAggregator;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v1

    aget-object v2, v0, v4

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/builtin/LifeLogAggregator;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v1

    aget-object v2, v0, v5

    invoke-virtual {v1, v2, p2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;Landroid/os/Bundle;)V

    sget-object v1, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_LIFE_LOG_COMPONENT:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/contextaware/aggregator/builtin/LifeLogAggregator;->getSubCollectionObj(Ljava/lang/String;)Lcom/samsung/android/contextaware/manager/ContextComponent;

    move-result-object v1

    if-nez v1, :cond_4

    const-string v2, "Sub-collection object is null"

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :cond_4
    :try_start_3
    invoke-virtual {v1}, Lcom/samsung/android/contextaware/manager/ContextComponent;->getContextValueNames()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/builtin/LifeLogAggregator;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v4, 0x8

    aget-object v5, v2, v4

    aget-object v4, v2, v4

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v5, v4}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContextForDisplay(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/builtin/LifeLogAggregator;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v4, 0x9

    aget-object v5, v2, v4

    aget-object v4, v2, v4

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v3, v5, v6, v7}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContextForDisplay(Ljava/lang/String;J)V

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/builtin/LifeLogAggregator;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v4, 0xa

    aget-object v5, v2, v4

    aget-object v4, v2, v4

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContextForDisplay(Ljava/lang/String;[I)V

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/builtin/LifeLogAggregator;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v4, 0xb

    aget-object v5, v2, v4

    aget-object v4, v2, v4

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContextForDisplay(Ljava/lang/String;[I)V

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/builtin/LifeLogAggregator;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v4, 0xc

    aget-object v5, v2, v4

    aget-object v4, v2, v4

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContextForDisplay(Ljava/lang/String;[I)V

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/builtin/LifeLogAggregator;->notifyObserver()V

    goto/16 :goto_0

    :cond_5
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->AGGREGATOR_LPP:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/builtin/LifeLogAggregator;->getContextValueNames()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/builtin/LifeLogAggregator;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v6

    aget-object v7, v0, v4

    invoke-virtual {v6, v7, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/builtin/LifeLogAggregator;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v6

    aget-object v7, v0, v5

    invoke-virtual {v6, v7, p2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;Landroid/os/Bundle;)V

    sget-object v6, Lcom/samsung/android/contextaware/ContextList$ContextType;->AGGREGATOR_LPP:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v6}, Lcom/samsung/android/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/samsung/android/contextaware/aggregator/builtin/LifeLogAggregator;->getSubCollectionObj(Ljava/lang/String;)Lcom/samsung/android/contextaware/manager/ContextComponent;

    move-result-object v6

    if-nez v6, :cond_6

    const-string v1, "Sub-collection object is null"

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :cond_6
    :try_start_4
    invoke-virtual {v6}, Lcom/samsung/android/contextaware/manager/ContextComponent;->getContextValueNames()[Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/builtin/LifeLogAggregator;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v8

    aget-object v9, v7, v4

    aget-object v4, v7, v4

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v8, v9, v4}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContextForDisplay(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/builtin/LifeLogAggregator;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v4

    aget-object v8, v7, v5

    aget-object v5, v7, v5

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v5

    invoke-virtual {v4, v8, v5}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContextForDisplay(Ljava/lang/String;[J)V

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/builtin/LifeLogAggregator;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v4

    aget-object v5, v7, v3

    aget-object v3, v7, v3

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContextForDisplay(Ljava/lang/String;[D)V

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/builtin/LifeLogAggregator;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v3

    aget-object v4, v7, v2

    aget-object v2, v7, v2

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContextForDisplay(Ljava/lang/String;[D)V

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/builtin/LifeLogAggregator;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v2

    aget-object v3, v7, v1

    aget-object v1, v7, v1

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContextForDisplay(Ljava/lang/String;[D)V

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/builtin/LifeLogAggregator;->notifyObserver()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_7
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_8
    :goto_1
    :try_start_5
    sget-object v0, Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;->ERROR_UPDATED_CONTEXT_TYPE_FAULT:Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;->getCode()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;->getMessage(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-void

    :goto_2
    monitor-exit p0

    throw p1
.end method

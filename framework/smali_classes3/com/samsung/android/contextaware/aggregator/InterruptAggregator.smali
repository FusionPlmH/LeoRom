.class public Lcom/samsung/android/contextaware/aggregator/InterruptAggregator;
.super Lcom/samsung/android/contextaware/manager/InterruptContextProvider;
.source "InterruptAggregator.java"


# direct methods
.method public constructor <init>(Lcom/samsung/android/contextaware/manager/ContextComponent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/contextaware/manager/InterruptContextProvider;-><init>(Lcom/samsung/android/contextaware/manager/ContextComponent;)V

    return-void
.end method


# virtual methods
.method public final start(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;I)V
    .locals 2

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/InterruptAggregator;->mProvider:Lcom/samsung/android/contextaware/manager/ContextComponent;

    check-cast v0, Lcom/samsung/android/contextaware/aggregator/Aggregator;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/aggregator/Aggregator;->initializeFaultDetectionResult()V

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/InterruptAggregator;->mProvider:Lcom/samsung/android/contextaware/manager/ContextComponent;

    check-cast v0, Lcom/samsung/android/contextaware/aggregator/Aggregator;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/aggregator/Aggregator;->registerObserver()V

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/InterruptAggregator;->mProvider:Lcom/samsung/android/contextaware/manager/ContextComponent;

    check-cast v0, Lcom/samsung/android/contextaware/aggregator/Aggregator;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/aggregator/Aggregator;->getSubCollectors()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/contextaware/manager/ContextComponent;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1, p2}, Lcom/samsung/android/contextaware/manager/ContextComponent;->start(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;I)V

    :cond_0
    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/samsung/android/contextaware/manager/InterruptContextProvider;->start(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;I)V

    return-void
.end method

.method public final stop(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;I)V
    .locals 2

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/InterruptAggregator;->mProvider:Lcom/samsung/android/contextaware/manager/ContextComponent;

    check-cast v0, Lcom/samsung/android/contextaware/aggregator/Aggregator;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/aggregator/Aggregator;->initializeFaultDetectionResult()V

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/InterruptAggregator;->mProvider:Lcom/samsung/android/contextaware/manager/ContextComponent;

    check-cast v0, Lcom/samsung/android/contextaware/aggregator/Aggregator;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/aggregator/Aggregator;->getSubCollectors()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/contextaware/manager/ContextComponent;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1, p2}, Lcom/samsung/android/contextaware/manager/ContextComponent;->stop(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;I)V

    :cond_0
    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/samsung/android/contextaware/manager/InterruptContextProvider;->stop(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;I)V

    return-void
.end method

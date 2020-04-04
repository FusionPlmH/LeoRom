.class public Lcom/samsung/android/contextaware/manager/ListenerListManager;
.super Ljava/lang/Object;
.source "ListenerListManager.java"


# static fields
.field private static volatile instance:Lcom/samsung/android/contextaware/manager/ListenerListManager;


# instance fields
.field private mCreator:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/samsung/android/contextaware/creator/ContextProviderCreator;",
            ">;"
        }
    .end annotation
.end field

.field private final mListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private final mWatcherList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/samsung/android/contextaware/manager/ContextAwareService$Watcher;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/contextaware/manager/ListenerListManager;->mListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/contextaware/manager/ListenerListManager;->mWatcherList:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method public static getInstance()Lcom/samsung/android/contextaware/manager/ListenerListManager;
    .locals 2

    sget-object v0, Lcom/samsung/android/contextaware/manager/ListenerListManager;->instance:Lcom/samsung/android/contextaware/manager/ListenerListManager;

    if-nez v0, :cond_1

    const-class v0, Lcom/samsung/android/contextaware/manager/ListenerListManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/contextaware/manager/ListenerListManager;->instance:Lcom/samsung/android/contextaware/manager/ListenerListManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/contextaware/manager/ListenerListManager;

    invoke-direct {v1}, Lcom/samsung/android/contextaware/manager/ListenerListManager;-><init>()V

    sput-object v1, Lcom/samsung/android/contextaware/manager/ListenerListManager;->instance:Lcom/samsung/android/contextaware/manager/ListenerListManager;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/samsung/android/contextaware/manager/ListenerListManager;->instance:Lcom/samsung/android/contextaware/manager/ListenerListManager;

    return-object v0
.end method

.method private getUsedSubCollectionCount(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/contextaware/manager/ListenerListManager;->mCreator:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/contextaware/creator/ContextProviderCreator;

    if-eqz v2, :cond_6

    invoke-virtual {v2, p1}, Lcom/samsung/android/contextaware/creator/ContextProviderCreator;->existContextProvider(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    instance-of v3, v2, Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator;

    if-eqz v3, :cond_6

    move-object v3, v2

    check-cast v3, Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator;

    invoke-virtual {v3, p1}, Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator;->getSubCollectionList(Ljava/lang/String;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_1

    :cond_3
    invoke-direct {p0, v5}, Lcom/samsung/android/contextaware/manager/ListenerListManager;->isAggregator(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-direct {p0, v5, p2}, Lcom/samsung/android/contextaware/manager/ListenerListManager;->getUsedSubCollectionCount(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    add-int/2addr v0, v6

    :cond_4
    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    add-int/lit8 v0, v0, 0x1

    :cond_5
    goto :goto_1

    :cond_6
    goto :goto_0

    :cond_7
    return v0
.end method

.method private isAggregator(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ListenerListManager;->mCreator:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/contextaware/creator/ContextProviderCreator;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lcom/samsung/android/contextaware/creator/ContextProviderCreator;->existContextProvider(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    instance-of v2, v1, Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator;

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    return v2

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method protected final addListener(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ListenerListManager;->mListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ListenerListManager;->mListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method protected final addWatcher(Lcom/samsung/android/contextaware/manager/ContextAwareService$Watcher;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ListenerListManager;->mWatcherList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ListenerListManager;->mWatcherList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method protected final getListener(Landroid/os/IBinder;)Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/contextaware/manager/ListenerListManager;->mListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->getToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v0, v2

    goto :goto_1

    :cond_0
    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method

.method protected final getListenerList()Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ListenerListManager;->mListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method public final getUsedServiceCount(Ljava/lang/String;)I
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/contextaware/manager/ListenerListManager;->mListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;

    invoke-static {}, Lcom/samsung/android/contextaware/ContextList;->getInstance()Lcom/samsung/android/contextaware/ContextList;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/samsung/android/contextaware/ContextList;->getServiceOrdinal(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->getServices()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->getServices()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/2addr v0, v4

    :cond_0
    goto :goto_0

    :cond_1
    return v0
.end method

.method public final getUsedSubCollectionCount(Ljava/lang/String;)I
    .locals 9

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/contextaware/manager/ListenerListManager;->mListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->getServices()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v5, v0

    move-object v0, v4

    :cond_0
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {}, Lcom/samsung/android/contextaware/ContextList;->getInstance()Lcom/samsung/android/contextaware/ContextList;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/samsung/android/contextaware/ContextList;->getServiceCode(I)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    goto :goto_1

    :cond_1
    invoke-direct {p0, v7, p1}, Lcom/samsung/android/contextaware/manager/ListenerListManager;->getUsedSubCollectionCount(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    add-int/2addr v5, v8

    goto :goto_1

    :cond_2
    nop

    move v0, v5

    goto :goto_0

    :cond_3
    return v0
.end method

.method public final getUsedTotalCount(Ljava/lang/String;)I
    .locals 2

    invoke-virtual {p0, p1}, Lcom/samsung/android/contextaware/manager/ListenerListManager;->getUsedServiceCount(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/samsung/android/contextaware/manager/ListenerListManager;->getUsedSubCollectionCount(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method protected final getWatcherList()Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/samsung/android/contextaware/manager/ContextAwareService$Watcher;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ListenerListManager;->mWatcherList:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method public final removeListener(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ListenerListManager;->mListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ListenerListManager;->mListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final removeWatcher(Lcom/samsung/android/contextaware/manager/ContextAwareService$Watcher;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ListenerListManager;->mWatcherList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ListenerListManager;->mWatcherList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method protected final setCreator(Ljava/util/concurrent/CopyOnWriteArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/samsung/android/contextaware/creator/ContextProviderCreator;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/contextaware/manager/ListenerListManager;->mCreator:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

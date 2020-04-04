.class public final Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;
.super Ljava/lang/Object;
.source "ContextAwareService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/contextaware/manager/ContextAwareService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Listener"
.end annotation


# instance fields
.field private mCmdProcessResultManager:Lcom/samsung/android/contextaware/manager/fault/CmdProcessResultManager;

.field private final mServices:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mToken:Landroid/os/IBinder;

.field final synthetic this$0:Lcom/samsung/android/contextaware/manager/ContextAwareService;


# direct methods
.method constructor <init>(Lcom/samsung/android/contextaware/manager/ContextAwareService;Landroid/os/IBinder;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->this$0:Lcom/samsung/android/contextaware/manager/ContextAwareService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->mToken:Landroid/os/IBinder;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->mServices:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;)Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->mToken:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;)Lcom/samsung/android/contextaware/manager/fault/CmdProcessResultManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->mCmdProcessResultManager:Lcom/samsung/android/contextaware/manager/fault/CmdProcessResultManager;

    return-object v0
.end method

.method static synthetic access$102(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;Lcom/samsung/android/contextaware/manager/fault/CmdProcessResultManager;)Lcom/samsung/android/contextaware/manager/fault/CmdProcessResultManager;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->mCmdProcessResultManager:Lcom/samsung/android/contextaware/manager/fault/CmdProcessResultManager;

    return-object p1
.end method

.method static synthetic access$200(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->mServices:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$900(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;ILandroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->callback(ILandroid/os/Bundle;)V

    return-void
.end method

.method private declared-synchronized callback(ILandroid/os/Bundle;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->mToken:Landroid/os/IBinder;

    invoke-static {v0}, Lcom/samsung/android/contextaware/manager/IContextAwareCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/contextaware/manager/IContextAwareCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/contextaware/manager/IContextAwareCallback;->caCallback(ILandroid/os/Bundle;)V

    iget-object v1, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->this$0:Lcom/samsung/android/contextaware/manager/ContextAwareService;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/samsung/android/contextaware/manager/ContextAwareService;->access$702(Lcom/samsung/android/contextaware/manager/ContextAwareService;Z)Z
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_1
    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->exception(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_3
    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->exception(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :goto_1
    nop

    monitor-exit p0

    return-void

    :goto_2
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public binderDied()V
    .locals 11

    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->this$0:Lcom/samsung/android/contextaware/manager/ContextAwareService;

    invoke-static {v0}, Lcom/samsung/android/contextaware/manager/ContextAwareService;->access$500(Lcom/samsung/android/contextaware/manager/ContextAwareService;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    const-string v0, "[binderDied 01] Mutex is locked for binderDied"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->mServices:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v2, v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->mServices:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->this$0:Lcom/samsung/android/contextaware/manager/ContextAwareService;

    invoke-static {v4}, Lcom/samsung/android/contextaware/manager/ContextAwareService;->access$600(Lcom/samsung/android/contextaware/manager/ContextAwareService;)Lcom/samsung/android/contextaware/manager/ContextManager;

    move-result-object v5

    invoke-static {}, Lcom/samsung/android/contextaware/ContextList;->getInstance()Lcom/samsung/android/contextaware/ContextList;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/samsung/android/contextaware/ContextList;->getServiceCode(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->mCmdProcessResultManager:Lcom/samsung/android/contextaware/manager/fault/CmdProcessResultManager;

    const/4 v10, 0x3

    move-object v6, p0

    invoke-virtual/range {v5 .. v10}, Lcom/samsung/android/contextaware/manager/ContextManager;->stop(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;Ljava/lang/String;Lcom/samsung/android/contextaware/manager/IContextObserver;Lcom/samsung/android/contextaware/manager/fault/ICmdProcessResultObserver;I)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/samsung/android/contextaware/manager/ListenerListManager;->getInstance()Lcom/samsung/android/contextaware/manager/ListenerListManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/samsung/android/contextaware/manager/ListenerListManager;->removeListener(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;)V

    iget-object v2, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->mToken:Landroid/os/IBinder;

    const/4 v3, 0x0

    invoke-interface {v2, p0, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    const-string v2, "[binderDied 02] Mutex is unlocked for binderDied"

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->this$0:Lcom/samsung/android/contextaware/manager/ContextAwareService;

    invoke-static {v0}, Lcom/samsung/android/contextaware/manager/ContextAwareService;->access$500(Lcom/samsung/android/contextaware/manager/ContextAwareService;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    nop

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->this$0:Lcom/samsung/android/contextaware/manager/ContextAwareService;

    invoke-static {v1}, Lcom/samsung/android/contextaware/manager/ContextAwareService;->access$500(Lcom/samsung/android/contextaware/manager/ContextAwareService;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public decreaseServiceCount(I)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->mServices:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_SERVICE_COUNT_FAULT:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->getCode()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->getMessage(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->mServices:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->mServices:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getServices()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->mServices:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public getToken()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->mToken:Landroid/os/IBinder;

    return-object v0
.end method

.method public increaseServiceCount(I)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->mServices:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_SERVICE_COUNT_FAULT:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->getCode()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->getMessage(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->mServices:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->mServices:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final setContextCollectionResultNotifyCompletion(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->this$0:Lcom/samsung/android/contextaware/manager/ContextAwareService;

    invoke-static {v0, p1}, Lcom/samsung/android/contextaware/manager/ContextAwareService;->access$702(Lcom/samsung/android/contextaware/manager/ContextAwareService;Z)Z

    return-void
.end method

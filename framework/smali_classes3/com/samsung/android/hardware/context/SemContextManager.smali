.class public Lcom/samsung/android/hardware/context/SemContextManager;
.super Ljava/lang/Object;
.source "SemContextManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SemContextManager"


# instance fields
.field private mAvailableServiceMap:Ljava/util/Map;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mClientInfo:Ljava/lang/String;

.field private final mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private final mMainLooper:Landroid/os/Looper;

.field private final mSemContextService:Lcom/samsung/android/hardware/context/ISemContextService;


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mAvailableServiceMap:Ljava/util/Map;

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mClientInfo:Ljava/lang/String;

    const-string/jumbo v0, "scontext"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/hardware/context/ISemContextService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/hardware/context/ISemContextService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mSemContextService:Lcom/samsung/android/hardware/context/ISemContextService;

    iput-object p1, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mMainLooper:Landroid/os/Looper;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/hardware/context/SemContextManager;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mClientInfo:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/samsung/android/hardware/context/SemContextManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mClientInfo:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/samsung/android/hardware/context/SemContextManager;)Landroid/os/Looper;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mMainLooper:Landroid/os/Looper;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/hardware/context/SemContextManager;Lcom/samsung/android/hardware/context/SemContextEvent;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextManager;->checkHistoryMode(Lcom/samsung/android/hardware/context/SemContextEvent;)Z

    move-result v0

    return v0
.end method

.method private checkHistoryMode(Lcom/samsung/android/hardware/context/SemContextEvent;)Z
    .locals 8

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lcom/samsung/android/hardware/context/SemContextEvent;->semContext:Lcom/samsung/android/hardware/context/SemContext;

    invoke-virtual {v3}, Lcom/samsung/android/hardware/context/SemContext;->getType()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onSemContextChanged() : event = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/samsung/android/hardware/context/SemContext;->getServiceName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v3, v4, :cond_5

    const/4 v4, 0x6

    if-eq v3, v4, :cond_4

    const/16 v4, 0x1a

    if-eq v3, v4, :cond_2

    const/16 v4, 0x21

    if-eq v3, v4, :cond_0

    goto :goto_0

    :cond_0
    nop

    invoke-virtual {p1}, Lcom/samsung/android/hardware/context/SemContextEvent;->getStepLevelMonitorContext()Lcom/samsung/android/hardware/context/SemContextStepLevelMonitor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/hardware/context/SemContextStepLevelMonitor;->getMode()I

    move-result v6

    if-ne v6, v5, :cond_1

    move v0, v5

    nop

    :cond_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0

    :cond_2
    nop

    invoke-virtual {p1}, Lcom/samsung/android/hardware/context/SemContextEvent;->getActivityBatchContext()Lcom/samsung/android/hardware/context/SemContextActivityBatch;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/hardware/context/SemContextActivityBatch;->getMode()I

    move-result v6

    if-ne v6, v5, :cond_3

    move v0, v5

    nop

    :cond_3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/samsung/android/hardware/context/SemContextEvent;->getAutoRotationContext()Lcom/samsung/android/hardware/context/SemContextAutoRotation;

    move-result-object v0

    const-string v4, " Angle : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/hardware/context/SemContextAutoRotation;->getAngle()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Lcom/samsung/android/hardware/context/SemContextEvent;->getPedometerContext()Lcom/samsung/android/hardware/context/SemContextPedometer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/hardware/context/SemContextPedometer;->getMode()I

    move-result v7

    if-ne v7, v4, :cond_6

    move v0, v5

    nop

    :cond_6
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    nop

    :goto_0
    const-string v0, "SemContextManager"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private checkListenerAndService(Lcom/samsung/android/hardware/context/SemContextListener;I)Z
    .locals 2

    if-nez p1, :cond_0

    const-string v0, "SemContextManager"

    const-string v1, "Listener is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {p0, p2}, Lcom/samsung/android/hardware/context/SemContextManager;->isAvailableService(I)Z

    move-result v0

    return v0
.end method

.method private getAvailableServiceMap()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mSemContextService:Lcom/samsung/android/hardware/context/ISemContextService;

    if-nez v1, :cond_0

    const-string v1, "SemContextManager"

    const-string v2, "SemContextService is null. Please check SENSORHUB feature."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return-object v1

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mSemContextService:Lcom/samsung/android/hardware/context/ISemContextService;

    invoke-interface {v1}, Lcom/samsung/android/hardware/context/ISemContextService;->getAvailableServiceMap()Ljava/util/Map;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "SemContextManager"

    const-string v3, "RemoteException in getAvailableServiceMap: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-object v0
.end method

.method private getListenerDelegate(Lcom/samsung/android/hardware/context/SemContextListener;)Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;
    .locals 4

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;

    invoke-virtual {v2}, Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;->getListener()Lcom/samsung/android/hardware/context/SemContextListener;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v0, v2

    goto :goto_1

    :cond_1
    goto :goto_0

    :cond_2
    :goto_1
    return-object v0

    :cond_3
    :goto_2
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public changeParameters(Lcom/samsung/android/hardware/context/SemContextListener;II)Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-ne p2, v1, :cond_0

    new-instance v1, Lcom/samsung/android/hardware/context/SemContextPedometerAttribute;

    invoke-direct {v1, p3}, Lcom/samsung/android/hardware/context/SemContextPedometerAttribute;-><init>(I)V

    move-object v0, v1

    goto :goto_0

    :cond_0
    const/16 v1, 0x21

    if-ne p2, v1, :cond_1

    new-instance v1, Lcom/samsung/android/hardware/context/SemContextStepLevelMonitorAttribute;

    invoke-direct {v1, p3}, Lcom/samsung/android/hardware/context/SemContextStepLevelMonitorAttribute;-><init>(I)V

    move-object v0, v1

    :cond_1
    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/hardware/context/SemContextManager;->changeParameters(Lcom/samsung/android/hardware/context/SemContextListener;ILcom/samsung/android/hardware/context/SemContextAttribute;)Z

    move-result v1

    return v1
.end method

.method public changeParameters(Lcom/samsung/android/hardware/context/SemContextListener;IIDD)Z
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-ne p2, v1, :cond_0

    new-instance v1, Lcom/samsung/android/hardware/context/SemContextPedometerAttribute;

    move-object v2, v1

    move v3, p3

    move-wide v4, p4

    move-wide v6, p6

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/hardware/context/SemContextPedometerAttribute;-><init>(IDD)V

    move-object v0, v1

    :cond_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/hardware/context/SemContextManager;->changeParameters(Lcom/samsung/android/hardware/context/SemContextListener;ILcom/samsung/android/hardware/context/SemContextAttribute;)Z

    move-result v1

    return v1
.end method

.method public changeParameters(Lcom/samsung/android/hardware/context/SemContextListener;IIIII)Z
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    const/16 v1, 0x23

    if-ne p2, v1, :cond_0

    new-instance v1, Lcom/samsung/android/hardware/context/SemContextSedentaryTimerAttribute;

    const/4 v3, 0x1

    move-object v2, v1

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/hardware/context/SemContextSedentaryTimerAttribute;-><init>(IIIII)V

    move-object v0, v1

    :cond_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/hardware/context/SemContextManager;->changeParameters(Lcom/samsung/android/hardware/context/SemContextListener;ILcom/samsung/android/hardware/context/SemContextAttribute;)Z

    move-result v1

    return v1
.end method

.method public changeParameters(Lcom/samsung/android/hardware/context/SemContextListener;ILcom/samsung/android/hardware/context/SemContextAttribute;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p3, :cond_6

    invoke-virtual {p3}, Lcom/samsung/android/hardware/context/SemContextAttribute;->checkAttribute()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/hardware/context/SemContextManager;->checkListenerAndService(Lcom/samsung/android/hardware/context/SemContextListener;I)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    const/4 v1, 0x1

    if-eq p2, v1, :cond_3

    const/4 v2, 0x2

    if-eq p2, v2, :cond_3

    const/16 v2, 0x21

    if-eq p2, v2, :cond_3

    const/16 v2, 0x23

    if-eq p2, v2, :cond_3

    const/16 v2, 0x27

    if-eq p2, v2, :cond_3

    const/16 v2, 0x2f

    if-eq p2, v2, :cond_3

    const/16 v2, 0x33

    if-eq p2, v2, :cond_3

    const/16 v2, 0x35

    if-eq p2, v2, :cond_3

    const/16 v2, 0x36

    if-ne p2, v2, :cond_2

    goto :goto_0

    :cond_2
    return v0

    :cond_3
    :goto_0
    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextManager;->getListenerDelegate(Lcom/samsung/android/hardware/context/SemContextListener;)Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;

    move-result-object v2

    if-nez v2, :cond_4

    const-string v1, "SemContextManager"

    const-string v3, "  .changeParameters : SemContextListener is null!"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_4
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mSemContextService:Lcom/samsung/android/hardware/context/ISemContextService;

    invoke-interface {v0, v2, p2, p3}, Lcom/samsung/android/hardware/context/ISemContextService;->changeParameters(Landroid/os/IBinder;ILcom/samsung/android/hardware/context/SemContextAttribute;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "SemContextManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  .changeParameters : listener = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", service="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/samsung/android/hardware/context/SemContext;->getServiceName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    goto :goto_1

    :catch_0
    move-exception v0

    const-string v3, "SemContextManager"

    const-string v4, "RemoteException in changeParameters: "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return v1

    :cond_6
    :goto_2
    return v0
.end method

.method public getCurrentServiceList()Ljava/lang/String;
    .locals 4

    const-string v0, ""

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mSemContextService:Lcom/samsung/android/hardware/context/ISemContextService;

    invoke-interface {v1}, Lcom/samsung/android/hardware/context/ISemContextService;->getCurrentServiceList()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "SemContextManager"

    const-string v3, "RemoteException in getCurrentServiceList: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-object v0
.end method

.method public getFeatureLevel(I)I
    .locals 2

    invoke-virtual {p0, p1}, Lcom/samsung/android/hardware/context/SemContextManager;->isAvailableService(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mAvailableServiceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public initializeSemContextService(Lcom/samsung/android/hardware/context/SemContextListener;I)V
    .locals 4

    invoke-virtual {p0, p2}, Lcom/samsung/android/hardware/context/SemContextManager;->isAvailableService(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextManager;->getListenerDelegate(Lcom/samsung/android/hardware/context/SemContextListener;)Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v1, "SemContextManager"

    const-string v2, "  .initializeSemContextService : SemContextListener is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mSemContextService:Lcom/samsung/android/hardware/context/ISemContextService;

    invoke-interface {v1, v0, p2}, Lcom/samsung/android/hardware/context/ISemContextService;->initializeService(Landroid/os/IBinder;I)V

    const-string v1, "SemContextManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  .initializeSemContextService : listener = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", service="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/samsung/android/hardware/context/SemContext;->getServiceName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "SemContextManager"

    const-string v3, "RemoteException in initializeSemContextService: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void

    :cond_2
    :goto_1
    return-void
.end method

.method public isAvailableService(I)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mAvailableServiceMap:Ljava/util/Map;

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextManager;->getAvailableServiceMap()Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mAvailableServiceMap:Ljava/util/Map;

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mAvailableServiceMap:Ljava/util/Map;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mAvailableServiceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x2f

    if-ne p1, v1, :cond_2

    const-string v1, "BCM4773_SLOCATION_CORE"

    const-string/jumbo v2, "ro.gps.chip.vendor.slocation"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    :cond_2
    return v0
.end method

.method public registerListener(Lcom/samsung/android/hardware/context/SemContextListener;I)Z
    .locals 2

    invoke-static {p2}, Lcom/samsung/android/hardware/context/SemContextAttribute;->getDefaultAttribute(I)Lcom/samsung/android/hardware/context/SemContextAttribute;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/hardware/context/SemContextManager;->registerListener(Lcom/samsung/android/hardware/context/SemContextListener;ILcom/samsung/android/hardware/context/SemContextAttribute;)Z

    move-result v1

    return v1
.end method

.method public registerListener(Lcom/samsung/android/hardware/context/SemContextListener;II)Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x3

    if-ne p2, v1, :cond_0

    new-instance v1, Lcom/samsung/android/hardware/context/SemContextStepCountAlertAttribute;

    invoke-direct {v1, p3}, Lcom/samsung/android/hardware/context/SemContextStepCountAlertAttribute;-><init>(I)V

    move-object v0, v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x6

    if-ne p2, v1, :cond_1

    new-instance v1, Lcom/samsung/android/hardware/context/SemContextAutoRotationAttribute;

    invoke-direct {v1, p3}, Lcom/samsung/android/hardware/context/SemContextAutoRotationAttribute;-><init>(I)V

    move-object v0, v1

    goto :goto_0

    :cond_1
    const/16 v1, 0x10

    if-ne p2, v1, :cond_2

    new-instance v1, Lcom/samsung/android/hardware/context/SemContextWakeUpVoiceAttribute;

    invoke-direct {v1, p3}, Lcom/samsung/android/hardware/context/SemContextWakeUpVoiceAttribute;-><init>(I)V

    move-object v0, v1

    goto :goto_0

    :cond_2
    const/16 v1, 0x21

    if-ne p2, v1, :cond_3

    new-instance v1, Lcom/samsung/android/hardware/context/SemContextStepLevelMonitorAttribute;

    invoke-direct {v1, p3}, Lcom/samsung/android/hardware/context/SemContextStepLevelMonitorAttribute;-><init>(I)V

    move-object v0, v1

    goto :goto_0

    :cond_3
    const/16 v1, 0x24

    if-ne p2, v1, :cond_4

    new-instance v1, Lcom/samsung/android/hardware/context/SemContextFlatMotionForTableModeAttribute;

    invoke-direct {v1, p3}, Lcom/samsung/android/hardware/context/SemContextFlatMotionForTableModeAttribute;-><init>(I)V

    move-object v0, v1

    :cond_4
    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/hardware/context/SemContextManager;->registerListener(Lcom/samsung/android/hardware/context/SemContextListener;ILcom/samsung/android/hardware/context/SemContextAttribute;)Z

    move-result v1

    return v1
.end method

.method public registerListener(Lcom/samsung/android/hardware/context/SemContextListener;IIDD)Z
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-ne p2, v1, :cond_0

    new-instance v1, Lcom/samsung/android/hardware/context/SemContextPedometerAttribute;

    move-object v2, v1

    move v3, p3

    move-wide v4, p4

    move-wide v6, p6

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/hardware/context/SemContextPedometerAttribute;-><init>(IDD)V

    move-object v0, v1

    :cond_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/hardware/context/SemContextManager;->registerListener(Lcom/samsung/android/hardware/context/SemContextListener;ILcom/samsung/android/hardware/context/SemContextAttribute;)Z

    move-result v1

    return v1
.end method

.method public registerListener(Lcom/samsung/android/hardware/context/SemContextListener;III)Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    const/16 v1, 0xc

    if-ne p2, v1, :cond_0

    new-instance v1, Lcom/samsung/android/hardware/context/SemContextShakeMotionAttribute;

    invoke-direct {v1, p3, p4}, Lcom/samsung/android/hardware/context/SemContextShakeMotionAttribute;-><init>(II)V

    move-object v0, v1

    :cond_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/hardware/context/SemContextManager;->registerListener(Lcom/samsung/android/hardware/context/SemContextListener;ILcom/samsung/android/hardware/context/SemContextAttribute;)Z

    move-result v1

    return v1
.end method

.method public registerListener(Lcom/samsung/android/hardware/context/SemContextListener;IIII)Z
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    const/16 v1, 0x23

    if-ne p2, v1, :cond_0

    new-instance v1, Lcom/samsung/android/hardware/context/SemContextSedentaryTimerAttribute;

    const/16 v6, 0x5dc

    const/16 v7, 0x5dc

    move-object v2, v1

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/hardware/context/SemContextSedentaryTimerAttribute;-><init>(IIIII)V

    move-object v0, v1

    :cond_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/hardware/context/SemContextManager;->registerListener(Lcom/samsung/android/hardware/context/SemContextListener;ILcom/samsung/android/hardware/context/SemContextAttribute;)Z

    move-result v1

    return v1
.end method

.method public registerListener(Lcom/samsung/android/hardware/context/SemContextListener;IIIII)Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    const/16 v1, 0x1c

    if-ne p2, v1, :cond_0

    new-instance v1, Lcom/samsung/android/hardware/context/SemContextSpecificPoseAlertAttribute;

    invoke-direct {v1, p3, p4, p5, p6}, Lcom/samsung/android/hardware/context/SemContextSpecificPoseAlertAttribute;-><init>(IIII)V

    move-object v0, v1

    :cond_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/hardware/context/SemContextManager;->registerListener(Lcom/samsung/android/hardware/context/SemContextListener;ILcom/samsung/android/hardware/context/SemContextAttribute;)Z

    move-result v1

    return v1
.end method

.method public registerListener(Lcom/samsung/android/hardware/context/SemContextListener;IIIIII)Z
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    const/16 v1, 0x18

    if-ne p2, v1, :cond_0

    new-instance v1, Lcom/samsung/android/hardware/context/SemContextActivityLocationLoggingAttribute;

    move-object v2, v1

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/hardware/context/SemContextActivityLocationLoggingAttribute;-><init>(IIIII)V

    move-object v0, v1

    goto :goto_0

    :cond_0
    const/16 v1, 0x23

    if-ne p2, v1, :cond_1

    new-instance v1, Lcom/samsung/android/hardware/context/SemContextSedentaryTimerAttribute;

    move-object v2, v1

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/hardware/context/SemContextSedentaryTimerAttribute;-><init>(IIIII)V

    move-object v0, v1

    :cond_1
    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/hardware/context/SemContextManager;->registerListener(Lcom/samsung/android/hardware/context/SemContextListener;ILcom/samsung/android/hardware/context/SemContextAttribute;)Z

    move-result v1

    return v1
.end method

.method public registerListener(Lcom/samsung/android/hardware/context/SemContextListener;ILandroid/os/Looper;)Z
    .locals 2

    invoke-static {p2}, Lcom/samsung/android/hardware/context/SemContextAttribute;->getDefaultAttribute(I)Lcom/samsung/android/hardware/context/SemContextAttribute;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/samsung/android/hardware/context/SemContextManager;->registerListener(Lcom/samsung/android/hardware/context/SemContextListener;ILcom/samsung/android/hardware/context/SemContextAttribute;Landroid/os/Looper;)Z

    move-result v1

    return v1
.end method

.method public registerListener(Lcom/samsung/android/hardware/context/SemContextListener;ILcom/samsung/android/hardware/context/SemContextAttribute;)Z
    .locals 4

    const/16 v0, 0x30

    if-ne p2, v0, :cond_0

    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/hardware/context/SemContextManager;->setReferenceData(ILcom/samsung/android/hardware/context/SemContextAttribute;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    if-eqz p3, :cond_4

    invoke-virtual {p3}, Lcom/samsung/android/hardware/context/SemContextAttribute;->checkAttribute()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/hardware/context/SemContextManager;->checkListenerAndService(Lcom/samsung/android/hardware/context/SemContextListener;I)Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    :cond_2
    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextManager;->getListenerDelegate(Lcom/samsung/android/hardware/context/SemContextListener;)Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;

    move-result-object v0

    if-nez v0, :cond_3

    new-instance v1, Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;-><init>(Lcom/samsung/android/hardware/context/SemContextManager;Lcom/samsung/android/hardware/context/SemContextListener;Landroid/os/Looper;)V

    move-object v0, v1

    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mSemContextService:Lcom/samsung/android/hardware/context/ISemContextService;

    invoke-interface {v1, v0, p2, p3}, Lcom/samsung/android/hardware/context/ISemContextService;->registerCallback(Landroid/os/IBinder;ILcom/samsung/android/hardware/context/SemContextAttribute;)V

    const-string v1, "SemContextManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  .registerListener : listener = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", service="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/samsung/android/hardware/context/SemContext;->getServiceName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "SemContextManager"

    const-string v3, "RemoteException in registerListener: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v1, 0x1

    return v1

    :cond_4
    :goto_1
    return v0
.end method

.method public registerListener(Lcom/samsung/android/hardware/context/SemContextListener;ILcom/samsung/android/hardware/context/SemContextAttribute;Landroid/os/Looper;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p3, :cond_3

    invoke-virtual {p3}, Lcom/samsung/android/hardware/context/SemContextAttribute;->checkAttribute()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/hardware/context/SemContextManager;->checkListenerAndService(Lcom/samsung/android/hardware/context/SemContextListener;I)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextManager;->getListenerDelegate(Lcom/samsung/android/hardware/context/SemContextListener;)Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v1, Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;

    invoke-direct {v1, p0, p1, p4}, Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;-><init>(Lcom/samsung/android/hardware/context/SemContextManager;Lcom/samsung/android/hardware/context/SemContextListener;Landroid/os/Looper;)V

    move-object v0, v1

    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mSemContextService:Lcom/samsung/android/hardware/context/ISemContextService;

    invoke-interface {v1, v0, p2, p3}, Lcom/samsung/android/hardware/context/ISemContextService;->registerCallback(Landroid/os/IBinder;ILcom/samsung/android/hardware/context/SemContextAttribute;)V

    const-string v1, "SemContextManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  .registerListener : listener = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", service="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/samsung/android/hardware/context/SemContext;->getServiceName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "SemContextManager"

    const-string v3, "RemoteException in registerListener: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v1, 0x1

    return v1

    :cond_3
    :goto_1
    return v0
.end method

.method public registerListener(Lcom/samsung/android/hardware/context/SemContextListener;I[I)Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    const/16 v1, 0x1b

    if-ne p2, v1, :cond_0

    new-instance v1, Lcom/samsung/android/hardware/context/SemContextActivityNotificationAttribute;

    invoke-direct {v1, p3}, Lcom/samsung/android/hardware/context/SemContextActivityNotificationAttribute;-><init>([I)V

    move-object v0, v1

    :cond_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/hardware/context/SemContextManager;->registerListener(Lcom/samsung/android/hardware/context/SemContextListener;ILcom/samsung/android/hardware/context/SemContextAttribute;)Z

    move-result v1

    return v1
.end method

.method public registerListener(Lcom/samsung/android/hardware/context/SemContextListener;I[II)Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    const/16 v1, 0x1e

    if-ne p2, v1, :cond_0

    new-instance v1, Lcom/samsung/android/hardware/context/SemContextActivityNotificationExAttribute;

    invoke-direct {v1, p3, p4}, Lcom/samsung/android/hardware/context/SemContextActivityNotificationExAttribute;-><init>([II)V

    move-object v0, v1

    :cond_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/hardware/context/SemContextManager;->registerListener(Lcom/samsung/android/hardware/context/SemContextListener;ILcom/samsung/android/hardware/context/SemContextAttribute;)Z

    move-result v1

    return v1
.end method

.method public requestHistoryData(Lcom/samsung/android/hardware/context/SemContextListener;I)V
    .locals 4

    invoke-virtual {p0, p2}, Lcom/samsung/android/hardware/context/SemContextManager;->isAvailableService(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    const/16 v0, 0x21

    if-eq p2, v0, :cond_1

    const/16 v0, 0x1a

    if-eq p2, v0, :cond_1

    const-string v0, "SemContextManager"

    const-string v1, "  .requestHistoryData : This service is not supported!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/hardware/context/SemContextManager;->checkListenerAndService(Lcom/samsung/android/hardware/context/SemContextListener;I)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextManager;->getListenerDelegate(Lcom/samsung/android/hardware/context/SemContextListener;)Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v1, "SemContextManager"

    const-string v2, "  .requestHistoryData : This listener is currently using other services. You should create a new listener to request history data."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    new-instance v1, Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;-><init>(Lcom/samsung/android/hardware/context/SemContextManager;Lcom/samsung/android/hardware/context/SemContextListener;Z)V

    move-object v0, v1

    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mSemContextService:Lcom/samsung/android/hardware/context/ISemContextService;

    invoke-interface {v1, v0, p2}, Lcom/samsung/android/hardware/context/ISemContextService;->requestHistoryData(Landroid/os/IBinder;I)V

    const-string v1, "SemContextManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  .requestHistoryData : listener = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", service="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/samsung/android/hardware/context/SemContext;->getServiceName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "SemContextManager"

    const-string v3, "RemoteException in requestHistoryData: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public requestToUpdate(Lcom/samsung/android/hardware/context/SemContextListener;I)V
    .locals 4

    invoke-virtual {p0, p2}, Lcom/samsung/android/hardware/context/SemContextManager;->isAvailableService(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    const/16 v0, 0x19

    if-eq p2, v0, :cond_1

    const/16 v0, 0x1a

    if-eq p2, v0, :cond_1

    const/16 v0, 0x32

    if-eq p2, v0, :cond_1

    const/16 v0, 0x33

    if-eq p2, v0, :cond_1

    const/16 v0, 0x34

    if-eq p2, v0, :cond_1

    const/16 v0, 0x36

    if-eq p2, v0, :cond_1

    const-string v0, "SemContextManager"

    const-string v1, "  .requestToUpdate : This service is not supported!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextManager;->getListenerDelegate(Lcom/samsung/android/hardware/context/SemContextListener;)Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v1, "SemContextManager"

    const-string v2, "  .requestToUpdate : SemContextListener is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mSemContextService:Lcom/samsung/android/hardware/context/ISemContextService;

    invoke-interface {v1, v0, p2}, Lcom/samsung/android/hardware/context/ISemContextService;->requestToUpdate(Landroid/os/IBinder;I)V

    const-string v1, "SemContextManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  .requestToUpdate : listener = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", service="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/samsung/android/hardware/context/SemContext;->getServiceName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "SemContextManager"

    const-string v3, "RemoteException in requestToUpdate: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public setClientInfo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mClientInfo:Ljava/lang/String;

    return-void
.end method

.method public setReferenceData(ILcom/samsung/android/hardware/context/SemContextAttribute;)Z
    .locals 8

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mSemContextService:Lcom/samsung/android/hardware/context/ISemContextService;

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    if-nez p2, :cond_0

    goto/16 :goto_5

    :cond_0
    const/4 v0, 0x0

    const/16 v2, 0x30

    if-ne p1, v2, :cond_1

    invoke-virtual {p2, v2}, Lcom/samsung/android/hardware/context/SemContextAttribute;->getAttribute(I)Landroid/os/Bundle;

    move-result-object v3

    goto :goto_0

    :cond_1
    invoke-virtual {p2, p1}, Lcom/samsung/android/hardware/context/SemContextAttribute;->getAttribute(I)Landroid/os/Bundle;

    move-result-object v3

    :goto_0
    if-nez v3, :cond_2

    return v1

    :cond_2
    const/16 v4, 0x10

    const/4 v5, 0x1

    if-eq p1, v4, :cond_a

    const/16 v4, 0x27

    if-eq p1, v4, :cond_7

    const/16 v4, 0x2b

    if-eq p1, v4, :cond_5

    if-eq p1, v2, :cond_3

    goto/16 :goto_1

    :cond_3
    :try_start_0
    const-string v4, "interrupt_gyro"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v2, "SemContextManager"

    const-string v4, "Bundle is not contained key data"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_4
    new-array v4, v5, [B

    const-string v5, "interrupt_gyro"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v4, v1

    const-string v5, "SemContextManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "sysfs data : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v1, v4, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mSemContextService:Lcom/samsung/android/hardware/context/ISemContextService;

    invoke-interface {v1, p1, v2, v4}, Lcom/samsung/android/hardware/context/ISemContextService;->setReferenceData(II[B)Z

    move-result v1

    move v0, v1

    goto/16 :goto_1

    :cond_5
    const-string v2, "display_status"

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "SemContextManager"

    const-string v4, "Bundle is not contained key data"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_6
    new-array v2, v5, [B

    const-string v5, "display_status"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v2, v1

    const-string v5, "SemContextManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Hall Sensor Data : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v1, v2, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mSemContextService:Lcom/samsung/android/hardware/context/ISemContextService;

    invoke-interface {v1, p1, v4, v2}, Lcom/samsung/android/hardware/context/ISemContextService;->setReferenceData(II[B)Z

    move-result v1

    move v0, v1

    goto :goto_1

    :cond_7
    const-string/jumbo v2, "luminance_config_data"

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    return v1

    :cond_8
    const-string/jumbo v2, "luminance_config_data"

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v2

    if-nez v2, :cond_9

    return v1

    :cond_9
    iget-object v4, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mSemContextService:Lcom/samsung/android/hardware/context/ISemContextService;

    invoke-interface {v4, p1, v1, v2}, Lcom/samsung/android/hardware/context/ISemContextService;->setReferenceData(II[B)Z

    move-result v1

    move v0, v1

    goto :goto_1

    :cond_a
    const-string/jumbo v2, "net_data"

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    const-string v2, "gram_data"

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b

    goto :goto_3

    :cond_b
    const-string/jumbo v2, "net_data"

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v2

    const-string v4, "gram_data"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v4

    if-eqz v2, :cond_e

    if-nez v4, :cond_c

    goto :goto_2

    :cond_c
    iget-object v6, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mSemContextService:Lcom/samsung/android/hardware/context/ISemContextService;

    invoke-interface {v6, p1, v5, v2}, Lcom/samsung/android/hardware/context/ISemContextService;->setReferenceData(II[B)Z

    move-result v6

    if-eqz v6, :cond_d

    iget-object v6, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mSemContextService:Lcom/samsung/android/hardware/context/ISemContextService;

    const/4 v7, 0x2

    invoke-interface {v6, p1, v7, v4}, Lcom/samsung/android/hardware/context/ISemContextService;->setReferenceData(II[B)Z

    move-result v6
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v6, :cond_d

    move v1, v5

    nop

    :cond_d
    move v0, v1

    nop

    :goto_1
    goto :goto_4

    :cond_e
    :goto_2
    return v1

    :cond_f
    :goto_3
    return v1

    :catch_0
    move-exception v1

    const-string v2, "SemContextManager"

    const-string v4, "RemoteException in initializeSemContextService: "

    invoke-static {v2, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_4
    return v0

    :cond_10
    :goto_5
    return v1
.end method

.method public setReferenceData(I[B[B)Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x10

    if-ne p1, v1, :cond_1

    new-instance v1, Lcom/samsung/android/hardware/context/SemContextWakeUpVoiceAttribute;

    invoke-direct {v1, p2, p3}, Lcom/samsung/android/hardware/context/SemContextWakeUpVoiceAttribute;-><init>([B[B)V

    move-object v0, v1

    :cond_1
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/hardware/context/SemContextManager;->setReferenceData(ILcom/samsung/android/hardware/context/SemContextAttribute;)Z

    move-result v1

    return v1

    :cond_2
    :goto_0
    const/4 v1, 0x0

    return v1
.end method

.method public unregisterListener(Lcom/samsung/android/hardware/context/SemContextListener;)V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/hardware/context/SemContextManager;->unregisterListener(Lcom/samsung/android/hardware/context/SemContextListener;I)V

    return-void
.end method

.method public unregisterListener(Lcom/samsung/android/hardware/context/SemContextListener;I)V
    .locals 4

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/hardware/context/SemContextManager;->checkListenerAndService(Lcom/samsung/android/hardware/context/SemContextListener;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextManager;->getListenerDelegate(Lcom/samsung/android/hardware/context/SemContextListener;)Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v1, "SemContextManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  .unregisterListener : SemContextListener is null!, manager = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", listener = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", service = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mSemContextService:Lcom/samsung/android/hardware/context/ISemContextService;

    invoke-interface {v1, v0, p2}, Lcom/samsung/android/hardware/context/ISemContextService;->unregisterCallback(Landroid/os/IBinder;I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    :cond_2
    const-string v1, "SemContextManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  .unregisterListener : listener = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", service="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/samsung/android/hardware/context/SemContext;->getServiceName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "SemContextManager"

    const-string v3, "RemoteException in unregisterListener: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

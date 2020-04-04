.class public Lcom/samsung/android/sepunion/SemUnionManager;
.super Ljava/lang/Object;
.source "SemUnionManager.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final mLock:Ljava/lang/Object;

.field private static final sConstructorMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Constructor;",
            ">;"
        }
    .end annotation
.end field

.field private static final sManagerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field private mService:Lcom/samsung/android/sepunion/IUnionManager;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-class v0, Lcom/samsung/android/sepunion/SemUnionManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sepunion/SemUnionManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/sepunion/SemUnionManager;->mLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/sepunion/SemUnionManager;->sManagerMap:Ljava/util/HashMap;

    sget-object v0, Lcom/samsung/android/sepunion/UnionConstants;->sClassPathForManager:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v2, Lcom/samsung/android/sepunion/SemUnionManager;->sManagerMap:Ljava/util/HashMap;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/sepunion/SemUnionManager;->sConstructorMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sepunion/SemUnionManager;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/samsung/android/sepunion/SemUnionManager;->initializeManagerMapData()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/sepunion/IUnionManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sepunion/SemUnionManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/sepunion/SemUnionManager;->mService:Lcom/samsung/android/sepunion/IUnionManager;

    invoke-direct {p0}, Lcom/samsung/android/sepunion/SemUnionManager;->initializeManagerMapData()V

    return-void
.end method

.method private getConstructor(Ljava/lang/String;)Ljava/lang/reflect/Constructor;
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    move-object v0, v2

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    :goto_0
    nop

    :goto_1
    return-object v1
.end method

.method private getService()Lcom/samsung/android/sepunion/IUnionManager;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sepunion/SemUnionManager;->mService:Lcom/samsung/android/sepunion/IUnionManager;

    if-nez v0, :cond_0

    const-string/jumbo v0, "sepunion"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sepunion/IUnionManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/sepunion/IUnionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sepunion/SemUnionManager;->mService:Lcom/samsung/android/sepunion/IUnionManager;

    iget-object v0, p0, Lcom/samsung/android/sepunion/SemUnionManager;->mService:Lcom/samsung/android/sepunion/IUnionManager;

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/sepunion/SemUnionManager;->TAG:Ljava/lang/String;

    const-string v1, "IUnionManager is NULL"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sepunion/SemUnionManager;->mService:Lcom/samsung/android/sepunion/IUnionManager;

    return-object v0
.end method

.method private initializeManagerMapData()V
    .locals 5

    const/4 v0, 0x0

    sget-object v1, Lcom/samsung/android/sepunion/SemUnionManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/samsung/android/sepunion/UnionConstants;->sClassPathForManager:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    sget-object v4, Lcom/samsung/android/sepunion/UnionConstants;->sClassPathForManager:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/samsung/android/sepunion/SemUnionManager;->getConstructor(Ljava/lang/String;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    move-object v0, v4

    if-eqz v0, :cond_0

    sget-object v4, Lcom/samsung/android/sepunion/SemUnionManager;->sConstructorMap:Ljava/util/HashMap;

    invoke-virtual {v4, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    goto :goto_0

    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static isUnionService(Ljava/lang/String;)Z
    .locals 2

    sget-object v0, Lcom/samsung/android/sepunion/SemUnionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/sepunion/SemUnionManager;->sManagerMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public getSemSystemService(Ljava/lang/String;)Landroid/os/IBinder;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sepunion/SemUnionManager;->mService:Lcom/samsung/android/sepunion/IUnionManager;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/sepunion/SemUnionManager;->getService()Lcom/samsung/android/sepunion/IUnionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sepunion/SemUnionManager;->mService:Lcom/samsung/android/sepunion/IUnionManager;

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sepunion/SemUnionManager;->mService:Lcom/samsung/android/sepunion/IUnionManager;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-interface {v1, p1, v2}, Lcom/samsung/android/sepunion/IUnionManager;->getSemSystemService(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/IBinder;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method public getUnionService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Lcom/samsung/android/sepunion/SemUnionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/sepunion/SemUnionManager;->sManagerMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/android/sepunion/SemUnionManager;->sManagerMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :cond_0
    sget-object v1, Lcom/samsung/android/sepunion/SemUnionManager;->sConstructorMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Constructor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_1
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/samsung/android/sepunion/SemUnionManager;->mContext:Landroid/content/Context;

    aput-object v5, v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    sget-object v3, Lcom/samsung/android/sepunion/SemUnionManager;->sManagerMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v3

    :try_start_2
    invoke-virtual {v3}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/InstantiationException;->printStackTrace()V

    :goto_0
    nop

    :goto_1
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public setDumpEnabled(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sepunion/SemUnionManager;->mService:Lcom/samsung/android/sepunion/IUnionManager;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/sepunion/SemUnionManager;->getService()Lcom/samsung/android/sepunion/IUnionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sepunion/SemUnionManager;->mService:Lcom/samsung/android/sepunion/IUnionManager;

    :cond_0
    :try_start_0
    sget-object v0, Lcom/samsung/android/sepunion/SemUnionManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDumpEnabled : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sepunion/SemUnionManager;->mService:Lcom/samsung/android/sepunion/IUnionManager;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/sepunion/IUnionManager;->setDumpEnabled(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.class public Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;
.super Ljava/lang/Object;
.source "ProxyAgentWrapper.java"


# static fields
.field private static final INITIALIZE_SECURE_SESSION:Ljava/lang/String; = "INITIALIZE_SECURE_SESSION"

.field private static final SECURE_CLIENT_ID:Ljava/lang/String; = "SECURE_CLIENT_ID"

.field private static final SECURE_CLIENT_PUB_KEY:Ljava/lang/String; = "SECURE_CLIENT_PUB_KEY"

.field private static final TAG:Ljava/lang/String; = "KnoxService::ProxyAgentWrapper"

.field private static final TERMINATE_SECURE_SESSION:Ljava/lang/String; = "TERMINATE_SECURE_SESSION"


# instance fields
.field private mBindPending:Z

.field private final mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mInfo:Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;

.field private mIsReconnection:Z

.field private mIsStale:Z

.field private mProxyAgent:Lcom/samsung/android/knox/ddar/proxy/IProxyAgent;

.field public final mProxyAgentLock:Ljava/lang/Object;

.field private mService:Lcom/android/server/knox/ddar/proxy/DualDARComnService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/knox/ddar/proxy/DualDARComnService;Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->mProxyAgentLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->mBindPending:Z

    iput-boolean v0, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->mIsReconnection:Z

    iput-boolean v0, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->mIsStale:Z

    new-instance v1, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper$1;

    invoke-direct {v1, p0}, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper$1;-><init>(Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;)V

    iput-object v1, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->mConnection:Landroid/content/ServiceConnection;

    const-string v1, "KnoxService::ProxyAgentWrapper"

    const-string v2, "ProxyAgentWrapper()"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Lcom/android/server/knox/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    iput-object p1, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->mService:Lcom/android/server/knox/ddar/proxy/DualDARComnService;

    iput-object p3, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->mInfo:Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;)Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->mInfo:Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;)Lcom/android/server/knox/ddar/proxy/DualDARComnService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->mService:Lcom/android/server/knox/ddar/proxy/DualDARComnService;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;)Lcom/samsung/android/knox/ddar/proxy/IProxyAgent;
    .locals 1

    iget-object v0, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->mProxyAgent:Lcom/samsung/android/knox/ddar/proxy/IProxyAgent;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;Lcom/samsung/android/knox/ddar/proxy/IProxyAgent;)Lcom/samsung/android/knox/ddar/proxy/IProxyAgent;
    .locals 0

    iput-object p1, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->mProxyAgent:Lcom/samsung/android/knox/ddar/proxy/IProxyAgent;

    return-object p1
.end method

.method static synthetic access$302(Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->mBindPending:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->mIsReconnection:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->mIsReconnection:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->onAgentReconnected()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->triggerRestart()V

    return-void
.end method

.method private onAgentReconnected()V
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->mProxyAgent:Lcom/samsung/android/knox/ddar/proxy/IProxyAgent;

    if-eqz v1, :cond_0

    const-string v1, "KnoxService::ProxyAgentWrapper"

    const-string/jumbo v2, "sending onAgentReconnected signal"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/server/knox/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v1, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->mProxyAgent:Lcom/samsung/android/knox/ddar/proxy/IProxyAgent;

    invoke-interface {v1}, Lcom/samsung/android/knox/ddar/proxy/IProxyAgent;->onAgentReconnected()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "KnoxService::ProxyAgentWrapper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RemoteException: name:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->mInfo:Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;

    iget-object v4, v4, Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;->mCompName:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " -- onAgentReconnected"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2, v3, v0}, Lcom/android/server/knox/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private triggerRestart()V
    .locals 4

    iget-boolean v0, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->mIsStale:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "KnoxService::ProxyAgentWrapper"

    const-string/jumbo v2, "triggerRestart"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/android/server/knox/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v0, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->mService:Lcom/android/server/knox/ddar/proxy/DualDARComnService;

    invoke-virtual {v0}, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->mService:Lcom/android/server/knox/ddar/proxy/DualDARComnService;

    invoke-virtual {v0}, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->mService:Lcom/android/server/knox/ddar/proxy/DualDARComnService;

    invoke-virtual {v2}, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->getHandler()Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->mInfo:Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;

    invoke-virtual {v2, v1, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_0
    const-string v0, "KnoxService::ProxyAgentWrapper"

    const-string/jumbo v2, "skipping triggerRestart because this is a stale object"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/android/server/knox/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public connectAsync()Z
    .locals 10

    const-string v0, "KnoxService::ProxyAgentWrapper"

    const-string v1, "connectAsync"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/android/server/knox/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v0, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->mProxyAgentLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->mInfo:Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;

    iget-object v1, v1, Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;->mCompName:Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->isBound()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    const-string v3, "KnoxService::ProxyAgentWrapper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "service "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " already bound"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v5, v2}, Lcom/android/server/knox/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    monitor-exit v0

    return v4

    :cond_0
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v3, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->mConnection:Landroid/content/ServiceConnection;

    iget-object v7, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->mContext:Landroid/content/Context;

    const v7, 0x4000001

    new-instance v8, Landroid/os/UserHandle;

    iget-object v9, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->mInfo:Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;

    iget v9, v9, Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;->mUserId:I

    invoke-direct {v8, v9}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v5, v3, v6, v7, v8}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->mBindPending:Z

    iget-boolean v5, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->mBindPending:Z

    if-nez v5, :cond_1

    const-string v4, "KnoxService::ProxyAgentWrapper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t bind to container service "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/android/server/knox/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    monitor-exit v0

    return v2

    :cond_1
    monitor-exit v0

    return v4

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public connectSync()Z
    .locals 6

    const-string v0, "KnoxService::ProxyAgentWrapper"

    const-string v1, "connectSync"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/android/server/knox/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :try_start_0
    iget-object v0, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->mProxyAgentLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->isBound()Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->mBindPending:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->connectAsync()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v3, "KnoxService::ProxyAgentWrapper"

    const-string v4, "connection to Proxy Agent failed"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/android/server/knox/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    monitor-exit v0

    return v1

    :cond_0
    iget-object v1, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->mProxyAgentLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    :cond_1
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return v2
.end method

.method public disconnect()V
    .locals 4

    const-string v0, "KnoxService::ProxyAgentWrapper"

    const-string/jumbo v1, "disconnect"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/android/server/knox/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    invoke-virtual {p0}, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->isBound()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->mProxyAgentLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->mProxyAgent:Lcom/samsung/android/knox/ddar/proxy/IProxyAgent;

    iput-boolean v2, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->mBindPending:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "KnoxService::ProxyAgentWrapper"

    const-string v1, "Unbinding to agent done"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/knox/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method enableReconnectionFlag()V
    .locals 3

    const-string v0, "KnoxService::ProxyAgentWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "enableReconnectionFlag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/knox/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->mIsReconnection:Z

    return-void
.end method

.method public isBindPending()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->mBindPending:Z

    return v0
.end method

.method public isBound()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->mProxyAgentLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->mProxyAgent:Lcom/samsung/android/knox/ddar/proxy/IProxyAgent;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method markStale()V
    .locals 3

    const-string v0, "KnoxService::ProxyAgentWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "markStale: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/knox/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->mIsStale:Z

    return-void
.end method

.method public relay(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 6

    const-string v0, "KnoxService::ProxyAgentWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "relay to Service : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/android/server/knox/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :try_start_0
    iget-object v0, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->mProxyAgent:Lcom/samsung/android/knox/ddar/proxy/IProxyAgent;

    if-eqz v0, :cond_3

    const-string v0, "SECURE_CLIENT_ID"

    invoke-virtual {p4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SECURE_CLIENT_PUB_KEY"

    invoke-virtual {p4, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, -0x1

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v5, 0x25e9423d

    if-eq v4, v5, :cond_1

    const v5, 0x2897d36c

    if-eq v4, v5, :cond_0

    goto :goto_0

    :cond_0
    const-string v4, "TERMINATE_SECURE_SESSION"

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const-string v4, "INITIALIZE_SECURE_SESSION"

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v3, v2

    :cond_2
    :goto_0
    packed-switch v3, :pswitch_data_0

    iget-object v3, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->mProxyAgent:Lcom/samsung/android/knox/ddar/proxy/IProxyAgent;

    goto :goto_1

    :pswitch_0
    iget-object v3, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->mProxyAgent:Lcom/samsung/android/knox/ddar/proxy/IProxyAgent;

    invoke-interface {v3, p1, p2, v0}, Lcom/samsung/android/knox/ddar/proxy/IProxyAgent;->terminateSecureSession(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v3

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v5, "dual_dar_response"

    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_2

    :pswitch_1
    iget-object v3, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->mProxyAgent:Lcom/samsung/android/knox/ddar/proxy/IProxyAgent;

    invoke-interface {v3, p1, p2, v0, v1}, Lcom/samsung/android/knox/ddar/proxy/IProxyAgent;->initializeSecureSession(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v5, "dual_dar_response"

    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    invoke-interface {v3, p1, p2, p3, p4}, Lcom/samsung/android/knox/ddar/proxy/IProxyAgent;->onMessage(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    move-object v2, v4

    return-object v2

    :cond_3
    goto :goto_3

    :catch_0
    move-exception v0

    const-string v1, "KnoxService::ProxyAgentWrapper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RemoteException: name:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->mInfo:Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;

    iget-object v4, v4, Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;->mCompName:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " command:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v3, v2}, Lcom/android/server/knox/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_3
    const/4 v0, 0x0

    return-object v0

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

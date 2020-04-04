.class public Lcom/android/server/knox/ddar/proxy/SystemProxyAgent;
.super Lcom/samsung/android/knox/ddar/proxy/KnoxProxyAgent;
.source "SystemProxyAgent.java"


# static fields
.field private static final DAEMON_PROXY_SERVICE:Ljava/lang/String; = "DAEMON_PROXY_SERVICE"

.field private static final DDAR_CACHE_SERVICE:Ljava/lang/String; = "DDAR_CACHE_SERVICE"

.field private static final DDAR_LOG_SERVICE:Ljava/lang/String; = "DDAR_LOG_SERVICE"

.field private static final DDAR_PLATFORM_SERVICE:Ljava/lang/String; = "DDAR_PLATFORM_SERVICE"

.field private static final INITIALIZE_SECURE_SESSION:Ljava/lang/String; = "INITIALIZE_SECURE_SESSION"

.field private static final SECURE_CLIENT_ID:Ljava/lang/String; = "SECURE_CLIENT_ID"

.field private static final SECURE_CLIENT_PUB_KEY:Ljava/lang/String; = "SECURE_CLIENT_PUB_KEY"

.field private static final STATE_MACHINE_SERVICE:Ljava/lang/String; = "STATE_MACHINE_SERVICE"

.field private static final TAG:Ljava/lang/String; = "SystemProxyAgent"

.field private static final TA_PROXY_SERVICE:Ljava/lang/String; = "TA_PROXY_SERVICE"

.field private static final TERMINATE_SECURE_SESSION:Ljava/lang/String; = "TERMINATE_SECURE_SESSION"

.field public static mInstance:Lcom/android/server/knox/ddar/proxy/SystemProxyAgent;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/knox/ddar/proxy/KnoxProxyAgent;-><init>()V

    iput-object p1, p0, Lcom/android/server/knox/ddar/proxy/SystemProxyAgent;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/server/knox/ddar/proxy/SystemProxyAgent;
    .locals 2

    const-class v0, Lcom/android/server/knox/ddar/proxy/SystemProxyAgent;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/knox/ddar/proxy/SystemProxyAgent;->mInstance:Lcom/android/server/knox/ddar/proxy/SystemProxyAgent;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/server/knox/ddar/proxy/SystemProxyAgent;

    invoke-direct {v1, p0}, Lcom/android/server/knox/ddar/proxy/SystemProxyAgent;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/server/knox/ddar/proxy/SystemProxyAgent;->mInstance:Lcom/android/server/knox/ddar/proxy/SystemProxyAgent;

    :cond_0
    sget-object v1, Lcom/android/server/knox/ddar/proxy/SystemProxyAgent;->mInstance:Lcom/android/server/knox/ddar/proxy/SystemProxyAgent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public init()V
    .locals 2

    invoke-super {p0}, Lcom/samsung/android/knox/ddar/proxy/KnoxProxyAgent;->onCreate()V

    const-string v0, "TA_PROXY_SERVICE"

    iget-object v1, p0, Lcom/android/server/knox/ddar/proxy/SystemProxyAgent;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/knox/ddar/ta/TAProxy;->getInstance(Landroid/content/Context;)Lcom/android/server/knox/ddar/ta/TAProxy;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/knox/ddar/proxy/SystemProxyAgent;->register(Ljava/lang/String;Lcom/samsung/android/knox/ddar/proxy/IProxyAgentService;)Z

    const-string v0, "DAEMON_PROXY_SERVICE"

    iget-object v1, p0, Lcom/android/server/knox/ddar/proxy/SystemProxyAgent;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;->getInstance(Landroid/content/Context;)Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/knox/ddar/proxy/SystemProxyAgent;->register(Ljava/lang/String;Lcom/samsung/android/knox/ddar/proxy/IProxyAgentService;)Z

    const-string v0, "STATE_MACHINE_SERVICE"

    iget-object v1, p0, Lcom/android/server/knox/ddar/proxy/SystemProxyAgent;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/knox/ddar/fsm/StateMachineProxy;->getInstance(Landroid/content/Context;)Lcom/android/server/knox/ddar/fsm/StateMachineProxy;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/knox/ddar/proxy/SystemProxyAgent;->register(Ljava/lang/String;Lcom/samsung/android/knox/ddar/proxy/IProxyAgentService;)Z

    const-string v0, "DDAR_LOG_SERVICE"

    iget-object v1, p0, Lcom/android/server/knox/ddar/proxy/SystemProxyAgent;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/knox/ddar/DDLog$LoggerProxy;->getInstance(Landroid/content/Context;)Lcom/android/server/knox/ddar/DDLog$LoggerProxy;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/knox/ddar/proxy/SystemProxyAgent;->register(Ljava/lang/String;Lcom/samsung/android/knox/ddar/proxy/IProxyAgentService;)Z

    const-string v0, "DDAR_CACHE_SERVICE"

    iget-object v1, p0, Lcom/android/server/knox/ddar/proxy/SystemProxyAgent;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/knox/ddar/DDCache;->getInstance(Landroid/content/Context;)Lcom/android/server/knox/ddar/DDCache;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/knox/ddar/proxy/SystemProxyAgent;->register(Ljava/lang/String;Lcom/samsung/android/knox/ddar/proxy/IProxyAgentService;)Z

    const-string v0, "DDAR_PLATFORM_SERVICE"

    iget-object v1, p0, Lcom/android/server/knox/ddar/proxy/SystemProxyAgent;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/knox/ddar/proxy/DualDARPlatformProxy;->getInstance(Landroid/content/Context;)Lcom/android/server/knox/ddar/proxy/DualDARPlatformProxy;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/knox/ddar/proxy/SystemProxyAgent;->register(Ljava/lang/String;Lcom/samsung/android/knox/ddar/proxy/IProxyAgentService;)Z

    return-void
.end method

.method public relay(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 6

    const-string v0, "SystemProxyAgent"

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

    const/4 v0, -0x1

    :try_start_0
    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v3, 0x25e9423d

    if-eq v1, v3, :cond_1

    const v3, 0x2897d36c

    if-eq v1, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "TERMINATE_SECURE_SESSION"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const-string v1, "INITIALIZE_SECURE_SESSION"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v0, v2

    :cond_2
    :goto_0
    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/samsung/android/knox/ddar/proxy/KnoxProxyAgent;->relay(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    goto :goto_1

    :pswitch_0
    const-string v0, "SECURE_CLIENT_ID"

    invoke-virtual {p4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/knox/ddar/proxy/SystemProxyAgent;->teardownSecureSession(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v4, "dual_dar_response"

    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_1

    :pswitch_1
    const-string v0, "SECURE_CLIENT_ID"

    invoke-virtual {p4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SECURE_CLIENT_PUB_KEY"

    invoke-virtual {p4, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/server/knox/ddar/proxy/SystemProxyAgent;->establishSecureSession(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v5, "dual_dar_response"

    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    nop

    move-object v3, v4

    :goto_1
    move-object v0, v3

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "SystemProxyAgent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RemoteException: name:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " command:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v3, v2}, Lcom/android/server/knox/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

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

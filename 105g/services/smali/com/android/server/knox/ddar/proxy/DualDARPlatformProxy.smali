.class public Lcom/android/server/knox/ddar/proxy/DualDARPlatformProxy;
.super Lcom/samsung/android/knox/ddar/proxy/IProxyAgentService;
.source "DualDARPlatformProxy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DualDARPlatformProxy"

.field private static mInstance:Lcom/android/server/knox/ddar/proxy/DualDARPlatformProxy;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/knox/ddar/proxy/DualDARPlatformProxy;->mInstance:Lcom/android/server/knox/ddar/proxy/DualDARPlatformProxy;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/ddar/proxy/IProxyAgentService;-><init>()V

    const-string v0, "DualDARPlatformProxy"

    const-string v1, "DualDARPlatformProxy() constructor"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/knox/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    iput-object p1, p0, Lcom/android/server/knox/ddar/proxy/DualDARPlatformProxy;->mContext:Landroid/content/Context;

    return-void
.end method

.method private getConfig(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3

    const-string/jumbo v0, "user_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "DualDARPolicy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/dualdar/DualDARPolicy;

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->getConfig(I)Landroid/os/Bundle;

    move-result-object v2

    return-object v2
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/server/knox/ddar/proxy/DualDARPlatformProxy;
    .locals 2

    const-class v0, Lcom/android/server/knox/ddar/proxy/DualDARPlatformProxy;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/knox/ddar/proxy/DualDARPlatformProxy;->mInstance:Lcom/android/server/knox/ddar/proxy/DualDARPlatformProxy;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/server/knox/ddar/proxy/DualDARPlatformProxy;

    invoke-direct {v1, p0}, Lcom/android/server/knox/ddar/proxy/DualDARPlatformProxy;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/server/knox/ddar/proxy/DualDARPlatformProxy;->mInstance:Lcom/android/server/knox/ddar/proxy/DualDARPlatformProxy;

    :cond_0
    sget-object v1, Lcom/android/server/knox/ddar/proxy/DualDARPlatformProxy;->mInstance:Lcom/android/server/knox/ddar/proxy/DualDARPlatformProxy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private setClientInfo(Landroid/os/Bundle;)V
    .locals 9

    const/4 v0, -0x1

    const/4 v1, -0x1

    const/4 v2, 0x0

    :try_start_0
    const-string/jumbo v3, "user_id"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    move v1, v3

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->getAdminComponentName(I)Landroid/content/ComponentName;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/knox/ddar/proxy/DualDARPlatformProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v4

    goto :goto_0

    :catch_0
    move-exception v3

    const-string v4, "DualDARPlatformProxy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setClientInfo failed ! Component may be null"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/android/server/knox/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_0
    const-string v3, "CLIENT_PACKAGE_NAME"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "CLIENT_PACKAGE_SIGNATURE"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "CLIENT_VERSION"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "DualDARPlatformProxy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setClientInfo packageName "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "packageSig "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "client version "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "user id "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v6, v7, v2}, Lcom/android/server/knox/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const-string v2, "DualDARPolicy"

    invoke-static {v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/dualdar/DualDARPolicy;

    new-instance v6, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v6, v0, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    invoke-virtual {v2, v6, v3, v4, v5}, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->setClientInfo(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onMessage(ILjava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 6

    :try_start_0
    const-string v0, "DualDARPlatformProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onMessage() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/android/server/knox/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, -0x67735fdb

    const/4 v5, 0x1

    if-eq v3, v4, :cond_1

    const v2, -0x21c8630f

    if-eq v3, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "GET_DUALDAR_CONFIG"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v1, v5

    goto :goto_0

    :cond_1
    const-string v3, "SET_CLIENT_INFO"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v1, v2

    :cond_2
    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-direct {p0, p3}, Lcom/android/server/knox/ddar/proxy/DualDARPlatformProxy;->getConfig(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    move-object v0, v1

    const-string/jumbo v1, "dual_dar_response"

    invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_1

    :pswitch_1
    invoke-direct {p0, p3}, Lcom/android/server/knox/ddar/proxy/DualDARPlatformProxy;->setClientInfo(Landroid/os/Bundle;)V

    const-string/jumbo v1, "dual_dar_response"

    invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    nop

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

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

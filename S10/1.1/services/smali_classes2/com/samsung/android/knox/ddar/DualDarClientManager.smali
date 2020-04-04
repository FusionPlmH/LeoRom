.class public Lcom/samsung/android/knox/ddar/DualDarClientManager;
.super Lcom/samsung/android/knox/ddar/proxy/IProxyAgent$Stub;
.source "DualDarClientManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/ddar/DualDarClientManager$DualDARClientAgentService;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DualDarClientManager"

.field private static mContext:Landroid/content/Context;

.field private static mInstance:Lcom/samsung/android/knox/ddar/DualDarClientManager;


# instance fields
.field private mClientAgentService:Lcom/samsung/android/knox/ddar/DualDarClientManager$DualDARClientAgentService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/knox/ddar/DualDarClientManager;->mInstance:Lcom/samsung/android/knox/ddar/DualDarClientManager;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/samsung/android/knox/ddar/IDualDARClient;)V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/knox/ddar/proxy/IProxyAgent$Stub;-><init>()V

    sput-object p1, Lcom/samsung/android/knox/ddar/DualDarClientManager;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/samsung/android/knox/ddar/DualDarClientManager$DualDARClientAgentService;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Lcom/samsung/android/knox/ddar/DualDarClientManager$DualDARClientAgentService;-><init>(Lcom/samsung/android/knox/ddar/IDualDARClient;Lcom/samsung/android/knox/ddar/DualDarClientManager$1;)V

    iput-object v0, p0, Lcom/samsung/android/knox/ddar/DualDarClientManager;->mClientAgentService:Lcom/samsung/android/knox/ddar/DualDarClientManager$DualDARClientAgentService;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;Lcom/samsung/android/knox/ddar/IDualDARClient;)Lcom/samsung/android/knox/ddar/DualDarClientManager;
    .locals 1

    sget-object v0, Lcom/samsung/android/knox/ddar/DualDarClientManager;->mInstance:Lcom/samsung/android/knox/ddar/DualDarClientManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/knox/ddar/DualDarClientManager;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/knox/ddar/DualDarClientManager;-><init>(Landroid/content/Context;Lcom/samsung/android/knox/ddar/IDualDARClient;)V

    sput-object v0, Lcom/samsung/android/knox/ddar/DualDarClientManager;->mInstance:Lcom/samsung/android/knox/ddar/DualDarClientManager;

    :cond_0
    sget-object v0, Lcom/samsung/android/knox/ddar/DualDarClientManager;->mInstance:Lcom/samsung/android/knox/ddar/DualDarClientManager;

    return-object v0
.end method


# virtual methods
.method public initializeSecureSession(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    :try_start_0
    sget-object v0, Lcom/samsung/android/knox/ddar/DualDarClientManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/ddar/DualDARManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/ddar/DualDARManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/knox/ddar/DualDARManager;->establishSecureSession()V

    iget-object v0, p0, Lcom/samsung/android/knox/ddar/DualDarClientManager;->mClientAgentService:Lcom/samsung/android/knox/ddar/DualDarClientManager$DualDARClientAgentService;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/knox/ddar/DualDarClientManager$DualDARClientAgentService;->initializeSecureSession(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v1, "DualDarClientManager"

    const-string v2, "initializeSecureSession failed!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return-object v1
.end method

.method public onAgentReconnected()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const-string v0, "DualDarClientManager"

    const-string/jumbo v1, "onAgentReconnected!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/knox/ddar/DualDarClientManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/ddar/DualDARManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/ddar/DualDARManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/knox/ddar/DualDARManager;->onAgentReconnected()V

    return-void
.end method

.method public onMessage(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/ddar/DualDarClientManager;->mClientAgentService:Lcom/samsung/android/knox/ddar/DualDarClientManager$DualDARClientAgentService;

    invoke-virtual {v0, p1, p3, p4}, Lcom/samsung/android/knox/ddar/DualDarClientManager$DualDARClientAgentService;->onMessage(ILjava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public terminateSecureSession(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    :try_start_0
    sget-object v0, Lcom/samsung/android/knox/ddar/DualDarClientManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/ddar/DualDARManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/ddar/DualDARManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/knox/ddar/DualDARManager;->teardownSecureSession()V

    iget-object v0, p0, Lcom/samsung/android/knox/ddar/DualDarClientManager;->mClientAgentService:Lcom/samsung/android/knox/ddar/DualDarClientManager$DualDARClientAgentService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/knox/ddar/DualDarClientManager$DualDARClientAgentService;->terminateSecureSession(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v1, "DualDarClientManager"

    const-string/jumbo v2, "terminateSecureSession failed!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1
.end method

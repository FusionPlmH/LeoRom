.class Lcom/android/server/SamsungKeyProvisioningManagerService$SkpmInjectThread;
.super Ljava/lang/Thread;
.source "SamsungKeyProvisioningManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SamsungKeyProvisioningManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SkpmInjectThread"
.end annotation


# instance fields
.field public Flag:Lcom/android/server/SamsungKeyProvisioningManagerService$skpmInjectProvisioningState;

.field private KeyData:[B

.field private encodingType:B

.field private injectionType:B

.field private keyName:Ljava/lang/String;

.field private keyType:B

.field private retInject:I

.field final synthetic this$0:Lcom/android/server/SamsungKeyProvisioningManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/SamsungKeyProvisioningManagerService;Lcom/android/server/SamsungKeyProvisioningManagerService$skpmInjectProvisioningState;BBLjava/lang/String;[BB)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/SamsungKeyProvisioningManagerService$SkpmInjectThread;->this$0:Lcom/android/server/SamsungKeyProvisioningManagerService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/16 v0, -0x5a

    iput v0, p0, Lcom/android/server/SamsungKeyProvisioningManagerService$SkpmInjectThread;->retInject:I

    iput-object p2, p0, Lcom/android/server/SamsungKeyProvisioningManagerService$SkpmInjectThread;->Flag:Lcom/android/server/SamsungKeyProvisioningManagerService$skpmInjectProvisioningState;

    iput-byte p3, p0, Lcom/android/server/SamsungKeyProvisioningManagerService$SkpmInjectThread;->injectionType:B

    iput-byte p4, p0, Lcom/android/server/SamsungKeyProvisioningManagerService$SkpmInjectThread;->keyType:B

    iput-object p5, p0, Lcom/android/server/SamsungKeyProvisioningManagerService$SkpmInjectThread;->keyName:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/server/SamsungKeyProvisioningManagerService$SkpmInjectThread;->KeyData:[B

    iput-byte p7, p0, Lcom/android/server/SamsungKeyProvisioningManagerService$SkpmInjectThread;->encodingType:B

    return-void
.end method

.method private isNetworkAvailable()Z
    .locals 6

    invoke-static {}, Lcom/android/server/SamsungKeyProvisioningManagerService;->access$000()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v2, "SamsungKeyProvisioningManagerService"

    const-string v3, "Couldn\'t get connectivity manager"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v4

    if-eqz v4, :cond_1

    const/16 v5, 0xc

    invoke-virtual {v4, v5}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v5

    if-eqz v5, :cond_1

    const/16 v5, 0x10

    invoke-virtual {v4, v5}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    return v1

    :cond_2
    const-string v3, "SamsungKeyProvisioningManagerService"

    const-string v4, "Network is not connected"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_3
    const-string v3, "SamsungKeyProvisioningManagerService"

    const-string v4, "There is not active network"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method


# virtual methods
.method public declared-synchronized getRet()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/server/SamsungKeyProvisioningManagerService$SkpmInjectThread;->retInject:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/android/server/SamsungKeyProvisioningManagerService$SkpmInjectThread;->Flag:Lcom/android/server/SamsungKeyProvisioningManagerService$skpmInjectProvisioningState;

    invoke-virtual {v0}, Lcom/android/server/SamsungKeyProvisioningManagerService$skpmInjectProvisioningState;->setInjectProvisioningOn()V

    :try_start_0
    iget-byte v0, p0, Lcom/android/server/SamsungKeyProvisioningManagerService$SkpmInjectThread;->injectionType:B

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    iget-byte v0, p0, Lcom/android/server/SamsungKeyProvisioningManagerService$SkpmInjectThread;->injectionType:B

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/server/SamsungKeyProvisioningManagerService;->access$100()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/SamsungKeyProvisioningManagerService$SkpmInjectThread;->this$0:Lcom/android/server/SamsungKeyProvisioningManagerService;

    iget-byte v2, p0, Lcom/android/server/SamsungKeyProvisioningManagerService$SkpmInjectThread;->injectionType:B

    iget-byte v3, p0, Lcom/android/server/SamsungKeyProvisioningManagerService$SkpmInjectThread;->keyType:B

    iget-object v4, p0, Lcom/android/server/SamsungKeyProvisioningManagerService$SkpmInjectThread;->keyName:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/SamsungKeyProvisioningManagerService$SkpmInjectThread;->KeyData:[B

    iget-byte v6, p0, Lcom/android/server/SamsungKeyProvisioningManagerService$SkpmInjectThread;->encodingType:B

    invoke-static/range {v1 .. v6}, Lcom/android/server/SamsungKeyProvisioningManagerService;->access$200(Lcom/android/server/SamsungKeyProvisioningManagerService;BBLjava/lang/String;[BB)I

    move-result v1

    iput v1, p0, Lcom/android/server/SamsungKeyProvisioningManagerService$SkpmInjectThread;->retInject:I

    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/server/SamsungKeyProvisioningManagerService$SkpmInjectThread;->isNetworkAvailable()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "SamsungKeyProvisioningManagerService"

    const-string v1, "Network is not available"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0x29

    iput v0, p0, Lcom/android/server/SamsungKeyProvisioningManagerService$SkpmInjectThread;->retInject:I

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/android/server/SamsungKeyProvisioningManagerService;->access$100()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/SamsungKeyProvisioningManagerService$SkpmInjectThread;->this$0:Lcom/android/server/SamsungKeyProvisioningManagerService;

    iget-byte v2, p0, Lcom/android/server/SamsungKeyProvisioningManagerService$SkpmInjectThread;->injectionType:B

    iget-byte v3, p0, Lcom/android/server/SamsungKeyProvisioningManagerService$SkpmInjectThread;->keyType:B

    iget-object v4, p0, Lcom/android/server/SamsungKeyProvisioningManagerService$SkpmInjectThread;->keyName:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/SamsungKeyProvisioningManagerService$SkpmInjectThread;->KeyData:[B

    iget-byte v6, p0, Lcom/android/server/SamsungKeyProvisioningManagerService$SkpmInjectThread;->encodingType:B

    invoke-static/range {v1 .. v6}, Lcom/android/server/SamsungKeyProvisioningManagerService;->access$200(Lcom/android/server/SamsungKeyProvisioningManagerService;BBLjava/lang/String;[BB)I

    move-result v1

    iput v1, p0, Lcom/android/server/SamsungKeyProvisioningManagerService$SkpmInjectThread;->retInject:I

    monitor-exit v0

    :goto_1
    goto :goto_2

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "SamsungKeyProvisioningManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to write_key. injectionType : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v3, p0, Lcom/android/server/SamsungKeyProvisioningManagerService$SkpmInjectThread;->injectionType:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", keyType : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v3, p0, Lcom/android/server/SamsungKeyProvisioningManagerService$SkpmInjectThread;->keyType:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", keyName : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/SamsungKeyProvisioningManagerService$SkpmInjectThread;->keyName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", encodingType : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v3, p0, Lcom/android/server/SamsungKeyProvisioningManagerService$SkpmInjectThread;->encodingType:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", Ret : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, -0x5a

    iput v1, p0, Lcom/android/server/SamsungKeyProvisioningManagerService$SkpmInjectThread;->retInject:I

    :goto_2
    iget-object v0, p0, Lcom/android/server/SamsungKeyProvisioningManagerService$SkpmInjectThread;->Flag:Lcom/android/server/SamsungKeyProvisioningManagerService$skpmInjectProvisioningState;

    invoke-virtual {v0}, Lcom/android/server/SamsungKeyProvisioningManagerService$skpmInjectProvisioningState;->setInjectProvisioningOff()V

    return-void
.end method

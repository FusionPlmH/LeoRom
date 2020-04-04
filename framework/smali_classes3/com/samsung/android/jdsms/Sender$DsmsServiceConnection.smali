.class Lcom/samsung/android/jdsms/Sender$DsmsServiceConnection;
.super Ljava/lang/Object;
.source "Sender.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/jdsms/Sender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DsmsServiceConnection"
.end annotation


# instance fields
.field private final mBoundControl:Ljava/lang/Object;

.field private mIDsmsService:Lcom/samsung/android/dsms/aidl/IDsmsService;

.field private mIsConnected:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/jdsms/Sender$DsmsServiceConnection;->mBoundControl:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/jdsms/Sender$DsmsServiceConnection;->mIsConnected:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/jdsms/Sender$DsmsServiceConnection;->mIDsmsService:Lcom/samsung/android/dsms/aidl/IDsmsService;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/jdsms/Sender$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/jdsms/Sender$DsmsServiceConnection;-><init>()V

    return-void
.end method

.method private notifyConnection()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/jdsms/Sender$DsmsServiceConnection;->mBoundControl:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/jdsms/Sender$DsmsServiceConnection;->mBoundControl:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catch Ljava/lang/IllegalMonitorStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    :try_start_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "[DSMS-FRAMEWORK]"

    const-string/jumbo v3, "notifyConnection: Current thread is not the owner of the object\'s monitor"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    throw v1

    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public getDsmsService()Lcom/samsung/android/dsms/aidl/IDsmsService;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/jdsms/Sender$DsmsServiceConnection;->mIDsmsService:Lcom/samsung/android/dsms/aidl/IDsmsService;

    return-object v0
.end method

.method public isConnected()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/jdsms/Sender$DsmsServiceConnection;->mIsConnected:Z

    return v0
.end method

.method public onNullBinding(Landroid/content/ComponentName;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/jdsms/Sender$DsmsServiceConnection;->mIDsmsService:Lcom/samsung/android/dsms/aidl/IDsmsService;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/jdsms/Sender$DsmsServiceConnection;->mIsConnected:Z

    invoke-direct {p0}, Lcom/samsung/android/jdsms/Sender$DsmsServiceConnection;->notifyConnection()V

    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    invoke-static {p2}, Lcom/samsung/android/dsms/aidl/IDsmsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/dsms/aidl/IDsmsService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/jdsms/Sender$DsmsServiceConnection;->mIDsmsService:Lcom/samsung/android/dsms/aidl/IDsmsService;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/jdsms/Sender$DsmsServiceConnection;->mIsConnected:Z

    invoke-direct {p0}, Lcom/samsung/android/jdsms/Sender$DsmsServiceConnection;->notifyConnection()V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/jdsms/Sender$DsmsServiceConnection;->mIDsmsService:Lcom/samsung/android/dsms/aidl/IDsmsService;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/jdsms/Sender$DsmsServiceConnection;->mIsConnected:Z

    return-void
.end method

.method public waitConnection(J)V
    .locals 9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p1

    iget-object v2, p0, Lcom/samsung/android/jdsms/Sender$DsmsServiceConnection;->mBoundControl:Ljava/lang/Object;

    monitor-enter v2

    :goto_0
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long v5, v0, v3

    iget-boolean v7, p0, Lcom/samsung/android/jdsms/Sender$DsmsServiceConnection;->mIsConnected:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v7, :cond_1

    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-gtz v7, :cond_0

    goto :goto_2

    :cond_0
    :try_start_1
    iget-object v7, p0, Lcom/samsung/android/jdsms/Sender$DsmsServiceConnection;->mBoundControl:Ljava/lang/Object;

    invoke-virtual {v7, v5, v6}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v7

    :goto_1
    goto :goto_0

    :cond_1
    :goto_2
    :try_start_2
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3
.end method

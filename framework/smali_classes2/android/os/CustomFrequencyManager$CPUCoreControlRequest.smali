.class Landroid/os/CustomFrequencyManager$CPUCoreControlRequest;
.super Landroid/os/CustomFrequencyManager$FrequencyRequest;
.source "CustomFrequencyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/CustomFrequencyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CPUCoreControlRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/CustomFrequencyManager$CPUCoreControlRequest$CPUCoreReleaser;
    }
.end annotation


# instance fields
.field mCPUCoreReleaser:Landroid/os/CustomFrequencyManager$CPUCoreControlRequest$CPUCoreReleaser;

.field final synthetic this$0:Landroid/os/CustomFrequencyManager;


# direct methods
.method constructor <init>(Landroid/os/CustomFrequencyManager;IIJLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/os/CustomFrequencyManager$CPUCoreControlRequest;->this$0:Landroid/os/CustomFrequencyManager;

    invoke-direct/range {p0 .. p6}, Landroid/os/CustomFrequencyManager$FrequencyRequest;-><init>(Landroid/os/CustomFrequencyManager;IIJLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public cancelFrequencyRequestImpl()V
    .locals 5

    iget-object v0, p0, Landroid/os/CustomFrequencyManager$CPUCoreControlRequest;->mToken:Landroid/os/IBinder;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/os/CustomFrequencyManager$CPUCoreControlRequest;->mCPUCoreReleaser:Landroid/os/CustomFrequencyManager$CPUCoreControlRequest$CPUCoreReleaser;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/os/CustomFrequencyManager$CPUCoreControlRequest;->mCPUCoreReleaser:Landroid/os/CustomFrequencyManager$CPUCoreControlRequest$CPUCoreReleaser;

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/os/CustomFrequencyManager$CPUCoreControlRequest$CPUCoreReleaser;->stop:Z

    :cond_0
    iget-object v1, p0, Landroid/os/CustomFrequencyManager$CPUCoreControlRequest;->this$0:Landroid/os/CustomFrequencyManager;

    iget-object v1, v1, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    iget v2, p0, Landroid/os/CustomFrequencyManager$CPUCoreControlRequest;->mType:I

    iget-object v3, p0, Landroid/os/CustomFrequencyManager$CPUCoreControlRequest;->mToken:Landroid/os/IBinder;

    iget-object v4, p0, Landroid/os/CustomFrequencyManager$CPUCoreControlRequest;->mPkgName:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v4}, Landroid/os/ICustomFrequencyManager;->releaseCPUCore(ILandroid/os/IBinder;Ljava/lang/String;)V

    iget-object v1, p0, Landroid/os/CustomFrequencyManager$CPUCoreControlRequest;->this$0:Landroid/os/CustomFrequencyManager;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/CustomFrequencyManager;->access$802(Landroid/os/CustomFrequencyManager;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_1
    invoke-static {v1}, Landroid/os/CustomFrequencyManager;->access$100(Ljava/lang/Exception;)V

    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public doFrequencyRequestImpl()V
    .locals 6

    const-string v0, "CustomFrequencyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CPUCoreControlRequest : doFrequencyRequest::  = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/os/CustomFrequencyManager$CPUCoreControlRequest;->mFrequency:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " Timeout : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Landroid/os/CustomFrequencyManager$CPUCoreControlRequest;->mTimeoutMs:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/CustomFrequencyManager;->access$000(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Landroid/os/CustomFrequencyManager$CPUCoreControlRequest;->mToken:Landroid/os/IBinder;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/os/CustomFrequencyManager$CPUCoreControlRequest;->this$0:Landroid/os/CustomFrequencyManager;

    iget-object v1, v1, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    iget v2, p0, Landroid/os/CustomFrequencyManager$CPUCoreControlRequest;->mType:I

    iget v3, p0, Landroid/os/CustomFrequencyManager$CPUCoreControlRequest;->mFrequency:I

    iget-object v4, p0, Landroid/os/CustomFrequencyManager$CPUCoreControlRequest;->mToken:Landroid/os/IBinder;

    iget-object v5, p0, Landroid/os/CustomFrequencyManager$CPUCoreControlRequest;->mPkgName:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v4, v5}, Landroid/os/ICustomFrequencyManager;->requestCPUCore(IILandroid/os/IBinder;Ljava/lang/String;)V

    iget-wide v1, p0, Landroid/os/CustomFrequencyManager$CPUCoreControlRequest;->mTimeoutMs:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    const/4 v2, 0x1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/os/CustomFrequencyManager$CPUCoreControlRequest;->this$0:Landroid/os/CustomFrequencyManager;

    invoke-static {v1, v2}, Landroid/os/CustomFrequencyManager;->access$802(Landroid/os/CustomFrequencyManager;Z)Z

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/os/CustomFrequencyManager$CPUCoreControlRequest;->mCPUCoreReleaser:Landroid/os/CustomFrequencyManager$CPUCoreControlRequest$CPUCoreReleaser;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/os/CustomFrequencyManager$CPUCoreControlRequest;->mCPUCoreReleaser:Landroid/os/CustomFrequencyManager$CPUCoreControlRequest$CPUCoreReleaser;

    iput-boolean v2, v1, Landroid/os/CustomFrequencyManager$CPUCoreControlRequest$CPUCoreReleaser;->stop:Z

    :cond_1
    new-instance v1, Landroid/os/CustomFrequencyManager$CPUCoreControlRequest$CPUCoreReleaser;

    invoke-direct {v1, p0}, Landroid/os/CustomFrequencyManager$CPUCoreControlRequest$CPUCoreReleaser;-><init>(Landroid/os/CustomFrequencyManager$CPUCoreControlRequest;)V

    iput-object v1, p0, Landroid/os/CustomFrequencyManager$CPUCoreControlRequest;->mCPUCoreReleaser:Landroid/os/CustomFrequencyManager$CPUCoreControlRequest$CPUCoreReleaser;

    iget-object v1, p0, Landroid/os/CustomFrequencyManager$CPUCoreControlRequest;->this$0:Landroid/os/CustomFrequencyManager;

    iget-object v1, v1, Landroid/os/CustomFrequencyManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/os/CustomFrequencyManager$CPUCoreControlRequest;->mCPUCoreReleaser:Landroid/os/CustomFrequencyManager$CPUCoreControlRequest$CPUCoreReleaser;

    iget-wide v3, p0, Landroid/os/CustomFrequencyManager$CPUCoreControlRequest;->mTimeoutMs:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v1, p0, Landroid/os/CustomFrequencyManager$CPUCoreControlRequest;->this$0:Landroid/os/CustomFrequencyManager;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/CustomFrequencyManager;->access$802(Landroid/os/CustomFrequencyManager;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    :try_start_1
    invoke-static {v1}, Landroid/os/CustomFrequencyManager;->access$100(Ljava/lang/Exception;)V

    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

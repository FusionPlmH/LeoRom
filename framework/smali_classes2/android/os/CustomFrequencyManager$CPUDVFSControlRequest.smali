.class Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest;
.super Landroid/os/CustomFrequencyManager$FrequencyRequest;
.source "CustomFrequencyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/CustomFrequencyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CPUDVFSControlRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest$CpuDvfsReleaser;
    }
.end annotation


# instance fields
.field mCPUDVFSReleaser:Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest$CpuDvfsReleaser;

.field mCallingID:I

.field final synthetic this$0:Landroid/os/CustomFrequencyManager;


# direct methods
.method constructor <init>(Landroid/os/CustomFrequencyManager;IIJLjava/lang/String;)V
    .locals 4

    iput-object p1, p0, Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest;->this$0:Landroid/os/CustomFrequencyManager;

    invoke-direct/range {p0 .. p6}, Landroid/os/CustomFrequencyManager$FrequencyRequest;-><init>(Landroid/os/CustomFrequencyManager;IIJLjava/lang/String;)V

    const/4 v0, -0x1

    iput v0, p0, Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest;->mCallingID:I

    const/4 v0, 0x1

    packed-switch p2, :pswitch_data_0

    const-string p1, "CustomFrequencyManager"

    const-string v1, "CustomFrequencyManager : CPUDVFSControlRequest : invalid type"

    invoke-static {p1, v1}, Landroid/os/CustomFrequencyManager;->access$000(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v0, p0, Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest;->mInvalidParam:Z

    return-void

    :pswitch_0
    nop

    invoke-virtual {p1}, Landroid/os/CustomFrequencyManager;->getSupportedCPUFrequency()[I

    move-result-object p1

    if-nez p1, :cond_0

    const-string v1, "CustomFrequencyManager"

    const-string v2, "CustomFrequencyManager : CPUDVFSControlRequest : getSupportedFrequency : null"

    invoke-static {v1, v2}, Landroid/os/CustomFrequencyManager;->access$000(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v0, p0, Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest;->mInvalidParam:Z

    return-void

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_2

    aget v3, p1, v2

    if-ne p3, v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    if-nez v1, :cond_3

    const-string v2, "CustomFrequencyManager"

    const-string v3, "CustomFrequencyManager : CPUDVFSControlRequest : invalid frequency"

    invoke-static {v2, v3}, Landroid/os/CustomFrequencyManager;->access$000(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v0, p0, Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest;->mInvalidParam:Z

    return-void

    :cond_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public declared-synchronized cancelFrequencyRequest(I)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest;->mCPUDVFSReleaser:Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest$CpuDvfsReleaser;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest;->mCPUDVFSReleaser:Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest$CpuDvfsReleaser;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest$CpuDvfsReleaser;->stop:Z

    :cond_0
    iget-object v0, p0, Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest;->this$0:Landroid/os/CustomFrequencyManager;

    iget-object v0, v0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    iget-object v1, p0, Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest;->mPkgName:Ljava/lang/String;

    invoke-interface {v0, p1, v1}, Landroid/os/ICustomFrequencyManager;->releasePersistentDVFSLock(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    invoke-static {v0}, Landroid/os/CustomFrequencyManager;->access$100(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public cancelFrequencyRequestImpl()V
    .locals 4

    iget-object v0, p0, Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest;->mToken:Landroid/os/IBinder;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest;->mCPUDVFSReleaser:Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest$CpuDvfsReleaser;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest;->mCPUDVFSReleaser:Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest$CpuDvfsReleaser;

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest$CpuDvfsReleaser;->stop:Z

    :cond_0
    iget-object v1, p0, Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest;->this$0:Landroid/os/CustomFrequencyManager;

    iget-object v1, v1, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    iget-object v2, p0, Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest;->mToken:Landroid/os/IBinder;

    iget-object v3, p0, Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest;->mPkgName:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/os/ICustomFrequencyManager;->releaseDVFSLock(Landroid/os/IBinder;Ljava/lang/String;)V
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

.method public declared-synchronized doFrequencyRequest(I)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest;->this$0:Landroid/os/CustomFrequencyManager;

    iget-object v0, v0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    iget v1, p0, Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest;->mType:I

    iget v2, p0, Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest;->mFrequency:I

    iget-object v3, p0, Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest;->mPkgName:Ljava/lang/String;

    invoke-interface {v0, v1, v2, p1, v3}, Landroid/os/ICustomFrequencyManager;->acquirePersistentDVFSLock(IIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    invoke-static {v0}, Landroid/os/CustomFrequencyManager;->access$100(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public doFrequencyRequestImpl()V
    .locals 6

    const-string v0, "CustomFrequencyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CPUDVFSControlRequest : doFrequencyRequest::  = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest;->mFrequency:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " Timeout : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest;->mTimeoutMs:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/CustomFrequencyManager;->access$000(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest;->mToken:Landroid/os/IBinder;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest;->mCallingID:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest;->this$0:Landroid/os/CustomFrequencyManager;

    iget-object v1, v1, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    iget v2, p0, Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest;->mType:I

    iget v3, p0, Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest;->mFrequency:I

    iget-object v4, p0, Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest;->mToken:Landroid/os/IBinder;

    iget-object v5, p0, Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest;->mPkgName:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v4, v5}, Landroid/os/ICustomFrequencyManager;->acquireDVFSLock(IILandroid/os/IBinder;Ljava/lang/String;)V

    iget-wide v1, p0, Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest;->mTimeoutMs:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    const/4 v2, 0x1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest;->this$0:Landroid/os/CustomFrequencyManager;

    invoke-static {v1, v2}, Landroid/os/CustomFrequencyManager;->access$902(Landroid/os/CustomFrequencyManager;Z)Z

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest;->mCPUDVFSReleaser:Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest$CpuDvfsReleaser;

    if-eqz v1, :cond_1

    const-string v1, "CustomFrequencyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doFrequencyRequestImpl CPUDVFSReleaser.stop before : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest;->mCPUDVFSReleaser:Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest$CpuDvfsReleaser;

    iget-boolean v4, v4, Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest$CpuDvfsReleaser;->stop:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", pkgName : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest;->mPkgName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/os/CustomFrequencyManager;->access$000(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest;->mCPUDVFSReleaser:Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest$CpuDvfsReleaser;

    iput-boolean v2, v1, Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest$CpuDvfsReleaser;->stop:Z

    :cond_1
    new-instance v1, Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest$CpuDvfsReleaser;

    invoke-direct {v1, p0}, Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest$CpuDvfsReleaser;-><init>(Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest;)V

    iput-object v1, p0, Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest;->mCPUDVFSReleaser:Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest$CpuDvfsReleaser;

    iget-object v1, p0, Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest;->this$0:Landroid/os/CustomFrequencyManager;

    iget-object v1, v1, Landroid/os/CustomFrequencyManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest;->mCPUDVFSReleaser:Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest$CpuDvfsReleaser;

    iget-wide v3, p0, Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest;->mTimeoutMs:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_2
    iget v1, p0, Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest;->mCallingID:I

    invoke-virtual {p0, v1}, Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest;->doFrequencyRequest(I)V
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

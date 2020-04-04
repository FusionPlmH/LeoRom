.class Landroid/os/CustomFrequencyManager$LCDFrameRateRequest;
.super Landroid/os/CustomFrequencyManager$FrequencyRequest;
.source "CustomFrequencyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/CustomFrequencyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LCDFrameRateRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/CustomFrequencyManager$LCDFrameRateRequest$FrameRateReleaser;
    }
.end annotation


# instance fields
.field mFrameRateReleaser:Landroid/os/CustomFrequencyManager$LCDFrameRateRequest$FrameRateReleaser;

.field final synthetic this$0:Landroid/os/CustomFrequencyManager;


# direct methods
.method constructor <init>(Landroid/os/CustomFrequencyManager;IIJLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/os/CustomFrequencyManager$LCDFrameRateRequest;->this$0:Landroid/os/CustomFrequencyManager;

    invoke-direct/range {p0 .. p6}, Landroid/os/CustomFrequencyManager$FrequencyRequest;-><init>(Landroid/os/CustomFrequencyManager;IIJLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public cancelFrequencyRequestImpl()V
    .locals 4

    iget-object v0, p0, Landroid/os/CustomFrequencyManager$LCDFrameRateRequest;->mToken:Landroid/os/IBinder;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/os/CustomFrequencyManager$LCDFrameRateRequest;->mFrameRateReleaser:Landroid/os/CustomFrequencyManager$LCDFrameRateRequest$FrameRateReleaser;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/os/CustomFrequencyManager$LCDFrameRateRequest;->mFrameRateReleaser:Landroid/os/CustomFrequencyManager$LCDFrameRateRequest$FrameRateReleaser;

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/os/CustomFrequencyManager$LCDFrameRateRequest$FrameRateReleaser;->stop:Z

    :cond_0
    iget-object v1, p0, Landroid/os/CustomFrequencyManager$LCDFrameRateRequest;->this$0:Landroid/os/CustomFrequencyManager;

    iget-object v1, v1, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    iget-object v2, p0, Landroid/os/CustomFrequencyManager$LCDFrameRateRequest;->mToken:Landroid/os/IBinder;

    iget-object v3, p0, Landroid/os/CustomFrequencyManager$LCDFrameRateRequest;->mPkgName:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/os/ICustomFrequencyManager;->restoreLCDFrameRate(Landroid/os/IBinder;Ljava/lang/String;)V

    iget-object v1, p0, Landroid/os/CustomFrequencyManager$LCDFrameRateRequest;->this$0:Landroid/os/CustomFrequencyManager;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/CustomFrequencyManager;->access$702(Landroid/os/CustomFrequencyManager;Z)Z
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
    .locals 5

    const-string v0, "CustomFrequencyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LCDFrameRate : doFrequencyRequest:: requestLCDFrameRate - mFrequency = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/os/CustomFrequencyManager$LCDFrameRateRequest;->mFrequency:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mTimeoutMs = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Landroid/os/CustomFrequencyManager$LCDFrameRateRequest;->mTimeoutMs:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", mPkgName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/os/CustomFrequencyManager$LCDFrameRateRequest;->mPkgName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/CustomFrequencyManager;->access$000(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Landroid/os/CustomFrequencyManager$LCDFrameRateRequest;->mToken:Landroid/os/IBinder;

    monitor-enter v0

    :try_start_0
    const-string v1, "CustomFrequencyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LCDFrameRate : doFrequencyRequest:: requestLCDFrameRate - mFrequency = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/os/CustomFrequencyManager$LCDFrameRateRequest;->mFrequency:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mTimeoutMs = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Landroid/os/CustomFrequencyManager$LCDFrameRateRequest;->mTimeoutMs:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", mPkgName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/os/CustomFrequencyManager$LCDFrameRateRequest;->mPkgName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/CustomFrequencyManager;->access$000(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Landroid/os/CustomFrequencyManager$LCDFrameRateRequest;->this$0:Landroid/os/CustomFrequencyManager;

    iget-object v1, v1, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    iget v2, p0, Landroid/os/CustomFrequencyManager$LCDFrameRateRequest;->mFrequency:I

    iget-object v3, p0, Landroid/os/CustomFrequencyManager$LCDFrameRateRequest;->mToken:Landroid/os/IBinder;

    iget-object v4, p0, Landroid/os/CustomFrequencyManager$LCDFrameRateRequest;->mPkgName:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v4}, Landroid/os/ICustomFrequencyManager;->requestLCDFrameRate(ILandroid/os/IBinder;Ljava/lang/String;)V

    iget-wide v1, p0, Landroid/os/CustomFrequencyManager$LCDFrameRateRequest;->mTimeoutMs:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    const/4 v2, 0x1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/os/CustomFrequencyManager$LCDFrameRateRequest;->this$0:Landroid/os/CustomFrequencyManager;

    invoke-static {v1, v2}, Landroid/os/CustomFrequencyManager;->access$702(Landroid/os/CustomFrequencyManager;Z)Z

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/os/CustomFrequencyManager$LCDFrameRateRequest;->mFrameRateReleaser:Landroid/os/CustomFrequencyManager$LCDFrameRateRequest$FrameRateReleaser;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/os/CustomFrequencyManager$LCDFrameRateRequest;->mFrameRateReleaser:Landroid/os/CustomFrequencyManager$LCDFrameRateRequest$FrameRateReleaser;

    iput-boolean v2, v1, Landroid/os/CustomFrequencyManager$LCDFrameRateRequest$FrameRateReleaser;->stop:Z

    :cond_1
    new-instance v1, Landroid/os/CustomFrequencyManager$LCDFrameRateRequest$FrameRateReleaser;

    invoke-direct {v1, p0}, Landroid/os/CustomFrequencyManager$LCDFrameRateRequest$FrameRateReleaser;-><init>(Landroid/os/CustomFrequencyManager$LCDFrameRateRequest;)V

    iput-object v1, p0, Landroid/os/CustomFrequencyManager$LCDFrameRateRequest;->mFrameRateReleaser:Landroid/os/CustomFrequencyManager$LCDFrameRateRequest$FrameRateReleaser;

    iget-object v1, p0, Landroid/os/CustomFrequencyManager$LCDFrameRateRequest;->this$0:Landroid/os/CustomFrequencyManager;

    iget-object v1, v1, Landroid/os/CustomFrequencyManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/os/CustomFrequencyManager$LCDFrameRateRequest;->mFrameRateReleaser:Landroid/os/CustomFrequencyManager$LCDFrameRateRequest$FrameRateReleaser;

    iget-wide v3, p0, Landroid/os/CustomFrequencyManager$LCDFrameRateRequest;->mTimeoutMs:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v1, p0, Landroid/os/CustomFrequencyManager$LCDFrameRateRequest;->this$0:Landroid/os/CustomFrequencyManager;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/CustomFrequencyManager;->access$702(Landroid/os/CustomFrequencyManager;Z)Z
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

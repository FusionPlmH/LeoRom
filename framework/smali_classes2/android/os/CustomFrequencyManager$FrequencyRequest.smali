.class public abstract Landroid/os/CustomFrequencyManager$FrequencyRequest;
.super Ljava/lang/Object;
.source "CustomFrequencyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/CustomFrequencyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "FrequencyRequest"
.end annotation


# instance fields
.field public mFrequency:I

.field mInvalidParam:Z

.field public mPkgName:Ljava/lang/String;

.field mTimeoutMs:J

.field mToken:Landroid/os/IBinder;

.field public mType:I

.field final synthetic this$0:Landroid/os/CustomFrequencyManager;


# direct methods
.method constructor <init>(Landroid/os/CustomFrequencyManager;IIJLjava/lang/String;)V
    .locals 3

    iput-object p1, p0, Landroid/os/CustomFrequencyManager$FrequencyRequest;->this$0:Landroid/os/CustomFrequencyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/CustomFrequencyManager$FrequencyRequest;->mInvalidParam:Z

    :try_start_0
    const-string v0, "CustomFrequencyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Boost Request from package = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " frequency : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/CustomFrequencyManager;->access$000(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-eq p2, v0, :cond_4

    const/16 v1, 0x9

    if-ne p2, v1, :cond_0

    goto :goto_1

    :cond_0
    const/16 v1, 0xa

    if-eq p2, v1, :cond_3

    const/16 v1, 0xb

    if-ne p2, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x7

    if-eq p2, v1, :cond_2

    const/4 v1, 0x6

    if-ne p2, v1, :cond_5

    :cond_2
    iget-object v1, p1, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    invoke-interface {v1, p3}, Landroid/os/ICustomFrequencyManager;->checkCPUBoostRange(I)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "CustomFrequencyManager"

    const-string v2, "CPUDVFSControlRequest : invalid frequency range"

    invoke-static {v1, v2}, Landroid/os/CustomFrequencyManager;->access$000(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v0, p0, Landroid/os/CustomFrequencyManager$FrequencyRequest;->mInvalidParam:Z

    return-void

    :cond_3
    :goto_0
    iget-object v1, p1, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    invoke-interface {v1, p3}, Landroid/os/ICustomFrequencyManager;->checkSysBusFrequencyRange(I)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "CustomFrequencyManager"

    const-string v2, "SysBusFrequencyRequest : invalid frequency range"

    invoke-static {v1, v2}, Landroid/os/CustomFrequencyManager;->access$000(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v0, p0, Landroid/os/CustomFrequencyManager$FrequencyRequest;->mInvalidParam:Z

    return-void

    :cond_4
    :goto_1
    iget-object v1, p1, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    invoke-interface {v1, p3}, Landroid/os/ICustomFrequencyManager;->checkGPUFrequencyRange(I)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "CustomFrequencyManager"

    const-string v2, "GPUFrequencyRequest : invalid frequency range"

    invoke-static {v1, v2}, Landroid/os/CustomFrequencyManager;->access$000(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v0, p0, Landroid/os/CustomFrequencyManager$FrequencyRequest;->mInvalidParam:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :cond_5
    goto :goto_2

    :catch_0
    move-exception v0

    invoke-static {v0}, Landroid/os/CustomFrequencyManager;->access$100(Ljava/lang/Exception;)V

    :goto_2
    iput p2, p0, Landroid/os/CustomFrequencyManager$FrequencyRequest;->mType:I

    iput p3, p0, Landroid/os/CustomFrequencyManager$FrequencyRequest;->mFrequency:I

    iput-wide p4, p0, Landroid/os/CustomFrequencyManager$FrequencyRequest;->mTimeoutMs:J

    const-string v0, "CustomFrequencyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "!! pkgName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/CustomFrequencyManager;->access$000(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/CustomFrequencyManager;->access$200()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_7

    const-string v0, "android"

    invoke-static {}, Landroid/os/CustomFrequencyManager;->access$200()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Landroid/os/CustomFrequencyManager;->access$300()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-static {}, Landroid/os/CustomFrequencyManager;->access$300()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Landroid/os/CustomFrequencyManager;->access$300()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Landroid/os/CustomFrequencyManager$FrequencyRequest;->mToken:Landroid/os/IBinder;

    goto :goto_3

    :cond_6
    invoke-static {}, Landroid/os/CustomFrequencyManager;->access$400()V

    invoke-static {}, Landroid/os/CustomFrequencyManager;->access$300()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Landroid/os/CustomFrequencyManager$FrequencyRequest;->mToken:Landroid/os/IBinder;

    :cond_7
    :goto_3
    iget-object v0, p0, Landroid/os/CustomFrequencyManager$FrequencyRequest;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_8

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/os/CustomFrequencyManager$FrequencyRequest;->mToken:Landroid/os/IBinder;

    :cond_8
    iput-object p6, p0, Landroid/os/CustomFrequencyManager$FrequencyRequest;->mPkgName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public cancelFrequencyRequest()V
    .locals 1

    iget-boolean v0, p0, Landroid/os/CustomFrequencyManager$FrequencyRequest;->mInvalidParam:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->cancelFrequencyRequestImpl()V

    :cond_0
    return-void
.end method

.method public abstract cancelFrequencyRequestImpl()V
.end method

.method public doFrequencyRequest()V
    .locals 1

    iget-boolean v0, p0, Landroid/os/CustomFrequencyManager$FrequencyRequest;->mInvalidParam:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->doFrequencyRequestImpl()V

    :cond_0
    return-void
.end method

.method public abstract doFrequencyRequestImpl()V
.end method

.method public getLockType()I
    .locals 1

    iget v0, p0, Landroid/os/CustomFrequencyManager$FrequencyRequest;->mType:I

    return v0
.end method

.method public setValueFreq(I)Z
    .locals 4

    const/4 v0, 0x1

    :try_start_0
    const-string v1, "CustomFrequencyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setValueFreq : Request from package = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/os/CustomFrequencyManager$FrequencyRequest;->mPkgName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " setfreq : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/os/CustomFrequencyManager$FrequencyRequest;->mType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/CustomFrequencyManager;->access$000(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Landroid/os/CustomFrequencyManager$FrequencyRequest;->mType:I

    const/4 v2, 0x0

    if-lt v1, v0, :cond_b

    iget-object v1, p0, Landroid/os/CustomFrequencyManager$FrequencyRequest;->mPkgName:Ljava/lang/String;

    if-nez v1, :cond_0

    goto/16 :goto_4

    :cond_0
    iget v1, p0, Landroid/os/CustomFrequencyManager$FrequencyRequest;->mType:I

    if-eq v1, v0, :cond_9

    iget v1, p0, Landroid/os/CustomFrequencyManager$FrequencyRequest;->mType:I

    const/16 v3, 0x9

    if-ne v1, v3, :cond_1

    goto/16 :goto_3

    :cond_1
    iget v1, p0, Landroid/os/CustomFrequencyManager$FrequencyRequest;->mType:I

    const/16 v3, 0xa

    if-eq v1, v3, :cond_8

    iget v1, p0, Landroid/os/CustomFrequencyManager$FrequencyRequest;->mType:I

    const/16 v3, 0xb

    if-ne v1, v3, :cond_2

    goto :goto_2

    :cond_2
    iget v1, p0, Landroid/os/CustomFrequencyManager$FrequencyRequest;->mType:I

    const/4 v3, 0x7

    if-eq v1, v3, :cond_7

    iget v1, p0, Landroid/os/CustomFrequencyManager$FrequencyRequest;->mType:I

    const/4 v3, 0x6

    if-ne v1, v3, :cond_3

    goto :goto_1

    :cond_3
    iget v1, p0, Landroid/os/CustomFrequencyManager$FrequencyRequest;->mType:I

    const/4 v3, 0x4

    if-eq v1, v3, :cond_6

    iget v1, p0, Landroid/os/CustomFrequencyManager$FrequencyRequest;->mType:I

    const/4 v3, 0x5

    if-ne v1, v3, :cond_4

    goto :goto_0

    :cond_4
    iget v1, p0, Landroid/os/CustomFrequencyManager$FrequencyRequest;->mType:I

    const/16 v3, 0x13

    if-ne v1, v3, :cond_a

    if-ltz p1, :cond_5

    const/16 v1, 0x64

    if-le p1, v1, :cond_a

    :cond_5
    const-string v1, "CustomFrequencyManager"

    const-string v3, "SchedtuneBoostRequest : invalid setfreq range"

    invoke-static {v1, v3}, Landroid/os/CustomFrequencyManager;->access$000(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v0, p0, Landroid/os/CustomFrequencyManager$FrequencyRequest;->mInvalidParam:Z

    return v2

    :cond_6
    :goto_0
    iget-object v1, p0, Landroid/os/CustomFrequencyManager$FrequencyRequest;->this$0:Landroid/os/CustomFrequencyManager;

    iget-object v1, v1, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    invoke-interface {v1, p1}, Landroid/os/ICustomFrequencyManager;->checkCPUCoreRange(I)Z

    move-result v1

    if-nez v1, :cond_a

    const-string v1, "CustomFrequencyManager"

    const-string v3, "CPUCoreControlRequest : invalid setfreq range"

    invoke-static {v1, v3}, Landroid/os/CustomFrequencyManager;->access$000(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v0, p0, Landroid/os/CustomFrequencyManager$FrequencyRequest;->mInvalidParam:Z

    return v2

    :cond_7
    :goto_1
    iget-object v1, p0, Landroid/os/CustomFrequencyManager$FrequencyRequest;->this$0:Landroid/os/CustomFrequencyManager;

    iget-object v1, v1, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    invoke-interface {v1, p1}, Landroid/os/ICustomFrequencyManager;->checkCPUBoostRange(I)Z

    move-result v1

    if-nez v1, :cond_a

    const-string v1, "CustomFrequencyManager"

    const-string v3, "CPUDVFSControlRequest : invalid setfreq range"

    invoke-static {v1, v3}, Landroid/os/CustomFrequencyManager;->access$000(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v0, p0, Landroid/os/CustomFrequencyManager$FrequencyRequest;->mInvalidParam:Z

    return v2

    :cond_8
    :goto_2
    iget-object v1, p0, Landroid/os/CustomFrequencyManager$FrequencyRequest;->this$0:Landroid/os/CustomFrequencyManager;

    iget-object v1, v1, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    invoke-interface {v1, p1}, Landroid/os/ICustomFrequencyManager;->checkSysBusFrequencyRange(I)Z

    move-result v1

    if-nez v1, :cond_a

    const-string v1, "CustomFrequencyManager"

    const-string v3, "SysBusFrequencyRequest : invalid setfreq range"

    invoke-static {v1, v3}, Landroid/os/CustomFrequencyManager;->access$000(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v0, p0, Landroid/os/CustomFrequencyManager$FrequencyRequest;->mInvalidParam:Z

    return v2

    :cond_9
    :goto_3
    iget-object v1, p0, Landroid/os/CustomFrequencyManager$FrequencyRequest;->this$0:Landroid/os/CustomFrequencyManager;

    iget-object v1, v1, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    invoke-interface {v1, p1}, Landroid/os/ICustomFrequencyManager;->checkGPUFrequencyRange(I)Z

    move-result v1

    if-nez v1, :cond_a

    const-string v1, "CustomFrequencyManager"

    const-string v3, "GPUFrequencyRequest : invalid setfreq range"

    invoke-static {v1, v3}, Landroid/os/CustomFrequencyManager;->access$000(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v0, p0, Landroid/os/CustomFrequencyManager$FrequencyRequest;->mInvalidParam:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :cond_a
    goto :goto_5

    :cond_b
    :goto_4
    return v2

    :catch_0
    move-exception v1

    invoke-static {v1}, Landroid/os/CustomFrequencyManager;->access$100(Ljava/lang/Exception;)V

    :goto_5
    iput p1, p0, Landroid/os/CustomFrequencyManager$FrequencyRequest;->mFrequency:I

    return v0
.end method

.method public setValueTimeout(J)V
    .locals 4

    :try_start_0
    const-string v0, "CustomFrequencyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setValueTimeout : Request from package = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/os/CustomFrequencyManager$FrequencyRequest;->mPkgName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", current timeout : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Landroid/os/CustomFrequencyManager$FrequencyRequest;->mTimeoutMs:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", setTimeout : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", mType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/os/CustomFrequencyManager$FrequencyRequest;->mType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/CustomFrequencyManager;->access$000(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Landroid/os/CustomFrequencyManager$FrequencyRequest;->mType:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Landroid/os/CustomFrequencyManager$FrequencyRequest;->mPkgName:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/os/CustomFrequencyManager$FrequencyRequest;->mType:I

    if-lt v0, v1, :cond_1

    iget v0, p0, Landroid/os/CustomFrequencyManager$FrequencyRequest;->mType:I

    const/16 v1, 0x12

    if-gt v0, v1, :cond_1

    iput-wide p1, p0, Landroid/os/CustomFrequencyManager$FrequencyRequest;->mTimeoutMs:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    goto :goto_1

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Landroid/os/CustomFrequencyManager;->access$100(Ljava/lang/Exception;)V

    :goto_1
    return-void
.end method

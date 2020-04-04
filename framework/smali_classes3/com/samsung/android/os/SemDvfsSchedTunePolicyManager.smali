.class final Lcom/samsung/android/os/SemDvfsSchedTunePolicyManager;
.super Lcom/samsung/android/os/SemDvfsManager;
.source "SemDvfsSchedTunePolicyManager.java"


# direct methods
.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/os/SemDvfsManager;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    const-class v0, Lcom/samsung/android/os/SemDvfsSchedTunePolicyManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/os/SemDvfsSchedTunePolicyManager;->LOG_TAG:Ljava/lang/String;

    const-string v0, "SCHEDTUNE_POLICY"

    iput-object v0, p0, Lcom/samsung/android/os/SemDvfsSchedTunePolicyManager;->mName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public acquire()V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/os/SemDvfsSchedTunePolicyManager;->acquire(I)V

    return-void
.end method

.method public acquire(I)V
    .locals 10

    iget v0, p0, Lcom/samsung/android/os/SemDvfsSchedTunePolicyManager;->mDvfsValue:I

    iget-object v1, p0, Lcom/samsung/android/os/SemDvfsSchedTunePolicyManager;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1

    if-gez v0, :cond_1

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/os/SemDvfsSchedTunePolicyManager;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "acquire:: fail - value : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/os/SemDvfsSchedTunePolicyManager;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return-void

    :catchall_0
    move-exception v2

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/os/SemDvfsSchedTunePolicyManager;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "acquire:: timeout = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", mIsAcquired = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/samsung/android/os/SemDvfsSchedTunePolicyManager;->mIsAcquired:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " , mTagName : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/os/SemDvfsSchedTunePolicyManager;->mTagName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/os/SemDvfsSchedTunePolicyManager;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/samsung/android/os/SemDvfsSchedTunePolicyManager;->mIsAcquired:Z

    if-eqz v2, :cond_2

    const/4 v2, -0x1

    if-ne p1, v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/os/SemDvfsSchedTunePolicyManager;->LOG_TAG:Ljava/lang/String;

    const-string v3, "acquire:: DVFS lock is already acquired. Previous lock will be released first."

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/os/SemDvfsSchedTunePolicyManager;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/os/SemDvfsSchedTunePolicyManager;->release()V

    :cond_2
    iget v2, p0, Lcom/samsung/android/os/SemDvfsSchedTunePolicyManager;->mType:I

    const/16 v3, 0x1d

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/samsung/android/os/SemDvfsSchedTunePolicyManager;->mDvfsRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-nez v2, :cond_3

    iget-object v3, p0, Lcom/samsung/android/os/SemDvfsSchedTunePolicyManager;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    const/16 v4, 0x12

    const/4 v5, 0x0

    int-to-long v6, p1

    iget-object v8, p0, Lcom/samsung/android/os/SemDvfsSchedTunePolicyManager;->mTagName:Ljava/lang/String;

    iget-object v9, p0, Lcom/samsung/android/os/SemDvfsSchedTunePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual/range {v3 .. v9}, Landroid/os/CustomFrequencyManager;->newFrequencyRequest(IIJLjava/lang/String;Landroid/content/Context;)Landroid/os/CustomFrequencyManager$FrequencyRequest;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/os/SemDvfsSchedTunePolicyManager;->mDvfsRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    :cond_3
    iget-object v2, p0, Lcom/samsung/android/os/SemDvfsSchedTunePolicyManager;->mDvfsRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v2, :cond_5

    if-lez p1, :cond_4

    iget-object v2, p0, Lcom/samsung/android/os/SemDvfsSchedTunePolicyManager;->mDvfsRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    int-to-long v3, p1

    invoke-virtual {v2, v3, v4}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->setValueTimeout(J)V

    :cond_4
    iget-object v2, p0, Lcom/samsung/android/os/SemDvfsSchedTunePolicyManager;->mDvfsRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v2}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->doFrequencyRequest()V

    :cond_5
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/os/SemDvfsSchedTunePolicyManager;->mIsAcquired:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    nop

    return-void

    :goto_0
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v2
.end method

.method public clearDvfsValue()V
    .locals 1

    const/16 v0, -0x3e7

    iput v0, p0, Lcom/samsung/android/os/SemDvfsSchedTunePolicyManager;->mDvfsValue:I

    return-void
.end method

.method public setDvfsValue(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/os/SemDvfsSchedTunePolicyManager;->mDvfsValue:I

    return-void
.end method

.method public setDvfsValue(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

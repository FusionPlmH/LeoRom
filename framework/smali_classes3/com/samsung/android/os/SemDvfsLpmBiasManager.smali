.class Lcom/samsung/android/os/SemDvfsLpmBiasManager;
.super Lcom/samsung/android/os/SemDvfsManager;
.source "SemDvfsLpmBiasManager.java"


# direct methods
.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/os/SemDvfsManager;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    const-class v0, Lcom/samsung/android/os/SemDvfsLpmBiasManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/os/SemDvfsLpmBiasManager;->LOG_TAG:Ljava/lang/String;

    const-string v0, "LPM_BIAS"

    iput-object v0, p0, Lcom/samsung/android/os/SemDvfsLpmBiasManager;->mName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public acquire()V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/os/SemDvfsLpmBiasManager;->acquire(I)V

    return-void
.end method

.method public acquire(I)V
    .locals 9

    iget-object v0, p0, Lcom/samsung/android/os/SemDvfsLpmBiasManager;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/os/SemDvfsLpmBiasManager;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "acquire:: timeout = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mIsAcquired = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/samsung/android/os/SemDvfsLpmBiasManager;->mIsAcquired:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " , mTagName : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/os/SemDvfsLpmBiasManager;->mTagName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/os/SemDvfsLpmBiasManager;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/samsung/android/os/SemDvfsLpmBiasManager;->mIsAcquired:Z

    if-eqz v1, :cond_1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/os/SemDvfsLpmBiasManager;->LOG_TAG:Ljava/lang/String;

    const-string v2, "acquire:: DVFS lock is already acquired. Previous lock will be released first."

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/os/SemDvfsLpmBiasManager;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/os/SemDvfsLpmBiasManager;->release()V

    :cond_1
    iget v1, p0, Lcom/samsung/android/os/SemDvfsLpmBiasManager;->mType:I

    const/16 v2, 0x1f

    if-ne v1, v2, :cond_4

    iget v1, p0, Lcom/samsung/android/os/SemDvfsLpmBiasManager;->mDvfsValue:I

    if-lez v1, :cond_2

    iget-object v2, p0, Lcom/samsung/android/os/SemDvfsLpmBiasManager;->mDvfsRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/os/SemDvfsLpmBiasManager;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    const/16 v3, 0x14

    int-to-long v5, p1

    iget-object v7, p0, Lcom/samsung/android/os/SemDvfsLpmBiasManager;->mTagName:Ljava/lang/String;

    iget-object v8, p0, Lcom/samsung/android/os/SemDvfsLpmBiasManager;->mContext:Landroid/content/Context;

    move v4, v1

    invoke-virtual/range {v2 .. v8}, Landroid/os/CustomFrequencyManager;->newFrequencyRequest(IIJLjava/lang/String;Landroid/content/Context;)Landroid/os/CustomFrequencyManager$FrequencyRequest;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/os/SemDvfsLpmBiasManager;->mDvfsRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    :cond_2
    if-lez v1, :cond_4

    iget-object v2, p0, Lcom/samsung/android/os/SemDvfsLpmBiasManager;->mDvfsRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v2, :cond_4

    if-lez p1, :cond_3

    iget-object v2, p0, Lcom/samsung/android/os/SemDvfsLpmBiasManager;->mDvfsRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    int-to-long v3, p1

    invoke-virtual {v2, v3, v4}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->setValueTimeout(J)V

    :cond_3
    iget-object v2, p0, Lcom/samsung/android/os/SemDvfsLpmBiasManager;->mDvfsRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v2, v1}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->setValueFreq(I)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/samsung/android/os/SemDvfsLpmBiasManager;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "acquire:: DVFS setvalue doesn\'t work : TYPE_LPM_BIAS_lpmBiasNum = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/os/SemDvfsLpmBiasManager;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return-void

    :cond_4
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/os/SemDvfsLpmBiasManager;->mDvfsRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/os/SemDvfsLpmBiasManager;->mDvfsRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v1}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->doFrequencyRequest()V

    :cond_5
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/os/SemDvfsLpmBiasManager;->mIsAcquired:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    nop

    return-void

    :catchall_0
    move-exception v1

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v1
.end method

.method public clearDvfsValue()V
    .locals 1

    const/16 v0, -0x3e7

    iput v0, p0, Lcom/samsung/android/os/SemDvfsLpmBiasManager;->mDvfsValue:I

    return-void
.end method

.method public getApproximateFrequencyForSsrm(I)I
    .locals 1

    if-gez p1, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    return p1
.end method

.method public setDvfsValue(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/os/SemDvfsLpmBiasManager;->mDvfsValue:I

    return-void
.end method

.method public setDvfsValue(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

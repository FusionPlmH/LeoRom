.class Lcom/samsung/android/os/SemDvfsGpuManager;
.super Lcom/samsung/android/os/SemDvfsManager;
.source "SemDvfsGpuManager.java"


# direct methods
.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/os/SemDvfsManager;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    const-class v0, Lcom/samsung/android/os/SemDvfsGpuManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/os/SemDvfsGpuManager;->LOG_TAG:Ljava/lang/String;

    const-string v0, "GPU"

    iput-object v0, p0, Lcom/samsung/android/os/SemDvfsGpuManager;->mName:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/os/SemDvfsGpuManager;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    invoke-virtual {v0}, Landroid/os/CustomFrequencyManager;->getSupportedGPUFrequency()[I

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/os/SemDvfsGpuManager;->mSupportedValues:[I

    iget-object v0, p0, Lcom/samsung/android/os/SemDvfsGpuManager;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    invoke-virtual {v0}, Landroid/os/CustomFrequencyManager;->getSupportedGPUFrequency()[I

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/os/SemDvfsGpuManager;->mSupportedValuesForSsrm:[I

    invoke-direct {p0}, Lcom/samsung/android/os/SemDvfsGpuManager;->adjustGPUFreqTable()V

    return-void
.end method

.method private adjustGPUFreqTable()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/os/SemDvfsGpuManager;->mSupportedValues:[I

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const-string v1, "ha"

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "ka"

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "sa"

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "ta"

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "hrl"

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "hrq"

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "dvfs_policy_kangchen_xx"

    const-string/jumbo v2, "msm8996"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "dvfs_policy_kangchen_xx"

    const-string/jumbo v2, "kangchen"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "zl"

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x3

    goto :goto_1

    :cond_2
    const-string v1, "dvfs_policy_kangchen_xx"

    const-string v2, "dvfs"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v0, 0x2

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, 0x2

    :cond_4
    :goto_1
    if-lez v0, :cond_6

    iget-object v1, p0, Lcom/samsung/android/os/SemDvfsGpuManager;->mSupportedValues:[I

    array-length v1, v1

    if-le v1, v0, :cond_6

    iget-object v1, p0, Lcom/samsung/android/os/SemDvfsGpuManager;->mSupportedValues:[I

    array-length v1, v1

    sub-int/2addr v1, v0

    new-array v1, v1, [I

    const/4 v2, 0x0

    :goto_2
    iget-object v3, p0, Lcom/samsung/android/os/SemDvfsGpuManager;->mSupportedValues:[I

    array-length v3, v3

    sub-int/2addr v3, v0

    if-ge v2, v3, :cond_5

    iget-object v3, p0, Lcom/samsung/android/os/SemDvfsGpuManager;->mSupportedValues:[I

    add-int v4, v2, v0

    aget v3, v3, v4

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    iput-object v1, p0, Lcom/samsung/android/os/SemDvfsGpuManager;->mSupportedValues:[I

    :cond_6
    return-void
.end method


# virtual methods
.method public acquire()V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/os/SemDvfsGpuManager;->acquire(I)V

    return-void
.end method

.method public acquire(I)V
    .locals 11

    iget-object v0, p0, Lcom/samsung/android/os/SemDvfsGpuManager;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/os/SemDvfsGpuManager;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "acquire:: timeout = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mIsAcquired = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/samsung/android/os/SemDvfsGpuManager;->mIsAcquired:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " , mTagName : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/os/SemDvfsGpuManager;->mTagName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/os/SemDvfsGpuManager;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/samsung/android/os/SemDvfsGpuManager;->mType:I

    const/16 v2, 0x10

    const/4 v3, -0x1

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/samsung/android/os/SemDvfsGpuManager;->mSupportedValues:[I

    if-eqz v1, :cond_7

    iget v1, p0, Lcom/samsung/android/os/SemDvfsGpuManager;->mDvfsValue:I

    if-eq v1, v3, :cond_1

    iget-object v2, p0, Lcom/samsung/android/os/SemDvfsGpuManager;->mDvfsRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-nez v2, :cond_1

    iget-object v4, p0, Lcom/samsung/android/os/SemDvfsGpuManager;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    const/4 v5, 0x1

    int-to-long v7, p1

    iget-object v9, p0, Lcom/samsung/android/os/SemDvfsGpuManager;->mTagName:Ljava/lang/String;

    iget-object v10, p0, Lcom/samsung/android/os/SemDvfsGpuManager;->mContext:Landroid/content/Context;

    move v6, v1

    invoke-virtual/range {v4 .. v10}, Landroid/os/CustomFrequencyManager;->newFrequencyRequest(IIJLjava/lang/String;Landroid/content/Context;)Landroid/os/CustomFrequencyManager$FrequencyRequest;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/os/SemDvfsGpuManager;->mDvfsRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    :cond_1
    if-eq v1, v3, :cond_3

    iget-object v2, p0, Lcom/samsung/android/os/SemDvfsGpuManager;->mDvfsRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v2, :cond_3

    if-lez p1, :cond_2

    iget-object v2, p0, Lcom/samsung/android/os/SemDvfsGpuManager;->mDvfsRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    int-to-long v3, p1

    invoke-virtual {v2, v3, v4}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->setValueTimeout(J)V

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/os/SemDvfsGpuManager;->mDvfsRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/os/SemDvfsGpuManager;->mDvfsRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v2, v1}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->setValueFreq(I)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/os/SemDvfsGpuManager;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "acquire:: DVFS setvalue doesn\'t work : TYPE_GPU_MIN_freq = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/os/SemDvfsGpuManager;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return-void

    :cond_3
    goto :goto_0

    :cond_4
    :try_start_1
    iget v1, p0, Lcom/samsung/android/os/SemDvfsGpuManager;->mType:I

    const/16 v2, 0x11

    if-ne v1, v2, :cond_7

    iget-object v1, p0, Lcom/samsung/android/os/SemDvfsGpuManager;->mSupportedValues:[I

    if-eqz v1, :cond_7

    iget v1, p0, Lcom/samsung/android/os/SemDvfsGpuManager;->mDvfsValue:I

    if-eq v1, v3, :cond_5

    iget-object v2, p0, Lcom/samsung/android/os/SemDvfsGpuManager;->mDvfsRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-nez v2, :cond_5

    iget-object v4, p0, Lcom/samsung/android/os/SemDvfsGpuManager;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    const/16 v5, 0x9

    int-to-long v7, p1

    iget-object v9, p0, Lcom/samsung/android/os/SemDvfsGpuManager;->mTagName:Ljava/lang/String;

    iget-object v10, p0, Lcom/samsung/android/os/SemDvfsGpuManager;->mContext:Landroid/content/Context;

    move v6, v1

    invoke-virtual/range {v4 .. v10}, Landroid/os/CustomFrequencyManager;->newFrequencyRequest(IIJLjava/lang/String;Landroid/content/Context;)Landroid/os/CustomFrequencyManager$FrequencyRequest;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/os/SemDvfsGpuManager;->mDvfsRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    :cond_5
    if-eq v1, v3, :cond_7

    iget-object v2, p0, Lcom/samsung/android/os/SemDvfsGpuManager;->mDvfsRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v2, :cond_7

    if-lez p1, :cond_6

    iget-object v2, p0, Lcom/samsung/android/os/SemDvfsGpuManager;->mDvfsRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    int-to-long v3, p1

    invoke-virtual {v2, v3, v4}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->setValueTimeout(J)V

    :cond_6
    iget-object v2, p0, Lcom/samsung/android/os/SemDvfsGpuManager;->mDvfsRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/samsung/android/os/SemDvfsGpuManager;->mDvfsRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v2, v1}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->setValueFreq(I)Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/samsung/android/os/SemDvfsGpuManager;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "acquire:: DVFS setvalue doesn\'t work : TYPE_GPU_MAX_freq = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/os/SemDvfsGpuManager;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return-void

    :cond_7
    :goto_0
    :try_start_2
    iget-object v1, p0, Lcom/samsung/android/os/SemDvfsGpuManager;->mDvfsRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/samsung/android/os/SemDvfsGpuManager;->mDvfsRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v1}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->doFrequencyRequest()V

    :cond_8
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/os/SemDvfsGpuManager;->mIsAcquired:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

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

    iput v0, p0, Lcom/samsung/android/os/SemDvfsGpuManager;->mDvfsValue:I

    return-void
.end method

.method public setDvfsValue(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/os/SemDvfsGpuManager;->mDvfsValue:I

    return-void
.end method

.method public setDvfsValue(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

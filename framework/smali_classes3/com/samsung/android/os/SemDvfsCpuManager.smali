.class final Lcom/samsung/android/os/SemDvfsCpuManager;
.super Lcom/samsung/android/os/SemDvfsManager;
.source "SemDvfsCpuManager.java"


# direct methods
.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/os/SemDvfsManager;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    const-class v0, Lcom/samsung/android/os/SemDvfsCpuManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/os/SemDvfsCpuManager;->LOG_TAG:Ljava/lang/String;

    const-string v0, "CPU"

    iput-object v0, p0, Lcom/samsung/android/os/SemDvfsCpuManager;->mName:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/os/SemDvfsCpuManager;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    invoke-virtual {v0}, Landroid/os/CustomFrequencyManager;->getSupportedCPUFrequency()[I

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/os/SemDvfsCpuManager;->mSupportedValues:[I

    iget-object v0, p0, Lcom/samsung/android/os/SemDvfsCpuManager;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    invoke-virtual {v0}, Landroid/os/CustomFrequencyManager;->getSupportedCPUFrequency()[I

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/os/SemDvfsCpuManager;->mSupportedValuesForSsrm:[I

    invoke-direct {p0}, Lcom/samsung/android/os/SemDvfsCpuManager;->adjustCPUFreqTable()V

    return-void
.end method

.method private adjustCPUFreqTable()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/os/SemDvfsCpuManager;->mSupportedValues:[I

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const-string v1, "hf"

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    goto/16 :goto_2

    :cond_1
    const-string v1, "hrl"

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "dvfs_policy_kangchen_xx"

    const-string/jumbo v3, "makalu"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto/16 :goto_1

    :cond_2
    const-string/jumbo v1, "island"

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, ""

    const-string/jumbo v3, "novel"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v0, 0x1

    goto/16 :goto_2

    :cond_3
    const-string v1, "hrq"

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string/jumbo v1, "kf"

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string/jumbo v1, "ka"

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string/jumbo v1, "tr3ca"

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string/jumbo v1, "zl"

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "dvfs_policy_kangchen_xx"

    const-string/jumbo v3, "msm8996"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "dvfs_policy_kangchen_xx"

    const-string/jumbo v3, "kangchen"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string/jumbo v1, "zq"

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_0

    :cond_4
    const-string/jumbo v1, "tf"

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/samsung/android/os/SemDvfsCpuManager;->mSupportedValues:[I

    aget v1, v1, v2

    const v3, 0x286e00

    if-ne v1, v3, :cond_5

    const/4 v0, 0x5

    goto :goto_2

    :cond_5
    const/4 v0, 0x2

    goto :goto_2

    :cond_6
    const-string v1, "dvfs_policy_kangchen_xx"

    const-string v3, "dvfs"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v0, 0x2

    goto :goto_2

    :cond_7
    :goto_0
    const/4 v0, 0x2

    goto :goto_2

    :cond_8
    :goto_1
    const/4 v0, 0x6

    :cond_9
    :goto_2
    const-string v1, ""

    const-string/jumbo v3, "lentis"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    const-string v1, ""

    const-string/jumbo v3, "kcat6"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    const-string/jumbo v1, "ta"

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_3

    :cond_a
    const-string v1, ""

    const-string/jumbo v3, "ja_kor"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v0, 0x3

    goto :goto_4

    :cond_b
    :goto_3
    const/4 v0, 0x2

    :cond_c
    :goto_4
    if-lez v0, :cond_e

    iget-object v1, p0, Lcom/samsung/android/os/SemDvfsCpuManager;->mSupportedValues:[I

    array-length v1, v1

    if-le v1, v0, :cond_e

    iget-object v1, p0, Lcom/samsung/android/os/SemDvfsCpuManager;->mSupportedValues:[I

    array-length v1, v1

    sub-int/2addr v1, v0

    new-array v1, v1, [I

    nop

    :goto_5
    iget-object v3, p0, Lcom/samsung/android/os/SemDvfsCpuManager;->mSupportedValues:[I

    array-length v3, v3

    sub-int/2addr v3, v0

    if-ge v2, v3, :cond_d

    iget-object v3, p0, Lcom/samsung/android/os/SemDvfsCpuManager;->mSupportedValues:[I

    add-int v4, v2, v0

    aget v3, v3, v4

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_d
    iput-object v1, p0, Lcom/samsung/android/os/SemDvfsCpuManager;->mSupportedValues:[I

    :cond_e
    return-void
.end method


# virtual methods
.method public acquire()V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/os/SemDvfsCpuManager;->acquire(I)V

    return-void
.end method

.method public acquire(I)V
    .locals 10

    iget-object v0, p0, Lcom/samsung/android/os/SemDvfsCpuManager;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    if-eqz v0, :cond_a

    iget v0, p0, Lcom/samsung/android/os/SemDvfsCpuManager;->mDvfsValue:I

    const/16 v1, -0x3e7

    if-eq v0, v1, :cond_a

    iget v0, p0, Lcom/samsung/android/os/SemDvfsCpuManager;->mDvfsValue:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/os/SemDvfsCpuManager;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "acquire:: timeout = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", mIsAcquired = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/samsung/android/os/SemDvfsCpuManager;->mIsAcquired:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " , mTagName : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/os/SemDvfsCpuManager;->mTagName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/os/SemDvfsCpuManager;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/os/SemDvfsCpuManager;->mType:I

    const/16 v3, 0xc

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Lcom/samsung/android/os/SemDvfsCpuManager;->mSupportedValues:[I

    if-eqz v2, :cond_8

    iget v2, p0, Lcom/samsung/android/os/SemDvfsCpuManager;->mDvfsValue:I

    const-string/jumbo v3, "ja"

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const v3, 0x186a00

    if-le v2, v3, :cond_1

    invoke-virtual {p0, v3}, Lcom/samsung/android/os/SemDvfsCpuManager;->getApproximateFrequency(I)I

    move-result v3

    move v2, v3

    :cond_1
    move v9, v2

    if-eq v9, v1, :cond_2

    iget-object v2, p0, Lcom/samsung/android/os/SemDvfsCpuManager;->mDvfsRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/os/SemDvfsCpuManager;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    const/4 v3, 0x6

    int-to-long v5, p1

    iget-object v7, p0, Lcom/samsung/android/os/SemDvfsCpuManager;->mTagName:Ljava/lang/String;

    iget-object v8, p0, Lcom/samsung/android/os/SemDvfsCpuManager;->mContext:Landroid/content/Context;

    move v4, v9

    invoke-virtual/range {v2 .. v8}, Landroid/os/CustomFrequencyManager;->newFrequencyRequest(IIJLjava/lang/String;Landroid/content/Context;)Landroid/os/CustomFrequencyManager$FrequencyRequest;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/os/SemDvfsCpuManager;->mDvfsRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    :cond_2
    if-eq v9, v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/os/SemDvfsCpuManager;->mDvfsRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v1, :cond_4

    if-lez p1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/os/SemDvfsCpuManager;->mDvfsRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->setValueTimeout(J)V

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/os/SemDvfsCpuManager;->mDvfsRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/os/SemDvfsCpuManager;->mDvfsRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v1, v9}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->setValueFreq(I)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/os/SemDvfsCpuManager;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "acquire:: DVFS setvalue doesn\'t work : TYPE_CPU_MIN_freq = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/os/SemDvfsCpuManager;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return-void

    :cond_4
    goto :goto_0

    :cond_5
    :try_start_1
    iget v2, p0, Lcom/samsung/android/os/SemDvfsCpuManager;->mType:I

    const/16 v3, 0xd

    if-ne v2, v3, :cond_8

    iget-object v2, p0, Lcom/samsung/android/os/SemDvfsCpuManager;->mSupportedValues:[I

    if-eqz v2, :cond_8

    iget v2, p0, Lcom/samsung/android/os/SemDvfsCpuManager;->mDvfsValue:I

    if-eq v2, v1, :cond_6

    iget-object v3, p0, Lcom/samsung/android/os/SemDvfsCpuManager;->mDvfsRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/samsung/android/os/SemDvfsCpuManager;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    const/4 v4, 0x7

    int-to-long v6, p1

    iget-object v8, p0, Lcom/samsung/android/os/SemDvfsCpuManager;->mTagName:Ljava/lang/String;

    iget-object v9, p0, Lcom/samsung/android/os/SemDvfsCpuManager;->mContext:Landroid/content/Context;

    move v5, v2

    invoke-virtual/range {v3 .. v9}, Landroid/os/CustomFrequencyManager;->newFrequencyRequest(IIJLjava/lang/String;Landroid/content/Context;)Landroid/os/CustomFrequencyManager$FrequencyRequest;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/os/SemDvfsCpuManager;->mDvfsRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    :cond_6
    if-eq v2, v1, :cond_8

    iget-object v1, p0, Lcom/samsung/android/os/SemDvfsCpuManager;->mDvfsRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v1, :cond_8

    if-lez p1, :cond_7

    iget-object v1, p0, Lcom/samsung/android/os/SemDvfsCpuManager;->mDvfsRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    int-to-long v3, p1

    invoke-virtual {v1, v3, v4}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->setValueTimeout(J)V

    :cond_7
    iget-object v1, p0, Lcom/samsung/android/os/SemDvfsCpuManager;->mDvfsRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/samsung/android/os/SemDvfsCpuManager;->mDvfsRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v1, v2}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->setValueFreq(I)Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/samsung/android/os/SemDvfsCpuManager;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "acquire:: DVFS setvalue doesn\'t work : TYPE_CPU_MAX_freq = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lcom/samsung/android/os/SemDvfsCpuManager;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return-void

    :cond_8
    :goto_0
    :try_start_2
    iget-object v1, p0, Lcom/samsung/android/os/SemDvfsCpuManager;->mDvfsRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/samsung/android/os/SemDvfsCpuManager;->mDvfsRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v1}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->doFrequencyRequest()V

    :cond_9
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/os/SemDvfsCpuManager;->mIsAcquired:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    nop

    return-void

    :catchall_0
    move-exception v1

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v1

    :cond_a
    :goto_1
    return-void
.end method

.method public clearDvfsValue()V
    .locals 1

    const/16 v0, -0x3e7

    iput v0, p0, Lcom/samsung/android/os/SemDvfsCpuManager;->mDvfsValue:I

    return-void
.end method

.method public getApproximateFrequencyByPercentForSSRM(D)I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/os/SemDvfsCpuManager;->mSupportedValuesForSsrm:[I

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/os/SemDvfsCpuManager;->mSupportedValuesForSsrm:[I

    array-length v0, v0

    if-gtz v0, :cond_1

    return v1

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/os/SemDvfsCpuManager;->mSupportedValuesForSsrm:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    int-to-double v1, v1

    mul-double/2addr v1, p1

    double-to-int v1, v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/os/SemDvfsCpuManager;->getApproximateFrequencyForSsrm(I)I

    move-result v1

    return v1
.end method

.method public setDvfsValue(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/os/SemDvfsCpuManager;->mDvfsValue:I

    return-void
.end method

.method public setDvfsValue(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

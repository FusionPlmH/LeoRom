.class Lcom/samsung/android/os/SemDvfsArrangedSetsManager;
.super Lcom/samsung/android/os/SemDvfsManager;
.source "SemDvfsArrangedSetsManager.java"


# direct methods
.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/os/SemDvfsManager;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    const-class v0, Lcom/samsung/android/os/SemDvfsArrangedSetsManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/os/SemDvfsArrangedSetsManager;->LOG_TAG:Ljava/lang/String;

    const-string v0, "DEF"

    iput-object v0, p0, Lcom/samsung/android/os/SemDvfsArrangedSetsManager;->mName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public acquire()V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/os/SemDvfsArrangedSetsManager;->acquire(I)V

    return-void
.end method

.method public acquire(I)V
    .locals 11

    iget-object v0, p0, Lcom/samsung/android/os/SemDvfsArrangedSetsManager;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/samsung/android/os/SemDvfsArrangedSetsManager;->mType:I

    const/16 v1, 0x63

    const/4 v2, 0x1

    const/16 v3, 0x16

    if-ne v0, v3, :cond_2

    iget v0, p0, Lcom/samsung/android/os/SemDvfsArrangedSetsManager;->mDvfsValue:I

    if-ge v0, v2, :cond_1

    iput v2, p0, Lcom/samsung/android/os/SemDvfsArrangedSetsManager;->mDvfsValue:I

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/samsung/android/os/SemDvfsArrangedSetsManager;->mDvfsValue:I

    if-le v0, v1, :cond_3

    iput v1, p0, Lcom/samsung/android/os/SemDvfsArrangedSetsManager;->mDvfsValue:I

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/samsung/android/os/SemDvfsArrangedSetsManager;->mType:I

    if-le v0, v3, :cond_3

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/os/SemDvfsArrangedSetsManager;->mDvfsValue:I

    :cond_3
    :goto_0
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/os/SemDvfsArrangedSetsManager;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "acquire:: timeout = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", mIsAcquired = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/samsung/android/os/SemDvfsArrangedSetsManager;->mIsAcquired:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " , mTagName : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/samsung/android/os/SemDvfsArrangedSetsManager;->mTagName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/samsung/android/os/SemDvfsArrangedSetsManager;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/samsung/android/os/SemDvfsArrangedSetsManager;->mIsAcquired:Z

    if-eqz v4, :cond_4

    const/4 v4, -0x1

    if-ne p1, v4, :cond_4

    iget-object v4, p0, Lcom/samsung/android/os/SemDvfsArrangedSetsManager;->LOG_TAG:Ljava/lang/String;

    const-string v5, "acquire:: DVFS lock is already acquired. Previous lock will be released first."

    invoke-virtual {p0, v4, v5}, Lcom/samsung/android/os/SemDvfsArrangedSetsManager;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/os/SemDvfsArrangedSetsManager;->release()V

    :cond_4
    iget v4, p0, Lcom/samsung/android/os/SemDvfsArrangedSetsManager;->mType:I

    if-ne v4, v3, :cond_5

    iget-object v3, p0, Lcom/samsung/android/os/SemDvfsArrangedSetsManager;->mDvfsRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-nez v3, :cond_5

    iget v3, p0, Lcom/samsung/android/os/SemDvfsArrangedSetsManager;->mDvfsValue:I

    if-ltz v3, :cond_9

    iget v3, p0, Lcom/samsung/android/os/SemDvfsArrangedSetsManager;->mDvfsValue:I

    if-ge v3, v1, :cond_9

    iget-object v4, p0, Lcom/samsung/android/os/SemDvfsArrangedSetsManager;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    const/4 v5, 0x3

    iget v6, p0, Lcom/samsung/android/os/SemDvfsArrangedSetsManager;->mDvfsValue:I

    int-to-long v7, p1

    iget-object v9, p0, Lcom/samsung/android/os/SemDvfsArrangedSetsManager;->mTagName:Ljava/lang/String;

    iget-object v10, p0, Lcom/samsung/android/os/SemDvfsArrangedSetsManager;->mContext:Landroid/content/Context;

    invoke-virtual/range {v4 .. v10}, Landroid/os/CustomFrequencyManager;->newFrequencyRequest(IIJLjava/lang/String;Landroid/content/Context;)Landroid/os/CustomFrequencyManager$FrequencyRequest;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/os/SemDvfsArrangedSetsManager;->mDvfsRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    goto :goto_1

    :cond_5
    iget v1, p0, Lcom/samsung/android/os/SemDvfsArrangedSetsManager;->mType:I

    const/16 v3, 0x17

    if-ne v1, v3, :cond_6

    iget-object v1, p0, Lcom/samsung/android/os/SemDvfsArrangedSetsManager;->mDvfsRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-nez v1, :cond_6

    iget-object v3, p0, Lcom/samsung/android/os/SemDvfsArrangedSetsManager;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    const/16 v4, 0xc

    const/4 v5, 0x0

    int-to-long v6, p1

    iget-object v8, p0, Lcom/samsung/android/os/SemDvfsArrangedSetsManager;->mTagName:Ljava/lang/String;

    iget-object v9, p0, Lcom/samsung/android/os/SemDvfsArrangedSetsManager;->mContext:Landroid/content/Context;

    invoke-virtual/range {v3 .. v9}, Landroid/os/CustomFrequencyManager;->newFrequencyRequest(IIJLjava/lang/String;Landroid/content/Context;)Landroid/os/CustomFrequencyManager$FrequencyRequest;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/os/SemDvfsArrangedSetsManager;->mDvfsRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    goto :goto_1

    :cond_6
    iget v1, p0, Lcom/samsung/android/os/SemDvfsArrangedSetsManager;->mType:I

    const/16 v3, 0x18

    if-ne v1, v3, :cond_7

    iget-object v1, p0, Lcom/samsung/android/os/SemDvfsArrangedSetsManager;->mDvfsRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-nez v1, :cond_7

    iget-object v3, p0, Lcom/samsung/android/os/SemDvfsArrangedSetsManager;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    const/16 v4, 0xd

    const/4 v5, 0x0

    int-to-long v6, p1

    iget-object v8, p0, Lcom/samsung/android/os/SemDvfsArrangedSetsManager;->mTagName:Ljava/lang/String;

    iget-object v9, p0, Lcom/samsung/android/os/SemDvfsArrangedSetsManager;->mContext:Landroid/content/Context;

    invoke-virtual/range {v3 .. v9}, Landroid/os/CustomFrequencyManager;->newFrequencyRequest(IIJLjava/lang/String;Landroid/content/Context;)Landroid/os/CustomFrequencyManager$FrequencyRequest;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/os/SemDvfsArrangedSetsManager;->mDvfsRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    goto :goto_1

    :cond_7
    iget v1, p0, Lcom/samsung/android/os/SemDvfsArrangedSetsManager;->mType:I

    const/16 v3, 0x19

    if-ne v1, v3, :cond_8

    iget-object v1, p0, Lcom/samsung/android/os/SemDvfsArrangedSetsManager;->mDvfsRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-nez v1, :cond_8

    iget-object v3, p0, Lcom/samsung/android/os/SemDvfsArrangedSetsManager;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    const/16 v4, 0xe

    const/4 v5, 0x0

    int-to-long v6, p1

    iget-object v8, p0, Lcom/samsung/android/os/SemDvfsArrangedSetsManager;->mTagName:Ljava/lang/String;

    iget-object v9, p0, Lcom/samsung/android/os/SemDvfsArrangedSetsManager;->mContext:Landroid/content/Context;

    invoke-virtual/range {v3 .. v9}, Landroid/os/CustomFrequencyManager;->newFrequencyRequest(IIJLjava/lang/String;Landroid/content/Context;)Landroid/os/CustomFrequencyManager$FrequencyRequest;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/os/SemDvfsArrangedSetsManager;->mDvfsRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    goto :goto_1

    :cond_8
    iget v1, p0, Lcom/samsung/android/os/SemDvfsArrangedSetsManager;->mType:I

    const/16 v3, 0x1a

    if-ne v1, v3, :cond_9

    iget-object v1, p0, Lcom/samsung/android/os/SemDvfsArrangedSetsManager;->mDvfsRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-nez v1, :cond_9

    iget-object v3, p0, Lcom/samsung/android/os/SemDvfsArrangedSetsManager;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    const/16 v4, 0xf

    const/4 v5, 0x0

    int-to-long v6, p1

    iget-object v8, p0, Lcom/samsung/android/os/SemDvfsArrangedSetsManager;->mTagName:Ljava/lang/String;

    iget-object v9, p0, Lcom/samsung/android/os/SemDvfsArrangedSetsManager;->mContext:Landroid/content/Context;

    invoke-virtual/range {v3 .. v9}, Landroid/os/CustomFrequencyManager;->newFrequencyRequest(IIJLjava/lang/String;Landroid/content/Context;)Landroid/os/CustomFrequencyManager$FrequencyRequest;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/os/SemDvfsArrangedSetsManager;->mDvfsRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    :cond_9
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/os/SemDvfsArrangedSetsManager;->mDvfsRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/samsung/android/os/SemDvfsArrangedSetsManager;->mDvfsRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v1}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->doFrequencyRequest()V

    :cond_a
    iput-boolean v2, p0, Lcom/samsung/android/os/SemDvfsArrangedSetsManager;->mIsAcquired:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

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

    iput v0, p0, Lcom/samsung/android/os/SemDvfsArrangedSetsManager;->mDvfsValue:I

    return-void
.end method

.method public setDvfsValue(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/os/SemDvfsArrangedSetsManager;->mDvfsValue:I

    return-void
.end method

.method public setDvfsValue(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

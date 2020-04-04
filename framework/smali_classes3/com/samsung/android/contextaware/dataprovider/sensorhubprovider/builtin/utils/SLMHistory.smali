.class public Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;
.super Ljava/lang/Object;
.source "SLMHistory.java"

# interfaces
.implements Lcom/samsung/android/contextaware/utilbundle/ITimeChangeObserver;


# static fields
.field private static final MAX_BUFFER_SIZE:I = 0xf

.field private static volatile mSLMHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;


# instance fields
.field private mAccumulatedCalorie:D

.field private mAccumulatedDistance:D

.field private mAccumulatedDuration:I

.field private mAccumulatedStepCount:I

.field private mBufferIndex:I

.field private mBufferSize:I

.field private mCalorieArray:[D

.field private mDistanceArray:[D

.field private mDurationArray:[I

.field private mLastStepType:I

.field private mStepCountArray:[I

.field private mStepTypeArray:[I

.field private mTimeStampArray:[J


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xf

    new-array v1, v0, [J

    iput-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mTimeStampArray:[J

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mStepTypeArray:[I

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mStepCountArray:[I

    new-array v1, v0, [D

    iput-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mDistanceArray:[D

    new-array v1, v0, [D

    iput-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mCalorieArray:[D

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mDurationArray:[I

    invoke-direct {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->initialize()V

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;->getInstance()Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;->registerObserver(Lcom/samsung/android/contextaware/utilbundle/ITimeChangeObserver;)V

    return-void
.end method

.method public static getInstance()Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;
    .locals 2

    sget-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mSLMHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;

    if-nez v0, :cond_1

    const-class v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mSLMHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;

    invoke-direct {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;-><init>()V

    sput-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mSLMHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mSLMHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;

    return-object v0
.end method

.method private initialize()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mBufferIndex:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mBufferSize:I

    iput v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mLastStepType:I

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->resetAccumulatedStepInfo()V

    return-void
.end method


# virtual methods
.method public erase()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->initialize()V

    return-void
.end method

.method public getBufferSize()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mBufferSize:I

    return v0
.end method

.method public getLastStepType()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mLastStepType:I

    return v0
.end method

.method public getLatestBufferIndex()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mBufferIndex:I

    return v0
.end method

.method public getMaxBufferSize()I
    .locals 1

    const/16 v0, 0xf

    return v0
.end method

.method public getTimeStampSingle(I)J
    .locals 3

    iget v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mBufferSize:I

    const/16 v1, 0xf

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mBufferIndex:I

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, p1

    if-lt v0, v1, :cond_1

    add-int/lit8 v0, v0, -0xf

    goto :goto_0

    :cond_0
    move v0, p1

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mTimeStampArray:[J

    aget-wide v1, v1, v0

    return-wide v1
.end method

.method public getmCalorieArraySingle(I)D
    .locals 3

    iget v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mBufferSize:I

    const/16 v1, 0xf

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mBufferIndex:I

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, p1

    if-lt v0, v1, :cond_1

    add-int/lit8 v0, v0, -0xf

    goto :goto_0

    :cond_0
    move v0, p1

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mCalorieArray:[D

    aget-wide v1, v1, v0

    return-wide v1
.end method

.method public getmDistanceArraySingle(I)D
    .locals 3

    iget v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mBufferSize:I

    const/16 v1, 0xf

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mBufferIndex:I

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, p1

    if-lt v0, v1, :cond_1

    add-int/lit8 v0, v0, -0xf

    goto :goto_0

    :cond_0
    move v0, p1

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mDistanceArray:[D

    aget-wide v1, v1, v0

    return-wide v1
.end method

.method public getmDurationArraySingle(I)I
    .locals 2

    iget v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mBufferSize:I

    const/16 v1, 0xf

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mBufferIndex:I

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, p1

    if-lt v0, v1, :cond_1

    add-int/lit8 v0, v0, -0xf

    goto :goto_0

    :cond_0
    move v0, p1

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mDurationArray:[I

    aget v1, v1, v0

    return v1
.end method

.method public getmStepCountArraySingle(I)I
    .locals 2

    iget v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mBufferSize:I

    const/16 v1, 0xf

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mBufferIndex:I

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, p1

    if-lt v0, v1, :cond_1

    add-int/lit8 v0, v0, -0xf

    goto :goto_0

    :cond_0
    move v0, p1

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mStepCountArray:[I

    aget v1, v1, v0

    return v1
.end method

.method public getmStepTypeArraySingle(I)I
    .locals 2

    iget v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mBufferSize:I

    const/16 v1, 0xf

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mBufferIndex:I

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, p1

    if-lt v0, v1, :cond_1

    add-int/lit8 v0, v0, -0xf

    goto :goto_0

    :cond_0
    move v0, p1

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mStepTypeArray:[I

    aget v1, v1, v0

    return v1
.end method

.method public onTimeChanged()V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->erase()V

    return-void
.end method

.method public putSLMData(JIIDDI)V
    .locals 4

    iget v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mLastStepType:I

    if-eq v0, p3, :cond_1

    iget v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mBufferIndex:I

    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0xf

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mBufferIndex:I

    iget v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mBufferSize:I

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mBufferSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mBufferSize:I

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->resetAccumulatedStepInfo()V

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mTimeStampArray:[J

    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mBufferIndex:I

    aput-wide p1, v0, v1

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mStepTypeArray:[I

    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mBufferIndex:I

    iput p3, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mLastStepType:I

    aput p3, v0, v1

    iget v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mAccumulatedStepCount:I

    add-int/2addr v0, p4

    iput v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mAccumulatedStepCount:I

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mStepCountArray:[I

    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mBufferIndex:I

    iget v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mAccumulatedStepCount:I

    aput v2, v0, v1

    iget-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mAccumulatedDistance:D

    add-double/2addr v0, p5

    iput-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mAccumulatedDistance:D

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mDistanceArray:[D

    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mBufferIndex:I

    iget-wide v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mAccumulatedDistance:D

    aput-wide v2, v0, v1

    iget-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mAccumulatedCalorie:D

    add-double/2addr v0, p7

    iput-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mAccumulatedCalorie:D

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mCalorieArray:[D

    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mBufferIndex:I

    iget-wide v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mAccumulatedCalorie:D

    aput-wide v2, v0, v1

    iget v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mAccumulatedDuration:I

    add-int/2addr v0, p9

    iput v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mAccumulatedDuration:I

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mDurationArray:[I

    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mBufferIndex:I

    iget v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mAccumulatedDuration:I

    aput v2, v0, v1

    return-void
.end method

.method public resetAccumulatedStepInfo()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mAccumulatedStepCount:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mAccumulatedDistance:D

    iput-wide v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mAccumulatedCalorie:D

    iput v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mAccumulatedDuration:I

    return-void
.end method

.class public Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;
.super Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerProvider;
.source "ActivityTrackerBatchRunner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner$ActivityInfo;
    }
.end annotation


# static fields
.field private static CHECK_PERIOD:J = 0x0L

.field private static DEFAULT_ACTIVITY_RECORDING_PERIOD:I = 0x0

.field private static final DEFAULT_BATCHING_PERIOD:I = 0x4b0

.field private static final MSG_TIMER_EXPIRED:I = 0xfeed

.field private static final mBatchingPeriod:I = 0x4b0


# instance fields
.field private final mActivityHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory;

.field private mHandler:Landroid/os/Handler;

.field private mHistoryDataReq:Z

.field private final mListActivityInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner$ActivityInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mMutex:Ljava/util/concurrent/locks/Lock;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const v0, 0x1b7740

    sput v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->DEFAULT_ACTIVITY_RECORDING_PERIOD:I

    const-wide/16 v0, 0x4e20

    sput-wide v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->CHECK_PERIOD:J

    return-void
.end method

.method public constructor <init>(ILandroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V
    .locals 2

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerProvider;-><init>(ILandroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->mHistoryDataReq:Z

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->mMutex:Ljava/util/concurrent/locks/Lock;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->mListActivityInfo:Ljava/util/ArrayList;

    invoke-static {}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory;->getInstance()Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->mActivityHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory;

    invoke-direct {p0, p3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->createHandler(Landroid/os/Looper;)V

    return-void
.end method

.method static synthetic access$102(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->mHistoryDataReq:Z

    return p1
.end method

.method static synthetic access$200(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;)Ljava/util/concurrent/locks/Lock;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->mMutex:Ljava/util/concurrent/locks/Lock;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->sendHistoryData()V

    return-void
.end method

.method private createHandler(Landroid/os/Looper;)V
    .locals 1

    new-instance v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner$1;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner$1;-><init>(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private getMostActivity()I
    .locals 12

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->mListActivityInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    if-lez v0, :cond_4

    iget-object v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->mListActivityInfo:Ljava/util/ArrayList;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner$ActivityInfo;

    iget-wide v2, v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner$ActivityInfo;->duration:J

    sget-wide v4, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->CHECK_PERIOD:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->mListActivityInfo:Ljava/util/ArrayList;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner$ActivityInfo;

    iget v1, v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner$ActivityInfo;->activityType:I

    goto :goto_1

    :cond_0
    const-wide/16 v2, 0x0

    add-int/lit8 v4, v0, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    add-int/lit8 v7, v0, -0x1

    :goto_0
    const-wide/16 v8, 0x7530

    cmp-long v8, v2, v8

    if-gtz v8, :cond_3

    if-ltz v4, :cond_3

    iget-object v8, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->mListActivityInfo:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner$ActivityInfo;

    iget-wide v8, v8, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner$ActivityInfo;->duration:J

    const-wide/16 v10, 0xbb8

    cmp-long v8, v8, v10

    if-gez v8, :cond_1

    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_1
    iget-object v8, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->mListActivityInfo:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner$ActivityInfo;

    iget-wide v8, v8, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner$ActivityInfo;->duration:J

    long-to-float v8, v8

    int-to-float v9, v6

    div-float/2addr v8, v9

    cmpg-float v9, v5, v8

    if-gez v9, :cond_2

    move v5, v8

    move v7, v4

    add-int/lit8 v6, v6, 0x1

    :cond_2
    iget-object v9, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->mListActivityInfo:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner$ActivityInfo;

    iget-wide v9, v9, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner$ActivityInfo;->duration:J

    add-long/2addr v2, v9

    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_3
    iget-object v8, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->mListActivityInfo:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner$ActivityInfo;

    iget v1, v8, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner$ActivityInfo;->activityType:I

    :cond_4
    :goto_1
    return v1
.end method

.method private sendHistoryData()V
    .locals 11

    const-string/jumbo v0, "start"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->getContextValueNames()[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->mActivityHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory;

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory;->getBufferSize()I

    move-result v2

    if-nez v2, :cond_0

    const-string v3, "History Data Buffer is null!!"

    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    const-string v3, "end"

    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V

    return-void

    :cond_0
    new-array v3, v2, [I

    new-array v4, v2, [I

    new-array v5, v2, [J

    new-array v6, v2, [J

    const/4 v7, 0x0

    move v8, v7

    :goto_0
    if-ge v8, v2, :cond_1

    iget-object v9, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->mActivityHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory;

    invoke-virtual {v9, v8}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory;->getActivityType(I)I

    move-result v9

    aput v9, v3, v8

    iget-object v9, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->mActivityHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory;

    invoke-virtual {v9, v8}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory;->getActivityAccuracy(I)I

    move-result v9

    aput v9, v4, v8

    iget-object v9, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->mActivityHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory;

    invoke-virtual {v9, v8}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory;->getActivityDuration(I)J

    move-result-wide v9

    aput-wide v9, v5, v8

    iget-object v9, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->mActivityHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory;

    invoke-virtual {v9, v8}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory;->getActivityTimestamp(I)J

    move-result-wide v9

    aput-wide v9, v6, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v8

    aget-object v7, v1, v7

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->getModeType()B

    move-result v9

    int-to-short v9, v9

    invoke-virtual {v8, v7, v9}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;S)V

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v7

    const/4 v8, 0x2

    aget-object v8, v1, v8

    invoke-virtual {v7, v8, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v7

    const/4 v8, 0x3

    aget-object v8, v1, v8

    invoke-virtual {v7, v8, v3}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[I)V

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v7

    const/4 v8, 0x4

    aget-object v8, v1, v8

    invoke-virtual {v7, v8, v4}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[I)V

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v7

    const/4 v8, 0x5

    aget-object v8, v1, v8

    invoke-virtual {v7, v8, v5}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[J)V

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v7

    const/4 v8, 0x6

    aget-object v8, v1, v8

    invoke-direct {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->getMostActivity()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v7

    const/4 v8, 0x7

    aget-object v8, v1, v8

    invoke-virtual {v7, v8, v6}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[J)V

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v7

    const/16 v8, 0x8

    aget-object v8, v1, v8

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->notifyObserver()V

    const-string v7, "end"

    invoke-static {v7}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V

    return-void
.end method

.method private updateActivityInfo(J[I[J[II)V
    .locals 8

    const/4 v0, 0x0

    move-wide v1, p1

    move p1, v0

    :goto_0
    if-ge p1, p6, :cond_4

    aget p2, p3, p1

    if-eqz p2, :cond_3

    aget p2, p5, p1

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    iget-object p2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->mListActivityInfo:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-eqz p2, :cond_1

    aget v3, p3, p1

    iget-object v4, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->mListActivityInfo:Ljava/util/ArrayList;

    add-int/lit8 v5, p2, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner$ActivityInfo;

    iget v4, v4, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner$ActivityInfo;->activityType:I

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->mListActivityInfo:Ljava/util/ArrayList;

    add-int/lit8 v4, p2, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner$ActivityInfo;

    iget-wide v4, v3, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner$ActivityInfo;->duration:J

    aget-wide v6, p4, p1

    add-long/2addr v4, v6

    iput-wide v4, v3, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner$ActivityInfo;->duration:J

    goto :goto_1

    :cond_1
    new-instance v3, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner$ActivityInfo;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner$ActivityInfo;-><init>(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner$1;)V

    aget v4, p3, p1

    iput v4, v3, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner$ActivityInfo;->activityType:I

    iget v4, v3, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner$ActivityInfo;->activityType:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_2

    const/4 v4, 0x1

    iput v4, v3, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner$ActivityInfo;->activityType:I

    :cond_2
    aget-wide v4, p4, p1

    iput-wide v4, v3, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner$ActivityInfo;->duration:J

    aget v4, p5, p1

    iput v4, v3, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner$ActivityInfo;->accuracy:I

    iput-wide v1, v3, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner$ActivityInfo;->timestamp:J

    aget-wide v4, p4, p1

    add-long/2addr v1, v4

    iget-object v4, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->mListActivityInfo:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sget v3, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->DEFAULT_ACTIVITY_RECORDING_PERIOD:I

    int-to-long v3, v3

    sub-long/2addr p1, v3

    move v3, v0

    :goto_2
    iget-object v4, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->mListActivityInfo:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_6

    iget-object v4, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->mListActivityInfo:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner$ActivityInfo;

    iget-wide v4, v4, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner$ActivityInfo;->timestamp:J

    cmp-long v4, v4, p1

    if-ltz v4, :cond_5

    goto :goto_3

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_6
    :goto_3
    move v4, v0

    :goto_4
    if-ge v4, v3, :cond_7

    iget-object v5, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->mListActivityInfo:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_7
    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 2

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->mMutex:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->mListActivityInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->mActivityHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory;->erase()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->mMutex:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    nop

    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerProvider;->clear()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->mMutex:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public final disable()V
    .locals 2

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->mHistoryDataReq:Z

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->mHandler:Landroid/os/Handler;

    const v1, 0xfeed

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerProvider;->disable()V

    return-void
.end method

.method public final enable()V
    .locals 0

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerProvider;->enable()V

    return-void
.end method

.method protected final getBatchingPeriod()I
    .locals 1

    const/16 v0, 0x4b0

    return v0
.end method

.method public final getContextType()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_ACTIVITY_TRACKER_BATCH:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContextValueNames()[Ljava/lang/String;
    .locals 9

    const-string v0, "OperationMode"

    const-string v1, "TimeStamp"

    const-string v2, "Count"

    const-string v3, "ActivityType"

    const-string v4, "Accuracy"

    const-string v5, "Duration"

    const-string v6, "MostActivity"

    const-string v7, "TimeStampArray"

    const-string v8, "HistoryMode"

    filled-new-array/range {v0 .. v8}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getFaultDetectionResult()Landroid/os/Bundle;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->checkFaultDetectionResult()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerProvider;->getFaultDetectionResult()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method protected final getModeType()B
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method protected final getPowerObserver()Lcom/samsung/android/contextaware/manager/IApPowerObserver;
    .locals 0

    return-object p0
.end method

.method protected final getPowerResetObserver()Lcom/samsung/android/contextaware/manager/ISensorHubResetObserver;
    .locals 0

    return-object p0
.end method

.method protected final getTimeChangeObserver()Lcom/samsung/android/contextaware/utilbundle/ITimeChangeObserver;
    .locals 0

    return-object p0
.end method

.method public parse([BI)I
    .locals 30

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move/from16 v0, p2

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->getContextValueNames()[Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v1, "parse start"

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V

    array-length v1, v9

    sub-int/2addr v1, v0

    const/4 v11, 0x4

    sub-int/2addr v1, v11

    const/4 v2, -0x1

    if-gez v1, :cond_0

    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    return v2

    :cond_0
    new-array v12, v11, [B

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, v9, v0

    const/4 v13, 0x0

    aput-byte v0, v12, v13

    add-int/lit8 v0, v1, 0x1

    aget-byte v1, v9, v1

    const/4 v14, 0x1

    aput-byte v1, v12, v14

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, v9, v0

    const/4 v15, 0x2

    aput-byte v0, v12, v15

    add-int/lit8 v0, v1, 0x1

    aget-byte v1, v9, v1

    const/16 v16, 0x3

    aput-byte v1, v12, v16

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/CaTimeManager;->getInstance()Lcom/samsung/android/contextaware/utilbundle/CaTimeManager;

    move-result-object v1

    invoke-virtual {v8, v12}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->byteArrayToLong([B)J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lcom/samsung/android/contextaware/utilbundle/CaTimeManager;->getTimeStampForUTC(J)J

    move-result-wide v6

    array-length v1, v9

    sub-int/2addr v1, v0

    sub-int/2addr v1, v14

    if-gez v1, :cond_1

    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    return v2

    :cond_1
    add-int/lit8 v1, v0, 0x1

    aget-byte v5, v9, v0

    if-gtz v5, :cond_2

    sget-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_BATCH_DATA_COUNT:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    return v2

    :cond_2
    new-array v4, v5, [I

    new-array v3, v5, [I

    new-array v11, v5, [J

    move/from16 v23, v1

    move v0, v13

    :goto_0
    const/16 v24, 0x5

    if-ge v0, v5, :cond_4

    array-length v1, v9

    sub-int v1, v1, v23

    add-int/lit8 v1, v1, -0x5

    if-gez v1, :cond_3

    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    return v2

    :cond_3
    add-int/lit8 v1, v23, 0x1

    aget-byte v17, v9, v23

    aput v17, v4, v0

    add-int/lit8 v17, v1, 0x1

    aget-byte v1, v9, v1

    aput v1, v3, v0

    add-int/lit8 v1, v17, 0x1

    aget-byte v2, v9, v17

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    add-int/lit8 v17, v1, 0x1

    aget-byte v1, v9, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v2, v1

    add-int/lit8 v23, v17, 0x1

    aget-byte v1, v9, v17

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v2, v1

    int-to-long v1, v2

    aput-wide v1, v11, v0

    add-int/lit8 v0, v0, 0x1

    const/4 v2, -0x1

    goto :goto_0

    :cond_4
    iget-object v0, v8, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->mMutex:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    move-object v1, v8

    move-object/from16 v25, v3

    move-wide v2, v6

    move-object/from16 v26, v4

    move/from16 v27, v5

    move-object v5, v11

    move-wide/from16 v28, v6

    move-object/from16 v6, v25

    move/from16 v7, v27

    :try_start_0
    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->updateActivityInfo(J[I[J[II)V

    iget-object v0, v8, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->mActivityHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory;

    move-object/from16 v17, v0

    move-wide/from16 v18, v28

    move-object/from16 v20, v26

    move-object/from16 v21, v25

    move-object/from16 v22, v11

    invoke-virtual/range {v17 .. v22}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory;->putActivityData(J[I[I[J)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v0

    aget-object v1, v10, v13

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->getModeType()B

    move-result v2

    int-to-short v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;S)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v0

    aget-object v1, v10, v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    move-wide/from16 v2, v28

    :try_start_1
    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v0

    aget-object v1, v10, v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    move/from16 v4, v27

    :try_start_2
    invoke-virtual {v0, v1, v4}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v0

    aget-object v1, v10, v16
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object/from16 v5, v26

    :try_start_3
    invoke-virtual {v0, v1, v5}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[I)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v0

    const/4 v1, 0x4

    aget-object v1, v10, v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object/from16 v6, v25

    :try_start_4
    invoke-virtual {v0, v1, v6}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[I)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v0

    aget-object v1, v10, v24

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[J)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v0

    const/4 v1, 0x6

    aget-object v1, v10, v1

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->getMostActivity()I

    move-result v7

    invoke-virtual {v0, v1, v7}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->notifyObserver()V

    iget-boolean v0, v8, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->mHistoryDataReq:Z

    if-ne v0, v14, :cond_5

    iget-object v0, v8, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->mHandler:Landroid/os/Handler;

    const v1, 0xfeed

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iput-boolean v13, v8, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->mHistoryDataReq:Z

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->sendHistoryData()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_5
    iget-object v0, v8, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->mMutex:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    nop

    const-string/jumbo v0, "parse end"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V

    return v23

    :catchall_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object/from16 v6, v25

    goto :goto_1

    :catchall_2
    move-exception v0

    move-object/from16 v6, v25

    move-object/from16 v5, v26

    goto :goto_1

    :catchall_3
    move-exception v0

    move-object/from16 v6, v25

    move-object/from16 v5, v26

    move/from16 v4, v27

    goto :goto_1

    :catchall_4
    move-exception v0

    move-object/from16 v6, v25

    move-object/from16 v5, v26

    move/from16 v4, v27

    move-wide/from16 v2, v28

    :goto_1
    iget-object v1, v8, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->mMutex:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public final setPropertyValue(ILjava/lang/Object;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(ITE;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    const-string v1, "History Data"

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    const/4 v1, 0x2

    new-array v2, v1, [B

    const/4 v3, 0x0

    aput-byte v1, v2, v3

    const/4 v1, 0x1

    aput-byte v3, v2, v1

    const/16 v3, -0x48

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->getInstLibType()B

    move-result v4

    invoke-virtual {p0, v3, v4, v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->sendCmdToSensorHub(BB[B)V

    iget-object v3, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->mHandler:Landroid/os/Handler;

    const v4, 0xfeed

    const-wide/16 v5, 0x1f4

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iput-boolean v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->mHistoryDataReq:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.class public Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner;
.super Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;
.source "SLMonitorRunner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;
    }
.end annotation


# static fields
.field private static final DEFAULT_POWER_STEP_START_DURATION:I = 0x12c

.field private static final DEFAULT_STEP_LEVEL_TYPE:I = 0x4


# instance fields
.field private final _mutex:Ljava/util/concurrent/locks/Lock;

.field private mDuration:I

.field private final mSLMHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;

.field private mStepLevelType:I


# direct methods
.method public constructor <init>(ILandroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;-><init>(ILandroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V

    const/16 v0, 0x12c

    iput v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner;->mDuration:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner;->mStepLevelType:I

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner;->_mutex:Ljava/util/concurrent/locks/Lock;

    invoke-static {}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->getInstance()Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner;->mSLMHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;

    return-void
.end method

.method private display(Landroid/os/Bundle;)V
    .locals 17

    move-object/from16 v0, p1

    if-eqz v0, :cond_19

    invoke-virtual/range {p1 .. p1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_9

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "================= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner;->getContextType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ================="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "DataType"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_17

    const-string v5, "DataCount"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    const-string v6, "HistoryMode"

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "DT=["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "], "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "DC=["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "], "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-ne v6, v4, :cond_3

    const-string v8, "TimeStampArray"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v8

    const-string v9, "TS=["

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v9, v7

    :goto_0
    if-ge v9, v5, :cond_2

    aget-wide v10, v8, v9

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    add-int/lit8 v10, v5, -0x1

    if-eq v9, v10, :cond_1

    const-string v10, ","

    invoke-virtual {v1, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_2
    const-string v9, "], "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_3
    const-string v8, "TimeStamp"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "TS=["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, "], "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    const-string v8, "DataBundle"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v8

    if-nez v8, :cond_4

    return-void

    :cond_4
    const-string v9, "StepTypeArray"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v9

    const-string v10, "StepCountArray"

    invoke-virtual {v8, v10}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v10

    const-string v11, "DistanceArray"

    invoke-virtual {v8, v11}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v11

    const-string v12, "CalorieArray"

    invoke-virtual {v8, v12}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v12

    const-string v13, "DurationArray"

    invoke-virtual {v8, v13}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v13

    if-eqz v9, :cond_16

    if-eqz v10, :cond_16

    if-eqz v11, :cond_16

    if-eqz v12, :cond_16

    if-nez v13, :cond_5

    goto/16 :goto_7

    :cond_5
    const-string v14, "ST=["

    invoke-virtual {v1, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v14, v7

    :goto_2
    if-ge v14, v5, :cond_c

    aget v15, v9, v14

    const/4 v7, 0x5

    if-ne v15, v7, :cond_6

    const-string v7, "IN"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_6
    aget v7, v9, v14

    const/4 v15, 0x4

    if-ne v7, v15, :cond_7

    const-string v7, "PO"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_7
    aget v7, v9, v14

    const/4 v15, 0x3

    if-ne v7, v15, :cond_8

    const-string v7, "NO"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_8
    aget v7, v9, v14

    if-ne v7, v3, :cond_9

    const-string v7, "SE"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_9
    aget v7, v9, v14

    if-ne v7, v4, :cond_a

    const-string v7, "ST"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_a
    add-int/lit8 v7, v5, -0x1

    if-eq v14, v7, :cond_b

    const-string v7, ","

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_b
    add-int/lit8 v14, v14, 0x1

    const/4 v7, 0x0

    goto :goto_2

    :cond_c
    const-string v3, "], "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "SC=["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v5, :cond_e

    aget v7, v10, v3

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    add-int/lit8 v7, v5, -0x1

    if-eq v3, v7, :cond_d

    const-string v7, ","

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_d
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_e
    const-string v3, "], "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "DI=["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v3, 0x0

    :goto_4
    if-ge v3, v5, :cond_10

    aget-wide v14, v11, v3

    invoke-virtual {v1, v14, v15}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    add-int/lit8 v7, v5, -0x1

    if-eq v3, v7, :cond_f

    const-string v7, ","

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_f
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_10
    const-string v3, "], "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "CA=["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v3, 0x0

    :goto_5
    if-ge v3, v5, :cond_12

    aget-wide v14, v12, v3

    invoke-virtual {v1, v14, v15}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    add-int/lit8 v7, v5, -0x1

    if-eq v3, v7, :cond_11

    const-string v7, ","

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_11
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_12
    const-string v3, "], "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "DU=["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v16, 0x0

    :goto_6
    move/from16 v3, v16

    if-ge v3, v5, :cond_14

    aget v7, v13, v3

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    add-int/lit8 v7, v5, -0x1

    if-eq v3, v7, :cond_13

    const-string v7, ","

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_13
    add-int/lit8 v16, v3, 0x1

    goto :goto_6

    :cond_14
    const-string v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-ne v6, v4, :cond_15

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", HistoryMode=["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "], "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_15
    goto :goto_8

    :cond_16
    :goto_7
    return-void

    :cond_17
    if-ne v2, v3, :cond_18

    const-string v3, "ActiveTimeDuration"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DT=["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "], "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DU=["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_18
    :goto_8
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    return-void

    :cond_19
    :goto_9
    return-void
.end method

.method private sendHistorySLMBuffer()V
    .locals 14

    const-string/jumbo v0, "sendSLMHistoryData"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner;->getContextValueNames()[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner;->mSLMHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->getBufferSize()I

    move-result v2

    if-nez v2, :cond_0

    const-string v3, "History Data Buffer is null!"

    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    :cond_0
    const/4 v3, 0x1

    new-array v4, v2, [J

    new-array v5, v2, [I

    new-array v6, v2, [I

    new-array v7, v2, [D

    new-array v8, v2, [D

    new-array v9, v2, [I

    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v2, :cond_1

    iget-object v12, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner;->mSLMHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;

    invoke-virtual {v12, v11}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->getTimeStampSingle(I)J

    move-result-wide v12

    aput-wide v12, v4, v11

    iget-object v12, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner;->mSLMHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;

    invoke-virtual {v12, v11}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->getmStepTypeArraySingle(I)I

    move-result v12

    aput v12, v5, v11

    iget-object v12, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner;->mSLMHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;

    invoke-virtual {v12, v11}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->getmStepCountArraySingle(I)I

    move-result v12

    aput v12, v6, v11

    iget-object v12, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner;->mSLMHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;

    invoke-virtual {v12, v11}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->getmDistanceArraySingle(I)D

    move-result-wide v12

    aput-wide v12, v7, v11

    iget-object v12, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner;->mSLMHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;

    invoke-virtual {v12, v11}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->getmCalorieArraySingle(I)D

    move-result-wide v12

    aput-wide v12, v8, v11

    iget-object v12, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner;->mSLMHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;

    invoke-virtual {v12, v11}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->getmDurationArraySingle(I)I

    move-result v12

    aput v12, v9, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_1
    sget-object v11, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->StepType:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    invoke-static {v11}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;)I

    move-result v11

    aget-object v11, v1, v11

    invoke-virtual {v10, v11, v5}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    sget-object v11, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->StepCount:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    invoke-static {v11}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;)I

    move-result v11

    aget-object v11, v1, v11

    invoke-virtual {v10, v11, v6}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    sget-object v11, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->Distance:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    invoke-static {v11}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;)I

    move-result v11

    aget-object v11, v1, v11

    invoke-virtual {v10, v11, v7}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    sget-object v11, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->Calorie:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    invoke-static {v11}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;)I

    move-result v11

    aget-object v11, v1, v11

    invoke-virtual {v10, v11, v8}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    sget-object v11, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->Duration:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    invoke-static {v11}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;)I

    move-result v11

    aget-object v11, v1, v11

    invoke-virtual {v10, v11, v9}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v11

    sget-object v12, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->DataCount:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    invoke-static {v12}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;)I

    move-result v12

    aget-object v12, v1, v12

    invoke-virtual {v11, v12, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v11

    sget-object v12, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->TimeStampArray:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    invoke-static {v12}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;)I

    move-result v12

    aget-object v12, v1, v12

    invoke-virtual {v11, v12, v4}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[J)V

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v11

    sget-object v12, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->DataBundle:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    invoke-static {v12}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;)I

    move-result v12

    aget-object v12, v1, v12

    invoke-virtual {v11, v12, v10}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v11

    sget-object v12, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->DataType:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    invoke-static {v12}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;)I

    move-result v12

    aget-object v12, v1, v12

    invoke-virtual {v11, v12, v3}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v11

    sget-object v12, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->HistoryMode:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    invoke-static {v12}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;)I

    move-result v12

    aget-object v12, v1, v12

    const/4 v13, 0x1

    invoke-virtual {v11, v12, v13}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    sget-object v12, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->DataCount:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    invoke-static {v12}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;)I

    move-result v12

    aget-object v12, v1, v12

    invoke-virtual {v11, v12, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v12, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->TimeStampArray:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    invoke-static {v12}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;)I

    move-result v12

    aget-object v12, v1, v12

    invoke-virtual {v11, v12, v4}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    sget-object v12, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->DataBundle:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    invoke-static {v12}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;)I

    move-result v12

    aget-object v12, v1, v12

    invoke-virtual {v11, v12, v10}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    sget-object v12, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->DataType:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    invoke-static {v12}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;)I

    move-result v12

    aget-object v12, v1, v12

    invoke-virtual {v11, v12, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v12, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->HistoryMode:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    invoke-static {v12}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;)I

    move-result v12

    aget-object v12, v1, v12

    invoke-virtual {v11, v12, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-direct {p0, v11}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner;->display(Landroid/os/Bundle;)V

    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->notifyObserver()V

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 2

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner;->_mutex:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner;->mSLMHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->erase()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner;->_mutex:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    nop

    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->clear()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner;->_mutex:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public final disable()V
    .locals 0

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->disable()V

    return-void
.end method

.method protected display()V
    .locals 0

    return-void
.end method

.method public final enable()V
    .locals 0

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->enable()V

    return-void
.end method

.method public final getContextType()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_SL_MONITOR:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getContextValueNames()[Ljava/lang/String;
    .locals 12

    const-string v0, "DataType"

    const-string v1, "TimeStamp"

    const-string v2, "DataCount"

    const-string v3, "DataBundle"

    const-string v4, "StepTypeArray"

    const-string v5, "StepCountArray"

    const-string v6, "DistanceArray"

    const-string v7, "CalorieArray"

    const-string v8, "DurationArray"

    const-string v9, "ActiveTimeDuration"

    const-string v10, "TimeStampArray"

    const-string v11, "HistoryMode"

    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final getDataPacketToRegisterLib()[B
    .locals 8

    const/16 v0, 0x8

    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte v1, v0, v1

    iget v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner;->mStepLevelType:I

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v2

    aget-byte v2, v2, v1

    aput-byte v2, v0, v3

    iget v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner;->mDuration:I

    const/4 v4, 0x2

    invoke-static {v2, v4}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v2

    aget-byte v5, v2, v1

    aput-byte v5, v0, v4

    aget-byte v5, v2, v3

    const/4 v6, 0x3

    aput-byte v5, v0, v6

    const/4 v5, 0x4

    aput-byte v1, v0, v5

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentUtcTimeManager;->getInstance()Lcom/samsung/android/contextaware/utilbundle/CaCurrentUtcTimeManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentUtcTimeManager;->getUtcTime()[I

    move-result-object v5

    aget v6, v5, v1

    invoke-static {v6, v3}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v6

    aget-byte v6, v6, v1

    const/4 v7, 0x5

    aput-byte v6, v0, v7

    aget v6, v5, v3

    invoke-static {v6, v3}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v6

    aget-byte v6, v6, v1

    const/4 v7, 0x6

    aput-byte v6, v0, v7

    aget v4, v5, v4

    invoke-static {v4, v3}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v3

    aget-byte v1, v3, v1

    const/4 v3, 0x7

    aput-byte v1, v0, v3

    return-object v0
.end method

.method protected final getDataPacketToUnregisterLib()[B
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte v1, v0, v1

    return-object v0
.end method

.method public getFaultDetectionResult()Landroid/os/Bundle;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner;->checkFaultDetectionResult()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getFaultDetectionResult()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method protected final getInstLibType()B
    .locals 1

    const/16 v0, 0x2c

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

.method public final parse([BI)I
    .locals 53

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v0, p2

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner;->getContextValueNames()[Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "parse:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v5, p2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    array-length v4, v2

    sub-int/2addr v4, v0

    const/4 v6, 0x1

    sub-int/2addr v4, v6

    const/4 v7, -0x1

    if-gez v4, :cond_0

    sget-object v4, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    return v7

    :cond_0
    add-int/lit8 v4, v0, 0x1

    aget-byte v0, v2, v0

    move v8, v0

    if-ne v8, v6, :cond_7

    :try_start_0
    array-length v0, v2

    sub-int/2addr v0, v4

    sub-int/2addr v0, v6

    if-gez v0, :cond_1

    sget-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_8

    return v7

    :cond_1
    add-int/lit8 v9, v4, 0x1

    :try_start_1
    aget-byte v0, v2, v4

    move v4, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "dataSize:"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    if-gtz v4, :cond_2

    sget-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_DATA_FIELD_PARSING:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    return v7

    :cond_2
    array-length v0, v2

    sub-int/2addr v0, v9

    const/16 v10, 0xc

    mul-int v11, v10, v4

    const/4 v12, 0x4

    add-int/2addr v11, v12

    if-ge v0, v11, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "packet len:"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v6, v2

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " tmpNext:"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    return v7

    :cond_3
    const/16 v0, 0x8

    new-array v0, v0, [B

    const/4 v7, 0x0

    aput-byte v7, v0, v7

    aput-byte v7, v0, v6

    const/4 v11, 0x2

    aput-byte v7, v0, v11

    const/4 v13, 0x3

    aput-byte v7, v0, v13
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7

    add-int/lit8 v14, v9, 0x1

    :try_start_2
    aget-byte v9, v2, v9

    aput-byte v9, v0, v12
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6

    add-int/lit8 v9, v14, 0x1

    :try_start_3
    aget-byte v14, v2, v14

    const/4 v15, 0x5

    aput-byte v14, v0, v15
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_7

    const/4 v14, 0x6

    add-int/lit8 v16, v9, 0x1

    :try_start_4
    aget-byte v9, v2, v9

    aput-byte v9, v0, v14
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    const/4 v9, 0x7

    add-int/lit8 v14, v16, 0x1

    :try_start_5
    aget-byte v16, v2, v16

    aput-byte v16, v0, v9

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v21

    new-instance v0, Ljava/util/SimpleTimeZone;

    const-string v9, "GMT"

    invoke-direct {v0, v7, v9}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    move-object v9, v0

    const/16 v0, 0xb

    invoke-virtual {v9, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    move/from16 v23, v0

    invoke-virtual {v9, v10}, Ljava/util/Calendar;->get(I)I

    move-result v0

    move v10, v0

    const/16 v0, 0xd

    invoke-virtual {v9, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    move/from16 v24, v0

    const/16 v0, 0xe

    invoke-virtual {v9, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    move/from16 v25, v0

    move/from16 v15, v23

    mul-int/lit16 v0, v15, 0xe10

    mul-int/lit8 v16, v10, 0x3c

    add-int v0, v0, v16

    add-int v0, v0, v24

    mul-int/lit16 v0, v0, 0x3e8

    add-int v0, v0, v25

    move/from16 v26, v14

    int-to-long v13, v0

    :try_start_6
    invoke-virtual {v9}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v19

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/CaTimeManager;->getInstance()Lcom/samsung/android/contextaware/utilbundle/CaTimeManager;

    move-result-object v16

    move-wide/from16 v17, v13

    invoke-virtual/range {v16 .. v22}, Lcom/samsung/android/contextaware/utilbundle/CaTimeManager;->getTimeStampForUTC24(JJJ)J

    move-result-wide v16

    move-wide/from16 v27, v16

    new-array v0, v4, [I

    move-object/from16 v29, v0

    new-array v0, v4, [I

    move-object/from16 v30, v0

    new-array v0, v4, [D

    move-object/from16 v31, v0

    new-array v0, v4, [D

    move-object/from16 v32, v0

    new-array v0, v4, [I

    move-object/from16 v33, v0

    new-array v0, v4, [J

    move-object/from16 v16, v0

    move-wide/from16 v11, v27

    aput-wide v11, v16, v7

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    move-object/from16 v34, v0

    move v0, v7

    :goto_0
    move/from16 v35, v0

    move/from16 v6, v35

    if-ge v6, v4, :cond_6

    add-int/lit8 v17, v26, 0x1

    :try_start_7
    aget-byte v0, v2, v26

    move-object/from16 v7, v29

    aput v0, v7, v6

    const/4 v0, 0x4

    new-array v5, v0, [B

    const/4 v0, 0x0

    aput-byte v0, v5, v0

    const/16 v18, 0x1

    aput-byte v0, v5, v18
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    add-int/lit8 v18, v17, 0x1

    :try_start_8
    aget-byte v0, v2, v17

    const/16 v17, 0x2

    aput-byte v0, v5, v17
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    add-int/lit8 v17, v18, 0x1

    :try_start_9
    aget-byte v0, v2, v18

    const/16 v18, 0x3

    aput-byte v0, v5, v18

    invoke-static {v5}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    move-object/from16 v5, v30

    aput v0, v5, v6

    move-object/from16 v36, v9

    const/4 v0, 0x4

    new-array v9, v0, [B

    const/4 v0, 0x0

    aput-byte v0, v9, v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    add-int/lit8 v18, v17, 0x1

    :try_start_a
    aget-byte v0, v2, v17

    const/16 v17, 0x1

    aput-byte v0, v9, v17
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    add-int/lit8 v17, v18, 0x1

    :try_start_b
    aget-byte v0, v2, v18

    const/16 v18, 0x2

    aput-byte v0, v9, v18
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2

    add-int/lit8 v18, v17, 0x1

    :try_start_c
    aget-byte v0, v2, v17

    const/16 v17, 0x3

    aput-byte v0, v9, v17

    invoke-static {v9}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    move/from16 v37, v10

    int-to-double v9, v0

    const-wide/high16 v21, 0x4059000000000000L    # 100.0

    div-double v9, v9, v21

    move-wide/from16 v38, v13

    move-object/from16 v13, v31

    aput-wide v9, v13, v6

    const/4 v0, 0x4

    new-array v9, v0, [B

    const/4 v0, 0x0

    aput-byte v0, v9, v0

    const/4 v10, 0x1

    aput-byte v0, v9, v10
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1

    add-int/lit8 v10, v18, 0x1

    :try_start_d
    aget-byte v0, v2, v18

    const/4 v14, 0x2

    aput-byte v0, v9, v14
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0

    add-int/lit8 v14, v10, 0x1

    :try_start_e
    aget-byte v0, v2, v10

    const/4 v10, 0x3

    aput-byte v0, v9, v10

    invoke-static {v9}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    int-to-double v9, v0

    div-double v9, v9, v21

    move/from16 v40, v15

    move-object/from16 v15, v32

    aput-wide v9, v15, v6

    const/4 v0, 0x4

    new-array v9, v0, [B
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_6

    add-int/lit8 v10, v14, 0x1

    :try_start_f
    aget-byte v14, v2, v14

    const/16 v17, 0x0

    aput-byte v14, v9, v17
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_0

    add-int/lit8 v14, v10, 0x1

    :try_start_10
    aget-byte v10, v2, v10

    const/16 v18, 0x1

    aput-byte v10, v9, v18
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_6

    add-int/lit8 v10, v14, 0x1

    :try_start_11
    aget-byte v14, v2, v14

    const/16 v18, 0x2

    aput-byte v14, v9, v18
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_0

    add-int/lit8 v26, v10, 0x1

    :try_start_12
    aget-byte v10, v2, v10

    const/4 v14, 0x3

    aput-byte v10, v9, v14

    invoke-static {v9}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v9

    move-object/from16 v10, v33

    aput v9, v10, v6

    aget v9, v7, v6

    const/4 v0, 0x1

    if-lt v9, v0, :cond_5

    aget v9, v7, v6

    const/4 v0, 0x5

    if-gt v9, v0, :cond_5

    iget-object v9, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner;->_mutex:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v9}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_3

    :try_start_13
    iget-object v9, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner;->mSLMHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;

    aget-wide v42, v16, v6

    aget v44, v7, v6

    aget v45, v5, v6

    aget-wide v46, v13, v6

    aget-wide v48, v15, v6

    aget v50, v10, v6

    move-object/from16 v41, v9

    invoke-virtual/range {v41 .. v50}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->putSLMData(JIIDDI)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    :try_start_14
    iget-object v9, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner;->_mutex:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v9}, Ljava/util/concurrent/locks/Lock;->unlock()V

    nop

    add-int/lit8 v9, v4, -0x1

    if-ge v6, v9, :cond_4

    add-int/lit8 v35, v6, 0x1

    aget-wide v21, v16, v6

    aget v9, v10, v6

    move-object/from16 v51, v15

    int-to-long v14, v9

    add-long v21, v21, v14

    aput-wide v21, v16, v35

    goto :goto_1

    :cond_4
    move-object/from16 v51, v15

    :goto_1
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v30, v5

    move v0, v6

    move-object/from16 v29, v7

    move-object/from16 v33, v10

    move-object/from16 v31, v13

    move/from16 v7, v17

    move-object/from16 v9, v36

    move/from16 v10, v37

    move-wide/from16 v13, v38

    move/from16 v15, v40

    move-object/from16 v32, v51

    move/from16 v5, p2

    const/4 v6, 0x1

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    move-object/from16 v51, v15

    iget-object v9, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner;->_mutex:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v9}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_5
    move-object/from16 v51, v15

    new-instance v0, Ljava/lang/Exception;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Invalid stepType : "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v14, v7, v6

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v9}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    move/from16 v26, v10

    goto/16 :goto_3

    :catch_1
    move-exception v0

    move/from16 v26, v18

    goto/16 :goto_3

    :catch_2
    move-exception v0

    move/from16 v26, v17

    goto/16 :goto_3

    :cond_6
    move-object/from16 v36, v9

    move/from16 v37, v10

    move-wide/from16 v38, v13

    move/from16 v40, v15

    move-object/from16 v7, v29

    move-object/from16 v5, v30

    move-object/from16 v13, v31

    move-object/from16 v51, v32

    move-object/from16 v10, v33

    sget-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->StepType:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    invoke-static {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;)I

    move-result v0

    aget-object v0, v3, v0

    move-object/from16 v6, v34

    invoke-virtual {v6, v0, v7}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    sget-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->StepCount:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    invoke-static {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;)I

    move-result v0

    aget-object v0, v3, v0

    invoke-virtual {v6, v0, v5}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    sget-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->Distance:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    invoke-static {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;)I

    move-result v0

    aget-object v0, v3, v0

    invoke-virtual {v6, v0, v13}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    sget-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->Calorie:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    invoke-static {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;)I

    move-result v0

    aget-object v0, v3, v0

    move-object/from16 v9, v51

    invoke-virtual {v6, v0, v9}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    sget-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->Duration:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    invoke-static {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;)I

    move-result v0

    aget-object v0, v3, v0

    invoke-virtual {v6, v0, v10}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v0

    sget-object v14, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->DataCount:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    invoke-static {v14}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;)I

    move-result v14

    aget-object v14, v3, v14

    invoke-virtual {v0, v14, v4}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v0

    sget-object v14, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->Timestamp:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    invoke-static {v14}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;)I

    move-result v14

    aget-object v14, v3, v14

    invoke-virtual {v0, v14, v11, v12}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v0

    sget-object v14, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->DataBundle:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    invoke-static {v14}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;)I

    move-result v14

    aget-object v14, v3, v14

    invoke-virtual {v0, v14, v6}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v0

    sget-object v14, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->DataType:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    invoke-static {v14}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;)I

    move-result v14

    aget-object v14, v3, v14

    invoke-virtual {v0, v14, v8}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sget-object v14, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->DataCount:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    invoke-static {v14}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;)I

    move-result v14

    aget-object v14, v3, v14

    invoke-virtual {v0, v14, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v14, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->Timestamp:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    invoke-static {v14}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;)I

    move-result v14

    aget-object v14, v3, v14

    invoke-virtual {v0, v14, v11, v12}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    sget-object v14, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->DataBundle:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    invoke-static {v14}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;)I

    move-result v14

    aget-object v14, v3, v14

    invoke-virtual {v0, v14, v6}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    sget-object v14, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->DataType:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    invoke-static {v14}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;)I

    move-result v14

    aget-object v14, v3, v14

    invoke-virtual {v0, v14, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-direct {v1, v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner;->display(Landroid/os/Bundle;)V

    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->notifyObserver()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_3

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_3

    :catch_4
    move-exception v0

    move/from16 v26, v14

    goto :goto_3

    :catch_5
    move-exception v0

    move/from16 v26, v16

    goto :goto_3

    :catch_6
    move-exception v0

    move/from16 v26, v14

    goto :goto_3

    :catch_7
    move-exception v0

    move/from16 v26, v9

    goto :goto_3

    :catch_8
    move-exception v0

    move/from16 v26, v4

    goto :goto_3

    :cond_7
    :try_start_15
    sget-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_TYPE_VALUE:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_8

    move/from16 v26, v4

    :goto_2
    goto :goto_4

    :goto_3
    nop

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SLMonitor Runner Exception : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    :goto_4
    return v26
.end method

.method public final setPropertyValue(ILjava/lang/Object;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(ITE;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    const/16 v1, 0x3a

    if-ne p1, v1, :cond_0

    move-object v1, p2

    check-cast v1, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner;->mStepLevelType:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Step Level Type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner;->mStepLevelType:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/16 v1, 0x3b

    const/4 v2, 0x4

    if-ne p1, v1, :cond_1

    move-object v1, p2

    check-cast v1, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner;->mDuration:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Duration = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner;->mDuration:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    const/16 v1, 0x17

    const/16 v3, 0x2c

    iget v4, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner;->mDuration:I

    const/4 v5, 0x2

    invoke-static {v4, v5}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v4

    invoke-virtual {p0, v1, v3, v2, v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner;->sendPropertyValueToSensorHub(BBB[B)Z

    goto :goto_0

    :cond_1
    if-ne p1, v2, :cond_2

    const-string v1, "History Data"

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner;->_mutex:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner;->sendHistorySLMBuffer()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner;->_mutex:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner;->_mutex:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

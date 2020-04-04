.class public Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;
.super Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;
.source "PedometerRunner.java"


# static fields
.field private static final PDC_SF_LENGTH:I = 0x14


# instance fields
.field private final _mutex:Ljava/util/concurrent/locks/Lock;

.field private accumulativeCalorie:D

.field private accumulativeDistance:D

.field private accumulativeRunDownStepCount:J

.field private accumulativeRunStepCount:J

.field private accumulativeRunUpStepCount:J

.field private accumulativeTotalStepCount:J

.field private accumulativeUpDownStepCount:J

.field private accumulativeWalkDownStepCount:J

.field private accumulativeWalkStepCount:J

.field private accumulativeWalkUpStepCount:J

.field private final mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;


# direct methods
.method public constructor <init>(ILandroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V
    .locals 2

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;-><init>(ILandroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->_mutex:Ljava/util/concurrent/locks/Lock;

    invoke-static {}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->getInstance()Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    const-string v0, "PedometerRunner is created"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    return-void
.end method

.method private sendHistoryStepBuffer()V
    .locals 94

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextValueNames()[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    const-wide/16 v15, 0x0

    const-wide/16 v17, 0x0

    const-wide/16 v19, 0x0

    const-wide/16 v21, 0x0

    move-wide/from16 v23, v3

    iget-object v3, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->getBufferSize()I

    move-result v3

    if-nez v3, :cond_0

    const-string v4, "History Data Buffer is null!!"

    invoke-static {v4}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V

    :cond_0
    new-array v4, v3, [J

    move-wide/from16 v25, v5

    new-array v5, v3, [D

    new-array v6, v3, [D

    move-wide/from16 v27, v7

    new-array v7, v3, [D

    new-array v8, v3, [J

    move-wide/from16 v29, v9

    new-array v9, v3, [J

    new-array v10, v3, [J

    move-wide/from16 v31, v11

    new-array v11, v3, [J

    new-array v12, v3, [J

    move-wide/from16 v33, v13

    new-array v13, v3, [J

    new-array v14, v3, [J

    const/16 v35, 0x0

    move-object/from16 v36, v1

    move/from16 v37, v2

    move-object/from16 v38, v6

    move-object/from16 v39, v7

    move-object/from16 v40, v11

    move-object/from16 v41, v12

    move-wide/from16 v48, v15

    move-wide/from16 v50, v17

    move-wide/from16 v52, v19

    move-wide/from16 v1, v23

    move-wide/from16 v6, v25

    move-wide/from16 v11, v27

    move-wide/from16 v42, v29

    move-wide/from16 v46, v31

    move-wide/from16 v44, v33

    move/from16 v15, v35

    :goto_0
    if-ge v15, v3, :cond_1

    move/from16 v54, v3

    iget-object v3, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    invoke-virtual {v3, v15}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->getTimeStampSingle(I)J

    move-result-wide v16

    aput-wide v16, v4, v15

    iget-object v3, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    invoke-virtual {v3, v15}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->getTotalStepCountSingle(I)J

    move-result-wide v16

    aput-wide v16, v14, v15

    aget-wide v16, v14, v15

    add-long v1, v1, v16

    iget-object v3, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    invoke-virtual {v3, v15}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->getWalkStepCountSingle(I)J

    move-result-wide v16

    aput-wide v16, v8, v15

    aget-wide v16, v8, v15

    add-long v6, v6, v16

    iget-object v3, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    invoke-virtual {v3, v15}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->getRunStepCountSingle(I)J

    move-result-wide v16

    aput-wide v16, v9, v15

    aget-wide v16, v9, v15

    add-long v11, v11, v16

    iget-object v3, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    invoke-virtual {v3, v15}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->getWalkUpStepCountSingle(I)J

    move-result-wide v16

    aput-wide v16, v10, v15

    aget-wide v16, v10, v15

    move-object/from16 v55, v9

    move-object/from16 v56, v10

    move-wide/from16 v9, v42

    add-long v42, v9, v16

    iget-object v3, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    invoke-virtual {v3, v15}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->getRunUpStepCountSingle(I)J

    move-result-wide v9

    aput-wide v9, v41, v15

    aget-wide v9, v41, v15

    move-object/from16 v57, v4

    move-wide/from16 v3, v44

    add-long v44, v3, v9

    iget-object v3, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    invoke-virtual {v3, v15}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->getWalkDnStepCountSingle(I)J

    move-result-wide v3

    aput-wide v3, v40, v15

    aget-wide v3, v40, v15

    move-wide/from16 v9, v46

    add-long v46, v9, v3

    iget-object v3, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    invoke-virtual {v3, v15}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->getRunDnStepCountSingle(I)J

    move-result-wide v3

    aput-wide v3, v13, v15

    aget-wide v3, v13, v15

    move-wide/from16 v9, v48

    add-long v48, v9, v3

    iget-object v3, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    invoke-virtual {v3, v15}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->getDistanceArraySingle(I)D

    move-result-wide v3

    aput-wide v3, v5, v15

    aget-wide v3, v5, v15

    move-wide/from16 v9, v50

    add-double v50, v9, v3

    iget-object v3, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    invoke-virtual {v3, v15}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->getCalorieArraySingle(I)D

    move-result-wide v3

    aput-wide v3, v38, v15

    aget-wide v3, v38, v15

    move-wide/from16 v9, v52

    add-double v52, v9, v3

    iget-object v3, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    invoke-virtual {v3, v15}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->getSpeedArraySingle(I)D

    move-result-wide v3

    aput-wide v3, v39, v15

    aget-wide v3, v39, v15

    add-double v21, v21, v3

    add-int/lit8 v15, v15, 0x1

    move/from16 v3, v54

    move-object/from16 v9, v55

    move-object/from16 v10, v56

    move-object/from16 v4, v57

    goto/16 :goto_0

    :cond_1
    move-wide/from16 v59, v1

    move/from16 v54, v3

    move-object/from16 v57, v4

    move-object/from16 v55, v9

    move-object/from16 v56, v10

    move-object/from16 v58, v14

    move-wide/from16 v9, v42

    move-wide/from16 v3, v44

    move-wide/from16 v14, v46

    move-wide/from16 v1, v48

    move-wide/from16 v61, v50

    move-wide/from16 v63, v52

    add-long v42, v9, v14

    add-long v42, v42, v3

    move-wide/from16 v65, v3

    add-long v3, v42, v1

    if-lez v54, :cond_2

    move-wide/from16 v68, v1

    move-object/from16 v67, v13

    move/from16 v13, v54

    int-to-double v1, v13

    div-double v21, v21, v1

    :goto_1
    move-wide/from16 v1, v21

    goto :goto_2

    :cond_2
    move-wide/from16 v68, v1

    move-object/from16 v67, v13

    move/from16 v13, v54

    const-wide/16 v21, 0x0

    goto :goto_1

    :goto_2
    move-object/from16 v70, v8

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v8

    move-object/from16 v71, v5

    aget-object v5, v36, v35

    invoke-virtual {v8, v5, v6, v7}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/4 v8, 0x1

    aget-object v8, v36, v8

    move-wide/from16 v72, v6

    iget-wide v6, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkStepCount:J

    invoke-virtual {v5, v8, v6, v7}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/4 v6, 0x2

    aget-object v6, v36, v6

    invoke-virtual {v5, v6, v11, v12}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/4 v6, 0x3

    aget-object v6, v36, v6

    iget-wide v7, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunStepCount:J

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/4 v6, 0x4

    aget-object v6, v36, v6

    invoke-virtual {v5, v6, v3, v4}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/4 v6, 0x5

    aget-object v6, v36, v6

    iget-wide v7, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeUpDownStepCount:J

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/4 v6, 0x6

    aget-object v6, v36, v6

    move-wide/from16 v7, v59

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/4 v6, 0x7

    aget-object v6, v36, v6

    move-wide/from16 v74, v3

    iget-wide v3, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeTotalStepCount:J

    invoke-virtual {v5, v6, v3, v4}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v4, 0x8

    aget-object v4, v36, v4

    move-wide/from16 v5, v61

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v4, 0x9

    aget-object v4, v36, v4

    move-wide/from16 v76, v5

    iget-wide v5, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeDistance:D

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v4, 0xa

    aget-object v4, v36, v4

    invoke-virtual {v3, v4, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v4, 0xb

    aget-object v4, v36, v4

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v4, 0xc

    aget-object v4, v36, v4

    move-wide/from16 v5, v63

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v4, 0xd

    aget-object v4, v36, v4

    move-wide/from16 v78, v1

    iget-wide v1, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeCalorie:D

    invoke-virtual {v3, v4, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v1

    const/16 v2, 0xe

    aget-object v2, v36, v2

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v1

    const/16 v2, 0xf

    aget-object v2, v36, v2

    invoke-virtual {v1, v2, v9, v10}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v1

    const/16 v2, 0x10

    aget-object v2, v36, v2

    iget-wide v3, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkUpStepCount:J

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v1

    const/16 v2, 0x11

    aget-object v2, v36, v2

    invoke-virtual {v1, v2, v14, v15}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v1

    const/16 v2, 0x12

    aget-object v2, v36, v2

    iget-wide v3, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkDownStepCount:J

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v1

    const/16 v2, 0x13

    aget-object v2, v36, v2

    move-wide/from16 v3, v65

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v1

    const/16 v2, 0x14

    aget-object v2, v36, v2

    move-wide/from16 v80, v3

    iget-wide v3, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunUpStepCount:J

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v1

    const/16 v2, 0x15

    aget-object v2, v36, v2

    move-wide/from16 v3, v68

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v1

    const/16 v2, 0x16

    aget-object v2, v36, v2

    move-wide/from16 v82, v3

    iget-wide v3, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunDownStepCount:J

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v1

    const/16 v2, 0x17

    aget-object v2, v36, v2

    invoke-virtual {v1, v2, v13}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v1

    const/16 v2, 0x18

    aget-object v2, v36, v2

    move-object/from16 v3, v57

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[J)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v1

    const/16 v2, 0x19

    aget-object v2, v36, v2

    move-object/from16 v4, v71

    invoke-virtual {v1, v2, v4}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[D)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v1

    const/16 v2, 0x1a

    aget-object v2, v36, v2

    move-object/from16 v84, v3

    move-object/from16 v3, v38

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[D)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v1

    const/16 v2, 0x1b

    aget-object v2, v36, v2

    move-object/from16 v85, v3

    move-object/from16 v3, v39

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[D)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v1

    const/16 v2, 0x1c

    aget-object v2, v36, v2

    move-object/from16 v86, v3

    move-object/from16 v3, v70

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[J)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v1

    const/16 v2, 0x1d

    aget-object v2, v36, v2

    move-object/from16 v87, v3

    move-object/from16 v3, v55

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[J)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v1

    const/16 v2, 0x1e

    aget-object v2, v36, v2

    move-object/from16 v88, v3

    move-object/from16 v3, v56

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[J)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v1

    const/16 v2, 0x1f

    aget-object v2, v36, v2

    move-object/from16 v89, v3

    move-object/from16 v3, v40

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[J)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v1

    const/16 v2, 0x20

    aget-object v2, v36, v2

    move-object/from16 v90, v3

    move-object/from16 v3, v41

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[J)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v1

    const/16 v2, 0x21

    aget-object v2, v36, v2

    move-object/from16 v91, v3

    move-object/from16 v3, v67

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[J)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v1

    const/16 v2, 0x22

    aget-object v2, v36, v2

    move-object/from16 v92, v3

    move-object/from16 v3, v58

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[J)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v1

    const/16 v2, 0x23

    aget-object v2, v36, v2

    move-object/from16 v93, v3

    move/from16 v3, v37

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->notifyObserver()V

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 2

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->clear()V

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->_mutex:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    const-wide/16 v0, 0x0

    :try_start_0
    iput-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkStepCount:J

    iput-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkUpStepCount:J

    iput-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkDownStepCount:J

    iput-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunStepCount:J

    iput-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunUpStepCount:J

    iput-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunDownStepCount:J

    iput-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeUpDownStepCount:J

    iput-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeTotalStepCount:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeDistance:D

    iput-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeCalorie:D

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->erase()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->_mutex:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    nop

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->_mutex:Ljava/util/concurrent/locks/Lock;

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
    .locals 8

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextBean;->getContextBundleForDisplay()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_3

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "================= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ================="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v2, v6, v5}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    nop

    :goto_1
    move v5, v6

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v5, v6, :cond_3

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x61

    if-ge v6, v7, :cond_2

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_2
    add-int/lit8 v6, v5, 0x1

    goto :goto_1

    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "=["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0, v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getDisplayContents(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "], "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_4
    :goto_2
    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_5

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    return-void

    :cond_6
    :goto_3
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

    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_PEDOMETER:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getContextValueNames()[Ljava/lang/String;
    .locals 36

    const-string v0, "WalkStepCountDiff"

    const-string v1, "WalkStepCount"

    const-string v2, "RunStepCountDiff"

    const-string v3, "RunStepCount"

    const-string v4, "UpDownStepCountDiff"

    const-string v5, "UpDownStepCount"

    const-string v6, "TotalStepCountDiff"

    const-string v7, "TotalStepCount"

    const-string v8, "DistanceDiff"

    const-string v9, "Distance"

    const-string v10, "Speed"

    const-string v11, "StepStatus"

    const-string v12, "CalorieDiff"

    const-string v13, "Calorie"

    const-string v14, "WalkingFrequency"

    const-string v15, "WalkUpStepCountDiff"

    const-string v16, "WalkUpStepCount"

    const-string v17, "WalkDownStepCountDiff"

    const-string v18, "WalkDownStepCount"

    const-string v19, "RunUpStepCountDiff"

    const-string v20, "RunUpStepCount"

    const-string v21, "RunDownStepCountDiff"

    const-string v22, "RunDownStepCount"

    const-string v23, "LoggingCount"

    const-string v24, "TimeStampArray"

    const-string v25, "DistanceDiffArray"

    const-string v26, "CalorieDiffArray"

    const-string v27, "SpeedArray"

    const-string v28, "WalkStepCountDiffArray"

    const-string v29, "RunStepCountDiffArray"

    const-string v30, "WalkUpStepCountDiffArray"

    const-string v31, "WalkDownStepCountDiffArray"

    const-string v32, "RunUpStepCountDiffArray"

    const-string v33, "RunDownStepCountDiffArray"

    const-string v34, "TotalStepCountDiffArray"

    const-string v35, "PreviousStepBuffer"

    filled-new-array/range {v0 .. v35}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final getDataPacketToRegisterLib()[B
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [B

    invoke-static {}, Lcom/samsung/android/contextaware/manager/CaUserInfo;->getInstance()Lcom/samsung/android/contextaware/manager/CaUserInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/manager/CaUserInfo;->getUserHeight()D

    move-result-wide v1

    double-to-int v1, v1

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    invoke-static {}, Lcom/samsung/android/contextaware/manager/CaUserInfo;->getInstance()Lcom/samsung/android/contextaware/manager/CaUserInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/manager/CaUserInfo;->getUserWeight()D

    move-result-wide v1

    double-to-int v1, v1

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    invoke-static {}, Lcom/samsung/android/contextaware/manager/CaUserInfo;->getInstance()Lcom/samsung/android/contextaware/manager/CaUserInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/manager/CaUserInfo;->getUserGender()I

    move-result v1

    int-to-byte v1, v1

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    return-object v0
.end method

.method public getFaultDetectionResult()Landroid/os/Bundle;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->checkFaultDetectionResult()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getFaultDetectionResult()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method protected final getInitContextBundle()Landroid/os/Bundle;
    .locals 8

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextValueNames()[Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const/4 v2, 0x0

    aget-object v2, v0, v2

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const/4 v2, 0x2

    aget-object v2, v0, v2

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const/4 v2, 0x3

    aget-object v2, v0, v2

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const/4 v2, 0x4

    aget-object v2, v0, v2

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const/4 v2, 0x5

    aget-object v2, v0, v2

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const/4 v2, 0x6

    aget-object v2, v0, v2

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const/4 v2, 0x7

    aget-object v2, v0, v2

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const/16 v2, 0x8

    aget-object v2, v0, v2

    const-wide/16 v5, 0x0

    invoke-virtual {v1, v2, v5, v6}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const/16 v2, 0x9

    aget-object v2, v0, v2

    invoke-virtual {v1, v2, v5, v6}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const/16 v2, 0xa

    aget-object v2, v0, v2

    invoke-virtual {v1, v2, v5, v6}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const/16 v2, 0xb

    aget-object v2, v0, v2

    const/4 v7, -0x1

    invoke-virtual {v1, v2, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 v2, 0xc

    aget-object v2, v0, v2

    invoke-virtual {v1, v2, v5, v6}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const/16 v2, 0xd

    aget-object v2, v0, v2

    invoke-virtual {v1, v2, v5, v6}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const/16 v2, 0xe

    aget-object v2, v0, v2

    invoke-virtual {v1, v2, v5, v6}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const/16 v2, 0xf

    aget-object v2, v0, v2

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const/16 v2, 0x10

    aget-object v2, v0, v2

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const/16 v2, 0x11

    aget-object v2, v0, v2

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const/16 v2, 0x12

    aget-object v2, v0, v2

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const/16 v2, 0x13

    aget-object v2, v0, v2

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const/16 v2, 0x14

    aget-object v2, v0, v2

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const/16 v2, 0x15

    aget-object v2, v0, v2

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const/16 v2, 0x16

    aget-object v2, v0, v2

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-object v1
.end method

.method protected final getInstLibType()B
    .locals 1

    const/4 v0, 0x3

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

.method protected final notifyInitContext()V
    .locals 2

    invoke-static {}, Lcom/samsung/android/contextaware/manager/ListenerListManager;->getInstance()Lcom/samsung/android/contextaware/manager/ListenerListManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/contextaware/manager/ListenerListManager;->getUsedTotalCount(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->notifyInitContext()V

    :cond_0
    return-void
.end method

.method public parse([BI)I
    .locals 177

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "parse start:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    array-length v0, v2

    sub-int/2addr v0, v3

    const/4 v4, 0x1

    sub-int/2addr v0, v4

    const/4 v5, -0x1

    if-gez v0, :cond_0

    sget-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    return v5

    :cond_0
    iget-object v0, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->_mutex:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextValueNames()[Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_14

    add-int/lit8 v6, v3, 0x1

    :try_start_1
    aget-byte v3, v2, v3

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    const-wide/16 v15, 0x0

    const-wide/16 v17, 0x0

    const-wide/16 v19, 0x0

    const-wide/16 v21, 0x0

    const-wide/16 v23, 0x0

    const-wide/16 v25, 0x0

    new-instance v4, Ljava/util/SimpleTimeZone;

    const-string v5, "GMT"

    move-wide/from16 v28, v7

    const/4 v7, 0x0

    invoke-direct {v4, v7, v5}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    invoke-static {v4}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v4

    const/16 v5, 0xb

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v8

    const/16 v5, 0xc

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v30

    const/16 v5, 0xd

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v31

    const/16 v5, 0xe

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v32
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_13

    mul-int/lit16 v7, v8, 0xe10

    mul-int/lit8 v33, v30, 0x3c

    add-int v7, v7, v33

    add-int v7, v7, v31

    mul-int/lit16 v7, v7, 0x3e8

    add-int v7, v7, v32

    move/from16 v40, v6

    int-to-long v5, v7

    :try_start_2
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v36

    and-int/lit16 v7, v3, 0x80

    const/16 v41, 0x6

    move-object/from16 v42, v4

    const-wide/high16 v43, 0x4024000000000000L    # 10.0

    const-wide/high16 v45, 0x4059000000000000L    # 100.0

    const/16 v47, 0x10

    const/16 v48, 0x8

    if-nez v7, :cond_3

    array-length v7, v2

    sub-int v7, v7, v40

    const/16 v33, 0xe

    add-int/lit8 v7, v7, -0xe

    if-gez v7, :cond_1

    sget-object v4, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_12

    nop

    iget-object v4, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->_mutex:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const/4 v4, -0x1

    return v4

    :cond_1
    and-int/lit8 v3, v3, 0x7f

    :try_start_3
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v7

    const/16 v27, 0x0

    aget-object v4, v0, v27

    move/from16 v51, v8

    move-wide/from16 v49, v9

    int-to-long v8, v3

    invoke-virtual {v7, v4, v8, v9}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    int-to-long v7, v3

    iget-wide v9, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkStepCount:J

    move-wide/from16 v52, v11

    int-to-long v11, v3

    add-long/2addr v9, v11

    iput-wide v9, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkStepCount:J

    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v4

    const/4 v9, 0x1

    aget-object v10, v0, v9

    iget-wide v11, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkStepCount:J

    invoke-virtual {v4, v10, v11, v12}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_12

    add-int/lit8 v4, v40, 0x1

    :try_start_4
    aget-byte v9, v2, v40

    move v3, v9

    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v9

    const/4 v10, 0x2

    aget-object v10, v0, v10

    int-to-long v11, v3

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    int-to-long v9, v3

    iget-wide v11, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunStepCount:J

    move-wide/from16 v54, v13

    int-to-long v13, v3

    add-long/2addr v11, v13

    iput-wide v11, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunStepCount:J

    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v11

    const/4 v12, 0x3

    aget-object v12, v0, v12

    iget-wide v13, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunStepCount:J

    invoke-virtual {v11, v12, v13, v14}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_d

    add-int/lit8 v11, v4, 0x1

    :try_start_5
    aget-byte v4, v2, v4

    move v3, v4

    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v4

    const/4 v12, 0x4

    aget-object v12, v0, v12

    int-to-long v13, v3

    invoke-virtual {v4, v12, v13, v14}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    iget-wide v12, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeUpDownStepCount:J

    move-wide/from16 v56, v15

    int-to-long v14, v3

    add-long/2addr v12, v14

    iput-wide v12, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeUpDownStepCount:J

    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v4

    const/4 v12, 0x5

    aget-object v12, v0, v12

    iget-wide v13, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeUpDownStepCount:J

    invoke-virtual {v4, v12, v13, v14}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    add-int/lit8 v4, v11, 0x1

    :try_start_6
    aget-byte v11, v2, v11
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_d

    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v11, v11, 0x8

    add-int/lit8 v12, v4, 0x1

    :try_start_7
    aget-byte v4, v2, v4

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v11, v4

    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v3

    aget-object v4, v0, v41

    int-to-long v13, v11

    invoke-virtual {v3, v4, v13, v14}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    int-to-long v3, v11

    iget-wide v13, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeTotalStepCount:J

    move-wide/from16 v58, v5

    int-to-long v5, v11

    add-long/2addr v13, v5

    iput-wide v13, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeTotalStepCount:J

    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/4 v6, 0x7

    aget-object v6, v0, v6

    iget-wide v13, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeTotalStepCount:J

    invoke-virtual {v5, v6, v13, v14}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    add-int/lit8 v5, v12, 0x1

    :try_start_8
    aget-byte v6, v2, v12
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_11

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    add-int/lit8 v12, v5, 0x1

    :try_start_9
    aget-byte v5, v2, v5

    and-int/lit16 v5, v5, 0xff

    add-int/2addr v6, v5

    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    aget-object v11, v0, v48

    int-to-double v13, v6

    div-double v13, v13, v45

    invoke-virtual {v5, v11, v13, v14}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V

    int-to-double v13, v6

    div-double v13, v13, v45

    move-wide/from16 v60, v13

    iget-wide v13, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeDistance:D

    move-wide/from16 v62, v9

    int-to-double v9, v6

    div-double v9, v9, v45

    add-double/2addr v13, v9

    iput-wide v13, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeDistance:D

    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/16 v9, 0x9

    aget-object v9, v0, v9

    iget-wide v10, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeDistance:D

    invoke-virtual {v5, v9, v10, v11}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    add-int/lit8 v5, v12, 0x1

    :try_start_a
    aget-byte v9, v2, v12

    invoke-static {v9}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->getCompleteOfTwo(I)I

    move-result v9

    int-to-double v9, v9

    div-double v9, v9, v43

    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v11

    const/16 v12, 0xa

    aget-object v12, v0, v12

    invoke-virtual {v11, v12, v9, v10}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_11

    add-int/lit8 v11, v5, 0x1

    :try_start_b
    aget-byte v5, v2, v5

    move v6, v5

    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v12

    const/16 v13, 0xb

    aget-object v13, v0, v13

    invoke-virtual {v12, v13, v6}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    add-int/lit8 v12, v11, 0x1

    :try_start_c
    aget-byte v11, v2, v11

    invoke-static {v11}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->getCompleteOfTwo(I)I

    move-result v11

    int-to-double v13, v11

    div-double v13, v13, v45

    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v11

    const/16 v15, 0xc

    aget-object v15, v0, v15

    invoke-virtual {v11, v15, v13, v14}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V

    move/from16 v64, v5

    move/from16 v65, v6

    iget-wide v5, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeCalorie:D

    add-double/2addr v5, v13

    iput-wide v5, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeCalorie:D

    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/16 v6, 0xd

    aget-object v6, v0, v6

    move-wide/from16 v66, v9

    iget-wide v9, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeCalorie:D

    invoke-virtual {v5, v6, v9, v10}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    add-int/lit8 v5, v12, 0x1

    :try_start_d
    aget-byte v6, v2, v12

    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v9

    const/16 v10, 0xe

    aget-object v10, v0, v10

    int-to-double v11, v6

    div-double v11, v11, v43

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_11

    add-int/lit8 v9, v5, 0x1

    :try_start_e
    aget-byte v5, v2, v5

    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v6

    const/16 v10, 0xf

    aget-object v10, v0, v10

    int-to-long v11, v5

    invoke-virtual {v6, v10, v11, v12}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    int-to-long v10, v5

    move-wide/from16 v68, v13

    iget-wide v12, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkUpStepCount:J

    int-to-long v14, v5

    add-long/2addr v12, v14

    iput-wide v12, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkUpStepCount:J

    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v6

    aget-object v12, v0, v47

    iget-wide v13, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkUpStepCount:J

    invoke-virtual {v6, v12, v13, v14}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    add-int/lit8 v6, v9, 0x1

    :try_start_f
    aget-byte v9, v2, v9

    move v5, v9

    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v9

    const/16 v12, 0x11

    aget-object v12, v0, v12

    int-to-long v13, v5

    invoke-virtual {v9, v12, v13, v14}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    int-to-long v12, v5

    iget-wide v14, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkDownStepCount:J

    move-wide/from16 v70, v12

    int-to-long v12, v5

    add-long/2addr v14, v12

    iput-wide v14, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkDownStepCount:J

    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v9

    const/16 v12, 0x12

    aget-object v12, v0, v12

    iget-wide v13, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkDownStepCount:J

    invoke-virtual {v9, v12, v13, v14}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    add-int/lit8 v9, v6, 0x1

    :try_start_10
    aget-byte v6, v2, v6

    move v5, v6

    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v6

    const/16 v12, 0x13

    aget-object v12, v0, v12

    int-to-long v13, v5

    invoke-virtual {v6, v12, v13, v14}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    int-to-long v12, v5

    iget-wide v14, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunUpStepCount:J

    move-wide/from16 v72, v12

    int-to-long v12, v5

    add-long/2addr v14, v12

    iput-wide v14, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunUpStepCount:J

    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v6

    const/16 v12, 0x14

    aget-object v12, v0, v12

    iget-wide v13, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunUpStepCount:J

    invoke-virtual {v6, v12, v13, v14}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    add-int/lit8 v6, v9, 0x1

    :try_start_11
    aget-byte v9, v2, v9

    move v5, v9

    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v9

    const/16 v12, 0x15

    aget-object v12, v0, v12

    int-to-long v13, v5

    invoke-virtual {v9, v12, v13, v14}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    int-to-long v12, v5

    iget-wide v14, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunDownStepCount:J

    move-wide/from16 v74, v12

    int-to-long v12, v5

    add-long/2addr v14, v12

    iput-wide v14, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunDownStepCount:J

    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v9

    const/16 v12, 0x16

    aget-object v12, v0, v12

    iget-wide v13, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunDownStepCount:J

    invoke-virtual {v9, v12, v13, v14}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    const-wide/16 v12, 0x0

    cmp-long v9, v3, v12

    if-lez v9, :cond_2

    iget-object v9, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    const/4 v12, 0x1

    invoke-virtual {v9, v12}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->updateBufferIndex(I)V

    iget-object v9, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    invoke-virtual {v9, v3, v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->putTotalStepInfoSingle(J)V

    iget-object v9, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    invoke-virtual {v9, v7, v8}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->putWalkStepInfoSingle(J)V

    iget-object v9, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    move-wide/from16 v12, v62

    invoke-virtual {v9, v12, v13}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->putRunStepInfoSingle(J)V

    iget-object v9, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    invoke-virtual {v9, v10, v11}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->putWalkUpStepInfoSingle(J)V

    iget-object v9, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    move-wide/from16 v14, v72

    invoke-virtual {v9, v14, v15}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->putRunUpStepInfoSingle(J)V

    iget-object v9, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    move-wide/from16 v76, v3

    move-wide/from16 v3, v70

    invoke-virtual {v9, v3, v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->putWalkDnStepInfoSingle(J)V

    iget-object v9, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    move-wide/from16 v78, v3

    move-wide/from16 v3, v74

    invoke-virtual {v9, v3, v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->putRunDnStepInfoSingle(J)V

    iget-object v9, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    move-wide/from16 v80, v3

    move-wide/from16 v3, v60

    invoke-virtual {v9, v3, v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->putDistanceInfoSingle(D)V

    iget-object v9, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    move-wide/from16 v82, v3

    move-wide/from16 v3, v68

    invoke-virtual {v9, v3, v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->putCalorieInfoSingle(D)V

    iget-object v9, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    move-wide/from16 v84, v3

    move-wide/from16 v3, v66

    invoke-virtual {v9, v3, v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->putSpeedInfoSingle(D)V

    iget-object v9, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    move-wide/from16 v86, v3

    const/4 v3, 0x1

    invoke-virtual {v9, v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->setDataMode(I)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    goto :goto_0

    :cond_2
    move-wide/from16 v76, v3

    move-wide/from16 v82, v60

    move-wide/from16 v12, v62

    move-wide/from16 v86, v66

    move-wide/from16 v84, v68

    move-wide/from16 v78, v70

    move-wide/from16 v14, v72

    move-wide/from16 v80, v74

    :goto_0
    move-object/from16 v107, v0

    move v0, v5

    move v3, v6

    move-wide/from16 v169, v14

    move-wide/from16 v167, v76

    move-wide/from16 v171, v78

    move-wide/from16 v173, v82

    move-wide v14, v12

    move-wide/from16 v12, v80

    goto/16 :goto_4

    :catchall_0
    move-exception v0

    move/from16 v17, v6

    goto/16 :goto_5

    :catchall_1
    move-exception v0

    move/from16 v17, v9

    goto/16 :goto_5

    :catchall_2
    move-exception v0

    move/from16 v17, v12

    goto/16 :goto_5

    :catchall_3
    move-exception v0

    move/from16 v17, v11

    goto/16 :goto_5

    :cond_3
    move-wide/from16 v58, v5

    move/from16 v51, v8

    move-wide/from16 v49, v9

    move-wide/from16 v52, v11

    move-wide/from16 v54, v13

    move-wide/from16 v56, v15

    and-int/lit16 v4, v3, 0xc0

    shr-int/lit8 v4, v4, 0x6

    const/4 v5, 0x3

    if-ne v4, v5, :cond_8

    :try_start_12
    array-length v4, v2

    sub-int v4, v4, v40

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    if-gez v4, :cond_4

    sget-object v4, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_12

    nop

    iget-object v4, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->_mutex:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const/4 v4, -0x1

    return v4

    :cond_4
    add-int/lit8 v4, v40, 0x1

    :try_start_13
    aget-byte v5, v2, v40

    if-gtz v5, :cond_5

    sget-object v6, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_LOGGING_PACKAGE_SIZE:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v6}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_d

    nop

    iget-object v6, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->_mutex:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const/4 v6, -0x1

    return v6

    :cond_5
    :try_start_14
    new-array v6, v5, [J

    new-array v7, v5, [D

    new-array v8, v5, [D

    new-array v9, v5, [D

    new-array v10, v5, [J

    new-array v11, v5, [J

    new-array v12, v5, [J

    new-array v13, v5, [J

    new-array v14, v5, [J

    new-array v15, v5, [J

    move/from16 v88, v3

    new-array v3, v5, [J
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_d

    const/16 v16, -0x1

    move-wide/from16 v93, v17

    move-wide/from16 v95, v19

    move-wide/from16 v103, v21

    move-wide/from16 v105, v23

    move-wide/from16 v99, v28

    move-wide/from16 v97, v49

    move-wide/from16 v101, v52

    move-wide/from16 v89, v54

    move-wide/from16 v91, v56

    move/from16 v17, v4

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v5, :cond_7

    move-object/from16 v107, v0

    :try_start_15
    array-length v0, v2

    sub-int v0, v0, v17

    add-int/lit8 v0, v0, -0x14

    if-gez v0, :cond_6

    sget-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_b

    nop

    iget-object v0, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->_mutex:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const/4 v0, -0x1

    return v0

    :cond_6
    add-int/lit8 v18, v17, 0x1

    :try_start_16
    aget-byte v0, v2, v17
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_a

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v17, v18, 0x1

    move/from16 v108, v5

    :try_start_17
    aget-byte v5, v2, v18
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_b

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    add-int/2addr v0, v5

    add-int/lit8 v5, v17, 0x1

    :try_start_18
    aget-byte v1, v2, v17
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_9

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    add-int/lit8 v1, v5, 0x1

    :try_start_19
    aget-byte v5, v2, v5

    and-int/lit16 v5, v5, 0xff

    add-int/2addr v0, v5

    move-object/from16 v109, v14

    move-object/from16 v110, v15

    int-to-long v14, v0

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/CaTimeManager;->getInstance()Lcom/samsung/android/contextaware/utilbundle/CaTimeManager;

    move-result-object v33

    move-wide/from16 v34, v58

    move-wide/from16 v38, v14

    invoke-virtual/range {v33 .. v39}, Lcom/samsung/android/contextaware/utilbundle/CaTimeManager;->getTimeStampForUTC24(JJJ)J

    move-result-wide v17

    aput-wide v17, v6, v4
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_8

    add-int/lit8 v5, v1, 0x1

    :try_start_1a
    aget-byte v0, v2, v1
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_9

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, v5, 0x1

    :try_start_1b
    aget-byte v5, v2, v5

    and-int/lit16 v5, v5, 0xff

    add-int/2addr v0, v5

    move-wide/from16 v111, v14

    int-to-double v14, v0

    div-double v14, v14, v45

    aput-wide v14, v7, v4
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_8

    add-int/lit8 v5, v1, 0x1

    :try_start_1c
    aget-byte v1, v2, v1
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_9

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v14, v5, 0x1

    :try_start_1d
    aget-byte v5, v2, v5

    and-int/lit16 v5, v5, 0xff

    add-int v0, v1, v5

    move-object/from16 v113, v6

    int-to-double v5, v0

    div-double v5, v5, v45

    aput-wide v5, v8, v4
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_7

    add-int/lit8 v1, v14, 0x1

    :try_start_1e
    aget-byte v5, v2, v14

    invoke-static {v5}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->getCompleteOfTwo(I)I

    move-result v5

    int-to-long v5, v5

    aput-wide v5, v10, v4
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_8

    add-int/lit8 v5, v1, 0x1

    :try_start_1f
    aget-byte v1, v2, v1
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_9

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v6, v5, 0x1

    :try_start_20
    aget-byte v5, v2, v5

    and-int/lit16 v5, v5, 0xff

    add-int/2addr v1, v5

    int-to-long v14, v1

    aput-wide v14, v11, v4
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_6

    add-int/lit8 v1, v6, 0x1

    :try_start_21
    aget-byte v5, v2, v6

    invoke-static {v5}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->getCompleteOfTwo(I)I

    move-result v5

    int-to-long v5, v5

    aput-wide v5, v12, v4
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_8

    add-int/lit8 v5, v1, 0x1

    :try_start_22
    aget-byte v1, v2, v1

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->getCompleteOfTwo(I)I

    move-result v1

    int-to-long v14, v1

    aput-wide v14, v13, v4
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_9

    add-int/lit8 v1, v5, 0x1

    :try_start_23
    aget-byte v5, v2, v5
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_8

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    add-int/lit8 v6, v1, 0x1

    :try_start_24
    aget-byte v1, v2, v1

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v5, v1

    int-to-long v14, v5

    aput-wide v14, v109, v4
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_6

    add-int/lit8 v1, v6, 0x1

    :try_start_25
    aget-byte v5, v2, v6
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_8

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    add-int/lit8 v6, v1, 0x1

    :try_start_26
    aget-byte v1, v2, v1

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v5, v1

    int-to-long v14, v5

    aput-wide v14, v110, v4
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_6

    add-int/lit8 v1, v6, 0x1

    :try_start_27
    aget-byte v5, v2, v6

    invoke-static {v5}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->getCompleteOfTwo(I)I

    move-result v5

    int-to-double v5, v5

    div-double v5, v5, v43

    aput-wide v5, v9, v4
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_8

    add-int/lit8 v5, v1, 0x1

    :try_start_28
    aget-byte v1, v2, v1
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_9

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v17, v5, 0x1

    :try_start_29
    aget-byte v5, v2, v5

    and-int/lit16 v5, v5, 0xff

    add-int/2addr v1, v5

    int-to-long v5, v1

    aput-wide v5, v3, v4

    aget-wide v5, v7, v4

    move-wide/from16 v14, v103

    add-double v103, v14, v5

    aget-wide v5, v8, v4

    move-wide/from16 v14, v105

    add-double v105, v14, v5

    aget-wide v5, v9, v4

    add-double v25, v25, v5

    aget-wide v5, v3, v4

    move-wide/from16 v14, v99

    add-long v99, v14, v5

    aget-wide v5, v10, v4

    move-wide/from16 v14, v97

    add-long v97, v14, v5

    aget-wide v5, v11, v4

    move-wide/from16 v14, v101

    add-long v101, v14, v5

    aget-wide v5, v12, v4

    move-wide/from16 v14, v89

    add-long v89, v14, v5

    aget-wide v5, v13, v4

    move-wide/from16 v14, v91

    add-long v91, v14, v5

    aget-wide v5, v109, v4

    move-wide/from16 v14, v93

    add-long v93, v14, v5

    aget-wide v5, v110, v4
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_5

    move-wide/from16 v14, v95

    add-long v95, v14, v5

    move-object/from16 v15, p0

    :try_start_2a
    iget-object v1, v15, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    const/4 v5, 0x2

    invoke-virtual {v1, v5}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->updateBufferIndex(I)V

    iget-object v1, v15, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    aget-wide v5, v113, v4

    invoke-virtual {v1, v5, v6}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->putTimestamp(J)V

    iget-object v1, v15, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    aget-wide v5, v3, v4

    invoke-virtual {v1, v5, v6}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->putTotalStepInfo(J)V

    iget-object v1, v15, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    aget-wide v5, v10, v4

    invoke-virtual {v1, v5, v6}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->putWalkStepInfo(J)V

    iget-object v1, v15, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    aget-wide v5, v11, v4

    invoke-virtual {v1, v5, v6}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->putRunStepInfo(J)V

    iget-object v1, v15, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    aget-wide v5, v12, v4

    invoke-virtual {v1, v5, v6}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->putWalkUpStepInfo(J)V

    iget-object v1, v15, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    aget-wide v5, v109, v4

    invoke-virtual {v1, v5, v6}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->putRunUpStepInfo(J)V

    iget-object v1, v15, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    aget-wide v5, v13, v4

    invoke-virtual {v1, v5, v6}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->putWalkDnStepInfo(J)V

    iget-object v1, v15, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    aget-wide v5, v110, v4

    invoke-virtual {v1, v5, v6}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->putRunDnStepInfo(J)V

    iget-object v1, v15, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    aget-wide v5, v7, v4

    invoke-virtual {v1, v5, v6}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->putDistanceInfo(D)V

    iget-object v1, v15, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    aget-wide v5, v8, v4

    invoke-virtual {v1, v5, v6}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->putCalorieInfo(D)V

    iget-object v1, v15, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    aget-wide v5, v9, v4

    invoke-virtual {v1, v5, v6}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->putSpeedInfo(D)V

    iget-object v1, v15, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    const/4 v5, 0x2

    invoke-virtual {v1, v5}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->setDataMode(I)V
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_4

    add-int/lit8 v4, v4, 0x1

    move/from16 v88, v0

    move-object v1, v15

    move-object/from16 v0, v107

    move/from16 v5, v108

    move-object/from16 v14, v109

    move-object/from16 v15, v110

    move-object/from16 v6, v113

    goto/16 :goto_1

    :catchall_4
    move-exception v0

    move-object v1, v15

    goto/16 :goto_5

    :catchall_5
    move-exception v0

    goto :goto_2

    :catchall_6
    move-exception v0

    move/from16 v17, v6

    goto :goto_2

    :catchall_7
    move-exception v0

    move/from16 v17, v14

    goto :goto_2

    :catchall_8
    move-exception v0

    move/from16 v17, v1

    goto :goto_2

    :catchall_9
    move-exception v0

    move/from16 v17, v5

    :goto_2
    move-object/from16 v1, p0

    goto/16 :goto_5

    :catchall_a
    move-exception v0

    move/from16 v17, v18

    goto/16 :goto_5

    :catchall_b
    move-exception v0

    goto/16 :goto_5

    :cond_7
    move-object/from16 v107, v0

    move-object/from16 v114, v3

    move/from16 v108, v5

    move-object/from16 v113, v6

    move-object/from16 v121, v7

    move-object/from16 v119, v8

    move-object/from16 v120, v9

    move-object/from16 v117, v10

    move-object/from16 v118, v11

    move-object/from16 v115, v12

    move-object/from16 v116, v13

    move-object/from16 v109, v14

    move-object/from16 v110, v15

    move-wide/from16 v4, v89

    move-wide/from16 v2, v91

    move-wide/from16 v12, v93

    move-wide/from16 v10, v95

    move-wide/from16 v8, v97

    move-wide/from16 v6, v99

    move-wide/from16 v14, v101

    move-wide/from16 v122, v103

    move-wide/from16 v124, v105

    add-long v89, v4, v2

    add-long v89, v89, v12

    move-wide/from16 v126, v12

    add-long v12, v89, v10

    move-wide/from16 v128, v10

    move/from16 v0, v108

    int-to-double v10, v0

    div-double v10, v25, v10

    move/from16 v130, v0

    :try_start_2b
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v0

    move-wide/from16 v131, v2

    const/16 v18, 0x0

    aget-object v2, v107, v18

    invoke-virtual {v0, v2, v8, v9}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    iget-wide v2, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkStepCount:J

    add-long/2addr v2, v8

    iput-wide v2, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkStepCount:J

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v0

    const/4 v2, 0x1

    aget-object v2, v107, v2

    move-wide/from16 v133, v8

    iget-wide v8, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkStepCount:J

    invoke-virtual {v0, v2, v8, v9}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v0

    const/4 v2, 0x2

    aget-object v2, v107, v2

    invoke-virtual {v0, v2, v14, v15}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    iget-wide v2, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunStepCount:J

    add-long/2addr v2, v14

    iput-wide v2, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunStepCount:J

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v0

    const/4 v2, 0x3

    aget-object v2, v107, v2

    iget-wide v8, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunStepCount:J

    invoke-virtual {v0, v2, v8, v9}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v0

    const/4 v2, 0x4

    aget-object v2, v107, v2

    invoke-virtual {v0, v2, v12, v13}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    iget-wide v2, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeUpDownStepCount:J

    add-long/2addr v2, v12

    iput-wide v2, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeUpDownStepCount:J

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v0

    const/4 v2, 0x5

    aget-object v2, v107, v2

    iget-wide v8, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeUpDownStepCount:J

    invoke-virtual {v0, v2, v8, v9}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v0

    aget-object v2, v107, v41

    invoke-virtual {v0, v2, v6, v7}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    iget-wide v2, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeTotalStepCount:J

    add-long/2addr v2, v6

    iput-wide v2, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeTotalStepCount:J

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v0

    const/4 v2, 0x7

    aget-object v2, v107, v2

    iget-wide v8, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeTotalStepCount:J

    invoke-virtual {v0, v2, v8, v9}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v0

    aget-object v2, v107, v48

    move-wide/from16 v8, v122

    invoke-virtual {v0, v2, v8, v9}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V

    iget-wide v2, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeDistance:D

    add-double/2addr v2, v8

    iput-wide v2, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeDistance:D

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v0

    const/16 v2, 0x9

    aget-object v2, v107, v2

    move-wide/from16 v135, v6

    iget-wide v6, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeDistance:D

    invoke-virtual {v0, v2, v6, v7}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v0

    const/16 v2, 0xa

    aget-object v2, v107, v2

    invoke-virtual {v0, v2, v10, v11}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v0

    const/16 v2, 0xb

    aget-object v2, v107, v2

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v0

    const/16 v2, 0xc

    aget-object v2, v107, v2

    move-wide/from16 v6, v124

    invoke-virtual {v0, v2, v6, v7}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V

    iget-wide v2, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeCalorie:D

    add-double/2addr v2, v6

    iput-wide v2, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeCalorie:D

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v0

    const/16 v2, 0xd

    aget-object v2, v107, v2

    move-wide/from16 v137, v6

    iget-wide v6, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeCalorie:D

    invoke-virtual {v0, v2, v6, v7}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v0

    const/16 v2, 0xe

    aget-object v2, v107, v2

    const-wide/16 v6, 0x0

    invoke-virtual {v0, v2, v6, v7}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v0

    const/16 v2, 0xf

    aget-object v2, v107, v2

    invoke-virtual {v0, v2, v4, v5}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    iget-wide v2, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkUpStepCount:J

    add-long/2addr v2, v4

    iput-wide v2, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkUpStepCount:J

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v0

    aget-object v2, v107, v47

    iget-wide v6, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkUpStepCount:J

    invoke-virtual {v0, v2, v6, v7}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v0

    const/16 v2, 0x11

    aget-object v2, v107, v2

    move-wide/from16 v6, v131

    invoke-virtual {v0, v2, v6, v7}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    iget-wide v2, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkDownStepCount:J

    add-long/2addr v2, v6

    iput-wide v2, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkDownStepCount:J

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v0

    const/16 v2, 0x12

    aget-object v2, v107, v2

    move-wide/from16 v139, v4

    iget-wide v3, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkDownStepCount:J

    invoke-virtual {v0, v2, v3, v4}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v0

    const/16 v2, 0x13

    aget-object v2, v107, v2

    move-wide/from16 v3, v126

    invoke-virtual {v0, v2, v3, v4}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    move-wide/from16 v141, v6

    iget-wide v5, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunUpStepCount:J

    add-long/2addr v5, v3

    iput-wide v5, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunUpStepCount:J

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v0

    const/16 v2, 0x14

    aget-object v2, v107, v2

    iget-wide v5, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunUpStepCount:J

    invoke-virtual {v0, v2, v5, v6}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v0

    const/16 v2, 0x15

    aget-object v2, v107, v2

    move-wide/from16 v5, v128

    invoke-virtual {v0, v2, v5, v6}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    move-wide/from16 v143, v3

    iget-wide v2, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunDownStepCount:J

    add-long/2addr v2, v5

    iput-wide v2, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunDownStepCount:J

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v0

    const/16 v2, 0x16

    aget-object v2, v107, v2

    iget-wide v3, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunDownStepCount:J

    invoke-virtual {v0, v2, v3, v4}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v0

    const/16 v2, 0x17

    aget-object v2, v107, v2

    move/from16 v3, v130

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v0

    const/16 v2, 0x18

    aget-object v2, v107, v2

    move-object/from16 v4, v113

    invoke-virtual {v0, v2, v4}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[J)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v0

    const/16 v2, 0x19

    aget-object v2, v107, v2

    move-object/from16 v7, v121

    invoke-virtual {v0, v2, v7}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[D)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v0

    const/16 v2, 0x1a

    aget-object v2, v107, v2

    move/from16 v145, v3

    move-object/from16 v3, v119

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[D)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v0

    const/16 v2, 0x1b

    aget-object v2, v107, v2

    move-object/from16 v146, v3

    move-object/from16 v3, v120

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[D)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v0

    const/16 v2, 0x1c

    aget-object v2, v107, v2

    move-object/from16 v147, v3

    move-object/from16 v3, v117

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[J)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v0

    const/16 v2, 0x1d

    aget-object v2, v107, v2

    move-object/from16 v148, v3

    move-object/from16 v3, v118

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[J)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v0

    const/16 v2, 0x1e

    aget-object v2, v107, v2

    move-object/from16 v149, v3

    move-object/from16 v3, v115

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[J)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v0

    const/16 v2, 0x1f

    aget-object v2, v107, v2

    move-object/from16 v150, v3

    move-object/from16 v3, v116

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[J)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v0

    const/16 v2, 0x20

    aget-object v2, v107, v2

    move-object/from16 v151, v3

    move-object/from16 v3, v109

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[J)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v0

    const/16 v2, 0x21

    aget-object v2, v107, v2

    move-object/from16 v152, v3

    move-object/from16 v3, v110

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[J)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v0

    const/16 v2, 0x22

    aget-object v2, v107, v2

    move-object/from16 v153, v3

    move-object/from16 v3, v114

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[J)V
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_c

    nop

    move-wide v12, v5

    move-wide/from16 v173, v8

    move-wide/from16 v86, v10

    move/from16 v3, v17

    move/from16 v0, v88

    move-wide/from16 v7, v133

    move-wide/from16 v167, v135

    move-wide/from16 v84, v137

    move-wide/from16 v10, v139

    move-wide/from16 v171, v141

    move-wide/from16 v169, v143

    move-object/from16 v2, p1

    goto/16 :goto_4

    :catchall_c
    move-exception v0

    move-object/from16 v2, p1

    goto/16 :goto_5

    :catchall_d
    move-exception v0

    move/from16 v17, v4

    goto/16 :goto_5

    :cond_8
    move-object/from16 v107, v0

    move/from16 v88, v3

    move-object/from16 v2, p1

    :try_start_2c
    array-length v0, v2

    sub-int v0, v0, v40

    add-int/lit8 v0, v0, -0x20

    if-gez v0, :cond_9

    sget-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_12

    nop

    iget-object v0, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->_mutex:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const/4 v0, -0x1

    return v0

    :cond_9
    add-int/lit8 v3, v40, 0x1

    :try_start_2d
    aget-byte v0, v2, v40
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_14

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    add-int/lit8 v4, v3, 0x1

    :try_start_2e
    aget-byte v3, v2, v3
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_d

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    add-int/2addr v0, v3

    add-int/lit8 v3, v4, 0x1

    :try_start_2f
    aget-byte v4, v2, v4

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v0, v4

    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v5, v107, v5

    int-to-long v6, v0

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    int-to-long v7, v0

    iget-wide v4, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkStepCount:J

    int-to-long v9, v0

    add-long/2addr v4, v9

    iput-wide v4, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkStepCount:J

    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v6, v107, v5

    iget-wide v9, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkStepCount:J

    invoke-virtual {v4, v6, v9, v10}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_14

    add-int/lit8 v4, v3, 0x1

    :try_start_30
    aget-byte v3, v2, v3
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_d

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    add-int/lit8 v5, v4, 0x1

    :try_start_31
    aget-byte v4, v2, v4
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_11

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    add-int/2addr v3, v4

    add-int/lit8 v4, v5, 0x1

    :try_start_32
    aget-byte v5, v2, v5

    and-int/lit16 v5, v5, 0xff

    add-int/2addr v3, v5

    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v0

    const/4 v5, 0x2

    aget-object v5, v107, v5

    int-to-long v9, v3

    invoke-virtual {v0, v5, v9, v10}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    int-to-long v9, v3

    iget-wide v5, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunStepCount:J

    int-to-long v11, v3

    add-long/2addr v5, v11

    iput-wide v5, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunStepCount:J

    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v0

    const/4 v5, 0x3

    aget-object v5, v107, v5

    iget-wide v11, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunStepCount:J

    invoke-virtual {v0, v5, v11, v12}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_d

    add-int/lit8 v5, v4, 0x1

    :try_start_33
    aget-byte v0, v2, v4
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_11

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    add-int/lit8 v4, v5, 0x1

    :try_start_34
    aget-byte v5, v2, v5
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_d

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    add-int/2addr v0, v5

    add-int/lit8 v5, v4, 0x1

    :try_start_35
    aget-byte v4, v2, v4

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v0, v4

    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v3

    const/4 v4, 0x4

    aget-object v4, v107, v4

    int-to-long v11, v0

    invoke-virtual {v3, v4, v11, v12}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    iget-wide v3, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeUpDownStepCount:J

    int-to-long v11, v0

    add-long/2addr v3, v11

    iput-wide v3, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeUpDownStepCount:J

    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v3

    const/4 v4, 0x5

    aget-object v4, v107, v4

    iget-wide v11, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeUpDownStepCount:J

    invoke-virtual {v3, v4, v11, v12}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_11

    add-int/lit8 v3, v5, 0x1

    :try_start_36
    aget-byte v4, v2, v5
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_14

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    add-int/lit8 v5, v3, 0x1

    :try_start_37
    aget-byte v3, v2, v3
    :try_end_37
    .catchall {:try_start_37 .. :try_end_37} :catchall_11

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    add-int/2addr v4, v3

    add-int/lit8 v3, v5, 0x1

    :try_start_38
    aget-byte v5, v2, v5

    and-int/lit16 v5, v5, 0xff

    add-int/2addr v4, v5

    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v0

    aget-object v5, v107, v41

    int-to-long v11, v4

    invoke-virtual {v0, v5, v11, v12}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    int-to-long v5, v4

    iget-wide v11, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeTotalStepCount:J

    int-to-long v13, v4

    add-long/2addr v11, v13

    iput-wide v11, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeTotalStepCount:J

    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v0

    const/4 v11, 0x7

    aget-object v11, v107, v11

    iget-wide v12, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeTotalStepCount:J

    invoke-virtual {v0, v11, v12, v13}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V
    :try_end_38
    .catchall {:try_start_38 .. :try_end_38} :catchall_14

    add-int/lit8 v11, v3, 0x1

    :try_start_39
    aget-byte v0, v2, v3
    :try_end_39
    .catchall {:try_start_39 .. :try_end_39} :catchall_3

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    add-int/lit8 v3, v11, 0x1

    :try_start_3a
    aget-byte v11, v2, v11
    :try_end_3a
    .catchall {:try_start_3a .. :try_end_3a} :catchall_14

    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v11, v11, 0x8

    add-int/2addr v0, v11

    add-int/lit8 v11, v3, 0x1

    :try_start_3b
    aget-byte v3, v2, v3

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v0, v3

    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v3

    aget-object v4, v107, v48

    int-to-double v12, v0

    div-double v12, v12, v45

    invoke-virtual {v3, v4, v12, v13}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V

    int-to-double v3, v0

    div-double v13, v3, v45

    iget-wide v3, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeDistance:D

    move-wide/from16 v154, v13

    int-to-double v12, v0

    div-double v12, v12, v45

    add-double/2addr v3, v12

    iput-wide v3, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeDistance:D

    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v4, 0x9

    aget-object v4, v107, v4

    iget-wide v12, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeDistance:D

    invoke-virtual {v3, v4, v12, v13}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V
    :try_end_3b
    .catchall {:try_start_3b .. :try_end_3b} :catchall_3

    add-int/lit8 v3, v11, 0x1

    :try_start_3c
    aget-byte v4, v2, v11

    invoke-static {v4}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->getCompleteOfTwo(I)I

    move-result v4

    int-to-double v11, v4

    div-double v11, v11, v43

    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v4

    const/16 v13, 0xa

    aget-object v13, v107, v13

    invoke-virtual {v4, v13, v11, v12}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V
    :try_end_3c
    .catchall {:try_start_3c .. :try_end_3c} :catchall_14

    add-int/lit8 v4, v3, 0x1

    :try_start_3d
    aget-byte v3, v2, v3

    move v0, v3

    nop

    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v13

    const/16 v14, 0xb

    aget-object v14, v107, v14

    invoke-virtual {v13, v14, v3}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V
    :try_end_3d
    .catchall {:try_start_3d .. :try_end_3d} :catchall_d

    add-int/lit8 v13, v4, 0x1

    :try_start_3e
    aget-byte v4, v2, v4
    :try_end_3e
    .catchall {:try_start_3e .. :try_end_3e} :catchall_10

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    add-int/lit8 v14, v13, 0x1

    :try_start_3f
    aget-byte v13, v2, v13

    and-int/lit16 v13, v13, 0xff

    add-int/2addr v4, v13

    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v0

    const/16 v13, 0xc

    aget-object v13, v107, v13

    move-wide/from16 v156, v11

    int-to-double v11, v4

    div-double v11, v11, v43

    invoke-virtual {v0, v13, v11, v12}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V

    int-to-double v11, v4

    div-double v11, v11, v43

    move-wide/from16 v158, v11

    iget-wide v11, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeCalorie:D

    move-wide/from16 v160, v9

    int-to-double v9, v4

    div-double v9, v9, v43

    add-double/2addr v11, v9

    iput-wide v11, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeCalorie:D

    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v0

    const/16 v9, 0xd

    aget-object v9, v107, v9

    iget-wide v10, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeCalorie:D

    invoke-virtual {v0, v9, v10, v11}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V
    :try_end_3f
    .catchall {:try_start_3f .. :try_end_3f} :catchall_f

    add-int/lit8 v9, v14, 0x1

    :try_start_40
    aget-byte v0, v2, v14

    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v4

    const/16 v10, 0xe

    aget-object v10, v107, v10

    int-to-double v11, v0

    div-double v11, v11, v43

    invoke-virtual {v4, v10, v11, v12}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V
    :try_end_40
    .catchall {:try_start_40 .. :try_end_40} :catchall_1

    add-int/lit8 v4, v9, 0x1

    :try_start_41
    aget-byte v9, v2, v9
    :try_end_41
    .catchall {:try_start_41 .. :try_end_41} :catchall_d

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x10

    add-int/lit8 v10, v4, 0x1

    :try_start_42
    aget-byte v4, v2, v4
    :try_end_42
    .catchall {:try_start_42 .. :try_end_42} :catchall_e

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    add-int/2addr v9, v4

    add-int/lit8 v4, v10, 0x1

    :try_start_43
    aget-byte v10, v2, v10

    and-int/lit16 v10, v10, 0xff

    add-int/2addr v9, v10

    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v0

    const/16 v10, 0xf

    aget-object v10, v107, v10

    int-to-long v11, v9

    invoke-virtual {v0, v10, v11, v12}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    int-to-long v10, v9

    iget-wide v12, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkUpStepCount:J

    int-to-long v14, v9

    add-long/2addr v12, v14

    iput-wide v12, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkUpStepCount:J

    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v0

    aget-object v12, v107, v47

    iget-wide v13, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkUpStepCount:J

    invoke-virtual {v0, v12, v13, v14}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V
    :try_end_43
    .catchall {:try_start_43 .. :try_end_43} :catchall_d

    add-int/lit8 v12, v4, 0x1

    :try_start_44
    aget-byte v0, v2, v4
    :try_end_44
    .catchall {:try_start_44 .. :try_end_44} :catchall_2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    add-int/lit8 v4, v12, 0x1

    :try_start_45
    aget-byte v12, v2, v12
    :try_end_45
    .catchall {:try_start_45 .. :try_end_45} :catchall_d

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x8

    add-int/2addr v0, v12

    add-int/lit8 v12, v4, 0x1

    :try_start_46
    aget-byte v4, v2, v4

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v0, v4

    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v4

    const/16 v9, 0x11

    aget-object v9, v107, v9

    int-to-long v13, v0

    invoke-virtual {v4, v9, v13, v14}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    int-to-long v13, v0

    move/from16 v162, v3

    iget-wide v3, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkDownStepCount:J

    move-wide/from16 v163, v13

    int-to-long v13, v0

    add-long/2addr v3, v13

    iput-wide v3, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkDownStepCount:J

    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v4, 0x12

    aget-object v4, v107, v4

    iget-wide v13, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkDownStepCount:J

    invoke-virtual {v3, v4, v13, v14}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V
    :try_end_46
    .catchall {:try_start_46 .. :try_end_46} :catchall_2

    add-int/lit8 v3, v12, 0x1

    :try_start_47
    aget-byte v4, v2, v12
    :try_end_47
    .catchall {:try_start_47 .. :try_end_47} :catchall_14

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    add-int/lit8 v9, v3, 0x1

    :try_start_48
    aget-byte v3, v2, v3
    :try_end_48
    .catchall {:try_start_48 .. :try_end_48} :catchall_1

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    add-int/2addr v4, v3

    add-int/lit8 v3, v9, 0x1

    :try_start_49
    aget-byte v9, v2, v9

    and-int/lit16 v9, v9, 0xff

    add-int/2addr v4, v9

    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v0

    const/16 v9, 0x13

    aget-object v9, v107, v9

    int-to-long v12, v4

    invoke-virtual {v0, v9, v12, v13}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    int-to-long v12, v4

    iget-wide v14, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunUpStepCount:J

    move-wide/from16 v165, v12

    int-to-long v12, v4

    add-long/2addr v14, v12

    iput-wide v14, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunUpStepCount:J

    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v0

    const/16 v9, 0x14

    aget-object v9, v107, v9

    iget-wide v12, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunUpStepCount:J

    invoke-virtual {v0, v9, v12, v13}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V
    :try_end_49
    .catchall {:try_start_49 .. :try_end_49} :catchall_14

    add-int/lit8 v9, v3, 0x1

    :try_start_4a
    aget-byte v0, v2, v3
    :try_end_4a
    .catchall {:try_start_4a .. :try_end_4a} :catchall_1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    add-int/lit8 v3, v9, 0x1

    :try_start_4b
    aget-byte v9, v2, v9
    :try_end_4b
    .catchall {:try_start_4b .. :try_end_4b} :catchall_14

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x8

    add-int/2addr v0, v9

    add-int/lit8 v9, v3, 0x1

    :try_start_4c
    aget-byte v3, v2, v3

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v0, v3

    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v4, 0x15

    aget-object v4, v107, v4

    int-to-long v12, v0

    invoke-virtual {v3, v4, v12, v13}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    int-to-long v12, v0

    iget-wide v3, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunDownStepCount:J

    int-to-long v14, v0

    add-long/2addr v3, v14

    iput-wide v3, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunDownStepCount:J

    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v4, 0x16

    aget-object v4, v107, v4

    iget-wide v14, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunDownStepCount:J

    invoke-virtual {v3, v4, v14, v15}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    const-wide/16 v3, 0x0

    cmp-long v3, v5, v3

    if-lez v3, :cond_a

    iget-object v3, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->updateBufferIndex(I)V

    iget-object v3, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    invoke-virtual {v3, v5, v6}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->putTotalStepInfoSingle(J)V

    iget-object v3, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    invoke-virtual {v3, v7, v8}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->putWalkStepInfoSingle(J)V

    iget-object v3, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    move-wide/from16 v14, v160

    invoke-virtual {v3, v14, v15}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->putRunStepInfoSingle(J)V

    iget-object v3, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    invoke-virtual {v3, v10, v11}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->putWalkUpStepInfoSingle(J)V

    iget-object v3, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    move-wide/from16 v167, v5

    move-wide/from16 v4, v165

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->putRunUpStepInfoSingle(J)V

    iget-object v3, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    move-wide/from16 v169, v4

    move-wide/from16 v4, v163

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->putWalkDnStepInfoSingle(J)V

    iget-object v3, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    invoke-virtual {v3, v12, v13}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->putRunDnStepInfoSingle(J)V

    iget-object v3, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    move-wide/from16 v171, v4

    move-wide/from16 v4, v154

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->putDistanceInfoSingle(D)V

    iget-object v3, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    move-wide/from16 v173, v4

    move-wide/from16 v4, v158

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->putCalorieInfoSingle(D)V

    iget-object v3, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    move-wide/from16 v175, v4

    move-wide/from16 v4, v156

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->putSpeedInfoSingle(D)V

    iget-object v3, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->setDataMode(I)V
    :try_end_4c
    .catchall {:try_start_4c .. :try_end_4c} :catchall_1

    goto :goto_3

    :cond_a
    move-wide/from16 v167, v5

    move-wide/from16 v173, v154

    move-wide/from16 v4, v156

    move-wide/from16 v175, v158

    move-wide/from16 v14, v160

    move-wide/from16 v171, v163

    move-wide/from16 v169, v165

    :goto_3
    move-wide/from16 v86, v4

    move v3, v9

    move-wide/from16 v84, v175

    :goto_4
    :try_start_4d
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->notifyObserver()V
    :try_end_4d
    .catchall {:try_start_4d .. :try_end_4d} :catchall_14

    iget-object v0, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->_mutex:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    nop

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "parse end:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    return v3

    :catchall_e
    move-exception v0

    move/from16 v17, v10

    goto :goto_5

    :catchall_f
    move-exception v0

    move/from16 v17, v14

    goto :goto_5

    :catchall_10
    move-exception v0

    move/from16 v17, v13

    goto :goto_5

    :catchall_11
    move-exception v0

    move/from16 v17, v5

    goto :goto_5

    :catchall_12
    move-exception v0

    move/from16 v17, v40

    goto :goto_5

    :catchall_13
    move-exception v0

    move/from16 v40, v6

    move/from16 v17, v40

    goto :goto_5

    :catchall_14
    move-exception v0

    move/from16 v17, v3

    :goto_5
    iget-object v3, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->_mutex:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public final setPropertyValue(ILjava/lang/Object;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(ITE;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x1

    new-array v2, v1, [B

    const/4 v3, 0x0

    const/4 v4, 0x5

    if-ne p1, v4, :cond_0

    const-string v1, "Height"

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/contextaware/manager/CaUserInfo;->getInstance()Lcom/samsung/android/contextaware/manager/CaUserInfo;

    move-result-object v1

    move-object v4, p2

    check-cast v4, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    invoke-virtual {v4}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/samsung/android/contextaware/manager/CaUserInfo;->setUserHeight(D)V

    invoke-static {}, Lcom/samsung/android/contextaware/manager/CaUserInfo;->getInstance()Lcom/samsung/android/contextaware/manager/CaUserInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/manager/CaUserInfo;->getUserHeight()D

    move-result-wide v4

    double-to-int v1, v4

    int-to-byte v1, v1

    aput-byte v1, v2, v3

    const/16 v1, 0x12

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->sendCommonValueToSensorHub(B[B)Z

    move-result v0

    goto/16 :goto_1

    :cond_0
    const/4 v4, 0x4

    if-ne p1, v4, :cond_1

    const-string v1, "Weight"

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/contextaware/manager/CaUserInfo;->getInstance()Lcom/samsung/android/contextaware/manager/CaUserInfo;

    move-result-object v1

    move-object v4, p2

    check-cast v4, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    invoke-virtual {v4}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/samsung/android/contextaware/manager/CaUserInfo;->setUserWeight(D)V

    invoke-static {}, Lcom/samsung/android/contextaware/manager/CaUserInfo;->getInstance()Lcom/samsung/android/contextaware/manager/CaUserInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/manager/CaUserInfo;->getUserWeight()D

    move-result-wide v4

    double-to-int v1, v4

    int-to-byte v1, v1

    aput-byte v1, v2, v3

    const/16 v1, 0x13

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->sendCommonValueToSensorHub(B[B)Z

    move-result v0

    goto/16 :goto_1

    :cond_1
    const/4 v5, 0x6

    const/16 v6, 0x14

    if-ne p1, v5, :cond_2

    const-string v1, "Gender"

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/contextaware/manager/CaUserInfo;->getInstance()Lcom/samsung/android/contextaware/manager/CaUserInfo;

    move-result-object v1

    move-object v4, p2

    check-cast v4, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    invoke-virtual {v4}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/samsung/android/contextaware/manager/CaUserInfo;->setUserGender(I)V

    invoke-static {}, Lcom/samsung/android/contextaware/manager/CaUserInfo;->getInstance()Lcom/samsung/android/contextaware/manager/CaUserInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/manager/CaUserInfo;->getUserGender()I

    move-result v1

    int-to-byte v1, v1

    aput-byte v1, v2, v3

    invoke-virtual {p0, v6, v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->sendCommonValueToSensorHub(B[B)Z

    move-result v0

    goto/16 :goto_1

    :cond_2
    const/16 v5, 0x11

    if-ne p1, v5, :cond_3

    move-object v3, p2

    check-cast v3, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Delivery Count = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    const/16 v4, 0x15

    invoke-static {v3, v1}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v1

    invoke-virtual {p0, v4, v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->sendCommonValueToSensorHub(B[B)Z

    move-result v0

    goto :goto_1

    :cond_3
    const/16 v5, 0x75

    if-ne p1, v5, :cond_7

    const-string v5, "SF"

    invoke-static {v5}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    move-object v5, p2

    check-cast v5, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    invoke-virtual {v5}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [F

    if-nez v5, :cond_4

    sget-object v1, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_CONTEXT_NULL_EXCEPTION:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    return v3

    :cond_4
    array-length v7, v5

    if-eq v7, v6, :cond_5

    sget-object v1, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_PROPERTY_VALUE_FAULT:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    return v3

    :cond_5
    const/4 v7, 0x0

    const/16 v8, 0x50

    new-array v8, v8, [B

    move v9, v7

    move v7, v3

    :goto_0
    if-ge v7, v6, :cond_6

    aget v10, v5, v7

    const/high16 v11, 0x447a0000    # 1000.0f

    mul-float/2addr v10, v11

    float-to-int v10, v10

    invoke-static {v10, v4}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v10

    invoke-static {v10, v3, v8, v9, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v9, v9, 0x4

    goto :goto_0

    :cond_6
    const/16 v3, 0x17

    const/4 v4, 0x3

    invoke-virtual {p0, v3, v4, v1, v8}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->sendPropertyValueToSensorHub(BBB[B)Z

    goto :goto_1

    :cond_7
    const/4 v1, 0x2

    if-ne p1, v1, :cond_8

    const-string v1, "History Data"

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->_mutex:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->sendHistoryStepBuffer()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->_mutex:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_1

    :catchall_0
    move-exception v1

    iget-object v3, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->_mutex:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1

    :cond_8
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

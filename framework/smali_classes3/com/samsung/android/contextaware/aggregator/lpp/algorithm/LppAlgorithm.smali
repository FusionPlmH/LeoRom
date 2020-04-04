.class public Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;
.super Ljava/lang/Object;
.source "LppAlgorithm.java"


# instance fields
.field APDRMAXNUMBER:I

.field AlgoLocP:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

.field AlgoLocPP:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

.field AlgoLocPPP:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

.field Cnt_SameLocSet:J

.field CurrSetLoc:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

.field CurrentLoc:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

.field FilterdOldLoc:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

.field FilterdOlderLoc:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

.field Flag_FineLocAcquired:Z

.field Flag_First_loc:Z

.field Flag_Loc_init:Z

.field LastLMLoc:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

.field final MAX_MOVEMENT_SPEED_RUN:D

.field final MAX_MOVEMENT_SPEED_STATIONARY:D

.field final MAX_MOVEMENT_SPEED_VEHICLE:D

.field final MAX_MOVEMENT_SPEED_WALK:D

.field final MIN_MOVEMENT_DISTANCE:D

.field final MIN_UPDTAE_TIME:D

.field OldLoc:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

.field Origin_LLH:[D

.field final POS_SET_RADIUS:D

.field final POS_SET_TIME:D

.field PosKF:Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;

.field final Position_Jump_Sec_TH:D

.field Prev_StateTime:D

.field ProcessNoisePerSecondVehicle:[D

.field ProcessNoisePerSecondWalk:[D

.field final RST_LOC_VALID_CHK_NEWSET:I

.field final RST_LOC_VALID_CHK_NOUPDATE:I

.field final RST_LOC_VALID_CHK_STATIONARY:I

.field final STATE_STATIONARY:I

.field final STATE_UNKNWON:I

.field final STATE_VEHICLE:I

.field TAG:Ljava/lang/String;

.field final Trajectory_Time_Gap:J

.field final _DATAFROMAPDR:I

.field final _DATAFROMGPS:I

.field final _DATAFROMNETWORK:I

.field flag_AlgorithmOn:Z

.field lastStatus:I

.field lastTrajTime:J

.field public mAPDRResults:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;",
            ">;"
        }
    .end annotation
.end field

.field public mAPDRStack:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;",
            ">;"
        }
    .end annotation
.end field

.field mFlagIsGPSBatchMode:Z

.field mFlagLocInputReady:Z

.field mFlagStayingArea:Z

.field private final mInputPosBuf:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;",
            ">;"
        }
    .end annotation
.end field

.field private final mInputPosBufSync:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;",
            ">;"
        }
    .end annotation
.end field

.field mLPPLnr:Lcom/samsung/android/contextaware/aggregator/lpp/LppAlgoListener;

.field private final mLPPPosition:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;",
            ">;"
        }
    .end annotation
.end field

.field time_lastSent:J


# direct methods
.method public constructor <init>()V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "LppAlgorithm"

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->TAG:Ljava/lang/String;

    const-wide/high16 v0, 0x4034000000000000L    # 20.0

    iput-wide v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->MAX_MOVEMENT_SPEED_VEHICLE:D

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    iput-wide v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->MAX_MOVEMENT_SPEED_RUN:D

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    iput-wide v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->MAX_MOVEMENT_SPEED_WALK:D

    iput-wide v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->MAX_MOVEMENT_SPEED_STATIONARY:D

    iput-wide v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->MIN_MOVEMENT_DISTANCE:D

    const-wide v0, 0x40b3880000000000L    # 5000.0

    iput-wide v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->MIN_UPDTAE_TIME:D

    const-wide/16 v0, 0x14

    iput-wide v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Trajectory_Time_Gap:J

    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    iput-wide v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Position_Jump_Sec_TH:D

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mLPPLnr:Lcom/samsung/android/contextaware/aggregator/lpp/LppAlgoListener;

    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    invoke-direct {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->OldLoc:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    invoke-direct {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->CurrentLoc:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    invoke-direct {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->FilterdOldLoc:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    invoke-direct {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->FilterdOlderLoc:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    invoke-direct {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->CurrSetLoc:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->flag_AlgorithmOn:Z

    iput-boolean v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mFlagIsGPSBatchMode:Z

    iput-boolean v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mFlagStayingArea:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mFlagLocInputReady:Z

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mAPDRResults:Ljava/util/ArrayList;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mAPDRStack:Ljava/util/ArrayList;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mInputPosBuf:Ljava/util/ArrayList;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mInputPosBufSync:Ljava/util/ArrayList;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mLPPPosition:Ljava/util/ArrayList;

    iput v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->_DATAFROMAPDR:I

    iput v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->_DATAFROMGPS:I

    const/4 v4, 0x2

    iput v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->_DATAFROMNETWORK:I

    const-wide/high16 v5, 0x4014000000000000L    # 5.0

    iput-wide v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->POS_SET_RADIUS:D

    iput-wide v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->POS_SET_TIME:D

    iput v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->RST_LOC_VALID_CHK_NOUPDATE:I

    iput v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->RST_LOC_VALID_CHK_NEWSET:I

    iput v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->RST_LOC_VALID_CHK_STATIONARY:I

    const/16 v2, 0x1f4

    iput v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->APDRMAXNUMBER:I

    iput-boolean v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Flag_Loc_init:Z

    iput-boolean v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Flag_First_loc:Z

    iput-boolean v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Flag_FineLocAcquired:Z

    new-instance v2, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;

    const/4 v3, 0x3

    invoke-direct {v2, v3, v3}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;-><init>(II)V

    iput-object v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->PosKF:Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;

    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Cnt_SameLocSet:J

    iput v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->lastStatus:I

    iput v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->STATE_UNKNWON:I

    iput v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->STATE_STATIONARY:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->STATE_VEHICLE:I

    iput-wide v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->time_lastSent:J

    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    invoke-direct {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->AlgoLocP:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    invoke-direct {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->AlgoLocPP:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    invoke-direct {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->AlgoLocPPP:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    iput-wide v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->lastTrajTime:J

    new-array v0, v3, [D

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Origin_LLH:[D

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Prev_StateTime:D

    new-array v0, v3, [D

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->ProcessNoisePerSecondVehicle:[D

    new-array v0, v3, [D

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->ProcessNoisePerSecondWalk:[D

    return-void

    :array_0
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x4059000000000000L    # 100.0
    .end array-data

    :array_1
    .array-data 8
        0x4024000000000000L    # 10.0
        0x4024000000000000L    # 10.0
        0x3fe0000000000000L    # 0.5
    .end array-data

    :array_2
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3fe0000000000000L    # 0.5
    .end array-data
.end method

.method private LocValidCheck(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;Z)I
    .locals 21

    move-object/from16 v0, p0

    new-instance v1, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;

    invoke-direct {v1}, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;-><init>()V

    new-instance v2, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;

    invoke-direct {v2}, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;-><init>()V

    iget-object v3, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mAPDRResults:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;

    iget-wide v5, v1, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->utctime:J

    iget-wide v7, v4, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->utctime:J

    cmp-long v5, v5, v7

    if-gez v5, :cond_0

    iget-wide v5, v4, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->utctime:J

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getTime()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-gez v5, :cond_0

    invoke-virtual {v1, v4}, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->set(Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;)V

    :cond_0
    iget-wide v5, v2, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->utctime:J

    iget-wide v7, v4, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->utctime:J

    cmp-long v5, v5, v7

    if-gez v5, :cond_1

    iget-wide v5, v4, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->utctime:J

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getTime()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-gez v5, :cond_1

    invoke-virtual {v2, v4}, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->set(Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;)V

    :cond_1
    goto :goto_0

    :cond_2
    iget v3, v1, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->movingStatus:I

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    const/4 v6, 0x1

    const/4 v7, 0x2

    if-eq v3, v6, :cond_8

    iget v8, v2, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->movingStatus:I

    if-ne v8, v6, :cond_3

    goto :goto_3

    :cond_3
    if-eq v3, v7, :cond_7

    iget v8, v2, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->movingStatus:I

    if-ne v8, v7, :cond_4

    goto :goto_2

    :cond_4
    const/4 v8, 0x3

    if-eq v3, v8, :cond_6

    iget v9, v2, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->movingStatus:I

    if-ne v9, v8, :cond_5

    goto :goto_1

    :cond_5
    const-wide/high16 v4, 0x4034000000000000L    # 20.0

    goto :goto_5

    :cond_6
    :goto_1
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    goto :goto_5

    :cond_7
    :goto_2
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    goto :goto_5

    :cond_8
    :goto_3
    const/4 v8, 0x4

    if-eq v3, v8, :cond_a

    iget v9, v2, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->movingStatus:I

    if-ne v9, v8, :cond_9

    goto :goto_4

    :cond_9
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    goto :goto_5

    :cond_a
    :goto_4
    const-wide/high16 v4, 0x4034000000000000L    # 20.0

    :goto_5
    invoke-virtual/range {p1 .. p2}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->distanceTo(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;)D

    move-result-wide v8

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getTime()J

    move-result-wide v10

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getTime()J

    move-result-wide v12

    sub-long/2addr v10, v12

    long-to-double v10, v10

    const-wide v12, 0x3f50624dd2f1a9fcL    # 0.001

    mul-double/2addr v10, v12

    mul-double v12, v4, v10

    if-ne v3, v7, :cond_b

    iget v14, v2, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->movingStatus:I

    if-ne v14, v7, :cond_b

    iget v7, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->APDRMAXNUMBER:I

    int-to-double v14, v7

    const-wide v16, 0x3fe999999999999aL    # 0.8

    mul-double v14, v14, v16

    cmpl-double v7, v12, v14

    if-lez v7, :cond_b

    iget v7, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->APDRMAXNUMBER:I

    int-to-double v14, v7

    mul-double v12, v14, v16

    :cond_b
    const/4 v7, 0x0

    const-wide/16 v14, 0x0

    cmpl-double v14, v10, v14

    if-lez v14, :cond_12

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getLoc()Landroid/location/Location;

    move-result-object v14

    invoke-virtual {v14}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v14

    const-string v15, "gps"

    invoke-virtual {v14, v15}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v14

    if-nez v14, :cond_c

    const/4 v7, 0x1

    move-object/from16 v18, v1

    goto/16 :goto_9

    :cond_c
    cmpl-double v14, v8, v12

    if-lez v14, :cond_e

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getLoc()Landroid/location/Location;

    move-result-object v14

    invoke-virtual {v14}, Landroid/location/Location;->getAccuracy()F

    move-result v14

    const/high16 v15, 0x42480000    # 50.0f

    cmpl-float v14, v14, v15

    if-lez v14, :cond_e

    iget-object v6, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mAPDRResults:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v18, v1

    const-string v1, "Loc Rejection : apdr time - "

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v20, v6

    move/from16 v19, v7

    iget-wide v6, v14, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->utctime:J

    invoke-virtual {v15, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v14, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->movingStatus:I

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->SendStatus(Ljava/lang/String;)V

    nop

    move-object/from16 v1, v18

    move/from16 v7, v19

    move-object/from16 v6, v20

    goto :goto_6

    :cond_d
    move-object/from16 v18, v1

    move/from16 v19, v7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Loc Rejection : currStatus - "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " oldStatus: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v2, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->movingStatus:I

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->SendStatus(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Loc Rejection : timediff - "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v6, " MAX_VELOCITY: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->SendStatus(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Loc Rejection : dist - "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v6, " MaxDist: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->SendStatus(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Loc Rejection :Too long distance, eliminate pos "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getTime()J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " , dist: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v6, " MaxDist: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->SendStatus(Ljava/lang/String;)V

    const/4 v7, 0x0

    goto/16 :goto_8

    :cond_e
    move-object/from16 v18, v1

    move/from16 v19, v7

    const-wide/high16 v14, 0x4034000000000000L    # 20.0

    mul-double/2addr v14, v10

    const-wide/high16 v16, 0x4008000000000000L    # 3.0

    mul-double v14, v14, v16

    cmpl-double v1, v8, v14

    if-lez v1, :cond_10

    iget-object v1, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mAPDRResults:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Loc Rejection : apdr time - "

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v14, v6, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->utctime:J

    invoke-virtual {v7, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v14, " "

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v6, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->movingStatus:I

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->SendStatus(Ljava/lang/String;)V

    goto :goto_7

    :cond_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Loc Rejection : currStatus - "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " oldStatus: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v2, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->movingStatus:I

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->SendStatus(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Loc Rejection : timediff - "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v6, " MAX_VELOCITY: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->SendStatus(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Loc Rejection : dist - "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v6, " MaxDist: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->SendStatus(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Loc Rejection :Too long distance, eliminate pos "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getTime()J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " , dist: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v6, " MaxDist: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->SendStatus(Ljava/lang/String;)V

    const/4 v7, 0x0

    goto :goto_8

    :cond_10
    if-ne v3, v6, :cond_11

    const/4 v7, 0x2

    :goto_8
    goto :goto_9

    :cond_11
    const/4 v7, 0x1

    goto :goto_8

    :cond_12
    move-object/from16 v18, v1

    move/from16 v19, v7

    :goto_9
    return v7
.end method

.method private LppAlgorithmCheckAndRun(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;)V
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Flag_LocOK - loc time is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->SendStatus(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->OldLoc:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getLoc()Landroid/location/Location;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NOPROVIDER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->OldLoc:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    invoke-virtual {v0, p1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->set(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;)V

    :cond_0
    const/4 v0, 0x0

    iget-wide v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Cnt_SameLocSet:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Cnt_SameLocSet:J

    const-wide v1, 0x40c3880000000000L    # 10000.0

    iget-wide v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->lastTrajTime:J

    long-to-double v3, v3

    add-double/2addr v1, v3

    invoke-virtual {p1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getTime()J

    move-result-wide v3

    long-to-double v3, v3

    cmpg-double v1, v1, v3

    if-gez v1, :cond_1

    const/4 v0, 0x1

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Cnt_SameLocSet:J

    goto :goto_0

    :cond_1
    iget-wide v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Cnt_SameLocSet:J

    const-wide/16 v3, 0x2

    cmp-long v1, v1, v3

    if-lez v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    :goto_0
    if-eqz v0, :cond_9

    iget-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->CurrSetLoc:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    invoke-virtual {v1, p1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->set(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mAPDRResults:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;

    iget-wide v4, v3, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->utctime:J

    iget-object v6, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->OldLoc:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    invoke-virtual {v6}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getTime()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-gez v4, :cond_3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    goto :goto_1

    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Delete ApdrData num : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->SendStatus(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_5

    iget-object v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mAPDRResults:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    :cond_5
    iget-object v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mAPDRStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mAPDRResults:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;

    iget-wide v4, v3, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->utctime:J

    iget-object v6, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->CurrSetLoc:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    invoke-virtual {v6}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getTime()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-gez v4, :cond_6

    iget-object v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mAPDRStack:Ljava/util/ArrayList;

    new-instance v5, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;

    invoke-direct {v5, v3}, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;-><init>(Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    goto :goto_2

    :cond_7
    iget-boolean v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->flag_AlgorithmOn:Z

    if-eqz v2, :cond_8

    invoke-direct {p0}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->LppAlgorithmRun()V

    :cond_8
    const-string v2, "LppAlgorithmRun end"

    invoke-direct {p0, v2}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->SendStatus(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->OldLoc:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    iget-object v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->CurrSetLoc:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    invoke-virtual {v2, v3}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->set(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;)V

    :cond_9
    return-void
.end method

.method private LppAlgorithmRun()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->AlgoLocPPP:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    iget-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->AlgoLocPP:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    invoke-virtual {v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->set(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;)V

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->AlgoLocPP:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    iget-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->OldLoc:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    invoke-virtual {v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->set(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;)V

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->AlgoLocP:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    iget-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->CurrSetLoc:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    invoke-virtual {v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->set(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;)V

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->AlgoLocPPP:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getLoc()Landroid/location/Location;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NOPROVIDER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "LppAlgorithmRun - Initial update"

    invoke-direct {p0, v0}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->SendStatus(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->estimateSinglePoint()V

    invoke-direct {p0}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->makeTrajectory()V

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mLPPPosition:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    const-string v0, "ERROR: LppAlgorithmRun() unkwon error - [mLPPPosition.size() < 1]"

    invoke-direct {p0, v0}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->SendStatus(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mLPPLnr:Lcom/samsung/android/contextaware/aggregator/lpp/LppAlgoListener;

    iget-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mLPPPosition:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppAlgoListener;->onUpdateLPPtraj(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mLPPPosition:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private PositionFiltering(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;)Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    const/4 v9, 0x3

    new-array v10, v9, [D

    iget-object v1, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Origin_LLH:[D

    const/4 v11, 0x0

    aget-wide v2, v1, v11

    iget-object v1, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Origin_LLH:[D

    const/4 v12, 0x1

    aget-wide v4, v1, v12

    iget-object v1, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Origin_LLH:[D

    const/4 v13, 0x2

    aget-wide v6, v1, v13

    move-object v1, v8

    invoke-virtual/range {v1 .. v7}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->setOrigin(DDD)V

    invoke-virtual {v8}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getPosEastLocal()D

    move-result-wide v1

    aput-wide v1, v10, v11

    invoke-virtual {v8}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getPosNorthLocal()D

    move-result-wide v1

    aput-wide v1, v10, v12

    invoke-virtual {v8}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getPosUpLocal()D

    move-result-wide v1

    aput-wide v1, v10, v13

    aget-wide v1, v10, v11

    aget-wide v3, v10, v11

    mul-double/2addr v1, v3

    aget-wide v3, v10, v12

    aget-wide v5, v10, v12

    mul-double/2addr v3, v5

    add-double/2addr v1, v3

    aget-wide v3, v10, v13

    aget-wide v5, v10, v13

    mul-double/2addr v3, v5

    add-double v14, v1, v3

    const-wide v1, 0x41d502f900000000L    # 1.410065408E9

    cmpl-double v1, v14, v1

    if-lez v1, :cond_0

    iget-object v1, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Origin_LLH:[D

    invoke-virtual {v8}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getLatitude()D

    move-result-wide v2

    aput-wide v2, v1, v11

    iget-object v1, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Origin_LLH:[D

    invoke-virtual {v8}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getLongitude()D

    move-result-wide v2

    aput-wide v2, v1, v12

    iget-object v1, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Origin_LLH:[D

    invoke-virtual {v8}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getAltitude()D

    move-result-wide v2

    aput-wide v2, v1, v13

    iget-object v1, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Origin_LLH:[D

    aget-wide v2, v1, v11

    iget-object v1, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Origin_LLH:[D

    aget-wide v4, v1, v12

    iget-object v1, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Origin_LLH:[D

    aget-wide v6, v1, v13

    move-object v1, v8

    invoke-virtual/range {v1 .. v7}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->setOrigin(DDD)V

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->PositionFilteringInit()V

    new-array v1, v9, [D

    invoke-virtual {v8}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getPosEastLocal()D

    move-result-wide v2

    aput-wide v2, v1, v11

    invoke-virtual {v8}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getPosNorthLocal()D

    move-result-wide v2

    aput-wide v2, v1, v12

    invoke-virtual {v8}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getPosUpLocal()D

    move-result-wide v2

    aput-wide v2, v1, v13

    iget-object v2, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->PosKF:Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;

    invoke-virtual {v2, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->setInitialState([D)Z

    invoke-virtual {v8}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getTime()J

    move-result-wide v2

    long-to-double v2, v2

    iput-wide v2, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Prev_StateTime:D

    return-object v8

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Measurement: E : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getPosEastLocal()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, " N "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getPosNorthLocal()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, " U "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getPosNorthLocal()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->SendStatus(Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getTime()J

    move-result-wide v1

    long-to-double v1, v1

    iget-wide v3, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Prev_StateTime:D

    sub-double/2addr v1, v3

    const-wide v3, 0x3f50624dd2f1a9fcL    # 0.001

    mul-double/2addr v1, v3

    invoke-virtual {v8}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getTime()J

    move-result-wide v3

    long-to-double v3, v3

    iput-wide v3, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Prev_StateTime:D

    invoke-virtual {v8}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getMovingStatus()I

    move-result v3

    const-wide/16 v5, 0x0

    if-ne v3, v13, :cond_1

    new-array v3, v9, [[D

    new-array v7, v9, [D

    iget-object v4, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->ProcessNoisePerSecondWalk:[D

    aget-wide v17, v4, v11

    mul-double v17, v17, v1

    aput-wide v17, v7, v11

    aput-wide v5, v7, v12

    aput-wide v5, v7, v13

    aput-object v7, v3, v11

    new-array v4, v9, [D

    aput-wide v5, v4, v11

    iget-object v7, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->ProcessNoisePerSecondWalk:[D

    aget-wide v17, v7, v12

    mul-double v17, v17, v1

    aput-wide v17, v4, v12

    aput-wide v5, v4, v13

    aput-object v4, v3, v12

    new-array v4, v9, [D

    aput-wide v5, v4, v11

    aput-wide v5, v4, v12

    iget-object v7, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->ProcessNoisePerSecondWalk:[D

    aget-wide v17, v7, v13

    mul-double v17, v17, v1

    aput-wide v17, v4, v13

    aput-object v4, v3, v13

    iget-object v4, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->PosKF:Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;

    invoke-virtual {v4, v3}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->setProcessNoise([[D)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->TAG:Ljava/lang/String;

    const-string v5, "PositionFiltering - Process noise error"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    return-object v4

    :cond_1
    invoke-virtual {v8}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getMovingStatus()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_3

    new-array v3, v9, [[D

    new-array v4, v9, [D

    fill-array-data v4, :array_0

    aput-object v4, v3, v11

    new-array v4, v9, [D

    fill-array-data v4, :array_1

    aput-object v4, v3, v12

    new-array v4, v9, [D

    fill-array-data v4, :array_2

    aput-object v4, v3, v13

    iget-object v4, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->PosKF:Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;

    invoke-virtual {v4, v3}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->setProcessNoise([[D)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->TAG:Ljava/lang/String;

    const-string v5, "PositionFiltering - Process noise error"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    return-object v4

    :cond_2
    const/4 v4, 0x0

    iget-object v7, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->PosKF:Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;

    invoke-virtual {v7, v1, v2}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->TimePropagation(D)Z

    move-result v7

    if-nez v7, :cond_3

    iget-object v5, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->TAG:Ljava/lang/String;

    const-string v6, "PositionFiltering - TimePropagation error"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :cond_3
    new-array v3, v9, [[D

    new-array v4, v12, [D

    invoke-virtual {v8}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getPosEastLocal()D

    move-result-wide v17

    aput-wide v17, v4, v11

    aput-object v4, v3, v11

    new-array v4, v12, [D

    invoke-virtual {v8}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getPosNorthLocal()D

    move-result-wide v17

    aput-wide v17, v4, v11

    aput-object v4, v3, v12

    new-array v4, v12, [D

    invoke-virtual {v8}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getPosUpLocal()D

    move-result-wide v17

    aput-wide v17, v4, v11

    aput-object v4, v3, v13

    new-instance v4, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    invoke-direct {v4, v3}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;-><init>([[D)V

    invoke-virtual {v8}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getAccuracy()F

    move-result v7

    const/high16 v17, 0x42c80000    # 100.0f

    cmpg-float v7, v7, v17

    if-gez v7, :cond_5

    invoke-virtual {v8}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getLoc()Landroid/location/Location;

    move-result-object v7

    invoke-virtual {v7}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v13, "network"

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    new-array v7, v9, [[D

    new-array v13, v9, [D

    invoke-virtual {v8}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getAccuracy()F

    move-result v17

    const/high16 v18, 0x41a00000    # 20.0f

    div-float v17, v17, v18

    invoke-virtual {v8}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getAccuracy()F

    move-result v19

    div-float v19, v19, v18

    mul-float v9, v17, v19

    move-wide/from16 v20, v1

    float-to-double v1, v9

    aput-wide v1, v13, v11

    aput-wide v5, v13, v12

    const/4 v1, 0x2

    aput-wide v5, v13, v1

    aput-object v13, v7, v11

    const/4 v2, 0x3

    new-array v9, v2, [D

    aput-wide v5, v9, v11

    invoke-virtual {v8}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getAccuracy()F

    move-result v13

    div-float v13, v13, v18

    invoke-virtual {v8}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getAccuracy()F

    move-result v17

    div-float v17, v17, v18

    mul-float v13, v13, v17

    move-object/from16 v22, v3

    float-to-double v2, v13

    aput-wide v2, v9, v12

    aput-wide v5, v9, v1

    aput-object v9, v7, v12

    const/4 v2, 0x3

    new-array v3, v2, [D

    fill-array-data v3, :array_3

    aput-object v3, v7, v1

    move-object v1, v7

    iget-object v3, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->PosKF:Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;

    invoke-virtual {v3, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->setMeasurementNoise([[D)Z

    nop

    move-object/from16 v23, v10

    goto/16 :goto_0

    :cond_4
    move-wide/from16 v20, v1

    move-object/from16 v22, v3

    move v2, v9

    new-array v1, v2, [[D

    new-array v3, v2, [D

    invoke-virtual {v8}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getAccuracy()F

    move-result v7

    div-float v7, v7, v17

    invoke-virtual {v8}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getAccuracy()F

    move-result v9

    div-float v9, v9, v17

    mul-float/2addr v7, v9

    move-object/from16 v23, v10

    float-to-double v9, v7

    aput-wide v9, v3, v11

    aput-wide v5, v3, v12

    const/4 v7, 0x2

    aput-wide v5, v3, v7

    aput-object v3, v1, v11

    new-array v3, v2, [D

    aput-wide v5, v3, v11

    invoke-virtual {v8}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getAccuracy()F

    move-result v9

    div-float v9, v9, v17

    invoke-virtual {v8}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getAccuracy()F

    move-result v10

    div-float v10, v10, v17

    mul-float/2addr v9, v10

    float-to-double v9, v9

    aput-wide v9, v3, v12

    aput-wide v5, v3, v7

    aput-object v3, v1, v12

    new-array v3, v2, [D

    aput-wide v5, v3, v11

    aput-wide v5, v3, v12

    invoke-virtual {v8}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getAccuracy()F

    move-result v2

    const/high16 v5, 0x40a00000    # 5.0f

    mul-float/2addr v2, v5

    invoke-virtual {v8}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getAccuracy()F

    move-result v6

    mul-float/2addr v6, v5

    mul-float/2addr v2, v6

    float-to-double v5, v2

    const/4 v2, 0x2

    aput-wide v5, v3, v2

    aput-object v3, v1, v2

    iget-object v2, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->PosKF:Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;

    invoke-virtual {v2, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->setMeasurementNoise([[D)Z

    goto :goto_0

    :cond_5
    move-wide/from16 v20, v1

    move-object/from16 v22, v3

    move-object/from16 v23, v10

    const/4 v1, 0x3

    new-array v2, v1, [[D

    new-array v3, v1, [D

    invoke-virtual {v8}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getAccuracy()F

    move-result v7

    invoke-virtual {v8}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getAccuracy()F

    move-result v9

    mul-float/2addr v7, v9

    float-to-double v9, v7

    aput-wide v9, v3, v11

    aput-wide v5, v3, v12

    const/4 v7, 0x2

    aput-wide v5, v3, v7

    aput-object v3, v2, v11

    new-array v3, v1, [D

    aput-wide v5, v3, v11

    invoke-virtual {v8}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getAccuracy()F

    move-result v9

    invoke-virtual {v8}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getAccuracy()F

    move-result v10

    mul-float/2addr v9, v10

    float-to-double v9, v9

    aput-wide v9, v3, v12

    aput-wide v5, v3, v7

    aput-object v3, v2, v12

    new-array v3, v1, [D

    aput-wide v5, v3, v11

    aput-wide v5, v3, v12

    invoke-virtual {v8}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getAccuracy()F

    move-result v1

    const/high16 v5, 0x41200000    # 10.0f

    mul-float/2addr v1, v5

    invoke-virtual {v8}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getAccuracy()F

    move-result v6

    mul-float/2addr v6, v5

    mul-float/2addr v1, v6

    float-to-double v5, v1

    const/4 v1, 0x2

    aput-wide v5, v3, v1

    aput-object v3, v2, v1

    move-object v1, v2

    iget-object v2, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->PosKF:Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;

    invoke-virtual {v2, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->setMeasurementNoise([[D)Z

    :goto_0
    iget-object v1, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->PosKF:Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;

    invoke-virtual {v1, v4}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->MeasurementUpdate(Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->TAG:Ljava/lang/String;

    const-string v2, "PositionFiltering - MeasurementUpdate error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return-object v1

    :cond_6
    iget-object v1, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->PosKF:Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->getCurrentState()[D

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [D

    iget-object v3, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Origin_LLH:[D

    aget-wide v5, v3, v11

    const-wide v9, 0x4066800000000000L    # 180.0

    div-double/2addr v5, v9

    const-wide v16, 0x400921fafc8b007aL    # 3.141592

    mul-double v5, v5, v16

    aput-wide v5, v2, v11

    iget-object v3, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Origin_LLH:[D

    aget-wide v5, v3, v12

    div-double/2addr v5, v9

    mul-double v5, v5, v16

    aput-wide v5, v2, v12

    iget-object v3, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Origin_LLH:[D

    const/4 v5, 0x2

    aget-wide v6, v3, v5

    aput-wide v6, v2, v5

    invoke-static {v1, v2}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/CoordinateTransform;->enu2llh([D[D)[D

    move-result-object v3

    aget-wide v5, v3, v11

    div-double v5, v5, v16

    mul-double/2addr v5, v9

    invoke-virtual {v8, v5, v6}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->setLatitude(D)V

    aget-wide v5, v3, v12

    div-double v5, v5, v16

    mul-double/2addr v5, v9

    invoke-virtual {v8, v5, v6}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->setLongitude(D)V

    const/4 v5, 0x2

    aget-wide v5, v3, v5

    invoke-virtual {v8, v5, v6}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->setAltitude(D)V

    return-object v8

    nop

    nop

    :array_0
    .array-data 8
        0x406c200000000000L    # 225.0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 8
        0x406c200000000000L    # 225.0
        0x4059000000000000L    # 100.0
        0x0
    .end array-data

    :array_2
    .array-data 8
        0x0
        0x0
        0x4039000000000000L    # 25.0
    .end array-data

    :array_3
    .array-data 8
        0x0
        0x0
        0x4197d78400000000L    # 1.0E8
    .end array-data
.end method

.method private PositionFilteringInit()V
    .locals 10

    const-string v0, "PositionFilteringInit()"

    invoke-direct {p0, v0}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->SendStatus(Ljava/lang/String;)V

    const/4 v0, 0x3

    new-array v1, v0, [[D

    new-array v2, v0, [D

    fill-array-data v2, :array_0

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-array v2, v0, [D

    fill-array-data v2, :array_1

    const/4 v4, 0x1

    aput-object v2, v1, v4

    new-array v2, v0, [D

    fill-array-data v2, :array_2

    const/4 v5, 0x2

    aput-object v2, v1, v5

    iget-object v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->PosKF:Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;

    invoke-virtual {v2, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->setInitialCovariance([[D)Z

    new-array v2, v0, [[D

    new-array v6, v0, [D

    fill-array-data v6, :array_3

    aput-object v6, v2, v3

    new-array v6, v0, [D

    fill-array-data v6, :array_4

    aput-object v6, v2, v4

    new-array v6, v0, [D

    fill-array-data v6, :array_5

    aput-object v6, v2, v5

    iget-object v6, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->PosKF:Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;

    invoke-virtual {v6, v2}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->setMeasurementMatrix([[D)Z

    new-array v6, v0, [D

    fill-array-data v6, :array_6

    iget-object v7, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->PosKF:Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;

    invoke-virtual {v7, v6}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->setInitialState([D)Z

    new-array v7, v0, [[D

    new-array v8, v0, [D

    fill-array-data v8, :array_7

    aput-object v8, v7, v3

    new-array v8, v0, [D

    fill-array-data v8, :array_8

    aput-object v8, v7, v4

    new-array v8, v0, [D

    fill-array-data v8, :array_9

    aput-object v8, v7, v5

    iget-object v8, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->PosKF:Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;

    invoke-virtual {v8, v7}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->setMeasurementNoise([[D)Z

    new-array v8, v0, [[D

    new-array v9, v0, [D

    fill-array-data v9, :array_a

    aput-object v9, v8, v3

    new-array v3, v0, [D

    fill-array-data v3, :array_b

    aput-object v3, v8, v4

    new-array v0, v0, [D

    fill-array-data v0, :array_c

    aput-object v0, v8, v5

    move-object v0, v8

    iget-object v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->PosKF:Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;

    invoke-virtual {v3, v0}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->setProcessNoise([[D)Z

    iget-object v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->PosKF:Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;

    invoke-virtual {v3, v2}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->setTransitionMatrix([[D)Z

    return-void

    :array_0
    .array-data 8
        0x4059000000000000L    # 100.0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 8
        0x0
        0x4059000000000000L    # 100.0
        0x0
    .end array-data

    :array_2
    .array-data 8
        0x0
        0x0
        0x4059000000000000L    # 100.0
    .end array-data

    :array_3
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x0
        0x0
    .end array-data

    :array_4
    .array-data 8
        0x0
        0x3ff0000000000000L    # 1.0
        0x0
    .end array-data

    :array_5
    .array-data 8
        0x0
        0x0
        0x3ff0000000000000L    # 1.0
    .end array-data

    :array_6
    .array-data 8
        0x0
        0x0
        0x0
    .end array-data

    :array_7
    .array-data 8
        0x4030000000000000L    # 16.0
        0x0
        0x0
    .end array-data

    :array_8
    .array-data 8
        0x0
        0x4030000000000000L    # 16.0
        0x0
    .end array-data

    :array_9
    .array-data 8
        0x0
        0x0
        0x40c3880000000000L    # 10000.0
    .end array-data

    :array_a
    .array-data 8
        0x4069000000000000L    # 200.0
        0x0
        0x0
    .end array-data

    :array_b
    .array-data 8
        0x0
        0x4069000000000000L    # 200.0
        0x0
    .end array-data

    :array_c
    .array-data 8
        0x0
        0x0
        0x4000000000000000L    # 2.0
    .end array-data
.end method

.method private SendStatus(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mLPPLnr:Lcom/samsung/android/contextaware/aggregator/lpp/LppAlgoListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mLPPLnr:Lcom/samsung/android/contextaware/aggregator/lpp/LppAlgoListener;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LppAlgorithm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppAlgoListener;->status(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private SetTrajStartTime(J)J
    .locals 9

    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    invoke-virtual {v0, p1, p2}, Landroid/text/format/Time;->set(J)V

    iget v1, v0, Landroid/text/format/Time;->second:I

    int-to-long v1, v1

    iget v3, v0, Landroid/text/format/Time;->second:I

    int-to-long v3, v3

    const-wide/16 v5, 0x14

    div-long/2addr v3, v5

    const-wide/16 v7, 0x1

    sub-long/2addr v3, v7

    mul-long/2addr v3, v5

    sub-long/2addr v1, v3

    long-to-double v3, p1

    const-wide v5, 0x408f400000000000L    # 1000.0

    div-double/2addr v3, v5

    double-to-long v3, v3

    iget v5, v0, Landroid/text/format/Time;->second:I

    int-to-long v5, v5

    sub-long/2addr v3, v5

    add-long/2addr v3, v1

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    return-wide v3
.end method

.method private estimateSinglePoint()V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->AlgoLocPP:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getLoc()Landroid/location/Location;

    move-result-object v1

    invoke-virtual {v1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NOPROVIDER"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    iget-object v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->AlgoLocPP:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    invoke-direct {v1, v2}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;-><init>(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;)V

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->setMovingStatus(I)V

    invoke-direct {p0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->PositionFiltering(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;)Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->FilterdOlderLoc:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    iget-object v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->FilterdOldLoc:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    invoke-virtual {v1, v2}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->set(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;)V

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->FilterdOldLoc:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    iget-object v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->AlgoLocPP:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    invoke-virtual {v1, v2}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->set(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;)V

    goto :goto_0

    :cond_1
    const-string v1, "EstimateSinglePoint(), abnormal filter output - null"

    invoke-direct {p0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->SendStatus(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->FilterdOldLoc:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    iget-object v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->AlgoLocPP:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    invoke-virtual {v1, v2}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->set(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;)V

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->CurrentLoc:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    iget-object v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->AlgoLocP:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    invoke-virtual {v1, v2}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->set(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;)V

    iget-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->FilterdOldLoc:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    iget-object v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->FilterdOlderLoc:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    iget-object v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->CurrentLoc:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->estimateVelocity(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;)V

    return-void
.end method

.method private makeTrajectory()V
    .locals 79

    move-object/from16 v0, p0

    new-instance v1, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    iget-object v2, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->FilterdOlderLoc:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    invoke-direct {v1, v2}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;-><init>(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;)V

    new-instance v2, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    iget-object v3, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->FilterdOldLoc:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    invoke-direct {v2, v3}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;-><init>(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;)V

    iget-object v3, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Origin_LLH:[D

    const/4 v11, 0x0

    aget-wide v4, v3, v11

    iget-object v3, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Origin_LLH:[D

    const/4 v12, 0x1

    aget-wide v6, v3, v12

    iget-object v3, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Origin_LLH:[D

    const/4 v13, 0x2

    aget-wide v8, v3, v13

    move-object v3, v1

    invoke-virtual/range {v3 .. v9}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->setOrigin(DDD)V

    iget-object v3, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Origin_LLH:[D

    aget-wide v5, v3, v11

    iget-object v3, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Origin_LLH:[D

    aget-wide v7, v3, v12

    iget-object v3, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Origin_LLH:[D

    aget-wide v9, v3, v13

    move-object v4, v2

    invoke-virtual/range {v4 .. v10}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->setOrigin(DDD)V

    iget-wide v3, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->lastTrajTime:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    iget-object v3, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->FilterdOlderLoc:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getTime()J

    move-result-wide v3

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    const-string/jumbo v3, "makeTrajectory : No need to update"

    invoke-direct {v0, v3}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->SendStatus(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v3, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->FilterdOlderLoc:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getTime()J

    move-result-wide v3

    invoke-direct {v0, v3, v4}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->SetTrajStartTime(J)J

    move-result-wide v3

    iput-wide v3, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->lastTrajTime:J

    :cond_1
    invoke-virtual {v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getTime()J

    move-result-wide v3

    iget-wide v5, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->lastTrajTime:J

    sub-long/2addr v3, v5

    long-to-double v3, v3

    const-wide v5, 0x3f50624dd2f1a9fcL    # 0.001

    mul-double/2addr v3, v5

    const-wide/high16 v7, 0x4034000000000000L    # 20.0

    sub-double v3, v7, v3

    const/4 v9, 0x1

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getTime()J

    move-result-wide v14

    long-to-double v14, v14

    mul-double/2addr v14, v5

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getTime()J

    move-result-wide v7

    long-to-double v7, v7

    mul-double/2addr v7, v5

    sub-double v5, v7, v14

    const-wide v16, 0x3fc999999999999aL    # 0.2

    mul-double v5, v5, v16

    sub-double v16, v7, v14

    const-wide v18, 0x3fe999999999999aL    # 0.8

    mul-double v16, v16, v18

    sub-double v18, v7, v14

    const-wide/16 v20, 0x0

    cmpg-double v10, v18, v20

    if-gtz v10, :cond_2

    const-string v10, "WARNING: makeTrajectory - abnormal t1, t2"

    invoke-direct {v0, v10}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->SendStatus(Ljava/lang/String;)V

    const/4 v9, 0x0

    const-wide/16 v22, 0x0

    const-wide/16 v24, 0x0

    :goto_0
    goto :goto_1

    :cond_2
    const-wide v22, 0x4072c00000000000L    # 300.0

    cmpl-double v10, v18, v22

    if-lez v10, :cond_3

    const-string v10, "WARNING: makeTrajectory - too much gap between t1 and t2"

    invoke-direct {v0, v10}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->SendStatus(Ljava/lang/String;)V

    const/4 v9, 0x0

    const-wide/16 v22, 0x0

    const-wide/16 v24, 0x0

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getPosEastLocal()D

    move-result-wide v22

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getPosEastLocal()D

    move-result-wide v24

    sub-double v22, v22, v24

    sub-double v24, v7, v14

    div-double v22, v22, v24

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getPosNorthLocal()D

    move-result-wide v24

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getPosNorthLocal()D

    move-result-wide v26

    sub-double v24, v24, v26

    sub-double v26, v7, v14

    div-double v24, v24, v26

    :goto_1
    invoke-virtual {v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getFilteredVelocity()[D

    move-result-object v10

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getFilteredVelocity()[D

    move-result-object v26

    aget-wide v27, v10, v11

    cmpl-double v27, v27, v20

    if-nez v27, :cond_4

    aget-wide v27, v10, v12

    cmpl-double v27, v27, v20

    if-eqz v27, :cond_5

    :cond_4
    aget-wide v27, v26, v11

    cmpl-double v27, v27, v20

    if-nez v27, :cond_6

    aget-wide v27, v26, v12

    cmpl-double v27, v27, v20

    if-nez v27, :cond_6

    :cond_5
    const/4 v9, 0x0

    :cond_6
    const-wide v27, 0x408f400000000000L    # 1000.0

    if-eqz v9, :cond_8

    mul-double v20, v22, v22

    mul-double v29, v24, v24

    move-wide/from16 v32, v14

    add-double v13, v20, v29

    invoke-static {v13, v14}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v13

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getPosEastLocal()D

    move-result-wide v20

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getPosNorthLocal()D

    move-result-wide v29

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getPosEastLocal()D

    move-result-wide v34

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getPosNorthLocal()D

    move-result-wide v36

    aget-wide v38, v10, v11

    mul-double v38, v38, v13

    aget-wide v40, v10, v12

    mul-double v40, v40, v13

    aget-wide v42, v26, v11

    mul-double v42, v42, v13

    aget-wide v44, v26, v12

    mul-double v44, v44, v13

    move-wide/from16 v46, v38

    move-wide/from16 v48, v20

    move-wide/from16 v50, v40

    move-wide/from16 v52, v29

    const/4 v15, 0x4

    new-array v12, v15, [[D

    new-array v11, v15, [D

    const-wide/high16 v56, 0x4014000000000000L    # 5.0

    mul-double v58, v56, v5

    mul-double v58, v58, v5

    mul-double v58, v58, v5

    mul-double v58, v58, v5

    const/16 v55, 0x0

    aput-wide v58, v11, v55

    const-wide/high16 v58, 0x4010000000000000L    # 4.0

    mul-double v60, v58, v5

    mul-double v60, v60, v5

    mul-double v60, v60, v5

    const/16 v54, 0x1

    aput-wide v60, v11, v54

    const-wide/high16 v60, 0x4008000000000000L    # 3.0

    mul-double v62, v60, v5

    mul-double v62, v62, v5

    const/16 v31, 0x2

    aput-wide v62, v11, v31

    const-wide/high16 v62, 0x4000000000000000L    # 2.0

    mul-double v64, v62, v5

    const/4 v15, 0x3

    aput-wide v64, v11, v15

    const/16 v55, 0x0

    aput-object v11, v12, v55

    const/4 v11, 0x4

    new-array v15, v11, [D

    mul-double v64, v56, v16

    mul-double v64, v64, v16

    mul-double v64, v64, v16

    mul-double v64, v64, v16

    aput-wide v64, v15, v55

    mul-double v64, v58, v16

    mul-double v64, v64, v16

    mul-double v64, v64, v16

    const/4 v11, 0x1

    aput-wide v64, v15, v11

    mul-double v64, v60, v16

    mul-double v64, v64, v16

    const/16 v31, 0x2

    aput-wide v64, v15, v31

    mul-double v64, v62, v16

    const/16 v54, 0x3

    aput-wide v64, v15, v54

    aput-object v15, v12, v11

    const/4 v15, 0x4

    new-array v11, v15, [D

    mul-double v64, v18, v18

    mul-double v64, v64, v18

    mul-double v64, v64, v18

    mul-double v64, v64, v18

    const/4 v15, 0x0

    aput-wide v64, v11, v15

    mul-double v64, v18, v18

    mul-double v64, v64, v18

    mul-double v64, v64, v18

    const/4 v15, 0x1

    aput-wide v64, v11, v15

    mul-double v64, v18, v18

    mul-double v64, v64, v18

    const/4 v15, 0x2

    aput-wide v64, v11, v15

    mul-double v64, v18, v18

    const/16 v31, 0x3

    aput-wide v64, v11, v31

    aput-object v11, v12, v15

    const/4 v11, 0x4

    new-array v15, v11, [D

    mul-double v56, v56, v18

    mul-double v56, v56, v18

    mul-double v56, v56, v18

    mul-double v56, v56, v18

    const/4 v11, 0x0

    aput-wide v56, v15, v11

    mul-double v58, v58, v18

    mul-double v58, v58, v18

    mul-double v58, v58, v18

    const/4 v11, 0x1

    aput-wide v58, v15, v11

    mul-double v60, v60, v18

    mul-double v60, v60, v18

    const/4 v11, 0x2

    aput-wide v60, v15, v11

    mul-double v62, v62, v18

    const/4 v11, 0x3

    aput-wide v62, v15, v11

    aput-object v15, v12, v11

    move-object v11, v12

    new-instance v12, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    invoke-direct {v12, v11}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;-><init>([[D)V

    move-wide/from16 v67, v3

    const/4 v15, 0x4

    new-array v3, v15, [[D

    const/4 v4, 0x1

    new-array v15, v4, [D

    sub-double v56, v22, v46

    const/16 v55, 0x0

    aput-wide v56, v15, v55

    aput-object v15, v3, v55

    new-array v15, v4, [D

    sub-double v56, v22, v46

    aput-wide v56, v15, v55

    aput-object v15, v3, v4

    new-array v15, v4, [D

    mul-double v56, v46, v18

    sub-double v56, v34, v56

    sub-double v56, v56, v48

    aput-wide v56, v15, v55

    const/16 v31, 0x2

    aput-object v15, v3, v31

    new-array v15, v4, [D

    sub-double v56, v42, v46

    aput-wide v56, v15, v55

    const/16 v54, 0x3

    aput-object v15, v3, v54

    new-instance v15, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    invoke-direct {v15, v3}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;-><init>([[D)V

    move-object/from16 v69, v3

    const/4 v3, 0x4

    new-array v3, v3, [[D

    move-wide/from16 v70, v5

    new-array v5, v4, [D

    sub-double v56, v24, v50

    aput-wide v56, v5, v55

    aput-object v5, v3, v55

    new-array v5, v4, [D

    sub-double v56, v24, v50

    aput-wide v56, v5, v55

    aput-object v5, v3, v4

    new-array v5, v4, [D

    mul-double v56, v50, v18

    sub-double v56, v36, v56

    sub-double v56, v56, v52

    aput-wide v56, v5, v55

    const/4 v6, 0x2

    aput-object v5, v3, v6

    new-array v5, v4, [D

    sub-double v56, v44, v50

    aput-wide v56, v5, v55

    const/4 v4, 0x3

    aput-object v5, v3, v4

    new-instance v4, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    invoke-direct {v4, v3}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;-><init>([[D)V

    invoke-virtual {v12}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->inverse()Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    move-result-object v5

    invoke-virtual {v5, v15}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->times(Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    move-result-object v5

    invoke-virtual {v12}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->inverse()Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->times(Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    move-result-object v6

    move-object/from16 v72, v3

    new-instance v3, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    invoke-direct {v3, v2}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;-><init>(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;)V

    move-object/from16 v73, v4

    iget-object v4, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Origin_LLH:[D

    const/16 v55, 0x0

    aget-wide v57, v4, v55

    iget-object v4, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Origin_LLH:[D

    const/16 v54, 0x1

    aget-wide v59, v4, v54

    iget-object v4, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Origin_LLH:[D

    const/16 v31, 0x2

    aget-wide v61, v4, v31

    move-object/from16 v56, v3

    invoke-virtual/range {v56 .. v62}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->setOrigin(DDD)V

    move-wide/from16 v56, v67

    :goto_2
    move-wide/from16 v63, v56

    cmpg-double v4, v63, v18

    if-gez v4, :cond_7

    const/4 v4, 0x0

    invoke-virtual {v5, v4, v4}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->get(II)D

    move-result-wide v55

    mul-double v55, v55, v63

    mul-double v55, v55, v63

    mul-double v55, v55, v63

    mul-double v55, v55, v63

    mul-double v55, v55, v63

    move-wide/from16 v74, v7

    const/4 v7, 0x1

    invoke-virtual {v5, v7, v4}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->get(II)D

    move-result-wide v57

    mul-double v57, v57, v63

    mul-double v57, v57, v63

    mul-double v57, v57, v63

    mul-double v57, v57, v63

    add-double v55, v55, v57

    const/4 v7, 0x2

    invoke-virtual {v5, v7, v4}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->get(II)D

    move-result-wide v57

    mul-double v57, v57, v63

    mul-double v57, v57, v63

    mul-double v57, v57, v63

    add-double v55, v55, v57

    const/4 v7, 0x3

    invoke-virtual {v5, v7, v4}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->get(II)D

    move-result-wide v57

    mul-double v57, v57, v63

    mul-double v57, v57, v63

    add-double v55, v55, v57

    mul-double v7, v46, v63

    add-double v55, v55, v7

    add-double v7, v55, v48

    invoke-virtual {v6, v4, v4}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->get(II)D

    move-result-wide v55

    mul-double v55, v55, v63

    mul-double v55, v55, v63

    mul-double v55, v55, v63

    mul-double v55, v55, v63

    mul-double v55, v55, v63

    move-object/from16 v76, v5

    const/4 v5, 0x1

    invoke-virtual {v6, v5, v4}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->get(II)D

    move-result-wide v57

    mul-double v57, v57, v63

    mul-double v57, v57, v63

    mul-double v57, v57, v63

    mul-double v57, v57, v63

    add-double v55, v55, v57

    const/4 v5, 0x2

    invoke-virtual {v6, v5, v4}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->get(II)D

    move-result-wide v57

    mul-double v57, v57, v63

    mul-double v57, v57, v63

    mul-double v57, v57, v63

    add-double v56, v55, v57

    const/4 v5, 0x3

    invoke-virtual {v6, v5, v4}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->get(II)D

    move-result-wide v58

    mul-double v58, v58, v63

    mul-double v58, v58, v63

    add-double v56, v56, v58

    mul-double v58, v50, v63

    add-double v56, v56, v58

    add-double v65, v56, v52

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getAltitude()D

    move-result-wide v61

    move-object/from16 v56, v3

    move-wide/from16 v57, v7

    move-wide/from16 v59, v65

    invoke-virtual/range {v56 .. v62}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->setPosENU(DDD)V

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getLoc()Landroid/location/Location;

    move-result-object v4

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getTime()J

    move-result-wide v56

    move-object/from16 v77, v6

    mul-double v5, v63, v27

    double-to-long v5, v5

    add-long v5, v56, v5

    invoke-virtual {v4, v5, v6}, Landroid/location/Location;->setTime(J)V

    iget-object v4, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mLPPPosition:Ljava/util/ArrayList;

    new-instance v5, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    invoke-direct {v5, v3}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;-><init>(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getTime()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->lastTrajTime:J

    const-wide/high16 v4, 0x4034000000000000L    # 20.0

    add-double v56, v63, v4

    move-wide/from16 v7, v74

    move-object/from16 v5, v76

    move-object/from16 v6, v77

    goto/16 :goto_2

    :cond_7
    move-wide/from16 v74, v7

    goto/16 :goto_4

    :cond_8
    move-wide/from16 v67, v3

    move-wide/from16 v70, v5

    move-wide/from16 v74, v7

    move-wide/from16 v32, v14

    const-wide v3, 0x408c200000000000L    # 900.0

    cmpl-double v3, v18, v3

    if-lez v3, :cond_9

    iget-object v3, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mLPPPosition:Ljava/util/ArrayList;

    new-instance v4, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    invoke-direct {v4, v2}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;-><init>(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getTime()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->lastTrajTime:J

    goto/16 :goto_4

    :cond_9
    cmpl-double v3, v18, v20

    if-lez v3, :cond_a

    new-instance v3, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    invoke-direct {v3, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;-><init>(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;)V

    const/4 v4, 0x2

    new-array v5, v4, [D

    new-array v6, v4, [D

    new-array v4, v4, [D

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getPosEastLocal()D

    move-result-wide v7

    const/4 v11, 0x0

    aput-wide v7, v5, v11

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getPosNorthLocal()D

    move-result-wide v7

    const/4 v12, 0x1

    aput-wide v7, v5, v12

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getPosEastLocal()D

    move-result-wide v7

    aput-wide v7, v6, v11

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getPosNorthLocal()D

    move-result-wide v7

    aput-wide v7, v6, v12

    move-wide/from16 v7, v67

    :goto_3
    cmpg-double v11, v7, v18

    if-gez v11, :cond_a

    div-double v11, v7, v18

    const/4 v13, 0x0

    aget-wide v14, v5, v13

    aget-wide v20, v6, v13

    aget-wide v29, v5, v13

    sub-double v20, v20, v29

    mul-double v20, v20, v11

    add-double v14, v14, v20

    aput-wide v14, v4, v13

    const/4 v14, 0x1

    aget-wide v20, v5, v14

    aget-wide v29, v6, v14

    aget-wide v34, v5, v14

    sub-double v29, v29, v34

    mul-double v29, v29, v11

    add-double v20, v20, v29

    aput-wide v20, v4, v14

    aget-wide v35, v4, v13

    aget-wide v37, v4, v14

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getAltitude()D

    move-result-wide v39

    move-object/from16 v34, v3

    invoke-virtual/range {v34 .. v40}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->setPosENU(DDD)V

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getLoc()Landroid/location/Location;

    move-result-object v15

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getTime()J

    move-result-wide v20

    mul-double v13, v7, v27

    double-to-long v13, v13

    add-long v13, v20, v13

    invoke-virtual {v15, v13, v14}, Landroid/location/Location;->setTime(J)V

    iget-object v13, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mLPPPosition:Ljava/util/ArrayList;

    new-instance v14, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    invoke-direct {v14, v3}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;-><init>(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;)V

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getTime()J

    move-result-wide v13

    iput-wide v13, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->lastTrajTime:J

    const-wide/high16 v11, 0x4034000000000000L    # 20.0

    add-double/2addr v7, v11

    goto :goto_3

    :cond_a
    :goto_4
    return-void
.end method

.method private resetwithLastLoc(Landroid/location/Location;)V
    .locals 13

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "resetwithLastLoc() unknown error - lastloc is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->LastLMLoc:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    if-nez v0, :cond_1

    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    invoke-direct {v0, p1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;-><init>(Landroid/location/Location;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->LastLMLoc:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->LastLMLoc:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    invoke-virtual {v0, p1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->set(Landroid/location/Location;)V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->OldLoc:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    invoke-virtual {v0, p1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->set(Landroid/location/Location;)V

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Origin_LLH:[D

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    const/4 v3, 0x0

    aput-wide v1, v0, v3

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Origin_LLH:[D

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    const/4 v4, 0x1

    aput-wide v1, v0, v4

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Origin_LLH:[D

    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v1

    const/4 v5, 0x2

    aput-wide v1, v0, v5

    iget-object v6, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->OldLoc:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Origin_LLH:[D

    aget-wide v7, v0, v3

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Origin_LLH:[D

    aget-wide v9, v0, v4

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Origin_LLH:[D

    aget-wide v11, v0, v5

    invoke-virtual/range {v6 .. v12}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->setOrigin(DDD)V

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->CurrentLoc:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    iget-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->OldLoc:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    invoke-virtual {v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->set(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;)V

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mAPDRStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mAPDRStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mLPPPosition:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mInputPosBuf:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mInputPosBuf:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    invoke-direct {v1, p1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;-><init>(Landroid/location/Location;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mInputPosBufSync:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iput-boolean v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mFlagLocInputReady:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->lastTrajTime:J

    iput-wide v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Cnt_SameLocSet:J

    return-void
.end method


# virtual methods
.method public deliverAPDRData(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deliverAPDRData(), array size \t\t: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;

    invoke-direct {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "APDR time - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;

    iget-wide v3, v3, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->utctime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " status - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;

    iget v3, v3, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->movingStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " step length - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;

    iget-wide v3, v3, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->stepLength:D

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v3, " step heading - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;

    iget-wide v3, v3, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->apdrHeading:D

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->SendStatus(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;

    invoke-virtual {v0, v2}, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->set(Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;)V

    iget-object v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mAPDRResults:Ljava/util/ArrayList;

    new-instance v3, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;

    invoke-direct {v3, v0}, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;-><init>(Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v2, v0, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->movingStatus:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    invoke-virtual {p0, v3}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->setStayingAreaFlag(I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public deliverLocationData(Landroid/location/Location;)V
    .locals 10

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->TAG:Ljava/lang/String;

    const-string v1, "deliverLocationData - loc is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LppAlgorithm - PosIn => Time : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " Pos : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " , "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, " , "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, " , "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, " , "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " , "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/location/Location;->getBearing()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " , "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/location/Location;->getSpeed()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->SendStatus(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->LastLMLoc:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->resetwithLastLoc(Landroid/location/Location;)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mInputPosBufSync:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    invoke-direct {v1, p1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;-><init>(Landroid/location/Location;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mInputPosBufSync:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x64

    const/4 v2, 0x0

    if-le v0, v1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mInputPosBufSync:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Size of mInputPosBufSync : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mInputPosBufSync:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->SendStatus(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Position filter Status - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mFlagLocInputReady:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->SendStatus(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mFlagLocInputReady:Z

    if-eqz v0, :cond_a

    iput-boolean v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mFlagLocInputReady:Z

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mInputPosBufSync:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    iget-object v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mInputPosBuf:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mInputPosBufSync:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mInputPosBuf:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm$1;-><init>(Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-boolean v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mFlagIsGPSBatchMode:Z

    const/4 v1, 0x1

    if-nez v0, :cond_9

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mInputPosBuf:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Fine Location Acq Flag : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Flag_FineLocAcquired:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->SendStatus(Ljava/lang/String;)V

    iget-boolean v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Flag_FineLocAcquired:Z

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->LastLMLoc:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    invoke-direct {p0, v3, v5, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->LocValidCheck(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;Z)I

    move-result v5

    packed-switch v5, :pswitch_data_0

    const/4 v4, 0x0

    goto :goto_2

    :pswitch_0
    const/4 v4, 0x1

    const/4 v0, 0x1

    goto :goto_2

    :pswitch_1
    const/4 v4, 0x1

    goto :goto_2

    :pswitch_2
    const/4 v4, 0x0

    goto :goto_2

    :cond_4
    invoke-virtual {v3}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getAccuracy()F

    move-result v5

    const/high16 v6, 0x42480000    # 50.0f

    cmpl-float v5, v5, v6

    if-lez v5, :cond_5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "LppAlgorithm - check Initial Fine location : false - accuracy is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getAccuracy()F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->SendStatus(Ljava/lang/String;)V

    const/4 v4, 0x0

    goto :goto_2

    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "LppAlgorithm - check Initial Fine location : OK - accuracy is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getAccuracy()F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->SendStatus(Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Flag_FineLocAcquired:Z

    const/4 v4, 0x1

    :goto_2
    if-eqz v4, :cond_7

    invoke-direct {p0, v3}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->LppAlgorithmCheckAndRun(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;)V

    if-eqz v0, :cond_6

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getLoc()Landroid/location/Location;

    move-result-object v5

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getLoc()Landroid/location/Location;

    move-result-object v6

    invoke-virtual {v6}, Landroid/location/Location;->getTime()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    add-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Landroid/location/Location;->setTime(J)V

    invoke-direct {p0, v3}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->LppAlgorithmCheckAndRun(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;)V

    :cond_6
    iget-object v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->LastLMLoc:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    invoke-virtual {v5, v3}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->set(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;)V

    goto :goto_3

    :cond_7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Flag_Loc false - loc time is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getTime()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->SendStatus(Ljava/lang/String;)V

    :goto_3
    goto/16 :goto_1

    :cond_8
    iget-object v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mInputPosBuf:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto :goto_4

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Position Filtering hold - GPS batching mode , accumulated index : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mInputPosBuf:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->SendStatus(Ljava/lang/String;)V

    :goto_4
    iput-boolean v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mFlagLocInputReady:Z

    return-void

    :cond_a
    const-string v0, "Position filter is not ready"

    invoke-direct {p0, v0}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->SendStatus(Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public init(Lcom/samsung/android/contextaware/aggregator/lpp/LppAlgoListener;)V
    .locals 2

    iput-object p1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mLPPLnr:Lcom/samsung/android/contextaware/aggregator/lpp/LppAlgoListener;

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->TAG:Ljava/lang/String;

    const-string v1, "init()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->flag_AlgorithmOn:Z

    iput-boolean v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Flag_FineLocAcquired:Z

    invoke-direct {p0}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->PositionFilteringInit()V

    return-void
.end method

.method public setGPSBatchingStatus(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mFlagIsGPSBatchMode:Z

    return-void
.end method

.method public setStayingAreaFlag(I)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mFlagStayingArea:Z

    return-void
.end method

.method public start()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->flag_AlgorithmOn:Z

    return-void
.end method

.method public stop()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stop - mLPPPosition size() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mLPPPosition:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mLPPPosition:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mLPPLnr:Lcom/samsung/android/contextaware/aggregator/lpp/LppAlgoListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mLPPLnr:Lcom/samsung/android/contextaware/aggregator/lpp/LppAlgoListener;

    iget-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mLPPPosition:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppAlgoListener;->onUpdateLPPtraj(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mLPPPosition:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->LastLMLoc:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->flag_AlgorithmOn:Z

    return-void
.end method

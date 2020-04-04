.class public Lcom/android/internal/os/ProcessCpuTracker;
.super Ljava/lang/Object;
.source "ProcessCpuTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/ProcessCpuTracker$Stats;,
        Lcom/android/internal/os/ProcessCpuTracker$FilterStats;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final LOAD_AVERAGE_FORMAT:[I

.field private static final PROCESS_FULL_STATS_FORMAT:[I

.field static final PROCESS_FULL_STAT_MAJOR_FAULTS:I = 0x2

.field static final PROCESS_FULL_STAT_MINOR_FAULTS:I = 0x1

.field static final PROCESS_FULL_STAT_STIME:I = 0x4

.field static final PROCESS_FULL_STAT_UTIME:I = 0x3

.field static final PROCESS_FULL_STAT_VSIZE:I = 0x5

.field private static final PROCESS_STATS_FORMAT:[I

.field static final PROCESS_STAT_MAJOR_FAULTS:I = 0x1

.field static final PROCESS_STAT_MINOR_FAULTS:I = 0x0

.field static final PROCESS_STAT_STIME:I = 0x3

.field static final PROCESS_STAT_UTIME:I = 0x2

.field private static final SYSTEM_CPU_FORMAT:[I

.field private static final TAG:Ljava/lang/String; = "ProcessCpuTracker"

.field private static final localLOGV:Z = false

.field private static final sLoadComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/internal/os/ProcessCpuTracker$Stats;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBaseIdleTime:J

.field private mBaseIoWaitTime:J

.field private mBaseIrqTime:J

.field private mBaseSoftIrqTime:J

.field private mBaseSystemTime:J

.field private mBaseUserTime:J

.field private mBuffer:[B

.field private mCurPids:[I

.field private mCurThreadPids:[I

.field private mCurrentSampleRealTime:J

.field private mCurrentSampleTime:J

.field private mCurrentSampleWallTime:J

.field private mFirst:Z

.field private final mIncludeThreads:Z

.field private final mJiffyMillis:J

.field private mLastSampleRealTime:J

.field private mLastSampleTime:J

.field private mLastSampleWallTime:J

.field private mLoad1:F

.field private mLoad15:F

.field private mLoad5:F

.field private final mLoadAverageData:[F

.field private final mProcStats:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/os/ProcessCpuTracker$Stats;",
            ">;"
        }
    .end annotation
.end field

.field private final mProcessFullStatsData:[J

.field private final mProcessFullStatsStringData:[Ljava/lang/String;

.field private final mProcessStatsData:[J

.field private mRelIdleTime:I

.field private mRelIoWaitTime:I

.field private mRelIrqTime:I

.field private mRelSoftIrqTime:I

.field private mRelStatsAreGood:Z

.field private mRelSystemTime:I

.field private mRelUserTime:I

.field private final mSinglePidStatsData:[J

.field private final mSystemCpuData:[J

.field private final mWorkingProcs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/os/ProcessCpuTracker$Stats;",
            ">;"
        }
    .end annotation
.end field

.field private mWorkingProcsSorted:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xf

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/os/ProcessCpuTracker;->PROCESS_STATS_FORMAT:[I

    const/16 v0, 0x17

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/internal/os/ProcessCpuTracker;->PROCESS_FULL_STATS_FORMAT:[I

    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/internal/os/ProcessCpuTracker;->SYSTEM_CPU_FORMAT:[I

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/internal/os/ProcessCpuTracker;->LOAD_AVERAGE_FORMAT:[I

    new-instance v0, Lcom/android/internal/os/ProcessCpuTracker$1;

    invoke-direct {v0}, Lcom/android/internal/os/ProcessCpuTracker$1;-><init>()V

    sput-object v0, Lcom/android/internal/os/ProcessCpuTracker;->sLoadComparator:Ljava/util/Comparator;

    return-void

    nop

    :array_0
    .array-data 4
        0x20
        0x220
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x2020
        0x20
        0x2020
        0x20
        0x2020
        0x2020
    .end array-data

    :array_1
    .array-data 4
        0x20
        0x1220
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x2020
        0x20
        0x2020
        0x20
        0x2020
        0x2020
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x2020
    .end array-data

    :array_2
    .array-data 4
        0x120
        0x2020
        0x2020
        0x2020
        0x2020
        0x2020
        0x2020
        0x2020
    .end array-data

    :array_3
    .array-data 4
        0x4020
        0x4020
        0x4020
    .end array-data
.end method

.method public constructor <init>(Z)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v1, v0, [J

    iput-object v1, p0, Lcom/android/internal/os/ProcessCpuTracker;->mProcessStatsData:[J

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mSinglePidStatsData:[J

    const/4 v0, 0x6

    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/os/ProcessCpuTracker;->mProcessFullStatsStringData:[Ljava/lang/String;

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mProcessFullStatsData:[J

    const/4 v0, 0x7

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mSystemCpuData:[J

    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mLoadAverageData:[F

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mLoad1:F

    iput v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mLoad5:F

    iput v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mLoad15:F

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mProcStats:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mWorkingProcs:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mFirst:Z

    const/16 v0, 0x1000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mBuffer:[B

    iput-boolean p1, p0, Lcom/android/internal/os/ProcessCpuTracker;->mIncludeThreads:Z

    sget v0, Landroid/system/OsConstants;->_SC_CLK_TCK:I

    invoke-static {v0}, Landroid/system/Os;->sysconf(I)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/internal/os/ProcessCpuTracker;->mJiffyMillis:J

    return-void
.end method

.method private collectStats(Ljava/lang/String;IZ[ILjava/util/ArrayList;)[I
    .locals 34
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZ[I",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/os/ProcessCpuTracker$Stats;",
            ">;)[I"
        }
    .end annotation

    move-object/from16 v6, p0

    move/from16 v7, p2

    move-object/from16 v8, p5

    move-object/from16 v9, p1

    move-object/from16 v10, p4

    invoke-static {v9, v10}, Landroid/os/Process;->getPids(Ljava/lang/String;[I)[I

    move-result-object v11

    const/4 v12, 0x0

    if-nez v11, :cond_0

    move v0, v12

    goto :goto_0

    :cond_0
    array-length v0, v11

    :goto_0
    move v13, v0

    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v14, v0

    move v0, v12

    :goto_1
    move v15, v0

    if-ge v15, v13, :cond_11

    aget v4, v11, v15

    if-gez v4, :cond_1

    move v13, v4

    nop

    move v9, v7

    move-object/from16 v33, v11

    const/4 v11, 0x1

    goto/16 :goto_c

    :cond_1
    const/4 v0, 0x0

    if-ge v1, v14, :cond_2

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    goto :goto_2

    :cond_2
    move-object v2, v0

    :goto_2
    move-object v3, v2

    const/16 v16, 0x2

    if-eqz v3, :cond_9

    iget v2, v3, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    if-ne v2, v4, :cond_9

    iput-boolean v12, v3, Lcom/android/internal/os/ProcessCpuTracker$Stats;->added:Z

    iput-boolean v12, v3, Lcom/android/internal/os/ProcessCpuTracker$Stats;->working:Z

    add-int/lit8 v18, v1, 0x1

    iget-boolean v1, v3, Lcom/android/internal/os/ProcessCpuTracker$Stats;->interesting:Z

    if-eqz v1, :cond_8

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-object v5, v6, Lcom/android/internal/os/ProcessCpuTracker;->mProcessStatsData:[J

    iget-object v12, v3, Lcom/android/internal/os/ProcessCpuTracker$Stats;->statFile:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v12

    move-wide/from16 v19, v1

    sget-object v1, Lcom/android/internal/os/ProcessCpuTracker;->PROCESS_STATS_FORMAT:[I

    invoke-static {v12, v1, v0, v5, v0}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v0

    if-nez v0, :cond_3

    nop

    move-object/from16 v33, v11

    move/from16 v25, v13

    move/from16 v26, v14

    move/from16 v27, v15

    :goto_3
    const/4 v11, 0x1

    goto/16 :goto_6

    :cond_3
    const/4 v0, 0x0

    aget-wide v1, v5, v0

    const/4 v0, 0x1

    aget-wide v9, v5, v0

    aget-wide v21, v5, v16

    move-wide/from16 v23, v1

    iget-wide v0, v6, Lcom/android/internal/os/ProcessCpuTracker;->mJiffyMillis:J

    mul-long v1, v21, v0

    const/4 v0, 0x3

    aget-wide v16, v5, v0

    move/from16 v25, v13

    iget-wide v12, v6, Lcom/android/internal/os/ProcessCpuTracker;->mJiffyMillis:J

    mul-long v12, v12, v16

    move/from16 v26, v14

    move/from16 v27, v15

    iget-wide v14, v3, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_utime:J

    cmp-long v0, v1, v14

    if-nez v0, :cond_5

    iget-wide v14, v3, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_stime:J

    cmp-long v0, v12, v14

    if-nez v0, :cond_5

    const/4 v0, 0x0

    iput v0, v3, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    iput v0, v3, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    iput v0, v3, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_minfaults:I

    iput v0, v3, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_majfaults:I

    iget-boolean v14, v3, Lcom/android/internal/os/ProcessCpuTracker$Stats;->active:Z

    if-eqz v14, :cond_4

    iput-boolean v0, v3, Lcom/android/internal/os/ProcessCpuTracker$Stats;->active:Z

    :cond_4
    move-object/from16 v33, v11

    goto :goto_3

    :cond_5
    iget-boolean v0, v3, Lcom/android/internal/os/ProcessCpuTracker$Stats;->active:Z

    if-nez v0, :cond_6

    const/4 v14, 0x1

    iput-boolean v14, v3, Lcom/android/internal/os/ProcessCpuTracker$Stats;->active:Z

    goto :goto_4

    :cond_6
    const/4 v14, 0x1

    :goto_4
    if-gez v7, :cond_7

    iget-object v0, v3, Lcom/android/internal/os/ProcessCpuTracker$Stats;->cmdlineFile:Ljava/lang/String;

    invoke-direct {v6, v3, v0}, Lcom/android/internal/os/ProcessCpuTracker;->getName(Lcom/android/internal/os/ProcessCpuTracker$Stats;Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/internal/os/ProcessCpuTracker$Stats;->threadStats:Ljava/util/ArrayList;

    if-eqz v0, :cond_7

    iget-object v15, v3, Lcom/android/internal/os/ProcessCpuTracker$Stats;->threadsDir:Ljava/lang/String;

    const/16 v16, 0x0

    iget-object v0, v6, Lcom/android/internal/os/ProcessCpuTracker;->mCurThreadPids:[I

    iget-object v14, v3, Lcom/android/internal/os/ProcessCpuTracker$Stats;->threadStats:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object v0, v6

    move-wide/from16 v28, v9

    move-wide/from16 v7, v19

    move-wide/from16 v30, v23

    move-wide v9, v1

    move-object v1, v15

    move v2, v4

    move-object v15, v3

    move/from16 v3, v16

    move/from16 v32, v4

    move-object/from16 v4, v17

    move-object/from16 v16, v5

    move-object/from16 v33, v11

    const/4 v11, 0x1

    move-object v5, v14

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/ProcessCpuTracker;->collectStats(Ljava/lang/String;IZ[ILjava/util/ArrayList;)[I

    move-result-object v0

    iput-object v0, v6, Lcom/android/internal/os/ProcessCpuTracker;->mCurThreadPids:[I

    goto :goto_5

    :cond_7
    move-object v15, v3

    move/from16 v32, v4

    move-object/from16 v16, v5

    move-wide/from16 v28, v9

    move-object/from16 v33, v11

    move v11, v14

    move-wide/from16 v7, v19

    move-wide/from16 v30, v23

    move-wide v9, v1

    :goto_5
    iget-wide v0, v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_uptime:J

    sub-long v0, v7, v0

    iput-wide v0, v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_uptime:J

    iput-wide v7, v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_uptime:J

    iget-wide v0, v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_utime:J

    sub-long v0, v9, v0

    long-to-int v0, v0

    iput v0, v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    iget-wide v0, v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_stime:J

    sub-long v0, v12, v0

    long-to-int v0, v0

    iput v0, v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    iput-wide v9, v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_utime:J

    iput-wide v12, v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_stime:J

    iget-wide v0, v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_minfaults:J

    sub-long v0, v30, v0

    long-to-int v0, v0

    iput v0, v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_minfaults:I

    iget-wide v0, v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_majfaults:J

    sub-long v0, v28, v0

    long-to-int v0, v0

    iput v0, v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_majfaults:I

    move-wide/from16 v0, v30

    iput-wide v0, v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_minfaults:J

    move-wide/from16 v2, v28

    iput-wide v2, v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_majfaults:J

    iput-boolean v11, v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;->working:Z

    goto :goto_6

    :cond_8
    move-object/from16 v33, v11

    move/from16 v25, v13

    move/from16 v26, v14

    move/from16 v27, v15

    const/4 v11, 0x1

    :goto_6
    move/from16 v1, v18

    move/from16 v14, v26

    move-object/from16 v8, p5

    :goto_7
    move/from16 v9, p2

    goto/16 :goto_b

    :cond_9
    move/from16 v32, v4

    move-object/from16 v33, v11

    move/from16 v25, v13

    move/from16 v26, v14

    move/from16 v27, v15

    const/4 v11, 0x1

    move-object v15, v3

    if-eqz v15, :cond_b

    iget v2, v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    move/from16 v7, v32

    if-le v2, v7, :cond_a

    move-object/from16 v8, p5

    goto :goto_8

    :cond_a
    const/4 v0, 0x0

    iput v0, v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    iput v0, v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    iput v0, v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_minfaults:I

    iput v0, v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_majfaults:I

    iput-boolean v11, v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;->removed:Z

    iput-boolean v11, v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;->working:Z

    move-object/from16 v8, p5

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v14, v26, -0x1

    add-int/lit8 v0, v27, -0x1

    nop

    move/from16 v27, v0

    goto :goto_7

    :cond_b
    move/from16 v7, v32

    move-object/from16 v8, p5

    :goto_8
    new-instance v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    iget-boolean v3, v6, Lcom/android/internal/os/ProcessCpuTracker;->mIncludeThreads:Z

    move/from16 v9, p2

    invoke-direct {v2, v7, v9, v3}, Lcom/android/internal/os/ProcessCpuTracker$Stats;-><init>(IIZ)V

    move-object v10, v2

    invoke-virtual {v8, v1, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v12, v1, 0x1

    add-int/lit8 v14, v26, 0x1

    iget-object v13, v6, Lcom/android/internal/os/ProcessCpuTracker;->mProcessFullStatsStringData:[Ljava/lang/String;

    iget-object v15, v6, Lcom/android/internal/os/ProcessCpuTracker;->mProcessFullStatsData:[J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_uptime:J

    iget-object v1, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->statFile:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v1, Lcom/android/internal/os/ProcessCpuTracker;->PROCESS_FULL_STATS_FORMAT:[I

    invoke-static {v5, v1, v13, v15, v0}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x5

    aget-wide v0, v15, v0

    iput-wide v0, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->vsize:J

    iput-boolean v11, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->interesting:Z

    const/4 v0, 0x0

    aget-object v1, v13, v0

    iput-object v1, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->baseName:Ljava/lang/String;

    aget-wide v0, v15, v11

    iput-wide v0, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_minfaults:J

    aget-wide v0, v15, v16

    iput-wide v0, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_majfaults:J

    const/4 v0, 0x3

    aget-wide v0, v15, v0

    iget-wide v2, v6, Lcom/android/internal/os/ProcessCpuTracker;->mJiffyMillis:J

    mul-long/2addr v0, v2

    iput-wide v0, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_utime:J

    const/4 v0, 0x4

    aget-wide v0, v15, v0

    iget-wide v2, v6, Lcom/android/internal/os/ProcessCpuTracker;->mJiffyMillis:J

    mul-long/2addr v0, v2

    iput-wide v0, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_stime:J

    goto :goto_9

    :cond_c
    const-string v0, "ProcessCpuTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Skipping unknown process pid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "<unknown>"

    iput-object v0, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->baseName:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_stime:J

    iput-wide v0, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_utime:J

    iput-wide v0, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_majfaults:J

    iput-wide v0, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_minfaults:J

    :goto_9
    if-gez v9, :cond_e

    iget-object v0, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->cmdlineFile:Ljava/lang/String;

    invoke-direct {v6, v10, v0}, Lcom/android/internal/os/ProcessCpuTracker;->getName(Lcom/android/internal/os/ProcessCpuTracker$Stats;Ljava/lang/String;)V

    iget-object v0, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->threadStats:Ljava/util/ArrayList;

    if-eqz v0, :cond_d

    iget-object v1, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->threadsDir:Ljava/lang/String;

    const/4 v3, 0x1

    iget-object v4, v6, Lcom/android/internal/os/ProcessCpuTracker;->mCurThreadPids:[I

    iget-object v2, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->threadStats:Ljava/util/ArrayList;

    move-object v0, v6

    move-object/from16 v16, v2

    move v2, v7

    move-object/from16 v17, v5

    move-object/from16 v5, v16

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/ProcessCpuTracker;->collectStats(Ljava/lang/String;IZ[ILjava/util/ArrayList;)[I

    move-result-object v0

    iput-object v0, v6, Lcom/android/internal/os/ProcessCpuTracker;->mCurThreadPids:[I

    goto :goto_a

    :cond_d
    move-object/from16 v17, v5

    goto :goto_a

    :cond_e
    move-object/from16 v17, v5

    iget-boolean v0, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->interesting:Z

    if-eqz v0, :cond_f

    iget-object v0, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->baseName:Ljava/lang/String;

    iput-object v0, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    iget-object v0, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    invoke-virtual {v6, v0}, Lcom/android/internal/os/ProcessCpuTracker;->onMeasureProcessName(Ljava/lang/String;)I

    move-result v0

    iput v0, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->nameWidth:I

    :cond_f
    :goto_a
    const/4 v0, 0x0

    iput v0, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    iput v0, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    iput v0, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_minfaults:I

    iput v0, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_majfaults:I

    iput-boolean v11, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->added:Z

    if-nez p3, :cond_10

    iget-boolean v1, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->interesting:Z

    if-eqz v1, :cond_10

    iput-boolean v11, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->working:Z

    :cond_10
    move v1, v12

    :goto_b
    add-int/lit8 v2, v27, 0x1

    move v0, v2

    move v7, v9

    move/from16 v13, v25

    move-object/from16 v11, v33

    move-object/from16 v9, p1

    move-object/from16 v10, p4

    const/4 v12, 0x0

    goto/16 :goto_1

    :cond_11
    move v9, v7

    move-object/from16 v33, v11

    move/from16 v25, v13

    move/from16 v26, v14

    const/4 v11, 0x1

    :goto_c
    if-ge v1, v14, :cond_12

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    const/4 v3, 0x0

    iput v3, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    iput v3, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    iput v3, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_minfaults:I

    iput v3, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_majfaults:I

    iput-boolean v11, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->removed:Z

    iput-boolean v11, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->working:Z

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v14, v14, -0x1

    goto :goto_c

    :cond_12
    return-object v33
.end method

.method private getName(Lcom/android/internal/os/ProcessCpuTracker$Stats;Ljava/lang/String;)V
    .locals 5

    iget-object v0, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    const-string v2, "app_process"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    const-string v2, "<pre-initialized>"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, p2, v1}, Lcom/android/internal/os/ProcessCpuTracker;->readFile(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    move-object v0, v1

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v3

    if-ge v2, v4, :cond_1

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    if-nez v0, :cond_2

    iget-object v0, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->baseName:Ljava/lang/String;

    :cond_2
    iget-object v1, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    iput-object v0, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/internal/os/ProcessCpuTracker;->onMeasureProcessName(Ljava/lang/String;)I

    move-result v1

    iput v1, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->nameWidth:I

    :cond_4
    return-void
.end method

.method private printProcessCPU(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;IIIIIIII)V
    .locals 18

    move-object/from16 v6, p1

    move/from16 v7, p3

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    move/from16 v13, p11

    move/from16 v14, p12

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-nez p5, :cond_0

    const/4 v0, 0x1

    move v15, v0

    goto :goto_0

    :cond_0
    move/from16 v15, p5

    :goto_0
    add-int v0, v8, v9

    add-int/2addr v0, v10

    add-int/2addr v0, v11

    add-int/2addr v0, v12

    int-to-long v2, v0

    int-to-long v4, v15

    move-object/from16 v0, p0

    move-object v1, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/ProcessCpuTracker;->printRatio(Ljava/io/PrintWriter;JJ)V

    const-string v0, "% "

    invoke-virtual {v6, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-ltz v7, :cond_1

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, "/"

    invoke-virtual {v6, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_1
    move-object/from16 v4, p4

    invoke-virtual {v6, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, ": "

    invoke-virtual {v6, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    int-to-long v2, v8

    int-to-long v0, v15

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    move-object v1, v6

    move-wide/from16 v4, v16

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/ProcessCpuTracker;->printRatio(Ljava/io/PrintWriter;JJ)V

    const-string v0, "% user + "

    invoke-virtual {v6, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    int-to-long v2, v9

    int-to-long v4, v15

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/ProcessCpuTracker;->printRatio(Ljava/io/PrintWriter;JJ)V

    const-string v0, "% kernel"

    invoke-virtual {v6, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-lez v10, :cond_2

    const-string v0, " + "

    invoke-virtual {v6, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    int-to-long v2, v10

    int-to-long v4, v15

    move-object/from16 v0, p0

    move-object v1, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/ProcessCpuTracker;->printRatio(Ljava/io/PrintWriter;JJ)V

    const-string v0, "% iowait"

    invoke-virtual {v6, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_2
    if-lez v11, :cond_3

    const-string v0, " + "

    invoke-virtual {v6, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    int-to-long v2, v11

    int-to-long v4, v15

    move-object/from16 v0, p0

    move-object v1, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/ProcessCpuTracker;->printRatio(Ljava/io/PrintWriter;JJ)V

    const-string v0, "% irq"

    invoke-virtual {v6, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_3
    if-lez v12, :cond_4

    const-string v0, " + "

    invoke-virtual {v6, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    int-to-long v2, v12

    int-to-long v4, v15

    move-object/from16 v0, p0

    move-object v1, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/ProcessCpuTracker;->printRatio(Ljava/io/PrintWriter;JJ)V

    const-string v0, "% softirq"

    invoke-virtual {v6, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_4
    if-gtz v13, :cond_5

    if-lez v14, :cond_7

    :cond_5
    const-string v0, " / faults:"

    invoke-virtual {v6, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-lez v13, :cond_6

    const-string v0, " "

    invoke-virtual {v6, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v6, v13}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " minor"

    invoke-virtual {v6, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_6
    if-lez v14, :cond_7

    const-string v0, " "

    invoke-virtual {v6, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v6, v14}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " major"

    invoke-virtual {v6, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_7
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method private printRatio(Ljava/io/PrintWriter;JJ)V
    .locals 8

    const-wide/16 v0, 0x3e8

    mul-long/2addr v0, p2

    div-long/2addr v0, p4

    const-wide/16 v2, 0xa

    div-long v4, v0, v2

    invoke-virtual {p1, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    cmp-long v6, v4, v2

    if-gez v6, :cond_0

    mul-long/2addr v2, v4

    sub-long v2, v0, v2

    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-eqz v6, :cond_0

    const/16 v6, 0x2e

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    :cond_0
    return-void
.end method

.method private readFile(Ljava/lang/String;C)Ljava/lang/String;
    .locals 8

    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    iget-object v3, p0, Lcom/android/internal/os/ProcessCpuTracker;->mBuffer:[B

    invoke-virtual {v2, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    if-lez v3, :cond_2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_1

    iget-object v6, p0, Lcom/android/internal/os/ProcessCpuTracker;->mBuffer:[B

    aget-byte v6, v6, v5

    if-ne v6, p2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    new-instance v6, Ljava/lang/String;

    iget-object v7, p0, Lcom/android/internal/os/ProcessCpuTracker;->mBuffer:[B

    invoke-direct {v6, v7, v4, v5}, Ljava/lang/String;-><init>([BII)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return-object v6

    :catchall_0
    move-exception v1

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v1

    :catch_0
    move-exception v3

    goto :goto_2

    :catch_1
    move-exception v3

    :cond_2
    :goto_2
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    nop

    return-object v1
.end method


# virtual methods
.method final buildWorkingProcs()V
    .locals 8

    iget-boolean v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mWorkingProcsSorted:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mWorkingProcs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mProcStats:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_3

    iget-object v4, p0, Lcom/android/internal/os/ProcessCpuTracker;->mProcStats:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    iget-boolean v5, v4, Lcom/android/internal/os/ProcessCpuTracker$Stats;->working:Z

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/internal/os/ProcessCpuTracker;->mWorkingProcs:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, v4, Lcom/android/internal/os/ProcessCpuTracker$Stats;->threadStats:Ljava/util/ArrayList;

    if-eqz v5, :cond_2

    iget-object v5, v4, Lcom/android/internal/os/ProcessCpuTracker$Stats;->threadStats:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, v3, :cond_2

    iget-object v3, v4, Lcom/android/internal/os/ProcessCpuTracker$Stats;->workingThreads:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    iget-object v3, v4, Lcom/android/internal/os/ProcessCpuTracker$Stats;->threadStats:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v5, v1

    :goto_1
    if-ge v5, v3, :cond_1

    iget-object v6, v4, Lcom/android/internal/os/ProcessCpuTracker$Stats;->threadStats:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    iget-boolean v7, v6, Lcom/android/internal/os/ProcessCpuTracker$Stats;->working:Z

    if-eqz v7, :cond_0

    iget-object v7, v4, Lcom/android/internal/os/ProcessCpuTracker$Stats;->workingThreads:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    iget-object v5, v4, Lcom/android/internal/os/ProcessCpuTracker$Stats;->workingThreads:Ljava/util/ArrayList;

    sget-object v6, Lcom/android/internal/os/ProcessCpuTracker;->sLoadComparator:Ljava/util/Comparator;

    invoke-static {v5, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/internal/os/ProcessCpuTracker;->mWorkingProcs:Ljava/util/ArrayList;

    sget-object v2, Lcom/android/internal/os/ProcessCpuTracker;->sLoadComparator:Ljava/util/Comparator;

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iput-boolean v3, p0, Lcom/android/internal/os/ProcessCpuTracker;->mWorkingProcsSorted:Z

    :cond_4
    return-void
.end method

.method public final countStats()I
    .locals 1

    iget-object v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mProcStats:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final countWorkingStats()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/os/ProcessCpuTracker;->buildWorkingProcs()V

    iget-object v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mWorkingProcs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getCpuTimeForPid(I)J
    .locals 7

    iget-object v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mSinglePidStatsData:[J

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/proc/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/stat"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/os/ProcessCpuTracker;->mSinglePidStatsData:[J

    sget-object v3, Lcom/android/internal/os/ProcessCpuTracker;->PROCESS_STATS_FORMAT:[I

    const/4 v4, 0x0

    invoke-static {v1, v3, v4, v2, v4}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x2

    aget-wide v3, v2, v3

    const/4 v5, 0x3

    aget-wide v5, v2, v5

    add-long/2addr v3, v5

    iget-wide v5, p0, Lcom/android/internal/os/ProcessCpuTracker;->mJiffyMillis:J

    mul-long/2addr v5, v3

    monitor-exit v0

    return-wide v5

    :cond_0
    const-wide/16 v3, 0x0

    monitor-exit v0

    return-wide v3

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final getLastIdleTime()I
    .locals 1

    iget v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelIdleTime:I

    return v0
.end method

.method public final getLastIoWaitTime()I
    .locals 1

    iget v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelIoWaitTime:I

    return v0
.end method

.method public final getLastIrqTime()I
    .locals 1

    iget v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelIrqTime:I

    return v0
.end method

.method public final getLastSoftIrqTime()I
    .locals 1

    iget v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelSoftIrqTime:I

    return v0
.end method

.method public final getLastSystemTime()I
    .locals 1

    iget v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelSystemTime:I

    return v0
.end method

.method public final getLastUserTime()I
    .locals 1

    iget v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelUserTime:I

    return v0
.end method

.method public final getStats(I)Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mProcStats:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    return-object v0
.end method

.method public final getStats(Lcom/android/internal/os/ProcessCpuTracker$FilterStats;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/os/ProcessCpuTracker$FilterStats;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/internal/os/ProcessCpuTracker$Stats;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/os/ProcessCpuTracker;->mProcStats:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Lcom/android/internal/os/ProcessCpuTracker;->mProcStats:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Lcom/android/internal/os/ProcessCpuTracker;->mProcStats:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    invoke-interface {p1, v3}, Lcom/android/internal/os/ProcessCpuTracker$FilterStats;->needed(Lcom/android/internal/os/ProcessCpuTracker$Stats;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final getTotalCpuPercent()F
    .locals 3

    iget v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelUserTime:I

    iget v1, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelSystemTime:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelIrqTime:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelIdleTime:I

    add-int/2addr v0, v1

    if-gtz v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    iget v1, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelUserTime:I

    iget v2, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelSystemTime:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelIrqTime:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    int-to-float v2, v0

    div-float/2addr v1, v2

    return v1
.end method

.method public final getWorkingStats(I)Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mWorkingProcs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    return-object v0
.end method

.method public final getWorkingThreadStats(I)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/os/ProcessCpuTracker$Stats;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mWorkingProcs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    iget-object v1, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->workingThreads:Ljava/util/ArrayList;

    return-object v1
.end method

.method public final hasGoodLastStats()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelStatsAreGood:Z

    return v0
.end method

.method public init()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mFirst:Z

    invoke-virtual {p0}, Lcom/android/internal/os/ProcessCpuTracker;->update()V

    return-void
.end method

.method public onLoadChanged(FFF)V
    .locals 0

    return-void
.end method

.method public onMeasureProcessName(Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public printCpuCoreInfo()Ljava/lang/String;
    .locals 21

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    new-instance v1, Lcom/android/internal/util/FastPrintWriter;

    const/4 v2, 0x0

    const/16 v3, 0x80

    invoke-direct {v1, v0, v2, v3}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/Writer;ZI)V

    const/4 v3, 0x1

    new-array v4, v3, [I

    const/16 v5, 0x1020

    aput v5, v4, v2

    new-array v5, v3, [I

    const/16 v6, 0x2020

    aput v6, v5, v2

    const-string v6, "/sys/devices/system/cpu/offline"

    const-string v7, "/sys/devices/system/cpu/online"

    filled-new-array {v6, v7}, [Ljava/lang/String;

    move-result-object v6

    const-string v7, "/sys/devices/system/cpu/possible"

    const-string v8, "/sys/devices/system/cpu/cpu%d/cpufreq/scaling_cur_freq"

    const-string v9, "/sys/devices/system/cpu/cpu%d/cpufreq/scaling_governor"

    const-string v10, "/sys/devices/system/cpu/cpu%d/cpufreq/scaling_max_freq"

    filled-new-array {v8, v9, v10}, [Ljava/lang/String;

    move-result-object v8

    const-string v9, "/sys/class/sec/sec-thermistor/temperature"

    const-string v10, "/sys/devices/platform/sec-thermistor/temperature"

    const-string v11, "/sys/class/sec/sec-ap-thermistor/temperature"

    filled-new-array {v9, v10, v11}, [Ljava/lang/String;

    move-result-object v9

    new-array v10, v3, [Ljava/lang/String;

    new-array v11, v3, [J

    const/4 v12, 0x0

    const-string v13, "------ Current CPU Core Info ------"

    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v13, v2

    :goto_0
    array-length v14, v6

    const/16 v15, 0x2f

    if-ge v13, v14, :cond_1

    const-string v14, "- "

    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    aget-object v14, v6, v13

    aget-object v2, v6, v13

    invoke-virtual {v2, v15}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    add-int/2addr v2, v3

    invoke-virtual {v14, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    aget-object v2, v6, v13

    const/4 v14, 0x0

    invoke-static {v2, v4, v10, v14, v14}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    aget-object v14, v10, v2

    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v13, v13, 0x1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_2
    array-length v13, v9

    if-ge v2, v13, :cond_3

    aget-object v13, v9, v2

    new-array v14, v3, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    const/16 v16, 0x0

    aput-object v17, v14, v16

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-static {v13, v5, v14, v11, v14}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v13

    if-eqz v13, :cond_2

    const-string v13, "- AP Temp = %d\n"

    new-array v14, v3, [Ljava/lang/Object;

    move-object/from16 v18, v4

    aget-wide v3, v11, v16

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v14, v16

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_3

    :cond_2
    move-object/from16 v18, v4

    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    goto :goto_2

    :cond_3
    move-object/from16 v18, v4

    :goto_3
    const-string v2, "/sys/devices/system/cpu/possible"

    move-object/from16 v3, v18

    const/4 v4, 0x0

    invoke-static {v2, v3, v10, v4, v4}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x0

    aget-object v4, v10, v2

    aget-object v13, v10, v2

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v4, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    :cond_4
    if-lez v12, :cond_b

    const-string v2, "                  "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_4
    if-gt v2, v12, :cond_5

    const-string v4, "%12d"

    const/4 v13, 0x1

    new-array v14, v13, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/16 v16, 0x0

    aput-object v13, v14, v16

    invoke-static {v4, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_5
    const-string v2, "\n------------------"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_5
    if-gt v2, v12, :cond_6

    const-string v4, "------------"

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_6
    const/4 v2, 0x0

    :goto_6
    array-length v4, v8

    if-ge v2, v4, :cond_9

    const-string v4, "\n%-18s"

    const/4 v13, 0x1

    new-array v14, v13, [Ljava/lang/Object;

    aget-object v13, v8, v2

    move-object/from16 v19, v5

    aget-object v5, v8, v2

    invoke-virtual {v5, v15}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    const/16 v17, 0x1

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v13, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    const/4 v13, 0x0

    aput-object v5, v14, v13

    invoke-static {v4, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v4, 0x0

    :goto_7
    if-gt v4, v12, :cond_8

    aget-object v5, v8, v2

    const/4 v13, 0x1

    new-array v14, v13, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    const/16 v16, 0x0

    aput-object v17, v14, v16

    invoke-static {v5, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v14, 0x0

    invoke-static {v5, v3, v10, v14, v14}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v5

    if-eqz v5, :cond_7

    const-string v5, "%12s"

    new-array v14, v13, [Ljava/lang/Object;

    aget-object v13, v10, v16

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v14, v16

    invoke-static {v5, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_8

    :cond_7
    const-string v5, "           -"

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_8
    const/16 v16, 0x0

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v5, v19

    goto :goto_6

    :cond_9
    move-object/from16 v19, v5

    const/16 v16, 0x0

    const-string v2, "\n------------------"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    nop

    :goto_9
    move/from16 v2, v16

    if-gt v2, v12, :cond_a

    const-string v4, "------------"

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v16, v2, 0x1

    goto :goto_9

    :cond_a
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    goto :goto_a

    :cond_b
    move-object/from16 v19, v5

    :goto_a
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public final printCurrentLoad()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    new-instance v1, Lcom/android/internal/util/FastPrintWriter;

    const/4 v2, 0x0

    const/16 v3, 0x80

    invoke-direct {v1, v0, v2, v3}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/Writer;ZI)V

    const-string v2, "Load: "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/internal/os/ProcessCpuTracker;->mLoad1:F

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(F)V

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/internal/os/ProcessCpuTracker;->mLoad5:F

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(F)V

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/internal/os/ProcessCpuTracker;->mLoad15:F

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(F)V

    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public final printCurrentState(J)Ljava/lang/String;
    .locals 33

    move-object/from16 v13, p0

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    move-object v12, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/ProcessCpuTracker;->buildWorkingProcs()V

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    move-object v11, v0

    new-instance v0, Lcom/android/internal/util/FastPrintWriter;

    const/4 v10, 0x0

    const/16 v1, 0x400

    invoke-direct {v0, v11, v10, v1}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/Writer;ZI)V

    move-object v9, v0

    const-string v0, "CPU usage from "

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, v13, Lcom/android/internal/os/ProcessCpuTracker;->mLastSampleTime:J

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    iget-wide v0, v13, Lcom/android/internal/os/ProcessCpuTracker;->mLastSampleTime:J

    sub-long v0, p1, v0

    invoke-virtual {v9, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    const-string/jumbo v0, "ms to "

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, v13, Lcom/android/internal/os/ProcessCpuTracker;->mCurrentSampleTime:J

    sub-long v0, p1, v0

    invoke-virtual {v9, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    const-string/jumbo v0, "ms ago"

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-wide v0, v13, Lcom/android/internal/os/ProcessCpuTracker;->mLastSampleTime:J

    sub-long v0, v0, p1

    invoke-virtual {v9, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    const-string/jumbo v0, "ms to "

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, v13, Lcom/android/internal/os/ProcessCpuTracker;->mCurrentSampleTime:J

    sub-long v0, v0, p1

    invoke-virtual {v9, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    const-string/jumbo v0, "ms later"

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_0
    const-string v0, " ("

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/util/Date;

    iget-wide v1, v13, Lcom/android/internal/os/ProcessCpuTracker;->mLastSampleWallTime:J

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v12, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " to "

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/util/Date;

    iget-wide v1, v13, Lcom/android/internal/os/ProcessCpuTracker;->mCurrentSampleWallTime:J

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v12, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, ")"

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, v13, Lcom/android/internal/os/ProcessCpuTracker;->mCurrentSampleTime:J

    iget-wide v2, v13, Lcom/android/internal/os/ProcessCpuTracker;->mLastSampleTime:J

    sub-long v14, v0, v2

    iget-wide v0, v13, Lcom/android/internal/os/ProcessCpuTracker;->mCurrentSampleRealTime:J

    iget-wide v2, v13, Lcom/android/internal/os/ProcessCpuTracker;->mLastSampleRealTime:J

    sub-long v16, v0, v2

    const-wide/16 v0, 0x0

    cmp-long v2, v16, v0

    const-wide/16 v3, 0x64

    if-lez v2, :cond_1

    mul-long v0, v14, v3

    div-long v0, v0, v16

    nop

    :cond_1
    move-wide v7, v0

    cmp-long v0, v7, v3

    if-eqz v0, :cond_2

    const-string v0, " with "

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v9, v7, v8}, Ljava/io/PrintWriter;->print(J)V

    const-string v0, "% awake"

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_2
    const-string v0, ":"

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget v0, v13, Lcom/android/internal/os/ProcessCpuTracker;->mRelUserTime:I

    iget v1, v13, Lcom/android/internal/os/ProcessCpuTracker;->mRelSystemTime:I

    add-int/2addr v0, v1

    iget v1, v13, Lcom/android/internal/os/ProcessCpuTracker;->mRelIoWaitTime:I

    add-int/2addr v0, v1

    iget v1, v13, Lcom/android/internal/os/ProcessCpuTracker;->mRelIrqTime:I

    add-int/2addr v0, v1

    iget v1, v13, Lcom/android/internal/os/ProcessCpuTracker;->mRelSoftIrqTime:I

    add-int/2addr v0, v1

    iget v1, v13, Lcom/android/internal/os/ProcessCpuTracker;->mRelIdleTime:I

    add-int v18, v0, v1

    iget-object v0, v13, Lcom/android/internal/os/ProcessCpuTracker;->mWorkingProcs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v0, v10

    :goto_1
    move v5, v0

    if-ge v5, v6, :cond_8

    iget-object v0, v13, Lcom/android/internal/os/ProcessCpuTracker;->mWorkingProcs:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    iget-boolean v0, v4, Lcom/android/internal/os/ProcessCpuTracker$Stats;->added:Z

    if-eqz v0, :cond_3

    const-string v0, " +"

    :goto_2
    move-object v2, v0

    goto :goto_3

    :cond_3
    iget-boolean v0, v4, Lcom/android/internal/os/ProcessCpuTracker$Stats;->removed:Z

    if-eqz v0, :cond_4

    const-string v0, " -"

    goto :goto_2

    :cond_4
    const-string v0, "  "

    goto :goto_2

    :goto_3
    iget v3, v4, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    iget-object v1, v4, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    move-object/from16 v19, v11

    iget-wide v10, v4, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_uptime:J

    long-to-int v10, v10

    iget v11, v4, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    iget v0, v4, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-wide/from16 v24, v7

    iget v8, v4, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_minfaults:I

    iget v7, v4, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_majfaults:I

    move/from16 v26, v0

    move-object v0, v13

    move-object/from16 v27, v1

    move-object v1, v9

    move-object/from16 v28, v4

    move-object/from16 v4, v27

    move/from16 v27, v5

    move v5, v10

    move/from16 v29, v6

    move v6, v11

    move/from16 v30, v7

    move/from16 v7, v26

    move v11, v8

    move/from16 v8, v21

    move-object v10, v9

    move/from16 v9, v22

    move-object/from16 v31, v10

    const/16 v20, 0x0

    move/from16 v10, v23

    move-object/from16 v32, v19

    move-object/from16 v19, v12

    move/from16 v12, v30

    invoke-direct/range {v0 .. v12}, Lcom/android/internal/os/ProcessCpuTracker;->printProcessCPU(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;IIIIIIII)V

    move-object/from16 v12, v28

    iget-boolean v0, v12, Lcom/android/internal/os/ProcessCpuTracker$Stats;->removed:Z

    if-nez v0, :cond_7

    iget-object v0, v12, Lcom/android/internal/os/ProcessCpuTracker$Stats;->workingThreads:Ljava/util/ArrayList;

    if-eqz v0, :cond_7

    iget-object v0, v12, Lcom/android/internal/os/ProcessCpuTracker$Stats;->workingThreads:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v11

    move/from16 v0, v20

    :goto_4
    move v10, v0

    if-ge v10, v11, :cond_7

    iget-object v0, v12, Lcom/android/internal/os/ProcessCpuTracker$Stats;->workingThreads:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    nop

    iget-boolean v0, v9, Lcom/android/internal/os/ProcessCpuTracker$Stats;->added:Z

    if-eqz v0, :cond_5

    const-string v0, "   +"

    :goto_5
    move-object v2, v0

    goto :goto_6

    :cond_5
    iget-boolean v0, v9, Lcom/android/internal/os/ProcessCpuTracker$Stats;->removed:Z

    if-eqz v0, :cond_6

    const-string v0, "   -"

    goto :goto_5

    :cond_6
    const-string v0, "    "

    goto :goto_5

    :goto_6
    iget v3, v9, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    iget-object v4, v9, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    iget-wide v0, v12, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_uptime:J

    long-to-int v5, v0

    iget v6, v9, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    iget v7, v9, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    const/4 v8, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v26, 0x0

    move-object v0, v13

    move-object/from16 v1, v31

    move-object/from16 v28, v9

    move/from16 v9, v21

    move/from16 v21, v10

    move/from16 v10, v22

    move/from16 v22, v11

    move/from16 v11, v23

    move-object/from16 v23, v12

    move/from16 v12, v26

    invoke-direct/range {v0 .. v12}, Lcom/android/internal/os/ProcessCpuTracker;->printProcessCPU(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;IIIIIIII)V

    add-int/lit8 v0, v21, 0x1

    move/from16 v11, v22

    move-object/from16 v12, v23

    goto :goto_4

    :cond_7
    add-int/lit8 v0, v27, 0x1

    move-object/from16 v12, v19

    move/from16 v10, v20

    move-wide/from16 v7, v24

    move/from16 v6, v29

    move-object/from16 v9, v31

    move-object/from16 v11, v32

    goto/16 :goto_1

    :cond_8
    move/from16 v29, v6

    move-wide/from16 v24, v7

    move-object/from16 v31, v9

    move-object/from16 v32, v11

    move-object/from16 v19, v12

    const-string v2, ""

    const/4 v3, -0x1

    const-string v4, "TOTAL"

    iget v6, v13, Lcom/android/internal/os/ProcessCpuTracker;->mRelUserTime:I

    iget v7, v13, Lcom/android/internal/os/ProcessCpuTracker;->mRelSystemTime:I

    iget v8, v13, Lcom/android/internal/os/ProcessCpuTracker;->mRelIoWaitTime:I

    iget v9, v13, Lcom/android/internal/os/ProcessCpuTracker;->mRelIrqTime:I

    iget v10, v13, Lcom/android/internal/os/ProcessCpuTracker;->mRelSoftIrqTime:I

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v0, v13

    move-object/from16 v1, v31

    move/from16 v5, v18

    invoke-direct/range {v0 .. v12}, Lcom/android/internal/os/ProcessCpuTracker;->printProcessCPU(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;IIIIIIII)V

    move-object/from16 v0, v31

    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    move-object/from16 v1, v32

    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public readCurTotalCpuTime()J
    .locals 15

    iget-object v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mSystemCpuData:[J

    const-string v1, "/proc/stat"

    sget-object v2, Lcom/android/internal/os/ProcessCpuTracker;->SYSTEM_CPU_FORMAT:[I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v0, v3}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    aget-wide v1, v0, v1

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    add-long/2addr v1, v3

    iget-wide v3, p0, Lcom/android/internal/os/ProcessCpuTracker;->mJiffyMillis:J

    mul-long/2addr v1, v3

    const/4 v3, 0x2

    aget-wide v3, v0, v3

    iget-wide v5, p0, Lcom/android/internal/os/ProcessCpuTracker;->mJiffyMillis:J

    mul-long/2addr v3, v5

    const/4 v5, 0x3

    aget-wide v5, v0, v5

    iget-wide v7, p0, Lcom/android/internal/os/ProcessCpuTracker;->mJiffyMillis:J

    mul-long/2addr v5, v7

    const/4 v7, 0x4

    aget-wide v7, v0, v7

    iget-wide v9, p0, Lcom/android/internal/os/ProcessCpuTracker;->mJiffyMillis:J

    mul-long/2addr v7, v9

    const/4 v9, 0x5

    aget-wide v9, v0, v9

    iget-wide v11, p0, Lcom/android/internal/os/ProcessCpuTracker;->mJiffyMillis:J

    mul-long/2addr v9, v11

    const/4 v11, 0x6

    aget-wide v11, v0, v11

    iget-wide v13, p0, Lcom/android/internal/os/ProcessCpuTracker;->mJiffyMillis:J

    mul-long/2addr v11, v13

    add-long v13, v1, v3

    add-long/2addr v13, v5

    add-long/2addr v13, v7

    add-long/2addr v13, v9

    add-long/2addr v13, v11

    return-wide v13

    :cond_0
    const-wide/16 v1, 0x0

    return-wide v1
.end method

.method public update()V
    .locals 26

    move-object/from16 v7, p0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    iget-object v14, v7, Lcom/android/internal/os/ProcessCpuTracker;->mSystemCpuData:[J

    const-string v0, "/proc/stat"

    sget-object v1, Lcom/android/internal/os/ProcessCpuTracker;->SYSTEM_CPU_FORMAT:[I

    const/4 v15, 0x0

    invoke-static {v0, v1, v15, v14, v15}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v0

    const/16 v16, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_0

    aget-wide v0, v14, v5

    aget-wide v2, v14, v6

    add-long/2addr v0, v2

    iget-wide v2, v7, Lcom/android/internal/os/ProcessCpuTracker;->mJiffyMillis:J

    mul-long/2addr v0, v2

    aget-wide v2, v14, v16

    iget-wide v5, v7, Lcom/android/internal/os/ProcessCpuTracker;->mJiffyMillis:J

    mul-long/2addr v2, v5

    const/4 v4, 0x3

    aget-wide v4, v14, v4

    move-wide/from16 v18, v12

    iget-wide v12, v7, Lcom/android/internal/os/ProcessCpuTracker;->mJiffyMillis:J

    mul-long/2addr v4, v12

    const/4 v6, 0x4

    aget-wide v12, v14, v6

    move-wide/from16 v20, v10

    iget-wide v10, v7, Lcom/android/internal/os/ProcessCpuTracker;->mJiffyMillis:J

    mul-long/2addr v12, v10

    const/4 v6, 0x5

    aget-wide v10, v14, v6

    move-wide/from16 v22, v8

    iget-wide v8, v7, Lcom/android/internal/os/ProcessCpuTracker;->mJiffyMillis:J

    mul-long/2addr v10, v8

    const/4 v6, 0x6

    aget-wide v8, v14, v6

    move-object/from16 v24, v14

    iget-wide v14, v7, Lcom/android/internal/os/ProcessCpuTracker;->mJiffyMillis:J

    mul-long/2addr v8, v14

    iget-wide v14, v7, Lcom/android/internal/os/ProcessCpuTracker;->mBaseUserTime:J

    sub-long v14, v0, v14

    long-to-int v6, v14

    iput v6, v7, Lcom/android/internal/os/ProcessCpuTracker;->mRelUserTime:I

    iget-wide v14, v7, Lcom/android/internal/os/ProcessCpuTracker;->mBaseSystemTime:J

    sub-long v14, v2, v14

    long-to-int v6, v14

    iput v6, v7, Lcom/android/internal/os/ProcessCpuTracker;->mRelSystemTime:I

    iget-wide v14, v7, Lcom/android/internal/os/ProcessCpuTracker;->mBaseIoWaitTime:J

    sub-long v14, v12, v14

    long-to-int v6, v14

    iput v6, v7, Lcom/android/internal/os/ProcessCpuTracker;->mRelIoWaitTime:I

    iget-wide v14, v7, Lcom/android/internal/os/ProcessCpuTracker;->mBaseIrqTime:J

    sub-long v14, v10, v14

    long-to-int v6, v14

    iput v6, v7, Lcom/android/internal/os/ProcessCpuTracker;->mRelIrqTime:I

    iget-wide v14, v7, Lcom/android/internal/os/ProcessCpuTracker;->mBaseSoftIrqTime:J

    sub-long v14, v8, v14

    long-to-int v6, v14

    iput v6, v7, Lcom/android/internal/os/ProcessCpuTracker;->mRelSoftIrqTime:I

    iget-wide v14, v7, Lcom/android/internal/os/ProcessCpuTracker;->mBaseIdleTime:J

    sub-long v14, v4, v14

    long-to-int v6, v14

    iput v6, v7, Lcom/android/internal/os/ProcessCpuTracker;->mRelIdleTime:I

    const/4 v6, 0x1

    iput-boolean v6, v7, Lcom/android/internal/os/ProcessCpuTracker;->mRelStatsAreGood:Z

    iput-wide v0, v7, Lcom/android/internal/os/ProcessCpuTracker;->mBaseUserTime:J

    iput-wide v2, v7, Lcom/android/internal/os/ProcessCpuTracker;->mBaseSystemTime:J

    iput-wide v12, v7, Lcom/android/internal/os/ProcessCpuTracker;->mBaseIoWaitTime:J

    iput-wide v10, v7, Lcom/android/internal/os/ProcessCpuTracker;->mBaseIrqTime:J

    iput-wide v8, v7, Lcom/android/internal/os/ProcessCpuTracker;->mBaseSoftIrqTime:J

    iput-wide v4, v7, Lcom/android/internal/os/ProcessCpuTracker;->mBaseIdleTime:J

    goto :goto_0

    :cond_0
    move-wide/from16 v22, v8

    move-wide/from16 v20, v10

    move-wide/from16 v18, v12

    move-object/from16 v24, v14

    :goto_0
    iget-wide v0, v7, Lcom/android/internal/os/ProcessCpuTracker;->mCurrentSampleTime:J

    iput-wide v0, v7, Lcom/android/internal/os/ProcessCpuTracker;->mLastSampleTime:J

    move-wide/from16 v8, v22

    iput-wide v8, v7, Lcom/android/internal/os/ProcessCpuTracker;->mCurrentSampleTime:J

    iget-wide v0, v7, Lcom/android/internal/os/ProcessCpuTracker;->mCurrentSampleRealTime:J

    iput-wide v0, v7, Lcom/android/internal/os/ProcessCpuTracker;->mLastSampleRealTime:J

    move-wide/from16 v10, v20

    iput-wide v10, v7, Lcom/android/internal/os/ProcessCpuTracker;->mCurrentSampleRealTime:J

    iget-wide v0, v7, Lcom/android/internal/os/ProcessCpuTracker;->mCurrentSampleWallTime:J

    iput-wide v0, v7, Lcom/android/internal/os/ProcessCpuTracker;->mLastSampleWallTime:J

    move-wide/from16 v12, v18

    iput-wide v12, v7, Lcom/android/internal/os/ProcessCpuTracker;->mCurrentSampleWallTime:J

    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    move-object v14, v0

    :try_start_0
    const-string v2, "/proc"

    const/4 v3, -0x1

    iget-boolean v4, v7, Lcom/android/internal/os/ProcessCpuTracker;->mFirst:Z

    iget-object v5, v7, Lcom/android/internal/os/ProcessCpuTracker;->mCurPids:[I

    iget-object v0, v7, Lcom/android/internal/os/ProcessCpuTracker;->mProcStats:Ljava/util/ArrayList;

    move-object v1, v7

    const/4 v15, 0x0

    move/from16 v17, v6

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/os/ProcessCpuTracker;->collectStats(Ljava/lang/String;IZ[ILjava/util/ArrayList;)[I

    move-result-object v0

    iput-object v0, v7, Lcom/android/internal/os/ProcessCpuTracker;->mCurPids:[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v14}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    nop

    iget-object v0, v7, Lcom/android/internal/os/ProcessCpuTracker;->mLoadAverageData:[F

    const-string v1, "/proc/loadavg"

    sget-object v2, Lcom/android/internal/os/ProcessCpuTracker;->LOAD_AVERAGE_FORMAT:[I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v3, v0}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v1

    if-eqz v1, :cond_2

    aget v1, v0, v15

    aget v2, v0, v17

    aget v3, v0, v16

    iget v4, v7, Lcom/android/internal/os/ProcessCpuTracker;->mLoad1:F

    cmpl-float v4, v1, v4

    if-nez v4, :cond_1

    iget v4, v7, Lcom/android/internal/os/ProcessCpuTracker;->mLoad5:F

    cmpl-float v4, v2, v4

    if-nez v4, :cond_1

    iget v4, v7, Lcom/android/internal/os/ProcessCpuTracker;->mLoad15:F

    cmpl-float v4, v3, v4

    if-eqz v4, :cond_2

    :cond_1
    iput v1, v7, Lcom/android/internal/os/ProcessCpuTracker;->mLoad1:F

    iput v2, v7, Lcom/android/internal/os/ProcessCpuTracker;->mLoad5:F

    iput v3, v7, Lcom/android/internal/os/ProcessCpuTracker;->mLoad15:F

    invoke-virtual {v7, v1, v2, v3}, Lcom/android/internal/os/ProcessCpuTracker;->onLoadChanged(FFF)V

    :cond_2
    iput-boolean v15, v7, Lcom/android/internal/os/ProcessCpuTracker;->mWorkingProcsSorted:Z

    iput-boolean v15, v7, Lcom/android/internal/os/ProcessCpuTracker;->mFirst:Z

    return-void

    :catchall_0
    move-exception v0

    invoke-static {v14}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v0
.end method

.class public Lcom/android/internal/os/GpuPowerCalculator;
.super Lcom/android/internal/os/PowerCalculator;
.source "GpuPowerCalculator.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "GpuPowerCalculator"


# instance fields
.field private final mPowerGpuNormal:[D

.field private final mSpeedStepTimes:[J


# direct methods
.method public constructor <init>(Lcom/android/internal/os/PowerProfile;)V
    .locals 6

    invoke-direct {p0}, Lcom/android/internal/os/PowerCalculator;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/os/PowerProfile;->getNumGpuSpeedSteps()I

    move-result v0

    const-string v1, "GpuPowerCalculator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "speedSteps "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array v1, v0, [D

    iput-object v1, p0, Lcom/android/internal/os/GpuPowerCalculator;->mPowerGpuNormal:[D

    new-array v1, v0, [J

    iput-object v1, p0, Lcom/android/internal/os/GpuPowerCalculator;->mSpeedStepTimes:[J

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/android/internal/os/GpuPowerCalculator;->mPowerGpuNormal:[D

    const-string v3, "gpu.active"

    invoke-virtual {p1, v3, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;I)D

    move-result-wide v3

    aput-wide v3, v2, v1

    const-string v2, "GpuPowerCalculator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GpuPowerCalculator "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/internal/os/GpuPowerCalculator;->mPowerGpuNormal:[D

    aget-wide v4, v4, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public calculateApp(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats$Uid;JJI)V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/os/GpuPowerCalculator;->mSpeedStepTimes:[J

    array-length v1, v1

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    move-wide v5, v2

    move v2, v4

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v3, v0, Lcom/android/internal/os/GpuPowerCalculator;->mSpeedStepTimes:[J

    move-object/from16 v7, p2

    move/from16 v8, p7

    invoke-virtual {v7, v2, v8}, Landroid/os/BatteryStats$Uid;->getTimeAtGpuSpeed(II)J

    move-result-wide v9

    aput-wide v9, v3, v2

    iget-object v3, v0, Lcom/android/internal/os/GpuPowerCalculator;->mSpeedStepTimes:[J

    aget-wide v9, v3, v2

    add-long/2addr v5, v9

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move-object/from16 v7, p2

    move/from16 v8, p7

    const-wide/16 v2, 0x1

    invoke-static {v5, v6, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    const-wide/16 v5, 0x0

    nop

    :goto_1
    const-wide/16 v9, 0x0

    const-wide v11, 0x414b774000000000L    # 3600000.0

    if-ge v4, v1, :cond_2

    iget-object v13, v0, Lcom/android/internal/os/GpuPowerCalculator;->mSpeedStepTimes:[J

    aget-wide v13, v13, v4

    long-to-double v13, v13

    iget-object v15, v0, Lcom/android/internal/os/GpuPowerCalculator;->mPowerGpuNormal:[D

    aget-wide v15, v15, v4

    mul-double/2addr v13, v15

    cmpl-double v9, v13, v9

    if-eqz v9, :cond_1

    const-string v9, "GpuPowerCalculator"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "UID "

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v15

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ": GPU step #"

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " power="

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-double v11, v13, v11

    invoke-static {v11, v12}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    add-double/2addr v5, v13

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    cmpl-double v4, v5, v9

    if-eqz v4, :cond_3

    const-string v4, "GpuPowerCalculator"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "UID "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ": gpu total power="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-double v13, v5, v11

    invoke-static {v13, v14}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    div-double v9, v5, v11

    move-object/from16 v4, p1

    iput-wide v9, v4, Lcom/android/internal/os/BatterySipper;->gpuPowerMah:D

    return-void
.end method

.class public Lcom/android/internal/os/KernelGpuSpeedReader;
.super Ljava/lang/Object;
.source "KernelGpuSpeedReader.java"


# static fields
.field private static final BUFFER_SIZE:I = 0x1000

.field private static final MAX_SPEEDS:I = 0x3c

.field private static final TAG:Ljava/lang/String; = "KernelGpuSpeedReader"

.field private static UTIL_ONLY_FORMAT:I

.field private static UTIL_STATS_FORMAT:I

.field private static fGpuFileExist:Z

.field private static fGpuUtilFileExist:Z

.field private static sTimeInStatePath:Ljava/lang/String;

.field private static sUtilizationFormat:I

.field private static sUtilizationPath:Ljava/lang/String;


# instance fields
.field private mBuffer:[B

.field private mDeltaSpeedTimes:[J

.field private mLastSpeedTimes:[J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/os/KernelGpuSpeedReader;->sTimeInStatePath:Ljava/lang/String;

    sput-object v0, Lcom/android/internal/os/KernelGpuSpeedReader;->sUtilizationPath:Ljava/lang/String;

    const/4 v0, 0x0

    sput v0, Lcom/android/internal/os/KernelGpuSpeedReader;->sUtilizationFormat:I

    sput-boolean v0, Lcom/android/internal/os/KernelGpuSpeedReader;->fGpuFileExist:Z

    sput-boolean v0, Lcom/android/internal/os/KernelGpuSpeedReader;->fGpuUtilFileExist:Z

    const/4 v0, 0x1

    sput v0, Lcom/android/internal/os/KernelGpuSpeedReader;->UTIL_ONLY_FORMAT:I

    const/4 v0, 0x2

    sput v0, Lcom/android/internal/os/KernelGpuSpeedReader;->UTIL_STATS_FORMAT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3c

    new-array v1, v0, [J

    iput-object v1, p0, Lcom/android/internal/os/KernelGpuSpeedReader;->mLastSpeedTimes:[J

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/internal/os/KernelGpuSpeedReader;->mDeltaSpeedTimes:[J

    const/16 v0, 0x1000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/os/KernelGpuSpeedReader;->mBuffer:[B

    invoke-static {}, Lcom/android/internal/os/KernelGpuSpeedReader;->setGpuTimeInStatsPath()Z

    invoke-static {}, Lcom/android/internal/os/KernelGpuSpeedReader;->setUtilizationPath()Z

    iget-object v0, p0, Lcom/android/internal/os/KernelGpuSpeedReader;->mDeltaSpeedTimes:[J

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->fill([JJ)V

    return-void
.end method

.method private readFile(Ljava/lang/String;C)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    move-object v1, v0

    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    iget-object v2, p0, Lcom/android/internal/os/KernelGpuSpeedReader;->mBuffer:[B

    invoke-virtual {v1, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v2

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    if-lez v2, :cond_2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    iget-object v5, p0, Lcom/android/internal/os/KernelGpuSpeedReader;->mBuffer:[B

    aget-byte v5, v5, v4

    if-ne v5, p2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    new-instance v5, Ljava/lang/String;

    iget-object v6, p0, Lcom/android/internal/os/KernelGpuSpeedReader;->mBuffer:[B

    invoke-direct {v5, v6, v3, v4}, Ljava/lang/String;-><init>([BII)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    :goto_2
    return-object v5

    :cond_2
    nop

    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    goto :goto_5

    :catch_1
    move-exception v2

    goto :goto_3

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_3

    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_4

    :catch_2
    move-exception v2

    :cond_3
    :goto_4
    throw v0

    :catch_3
    move-exception v2

    if-eqz v1, :cond_4

    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    goto :goto_3

    :catch_4
    move-exception v2

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_3

    :cond_4
    :goto_5
    return-object v0
.end method

.method private static setGpuTimeInStatsPath()Z
    .locals 7

    const-string v0, "/sys/devices/platform/13900000.mali/time_in_state"

    const-string v1, "/sys/devices/platform/17500000.mali/time_in_state"

    const-string v2, "/sys/devices/14ac0000.mali/time_in_state"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v5}, Ljava/io/File;->canRead()Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/internal/os/KernelGpuSpeedReader;->fGpuFileExist:Z

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/internal/os/KernelGpuSpeedReader;->sTimeInStatePath:Ljava/lang/String;

    return v1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method private static setUtilizationPath()Z
    .locals 3

    const-string v0, "/sys/devices/platform/13900000.mali/utilization"

    sget v1, Lcom/android/internal/os/KernelGpuSpeedReader;->UTIL_ONLY_FORMAT:I

    invoke-static {v0, v1}, Lcom/android/internal/os/KernelGpuSpeedReader;->setUtilizationPathIfValid(Ljava/lang/String;I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "/sys/devices/platform/17500000.mali/utilization"

    sget v2, Lcom/android/internal/os/KernelGpuSpeedReader;->UTIL_ONLY_FORMAT:I

    invoke-static {v0, v2}, Lcom/android/internal/os/KernelGpuSpeedReader;->setUtilizationPathIfValid(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const-string v0, "/sys/devices/14ac0000.mali/utilization_stats"

    sget v2, Lcom/android/internal/os/KernelGpuSpeedReader;->UTIL_STATS_FORMAT:I

    invoke-static {v0, v2}, Lcom/android/internal/os/KernelGpuSpeedReader;->setUtilizationPathIfValid(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private static setUtilizationPathIfValid(Ljava/lang/String;I)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/os/KernelGpuSpeedReader;->fGpuUtilFileExist:Z

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/internal/os/KernelGpuSpeedReader;->sUtilizationPath:Ljava/lang/String;

    sput p1, Lcom/android/internal/os/KernelGpuSpeedReader;->sUtilizationFormat:I

    return v0

    :cond_1
    return v0
.end method


# virtual methods
.method public checkGpuFile()Z
    .locals 1

    sget-boolean v0, Lcom/android/internal/os/KernelGpuSpeedReader;->fGpuFileExist:Z

    return v0
.end method

.method public checkGpuUtilFile()Z
    .locals 1

    sget-boolean v0, Lcom/android/internal/os/KernelGpuSpeedReader;->fGpuUtilFileExist:Z

    return v0
.end method

.method public getGpuUtilCurr()J
    .locals 8

    const-wide/16 v0, 0x0

    sget v2, Lcom/android/internal/os/KernelGpuSpeedReader;->sUtilizationFormat:I

    sget v3, Lcom/android/internal/os/KernelGpuSpeedReader;->UTIL_ONLY_FORMAT:I

    const-wide/16 v4, 0x0

    const/16 v6, 0xa

    if-ne v2, v3, :cond_1

    sget-object v2, Lcom/android/internal/os/KernelGpuSpeedReader;->sUtilizationPath:Ljava/lang/String;

    invoke-direct {p0, v2, v6}, Lcom/android/internal/os/KernelGpuSpeedReader;->readFile(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long v0, v3

    goto :goto_0

    :catch_0
    move-exception v3

    :goto_0
    goto :goto_1

    :cond_0
    const-string v3, "KernelGpuSpeedReader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/android/internal/os/KernelGpuSpeedReader;->sUtilizationPath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " is not exist !!! "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v4

    :cond_1
    sget v2, Lcom/android/internal/os/KernelGpuSpeedReader;->sUtilizationFormat:I

    sget v3, Lcom/android/internal/os/KernelGpuSpeedReader;->UTIL_STATS_FORMAT:I

    if-ne v2, v3, :cond_3

    sget-object v2, Lcom/android/internal/os/KernelGpuSpeedReader;->sUtilizationPath:Ljava/lang/String;

    invoke-direct {p0, v2, v6}, Lcom/android/internal/os/KernelGpuSpeedReader;->readFile(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    :try_start_1
    new-instance v3, Ljava/util/StringTokenizer;

    const-string v4, " "

    invoke-direct {v3, v2, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v4, v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    int-to-long v0, v4

    goto :goto_1

    :catch_1
    move-exception v3

    goto :goto_1

    :cond_2
    const-string v3, "KernelGpuSpeedReader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/android/internal/os/KernelGpuSpeedReader;->sUtilizationPath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " is not exist !!! "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v4

    :cond_3
    :goto_1
    return-wide v0
.end method

.method public readDelta()[J
    .locals 10

    sget-object v0, Lcom/android/internal/os/KernelGpuSpeedReader;->sTimeInStatePath:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/os/KernelGpuSpeedReader;->mDeltaSpeedTimes:[J

    return-object v0

    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    sget-object v2, Lcom/android/internal/os/KernelGpuSpeedReader;->sTimeInStatePath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v1, 0x0

    :try_start_1
    new-instance v2, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v3, 0x20

    invoke-direct {v2, v3}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    move-object v5, v4

    if-eqz v4, :cond_1

    invoke-virtual {v2, v5}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    invoke-virtual {v2}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    const-wide/16 v8, 0xa

    mul-long/2addr v6, v8

    iget-object v4, p0, Lcom/android/internal/os/KernelGpuSpeedReader;->mDeltaSpeedTimes:[J

    iget-object v8, p0, Lcom/android/internal/os/KernelGpuSpeedReader;->mLastSpeedTimes:[J

    aget-wide v8, v8, v3

    sub-long v8, v6, v8

    aput-wide v8, v4, v3

    iget-object v4, p0, Lcom/android/internal/os/KernelGpuSpeedReader;->mLastSpeedTimes:[J

    aput-wide v6, v4, v3
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catchall_0
    move-exception v2

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    if-eqz v1, :cond_2

    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_1
    move-exception v3

    :try_start_5
    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    :goto_2
    throw v2
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :catch_2
    move-exception v0

    const-string v1, "KernelGpuSpeedReader"

    const-string v2, "Failed to read gpu-freq"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v1, p0, Lcom/android/internal/os/KernelGpuSpeedReader;->mDeltaSpeedTimes:[J

    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Ljava/util/Arrays;->fill([JJ)V

    :goto_3
    iget-object v0, p0, Lcom/android/internal/os/KernelGpuSpeedReader;->mDeltaSpeedTimes:[J

    return-object v0
.end method

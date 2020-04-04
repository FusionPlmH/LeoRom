.class public Lcom/android/internal/os/KernelUidCpuTimeReader;
.super Lcom/android/internal/os/KernelUidCpuTimeReaderBase;
.source "KernelUidCpuTimeReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/KernelUidCpuTimeReader$ExceptionLog;,
        Lcom/android/internal/os/KernelUidCpuTimeReader$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/os/KernelUidCpuTimeReaderBase<",
        "Lcom/android/internal/os/KernelUidCpuTimeReader$Callback;",
        ">;"
    }
.end annotation


# static fields
.field private static final ENG_MODE:Z

.field private static final SHIP_BUILD:Z

.field private static final TAG:Ljava/lang/String;

.field private static final sProcFile:Ljava/lang/String; = "/proc/uid_cputime/show_uid_stat"

.field private static final sRemoveUidProcFile:Ljava/lang/String; = "/proc/uid_cputime/remove_uid_range"


# instance fields
.field private MAX_LOG:I

.field private final mExceptionLogs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/os/KernelUidCpuTimeReader$ExceptionLog;",
            ">;"
        }
    .end annotation
.end field

.field private mLastLine:Ljava/lang/String;

.field private mLastSystemTimeUs:Landroid/util/SparseLongArray;

.field private mLastTimeReadUs:J

.field private mLastUpTimeReadUs:J

.field private mLastUserTimeUs:Landroid/util/SparseLongArray;


# direct methods
.method private static synthetic $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    .locals 1

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    :goto_0
    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lcom/android/internal/os/KernelUidCpuTimeReader;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/os/KernelUidCpuTimeReader;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "true"

    const-string/jumbo v1, "ro.product_ship"

    const-string/jumbo v2, "true"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/os/KernelUidCpuTimeReader;->SHIP_BUILD:Z

    const-string v0, "eng"

    const-string/jumbo v1, "ro.build.type"

    const-string v2, "Default"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/os/KernelUidCpuTimeReader;->ENG_MODE:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/internal/os/KernelUidCpuTimeReaderBase;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/KernelUidCpuTimeReader;->mExceptionLogs:Ljava/util/ArrayList;

    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastUserTimeUs:Landroid/util/SparseLongArray;

    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastSystemTimeUs:Landroid/util/SparseLongArray;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastTimeReadUs:J

    iput-wide v0, p0, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastUpTimeReadUs:J

    const/16 v0, 0xa

    iput v0, p0, Lcom/android/internal/os/KernelUidCpuTimeReader;->MAX_LOG:I

    return-void
.end method

.method private removeUidsFromKernelModule(II)V
    .locals 5

    sget-object v0, Lcom/android/internal/os/KernelUidCpuTimeReader;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removing uids "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWritesMask()I

    move-result v0

    :try_start_0
    new-instance v1, Ljava/io/FileWriter;

    const-string v2, "/proc/uid_cputime/remove_uid_range"

    invoke-direct {v1, v2}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, 0x0

    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/FileWriter;->flush()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v2, v1}, Lcom/android/internal/os/KernelUidCpuTimeReader;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_0
    move-exception v3

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    :try_start_4
    invoke-static {v2, v1}, Lcom/android/internal/os/KernelUidCpuTimeReader;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v3
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    :try_start_5
    sget-object v2, Lcom/android/internal/os/KernelUidCpuTimeReader;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to remove uids "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " from uid_cputime module"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_1
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    nop

    return-void

    :goto_2
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    throw v1
.end method

.method private triggerRamDump()V
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/android/internal/os/KernelUidCpuTimeReader;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "triggerRamDump()"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/io/FileWriter;

    const-string v2, "/proc/sysrq-trigger"

    invoke-direct {v1, v2}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    const/16 v1, 0x63

    invoke-virtual {v0, v1}, Ljava/io/FileWriter;->write(I)V

    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v1

    sget-object v2, Lcom/android/internal/os/KernelUidCpuTimeReader;->TAG:Ljava/lang/String;

    const-string v3, "No sysrq_trigger"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    :try_start_2
    sget-object v2, Lcom/android/internal/os/KernelUidCpuTimeReader;->TAG:Ljava/lang/String;

    const-string v3, "Failed to write to /proc/sysrq-trigger"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_0

    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :cond_0
    :goto_1
    return-void

    :goto_2
    if-eqz v0, :cond_1

    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    :catch_2
    move-exception v2

    sget-object v3, Lcom/android/internal/os/KernelUidCpuTimeReader;->TAG:Ljava/lang/String;

    const-string v4, "No sysrq_trigger"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_3
    throw v1
.end method


# virtual methods
.method public addExceptionLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/android/internal/os/KernelUidCpuTimeReader$ExceptionLog;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/internal/os/KernelUidCpuTimeReader$ExceptionLog;-><init>(Lcom/android/internal/os/KernelUidCpuTimeReader;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/os/KernelUidCpuTimeReader;->mExceptionLogs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Lcom/android/internal/os/KernelUidCpuTimeReader;->MAX_LOG:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/internal/os/KernelUidCpuTimeReader;->mExceptionLogs:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    iget-object v1, p0, Lcom/android/internal/os/KernelUidCpuTimeReader;->mExceptionLogs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public dump()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KernelUidCpuTimeReader Exception :\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/internal/os/KernelUidCpuTimeReader;->mExceptionLogs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    add-int/lit8 v2, v1, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/os/KernelUidCpuTimeReader;->mExceptionLogs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public readAbsolute(Lcom/android/internal/os/KernelUidCpuTimeReader$Callback;)V
    .locals 14

    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReadsMask()I

    move-result v0

    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    const-string v3, "/proc/uid_cputime/show_uid_stat"

    invoke-direct {v2, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, 0x0

    :try_start_1
    new-instance v3, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v4, 0x20

    invoke-direct {v3, v4}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    move-object v5, v4

    if-eqz v4, :cond_0

    invoke-virtual {v3, v5}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0xa

    invoke-static {v6, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v9

    invoke-virtual {v3}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v10

    invoke-virtual {v3}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v12

    move-object v8, p1

    invoke-interface/range {v8 .. v13}, Lcom/android/internal/os/KernelUidCpuTimeReader$Callback;->onUidCpuTime(IJJ)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_0
    :try_start_2
    invoke-static {v2, v1}, Lcom/android/internal/os/KernelUidCpuTimeReader;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_0
    move-exception v3

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    :try_start_4
    invoke-static {v2, v1}, Lcom/android/internal/os/KernelUidCpuTimeReader;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v3
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    :try_start_5
    sget-object v2, Lcom/android/internal/os/KernelUidCpuTimeReader;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to read uid_cputime: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_2
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    nop

    return-void

    :goto_3
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    throw v1
.end method

.method protected readDeltaImpl(Lcom/android/internal/os/KernelUidCpuTimeReader$Callback;)V
    .locals 40

    move-object/from16 v1, p0

    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReadsMask()I

    move-result v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    mul-long/2addr v7, v5

    const/4 v9, 0x0

    move-object v10, v9

    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v11, Ljava/io/FileReader;

    const-string v12, "/proc/uid_cputime/show_uid_stat"

    invoke-direct {v11, v12}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_10
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_f
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_e
    .catchall {:try_start_0 .. :try_end_0} :catchall_a

    move-object v11, v0

    :try_start_1
    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v12, 0x20

    invoke-direct {v0, v12}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    :goto_0
    invoke-virtual {v11}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v12
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_8

    move-object v10, v12

    if-eqz v12, :cond_9

    :try_start_2
    invoke-virtual {v0, v10}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v13

    const/4 v14, 0x1

    sub-int/2addr v13, v14

    const/4 v15, 0x0

    invoke-virtual {v12, v15, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    const/16 v14, 0xa

    invoke-static {v13, v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v13

    invoke-virtual {v0}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15, v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v17

    move-wide/from16 v23, v17

    invoke-virtual {v0}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15, v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v14
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    const/16 v17, 0x0

    move-wide/from16 v18, v23

    move-wide/from16 v20, v14

    if-eqz p1, :cond_7

    move-object/from16 v25, v10

    :try_start_3
    iget-wide v9, v1, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastTimeReadUs:J

    const-wide/16 v26, 0x0

    cmp-long v9, v9, v26

    if-eqz v9, :cond_6

    iget-object v9, v1, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastUserTimeUs:Landroid/util/SparseLongArray;

    invoke-virtual {v9, v13}, Landroid/util/SparseLongArray;->indexOfKey(I)I

    move-result v9

    if-ltz v9, :cond_3

    iget-object v10, v1, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastUserTimeUs:Landroid/util/SparseLongArray;

    invoke-virtual {v10, v9}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v28

    sub-long v18, v18, v28

    iget-object v10, v1, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastSystemTimeUs:Landroid/util/SparseLongArray;

    invoke-virtual {v10, v9}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v28

    sub-long v20, v20, v28

    iget-wide v5, v1, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastTimeReadUs:J
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    sub-long v5, v3, v5

    move-wide/from16 v30, v3

    :try_start_4
    iget-wide v3, v1, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastUpTimeReadUs:J

    sub-long v3, v7, v3

    cmp-long v10, v18, v26

    if-ltz v10, :cond_2

    cmp-long v10, v20, v26

    if-gez v10, :cond_0

    move-object/from16 v34, v0

    move-wide/from16 v35, v3

    move-wide/from16 v37, v7

    move-object/from16 v39, v11

    move-wide/from16 v3, v23

    goto/16 :goto_1

    :cond_0
    const-wide/16 v28, 0x4

    mul-long v28, v28, v3

    add-long v32, v18, v20

    cmp-long v10, v28, v32

    if-gez v10, :cond_1

    new-instance v10, Ljava/lang/StringBuilder;

    move-object/from16 v34, v0

    const-string v0, "cpu time over : cpu data for UID="

    invoke-direct {v10, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, v10

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "!\n"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "Time between reads: "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v35, v3

    const-wide/16 v28, 0x3e8

    div-long v3, v5, v28

    invoke-static {v3, v4, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Previous times: u="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastUserTimeUs:Landroid/util/SparseLongArray;

    invoke-virtual {v3, v9}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v3

    const-wide/16 v28, 0x3e8

    div-long v3, v3, v28

    invoke-static {v3, v4, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    const-string v3, " s="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastSystemTimeUs:Landroid/util/SparseLongArray;

    invoke-virtual {v3, v9}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v3

    const-wide/16 v28, 0x3e8

    div-long v3, v3, v28

    invoke-static {v3, v4, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    const-string v3, "\nCurrent times: u="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-wide/from16 v37, v7

    move-wide/from16 v3, v23

    const-wide/16 v23, 0x3e8

    :try_start_5
    div-long v7, v3, v23

    invoke-static {v7, v8, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    const-string v7, " s="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object/from16 v39, v11

    const-wide/16 v7, 0x3e8

    :try_start_6
    div-long v10, v14, v7

    invoke-static {v10, v11, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    const-string v7, "\nDelta: u="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v7, 0x3e8

    div-long v10, v18, v7

    invoke-static {v10, v11, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    const-string v7, " s="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v7, 0x3e8

    div-long v10, v20, v7

    invoke-static {v10, v11, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    sget-object v7, Lcom/android/internal/os/KernelUidCpuTimeReader;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v18, 0x0

    const-wide/16 v20, 0x0

    const-wide/16 v7, 0x3e8

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    move-object v3, v11

    move-object/from16 v10, v25

    const/4 v4, 0x0

    goto/16 :goto_9

    :catch_0
    move-exception v0

    move-object v9, v0

    move-object v3, v11

    goto/16 :goto_8

    :cond_1
    move-object/from16 v34, v0

    move-wide/from16 v37, v7

    move-object/from16 v39, v11

    move-wide/from16 v3, v23

    const-wide/16 v7, 0x3e8

    goto/16 :goto_2

    :cond_2
    move-object/from16 v34, v0

    move-wide/from16 v35, v3

    move-wide/from16 v37, v7

    move-object/from16 v39, v11

    move-wide/from16 v3, v23

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v7, "Malformed cpu data for UID="

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "!\n"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "Time between reads: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v7, 0x3e8

    div-long v10, v5, v7

    invoke-static {v10, v11, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    const-string v7, "\n"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "Previous times: u="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastUserTimeUs:Landroid/util/SparseLongArray;

    invoke-virtual {v7, v9}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v7

    const-wide/16 v10, 0x3e8

    div-long/2addr v7, v10

    invoke-static {v7, v8, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    const-string v7, " s="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastSystemTimeUs:Landroid/util/SparseLongArray;

    invoke-virtual {v7, v9}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v7

    const-wide/16 v10, 0x3e8

    div-long/2addr v7, v10

    invoke-static {v7, v8, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    const-string v7, "\nCurrent times: u="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v7, 0x3e8

    div-long v10, v3, v7

    invoke-static {v10, v11, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    const-string v7, " s="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v7, 0x3e8

    div-long v10, v14, v7

    invoke-static {v10, v11, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    const-string v7, "\nDelta: u="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v7, 0x3e8

    div-long v10, v18, v7

    invoke-static {v10, v11, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    const-string v7, " s="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v7, 0x3e8

    div-long v10, v20, v7

    invoke-static {v10, v11, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    sget-object v10, Lcom/android/internal/os/KernelUidCpuTimeReader;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    const-wide/16 v18, 0x0

    const-wide/16 v20, 0x0

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object/from16 v10, v25

    goto/16 :goto_6

    :catch_1
    move-exception v0

    move-object v9, v0

    goto/16 :goto_7

    :catchall_2
    move-exception v0

    move-wide/from16 v37, v7

    move-object v3, v11

    move-object/from16 v10, v25

    const/4 v4, 0x0

    goto/16 :goto_9

    :catch_2
    move-exception v0

    move-wide/from16 v37, v7

    move-object v9, v0

    move-object v3, v11

    goto/16 :goto_8

    :cond_3
    move-object/from16 v34, v0

    move-wide/from16 v30, v3

    move-wide/from16 v37, v7

    move-object/from16 v39, v11

    move-wide/from16 v3, v23

    move-wide v7, v5

    :goto_2
    cmp-long v0, v18, v26

    if-nez v0, :cond_5

    cmp-long v0, v20, v26

    if-eqz v0, :cond_4

    goto :goto_3

    :cond_4
    const/16 v16, 0x0

    goto :goto_4

    :cond_5
    :goto_3
    const/16 v16, 0x1

    :goto_4
    move/from16 v17, v16

    goto :goto_5

    :cond_6
    move-object/from16 v34, v0

    move-wide/from16 v30, v3

    move-wide/from16 v37, v7

    move-object/from16 v39, v11

    move-wide/from16 v3, v23

    move-wide v7, v5

    goto :goto_5

    :catchall_3
    move-exception v0

    move-wide/from16 v30, v3

    move-wide/from16 v37, v7

    move-object v3, v11

    move-object/from16 v10, v25

    const/4 v4, 0x0

    goto/16 :goto_9

    :catch_3
    move-exception v0

    move-wide/from16 v30, v3

    move-wide/from16 v37, v7

    move-object v9, v0

    move-object v3, v11

    goto/16 :goto_8

    :cond_7
    move-object/from16 v34, v0

    move-wide/from16 v30, v3

    move-wide/from16 v37, v7

    move-object/from16 v25, v10

    move-object/from16 v39, v11

    move-wide/from16 v3, v23

    move-wide v7, v5

    :goto_5
    move/from16 v0, v17

    move-wide/from16 v5, v18

    move-wide/from16 v9, v20

    :try_start_7
    iget-object v11, v1, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastUserTimeUs:Landroid/util/SparseLongArray;

    invoke-virtual {v11, v13, v3, v4}, Landroid/util/SparseLongArray;->put(IJ)V

    iget-object v11, v1, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastSystemTimeUs:Landroid/util/SparseLongArray;

    invoke-virtual {v11, v13, v14, v15}, Landroid/util/SparseLongArray;->put(IJ)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    move-object/from16 v11, v25

    :try_start_8
    iput-object v11, v1, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastLine:Ljava/lang/String;

    if-eqz v0, :cond_8

    move-object/from16 v17, p1

    move/from16 v18, v13

    move-wide/from16 v19, v5

    move-wide/from16 v21, v9

    invoke-interface/range {v17 .. v22}, Lcom/android/internal/os/KernelUidCpuTimeReader$Callback;->onUidCpuTime(IJJ)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :cond_8
    nop

    move-wide v5, v7

    move-object v10, v11

    move-wide/from16 v3, v30

    move-object/from16 v0, v34

    move-wide/from16 v7, v37

    move-object/from16 v11, v39

    const/4 v9, 0x0

    goto/16 :goto_0

    :catchall_4
    move-exception v0

    move-object v10, v11

    :goto_6
    move-object/from16 v3, v39

    const/4 v4, 0x0

    goto/16 :goto_9

    :catch_4
    move-exception v0

    move-object v9, v0

    move-object/from16 v25, v11

    :goto_7
    move-object/from16 v3, v39

    goto/16 :goto_8

    :catchall_5
    move-exception v0

    move-object/from16 v11, v25

    move-object v10, v11

    move-object/from16 v3, v39

    const/4 v4, 0x0

    goto/16 :goto_9

    :catch_5
    move-exception v0

    move-object/from16 v11, v25

    move-object v9, v0

    move-object/from16 v3, v39

    goto/16 :goto_8

    :catchall_6
    move-exception v0

    move-wide/from16 v30, v3

    move-wide/from16 v37, v7

    move-object/from16 v39, v11

    move-object v11, v10

    move-object/from16 v3, v39

    const/4 v4, 0x0

    goto :goto_9

    :catch_6
    move-exception v0

    move-wide/from16 v30, v3

    move-wide/from16 v37, v7

    move-object/from16 v39, v11

    move-object v11, v10

    move-object v9, v0

    move-object/from16 v25, v11

    move-object/from16 v3, v39

    goto :goto_8

    :cond_9
    move-wide/from16 v30, v3

    move-wide/from16 v37, v7

    move-object/from16 v39, v11

    move-object v11, v10

    move-object/from16 v3, v39

    const/4 v4, 0x0

    :try_start_9
    invoke-static {v4, v3}, Lcom/android/internal/os/KernelUidCpuTimeReader;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_9
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_9 .. :try_end_9} :catch_8
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_7
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    nop

    move-object v10, v11

    goto/16 :goto_f

    :catchall_7
    move-exception v0

    move-object v10, v11

    goto/16 :goto_c

    :catch_7
    move-exception v0

    move-object v10, v11

    goto :goto_a

    :catch_8
    move-exception v0

    move-object v10, v11

    goto/16 :goto_b

    :catch_9
    move-exception v0

    move-object v10, v11

    goto/16 :goto_d

    :catchall_8
    move-exception v0

    move-wide/from16 v30, v3

    move-wide/from16 v37, v7

    move-object v4, v9

    move-object v3, v11

    goto :goto_9

    :catch_a
    move-exception v0

    move-wide/from16 v30, v3

    move-wide/from16 v37, v7

    move-object v3, v11

    move-object v9, v0

    move-object/from16 v25, v10

    :goto_8
    :try_start_a
    throw v9
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_9

    :catchall_9
    move-exception v0

    move-object v4, v9

    move-object/from16 v10, v25

    :goto_9
    :try_start_b
    invoke-static {v4, v3}, Lcom/android/internal/os/KernelUidCpuTimeReader;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v0
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_d
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_b .. :try_end_b} :catch_c
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_b} :catch_b
    .catchall {:try_start_b .. :try_end_b} :catchall_b

    :catch_b
    move-exception v0

    goto :goto_a

    :catch_c
    move-exception v0

    goto :goto_b

    :catch_d
    move-exception v0

    goto/16 :goto_d

    :catchall_a
    move-exception v0

    goto/16 :goto_10

    :catch_e
    move-exception v0

    move-wide/from16 v30, v3

    move-wide/from16 v37, v7

    :goto_a
    :try_start_c
    sget-object v3, Lcom/android/internal/os/KernelUidCpuTimeReader;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to read uid_cputime(NumberFormatException): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v3, Lcom/android/internal/os/KernelUidCpuTimeReader;->SHIP_BUILD:Z

    if-eqz v3, :cond_a

    sget-boolean v3, Lcom/android/internal/os/KernelUidCpuTimeReader;->ENG_MODE:Z

    if-nez v3, :cond_a

    iget-object v3, v1, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastLine:Ljava/lang/String;

    invoke-virtual {v1, v3, v10}, Lcom/android/internal/os/KernelUidCpuTimeReader;->addExceptionLog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_e

    :cond_a
    sget-object v3, Lcom/android/internal/os/KernelUidCpuTimeReader;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BufferedReader read(last): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastLine:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/android/internal/os/KernelUidCpuTimeReader;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BufferedReader read: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/os/KernelUidCpuTimeReader;->triggerRamDump()V

    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "KernelUidCpuTimeReader exception"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :catch_f
    move-exception v0

    move-wide/from16 v30, v3

    move-wide/from16 v37, v7

    :goto_b
    sget-object v3, Lcom/android/internal/os/KernelUidCpuTimeReader;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to read uid_cputime(StringIndexOutOfBoundsException): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringIndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v3, Lcom/android/internal/os/KernelUidCpuTimeReader;->SHIP_BUILD:Z

    if-eqz v3, :cond_b

    sget-boolean v3, Lcom/android/internal/os/KernelUidCpuTimeReader;->ENG_MODE:Z

    if-nez v3, :cond_b

    iget-object v3, v1, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastLine:Ljava/lang/String;

    invoke-virtual {v1, v3, v10}, Lcom/android/internal/os/KernelUidCpuTimeReader;->addExceptionLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    :cond_b
    sget-object v3, Lcom/android/internal/os/KernelUidCpuTimeReader;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BufferedReader read(last): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastLine:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/android/internal/os/KernelUidCpuTimeReader;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BufferedReader read: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/os/KernelUidCpuTimeReader;->triggerRamDump()V

    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "KernelUidCpuTimeReader exception"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_b

    :catchall_b
    move-exception v0

    :goto_c
    move-wide/from16 v3, v30

    move-wide/from16 v7, v37

    goto :goto_10

    :catch_10
    move-exception v0

    move-wide/from16 v30, v3

    move-wide/from16 v37, v7

    :goto_d
    :try_start_d
    sget-object v3, Lcom/android/internal/os/KernelUidCpuTimeReader;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to read uid_cputime: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_c

    :goto_e
    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    nop

    :goto_f
    move-wide/from16 v3, v30

    iput-wide v3, v1, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastTimeReadUs:J

    move-wide/from16 v7, v37

    iput-wide v7, v1, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastUpTimeReadUs:J

    const-string v0, ""

    iput-object v0, v1, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastLine:Ljava/lang/String;

    return-void

    :catchall_c
    move-exception v0

    move-wide/from16 v3, v30

    move-wide/from16 v7, v37

    :goto_10
    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    throw v0
.end method

.method protected bridge synthetic readDeltaImpl(Lcom/android/internal/os/KernelUidCpuTimeReaderBase$Callback;)V
    .locals 0

    check-cast p1, Lcom/android/internal/os/KernelUidCpuTimeReader$Callback;

    invoke-virtual {p0, p1}, Lcom/android/internal/os/KernelUidCpuTimeReader;->readDeltaImpl(Lcom/android/internal/os/KernelUidCpuTimeReader$Callback;)V

    return-void
.end method

.method public removeUid(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastSystemTimeUs:Landroid/util/SparseLongArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseLongArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastSystemTimeUs:Landroid/util/SparseLongArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseLongArray;->removeAt(I)V

    iget-object v1, p0, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastUserTimeUs:Landroid/util/SparseLongArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseLongArray;->removeAt(I)V

    :cond_0
    invoke-direct {p0, p1, p1}, Lcom/android/internal/os/KernelUidCpuTimeReader;->removeUidsFromKernelModule(II)V

    return-void
.end method

.method public removeUidsInRange(II)V
    .locals 4

    if-ge p2, p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastSystemTimeUs:Landroid/util/SparseLongArray;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/util/SparseLongArray;->put(IJ)V

    iget-object v0, p0, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastUserTimeUs:Landroid/util/SparseLongArray;

    invoke-virtual {v0, p1, v1, v2}, Landroid/util/SparseLongArray;->put(IJ)V

    iget-object v0, p0, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastSystemTimeUs:Landroid/util/SparseLongArray;

    invoke-virtual {v0, p2, v1, v2}, Landroid/util/SparseLongArray;->put(IJ)V

    iget-object v0, p0, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastUserTimeUs:Landroid/util/SparseLongArray;

    invoke-virtual {v0, p2, v1, v2}, Landroid/util/SparseLongArray;->put(IJ)V

    iget-object v0, p0, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastSystemTimeUs:Landroid/util/SparseLongArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseLongArray;->indexOfKey(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastSystemTimeUs:Landroid/util/SparseLongArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseLongArray;->indexOfKey(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastSystemTimeUs:Landroid/util/SparseLongArray;

    sub-int v3, v1, v0

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v0, v3}, Landroid/util/SparseLongArray;->removeAtRange(II)V

    iget-object v2, p0, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastUserTimeUs:Landroid/util/SparseLongArray;

    sub-int v3, v1, v0

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v0, v3}, Landroid/util/SparseLongArray;->removeAtRange(II)V

    invoke-direct {p0, p1, p2}, Lcom/android/internal/os/KernelUidCpuTimeReader;->removeUidsFromKernelModule(II)V

    return-void
.end method

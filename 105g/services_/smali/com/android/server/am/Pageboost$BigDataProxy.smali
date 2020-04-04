.class final Lcom/android/server/am/Pageboost$BigDataProxy;
.super Ljava/lang/Object;
.source "Pageboost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/Pageboost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BigDataProxy"
.end annotation


# static fields
.field private static CNT_INFO:I = 0x0

.field private static ENABLED:Z = false

.field private static final FILENAME:Ljava/lang/String; = "/data/misc/pageboost/last_bigdata_string"

.field private static cnt_DLRH:I

.field private static cnt_DMLH:I

.field private static cnt_DPDC:I

.field private static cnt_LRH:I

.field private static cnt_MLH:I

.field private static cnt_TPDC:I

.field private static cnt_VRDC:I

.field private static cnt_VRHC:I

.field private static cnt_VRLU:I

.field private static last_VRDT:J

.field private static final lock:Ljava/lang/Object;

.field private static mSemHqmManager:Landroid/os/SemHqmManager;

.field private static sum_VRDT:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/Pageboost$BigDataProxy;->mSemHqmManager:Landroid/os/SemHqmManager;

    const/4 v0, 0x0

    sput v0, Lcom/android/server/am/Pageboost$BigDataProxy;->cnt_TPDC:I

    sput v0, Lcom/android/server/am/Pageboost$BigDataProxy;->cnt_LRH:I

    sput v0, Lcom/android/server/am/Pageboost$BigDataProxy;->cnt_MLH:I

    sput v0, Lcom/android/server/am/Pageboost$BigDataProxy;->cnt_DPDC:I

    sput v0, Lcom/android/server/am/Pageboost$BigDataProxy;->cnt_DLRH:I

    sput v0, Lcom/android/server/am/Pageboost$BigDataProxy;->cnt_DMLH:I

    sput v0, Lcom/android/server/am/Pageboost$BigDataProxy;->cnt_VRLU:I

    sput v0, Lcom/android/server/am/Pageboost$BigDataProxy;->cnt_VRHC:I

    sput v0, Lcom/android/server/am/Pageboost$BigDataProxy;->cnt_VRDC:I

    sput v0, Lcom/android/server/am/Pageboost$BigDataProxy;->sum_VRDT:I

    const/16 v1, 0xa

    sput v1, Lcom/android/server/am/Pageboost$BigDataProxy;->CNT_INFO:I

    const-wide/16 v1, 0x0

    sput-wide v1, Lcom/android/server/am/Pageboost$BigDataProxy;->last_VRDT:J

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lcom/android/server/am/Pageboost$BigDataProxy;->lock:Ljava/lang/Object;

    sput-boolean v0, Lcom/android/server/am/Pageboost$BigDataProxy;->ENABLED:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static InitBigDataProxy()V
    .locals 8

    sget-object v0, Lcom/android/server/am/Pageboost$BigDataProxy;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$3100()Landroid/content/Context;

    move-result-object v1

    const-string v2, "HqmManagerService"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/SemHqmManager;

    sput-object v1, Lcom/android/server/am/Pageboost$BigDataProxy;->mSemHqmManager:Landroid/os/SemHqmManager;

    sget-object v1, Lcom/android/server/am/Pageboost$BigDataProxy;->mSemHqmManager:Landroid/os/SemHqmManager;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    sput-boolean v2, Lcom/android/server/am/Pageboost$BigDataProxy;->ENABLED:Z

    :cond_0
    sget-boolean v1, Lcom/android/server/am/Pageboost$BigDataProxy;->ENABLED:Z

    if-eqz v1, :cond_c

    invoke-static {}, Lcom/android/server/am/Pageboost;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v3, "bigdata init started"

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v1, Ljava/lang/String;

    const-string v3, "/data/misc/pageboost/last_bigdata_string"

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/String;

    invoke-static {v3, v5}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v3

    invoke-static {v3}, Ljava/nio/file/Files;->readAllBytes(Ljava/nio/file/Path;)[B

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>([B)V

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    array-length v6, v3

    sget v7, Lcom/android/server/am/Pageboost$BigDataProxy;->CNT_INFO:I

    if-gt v6, v7, :cond_b

    add-int/lit8 v6, v5, 0x1

    array-length v7, v3

    if-ge v5, v7, :cond_1

    aget-object v5, v3, v4

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    goto :goto_0

    :cond_1
    move v5, v4

    :goto_0
    sput v5, Lcom/android/server/am/Pageboost$BigDataProxy;->cnt_TPDC:I

    add-int/lit8 v5, v6, 0x1

    array-length v7, v3

    if-ge v6, v7, :cond_2

    aget-object v2, v3, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_1

    :cond_2
    move v2, v4

    :goto_1
    sput v2, Lcom/android/server/am/Pageboost$BigDataProxy;->cnt_LRH:I

    add-int/lit8 v2, v5, 0x1

    array-length v6, v3

    if-ge v5, v6, :cond_3

    const/4 v5, 0x2

    aget-object v5, v3, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    goto :goto_2

    :cond_3
    move v5, v4

    :goto_2
    sput v5, Lcom/android/server/am/Pageboost$BigDataProxy;->cnt_MLH:I

    add-int/lit8 v5, v2, 0x1

    array-length v6, v3

    if-ge v2, v6, :cond_4

    const/4 v2, 0x3

    aget-object v2, v3, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_3

    :cond_4
    move v2, v4

    :goto_3
    sput v2, Lcom/android/server/am/Pageboost$BigDataProxy;->cnt_DPDC:I

    add-int/lit8 v2, v5, 0x1

    array-length v6, v3

    if-ge v5, v6, :cond_5

    const/4 v5, 0x4

    aget-object v5, v3, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    goto :goto_4

    :cond_5
    move v5, v4

    :goto_4
    sput v5, Lcom/android/server/am/Pageboost$BigDataProxy;->cnt_DLRH:I

    add-int/lit8 v5, v2, 0x1

    array-length v6, v3

    if-ge v2, v6, :cond_6

    const/4 v2, 0x5

    aget-object v2, v3, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_5

    :cond_6
    move v2, v4

    :goto_5
    sput v2, Lcom/android/server/am/Pageboost$BigDataProxy;->cnt_DMLH:I

    add-int/lit8 v2, v5, 0x1

    array-length v6, v3

    if-ge v5, v6, :cond_7

    const/4 v5, 0x6

    aget-object v5, v3, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    goto :goto_6

    :cond_7
    move v5, v4

    :goto_6
    sput v5, Lcom/android/server/am/Pageboost$BigDataProxy;->cnt_VRLU:I

    add-int/lit8 v5, v2, 0x1

    array-length v6, v3

    if-ge v2, v6, :cond_8

    const/4 v2, 0x7

    aget-object v2, v3, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_7

    :cond_8
    move v2, v4

    :goto_7
    sput v2, Lcom/android/server/am/Pageboost$BigDataProxy;->cnt_VRHC:I

    add-int/lit8 v2, v5, 0x1

    array-length v6, v3

    if-ge v5, v6, :cond_9

    const/16 v5, 0x8

    aget-object v5, v3, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    goto :goto_8

    :cond_9
    move v5, v4

    :goto_8
    sput v5, Lcom/android/server/am/Pageboost$BigDataProxy;->cnt_VRDC:I

    add-int/lit8 v5, v2, 0x1

    array-length v6, v3

    if-ge v2, v6, :cond_a

    const/16 v2, 0x9

    aget-object v2, v3, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    nop

    :cond_a
    sput v4, Lcom/android/server/am/Pageboost$BigDataProxy;->sum_VRDT:I

    goto :goto_9

    :cond_b
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "invalid bigdata file data"

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_9
    goto :goto_a

    :catch_0
    move-exception v1

    :try_start_2
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Bigdata File is not found.."

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    :goto_a
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method static synthetic access$3700()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/android/server/am/Pageboost$BigDataProxy;->makeString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static keepLastData()V
    .locals 8

    invoke-static {}, Lcom/android/server/am/Pageboost;->access$3100()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_5

    sget-boolean v0, Lcom/android/server/am/Pageboost$BigDataProxy;->ENABLED:Z

    if-nez v0, :cond_0

    goto/16 :goto_a

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/am/Pageboost$BigDataProxy;->updateMlockDisabledInfo(Z)V

    sget-object v0, Lcom/android/server/am/Pageboost$BigDataProxy;->lock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/File;

    const-string v4, "/data/misc/pageboost/last_bigdata_string"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v1, v4

    new-instance v4, Ljava/io/OutputStreamWriter;

    invoke-direct {v4, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    move-object v2, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v5, Lcom/android/server/am/Pageboost$BigDataProxy;->cnt_TPDC:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v5, Lcom/android/server/am/Pageboost$BigDataProxy;->cnt_LRH:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v5, Lcom/android/server/am/Pageboost$BigDataProxy;->cnt_MLH:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v5, Lcom/android/server/am/Pageboost$BigDataProxy;->cnt_DPDC:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v5, Lcom/android/server/am/Pageboost$BigDataProxy;->cnt_DLRH:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v5, Lcom/android/server/am/Pageboost$BigDataProxy;->cnt_DMLH:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v5, Lcom/android/server/am/Pageboost$BigDataProxy;->cnt_VRLU:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v5, Lcom/android/server/am/Pageboost$BigDataProxy;->cnt_VRHC:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v5, Lcom/android/server/am/Pageboost$BigDataProxy;->cnt_VRDC:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v5, Lcom/android/server/am/Pageboost$BigDataProxy;->sum_VRDT:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/android/server/am/Pageboost;->access$100()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "write : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2, v4}, Ljava/io/OutputStreamWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    :try_start_1
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->close()V

    goto :goto_0

    :catch_0
    move-exception v3

    goto :goto_2

    :goto_0
    nop

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catchall_0
    move-exception v3

    goto :goto_5

    :catch_1
    move-exception v3

    :try_start_2
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$100()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "invalid bigdata file data"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_1

    :try_start_3
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->close()V

    goto :goto_1

    :catch_2
    move-exception v3

    goto :goto_2

    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :goto_2
    nop

    :try_start_4
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    :cond_2
    :goto_3
    nop

    :goto_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    return-void

    :goto_5
    nop

    if-eqz v2, :cond_3

    :try_start_5
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->close()V

    goto :goto_6

    :catchall_1
    move-exception v1

    goto :goto_9

    :catch_3
    move-exception v4

    goto :goto_7

    :cond_3
    :goto_6
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_8

    :goto_7
    nop

    :try_start_6
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    nop

    :cond_4
    :goto_8
    throw v3

    :goto_9
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v1

    :cond_5
    :goto_a
    return-void
.end method

.method private static makeString()Ljava/lang/String;
    .locals 23

    sget v0, Lcom/android/server/am/Pageboost$BigDataProxy;->cnt_TPDC:I

    const/16 v1, 0x64

    const/4 v2, 0x0

    if-lez v0, :cond_0

    sget v0, Lcom/android/server/am/Pageboost$BigDataProxy;->cnt_LRH:I

    mul-int/2addr v0, v1

    sget v3, Lcom/android/server/am/Pageboost$BigDataProxy;->cnt_TPDC:I

    div-int/2addr v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    move v3, v0

    sget v0, Lcom/android/server/am/Pageboost$BigDataProxy;->cnt_TPDC:I

    if-lez v0, :cond_1

    sget v0, Lcom/android/server/am/Pageboost$BigDataProxy;->cnt_MLH:I

    mul-int/2addr v0, v1

    sget v4, Lcom/android/server/am/Pageboost$BigDataProxy;->cnt_TPDC:I

    div-int/2addr v0, v4

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    move v4, v0

    const/4 v0, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    invoke-static {}, Lcom/android/server/am/Pageboost;->access$2300()Z

    move-result v13

    if-eqz v13, :cond_b

    invoke-static {}, Lcom/android/server/am/Pageboost$Vramdisk;->access$000()Z

    move-result v13

    if-eqz v13, :cond_b

    sget v13, Lcom/android/server/am/Pageboost$BigDataProxy;->sum_VRDT:I

    const v14, 0x5265c00

    if-lt v13, v14, :cond_2

    move v13, v2

    goto :goto_2

    :cond_2
    sget v13, Lcom/android/server/am/Pageboost$BigDataProxy;->sum_VRDT:I

    sub-int/2addr v14, v13

    const v13, 0xd2f00

    div-int v13, v14, v13

    :goto_2
    move v0, v13

    if-le v0, v1, :cond_4

    const/16 v0, 0x64

    :cond_3
    :goto_3
    move v1, v0

    goto :goto_4

    :cond_4
    if-gez v0, :cond_3

    const/4 v0, 0x0

    goto :goto_3

    :goto_4
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$2400()Lcom/android/server/am/Pageboost$Vramdisk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/Pageboost$Vramdisk;->getMlockEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    goto :goto_5

    :cond_5
    const/4 v0, -0x1

    :goto_5
    move v5, v0

    invoke-static {}, Lcom/android/server/am/Pageboost;->access$2400()Lcom/android/server/am/Pageboost$Vramdisk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/Pageboost$Vramdisk;->getMlockApps()I

    move-result v6

    invoke-static {}, Lcom/android/server/am/Pageboost;->access$2400()Lcom/android/server/am/Pageboost$Vramdisk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/Pageboost$Vramdisk;->getMlockSize()J

    move-result-wide v14

    const-wide/16 v16, 0x400

    div-long v14, v14, v16

    long-to-int v7, v14

    invoke-static {}, Lcom/android/server/am/Pageboost;->access$2400()Lcom/android/server/am/Pageboost$Vramdisk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/Pageboost$Vramdisk;->getMlockLimitSize()J

    move-result-wide v14

    div-long v14, v14, v16

    long-to-int v8, v14

    invoke-static {}, Lcom/android/server/am/Pageboost;->access$400()Lcom/android/server/am/Pageboost$PageboostAppList;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-static {}, Lcom/android/server/am/Pageboost;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v14, "start check global app lru list"

    invoke-static {v0, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/am/Pageboost;->access$400()Lcom/android/server/am/Pageboost$PageboostAppList;

    move-result-object v14

    iget-object v15, v14, Lcom/android/server/am/Pageboost$PageboostAppList;->mPageboostApps:Ljava/util/LinkedList;

    monitor-enter v15

    :try_start_0
    invoke-virtual {v14}, Lcom/android/server/am/Pageboost$PageboostAppList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/am/Pageboost$PageboostAppInfo;

    move-object/from16 v18, v16

    move-object/from16 v13, v18

    invoke-virtual {v13, v2}, Lcom/android/server/am/Pageboost$PageboostAppInfo;->getExecCnt(I)I

    move-result v16

    if-eqz v16, :cond_8

    const/4 v2, 0x1

    invoke-virtual {v13, v2}, Lcom/android/server/am/Pageboost$PageboostAppInfo;->getExecCnt(I)I

    move-result v16

    if-eqz v16, :cond_8

    const/4 v2, 0x0

    invoke-virtual {v13, v2}, Lcom/android/server/am/Pageboost$PageboostAppInfo;->getAccExecTime(I)J

    move-result-wide v16

    move-object/from16 v19, v0

    invoke-virtual {v13, v2}, Lcom/android/server/am/Pageboost$PageboostAppInfo;->getExecCnt(I)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move/from16 v20, v3

    int-to-long v2, v0

    :try_start_1
    div-long v2, v16, v2

    long-to-int v0, v2

    const/4 v2, 0x1

    invoke-virtual {v13, v2}, Lcom/android/server/am/Pageboost$PageboostAppInfo;->getAccExecTime(I)J

    move-result-wide v16

    invoke-virtual {v13, v2}, Lcom/android/server/am/Pageboost$PageboostAppInfo;->getExecCnt(I)I

    move-result v3

    int-to-long v2, v3

    div-long v2, v16, v2

    long-to-int v2, v2

    sub-int v3, v0, v2

    if-lez v3, :cond_6

    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    :cond_6
    if-gez v3, :cond_7

    add-int/lit8 v10, v10, 0x1

    :cond_7
    :goto_7
    move/from16 v21, v0

    const/4 v0, 0x1

    invoke-virtual {v13, v0}, Lcom/android/server/am/Pageboost$PageboostAppInfo;->getExecCnt(I)I

    move-result v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    mul-int v0, v3, v16

    move/from16 v22, v1

    int-to-long v0, v0

    add-long/2addr v11, v0

    goto :goto_8

    :catchall_0
    move-exception v0

    move/from16 v22, v1

    goto :goto_9

    :cond_8
    move-object/from16 v19, v0

    move/from16 v22, v1

    move/from16 v20, v3

    :goto_8
    move-object/from16 v0, v19

    move/from16 v3, v20

    move/from16 v1, v22

    const/4 v2, 0x0

    goto :goto_6

    :cond_9
    move/from16 v22, v1

    move/from16 v20, v3

    :try_start_2
    monitor-exit v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const-wide/16 v0, 0x3e8

    div-long/2addr v11, v0

    invoke-static {}, Lcom/android/server/am/Pageboost;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "end check global app lru list"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v0, v22

    goto :goto_a

    :catchall_1
    move-exception v0

    move/from16 v22, v1

    move/from16 v20, v3

    :goto_9
    :try_start_3
    monitor-exit v15
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0

    :catchall_2
    move-exception v0

    goto :goto_9

    :cond_a
    move/from16 v22, v1

    move/from16 v20, v3

    move/from16 v0, v22

    goto :goto_a

    :cond_b
    move/from16 v20, v3

    :goto_a
    const-string v1, ""

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\"TPDC\":\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/android/server/am/Pageboost$BigDataProxy;->cnt_TPDC:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\"LRHR\":\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v3, v20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, "\""

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ","

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "\"MLHR\":\""

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, "\""

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ","

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "\"DPDC\":\""

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v13, Lcom/android/server/am/Pageboost$BigDataProxy;->cnt_DPDC:I

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, "\""

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ","

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "\"DLRH\":\""

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v13, Lcom/android/server/am/Pageboost$BigDataProxy;->cnt_DLRH:I

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, "\""

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ","

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "\"DMLH\":\""

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v13, Lcom/android/server/am/Pageboost$BigDataProxy;->cnt_DMLH:I

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, "\""

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ","

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "\"VRLU\":\""

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v13, Lcom/android/server/am/Pageboost$BigDataProxy;->cnt_VRLU:I

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, "\""

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ","

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "\"VRHC\":\""

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v13, Lcom/android/server/am/Pageboost$BigDataProxy;->cnt_VRHC:I

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, "\""

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ","

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "\"VRDC\":\""

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v13, Lcom/android/server/am/Pageboost$BigDataProxy;->cnt_VRDC:I

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, "\""

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ","

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "\"VRER\":\""

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, "\""

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ","

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "\"VREN\":\""

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, "\""

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ","

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "\"VRAC\":\""

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, "\""

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ","

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "\"VRMS\":\""

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, "\""

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ","

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "\"VRLS\":\""

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, "\""

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ","

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "\"VRPA\":\""

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, "\""

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ","

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "\"VRUA\":\""

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, "\""

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ","

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "\"VRPS\":\""

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v13, "\""

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static sendData()V
    .locals 12

    sget-boolean v0, Lcom/android/server/am/Pageboost$BigDataProxy;->ENABLED:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/am/Pageboost$BigDataProxy;->updateMlockDisabledInfo(Z)V

    invoke-static {}, Lcom/android/server/am/Pageboost$BigDataProxy;->makeString()Ljava/lang/String;

    move-result-object v11

    sget-object v1, Lcom/android/server/am/Pageboost$BigDataProxy;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sput v0, Lcom/android/server/am/Pageboost$BigDataProxy;->cnt_DPDC:I

    sput v0, Lcom/android/server/am/Pageboost$BigDataProxy;->cnt_DLRH:I

    sput v0, Lcom/android/server/am/Pageboost$BigDataProxy;->cnt_DMLH:I

    sput v0, Lcom/android/server/am/Pageboost$BigDataProxy;->cnt_VRLU:I

    sput v0, Lcom/android/server/am/Pageboost$BigDataProxy;->cnt_VRHC:I

    sput v0, Lcom/android/server/am/Pageboost$BigDataProxy;->cnt_VRDC:I

    sput v0, Lcom/android/server/am/Pageboost$BigDataProxy;->sum_VRDT:I

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v1, Lcom/android/server/am/Pageboost$BigDataProxy;->mSemHqmManager:Landroid/os/SemHqmManager;

    const/4 v2, 0x0

    const-string v3, "Sluggish"

    const-string v4, "VRDK"

    const-string/jumbo v5, "ph"

    const-string v6, "0.0"

    const-string/jumbo v7, "sec"

    const-string v8, ""

    const-string v10, ""

    move-object v9, v11

    invoke-virtual/range {v1 .. v10}, Landroid/os/SemHqmManager;->sendHWParamToHQM(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-static {}, Lcom/android/server/am/Pageboost;->access$2300()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/server/am/Pageboost$Vramdisk;->access$000()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/server/am/Pageboost;->access$2400()Lcom/android/server/am/Pageboost$Vramdisk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/Pageboost$Vramdisk;->getMlockEnabled()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/android/server/am/Pageboost$BigDataProxy;->updateMlockDisabledInfo(Z)V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static updateMlockDisabledInfo(Z)V
    .locals 11

    sget-boolean v0, Lcom/android/server/am/Pageboost$BigDataProxy;->ENABLED:Z

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/android/server/am/Pageboost;->access$2300()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/android/server/am/Pageboost$Vramdisk;->access$000()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    sget-object v0, Lcom/android/server/am/Pageboost$BigDataProxy;->lock:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p0, :cond_1

    :try_start_0
    sget v1, Lcom/android/server/am/Pageboost$BigDataProxy;->cnt_VRDC:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/android/server/am/Pageboost$BigDataProxy;->cnt_VRDC:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sput-wide v1, Lcom/android/server/am/Pageboost$BigDataProxy;->last_VRDT:J

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_1
    sget-wide v1, Lcom/android/server/am/Pageboost$BigDataProxy;->last_VRDT:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-wide v5, Lcom/android/server/am/Pageboost$BigDataProxy;->last_VRDT:J

    sub-long v5, v1, v5

    cmp-long v7, v5, v3

    if-lez v7, :cond_2

    sget v7, Lcom/android/server/am/Pageboost$BigDataProxy;->sum_VRDT:I

    long-to-int v8, v5

    add-int/2addr v7, v8

    sput v7, Lcom/android/server/am/Pageboost$BigDataProxy;->sum_VRDT:I

    :cond_2
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$100()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "sum_VRDT:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v9, Lcom/android/server/am/Pageboost$BigDataProxy;->sum_VRDT:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " now:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " last_VRDT:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v9, Lcom/android/server/am/Pageboost$BigDataProxy;->last_VRDT:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sput-wide v3, Lcom/android/server/am/Pageboost$BigDataProxy;->last_VRDT:J

    :cond_3
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_4
    :goto_2
    return-void
.end method

.method public static updateMlockResult(Z)V
    .locals 3

    sget-boolean v0, Lcom/android/server/am/Pageboost$BigDataProxy;->ENABLED:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Mlock Judgement : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/am/Pageboost$BigDataProxy;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget v1, Lcom/android/server/am/Pageboost$BigDataProxy;->cnt_VRLU:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/android/server/am/Pageboost$BigDataProxy;->cnt_VRLU:I

    if-eqz p0, :cond_1

    sget v1, Lcom/android/server/am/Pageboost$BigDataProxy;->cnt_VRHC:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/android/server/am/Pageboost$BigDataProxy;->cnt_VRHC:I

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static updatePrefetchResult(ZI)V
    .locals 3

    sget-boolean v0, Lcom/android/server/am/Pageboost$BigDataProxy;->ENABLED:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Prefetch Judgement : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/am/Pageboost$BigDataProxy;->lock:Ljava/lang/Object;

    monitor-enter v0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    if-eqz p0, :cond_1

    :try_start_0
    sget v1, Lcom/android/server/am/Pageboost$BigDataProxy;->cnt_MLH:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/android/server/am/Pageboost$BigDataProxy;->cnt_MLH:I

    sget v1, Lcom/android/server/am/Pageboost$BigDataProxy;->cnt_DMLH:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/android/server/am/Pageboost$BigDataProxy;->cnt_DMLH:I

    goto :goto_0

    :pswitch_1
    sget v1, Lcom/android/server/am/Pageboost$BigDataProxy;->cnt_TPDC:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/android/server/am/Pageboost$BigDataProxy;->cnt_TPDC:I

    sget v1, Lcom/android/server/am/Pageboost$BigDataProxy;->cnt_DPDC:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/android/server/am/Pageboost$BigDataProxy;->cnt_DPDC:I

    if-eqz p0, :cond_1

    sget v1, Lcom/android/server/am/Pageboost$BigDataProxy;->cnt_LRH:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/android/server/am/Pageboost$BigDataProxy;->cnt_LRH:I

    sget v1, Lcom/android/server/am/Pageboost$BigDataProxy;->cnt_DLRH:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/android/server/am/Pageboost$BigDataProxy;->cnt_DLRH:I

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

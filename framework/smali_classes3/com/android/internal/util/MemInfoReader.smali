.class public final Lcom/android/internal/util/MemInfoReader;
.super Ljava/lang/Object;
.source "MemInfoReader.java"


# static fields
.field private static final LIGHT_MEMINFO_COUNT:I = 0x8


# instance fields
.field final mInfos:[J

.field private final mLightInfos:[J

.field mbuffer:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x11

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    const/16 v0, 0x200

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/util/MemInfoReader;->mbuffer:[B

    const/16 v0, 0x8

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/internal/util/MemInfoReader;->mLightInfos:[J

    return-void
.end method


# virtual methods
.method public getCachedSize()J
    .locals 4

    invoke-virtual {p0}, Lcom/android/internal/util/MemInfoReader;->getCachedSizeKb()J

    move-result-wide v0

    const-wide/16 v2, 0x400

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public getCachedSizeKb()J
    .locals 4

    iget-object v0, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    const/4 v1, 0x2

    aget-wide v0, v0, v1

    iget-object v2, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    const/16 v3, 0xa

    aget-wide v2, v2, v3

    add-long/2addr v0, v2

    iget-object v2, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    const/4 v3, 0x3

    aget-wide v2, v2, v3

    add-long/2addr v0, v2

    iget-object v2, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    const/16 v3, 0xd

    aget-wide v2, v2, v3

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getCachedSizeLegacy()J
    .locals 4

    iget-object v0, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    const/4 v1, 0x3

    aget-wide v0, v0, v1

    const-wide/16 v2, 0x400

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public getFreeSize()J
    .locals 4

    iget-object v0, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    const/4 v1, 0x1

    aget-wide v0, v0, v1

    const-wide/16 v2, 0x400

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public getFreeSizeKb()J
    .locals 2

    iget-object v0, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    const/4 v1, 0x1

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public getKernelUsedSize()J
    .locals 4

    invoke-virtual {p0}, Lcom/android/internal/util/MemInfoReader;->getKernelUsedSizeKb()J

    move-result-wide v0

    const-wide/16 v2, 0x400

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public getKernelUsedSizeKb()J
    .locals 4

    iget-object v0, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    const/16 v1, 0x8

    aget-wide v0, v0, v1

    iget-object v2, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    const/16 v3, 0xb

    aget-wide v2, v2, v3

    add-long/2addr v0, v2

    iget-object v2, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    const/16 v3, 0xe

    aget-wide v2, v2, v3

    add-long/2addr v0, v2

    iget-object v2, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    const/16 v3, 0xf

    aget-wide v2, v2, v3

    add-long/2addr v0, v2

    iget-object v2, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    const/16 v3, 0x10

    aget-wide v2, v2, v3

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getRawInfo()[J
    .locals 1

    iget-object v0, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    return-object v0
.end method

.method public getRbinAllocedSize()J
    .locals 4

    iget-object v0, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    const/4 v1, 0x5

    aget-wide v0, v0, v1

    const-wide/16 v2, 0x400

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public getRbinTotalSize()J
    .locals 4

    iget-object v0, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    const/4 v1, 0x4

    aget-wide v0, v0, v1

    const-wide/16 v2, 0x400

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public getSwapFreeSizeKb()J
    .locals 2

    iget-object v0, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    const/4 v1, 0x7

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public getSwapTotalSizeKb()J
    .locals 2

    iget-object v0, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    const/4 v1, 0x6

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public getTotalSize()J
    .locals 4

    iget-object v0, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    const/4 v1, 0x0

    aget-wide v0, v0, v1

    const-wide/16 v2, 0x400

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public getTotalSizeKb()J
    .locals 2

    iget-object v0, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    const/4 v1, 0x0

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public getUssByPid(I)J
    .locals 17

    move-object/from16 v1, p0

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "/proc/"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v8, p1

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "/statm"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v10

    const/4 v0, 0x0

    move-object v11, v0

    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v9}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v11, v0

    iget-object v0, v1, Lcom/android/internal/util/MemInfoReader;->mbuffer:[B

    const/4 v12, 0x0

    const/16 v13, 0x200

    invoke-virtual {v11, v0, v12, v13}, Ljava/io/FileInputStream;->read([BII)I

    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V

    new-instance v0, Ljava/lang/String;

    iget-object v12, v1, Lcom/android/internal/util/MemInfoReader;->mbuffer:[B

    invoke-direct {v0, v12}, Ljava/lang/String;-><init>([B)V

    const-string v12, " "

    invoke-virtual {v0, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    aget-object v13, v12, v13

    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    const-wide/16 v15, 0x1000

    mul-long v2, v13, v15

    const/4 v13, 0x2

    aget-object v13, v12, v13

    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    mul-long v4, v13, v15

    sub-long v6, v2, v4

    nop

    :try_start_1
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    :catchall_0
    move-exception v0

    move-wide v12, v2

    move-object v2, v0

    if-eqz v11, :cond_0

    :try_start_2
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    :cond_0
    :goto_0
    invoke-static {v10}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v2

    :catch_2
    move-exception v0

    if-eqz v11, :cond_1

    :try_start_3
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    :goto_1
    goto :goto_2

    :catch_3
    move-exception v0

    :cond_1
    :goto_2
    invoke-static {v10}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    nop

    return-wide v6
.end method

.method public getZramTotalSizeKb()J
    .locals 2

    iget-object v0, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    const/16 v1, 0xc

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public readLightMemInfo()V
    .locals 5

    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/util/MemInfoReader;->mLightInfos:[J

    invoke-static {v1}, Landroid/os/Debug;->getMemInfo([J)V

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x8

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    iget-object v3, p0, Lcom/android/internal/util/MemInfoReader;->mLightInfos:[J

    aget-wide v3, v3, v1

    aput-wide v3, v2, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    nop

    return-void

    :catchall_0
    move-exception v1

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v1
.end method

.method public readMemInfo()V
    .locals 2

    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    invoke-static {v1}, Landroid/os/Debug;->getMemInfo([J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    nop

    return-void

    :catchall_0
    move-exception v1

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v1
.end method

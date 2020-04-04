.class public Lcom/samsung/android/media/QdioJNI;
.super Ljava/lang/Object;
.source "QdioJNI.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "QdioJNI"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "SEF.quram"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native AddSoundInQdioFile(Ljava/lang/String;[BILjava/lang/String;I)I
.end method

.method public static native DeleteQdioFromFile(Ljava/lang/String;)I
.end method

.method private static native ParseQdioFile(Ljava/lang/String;)[I
.end method

.method private static native ParseQdioFile64(Ljava/lang/String;)[J
.end method

.method public static checkAudioInJPEG(Ljava/lang/String;)Lcom/samsung/android/media/SemExtendedFormat$QdioJPEGData;
    .locals 6

    const/4 v0, 0x0

    nop

    invoke-static {p0}, Lcom/samsung/android/media/QdioJNI;->checkFileString(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string v1, "QdioJNI"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkAudioInJPEG input parameter is null : filename = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_0
    invoke-static {p0}, Lcom/samsung/android/media/QdioJNI;->ParseQdioFile(Ljava/lang/String;)[I

    move-result-object v1

    if-nez v1, :cond_1

    return-object v2

    :cond_1
    array-length v3, v1

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_2

    const-string v3, "QdioJNI"

    const-string v4, "Some Sound Data is broken"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_2
    new-instance v3, Lcom/samsung/android/media/SemExtendedFormat$QdioJPEGData;

    invoke-direct {v3}, Lcom/samsung/android/media/SemExtendedFormat$QdioJPEGData;-><init>()V

    move-object v0, v3

    const/4 v3, 0x0

    :goto_0
    array-length v4, v1

    div-int/lit8 v4, v4, 0x2

    if-ge v3, v4, :cond_5

    aget v4, v1, v3

    if-lez v4, :cond_4

    add-int/lit8 v4, v3, 0x1

    aget v4, v1, v4

    if-gtz v4, :cond_3

    goto :goto_1

    :cond_3
    iget-object v4, v0, Lcom/samsung/android/media/SemExtendedFormat$QdioJPEGData;->startOffset:Ljava/util/ArrayList;

    aget v5, v1, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, v0, Lcom/samsung/android/media/SemExtendedFormat$QdioJPEGData;->endOffset:Ljava/util/ArrayList;

    add-int/lit8 v5, v3, 0x1

    aget v5, v1, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v4, v0, Lcom/samsung/android/media/SemExtendedFormat$QdioJPEGData;->audio_count:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v0, Lcom/samsung/android/media/SemExtendedFormat$QdioJPEGData;->audio_count:I

    iput-object p0, v0, Lcom/samsung/android/media/SemExtendedFormat$QdioJPEGData;->filename:Ljava/lang/String;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    const-string v4, "QdioJNI"

    const-string v5, "Some Sound Data stream is broken"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_5
    return-object v0
.end method

.method public static checkFileString(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static native copyAdioData(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static copyAdioInJPEGtoPNG(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/media/QdioJNI;->checkFileString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/samsung/android/media/QdioJNI;->checkFileString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Lcom/samsung/android/media/QdioJNI;->copyAdioData(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public static getAudioDataInJPEG(Ljava/lang/String;)Lcom/samsung/android/media/SemExtendedFormat$AudioJPEGData;
    .locals 6

    const/4 v0, 0x0

    nop

    invoke-static {p0}, Lcom/samsung/android/media/QdioJNI;->checkFileString(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string v1, "QdioJNI"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAudioDataInJPEG input parameter is null : filename = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_0
    invoke-static {p0}, Lcom/samsung/android/media/QdioJNI;->ParseQdioFile(Ljava/lang/String;)[I

    move-result-object v1

    if-nez v1, :cond_1

    return-object v2

    :cond_1
    array-length v3, v1

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_2

    const-string v3, "QdioJNI"

    const-string v4, "Some Sound Data is broken"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_2
    new-instance v3, Lcom/samsung/android/media/SemExtendedFormat$AudioJPEGData;

    invoke-direct {v3}, Lcom/samsung/android/media/SemExtendedFormat$AudioJPEGData;-><init>()V

    move-object v0, v3

    const/4 v3, 0x0

    :goto_0
    array-length v4, v1

    div-int/lit8 v4, v4, 0x2

    if-ge v3, v4, :cond_5

    aget v4, v1, v3

    if-lez v4, :cond_4

    add-int/lit8 v4, v3, 0x1

    aget v4, v1, v4

    if-gtz v4, :cond_3

    goto :goto_1

    :cond_3
    iget-object v4, v0, Lcom/samsung/android/media/SemExtendedFormat$AudioJPEGData;->startOffset:Ljava/util/ArrayList;

    aget v5, v1, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, v0, Lcom/samsung/android/media/SemExtendedFormat$AudioJPEGData;->endOffset:Ljava/util/ArrayList;

    add-int/lit8 v5, v3, 0x1

    aget v5, v1, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v4, v0, Lcom/samsung/android/media/SemExtendedFormat$AudioJPEGData;->audio_count:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v0, Lcom/samsung/android/media/SemExtendedFormat$AudioJPEGData;->audio_count:I

    iput-object p0, v0, Lcom/samsung/android/media/SemExtendedFormat$AudioJPEGData;->filename:Ljava/lang/String;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    const-string v4, "QdioJNI"

    const-string v5, "Some Sound Data stream is broken"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_5
    return-object v0
.end method

.method public static getAudioDataPositionArray(Ljava/lang/String;)[J
    .locals 8

    nop

    invoke-static {p0}, Lcom/samsung/android/media/QdioJNI;->checkFileString(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "QdioJNI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAudioPositionArray input parameter is null : filename = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    invoke-static {p0}, Lcom/samsung/android/media/QdioJNI;->ParseQdioFile(Ljava/lang/String;)[I

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    array-length v2, v0

    const/4 v3, 0x2

    rem-int/2addr v2, v3

    if-eqz v2, :cond_2

    const-string v2, "QdioJNI"

    const-string v3, "Some Sound Data is broken"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_2
    new-array v1, v3, [J

    const/4 v2, 0x0

    aget v3, v0, v2

    int-to-long v3, v3

    aput-wide v3, v1, v2

    const/4 v3, 0x1

    aget v4, v0, v3

    int-to-long v4, v4

    aget-wide v6, v1, v2

    sub-long/2addr v4, v6

    aput-wide v4, v1, v3

    return-object v1
.end method

.method public static getAudioStreamBuffer(Lcom/samsung/android/media/SemExtendedFormat$AudioJPEGData;I)[B
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, [B

    if-nez p0, :cond_0

    const-string v2, "QdioJNI"

    const-string/jumbo v3, "qdioJpegData is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    iget v2, p0, Lcom/samsung/android/media/SemExtendedFormat$AudioJPEGData;->audio_count:I

    if-gt v2, p1, :cond_1

    const-string v2, "QdioJNI"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid index. file : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/media/SemExtendedFormat$AudioJPEGData;->getFileName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " has "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/samsung/android/media/SemExtendedFormat$AudioJPEGData;->audio_count:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " audio streams but index = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_1
    new-instance v2, Ljava/io/FileInputStream;

    invoke-virtual {p0}, Lcom/samsung/android/media/SemExtendedFormat$AudioJPEGData;->getFileName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/media/SemExtendedFormat$AudioJPEGData;->getStartOffset(I)I

    move-result v3

    invoke-virtual {p0, p1}, Lcom/samsung/android/media/SemExtendedFormat$AudioJPEGData;->getLength(I)I

    move-result v4

    add-int/2addr v4, v3

    invoke-virtual {v2}, Ljava/io/FileInputStream;->available()I

    move-result v5

    if-ge v5, v4, :cond_2

    const-string v5, "QdioJNI"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fis.available is smaller then audio stream end : fileLen = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/FileInputStream;->available()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", audio strema end on "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    return-object v0

    :cond_2
    :try_start_0
    const-string v5, "QdioJNI"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fis.avaliable = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/FileInputStream;->available()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "QdioJNI"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "s = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sub-int v5, v4, v3

    new-array v5, v5, [B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v5

    if-gez v3, :cond_3

    nop

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    return-object v0

    :cond_3
    int-to-long v5, v3

    :try_start_1
    invoke-virtual {v2, v5, v6}, Ljava/io/FileInputStream;->skip(J)J

    move-result-wide v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-nez v7, :cond_4

    nop

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    return-object v0

    :cond_4
    :try_start_2
    invoke-virtual {v2, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v5, :cond_5

    nop

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    nop

    return-object v1

    :goto_0
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    throw v0
.end method

.method public static getAudioStreamBuffer(Lcom/samsung/android/media/SemExtendedFormat$QdioJPEGData;I)[B
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, [B

    if-nez p0, :cond_0

    const-string v2, "QdioJNI"

    const-string/jumbo v3, "qdioJpegData is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    iget v2, p0, Lcom/samsung/android/media/SemExtendedFormat$QdioJPEGData;->audio_count:I

    if-gt v2, p1, :cond_1

    const-string v2, "QdioJNI"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid index. file : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/media/SemExtendedFormat$QdioJPEGData;->getFileName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " has "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/samsung/android/media/SemExtendedFormat$QdioJPEGData;->audio_count:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " audio streams but index = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_1
    new-instance v2, Ljava/io/FileInputStream;

    invoke-virtual {p0}, Lcom/samsung/android/media/SemExtendedFormat$QdioJPEGData;->getFileName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/media/SemExtendedFormat$QdioJPEGData;->getStartOffset(I)I

    move-result v3

    invoke-virtual {p0, p1}, Lcom/samsung/android/media/SemExtendedFormat$QdioJPEGData;->getLength(I)I

    move-result v4

    add-int/2addr v4, v3

    invoke-virtual {v2}, Ljava/io/FileInputStream;->available()I

    move-result v5

    if-ge v5, v4, :cond_2

    const-string v5, "QdioJNI"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fis.available is smaller then audio stream end : fileLen = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/FileInputStream;->available()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", audio strema end on "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    return-object v0

    :cond_2
    :try_start_0
    const-string v5, "QdioJNI"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fis.avaliable = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/FileInputStream;->available()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "QdioJNI"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "s = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sub-int v5, v4, v3

    new-array v5, v5, [B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v5

    if-gez v3, :cond_3

    nop

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    return-object v0

    :cond_3
    int-to-long v5, v3

    :try_start_1
    invoke-virtual {v2, v5, v6}, Ljava/io/FileInputStream;->skip(J)J

    move-result-wide v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-nez v7, :cond_4

    nop

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    return-object v0

    :cond_4
    :try_start_2
    invoke-virtual {v2, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v5, :cond_5

    nop

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    nop

    return-object v1

    :goto_0
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    throw v0
.end method

.method private static native getNativeVersion()I
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/samsung/android/media/QdioJNI;->getNativeVersion()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "1.02_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static isJPEG(Ljava/lang/String;)I
    .locals 4

    invoke-static {p0}, Lcom/samsung/android/media/QdioJNI;->checkFileString(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    const-string v0, "QdioJNI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isJPEG input parameter is null : filename = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    invoke-static {p0}, Lcom/samsung/android/media/QdioJNI;->isQdioFile(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    return v1
.end method

.method private static native isQdioFile(Ljava/lang/String;)I
.end method

.class public final Lcom/samsung/android/transcode/EncodeSoundNShot;
.super Lcom/samsung/android/transcode/core/EncodeImages;
.source "EncodeSoundNShot.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/transcode/EncodeSoundNShot$SEFDataPosition;
    }
.end annotation


# static fields
.field private static final SOUND_PCM_WAV:I = 0x100

.field private static final SOUND_SHOT_INFO:I = 0x800


# instance fields
.field private mSoundNShotFilePath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 8

    invoke-direct {p0}, Lcom/samsung/android/transcode/core/EncodeImages;-><init>()V

    if-lez p2, :cond_4

    if-lez p3, :cond_3

    if-eqz p1, :cond_2

    if-eqz p4, :cond_1

    invoke-direct {p0, p4}, Lcom/samsung/android/transcode/EncodeSoundNShot;->isSoundNShot(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p4, p0, Lcom/samsung/android/transcode/EncodeSoundNShot;->mSoundNShotFilePath:Ljava/lang/String;

    const-wide/16 v5, -0x1

    const/4 v0, 0x1

    new-array v7, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p4, v7, v0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v1 .. v7}, Lcom/samsung/android/transcode/EncodeSoundNShot;->initialize(Ljava/lang/String;IIJ[Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "File is not Sound and Shot."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "soundNshot path cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "File path cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "height cannot be equal to or less than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "width cannot be equal to or less than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 8

    invoke-direct {p0}, Lcom/samsung/android/transcode/core/EncodeImages;-><init>()V

    invoke-static {p2}, Lcom/samsung/android/transcode/core/Encode$EncodeResolution;->isSupportedResolution(I)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    if-eqz p3, :cond_1

    invoke-direct {p0, p3}, Lcom/samsung/android/transcode/EncodeSoundNShot;->isSoundNShot(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-static {p2, v0}, Lcom/samsung/android/transcode/util/CodecsHelper;->fillResolutionRect(ILandroid/graphics/Rect;)V

    iput-object p3, p0, Lcom/samsung/android/transcode/EncodeSoundNShot;->mSoundNShotFilePath:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    const-wide/16 v5, -0x1

    const/4 v1, 0x1

    new-array v7, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p3, v7, v1

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v7}, Lcom/samsung/android/transcode/EncodeSoundNShot;->initialize(Ljava/lang/String;IIJ[Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "File is not Sound and Shot."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "soundNshot path cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "File path cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid resolution value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static convertSDRDH(I)I
    .locals 2

    and-int/lit16 v0, p0, 0xff

    shl-int/lit8 v0, v0, 0x8

    const v1, 0xff00

    and-int/2addr v1, p0

    shr-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    return v0
.end method

.method private static getSEFDataPosition(Ljava/io/File;)Lcom/samsung/android/transcode/EncodeSoundNShot$SEFDataPosition;
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/samsung/android/transcode/EncodeSoundNShot$SEFDataPosition;

    invoke-direct {v0}, Lcom/samsung/android/transcode/EncodeSoundNShot$SEFDataPosition;-><init>()V

    move-object v1, v0

    const/4 v2, 0x4

    const/16 v3, 0x100

    const/16 v4, 0x1e

    const/16 v5, 0x15

    const-string v6, "SEFT"

    const-string v7, "IOBS"

    const/4 v0, 0x0

    move-object v8, v0

    :try_start_0
    new-array v9, v2, [B

    new-instance v10, Ljava/io/RandomAccessFile;

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "rw"

    invoke-direct {v10, v11, v12}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v8, v10

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->length()J

    move-result-wide v10

    int-to-long v12, v2

    sub-long/2addr v10, v12

    invoke-virtual {v8, v10, v11}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v8, v9}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    if-gtz v10, :cond_0

    nop

    nop

    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->close()V

    return-object v0

    :cond_0
    :try_start_1
    new-instance v11, Ljava/lang/String;

    invoke-direct {v11, v9}, Ljava/lang/String;-><init>([B)V

    const/4 v12, 0x0

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_7

    const-wide/16 v14, 0x2

    if-eqz v13, :cond_1

    :try_start_2
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->length()J

    move-result-wide v16
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object/from16 v18, v1

    int-to-long v0, v2

    mul-long/2addr v0, v14

    sub-long v0, v16, v0

    :try_start_3
    invoke-virtual {v8, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/transcode/EncodeSoundNShot;->little2big(I)I

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    mul-int/lit8 v1, v2, 0x2

    add-int/2addr v0, v1

    move-object/from16 v19, v6

    move-object/from16 v20, v7

    goto :goto_1

    :catchall_0
    move-exception v0

    move/from16 v24, v2

    move/from16 v25, v3

    move-object/from16 v19, v6

    move-object/from16 v20, v7

    :goto_0
    move-object/from16 v3, v18

    goto/16 :goto_4

    :catchall_1
    move-exception v0

    move/from16 v24, v2

    move/from16 v25, v3

    move-object/from16 v19, v6

    move-object/from16 v20, v7

    move-object v3, v1

    goto/16 :goto_4

    :cond_1
    move-object/from16 v18, v1

    :try_start_4
    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->length()J

    move-result-wide v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    move-object/from16 v19, v6

    move-object/from16 v20, v7

    int-to-long v6, v2

    mul-long/2addr v6, v14

    sub-long/2addr v0, v6

    int-to-long v6, v4

    sub-long/2addr v0, v6

    :try_start_5
    invoke-virtual {v8, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/transcode/EncodeSoundNShot;->little2big(I)I

    move-result v0

    mul-int/lit8 v1, v2, 0x2

    add-int/2addr v0, v1

    add-int/2addr v0, v4

    :goto_1
    new-array v1, v2, [B

    invoke-virtual {v8, v1}, Ljava/io/RandomAccessFile;->read([B)I

    const-wide/16 v6, 0x0

    invoke-virtual {v8, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->length()J

    move-result-wide v6

    int-to-long v12, v0

    sub-long/2addr v6, v12

    invoke-virtual {v8, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v8, v1}, Ljava/io/RandomAccessFile;->read([B)I

    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v6

    invoke-static {v6}, Lcom/samsung/android/transcode/EncodeSoundNShot;->little2big(I)I

    move-result v6

    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v7

    invoke-static {v7}, Lcom/samsung/android/transcode/EncodeSoundNShot;->little2big(I)I

    move-result v7

    new-array v12, v7, [I

    new-array v13, v7, [I

    new-array v14, v7, [I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    const/16 v16, 0x0

    :goto_2
    move/from16 v21, v16

    move/from16 v15, v21

    if-ge v15, v7, :cond_2

    move-object/from16 v23, v1

    :try_start_6
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/transcode/EncodeSoundNShot;->convertSDRDH(I)I

    move-result v1

    aput v1, v12, v15

    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/transcode/EncodeSoundNShot;->little2big(I)I

    move-result v1

    sub-int/2addr v1, v5

    aput v1, v13, v15

    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/transcode/EncodeSoundNShot;->little2big(I)I

    move-result v1

    sub-int/2addr v1, v5

    aput v1, v14, v15
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    add-int/lit8 v16, v15, 0x1

    move-object/from16 v1, v23

    goto :goto_2

    :catchall_2
    move-exception v0

    move/from16 v24, v2

    move/from16 v25, v3

    goto/16 :goto_0

    :cond_2
    move-object/from16 v23, v1

    const/16 v22, 0x0

    :goto_3
    move/from16 v1, v22

    if-ge v1, v7, :cond_4

    :try_start_7
    aget v15, v12, v1

    if-ne v15, v3, :cond_3

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->length()J

    move-result-wide v15
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    move/from16 v24, v2

    move/from16 v25, v3

    int-to-long v2, v0

    sub-long/2addr v15, v2

    :try_start_8
    aget v2, v13, v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    int-to-long v2, v2

    sub-long v2, v15, v2

    long-to-int v2, v2

    move-object/from16 v3, v18

    :try_start_9
    iput v2, v3, Lcom/samsung/android/transcode/EncodeSoundNShot$SEFDataPosition;->offset:I

    aget v2, v14, v1

    iput v2, v3, Lcom/samsung/android/transcode/EncodeSoundNShot$SEFDataPosition;->length:I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    nop

    nop

    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->close()V

    return-object v3

    :catchall_3
    move-exception v0

    goto :goto_4

    :catchall_4
    move-exception v0

    move-object/from16 v3, v18

    goto :goto_4

    :cond_3
    move/from16 v24, v2

    move/from16 v25, v3

    move-object/from16 v3, v18

    add-int/lit8 v22, v1, 0x1

    move/from16 v3, v25

    goto :goto_3

    :cond_4
    move/from16 v24, v2

    move/from16 v25, v3

    move-object/from16 v3, v18

    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->close()V

    const/4 v0, 0x0

    return-object v0

    :catchall_5
    move-exception v0

    move/from16 v24, v2

    move/from16 v25, v3

    move-object/from16 v3, v18

    goto :goto_4

    :cond_5
    move/from16 v24, v2

    move/from16 v25, v3

    move-object/from16 v19, v6

    move-object/from16 v20, v7

    move-object/from16 v3, v18

    nop

    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->close()V

    const/4 v0, 0x0

    return-object v0

    :catchall_6
    move-exception v0

    move/from16 v24, v2

    move/from16 v25, v3

    move-object/from16 v19, v6

    move-object/from16 v20, v7

    move-object/from16 v3, v18

    goto :goto_4

    :catchall_7
    move-exception v0

    move/from16 v24, v2

    move/from16 v25, v3

    move-object/from16 v19, v6

    move-object/from16 v20, v7

    move-object v3, v1

    :goto_4
    if-eqz v8, :cond_6

    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->close()V

    :cond_6
    throw v0
.end method

.method private isSoundNShot(Ljava/lang/String;)Z
    .locals 3

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    invoke-static {v0}, Lcom/samsung/android/media/SemExtendedFormat;->isValidFile(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x800

    invoke-static {v0, v2}, Lcom/samsung/android/media/SemExtendedFormat;->hasData(Ljava/io/File;I)Z

    move-result v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return v1
.end method

.method private static little2big(I)I
    .locals 2

    and-int/lit16 v0, p0, 0xff

    shl-int/lit8 v0, v0, 0x18

    const v1, 0xff00

    and-int/2addr v1, p0

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    const/high16 v1, 0xff0000

    and-int/2addr v1, p0

    shr-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    shr-int/lit8 v1, p0, 0x18

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method protected prepare()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    const-wide/16 v2, 0x400

    :try_start_0
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/samsung/android/transcode/EncodeSoundNShot;->mSoundNShotFilePath:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, v4

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v1, v4

    invoke-static {v0}, Lcom/samsung/android/transcode/EncodeSoundNShot;->getSEFDataPosition(Ljava/io/File;)Lcom/samsung/android/transcode/EncodeSoundNShot$SEFDataPosition;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v5

    iget v6, v4, Lcom/samsung/android/transcode/EncodeSoundNShot$SEFDataPosition;->offset:I

    iget v7, v4, Lcom/samsung/android/transcode/EncodeSoundNShot$SEFDataPosition;->length:I

    invoke-virtual {p0, v5, v6, v7}, Lcom/samsung/android/transcode/EncodeSoundNShot;->setAudioData(Ljava/io/FileDescriptor;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    div-long/2addr v4, v2

    long-to-int v2, v4

    invoke-virtual {p0, v2}, Lcom/samsung/android/transcode/EncodeSoundNShot;->setMaxOutputSize(I)V

    nop

    invoke-super {p0}, Lcom/samsung/android/transcode/core/EncodeImages;->prepare()V

    return-void

    :catchall_0
    move-exception v4

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    const/4 v1, 0x0

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v5

    div-long/2addr v5, v2

    long-to-int v2, v5

    invoke-virtual {p0, v2}, Lcom/samsung/android/transcode/EncodeSoundNShot;->setMaxOutputSize(I)V

    throw v4
.end method

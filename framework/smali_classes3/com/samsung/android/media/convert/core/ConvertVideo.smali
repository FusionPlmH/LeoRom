.class public Lcom/samsung/android/media/convert/core/ConvertVideo;
.super Lcom/samsung/android/media/convert/core/Convert;
.source "ConvertVideo.java"


# static fields
.field private static final IMAGE_WAIT_TIMEOUT_MS:I = 0x3e8

.field private static final KEY_ERROR_TYPE:Ljava/lang/String; = "error-type"

.field private static final KEY_MUXER_AUTHOR:Ljava/lang/String; = "param-meta-author"

.field private static final KEY_MUXER_RECORDINGMODE:Ljava/lang/String; = "param-meta-recording-mode"

.field private static final KEY_MUXER_TRANSCODING:Ljava/lang/String; = "param-meta-transcoding"

.field private static final REWRITE_AUDIO_BUFFER_SIZE:I = 0x20000

.field private static final TIMEOUT_USEC:J = 0x2710L

.field private static final VIDEO_FPS_BUF_COUNT:I = 0x5

.field private static creationTime:[B

.field private static mUseUri:Z


# instance fields
.field private formatupdated:Z

.field private mAudioExtractor:Landroid/media/MediaExtractor;

.field private mAuthor:I

.field private mContext:Landroid/content/Context;

.field private mCopyAudio:Z

.field private mHDRType:I

.field private mImgConverter:Lcom/samsung/android/media/vidsol/simgp/ImgConverter;

.field private mInputBitdepth:I

.field private mInputFilePath:Ljava/lang/String;

.field private mInputOrientationDegrees:I

.field private mInputReachedEOS:Z

.field private mInputUri:Landroid/net/Uri;

.field private mRecordingMode:I

.field private mStopLock:Ljava/lang/Object;

.field private mTrimAudioEndUs:J

.field private mTrimAudioStartUs:J

.field private mTrimVideoEndUs:J

.field private mTrimVideoStartUs:J

.field private mUpdateCreationTime:Z

.field private mVideoExtractor:Landroid/media/MediaExtractor;

.field private seidata:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mUseUri:Z

    const/4 v0, 0x4

    new-array v0, v0, [B

    sput-object v0, Lcom/samsung/android/media/convert/core/ConvertVideo;->creationTime:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/media/convert/core/Convert;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mInputOrientationDegrees:I

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mStopLock:Ljava/lang/Object;

    iput-boolean v0, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->formatupdated:Z

    iput-boolean v0, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mUpdateCreationTime:Z

    const/16 v1, 0x8

    iput v1, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mInputBitdepth:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mAuthor:I

    iput v0, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mHDRType:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mRecordingMode:I

    new-instance v1, Ljava/util/HashMap;

    const/16 v2, 0x28

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->seidata:Ljava/util/HashMap;

    iput-boolean v0, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mInputReachedEOS:Z

    return-void
.end method

.method private CheckVideoCodec(Landroid/content/Context;Landroid/net/Uri;Z)Z
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez p3, :cond_0

    invoke-static {}, Lcom/samsung/android/media/convert/util/CodecsHelper;->getRemainedResourceCapacity()I

    move-result v0

    :cond_0
    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_0
    invoke-static {p1, p2}, Lcom/samsung/android/media/convert/util/CodecsHelper;->createExtractor(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaExtractor;

    move-result-object v6

    move-object v4, v6

    if-nez v4, :cond_2

    const-string v6, "SemVideoConverter"

    const-string v7, "Can\'t create Extractor"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/media/MediaExtractor;->release()V

    :cond_1
    const/4 v4, 0x0

    return v5

    :cond_2
    :try_start_1
    invoke-static {v4}, Lcom/samsung/android/media/convert/util/CodecsHelper;->getAndSelectVideoTrackIndex(Landroid/media/MediaExtractor;)I

    move-result v6

    if-gez v6, :cond_3

    move v3, v6

    const-string v7, "SemVideoConverter"

    const-string v8, "Can\'t get VideoTrack"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    invoke-virtual {v4, v6}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v7

    const-string/jumbo v8, "width"

    invoke-virtual {v7, v8}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v8

    move v1, v8

    const-string v8, "height"

    invoke-virtual {v7, v8}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v8
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v8

    :goto_0
    if-eqz v4, :cond_4

    goto :goto_1

    :catchall_0
    move-exception v5

    goto/16 :goto_3

    :catch_0
    move-exception v6

    :try_start_2
    invoke-virtual {v6}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    if-eqz v4, :cond_4

    goto :goto_1

    :catch_1
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/NullPointerException;->printStackTrace()V

    if-eqz v4, :cond_4

    goto :goto_1

    :catch_2
    move-exception v6

    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v4, :cond_4

    :goto_1
    invoke-virtual {v4}, Landroid/media/MediaExtractor;->release()V

    :cond_4
    const/4 v4, 0x0

    nop

    if-eqz v3, :cond_5

    const-string v6, "SemVideoConverter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Extactor Error appear : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_5
    if-lez v1, :cond_8

    if-gtz v2, :cond_6

    goto :goto_2

    :cond_6
    if-nez p3, :cond_7

    if-ltz v0, :cond_7

    mul-int v6, v1, v2

    mul-int/lit8 v6, v6, 0x2

    if-ge v0, v6, :cond_7

    const-string v6, "SemVideoConverter"

    const-string v7, "Codec resource is not enough"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_7
    iput v1, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mOutputWidth:I

    iput v2, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mOutputHeight:I

    const/4 v5, 0x1

    return v5

    :cond_8
    :goto_2
    const-string v6, "SemVideoConverter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Resolution Error appear : width = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", height= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :goto_3
    if-eqz v4, :cond_9

    invoke-virtual {v4}, Landroid/media/MediaExtractor;->release()V

    :cond_9
    const/4 v4, 0x0

    throw v5
.end method

.method private CheckVideoCodec(Ljava/lang/String;Z)Z
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez p2, :cond_0

    invoke-static {}, Lcom/samsung/android/media/convert/util/CodecsHelper;->getRemainedResourceCapacity()I

    move-result v0

    :cond_0
    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_0
    invoke-static {p1}, Lcom/samsung/android/media/convert/util/CodecsHelper;->createExtractor(Ljava/lang/String;)Landroid/media/MediaExtractor;

    move-result-object v6

    move-object v4, v6

    if-nez v4, :cond_2

    const-string v6, "SemVideoConverter"

    const-string v7, "Can\'t create Extractor"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/media/MediaExtractor;->release()V

    :cond_1
    const/4 v4, 0x0

    return v5

    :cond_2
    :try_start_1
    invoke-static {v4}, Lcom/samsung/android/media/convert/util/CodecsHelper;->getAndSelectVideoTrackIndex(Landroid/media/MediaExtractor;)I

    move-result v6

    if-gez v6, :cond_3

    move v3, v6

    const-string v7, "SemVideoConverter"

    const-string v8, "Can\'t get VideoTrack"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    invoke-virtual {v4, v6}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v7

    const-string/jumbo v8, "width"

    invoke-virtual {v7, v8}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v8

    move v1, v8

    const-string v8, "height"

    invoke-virtual {v7, v8}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v8
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v8

    :goto_0
    if-eqz v4, :cond_4

    goto :goto_1

    :catchall_0
    move-exception v5

    goto/16 :goto_3

    :catch_0
    move-exception v6

    :try_start_2
    invoke-virtual {v6}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    if-eqz v4, :cond_4

    goto :goto_1

    :catch_1
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/NullPointerException;->printStackTrace()V

    if-eqz v4, :cond_4

    goto :goto_1

    :catch_2
    move-exception v6

    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v4, :cond_4

    :goto_1
    invoke-virtual {v4}, Landroid/media/MediaExtractor;->release()V

    :cond_4
    const/4 v4, 0x0

    nop

    if-eqz v3, :cond_5

    const-string v6, "SemVideoConverter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Extactor Error appear : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_5
    if-lez v1, :cond_8

    if-gtz v2, :cond_6

    goto :goto_2

    :cond_6
    if-nez p2, :cond_7

    if-ltz v0, :cond_7

    mul-int v6, v1, v2

    mul-int/lit8 v6, v6, 0x2

    if-ge v0, v6, :cond_7

    const-string v6, "SemVideoConverter"

    const-string v7, "Codec resource is not enough"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_7
    iput v1, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mOutputWidth:I

    iput v2, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mOutputHeight:I

    const/4 v5, 0x1

    return v5

    :cond_8
    :goto_2
    const-string v6, "SemVideoConverter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Resolution Error appear : width = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", height= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :goto_3
    if-eqz v4, :cond_9

    invoke-virtual {v4}, Landroid/media/MediaExtractor;->release()V

    :cond_9
    const/4 v4, 0x0

    throw v5
.end method

.method private CheckVideoFormat(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    invoke-static {p1, p2}, Lcom/samsung/android/media/convert/util/CodecsHelper;->createExtractor(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaExtractor;

    move-result-object v3

    move-object v0, v3

    invoke-static {p1, p2}, Lcom/samsung/android/media/convert/util/CodecsHelper;->createMediaMetadataRetriever(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaMetadataRetriever;

    move-result-object v3

    move-object v1, v3

    invoke-static {v0}, Lcom/samsung/android/media/convert/util/CodecsHelper;->getAndSelectVideoTrackIndex(Landroid/media/MediaExtractor;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    invoke-static {v1}, Lcom/samsung/android/media/convert/util/CodecsHelper;->isSupportedFormat(Landroid/media/MediaMetadataRetriever;)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    const-string v4, "SemVideoConverter"

    const-string v5, "Video Format is not supported"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    :cond_1
    invoke-virtual {p0, v1}, Lcom/samsung/android/media/convert/core/ConvertVideo;->getHDRMode(Landroid/media/MediaMetadataRetriever;)Z

    move-result v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_2

    const/4 v2, 0x0

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    :cond_3
    const/4 v0, 0x0

    if-eqz v1, :cond_5

    goto :goto_0

    :catchall_0
    move-exception v3

    goto :goto_1

    :catch_0
    move-exception v3

    :try_start_1
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    :cond_4
    const/4 v0, 0x0

    if-eqz v1, :cond_5

    :goto_0
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V

    :cond_5
    const/4 v1, 0x0

    nop

    return v2

    :goto_1
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    :cond_6
    const/4 v0, 0x0

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V

    :cond_7
    const/4 v1, 0x0

    throw v3
.end method

.method private CheckVideoFormat(Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    invoke-static {p1}, Lcom/samsung/android/media/convert/util/CodecsHelper;->createExtractor(Ljava/lang/String;)Landroid/media/MediaExtractor;

    move-result-object v3

    move-object v0, v3

    invoke-static {p1}, Lcom/samsung/android/media/convert/util/CodecsHelper;->createMediaMetadataRetriever(Ljava/lang/String;)Landroid/media/MediaMetadataRetriever;

    move-result-object v3

    move-object v1, v3

    invoke-static {v0}, Lcom/samsung/android/media/convert/util/CodecsHelper;->getAndSelectVideoTrackIndex(Landroid/media/MediaExtractor;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    invoke-static {v1}, Lcom/samsung/android/media/convert/util/CodecsHelper;->isSupportedFormat(Landroid/media/MediaMetadataRetriever;)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    const-string v4, "SemVideoConverter"

    const-string v5, "Video Format is not supported"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    :cond_1
    invoke-virtual {p0, v1}, Lcom/samsung/android/media/convert/core/ConvertVideo;->getHDRMode(Landroid/media/MediaMetadataRetriever;)Z

    move-result v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_2

    const/4 v2, 0x0

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    :cond_3
    const/4 v0, 0x0

    if-eqz v1, :cond_5

    goto :goto_0

    :catchall_0
    move-exception v3

    goto :goto_1

    :catch_0
    move-exception v3

    :try_start_1
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    :cond_4
    const/4 v0, 0x0

    if-eqz v1, :cond_5

    :goto_0
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V

    :cond_5
    const/4 v1, 0x0

    nop

    return v2

    :goto_1
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    :cond_6
    const/4 v0, 0x0

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V

    :cond_7
    const/4 v1, 0x0

    throw v3
.end method

.method static synthetic access$000(Lcom/samsung/android/media/convert/core/ConvertVideo;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mInputReachedEOS:Z

    return v0
.end method

.method static synthetic access$002(Lcom/samsung/android/media/convert/core/ConvertVideo;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mInputReachedEOS:Z

    return p1
.end method

.method static synthetic access$100(Lcom/samsung/android/media/convert/core/ConvertVideo;)Landroid/media/MediaExtractor;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/media/convert/core/ConvertVideo;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->seidata:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/media/convert/core/ConvertVideo;)Lcom/samsung/android/media/vidsol/simgp/ImgConverter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mImgConverter:Lcom/samsung/android/media/vidsol/simgp/ImgConverter;

    return-object v0
.end method

.method private static byteArrayToHex([B)Ljava/lang/String;
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-byte v4, p0, v3

    const-string v5, "%02x "

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    and-int/lit16 v7, v4, 0xff

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getByteArrayFromByteBuffer(Ljava/nio/ByteBuffer;)[B
    .locals 3

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    new-array v0, v0, [B

    array-length v1, v0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method private getVideoSampleSize(Landroid/media/MediaFormat;)I
    .locals 3

    const-string/jumbo v0, "mime"

    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "video/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "width"

    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    const-string v1, "height"

    invoke-virtual {p1, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    mul-int v2, v0, v1

    return v2

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isSupportedFormat(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 1

    invoke-static {p0, p1}, Lcom/samsung/android/media/convert/util/CodecsHelper;->isSupportedFormat(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method public static isSupportedFormat(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/media/convert/util/CodecsHelper;->isSupportedFormat(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isSupportedFormat(Ljava/lang/String;Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mUseUri:Z

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Lcom/samsung/android/media/convert/util/CodecsHelper;->isSupportedFormat(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    return v0

    :cond_0
    invoke-static {p0}, Lcom/samsung/android/media/convert/util/CodecsHelper;->isSupportedFormat(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static final unsignedIntToLong([B)J
    .locals 5

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    or-long/2addr v0, v2

    const/16 v2, 0x8

    shl-long/2addr v0, v2

    const/4 v3, 0x1

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    int-to-long v3, v3

    or-long/2addr v0, v3

    shl-long/2addr v0, v2

    const/4 v3, 0x2

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    int-to-long v3, v3

    or-long/2addr v0, v3

    shl-long/2addr v0, v2

    const/4 v2, 0x3

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    or-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public getHDRMode(Landroid/media/MediaMetadataRetriever;)Z
    .locals 9

    const/16 v0, 0x404

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    :try_start_0
    invoke-virtual {p1, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    const/16 v4, 0x3f7

    invoke-virtual {p1, v4}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x3fe

    invoke-virtual {p1, v5}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v4, :cond_0

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mAuthor:I

    if-eqz v5, :cond_0

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mRecordingMode:I

    :cond_0
    const-string v6, "SemVideoConverter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getHDRMode  mAuthor : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mAuthor:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", mRecordingMode : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mRecordingMode:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "10"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/16 v6, 0xa

    iput v6, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mInputBitdepth:I

    iget v7, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mAuthor:I

    if-eqz v7, :cond_1

    iget v7, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mAuthor:I

    const/16 v8, 0x8

    if-ne v7, v8, :cond_2

    :cond_1
    iget v7, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mRecordingMode:I

    if-ne v7, v6, :cond_2

    iput v3, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mHDRType:I

    goto :goto_0

    :cond_2
    iput v2, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mHDRType:I

    goto :goto_0

    :cond_3
    iput v1, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mHDRType:I

    :goto_0
    const-string v6, "SemVideoConverter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getHDRMode  mHDRType : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mHDRType:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    iget v0, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mHDRType:I

    if-ne v0, v3, :cond_4

    return v2

    :cond_4
    return v1
.end method

.method public getOutputFileSize()I
    .locals 14

    const-wide/16 v0, 0x0

    move-wide v2, v0

    const/4 v4, 0x0

    :try_start_0
    sget-boolean v5, Lcom/samsung/android/media/convert/core/ConvertVideo;->mUseUri:Z

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mInputUri:Landroid/net/Uri;

    invoke-static {v5, v6}, Lcom/samsung/android/media/convert/util/CodecsHelper;->createExtractor(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaExtractor;

    move-result-object v5

    goto :goto_0

    :cond_0
    iget-object v5, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mInputFilePath:Ljava/lang/String;

    invoke-static {v5}, Lcom/samsung/android/media/convert/util/CodecsHelper;->createExtractor(Ljava/lang/String;)Landroid/media/MediaExtractor;

    move-result-object v5

    :goto_0
    invoke-static {v5}, Lcom/samsung/android/media/convert/util/CodecsHelper;->getAndSelectVideoTrackIndex(Landroid/media/MediaExtractor;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v7

    iget-wide v8, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mTrimVideoEndUs:J

    move-wide v2, v8

    cmp-long v0, v2, v0

    if-nez v0, :cond_1

    const-string v0, "durationUs"

    invoke-virtual {v7, v0}, Landroid/media/MediaFormat;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    move-wide v2, v0

    const-string v0, "SemVideoConverter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getOutputFileSize  trimEndTime was 0 but updated  trimEndTime : "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iput v4, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mSourceFrameRate:I

    const-string v0, "frame-rate"

    invoke-virtual {v7, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mSourceFrameRate:I

    iget v0, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mSourceFrameRate:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mSourceFrameRate:I

    const/16 v1, 0xfa

    if-le v0, v1, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mInputFilePath:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mInputUri:Landroid/net/Uri;

    invoke-virtual {p0, v0, v1, v8}, Lcom/samsung/android/media/convert/core/ConvertVideo;->getVideoFramerate(Ljava/lang/String;Landroid/content/Context;Landroid/net/Uri;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mSourceFrameRate:I

    :cond_3
    iget v0, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mSourceFrameRate:I

    if-lez v0, :cond_4

    iget v0, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mSourceFrameRate:I

    iput v0, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mOutputVideoFrameRate:I

    :cond_4
    const-string v0, "SemVideoConverter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "mSourceFrameRate :"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mSourceFrameRate:I

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", mOutputVideoFrameRate :"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mOutputVideoFrameRate:I

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Landroid/media/MediaExtractor;->release()V

    const/4 v0, 0x0

    const/16 v1, 0x3e8

    iget v8, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mOutputWidth:I

    iget v9, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mOutputHeight:I

    iget v10, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mOutputVideoFrameRate:I

    invoke-static {v8, v9, v10}, Lcom/samsung/android/media/convert/util/CodecsHelper;->suggestBitRate(III)I

    move-result v8

    mul-int/2addr v1, v8

    iget-wide v8, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mTrimVideoStartUs:J

    sub-long v8, v2, v8

    long-to-double v8, v8

    const-wide v10, 0x415e848000000000L    # 8000000.0

    div-double/2addr v8, v10

    iget v0, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mOutputAudioBitRate:I

    add-int/2addr v0, v1

    int-to-double v10, v0

    const-wide v12, 0x408f400000000000L    # 1000.0

    div-double/2addr v10, v12

    mul-double/2addr v8, v10

    double-to-int v0, v8

    iget v8, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mSizeFraction:F
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    float-to-int v4, v8

    mul-int/2addr v4, v0

    return v4

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    const/4 v1, -0x1

    return v1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    nop

    return v4
.end method

.method public getVideoFramerate(Ljava/lang/String;Landroid/content/Context;Landroid/net/Uri;)I
    .locals 25

    const/4 v0, 0x0

    move-object v1, v0

    :try_start_0
    sget-boolean v0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mUseUri:Z

    if-eqz v0, :cond_0

    invoke-static/range {p2 .. p3}, Lcom/samsung/android/media/convert/util/CodecsHelper;->createExtractor(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaExtractor;

    move-result-object v0

    :goto_0
    move-object v1, v0

    goto :goto_1

    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/media/convert/util/CodecsHelper;->createExtractor(Ljava/lang/String;)Landroid/media/MediaExtractor;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :goto_1
    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_2
    const/4 v0, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v1}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v10

    invoke-static {v1}, Lcom/samsung/android/media/convert/util/CodecsHelper;->getAndSelectVideoTrackIndex(Landroid/media/MediaExtractor;)I

    move-result v11

    const/4 v12, -0x1

    if-ne v11, v12, :cond_1

    const-string v12, "SemVideoConverter"

    const-string v13, "Valid video track absent"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v8, 0x1e

    move-object/from16 v12, p0

    move/from16 v21, v3

    goto :goto_6

    :cond_1
    invoke-virtual {v1, v11}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v0

    move-object/from16 v12, p0

    invoke-direct {v12, v0}, Lcom/samsung/android/media/convert/core/ConvertVideo;->getVideoSampleSize(Landroid/media/MediaFormat;)I

    move-result v2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v13

    new-instance v14, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v14}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    const/4 v15, 0x0

    :goto_3
    move-object/from16 v16, v0

    const/4 v0, 0x5

    if-gt v15, v0, :cond_3

    invoke-virtual {v1, v13, v3}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v0

    iput v0, v14, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v1}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v17

    invoke-virtual {v1}, Landroid/media/MediaExtractor;->advance()Z

    if-nez v15, :cond_2

    move-wide/from16 v6, v17

    goto :goto_4

    :cond_2
    sub-long v19, v17, v6

    add-long v4, v4, v19

    move-wide/from16 v6, v17

    add-int/lit8 v9, v9, 0x1

    :goto_4
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, v16

    goto :goto_3

    :cond_3
    const-wide/16 v17, 0x3e8

    div-long v19, v4, v17

    move/from16 v22, v2

    move/from16 v21, v3

    int-to-long v2, v9

    div-long v19, v19, v2

    div-long v2, v17, v19

    long-to-int v0, v2

    if-lez v0, :cond_4

    div-long v2, v4, v17

    move-wide/from16 v23, v4

    int-to-long v4, v9

    div-long/2addr v2, v4

    div-long v2, v17, v2

    long-to-int v0, v2

    goto :goto_5

    :cond_4
    move-wide/from16 v23, v4

    const/16 v0, 0x1e

    :goto_5
    move v8, v0

    move-object/from16 v0, v16

    move/from16 v2, v22

    move-wide/from16 v4, v23

    :goto_6
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/media/MediaExtractor;->release()V

    :cond_5
    return v8
.end method

.method public initialize(Ljava/lang/String;Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string v1, "SemVideoConverter"

    const-string/jumbo v2, "output file path cannot be null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    if-nez p3, :cond_1

    const-string v1, "SemVideoConverter"

    const-string v2, "input uri cannot be null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    if-nez p2, :cond_2

    const-string v1, "SemVideoConverter"

    const-string v2, "context cannot be null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_2
    const/4 v1, 0x1

    sput-boolean v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mUseUri:Z

    invoke-direct {p0, p2, p3}, Lcom/samsung/android/media/convert/core/ConvertVideo;->CheckVideoFormat(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v1, "SemVideoConverter"

    const-string v2, "Not a valid video format."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_3
    invoke-direct {p0, p2, p3, v0}, Lcom/samsung/android/media/convert/core/ConvertVideo;->CheckVideoCodec(Landroid/content/Context;Landroid/net/Uri;Z)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v1, "SemVideoConverter"

    const-string v2, "Not a valid video codec."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_4
    iput-object p1, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mOutputFilePath:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mInputUri:Landroid/net/Uri;

    iput-object p2, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mContext:Landroid/content/Context;

    return v1
.end method

.method public initialize(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string v1, "SemVideoConverter"

    const-string/jumbo v2, "output file path cannot be null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    if-nez p2, :cond_1

    const-string v1, "SemVideoConverter"

    const-string v2, "input file path cannot be null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    sput-boolean v0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mUseUri:Z

    invoke-direct {p0, p2}, Lcom/samsung/android/media/convert/core/ConvertVideo;->CheckVideoFormat(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "SemVideoConverter"

    const-string v2, "Not a valid video format."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_2
    invoke-direct {p0, p2, v0}, Lcom/samsung/android/media/convert/core/ConvertVideo;->CheckVideoCodec(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "SemVideoConverter"

    const-string v2, "Not a valid video codec."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_3
    iput-object p1, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mOutputFilePath:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mInputFilePath:Ljava/lang/String;

    const/4 v0, 0x1

    return v0
.end method

.method protected prepare()Z
    .locals 3

    iget-boolean v0, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mConverting:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "SemVideoConverter"

    const-string v2, "already started converting"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    sget-boolean v0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mUseUri:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mInputUri:Landroid/net/Uri;

    if-nez v0, :cond_3

    :cond_1
    const-string v0, "SemVideoConverter"

    const-string/jumbo v2, "mInputUri or mContext  is NULL"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mInputFilePath:Ljava/lang/String;

    if-nez v0, :cond_3

    const-string v0, "SemVideoConverter"

    const-string/jumbo v2, "mInputFilePath is NULL"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mConverting:Z

    return v0
.end method

.method protected release()V
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "SemVideoConverter"

    const-string/jumbo v2, "releasing encoder objects"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mVideoExtractor:Landroid/media/MediaExtractor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v1}, Landroid/media/MediaExtractor;->release()V

    iput-object v2, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mVideoExtractor:Landroid/media/MediaExtractor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    const-string v3, "SemVideoConverter"

    const-string v4, "Exception in releasing video extractor."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mAudioExtractor:Landroid/media/MediaExtractor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_1

    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v1}, Landroid/media/MediaExtractor;->release()V

    iput-object v2, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mAudioExtractor:Landroid/media/MediaExtractor;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catch_1
    move-exception v1

    :try_start_4
    const-string v3, "SemVideoConverter"

    const-string v4, "Exception in releasing audio extractor."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mInputVideoDecoder:Landroid/media/MediaCodec;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v1, :cond_2

    :try_start_5
    iget-object v1, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mInputVideoDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->stop()V

    iget-object v1, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mInputVideoDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V

    iput-object v2, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mInputVideoDecoder:Landroid/media/MediaCodec;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    :catch_2
    move-exception v1

    :try_start_6
    const-string v3, "SemVideoConverter"

    const-string v4, "Exception in releasing input video decoder."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_2
    iget-object v1, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mOutputVideoEncoder:Landroid/media/MediaCodec;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v1, :cond_3

    :try_start_7
    iget-object v1, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->stop()V

    iget-object v1, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V

    iput-object v2, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mOutputVideoEncoder:Landroid/media/MediaCodec;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_3

    :catch_3
    move-exception v1

    :try_start_8
    const-string v3, "SemVideoConverter"

    const-string v4, "Exception in releasing output video encoder."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_3
    iget-object v1, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mImgConverter:Lcom/samsung/android/media/vidsol/simgp/ImgConverter;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-eqz v1, :cond_4

    :try_start_9
    iget-object v1, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mImgConverter:Lcom/samsung/android/media/vidsol/simgp/ImgConverter;

    invoke-virtual {v1}, Lcom/samsung/android/media/vidsol/simgp/ImgConverter;->release()V

    iput-object v2, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mImgConverter:Lcom/samsung/android/media/vidsol/simgp/ImgConverter;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_4

    :catch_4
    move-exception v1

    :try_start_a
    const-string v3, "SemVideoConverter"

    const-string v4, "Exception in releasing image converter."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_4
    iget-object v1, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mMuxer:Landroid/media/MediaMuxer;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    if-eqz v1, :cond_6

    :try_start_b
    iget-boolean v1, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mMuxerStarted:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v1}, Landroid/media/MediaMuxer;->stop()V

    :cond_5
    iget-object v1, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v1}, Landroid/media/MediaMuxer;->release()V

    iput-object v2, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mMuxer:Landroid/media/MediaMuxer;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto :goto_5

    :catch_5
    move-exception v1

    :try_start_c
    const-string v2, "SemVideoConverter"

    const-string v3, "Exception in releasing muxer."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_6
    :goto_5
    iget-object v1, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->seidata:Ljava/util/HashMap;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->seidata:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    const-string v1, "SemVideoConverter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "seidata clear   isEmpty :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->seidata:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    iget-boolean v1, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mUpdateCreationTime:Z

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mOutputFilePath:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/media/convert/core/ConvertVideo;->updateCreationTime(Ljava/lang/String;Z)Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :cond_8
    iget-object v1, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mStopLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_d
    iput-boolean v0, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mConverting:Z

    iget-object v0, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mStopLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    nop

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    iget-object v2, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mStopLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_e
    iput-boolean v0, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mConverting:Z

    iget-object v0, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mStopLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    throw v1

    :catchall_2
    move-exception v0

    :try_start_f
    monitor-exit v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    throw v0
.end method

.method protected startConverting()V
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    iget-boolean v0, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mUserStop:Z

    if-eqz v0, :cond_0

    const-string v0, "SemVideoConverter"

    const-string v2, "Not starting converting because it is stopped by user."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    move-object v2, v0

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mUseUri:Z

    if-eqz v0, :cond_1

    iget-object v0, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mContext:Landroid/content/Context;

    iget-object v4, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mInputUri:Landroid/net/Uri;

    invoke-virtual {v2, v0, v4}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_0

    :cond_1
    iget-object v0, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mInputFilePath:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    :goto_0
    const/16 v0, 0x18

    invoke-virtual {v2, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v0

    if-eqz v4, :cond_6

    move v5, v3

    :try_start_1
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v5, v0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v6, v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    :goto_1
    if-eqz v5, :cond_5

    const/16 v0, 0x5a

    if-eq v5, v0, :cond_4

    const/16 v0, 0xb4

    if-eq v5, v0, :cond_3

    const/16 v0, 0x10e

    if-eq v5, v0, :cond_2

    goto :goto_2

    :cond_2
    iput v0, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mInputOrientationDegrees:I

    goto :goto_2

    :cond_3
    iput v0, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mInputOrientationDegrees:I

    goto :goto_2

    :cond_4
    iput v0, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mInputOrientationDegrees:I

    goto :goto_2

    :cond_5
    iput v3, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mInputOrientationDegrees:I

    nop

    :goto_2
    goto :goto_3

    :cond_6
    iput v3, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mInputOrientationDegrees:I
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_3
    goto :goto_4

    :catchall_0
    move-exception v0

    goto/16 :goto_12

    :catch_1
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    nop

    :goto_4
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V

    const/4 v0, 0x0

    nop

    move-object v2, v0

    sget-boolean v0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mUseUri:Z

    if-eqz v0, :cond_7

    iget-object v0, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mContext:Landroid/content/Context;

    iget-object v4, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mInputUri:Landroid/net/Uri;

    invoke-static {v0, v4}, Lcom/samsung/android/media/convert/util/CodecsHelper;->createExtractor(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaExtractor;

    move-result-object v0

    iput-object v0, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    iget-object v0, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mContext:Landroid/content/Context;

    iget-object v4, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mInputUri:Landroid/net/Uri;

    invoke-static {v0, v4}, Lcom/samsung/android/media/convert/util/CodecsHelper;->createExtractor(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaExtractor;

    move-result-object v0

    iput-object v0, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    goto :goto_5

    :cond_7
    iget-object v0, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mInputFilePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/media/convert/util/CodecsHelper;->createExtractor(Ljava/lang/String;)Landroid/media/MediaExtractor;

    move-result-object v0

    iput-object v0, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    iget-object v0, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mInputFilePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/media/convert/util/CodecsHelper;->createExtractor(Ljava/lang/String;)Landroid/media/MediaExtractor;

    move-result-object v0

    iput-object v0, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    :goto_5
    iget-object v0, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-static {v0}, Lcom/samsung/android/media/convert/util/CodecsHelper;->getAndSelectVideoTrackIndex(Landroid/media/MediaExtractor;)I

    move-result v4

    iget-object v0, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-static {v0}, Lcom/samsung/android/media/convert/util/CodecsHelper;->getAndSelectAudioTrackIndex(Landroid/media/MediaExtractor;)I

    move-result v5

    iget-object v0, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0, v4}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v6

    const-string v0, "SemVideoConverter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "input video format: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v7, -0x1

    if-ne v5, v7, :cond_8

    const-string v8, "SemVideoConverter"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "can\'t get audio format : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6
    move-object v8, v0

    goto :goto_7

    :cond_8
    iget-object v8, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v8, v5}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v0

    const-string v8, "SemVideoConverter"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Audio input format "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :goto_7
    iput v3, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mSourceFrameRate:I

    :try_start_4
    const-string v0, "frame-rate"

    invoke-virtual {v6, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mSourceFrameRate:I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_8

    :catch_2
    move-exception v0

    :goto_8
    iget v0, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mSourceFrameRate:I

    if-eqz v0, :cond_9

    iget v0, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mSourceFrameRate:I

    const/16 v9, 0xfa

    if-le v0, v9, :cond_a

    :cond_9
    iget-object v0, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mInputFilePath:Ljava/lang/String;

    iget-object v9, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mContext:Landroid/content/Context;

    iget-object v10, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mInputUri:Landroid/net/Uri;

    invoke-virtual {v1, v0, v9, v10}, Lcom/samsung/android/media/convert/core/ConvertVideo;->getVideoFramerate(Ljava/lang/String;Landroid/content/Context;Landroid/net/Uri;)I

    move-result v0

    iput v0, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mSourceFrameRate:I

    :cond_a
    iget v0, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mSourceFrameRate:I

    if-lez v0, :cond_b

    iget v0, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mSourceFrameRate:I

    iput v0, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mOutputVideoFrameRate:I

    :cond_b
    const-string v0, "SemVideoConverter"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "mSourceFrameRate :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mSourceFrameRate:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", mOutputVideoFrameRate :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mOutputVideoFrameRate:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mOutputWidth:I

    const/16 v9, 0x780

    if-le v0, v9, :cond_c

    iget v0, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mOutputHeight:I

    const/16 v10, 0x438

    if-le v0, v10, :cond_c

    iput v9, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mOutputWidth:I

    iput v10, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mOutputHeight:I

    :cond_c
    const-string v0, "SemVideoConverter"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "mOutputWidth :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mOutputWidth:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", mOutputHeight :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mOutputHeight:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x3e8

    iget v9, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mOutputWidth:I

    iget v10, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mOutputHeight:I

    iget v11, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mOutputVideoFrameRate:I

    invoke-static {v9, v10, v11}, Lcom/samsung/android/media/convert/util/CodecsHelper;->suggestBitRate(III)I

    move-result v9

    mul-int/2addr v0, v9

    iput v0, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mOutputVideoBitRate:I

    const-string v0, "SemVideoConverter"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "mOutputVideoMimeType :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mOutputVideoMimeType:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mOutputVideoMimeType:Ljava/lang/String;

    iget v9, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mOutputWidth:I

    iget v10, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mOutputHeight:I

    invoke-static {v0, v9, v10}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v9

    const-string v0, "color-format"

    const v10, 0x7f000789

    invoke-virtual {v9, v0, v10}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v0, "bitrate"

    iget v10, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mOutputVideoBitRate:I

    invoke-virtual {v9, v0, v10}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v0, "frame-rate"

    iget v10, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mOutputVideoFrameRate:I

    invoke-virtual {v9, v0, v10}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v0, "i-frame-interval"

    iget v10, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mOutputVideoIFrameInterval:I

    invoke-virtual {v9, v0, v10}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string/jumbo v0, "priority"

    const/4 v10, 0x1

    invoke-virtual {v9, v0, v10}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    new-instance v0, Lcom/samsung/android/media/vidsol/simgp/ImageFormat;

    invoke-direct {v0, v6}, Lcom/samsung/android/media/vidsol/simgp/ImageFormat;-><init>(Landroid/media/MediaFormat;)V

    move-object v11, v0

    const-string v0, "SemVideoConverter"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "mHDRType :"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mHDRType:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mHDRType:I

    const/4 v12, 0x2

    if-ne v0, v12, :cond_d

    invoke-virtual {v11, v10}, Lcom/samsung/android/media/vidsol/simgp/ImageFormat;->setHdrType(I)V

    :cond_d
    new-instance v0, Lcom/samsung/android/media/vidsol/simgp/ImageFormat;

    invoke-direct {v0, v9}, Lcom/samsung/android/media/vidsol/simgp/ImageFormat;-><init>(Landroid/media/MediaFormat;)V

    move-object v13, v0

    invoke-virtual {v13, v10}, Lcom/samsung/android/media/vidsol/simgp/ImageFormat;->setColorSpace(I)V

    new-instance v0, Lcom/samsung/android/media/vidsol/simgp/ImgConverter$Option;

    invoke-direct {v0}, Lcom/samsung/android/media/vidsol/simgp/ImgConverter$Option;-><init>()V

    move-object v14, v0

    iput-boolean v10, v14, Lcom/samsung/android/media/vidsol/simgp/ImgConverter$Option;->preferHw:Z

    new-instance v0, Lcom/samsung/android/media/vidsol/simgp/ImgConverter;

    invoke-direct {v0, v11, v13, v14}, Lcom/samsung/android/media/vidsol/simgp/ImgConverter;-><init>(Lcom/samsung/android/media/vidsol/simgp/ImageFormat;Lcom/samsung/android/media/vidsol/simgp/ImageFormat;Lcom/samsung/android/media/vidsol/simgp/ImgConverter$Option;)V

    iput-object v0, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mImgConverter:Lcom/samsung/android/media/vidsol/simgp/ImgConverter;

    iget-object v0, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mImgConverter:Lcom/samsung/android/media/vidsol/simgp/ImgConverter;

    new-instance v15, Lcom/samsung/android/media/convert/core/ConvertVideo$1;

    invoke-direct {v15, v1}, Lcom/samsung/android/media/convert/core/ConvertVideo$1;-><init>(Lcom/samsung/android/media/convert/core/ConvertVideo;)V

    invoke-virtual {v0, v15}, Lcom/samsung/android/media/vidsol/simgp/ImgConverter;->setEventListener(Lcom/samsung/android/media/vidsol/simgp/ImgConverter$OnEventListener;)V

    iget-object v0, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mImgConverter:Lcom/samsung/android/media/vidsol/simgp/ImgConverter;

    sget-object v15, Lcom/samsung/android/media/vidsol/simgp/ImgConverter$PortType;->OUTPUT:Lcom/samsung/android/media/vidsol/simgp/ImgConverter$PortType;

    invoke-virtual {v0, v12, v15}, Lcom/samsung/android/media/vidsol/simgp/ImgConverter;->queryMetadata(ILcom/samsung/android/media/vidsol/simgp/ImgConverter$PortType;)Landroid/os/Bundle;

    move-result-object v12

    const-string v0, "color-standard"

    const-string v15, "color-standard"

    invoke-virtual {v12, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v9, v0, v15}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v0, "color-range"

    const-string v15, "color-range"

    invoke-virtual {v12, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v9, v0, v15}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v0, "color-transfer"

    const-string v15, "color-transfer"

    invoke-virtual {v12, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v9, v0, v15}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v0, "SemVideoConverter"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "output video format : "

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mMuxerStarted:Z

    if-nez v0, :cond_11

    const/4 v0, 0x0

    sget-boolean v7, Lcom/samsung/android/media/convert/core/ConvertVideo;->mUseUri:Z

    if-eqz v7, :cond_e

    iget-object v7, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mInputUri:Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v7

    goto :goto_9

    :cond_e
    iget-object v7, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mInputFilePath:Ljava/lang/String;

    :goto_9
    move-object v0, v7

    invoke-virtual {v1, v0, v3}, Lcom/samsung/android/media/convert/core/ConvertVideo;->updateCreationTime(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_f

    const-string/jumbo v7, "param-meta-author"

    const/16 v15, 0x8

    invoke-virtual {v9, v7, v15}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string/jumbo v7, "param-meta-transcoding"

    invoke-virtual {v9, v7, v10}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_f
    iget-object v7, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v7, v9}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v7

    iput v7, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mVideoTrackIndex:I

    if-eqz v8, :cond_10

    const-string v7, "audio/unknown"

    const-string/jumbo v15, "mime"

    invoke-virtual {v8, v15}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_10

    iget-object v7, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v7, v8}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v7

    iput v7, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mAudioTrackIndex:I

    goto :goto_a

    :cond_10
    const/4 v5, -0x1

    :goto_a
    iget-object v7, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mMuxer:Landroid/media/MediaMuxer;

    iget v15, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mInputOrientationDegrees:I

    invoke-virtual {v7, v15}, Landroid/media/MediaMuxer;->setOrientationHint(I)V

    iget-object v7, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v7}, Landroid/media/MediaMuxer;->start()V

    iput-boolean v10, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mMuxerStarted:Z

    const-string v7, "SemVideoConverter"

    const-string v15, "Muxer start "

    invoke-static {v7, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    move-object/from16 v17, v11

    iget-wide v10, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mTrimVideoEndUs:J

    const-wide/16 v18, 0x0

    cmp-long v0, v10, v18

    if-nez v0, :cond_12

    const-string v0, "durationUs"

    invoke-virtual {v6, v0}, Landroid/media/MediaFormat;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mTrimVideoEndUs:J

    const-string v0, "SemVideoConverter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "mTrimVideoEndUs was 0 but updated  mTrimVideoEndUs : "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mTrimVideoEndUs:J

    invoke-virtual {v7, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    iget-wide v10, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mTrimAudioEndUs:J

    cmp-long v0, v10, v18

    if-nez v0, :cond_13

    const-string v0, "durationUs"

    invoke-virtual {v8, v0}, Landroid/media/MediaFormat;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mTrimAudioEndUs:J

    const-string v0, "SemVideoConverter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "mTrimAudioEndUs was 0 but updated mTrimAudioEndUs :"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mTrimAudioEndUs:J

    invoke-virtual {v7, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    iget-boolean v0, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mUserStop:Z

    if-nez v0, :cond_17

    const/4 v7, -0x1

    if-eq v5, v7, :cond_17

    iget-boolean v0, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mMuxerStarted:Z

    if-eqz v0, :cond_17

    const/4 v0, 0x0

    const/4 v7, 0x0

    const/high16 v10, 0x20000

    invoke-static {v10}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v10

    new-instance v11, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v11}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iget-object v15, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v15, v10, v0}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v15

    iput v15, v11, Landroid/media/MediaCodec$BufferInfo;->size:I

    const-string v15, "SemVideoConverter"

    const-string v3, "Audio rewirte"

    invoke-static {v15, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_b
    iget-boolean v3, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mUserStop:Z

    if-nez v3, :cond_17

    if-nez v7, :cond_17

    iput v0, v11, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget-object v3, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v3, v10, v0}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v3

    iput v3, v11, Landroid/media/MediaCodec$BufferInfo;->size:I

    iget v3, v11, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-gez v3, :cond_14

    const-string v3, "SemVideoConverter"

    const-string/jumbo v15, "saw input EOS: Audio"

    invoke-static {v3, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x1

    const/4 v3, 0x0

    iput v3, v11, Landroid/media/MediaCodec$BufferInfo;->size:I

    goto :goto_b

    :cond_14
    const/4 v3, 0x0

    iget-object v15, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    move/from16 v20, v4

    invoke-virtual {v15}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v3

    iput-wide v3, v11, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-wide v3, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mTrimAudioEndUs:J

    const-wide/16 v15, -0x1

    cmp-long v3, v3, v15

    if-eqz v3, :cond_15

    iget-wide v3, v11, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    move/from16 v22, v7

    move-object/from16 v21, v8

    iget-wide v7, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mTrimAudioEndUs:J

    cmp-long v3, v3, v7

    if-lez v3, :cond_16

    const/4 v7, 0x1

    const-string v3, "SemVideoConverter"

    const-string/jumbo v4, "sawEOS: true: A"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v4, v20

    move-object/from16 v8, v21

    goto :goto_b

    :cond_15
    move/from16 v22, v7

    move-object/from16 v21, v8

    :cond_16
    iget-object v3, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v3}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v3

    iput v3, v11, Landroid/media/MediaCodec$BufferInfo;->flags:I

    iget-object v3, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mMuxer:Landroid/media/MediaMuxer;

    iget v4, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mAudioTrackIndex:I

    invoke-virtual {v3, v4, v10, v11}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    iget-object v3, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v3}, Landroid/media/MediaExtractor;->advance()Z

    move/from16 v4, v20

    move-object/from16 v8, v21

    move/from16 v7, v22

    goto :goto_b

    :cond_17
    move/from16 v20, v4

    move-object/from16 v21, v8

    iget-object v0, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mImgConverter:Lcom/samsung/android/media/vidsol/simgp/ImgConverter;

    invoke-virtual {v0}, Lcom/samsung/android/media/vidsol/simgp/ImgConverter;->getInputSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/samsung/android/media/convert/util/CodecsHelper;->createVideoDecoder(Landroid/media/MediaFormat;Landroid/view/Surface;)Landroid/media/MediaCodec;

    move-result-object v0

    iput-object v0, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mInputVideoDecoder:Landroid/media/MediaCodec;

    iget-object v0, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mInputVideoDecoder:Landroid/media/MediaCodec;

    if-eqz v0, :cond_1a

    iget-object v0, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mInputVideoDecoder:Landroid/media/MediaCodec;

    new-instance v3, Lcom/samsung/android/media/convert/core/ConvertVideo$2;

    invoke-direct {v3, v1}, Lcom/samsung/android/media/convert/core/ConvertVideo$2;-><init>(Lcom/samsung/android/media/convert/core/ConvertVideo;)V

    invoke-virtual {v0, v3}, Landroid/media/MediaCodec;->setCallback(Landroid/media/MediaCodec$Callback;)V

    iget-object v0, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mOutputVideoMimeType:Ljava/lang/String;

    invoke-static {v0}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    iput-object v0, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    iget-object v0, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v0, v9, v3, v3, v4}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    iget-object v0, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    new-instance v3, Lcom/samsung/android/media/convert/core/ConvertVideo$3;

    invoke-direct {v3, v1}, Lcom/samsung/android/media/convert/core/ConvertVideo$3;-><init>(Lcom/samsung/android/media/convert/core/ConvertVideo;)V

    invoke-virtual {v0, v3}, Landroid/media/MediaCodec;->setCallback(Landroid/media/MediaCodec$Callback;)V

    iget-object v0, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mImgConverter:Lcom/samsung/android/media/vidsol/simgp/ImgConverter;

    iget-object v3, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v3}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/samsung/android/media/vidsol/simgp/ImgConverter;->setOutputSurface(Landroid/view/Surface;)V

    iget-object v0, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    iget-object v0, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mInputVideoDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    iget-object v0, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mImgConverter:Lcom/samsung/android/media/vidsol/simgp/ImgConverter;

    invoke-virtual {v0}, Lcom/samsung/android/media/vidsol/simgp/ImgConverter;->convert()I

    const-string v0, "SemVideoConverter"

    const-string/jumbo v3, "waiting eos......"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mInputVideoDecoder:Landroid/media/MediaCodec;

    monitor-enter v3

    :try_start_5
    iget-object v0, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mInputVideoDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_c

    :catchall_1
    move-exception v0

    goto :goto_11

    :catch_3
    move-exception v0

    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_c
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    const-string v0, "SemVideoConverter"

    const-string v3, "decoder waiting done!!!"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mError:Z

    if-nez v0, :cond_18

    iget-boolean v0, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mUserStop:Z

    if-nez v0, :cond_18

    const-string v0, "SemVideoConverter"

    const-string/jumbo v3, "waiting encoder eos......"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    monitor-enter v3

    :try_start_7
    iget-object v0, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_d

    :catchall_2
    move-exception v0

    goto :goto_e

    :catch_4
    move-exception v0

    :try_start_8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_d
    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    const-string v0, "SemVideoConverter"

    const-string v3, "encoder waiting done!!!"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    :goto_e
    :try_start_9
    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    throw v0

    :cond_18
    :goto_f
    iget-boolean v0, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mUserStop:Z

    if-nez v0, :cond_19

    const-string v0, "SemVideoConverter"

    const-string v3, "Rewriting finished"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    :cond_19
    const-string v0, "SemVideoConverter"

    const-string/jumbo v3, "user stop"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_10
    return-void

    :goto_11
    :try_start_a
    monitor-exit v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    throw v0

    :cond_1a
    new-instance v0, Ljava/io/IOException;

    const-string v3, "can\'t set VideoDecoder"

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_12
    nop

    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V

    const/4 v2, 0x0

    throw v0
.end method

.method public stop()Z
    .locals 5

    const-string v0, "SemVideoConverter"

    const-string v1, "Stop method called "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mConverting:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mUserStop:Z

    if-eqz v0, :cond_0

    const-string v0, "SemVideoConverter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mConverting : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mConverting:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mUserStop :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mUserStop:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mStopLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mUserStop:Z

    iget-object v2, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mThread:Ljava/lang/Thread;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_1
    :try_start_1
    const-string v2, "SemVideoConverter"

    const-string v3, "Calling wait on stop lock."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mStopLock:Ljava/lang/Object;

    const-wide/16 v3, 0x1388

    invoke-virtual {v2, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string v2, "SemVideoConverter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stop method finally  mConverting :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mConverting:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v2, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mConverting:Z

    if-eqz v2, :cond_2

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/media/convert/core/ConvertVideo;->release()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v2

    :try_start_3
    const-string v3, "SemVideoConverter"

    const-string v4, "Stop lock interrupted."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    const-string v2, "SemVideoConverter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stop method finally  mConverting :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mConverting:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v2, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mConverting:Z

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    monitor-exit v0

    return v1

    :goto_2
    const-string v2, "SemVideoConverter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stop method finally  mConverting :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mConverting:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v2, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mConverting:Z

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/media/convert/core/ConvertVideo;->release()V

    :cond_3
    throw v1

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method public updateCreationTime(Ljava/lang/String;Z)Z
    .locals 30

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    const/4 v4, 0x0

    const-string v0, "SemVideoConverter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateCreationTime mode : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", filepath : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mAuthor:I

    const/4 v5, -0x1

    if-eq v0, v5, :cond_9

    iget-boolean v0, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mUpdateCreationTime:Z

    const/4 v5, 0x1

    if-nez v0, :cond_0

    if-ne v3, v5, :cond_0

    goto/16 :goto_c

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v6, v0

    const/4 v0, 0x4

    new-array v7, v0, [B

    new-array v8, v0, [B

    new-array v9, v0, [B

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v0, v10, v12

    if-gtz v0, :cond_1

    const-string v0, "SemVideoConverter"

    const-string v5, "file size is same or less than 0"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_1
    const-string/jumbo v0, "mdia"

    const-string/jumbo v14, "minf"

    const-string/jumbo v15, "moov"

    const-string/jumbo v12, "stbl"

    const-string/jumbo v13, "trak"

    filled-new-array {v0, v14, v15, v12, v13}, [Ljava/lang/String;

    move-result-object v0

    move-object v12, v0

    const/4 v0, 0x0

    move-object v13, v0

    if-eqz v3, :cond_2

    :try_start_0
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string/jumbo v14, "rw"

    invoke-direct {v0, v6, v14}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    move-object v13, v0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v2, v0

    move-object/from16 v20, v6

    move-object/from16 v21, v7

    move-object/from16 v22, v8

    move-wide/from16 v23, v10

    goto/16 :goto_a

    :catch_0
    move-exception v0

    move-object/from16 v20, v6

    move-object/from16 v21, v7

    move-object/from16 v22, v8

    move-wide/from16 v23, v10

    goto/16 :goto_8

    :cond_2
    :try_start_1
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string/jumbo v14, "r"

    invoke-direct {v0, v6, v14}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    goto :goto_0

    :goto_1
    const-wide/16 v14, 0x0

    :goto_2
    cmp-long v0, v14, v10

    if-gez v0, :cond_8

    :try_start_2
    const-string v0, "SemVideoConverter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "filePointer: "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v13, v14, v15}, Ljava/io/RandomAccessFile;->seek(J)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :catch_1
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_3
    array-length v0, v7

    const/4 v2, 0x0

    invoke-virtual {v13, v7, v2, v0}, Ljava/io/RandomAccessFile;->read([BII)I

    invoke-static {v7}, Lcom/samsung/android/media/convert/core/ConvertVideo;->unsignedIntToLong([B)J

    move-result-wide v16

    move-wide/from16 v18, v16

    const-string v0, "SemVideoConverter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Atom Size: "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-object/from16 v20, v6

    move-object/from16 v21, v7

    move-wide/from16 v6, v18

    :try_start_4
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    array-length v0, v8

    const/4 v2, 0x0

    invoke-virtual {v13, v8, v2, v0}, Ljava/io/RandomAccessFile;->read([BII)I

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v8}, Ljava/lang/String;-><init>([B)V

    const-string v2, "SemVideoConverter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object/from16 v22, v8

    :try_start_5
    const-string v8, "Atom Box: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v12, v0}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    const-wide/16 v16, 0x8

    if-ltz v2, :cond_3

    const-string v5, "SemVideoConverter"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-wide/from16 v23, v10

    :try_start_6
    const-string v10, "Found parent: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " move to position: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-long v14, v14, v16

    :goto_4
    const-wide/16 v5, 0x0

    goto/16 :goto_5

    :cond_3
    move-wide/from16 v23, v10

    const-string/jumbo v5, "mvhd"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string v5, "SemVideoConverter"

    const-string v8, "Found: mvhd"

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    if-eqz v3, :cond_4

    array-length v5, v9

    const/4 v8, 0x0

    invoke-virtual {v13, v9, v8, v5}, Ljava/io/RandomAccessFile;->read([BII)I

    sget-object v5, Lcom/samsung/android/media/convert/core/ConvertVideo;->creationTime:[B

    sget-object v8, Lcom/samsung/android/media/convert/core/ConvertVideo;->creationTime:[B

    array-length v8, v8

    const/4 v10, 0x0

    invoke-virtual {v13, v5, v10, v8}, Ljava/io/RandomAccessFile;->write([BII)V

    goto/16 :goto_6

    :cond_4
    sget-object v5, Lcom/samsung/android/media/convert/core/ConvertVideo;->creationTime:[B

    sget-object v8, Lcom/samsung/android/media/convert/core/ConvertVideo;->creationTime:[B

    array-length v8, v8

    const/4 v10, 0x0

    invoke-virtual {v13, v5, v10, v8}, Ljava/io/RandomAccessFile;->read([BII)I

    sget-object v5, Lcom/samsung/android/media/convert/core/ConvertVideo;->creationTime:[B

    sget-object v8, Lcom/samsung/android/media/convert/core/ConvertVideo;->creationTime:[B

    array-length v8, v8

    const/4 v10, 0x0

    invoke-virtual {v13, v5, v10, v8}, Ljava/io/RandomAccessFile;->read([BII)I

    const/4 v5, 0x1

    iput-boolean v5, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mUpdateCreationTime:Z

    goto/16 :goto_6

    :cond_5
    const/4 v5, 0x1

    const-wide/16 v10, 0x1

    cmp-long v8, v6, v10

    if-nez v8, :cond_6

    add-long v10, v14, v16

    invoke-virtual {v13, v10, v11}, Ljava/io/RandomAccessFile;->seek(J)V

    const/16 v8, 0x8

    new-array v8, v8, [B

    array-length v10, v8

    const/4 v11, 0x0

    invoke-virtual {v13, v8, v11, v10}, Ljava/io/RandomAccessFile;->read([BII)I

    new-instance v10, Ljava/math/BigInteger;

    invoke-direct {v10, v8}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v10}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v16

    move-wide/from16 v25, v16

    move-wide/from16 v27, v6

    move-wide/from16 v5, v25

    add-long/2addr v14, v5

    const-string v7, "SemVideoConverter"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v29, v0

    const-string v0, "64bit: "

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_6
    move-object/from16 v29, v0

    move-wide/from16 v27, v6

    const-wide/16 v5, 0x0

    cmp-long v0, v27, v5

    if-nez v0, :cond_7

    const-string v0, "SemVideoConverter"

    const-string v5, "filePointer does not go forward. Exit."

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    goto :goto_6

    :cond_7
    add-long v14, v14, v27

    const-string v0, "SemVideoConverter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "move: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " atomsize "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v10, v27

    invoke-virtual {v7, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :goto_5
    nop

    move-object/from16 v6, v20

    move-object/from16 v7, v21

    move-object/from16 v8, v22

    move-wide/from16 v10, v23

    move-object/from16 v2, p1

    const/4 v5, 0x1

    goto/16 :goto_2

    :catch_2
    move-exception v0

    goto :goto_8

    :catchall_1
    move-exception v0

    move-wide/from16 v23, v10

    move-object v2, v0

    goto :goto_a

    :catch_3
    move-exception v0

    move-wide/from16 v23, v10

    goto :goto_8

    :catchall_2
    move-exception v0

    move-object/from16 v22, v8

    move-wide/from16 v23, v10

    move-object v2, v0

    goto :goto_a

    :catch_4
    move-exception v0

    move-object/from16 v22, v8

    move-wide/from16 v23, v10

    goto :goto_8

    :cond_8
    move-object/from16 v20, v6

    move-object/from16 v21, v7

    move-object/from16 v22, v8

    move-wide/from16 v23, v10

    :goto_6
    :try_start_7
    invoke-virtual {v13}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    :goto_7
    goto :goto_9

    :catch_5
    move-exception v0

    move-object v2, v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    :catchall_3
    move-exception v0

    move-object/from16 v20, v6

    move-object/from16 v21, v7

    move-object/from16 v22, v8

    move-wide/from16 v23, v10

    move-object v2, v0

    goto :goto_a

    :catch_6
    move-exception v0

    move-object/from16 v20, v6

    move-object/from16 v21, v7

    move-object/from16 v22, v8

    move-wide/from16 v23, v10

    :goto_8
    :try_start_8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :try_start_9
    invoke-virtual {v13}, Ljava/io/RandomAccessFile;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    goto :goto_7

    :goto_9
    return v4

    :catchall_4
    move-exception v0

    move-object v2, v0

    :goto_a
    :try_start_a
    invoke-virtual {v13}, Ljava/io/RandomAccessFile;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    goto :goto_b

    :catch_7
    move-exception v0

    move-object v5, v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_b
    throw v2

    :cond_9
    :goto_c
    const-string v0, "SemVideoConverter"

    const-string v2, "Do not update CreationTime"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4
.end method

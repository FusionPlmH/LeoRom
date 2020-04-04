.class public Lcom/samsung/android/transcode/core/EncodeVideo;
.super Lcom/samsung/android/transcode/core/Encode;
.source "EncodeVideo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;,
        Lcom/samsung/android/transcode/core/EncodeVideo$SpsPps;
    }
.end annotation


# static fields
.field private static final IMAGE_WAIT_TIMEOUT_MS:I = 0x3e8

.field private static final KEY_ERROR_TYPE:Ljava/lang/String; = "error-type"

.field private static final KEY_MUXER_AUTHOR:Ljava/lang/String; = "param-meta-author"

.field private static final KEY_MUXER_RECORDINGMODE:Ljava/lang/String; = "param-meta-recording-mode"

.field private static final KEY_MUXER_TRANSCODING:Ljava/lang/String; = "param-meta-transcoding"

.field private static final RECORDED_MODE_FIELD:Ljava/lang/String; = "recording_mode"

.field private static final REWRITE_AUDIO_BUFFER_SIZE:I = 0x20000

.field public static final SLOW_MOTION_DATA:Ljava/lang/String; = "SlowMotion_Data"

.field public static final SUPER_SLOW_MOTION_DATA:Ljava/lang/String; = "Super_SlowMotion_Data"

.field private static final TIMEOUT_USEC:J = 0x2710L

.field private static final VIDEO_FPS_BUF_COUNT:I = 0x5

.field private static creationTime:[B

.field private static mUseUri:Z


# instance fields
.field private HDR_audioDone:Z

.field private HDR_videoDone:Z

.field private NumOfSVCLayers:I

.field private RegionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/transcode/core/Encode$Region;",
            ">;"
        }
    .end annotation
.end field

.field private SEFData:Ljava/lang/String;

.field private formatupdated:Z

.field private mAudioExtractor:Landroid/media/MediaExtractor;

.field private mAuthor:I

.field private mContext:Landroid/content/Context;

.field private mCopyAudio:Z

.field private volatile mEncoding:Z

.field private mError:Z

.field private mImgConverter:Lcom/samsung/android/media/vidsol/simgp/ImgConverter;

.field private mInputBitdepth:I

.field private mInputFilePath:Ljava/lang/String;

.field private mInputOrientationDegrees:I

.field private mInputReachedEOS:Z

.field private mInputSurface:Lcom/samsung/android/transcode/surfaces/InputSurface;

.field private mInputUri:Landroid/net/Uri;

.field private mLogoRenderer:Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;

.field private mMainRegion:Ljava/lang/String;

.field private mModifiedAudiotime:J

.field private mModifiedVideotime:J

.field private mOriginTrimEndUs:J

.field private mOriginTrimStartUs:J

.field private mOriginalduration:J

.field private mOutputSurface:Lcom/samsung/android/transcode/surfaces/OutputSurface;

.field private mPausedVideoUs:J

.field private mRecordingMode:I

.field private mSEFVideo:Z

.field private mSeektime:J

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

    sput-boolean v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUseUri:Z

    const/4 v0, 0x4

    new-array v0, v0, [B

    sput-object v0, Lcom/samsung/android/transcode/core/EncodeVideo;->creationTime:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lcom/samsung/android/transcode/core/Encode;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputOrientationDegrees:I

    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mEncoding:Z

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mStopLock:Ljava/lang/Object;

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mPausedVideoUs:J

    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->formatupdated:Z

    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mSEFVideo:Z

    iput-wide v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mModifiedVideotime:J

    iput-wide v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mModifiedAudiotime:J

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingMode:I

    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUpdateCreationTime:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAuthor:I

    const/16 v1, 0x8

    iput v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputBitdepth:I

    new-instance v1, Ljava/util/HashMap;

    const/16 v2, 0x28

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->seidata:Ljava/util/HashMap;

    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputReachedEOS:Z

    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mError:Z

    return-void
.end method

.method private CheckSEFData(Ljava/lang/String;Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mSEFVideo:Z

    sget-boolean v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mUseUri:Z

    if-eqz v1, :cond_1

    if-eqz p2, :cond_0

    if-nez p3, :cond_2

    :cond_0
    const-string v1, "TranscodeLib"

    const-string/jumbo v2, "uri or context  is NULL"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    if-nez p1, :cond_2

    const-string v1, "TranscodeLib"

    const-string v2, "filepath is NULL"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/transcode/core/EncodeVideo;->getRecordingMode(Ljava/lang/String;Landroid/content/Context;Landroid/net/Uri;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingMode:I

    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingMode:I

    const/4 v1, 0x1

    if-nez v0, :cond_3

    const-string v0, "TranscodeLib"

    const-string v2, "Normal Video File"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_3
    const/4 v0, 0x1

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->SEFData:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/transcode/core/EncodeVideo;->extractSEFData(Ljava/lang/String;Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->SEFData:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->SEFData:Ljava/lang/String;

    if-nez v2, :cond_4

    const-string v2, "TranscodeLib"

    const-string v3, "extractSEFData : SEFData == null, createDefaultRegion"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/transcode/core/EncodeVideo;->createDefaultRegion(Ljava/lang/String;Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    goto :goto_1

    :cond_4
    iget v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingMode:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_7

    iget v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingMode:I

    if-ne v2, v1, :cond_5

    goto :goto_0

    :cond_5
    iget v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingMode:I

    const/16 v3, 0x8

    if-eq v2, v3, :cond_6

    iget v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingMode:I

    const/4 v3, 0x7

    if-eq v2, v3, :cond_6

    iget v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingMode:I

    const/16 v3, 0x9

    if-ne v2, v3, :cond_8

    :cond_6
    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->SEFData:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/samsung/android/transcode/core/EncodeVideo;->superslowSEFParser(Ljava/lang/String;)Z

    move-result v0

    goto :goto_1

    :cond_7
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->SEFData:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/samsung/android/transcode/core/EncodeVideo;->slowfastSEFParser(Ljava/lang/String;)Z

    move-result v0

    :cond_8
    :goto_1
    if-nez v0, :cond_9

    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    :cond_9
    if-eqz v0, :cond_a

    iput-boolean v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mSEFVideo:Z

    :cond_a
    return v0
.end method

.method private CheckVideoCodec(IILandroid/content/Context;Landroid/net/Uri;Z)Z
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez p5, :cond_0

    invoke-static {}, Lcom/samsung/android/transcode/util/CodecsHelper;->getRemainedResourceCapacity()I

    move-result v0

    :cond_0
    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_0
    invoke-static {p3, p4}, Lcom/samsung/android/transcode/util/CodecsHelper;->createExtractor(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaExtractor;

    move-result-object v6

    move-object v4, v6

    if-nez v4, :cond_2

    const-string v6, "TranscodeLib"

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
    invoke-static {v4}, Lcom/samsung/android/transcode/util/CodecsHelper;->getAndSelectVideoTrackIndex(Landroid/media/MediaExtractor;)I

    move-result v6

    if-gez v6, :cond_3

    move v3, v6

    const-string v7, "TranscodeLib"

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

    move v2, v8

    const-string v8, "error-type"

    invoke-virtual {v7, v8}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    const-string v8, "error-type"

    invoke-virtual {v7, v8}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v8
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v3, v8

    :cond_4
    :goto_0
    if-eqz v4, :cond_5

    goto :goto_1

    :catchall_0
    move-exception v5

    goto :goto_3

    :catch_0
    move-exception v6

    :try_start_2
    invoke-virtual {v6}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    if-eqz v4, :cond_5

    goto :goto_1

    :catch_1
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/NullPointerException;->printStackTrace()V

    if-eqz v4, :cond_5

    goto :goto_1

    :catch_2
    move-exception v6

    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v4, :cond_5

    :goto_1
    invoke-virtual {v4}, Landroid/media/MediaExtractor;->release()V

    :cond_5
    const/4 v4, 0x0

    nop

    if-eqz v3, :cond_6

    const-string v6, "TranscodeLib"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Extactor Error appear : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_6
    if-lez v1, :cond_9

    if-gtz v2, :cond_7

    goto :goto_2

    :cond_7
    if-nez p5, :cond_8

    if-ltz v0, :cond_8

    mul-int v6, v1, v2

    mul-int v7, p1, p2

    add-int/2addr v6, v7

    if-ge v0, v6, :cond_8

    const-string v6, "TranscodeLib"

    const-string v7, "Codec resource is not enough"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_8
    const/4 v5, 0x1

    return v5

    :cond_9
    :goto_2
    const-string v6, "TranscodeLib"

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
    if-eqz v4, :cond_a

    invoke-virtual {v4}, Landroid/media/MediaExtractor;->release()V

    :cond_a
    const/4 v4, 0x0

    throw v5
.end method

.method private CheckVideoCodec(IILjava/lang/String;Z)Z
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez p4, :cond_0

    invoke-static {}, Lcom/samsung/android/transcode/util/CodecsHelper;->getRemainedResourceCapacity()I

    move-result v0

    :cond_0
    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_0
    invoke-static {p3}, Lcom/samsung/android/transcode/util/CodecsHelper;->createExtractor(Ljava/lang/String;)Landroid/media/MediaExtractor;

    move-result-object v6

    move-object v4, v6

    if-nez v4, :cond_2

    const-string v6, "TranscodeLib"

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
    invoke-static {v4}, Lcom/samsung/android/transcode/util/CodecsHelper;->getAndSelectVideoTrackIndex(Landroid/media/MediaExtractor;)I

    move-result v6

    if-gez v6, :cond_3

    move v3, v6

    const-string v7, "TranscodeLib"

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

    move v2, v8

    const-string v8, "error-type"

    invoke-virtual {v7, v8}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    const-string v8, "error-type"

    invoke-virtual {v7, v8}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v8
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v3, v8

    :cond_4
    :goto_0
    if-eqz v4, :cond_5

    goto :goto_1

    :catchall_0
    move-exception v5

    goto :goto_3

    :catch_0
    move-exception v6

    :try_start_2
    invoke-virtual {v6}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    if-eqz v4, :cond_5

    goto :goto_1

    :catch_1
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/NullPointerException;->printStackTrace()V

    if-eqz v4, :cond_5

    goto :goto_1

    :catch_2
    move-exception v6

    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v4, :cond_5

    :goto_1
    invoke-virtual {v4}, Landroid/media/MediaExtractor;->release()V

    :cond_5
    const/4 v4, 0x0

    nop

    if-eqz v3, :cond_6

    const-string v6, "TranscodeLib"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Extactor Error appear : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_6
    if-lez v1, :cond_9

    if-gtz v2, :cond_7

    goto :goto_2

    :cond_7
    if-nez p4, :cond_8

    if-ltz v0, :cond_8

    mul-int v6, v1, v2

    mul-int v7, p1, p2

    add-int/2addr v6, v7

    if-ge v0, v6, :cond_8

    const-string v6, "TranscodeLib"

    const-string v7, "Codec resource is not enough"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_8
    const/4 v5, 0x1

    return v5

    :cond_9
    :goto_2
    const-string v6, "TranscodeLib"

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
    if-eqz v4, :cond_a

    invoke-virtual {v4}, Landroid/media/MediaExtractor;->release()V

    :cond_a
    const/4 v4, 0x0

    throw v5
.end method

.method private CheckVideoFormat(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    invoke-static {p1, p2}, Lcom/samsung/android/transcode/util/CodecsHelper;->createExtractor(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaExtractor;

    move-result-object v3

    move-object v0, v3

    invoke-static {p1, p2}, Lcom/samsung/android/transcode/util/CodecsHelper;->createMediaMetadataRetriever(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaMetadataRetriever;

    move-result-object v3

    move-object v1, v3

    invoke-static {v0}, Lcom/samsung/android/transcode/util/CodecsHelper;->getAndSelectVideoTrackIndex(Landroid/media/MediaExtractor;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    invoke-static {v1}, Lcom/samsung/android/transcode/util/CodecsHelper;->isSupportedFormat(Landroid/media/MediaMetadataRetriever;)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    const-string v4, "TranscodeLib"

    const-string v5, "Video Format is not supported"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    :cond_1
    invoke-static {v1}, Lcom/samsung/android/transcode/util/CodecsHelper;->is10bitVideo(Landroid/media/MediaMetadataRetriever;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v4, 0xa

    iput v4, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputBitdepth:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/transcode/core/EncodeVideo;->getHDRMode(Landroid/media/MediaMetadataRetriever;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

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
    invoke-static {p1}, Lcom/samsung/android/transcode/util/CodecsHelper;->createExtractor(Ljava/lang/String;)Landroid/media/MediaExtractor;

    move-result-object v3

    move-object v0, v3

    invoke-static {p1}, Lcom/samsung/android/transcode/util/CodecsHelper;->createMediaMetadataRetriever(Ljava/lang/String;)Landroid/media/MediaMetadataRetriever;

    move-result-object v3

    move-object v1, v3

    invoke-static {v0}, Lcom/samsung/android/transcode/util/CodecsHelper;->getAndSelectVideoTrackIndex(Landroid/media/MediaExtractor;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    invoke-static {v1}, Lcom/samsung/android/transcode/util/CodecsHelper;->isSupportedFormat(Landroid/media/MediaMetadataRetriever;)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    const-string v4, "TranscodeLib"

    const-string v5, "Video Format is not supported"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    :cond_1
    invoke-static {v1}, Lcom/samsung/android/transcode/util/CodecsHelper;->is10bitVideo(Landroid/media/MediaMetadataRetriever;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v4, 0xa

    iput v4, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputBitdepth:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/transcode/core/EncodeVideo;->getHDRMode(Landroid/media/MediaMetadataRetriever;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

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

.method private ProcSVCLayerDrop(JIIII)Z
    .locals 38

    move-object/from16 v0, p0

    move/from16 v3, p3

    move/from16 v4, p5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    sget-object v13, Lcom/samsung/android/transcode/core/Encode$Speed;->NORMAL:Lcom/samsung/android/transcode/core/Encode$Speed;

    const/high16 v14, 0x3f800000    # 1.0f

    move-wide/from16 v9, p1

    move v15, v5

    iget-object v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    move/from16 v16, v6

    if-eqz v5, :cond_10

    iget-object v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_10

    const/4 v5, 0x0

    move/from16 v17, v8

    move/from16 v8, p6

    :goto_0
    iget-object v6, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_f

    iget-object v6, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/transcode/core/Encode$Region;

    iget-object v6, v6, Lcom/samsung/android/transcode/core/Encode$Region;->regionSpeedType:Lcom/samsung/android/transcode/core/Encode$Speed;

    invoke-static {v6}, Lcom/samsung/android/transcode/core/EncodeVideo;->getTimeScale(Lcom/samsung/android/transcode/core/Encode$Speed;)F

    move-result v6

    const/high16 v18, 0x3f800000    # 1.0f

    cmpl-float v6, v6, v18

    if-lez v6, :cond_0

    const/4 v15, 0x1

    const/16 v16, 0x0

    :cond_0
    iget-object v6, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/transcode/core/Encode$Region;

    iget-object v6, v6, Lcom/samsung/android/transcode/core/Encode$Region;->regionSpeedType:Lcom/samsung/android/transcode/core/Encode$Speed;

    invoke-static {v6}, Lcom/samsung/android/transcode/core/EncodeVideo;->getTimeScale(Lcom/samsung/android/transcode/core/Encode$Speed;)F

    move-result v6

    cmpg-float v6, v6, v18

    if-gez v6, :cond_1

    const/4 v6, 0x1

    const/4 v15, 0x0

    move/from16 v16, v6

    :cond_1
    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    const-wide v22, 0x3ff7333333333333L    # 1.45

    const-wide/16 v24, 0x3e8

    const-wide v26, 0x408f400000000000L    # 1000.0

    const/4 v6, 0x1

    if-ne v4, v6, :cond_5

    iget-object v6, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/transcode/core/Encode$Region;

    iget v6, v6, Lcom/samsung/android/transcode/core/Encode$Region;->regionStartTime:I

    move/from16 v28, v7

    int-to-long v6, v6

    mul-long v6, v6, v24

    cmp-long v6, p1, v6

    if-gez v6, :cond_4

    if-nez v8, :cond_2

    const/16 v8, 0xf0

    :cond_2
    iget-object v6, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/transcode/core/Encode$Region;

    iget v6, v6, Lcom/samsung/android/transcode/core/Encode$Region;->regionStartTime:I

    int-to-long v6, v6

    mul-long v6, v6, v24

    sub-long v6, v6, p1

    move-wide/from16 v29, v9

    int-to-double v9, v8

    div-double v9, v22, v9

    mul-double v9, v9, v26

    move-object/from16 v31, v13

    move/from16 v32, v14

    int-to-double v13, v8

    div-double v20, v20, v13

    mul-double v20, v20, v26

    mul-double v20, v20, v18

    add-double v9, v9, v20

    double-to-long v9, v9

    cmp-long v6, v6, v9

    if-gez v6, :cond_e

    const/4 v6, 0x1

    if-ne v3, v6, :cond_3

    const/4 v6, 0x1

    :goto_1
    move/from16 v17, v6

    goto/16 :goto_6

    :cond_3
    const/4 v6, 0x2

    if-ne v3, v6, :cond_e

    iget-object v6, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/transcode/core/Encode$Region;

    iget v6, v6, Lcom/samsung/android/transcode/core/Encode$Region;->regionStartTime:I

    int-to-long v6, v6

    mul-long v6, v6, v24

    sub-long v6, v6, p1

    int-to-double v9, v8

    div-double v22, v22, v9

    mul-double v9, v22, v26

    double-to-long v9, v9

    cmp-long v6, v6, v9

    if-gez v6, :cond_e

    const/4 v6, 0x1

    goto :goto_1

    :cond_4
    move-wide/from16 v29, v9

    move-object/from16 v31, v13

    move/from16 v32, v14

    goto :goto_2

    :cond_5
    move/from16 v28, v7

    move-wide/from16 v29, v9

    move-object/from16 v31, v13

    move/from16 v32, v14

    :goto_2
    iget-object v6, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/transcode/core/Encode$Region;

    iget v6, v6, Lcom/samsung/android/transcode/core/Encode$Region;->regionStartTime:I

    int-to-long v6, v6

    mul-long v6, v6, v24

    cmp-long v6, p1, v6

    if-ltz v6, :cond_b

    iget-object v6, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/transcode/core/Encode$Region;

    iget v6, v6, Lcom/samsung/android/transcode/core/Encode$Region;->regionEndTime:I

    int-to-long v6, v6

    mul-long v6, v6, v24

    cmp-long v6, p1, v6

    if-gez v6, :cond_b

    const/4 v6, 0x2

    if-ne v4, v6, :cond_a

    if-nez v8, :cond_6

    const/16 v8, 0x1e

    :cond_6
    iget-object v6, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/transcode/core/Encode$Region;

    iget v6, v6, Lcom/samsung/android/transcode/core/Encode$Region;->regionEndTime:I

    int-to-long v6, v6

    mul-long v6, v6, v24

    sub-long v6, v6, p1

    const-wide/16 v9, 0x0

    cmp-long v6, v6, v9

    if-lez v6, :cond_a

    iget-object v6, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/transcode/core/Encode$Region;

    iget v6, v6, Lcom/samsung/android/transcode/core/Encode$Region;->regionEndTime:I

    int-to-long v6, v6

    mul-long v6, v6, v24

    sub-long v6, v6, p1

    long-to-double v6, v6

    int-to-double v9, v8

    div-double v9, v22, v9

    mul-double v9, v9, v26

    int-to-double v13, v8

    div-double v13, v20, v13

    mul-double v13, v13, v26

    const-wide/high16 v33, 0x402c000000000000L    # 14.0

    mul-double v13, v13, v33

    add-double/2addr v9, v13

    cmpg-double v6, v6, v9

    if-gez v6, :cond_a

    const/4 v6, 0x1

    if-ne v3, v6, :cond_7

    const/16 v17, 0x1

    goto :goto_3

    :cond_7
    const/4 v6, 0x2

    if-ne v3, v6, :cond_8

    iget-object v6, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/transcode/core/Encode$Region;

    iget v6, v6, Lcom/samsung/android/transcode/core/Encode$Region;->regionEndTime:I

    int-to-long v6, v6

    sub-long v6, v6, p1

    long-to-double v6, v6

    int-to-double v9, v8

    div-double v9, v22, v9

    mul-double v9, v9, v26

    int-to-double v13, v8

    div-double v13, v20, v13

    mul-double v13, v13, v26

    const-wide/high16 v33, 0x4018000000000000L    # 6.0

    mul-double v13, v13, v33

    add-double/2addr v9, v13

    cmpg-double v6, v6, v9

    if-gez v6, :cond_8

    const/16 v17, 0x1

    goto :goto_3

    :cond_8
    const/4 v6, 0x3

    if-ne v3, v6, :cond_9

    iget-object v6, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/transcode/core/Encode$Region;

    iget v6, v6, Lcom/samsung/android/transcode/core/Encode$Region;->regionEndTime:I

    int-to-long v6, v6

    sub-long v6, v6, p1

    long-to-double v6, v6

    int-to-double v9, v8

    div-double v9, v22, v9

    mul-double v9, v9, v26

    int-to-double v13, v8

    div-double v20, v20, v13

    mul-double v20, v20, v26

    mul-double v20, v20, v18

    add-double v9, v9, v20

    cmpg-double v6, v6, v9

    if-gez v6, :cond_9

    const/16 v17, 0x1

    goto :goto_3

    :cond_9
    const/4 v6, 0x4

    if-ne v3, v6, :cond_a

    iget-object v6, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/transcode/core/Encode$Region;

    iget v6, v6, Lcom/samsung/android/transcode/core/Encode$Region;->regionEndTime:I

    int-to-long v6, v6

    sub-long v6, v6, p1

    long-to-double v6, v6

    int-to-double v9, v8

    div-double v22, v22, v9

    mul-double v22, v22, v26

    cmpg-double v6, v6, v22

    if-gez v6, :cond_a

    const/16 v17, 0x1

    :cond_a
    :goto_3
    iget-object v6, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/transcode/core/Encode$Region;

    iget-object v6, v6, Lcom/samsung/android/transcode/core/Encode$Region;->regionSpeedType:Lcom/samsung/android/transcode/core/Encode$Speed;

    invoke-static {v6}, Lcom/samsung/android/transcode/core/EncodeVideo;->getTimeScale(Lcom/samsung/android/transcode/core/Encode$Speed;)F

    move-result v7

    iget-object v9, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/transcode/core/Encode$Region;

    iget v9, v9, Lcom/samsung/android/transcode/core/Encode$Region;->regionStartTime:I

    int-to-long v9, v9

    mul-long v9, v9, v24

    iget-object v13, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v13, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/samsung/android/transcode/core/Encode$Region;

    iget v13, v13, Lcom/samsung/android/transcode/core/Encode$Region;->regionStartTime:I

    int-to-long v13, v13

    mul-long v13, v13, v24

    sub-long v13, p1, v13

    const v18, 0x49742400    # 1000000.0f

    move-object/from16 v35, v6

    mul-float v6, v7, v18

    move/from16 v36, v7

    float-to-long v6, v6

    mul-long/2addr v13, v6

    const-wide/32 v6, 0xf4240

    div-long/2addr v13, v6

    add-long/2addr v9, v13

    nop

    move v5, v15

    move/from16 v6, v16

    move-object/from16 v13, v35

    move/from16 v14, v36

    goto/16 :goto_8

    :cond_b
    iget-object v6, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/transcode/core/Encode$Region;

    iget v6, v6, Lcom/samsung/android/transcode/core/Encode$Region;->regionEndTime:I

    int-to-long v6, v6

    mul-long v6, v6, v24

    cmp-long v6, p1, v6

    if-ltz v6, :cond_e

    iget-object v6, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/transcode/core/Encode$Region;

    iget-object v6, v6, Lcom/samsung/android/transcode/core/Encode$Region;->regionSpeedType:Lcom/samsung/android/transcode/core/Encode$Speed;

    invoke-static {v6}, Lcom/samsung/android/transcode/core/EncodeVideo;->getTimeScale(Lcom/samsung/android/transcode/core/Encode$Speed;)F

    move-result v7

    const/4 v9, 0x1

    if-ne v4, v9, :cond_c

    long-to-double v9, v11

    float-to-double v13, v7

    sub-double v13, v13, v20

    iget-object v1, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/transcode/core/Encode$Region;

    iget v1, v1, Lcom/samsung/android/transcode/core/Encode$Region;->regionEndTime:I

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/transcode/core/Encode$Region;

    iget v2, v2, Lcom/samsung/android/transcode/core/Encode$Region;->regionStartTime:I

    sub-int/2addr v1, v2

    int-to-double v1, v1

    mul-double/2addr v13, v1

    mul-double v26, v26, v13

    add-double v9, v9, v26

    double-to-long v1, v9

    :goto_4
    move-wide v11, v1

    goto :goto_5

    :cond_c
    const/4 v1, 0x2

    if-ne v4, v1, :cond_d

    long-to-double v1, v11

    float-to-double v9, v7

    sub-double v20, v20, v9

    mul-double v26, v26, v20

    iget-object v9, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/transcode/core/Encode$Region;

    iget v9, v9, Lcom/samsung/android/transcode/core/Encode$Region;->regionEndTime:I

    iget-object v10, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/transcode/core/Encode$Region;

    iget v10, v10, Lcom/samsung/android/transcode/core/Encode$Region;->regionStartTime:I

    sub-int/2addr v9, v10

    int-to-double v9, v9

    mul-double v26, v26, v9

    sub-double v1, v1, v26

    double-to-long v1, v1

    goto :goto_4

    :cond_d
    :goto_5
    sget-object v1, Lcom/samsung/android/transcode/core/Encode$Speed;->NORMAL:Lcom/samsung/android/transcode/core/Encode$Speed;

    move-object v13, v1

    move v14, v7

    goto :goto_7

    :cond_e
    :goto_6
    move-object/from16 v13, v31

    move/from16 v14, v32

    :goto_7
    add-int/lit8 v5, v5, 0x1

    move/from16 v7, v28

    move-wide/from16 v9, v29

    goto/16 :goto_0

    :cond_f
    move/from16 v28, v7

    move-wide/from16 v29, v9

    move-object/from16 v31, v13

    move/from16 v32, v14

    move v5, v15

    move/from16 v6, v16

    :goto_8
    add-long v1, v9, v11

    iput-wide v1, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mModifiedVideotime:J

    move/from16 v1, v17

    goto :goto_9

    :cond_10
    move/from16 v28, v7

    move-wide/from16 v29, v9

    move v1, v8

    move v5, v15

    move/from16 v6, v16

    move-wide/from16 v9, v29

    move/from16 v8, p6

    :goto_9
    const/4 v2, 0x1

    if-ne v4, v2, :cond_1a

    if-ne v5, v2, :cond_1a

    const/16 v2, 0x6e

    const/16 v7, 0xe6

    if-lt v8, v7, :cond_12

    if-lez v3, :cond_14

    add-int/lit8 v7, p4, -0x3

    if-eq v3, v7, :cond_11

    add-int/lit8 v7, p4, -0x2

    if-eq v3, v7, :cond_11

    add-int/lit8 v7, p4, -0x1

    if-ne v3, v7, :cond_14

    :cond_11
    const/4 v7, 0x1

    :goto_a
    goto :goto_b

    :cond_12
    if-lt v8, v2, :cond_14

    if-lez v3, :cond_14

    add-int/lit8 v7, p4, -0x2

    if-eq v3, v7, :cond_13

    add-int/lit8 v7, p4, -0x1

    if-ne v3, v7, :cond_14

    :cond_13
    const/4 v7, 0x1

    goto :goto_a

    :cond_14
    move/from16 v7, v28

    :goto_b
    const/16 v2, 0xe6

    if-lt v8, v2, :cond_17

    sget-object v2, Lcom/samsung/android/transcode/core/EncodeVideo$5;->$SwitchMap$com$samsung$android$transcode$core$Encode$Speed:[I

    invoke-virtual {v13}, Lcom/samsung/android/transcode/core/Encode$Speed;->ordinal()I

    move-result v15

    aget v2, v2, v15

    packed-switch v2, :pswitch_data_0

    const-string v2, "TranscodeLib"

    const-string v0, "ProcSVCLayerDrop Should not be here!"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    :pswitch_0
    add-int/lit8 v2, p4, -0x3

    if-eq v3, v2, :cond_15

    add-int/lit8 v2, p4, -0x2

    if-eq v3, v2, :cond_15

    add-int/lit8 v2, p4, -0x1

    if-ne v3, v2, :cond_19

    :cond_15
    const/4 v2, 0x0

    goto :goto_c

    :pswitch_1
    add-int/lit8 v2, p4, -0x3

    if-eq v3, v2, :cond_16

    add-int/lit8 v2, p4, -0x2

    if-ne v3, v2, :cond_19

    :cond_16
    const/4 v2, 0x0

    goto :goto_c

    :pswitch_2
    add-int/lit8 v2, p4, -0x3

    if-ne v3, v2, :cond_19

    const/4 v2, 0x0

    :goto_c
    move v7, v2

    goto :goto_e

    :pswitch_3
    goto :goto_e

    :cond_17
    const/16 v0, 0x6e

    if-lt v8, v0, :cond_19

    sget-object v0, Lcom/samsung/android/transcode/core/EncodeVideo$5;->$SwitchMap$com$samsung$android$transcode$core$Encode$Speed:[I

    invoke-virtual {v13}, Lcom/samsung/android/transcode/core/Encode$Speed;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_1

    const-string v0, "TranscodeLib"

    const-string v2, "ProcSVCLayerDrop Should not be here!!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    :pswitch_4
    add-int/lit8 v0, p4, -0x2

    if-eq v3, v0, :cond_18

    add-int/lit8 v0, p4, -0x1

    if-ne v3, v0, :cond_19

    :cond_18
    const/4 v0, 0x0

    goto :goto_d

    :pswitch_5
    add-int/lit8 v0, p4, -0x2

    if-ne v3, v0, :cond_19

    const/4 v0, 0x0

    :goto_d
    move v7, v0

    goto :goto_e

    :pswitch_6
    nop

    :cond_19
    :goto_e
    const/4 v0, 0x1

    if-ne v1, v0, :cond_1b

    const/4 v7, 0x0

    goto :goto_f

    :cond_1a
    move v0, v2

    move/from16 v7, v28

    :cond_1b
    :goto_f
    const/4 v2, 0x2

    if-ne v4, v2, :cond_22

    if-ne v6, v0, :cond_22

    sget-object v2, Lcom/samsung/android/transcode/core/EncodeVideo$5;->$SwitchMap$com$samsung$android$transcode$core$Encode$Speed:[I

    invoke-virtual {v13}, Lcom/samsung/android/transcode/core/Encode$Speed;->ordinal()I

    move-result v15

    aget v2, v2, v15

    if-eq v2, v0, :cond_20

    packed-switch v2, :pswitch_data_2

    const-string v0, "TranscodeLib"

    const-string v2, "ProcSVCLayerDrop Should not be here!!!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    :pswitch_7
    add-int/lit8 v0, p4, -0x5

    if-eq v3, v0, :cond_1c

    add-int/lit8 v0, p4, -0x4

    if-eq v3, v0, :cond_1c

    add-int/lit8 v0, p4, -0x3

    if-eq v3, v0, :cond_1c

    add-int/lit8 v0, p4, -0x2

    if-eq v3, v0, :cond_1c

    add-int/lit8 v0, p4, -0x1

    if-ne v3, v0, :cond_21

    :cond_1c
    const/4 v0, 0x1

    goto :goto_10

    :pswitch_8
    add-int/lit8 v0, p4, -0x4

    if-eq v3, v0, :cond_1d

    add-int/lit8 v0, p4, -0x3

    if-eq v3, v0, :cond_1d

    add-int/lit8 v0, p4, -0x2

    if-eq v3, v0, :cond_1d

    add-int/lit8 v0, p4, -0x1

    if-ne v3, v0, :cond_21

    :cond_1d
    const/4 v0, 0x1

    goto :goto_10

    :pswitch_9
    add-int/lit8 v0, p4, -0x3

    if-eq v3, v0, :cond_1e

    add-int/lit8 v0, p4, -0x2

    if-eq v3, v0, :cond_1e

    add-int/lit8 v0, p4, -0x1

    if-ne v3, v0, :cond_21

    :cond_1e
    const/4 v0, 0x1

    goto :goto_10

    :pswitch_a
    add-int/lit8 v0, p4, -0x2

    if-eq v3, v0, :cond_1f

    add-int/lit8 v0, p4, -0x1

    if-ne v3, v0, :cond_21

    :cond_1f
    const/4 v0, 0x1

    goto :goto_10

    :pswitch_b
    add-int/lit8 v0, p4, -0x1

    if-ne v3, v0, :cond_21

    const/4 v0, 0x1

    :goto_10
    move v7, v0

    goto :goto_11

    :cond_20
    nop

    :cond_21
    :goto_11
    const/4 v0, 0x1

    if-ne v1, v0, :cond_22

    const/4 v7, 0x0

    :cond_22
    return v7

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x5
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method

.method static synthetic access$002(Lcom/samsung/android/transcode/core/EncodeVideo;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->formatupdated:Z

    return p1
.end method

.method static synthetic access$100(Lcom/samsung/android/transcode/core/EncodeVideo;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputReachedEOS:Z

    return v0
.end method

.method static synthetic access$102(Lcom/samsung/android/transcode/core/EncodeVideo;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputReachedEOS:Z

    return p1
.end method

.method static synthetic access$202(Lcom/samsung/android/transcode/core/EncodeVideo;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->HDR_videoDone:Z

    return p1
.end method

.method static synthetic access$302(Lcom/samsung/android/transcode/core/EncodeVideo;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mError:Z

    return p1
.end method

.method static synthetic access$400(Lcom/samsung/android/transcode/core/EncodeVideo;)Landroid/media/MediaExtractor;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/transcode/core/EncodeVideo;)J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoEndUs:J

    return-wide v0
.end method

.method static synthetic access$600(Lcom/samsung/android/transcode/core/EncodeVideo;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->seidata:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/android/transcode/core/EncodeVideo;)Lcom/samsung/android/media/vidsol/simgp/ImgConverter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mImgConverter:Lcom/samsung/android/media/vidsol/simgp/ImgConverter;

    return-object v0
.end method

.method static synthetic access$800(Lcom/samsung/android/transcode/core/EncodeVideo;)J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mSeektime:J

    return-wide v0
.end method

.method static synthetic access$900(Lcom/samsung/android/transcode/core/EncodeVideo;)J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mPausedVideoUs:J

    return-wide v0
.end method

.method static synthetic access$902(Lcom/samsung/android/transcode/core/EncodeVideo;J)J
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mPausedVideoUs:J

    return-wide p1
.end method

.method public static checkRewritable(Landroid/content/Context;Landroid/net/Uri;)I
    .locals 14

    const/4 v0, -0x1

    if-eqz p1, :cond_b

    invoke-static {p0, p1}, Lcom/samsung/android/transcode/util/CodecsHelper;->isSupportedFormat(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_a

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, p1}, Lcom/samsung/android/transcode/util/CodecsHelper;->createExtractor(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaExtractor;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v1}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Number of tracks: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    invoke-static {v1}, Lcom/samsung/android/transcode/util/CodecsHelper;->getAndSelectVideoTrackIndex(Landroid/media/MediaExtractor;)I

    move-result v9

    const/4 v10, -0x1

    if-ne v9, v10, :cond_0

    const-string v11, "TranscodeLib"

    const-string v12, "Valid video track absent"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    goto :goto_2

    :cond_0
    const/4 v4, 0x1

    invoke-virtual {v1, v9}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v6

    const-string/jumbo v11, "mime"

    invoke-virtual {v6, v11}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "video/avc"

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_2

    const-string/jumbo v12, "video/mp4v-es"

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_2

    const-string/jumbo v12, "video/3gpp"

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_2

    const-string/jumbo v12, "video/hevc"

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_1

    goto :goto_1

    :cond_1
    const-string v12, "TranscodeLib"

    const-string v13, "Unsupported mime type: video"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v2, 0x1

    :goto_2
    invoke-static {v1}, Lcom/samsung/android/transcode/util/CodecsHelper;->getAndSelectAudioTrackIndex(Landroid/media/MediaExtractor;)I

    move-result v11

    if-ne v11, v10, :cond_3

    const-string v10, "TranscodeLib"

    const-string v12, "Valid audio track absent"

    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    goto :goto_4

    :cond_3
    const/4 v5, 0x1

    invoke-virtual {v1, v11}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v7

    const-string/jumbo v10, "mime"

    invoke-virtual {v7, v10}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v12, "audio/mp4a-latm"

    invoke-virtual {v10, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_5

    const-string v12, "audio/3gpp"

    invoke-virtual {v10, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_5

    const-string v12, "audio/amr-wb"

    invoke-virtual {v10, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_4

    goto :goto_3

    :cond_4
    const-string v12, "TranscodeLib"

    const-string v13, "Unsuppported mime type: audio"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_5
    :goto_3
    const/4 v3, 0x1

    :goto_4
    if-eqz v4, :cond_9

    if-eqz v2, :cond_8

    if-eqz v5, :cond_7

    if-eqz v3, :cond_6

    const/4 v0, 0x1

    goto :goto_5

    :cond_6
    const/4 v0, 0x0

    goto :goto_5

    :cond_7
    const/4 v0, 0x1

    goto :goto_5

    :cond_8
    const/4 v0, 0x0

    goto :goto_5

    :cond_9
    const/4 v0, -0x1

    :goto_5
    goto :goto_6

    :cond_a
    const/4 v0, 0x0

    goto :goto_6

    :cond_b
    const-string v1, "TranscodeLib"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid file uri: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    :goto_6
    return v0
.end method

.method public static checkRewritable(Ljava/lang/String;)I
    .locals 14

    const/4 v0, -0x1

    if-eqz p0, :cond_b

    invoke-static {p0}, Lcom/samsung/android/transcode/util/CodecsHelper;->isSupportedFormat(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_a

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/transcode/util/CodecsHelper;->createExtractor(Ljava/lang/String;)Landroid/media/MediaExtractor;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v1}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Number of tracks: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    invoke-static {v1}, Lcom/samsung/android/transcode/util/CodecsHelper;->getAndSelectVideoTrackIndex(Landroid/media/MediaExtractor;)I

    move-result v9

    const/4 v10, -0x1

    if-ne v9, v10, :cond_0

    const-string v11, "TranscodeLib"

    const-string v12, "Valid video track absent"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    goto :goto_2

    :cond_0
    const/4 v4, 0x1

    invoke-virtual {v1, v9}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v6

    const-string/jumbo v11, "mime"

    invoke-virtual {v6, v11}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "video/avc"

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_2

    const-string/jumbo v12, "video/mp4v-es"

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_2

    const-string/jumbo v12, "video/3gpp"

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_2

    const-string/jumbo v12, "video/hevc"

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_1

    goto :goto_1

    :cond_1
    const-string v12, "TranscodeLib"

    const-string v13, "Unsupported mime type: video"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v2, 0x1

    :goto_2
    invoke-static {v1}, Lcom/samsung/android/transcode/util/CodecsHelper;->getAndSelectAudioTrackIndex(Landroid/media/MediaExtractor;)I

    move-result v11

    if-ne v11, v10, :cond_3

    const-string v10, "TranscodeLib"

    const-string v12, "Valid audio track absent"

    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    goto :goto_4

    :cond_3
    const/4 v5, 0x1

    invoke-virtual {v1, v11}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v7

    const-string/jumbo v10, "mime"

    invoke-virtual {v7, v10}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v12, "audio/mp4a-latm"

    invoke-virtual {v10, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_5

    const-string v12, "audio/3gpp"

    invoke-virtual {v10, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_5

    const-string v12, "audio/amr-wb"

    invoke-virtual {v10, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_4

    goto :goto_3

    :cond_4
    const-string v12, "TranscodeLib"

    const-string v13, "Unsuppported mime type: audio"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_5
    :goto_3
    const/4 v3, 0x1

    :goto_4
    if-eqz v4, :cond_9

    if-eqz v2, :cond_8

    if-eqz v5, :cond_7

    if-eqz v3, :cond_6

    const/4 v0, 0x1

    goto :goto_5

    :cond_6
    const/4 v0, 0x0

    goto :goto_5

    :cond_7
    const/4 v0, 0x1

    goto :goto_5

    :cond_8
    const/4 v0, 0x0

    goto :goto_5

    :cond_9
    const/4 v0, -0x1

    :goto_5
    goto :goto_6

    :cond_a
    const/4 v0, 0x0

    goto :goto_6

    :cond_b
    const-string v1, "TranscodeLib"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid file path: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    :goto_6
    return v0
.end method

.method private checkSilentRegion(J)I
    .locals 5

    const-string v0, "TranscodeLib"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkSilentRegion  TimeUs:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/transcode/core/Encode$Region;

    iget v1, v1, Lcom/samsung/android/transcode/core/Encode$Region;->regionAudioEndTime:I

    int-to-long v1, v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    cmp-long v1, p1, v1

    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/transcode/core/Encode$Region;

    iget v1, v1, Lcom/samsung/android/transcode/core/Encode$Region;->regionEndTime:I

    int-to-long v1, v1

    mul-long/2addr v1, v3

    cmp-long v1, p1, v1

    if-gtz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/transcode/core/Encode$Region;

    iget v1, v1, Lcom/samsung/android/transcode/core/Encode$Region;->regionSpeed:I

    const/16 v2, 0x9

    if-ne v1, v2, :cond_0

    const-string v1, "TranscodeLib"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkSilentRegion_SuperSlow Cancel Region:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method private createDefaultRegion(Ljava/lang/String;Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 10

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    move-wide v3, v1

    const/4 v5, 0x0

    :try_start_0
    sget-boolean v6, Lcom/samsung/android/transcode/core/EncodeVideo;->mUseUri:Z

    if-eqz v6, :cond_0

    invoke-static {p2, p3}, Lcom/samsung/android/transcode/util/CodecsHelper;->createExtractor(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaExtractor;

    move-result-object v6

    move-object v0, v6

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/samsung/android/transcode/util/CodecsHelper;->createExtractor(Ljava/lang/String;)Landroid/media/MediaExtractor;

    move-result-object v6

    move-object v0, v6

    :goto_0
    invoke-static {v0}, Lcom/samsung/android/transcode/util/CodecsHelper;->getAndSelectVideoTrackIndex(Landroid/media/MediaExtractor;)I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v7

    const-string v8, "durationUs"

    invoke-virtual {v7, v8}, Landroid/media/MediaFormat;->getLong(Ljava/lang/String;)J

    move-result-wide v8
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-wide v3, v8

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    :cond_1
    const/4 v0, 0x0

    nop

    const-string v6, "TranscodeLib"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "createDefaultRegion duration:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    cmp-long v1, v3, v1

    if-gtz v1, :cond_2

    return v5

    :cond_2
    new-instance v1, Lcom/samsung/android/transcode/core/Encode$Region;

    invoke-direct {v1}, Lcom/samsung/android/transcode/core/Encode$Region;-><init>()V

    const-wide/16 v5, 0x2

    mul-long/2addr v5, v3

    const-wide/16 v7, 0x2710

    div-long/2addr v5, v7

    long-to-int v2, v5

    iput v2, v1, Lcom/samsung/android/transcode/core/Encode$Region;->regionStartTime:I

    const-wide/16 v5, 0x8

    mul-long/2addr v5, v3

    div-long/2addr v5, v7

    long-to-int v2, v5

    iput v2, v1, Lcom/samsung/android/transcode/core/Encode$Region;->regionEndTime:I

    iget v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingMode:I

    const/4 v5, 0x1

    if-ne v2, v5, :cond_3

    const/4 v2, 0x4

    iput v2, v1, Lcom/samsung/android/transcode/core/Encode$Region;->regionSpeed:I

    goto :goto_1

    :cond_3
    iget v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingMode:I

    const/4 v6, 0x2

    if-ne v2, v6, :cond_4

    const/4 v2, 0x7

    iput v2, v1, Lcom/samsung/android/transcode/core/Encode$Region;->regionSpeed:I

    :cond_4
    :goto_1
    iget v2, v1, Lcom/samsung/android/transcode/core/Encode$Region;->regionSpeed:I

    invoke-static {v2}, Lcom/samsung/android/transcode/core/EncodeVideo;->getSpeed(I)Lcom/samsung/android/transcode/core/Encode$Speed;

    move-result-object v2

    iput-object v2, v1, Lcom/samsung/android/transcode/core/Encode$Region;->regionSpeedType:Lcom/samsung/android/transcode/core/Encode$Speed;

    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return v5

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    :try_start_1
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    :cond_5
    const/4 v0, 0x0

    return v5

    :goto_2
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    :cond_6
    const/4 v0, 0x0

    throw v1
.end method

.method private extractSEFData(Ljava/lang/String;Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 4

    sget-boolean v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUseUri:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-nez p3, :cond_0

    const-string v0, "TranscodeLib"

    const-string/jumbo v2, "uri is NULL"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/transcode/core/EncodeVideo;->getVEEditFilePath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v2, "TranscodeLib"

    const-string v3, "filepath is Wrong"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_1
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    goto :goto_0

    :cond_2
    if-nez p1, :cond_3

    const-string v0, "TranscodeLib"

    const-string v2, "filepath is NULL"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_3
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_0
    :try_start_0
    invoke-static {v0}, Lcom/samsung/android/media/SemExtendedFormat;->isValidFile(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingMode:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_7

    iget v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    goto :goto_2

    :cond_4
    iget v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingMode:I

    const/16 v3, 0x8

    if-eq v2, v3, :cond_6

    iget v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingMode:I

    const/4 v3, 0x7

    if-eq v2, v3, :cond_6

    iget v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingMode:I

    const/16 v3, 0x9

    if-ne v2, v3, :cond_5

    goto :goto_1

    :cond_5
    return-object v1

    :cond_6
    :goto_1
    const-string v2, "Super_SlowMotion_Data"

    invoke-static {v0, v2}, Lcom/samsung/android/media/SemExtendedFormat;->getData(Ljava/io/File;Ljava/lang/String;)[B

    move-result-object v2

    goto :goto_3

    :cond_7
    :goto_2
    const-string v2, "SlowMotion_Data"

    invoke-static {v0, v2}, Lcom/samsung/android/media/SemExtendedFormat;->getData(Ljava/io/File;Ljava/lang/String;)[B

    move-result-object v2

    :goto_3
    nop

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v3

    return-object v1

    :cond_8
    nop

    return-object v1

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    return-object v1
.end method

.method public static findAtom(Landroid/net/Uri;Ljava/lang/String;)Z
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p1

    const/4 v2, 0x0

    new-instance v0, Ljava/io/File;

    invoke-virtual/range {p0 .. p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v3, v0

    const/4 v0, 0x4

    new-array v4, v0, [B

    new-array v5, v0, [B

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "file size: "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    const-string/jumbo v0, "mdia"

    const-string/jumbo v8, "minf"

    const-string/jumbo v9, "moov"

    const-string/jumbo v10, "stbl"

    const-string/jumbo v11, "trak"

    filled-new-array {v0, v8, v9, v10, v11}, [Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    const/4 v0, 0x0

    move-object v9, v0

    :try_start_0
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string/jumbo v10, "r"

    invoke-direct {v0, v3, v10}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-object v9, v0

    const-wide/16 v12, 0x0

    :goto_0
    cmp-long v0, v12, v6

    if-gez v0, :cond_4

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "filePointer: "

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    invoke-virtual {v9, v12, v13}, Ljava/io/RandomAccessFile;->seek(J)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    move/from16 v19, v2

    goto/16 :goto_5

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    array-length v0, v4

    const/4 v14, 0x0

    invoke-virtual {v9, v4, v14, v0}, Ljava/io/RandomAccessFile;->read([BII)I

    invoke-static {v4}, Lcom/samsung/android/transcode/core/EncodeVideo;->unsignedIntToLong([B)J

    move-result-wide v15

    move-wide/from16 v17, v15

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Atom Size: "

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v10, v17

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    array-length v0, v5

    invoke-virtual {v9, v5, v14, v0}, Ljava/io/RandomAccessFile;->read([BII)I

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>([B)V

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Atom Box: "

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    invoke-static {v8, v0}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v14

    if-ltz v14, :cond_0

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move/from16 v19, v2

    :try_start_3
    const-string v2, "Found parent: "

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " move to position: "

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    const-wide/16 v15, 0x8

    add-long/2addr v12, v15

    :goto_2
    const-wide/16 v1, 0x0

    goto/16 :goto_3

    :cond_0
    move/from16 v19, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Found: "

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    const/4 v2, 0x1

    goto/16 :goto_4

    :cond_1
    const-wide/16 v15, 0x1

    cmp-long v2, v10, v15

    if-nez v2, :cond_2

    move-object/from16 v20, v0

    const-wide/16 v15, 0x8

    add-long v0, v12, v15

    invoke-virtual {v9, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    const/16 v0, 0x8

    new-array v0, v0, [B

    array-length v1, v0

    const/4 v2, 0x0

    invoke-virtual {v9, v0, v2, v1}, Ljava/io/RandomAccessFile;->read([BII)I

    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, v0}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v1}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v15

    move-wide/from16 v21, v15

    move-object/from16 v23, v0

    move-object/from16 v24, v1

    move-wide/from16 v0, v21

    add-long/2addr v12, v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "64bit: "

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    move-object/from16 v20, v0

    const-wide/16 v1, 0x0

    cmp-long v0, v10, v1

    if-nez v0, :cond_3

    const-string v0, "filePointer does not go forward. Exit."

    invoke-static {v0}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    const/4 v2, 0x0

    goto :goto_4

    :cond_3
    add-long/2addr v12, v10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "move: "

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v15, " atomsize "

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_3
    nop

    move/from16 v2, v19

    move-object/from16 v1, p1

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    goto :goto_5

    :cond_4
    move/from16 v19, v2

    :goto_4
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V

    nop

    return v2

    :catchall_2
    move-exception v0

    move/from16 v19, v2

    :goto_5
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V

    throw v0
.end method

.method public static findAtom(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p1

    const/4 v2, 0x0

    new-instance v0, Ljava/io/File;

    move-object/from16 v3, p0

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v4, v0

    const/4 v0, 0x4

    new-array v5, v0, [B

    new-array v6, v0, [B

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "file size: "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    const-string/jumbo v0, "mdia"

    const-string/jumbo v9, "minf"

    const-string/jumbo v10, "moov"

    const-string/jumbo v11, "stbl"

    const-string/jumbo v12, "trak"

    filled-new-array {v0, v9, v10, v11, v12}, [Ljava/lang/String;

    move-result-object v0

    move-object v9, v0

    const/4 v0, 0x0

    move-object v10, v0

    :try_start_0
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string/jumbo v11, "r"

    invoke-direct {v0, v4, v11}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-object v10, v0

    const-wide/16 v13, 0x0

    :goto_0
    cmp-long v0, v13, v7

    if-gez v0, :cond_4

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "filePointer: "

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    invoke-virtual {v10, v13, v14}, Ljava/io/RandomAccessFile;->seek(J)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    move/from16 v20, v2

    goto/16 :goto_5

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    array-length v0, v5

    const/4 v15, 0x0

    invoke-virtual {v10, v5, v15, v0}, Ljava/io/RandomAccessFile;->read([BII)I

    invoke-static {v5}, Lcom/samsung/android/transcode/core/EncodeVideo;->unsignedIntToLong([B)J

    move-result-wide v16

    move-wide/from16 v18, v16

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Atom Size: "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v11, v18

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    array-length v0, v6

    invoke-virtual {v10, v6, v15, v0}, Ljava/io/RandomAccessFile;->read([BII)I

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v6}, Ljava/lang/String;-><init>([B)V

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move/from16 v20, v2

    :try_start_3
    const-string v2, "Atom Box: "

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    invoke-static {v9, v0}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-ltz v2, :cond_0

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Found parent: "

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " move to position: "

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    const-wide/16 v15, 0x8

    add-long/2addr v13, v15

    :goto_2
    const-wide/16 v15, 0x0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Found: "

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    const/4 v3, 0x1

    nop

    move v0, v3

    goto/16 :goto_4

    :cond_1
    const-wide/16 v15, 0x1

    cmp-long v3, v11, v15

    if-nez v3, :cond_2

    move-object/from16 v21, v0

    const-wide/16 v15, 0x8

    add-long v0, v13, v15

    invoke-virtual {v10, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    const/16 v0, 0x8

    new-array v0, v0, [B

    array-length v1, v0

    const/4 v3, 0x0

    invoke-virtual {v10, v0, v3, v1}, Ljava/io/RandomAccessFile;->read([BII)I

    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, v0}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v1}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v15

    move-wide/from16 v22, v15

    move-object/from16 v24, v0

    move-object/from16 v25, v1

    move-wide/from16 v0, v22

    add-long/2addr v13, v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "64bit: "

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    move-object/from16 v21, v0

    const-wide/16 v15, 0x0

    cmp-long v0, v11, v15

    if-nez v0, :cond_3

    const-string v0, "filePointer does not go forward. Exit."

    invoke-static {v0}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    const/4 v0, 0x0

    goto :goto_4

    :cond_3
    add-long/2addr v13, v11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "move: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " atomsize "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_3
    nop

    move/from16 v2, v20

    move-object/from16 v1, p1

    move-object/from16 v3, p0

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    goto :goto_5

    :cond_4
    move/from16 v20, v2

    move/from16 v0, v20

    :goto_4
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V

    nop

    return v0

    :catchall_2
    move-exception v0

    move/from16 v20, v2

    :goto_5
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V

    throw v0
.end method

.method private getAudioDrop(JI)Z
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p3

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    sget-object v6, Lcom/samsung/android/transcode/core/Encode$Speed;->NORMAL:Lcom/samsung/android/transcode/core/Encode$Speed;

    const/high16 v7, 0x3f800000    # 1.0f

    move-wide/from16 v2, p1

    iget-object v8, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    if-eqz v8, :cond_a

    iget-object v8, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_a

    const/4 v8, 0x0

    const/4 v9, 0x2

    const/4 v10, 0x1

    const-wide/16 v11, 0x3e8

    if-eq v1, v10, :cond_4

    if-ne v1, v9, :cond_0

    goto/16 :goto_1

    :cond_0
    nop

    :goto_0
    iget-object v9, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_2

    iget-object v9, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/transcode/core/Encode$Region;

    iget v9, v9, Lcom/samsung/android/transcode/core/Encode$Region;->regionEndTime:I

    int-to-long v9, v9

    mul-long/2addr v9, v11

    cmp-long v9, p1, v9

    if-lez v9, :cond_2

    iget-object v9, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/transcode/core/Encode$Region;

    iget v9, v9, Lcom/samsung/android/transcode/core/Encode$Region;->regionSpeed:I

    const/16 v10, 0x9

    if-ne v9, v10, :cond_1

    iget-object v9, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/transcode/core/Encode$Region;

    iget v9, v9, Lcom/samsung/android/transcode/core/Encode$Region;->regionEndTime:I

    iget-object v10, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/transcode/core/Encode$Region;

    iget v10, v10, Lcom/samsung/android/transcode/core/Encode$Region;->regionAudioEndTime:I

    sub-int/2addr v9, v10

    int-to-long v9, v9

    mul-long/2addr v9, v11

    add-long/2addr v4, v9

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_2
    cmp-long v8, v2, v4

    if-gez v8, :cond_3

    const-string v8, "TranscodeLib"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[getAudioDrop]SampleTime error tempSampleTime = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, ",timeDelta :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :cond_3
    sub-long/2addr v2, v4

    const-string v8, "TranscodeLib"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[getAudioDrop]SampleTime new tempSampleTime = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, ",timeDelta :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :cond_4
    :goto_1
    nop

    :goto_2
    iget-object v13, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    if-ge v8, v13, :cond_9

    iget-object v13, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v13, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/samsung/android/transcode/core/Encode$Region;

    iget v13, v13, Lcom/samsung/android/transcode/core/Encode$Region;->regionStartTime:I

    int-to-long v9, v13

    mul-long/2addr v9, v11

    cmp-long v9, p1, v9

    if-ltz v9, :cond_5

    iget-object v9, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/transcode/core/Encode$Region;

    iget v9, v9, Lcom/samsung/android/transcode/core/Encode$Region;->regionEndTime:I

    int-to-long v9, v9

    mul-long/2addr v9, v11

    cmp-long v9, p1, v9

    if-gez v9, :cond_5

    iget-object v9, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/transcode/core/Encode$Region;

    iget-object v6, v9, Lcom/samsung/android/transcode/core/Encode$Region;->regionSpeedType:Lcom/samsung/android/transcode/core/Encode$Speed;

    invoke-static {v6}, Lcom/samsung/android/transcode/core/EncodeVideo;->getTimeScale(Lcom/samsung/android/transcode/core/Encode$Speed;)F

    move-result v7

    iget-object v9, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/transcode/core/Encode$Region;

    iget v9, v9, Lcom/samsung/android/transcode/core/Encode$Region;->regionStartTime:I

    int-to-long v9, v9

    mul-long/2addr v9, v11

    iget-object v13, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v13, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/samsung/android/transcode/core/Encode$Region;

    iget v13, v13, Lcom/samsung/android/transcode/core/Encode$Region;->regionStartTime:I

    move-wide v14, v2

    int-to-long v2, v13

    mul-long/2addr v2, v11

    sub-long v2, p1, v2

    const v11, 0x49742400    # 1000000.0f

    mul-float/2addr v11, v7

    float-to-long v11, v11

    mul-long/2addr v2, v11

    const-wide/32 v11, 0xf4240

    div-long/2addr v2, v11

    add-long/2addr v9, v2

    nop

    move-wide v2, v9

    goto/16 :goto_5

    :cond_5
    move-wide v14, v2

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/transcode/core/Encode$Region;

    iget v2, v2, Lcom/samsung/android/transcode/core/Encode$Region;->regionEndTime:I

    int-to-long v2, v2

    mul-long/2addr v2, v11

    cmp-long v2, p1, v2

    if-ltz v2, :cond_8

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/transcode/core/Encode$Region;

    iget-object v2, v2, Lcom/samsung/android/transcode/core/Encode$Region;->regionSpeedType:Lcom/samsung/android/transcode/core/Encode$Speed;

    invoke-static {v2}, Lcom/samsung/android/transcode/core/EncodeVideo;->getTimeScale(Lcom/samsung/android/transcode/core/Encode$Speed;)F

    move-result v3

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    const/4 v13, 0x1

    if-ne v1, v13, :cond_7

    long-to-double v11, v4

    float-to-double v9, v3

    sub-double/2addr v9, v6

    iget-object v6, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/transcode/core/Encode$Region;

    iget v6, v6, Lcom/samsung/android/transcode/core/Encode$Region;->regionEndTime:I

    iget-object v7, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/transcode/core/Encode$Region;

    iget v7, v7, Lcom/samsung/android/transcode/core/Encode$Region;->regionStartTime:I

    sub-int/2addr v6, v7

    int-to-double v6, v6

    mul-double/2addr v9, v6

    const-wide v16, 0x408f400000000000L    # 1000.0

    mul-double v9, v9, v16

    add-double/2addr v11, v9

    double-to-long v4, v11

    :cond_6
    :goto_3
    move-object v6, v2

    move v7, v3

    goto :goto_4

    :cond_7
    const-wide v16, 0x408f400000000000L    # 1000.0

    const/4 v9, 0x2

    if-ne v1, v9, :cond_6

    long-to-double v10, v4

    move-wide/from16 v18, v10

    float-to-double v9, v3

    sub-double/2addr v6, v9

    mul-double v9, v16, v6

    iget-object v6, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/transcode/core/Encode$Region;

    iget v6, v6, Lcom/samsung/android/transcode/core/Encode$Region;->regionEndTime:I

    iget-object v7, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/transcode/core/Encode$Region;

    iget v7, v7, Lcom/samsung/android/transcode/core/Encode$Region;->regionStartTime:I

    sub-int/2addr v6, v7

    int-to-double v6, v6

    mul-double/2addr v9, v6

    sub-double v10, v18, v9

    double-to-long v4, v10

    goto :goto_3

    :cond_8
    const/4 v13, 0x1

    :goto_4
    add-int/lit8 v8, v8, 0x1

    move v10, v13

    move-wide v2, v14

    const/4 v9, 0x2

    const-wide/16 v11, 0x3e8

    goto/16 :goto_2

    :cond_9
    move-wide v14, v2

    goto :goto_5

    :cond_a
    move-wide v14, v2

    move-wide v2, v14

    :goto_5
    invoke-direct/range {p0 .. p3}, Lcom/samsung/android/transcode/core/EncodeVideo;->isSEFRegion(JI)Z

    move-result v8

    return v8
.end method

.method private getAudioTime(JI)V
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p3

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    sget-object v6, Lcom/samsung/android/transcode/core/Encode$Speed;->NORMAL:Lcom/samsung/android/transcode/core/Encode$Speed;

    const/high16 v7, 0x3f800000    # 1.0f

    move-wide/from16 v2, p1

    iget-object v8, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    if-eqz v8, :cond_9

    iget-object v8, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_9

    const/4 v8, 0x0

    const/4 v9, 0x2

    const/4 v10, 0x1

    const-wide/16 v11, 0x3e8

    if-eq v1, v10, :cond_3

    if-ne v1, v9, :cond_0

    goto :goto_1

    :cond_0
    nop

    :goto_0
    iget-object v9, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_2

    iget-object v9, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/transcode/core/Encode$Region;

    iget v9, v9, Lcom/samsung/android/transcode/core/Encode$Region;->regionEndTime:I

    int-to-long v9, v9

    mul-long/2addr v9, v11

    cmp-long v9, p1, v9

    if-lez v9, :cond_2

    iget-object v9, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/transcode/core/Encode$Region;

    iget v9, v9, Lcom/samsung/android/transcode/core/Encode$Region;->regionSpeed:I

    const/16 v10, 0x9

    if-ne v9, v10, :cond_1

    iget-object v9, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/transcode/core/Encode$Region;

    iget v9, v9, Lcom/samsung/android/transcode/core/Encode$Region;->regionEndTime:I

    iget-object v10, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/transcode/core/Encode$Region;

    iget v10, v10, Lcom/samsung/android/transcode/core/Encode$Region;->regionAudioEndTime:I

    sub-int/2addr v9, v10

    int-to-long v9, v9

    mul-long/2addr v9, v11

    add-long/2addr v4, v9

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_2
    sub-long v8, v2, v4

    iput-wide v8, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mModifiedAudiotime:J

    goto/16 :goto_6

    :cond_3
    :goto_1
    nop

    :goto_2
    iget-object v13, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    if-ge v8, v13, :cond_8

    iget-object v13, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v13, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/samsung/android/transcode/core/Encode$Region;

    iget v13, v13, Lcom/samsung/android/transcode/core/Encode$Region;->regionStartTime:I

    int-to-long v9, v13

    mul-long/2addr v9, v11

    cmp-long v9, p1, v9

    if-ltz v9, :cond_4

    iget-object v9, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/transcode/core/Encode$Region;

    iget v9, v9, Lcom/samsung/android/transcode/core/Encode$Region;->regionEndTime:I

    int-to-long v9, v9

    mul-long/2addr v9, v11

    cmp-long v9, p1, v9

    if-gez v9, :cond_4

    iget-object v9, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/transcode/core/Encode$Region;

    iget-object v6, v9, Lcom/samsung/android/transcode/core/Encode$Region;->regionSpeedType:Lcom/samsung/android/transcode/core/Encode$Speed;

    invoke-static {v6}, Lcom/samsung/android/transcode/core/EncodeVideo;->getTimeScale(Lcom/samsung/android/transcode/core/Encode$Speed;)F

    move-result v7

    iget-object v9, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/transcode/core/Encode$Region;

    iget v9, v9, Lcom/samsung/android/transcode/core/Encode$Region;->regionStartTime:I

    int-to-long v9, v9

    mul-long/2addr v9, v11

    iget-object v13, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v13, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/samsung/android/transcode/core/Encode$Region;

    iget v13, v13, Lcom/samsung/android/transcode/core/Encode$Region;->regionStartTime:I

    move-wide v14, v2

    int-to-long v2, v13

    mul-long/2addr v2, v11

    sub-long v2, p1, v2

    const v11, 0x49742400    # 1000000.0f

    mul-float/2addr v11, v7

    float-to-long v11, v11

    mul-long/2addr v2, v11

    const-wide/32 v11, 0xf4240

    div-long/2addr v2, v11

    add-long/2addr v9, v2

    nop

    move-wide v2, v9

    goto/16 :goto_5

    :cond_4
    move-wide v14, v2

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/transcode/core/Encode$Region;

    iget v2, v2, Lcom/samsung/android/transcode/core/Encode$Region;->regionEndTime:I

    int-to-long v2, v2

    mul-long/2addr v2, v11

    cmp-long v2, p1, v2

    if-ltz v2, :cond_7

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/transcode/core/Encode$Region;

    iget-object v2, v2, Lcom/samsung/android/transcode/core/Encode$Region;->regionSpeedType:Lcom/samsung/android/transcode/core/Encode$Speed;

    invoke-static {v2}, Lcom/samsung/android/transcode/core/EncodeVideo;->getTimeScale(Lcom/samsung/android/transcode/core/Encode$Speed;)F

    move-result v3

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    const/4 v13, 0x1

    if-ne v1, v13, :cond_6

    long-to-double v11, v4

    float-to-double v9, v3

    sub-double/2addr v9, v6

    iget-object v6, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/transcode/core/Encode$Region;

    iget v6, v6, Lcom/samsung/android/transcode/core/Encode$Region;->regionEndTime:I

    iget-object v7, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/transcode/core/Encode$Region;

    iget v7, v7, Lcom/samsung/android/transcode/core/Encode$Region;->regionStartTime:I

    sub-int/2addr v6, v7

    int-to-double v6, v6

    mul-double/2addr v9, v6

    const-wide v16, 0x408f400000000000L    # 1000.0

    mul-double v9, v9, v16

    add-double/2addr v11, v9

    double-to-long v4, v11

    :cond_5
    :goto_3
    move-object v6, v2

    move v7, v3

    goto :goto_4

    :cond_6
    const-wide v16, 0x408f400000000000L    # 1000.0

    const/4 v9, 0x2

    if-ne v1, v9, :cond_5

    long-to-double v10, v4

    move-wide/from16 v18, v10

    float-to-double v9, v3

    sub-double/2addr v6, v9

    mul-double v9, v16, v6

    iget-object v6, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/transcode/core/Encode$Region;

    iget v6, v6, Lcom/samsung/android/transcode/core/Encode$Region;->regionEndTime:I

    iget-object v7, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/transcode/core/Encode$Region;

    iget v7, v7, Lcom/samsung/android/transcode/core/Encode$Region;->regionStartTime:I

    sub-int/2addr v6, v7

    int-to-double v6, v6

    mul-double/2addr v9, v6

    sub-double v10, v18, v9

    double-to-long v4, v10

    goto :goto_3

    :cond_7
    const/4 v13, 0x1

    :goto_4
    add-int/lit8 v8, v8, 0x1

    move v10, v13

    move-wide v2, v14

    const/4 v9, 0x2

    const-wide/16 v11, 0x3e8

    goto/16 :goto_2

    :cond_8
    move-wide v14, v2

    :goto_5
    add-long v8, v2, v4

    iput-wide v8, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mModifiedAudiotime:J

    goto :goto_6

    :cond_9
    move-wide v14, v2

    move-wide v2, v14

    :goto_6
    return-void
.end method

.method public static getMaxEncodingDuration(IIII)I
    .locals 12

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    int-to-float v3, p0

    const v4, 0x3f333333    # 0.7f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    int-to-long v3, v3

    mul-int v5, p1, p2

    div-int/lit16 v5, v5, 0x100

    const/16 v6, 0x64

    const/16 v7, 0x3e8

    if-ge v5, v6, :cond_0

    const/16 v2, 0x63

    goto :goto_2

    :cond_0
    if-le v5, v6, :cond_2

    if-ge v5, v7, :cond_2

    const/16 v6, 0x96

    if-ge v2, v6, :cond_1

    goto :goto_0

    :cond_1
    div-int/lit8 v6, v5, 0x3

    :goto_0
    move v2, v6

    goto :goto_2

    :cond_2
    if-le v5, v7, :cond_4

    const/16 v6, 0x15e

    if-ge v2, v6, :cond_3

    goto :goto_1

    :cond_3
    div-int/lit8 v6, v5, 0x5

    :goto_1
    move v2, v6

    :cond_4
    :goto_2
    const/4 v6, 0x1

    const-wide/16 v8, 0x3e8

    const-wide/16 v10, 0x8

    if-ne p3, v6, :cond_5

    mul-long/2addr v10, v3

    mul-long/2addr v10, v8

    add-int/lit8 v6, v2, 0x8

    int-to-long v8, v6

    div-long/2addr v10, v8

    :goto_3
    goto :goto_4

    :cond_5
    mul-long/2addr v10, v3

    mul-long/2addr v10, v8

    add-int/lit8 v6, v2, 0x40

    int-to-long v8, v6

    div-long/2addr v10, v8

    goto :goto_3

    :goto_4
    const-string v0, "TranscodeLib"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Size "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " width "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " height "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " audiocodec "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " maxdur "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    long-to-int v0, v10

    if-ge v0, v7, :cond_6

    const/4 v1, 0x0

    return v1

    :cond_6
    return v0
.end method

.method private getRecordingMode(Ljava/lang/String;Landroid/content/Context;Landroid/net/Uri;)I
    .locals 10

    sget-boolean v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUseUri:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    if-nez p3, :cond_2

    :cond_0
    const-string v0, "TranscodeLib"

    const-string/jumbo v2, "uri or context  is NULL"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    if-nez p1, :cond_2

    const-string v0, "TranscodeLib"

    const-string v2, "filepath is NULL"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    const/4 v2, 0x0

    const/4 v3, -0x1

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    :try_start_0
    sget-boolean v7, Lcom/samsung/android/transcode/core/EncodeVideo;->mUseUri:Z

    if-eqz v7, :cond_3

    invoke-virtual {v0, p2, p3}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v0, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    :goto_0
    const/16 v7, 0x3fe

    invoke-virtual {v0, v7}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    move v2, v7

    const/16 v7, 0x3f7

    invoke-virtual {v0, v7}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    move v3, v7

    if-nez v3, :cond_6

    const/16 v7, 0x9

    const/4 v8, 0x1

    if-eq v2, v8, :cond_4

    const/4 v8, 0x2

    if-eq v2, v8, :cond_4

    const/16 v8, 0x8

    if-eq v2, v8, :cond_4

    const/4 v8, 0x7

    if-eq v2, v8, :cond_4

    if-ne v2, v7, :cond_6

    :cond_4
    invoke-virtual {v0, v7}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    int-to-long v4, v7

    const/16 v7, 0x3ff

    invoke-virtual {v0, v7}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    const-string v7, "TranscodeLib"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getRecordingMode : duration:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-wide v4, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOriginalduration:J

    if-eqz v6, :cond_5

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_5

    invoke-virtual {v6, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->NumOfSVCLayers:I

    add-int/lit8 v1, v7, 0x1

    invoke-virtual {v6, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    move-object v6, v1

    const-string v1, "/"

    invoke-virtual {v6, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    :cond_5
    const-string v1, "TranscodeLib"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getRecordingMode : NumOfSVCLayers:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->NumOfSVCLayers:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_6
    const/4 v2, 0x0

    :goto_1
    goto :goto_2

    :catchall_0
    move-exception v1

    goto :goto_3

    :catch_0
    move-exception v1

    :try_start_1
    const-string v7, "TranscodeLib"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " throwing number format exp:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    :goto_2
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V

    const/4 v0, 0x0

    nop

    const-string v1, "TranscodeLib"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getRecordingMode :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :goto_3
    nop

    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V

    const/4 v0, 0x0

    throw v1
.end method

.method private getSlowfastSeektime(J)J
    .locals 25

    move-object/from16 v0, p0

    const/4 v3, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    iget-wide v11, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOriginalduration:J

    const-wide/16 v13, 0x0

    const-wide/16 v15, 0x0

    const-wide/16 v17, 0x0

    cmp-long v17, p1, v17

    if-gez v17, :cond_0

    const-wide/16 v17, -0x1

    return-wide v17

    :cond_0
    move/from16 v19, v3

    const-string v3, "TranscodeLib"

    move/from16 v20, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v21, v5

    const-string v5, "getSlowfastSeektime  RegionList.size():"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    if-eqz v3, :cond_6

    iget-object v3, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6

    const/4 v3, 0x0

    :goto_0
    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_5

    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/transcode/core/Encode$Region;

    iget v4, v4, Lcom/samsung/android/transcode/core/Encode$Region;->regionSpeed:I

    iget-object v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/transcode/core/Encode$Region;

    iget-object v5, v5, Lcom/samsung/android/transcode/core/Encode$Region;->regionSpeedType:Lcom/samsung/android/transcode/core/Encode$Speed;

    invoke-static {v5}, Lcom/samsung/android/transcode/core/EncodeVideo;->getTimeScale(Lcom/samsung/android/transcode/core/Encode$Speed;)F

    move-result v20

    iget-object v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/transcode/core/Encode$Region;

    iget v5, v5, Lcom/samsung/android/transcode/core/Encode$Region;->regionStartTime:I

    int-to-long v5, v5

    const-wide/16 v17, 0x3e8

    mul-long v7, v5, v17

    iget-object v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/transcode/core/Encode$Region;

    iget v5, v5, Lcom/samsung/android/transcode/core/Encode$Region;->regionEndTime:I

    int-to-long v5, v5

    mul-long v9, v5, v17

    sub-long v13, v9, v7

    const v5, 0x49742400    # 1000000.0f

    mul-float v5, v5, v20

    float-to-long v5, v5

    mul-long/2addr v5, v13

    const-wide/32 v17, 0xf4240

    div-long v11, v5, v17

    const-string v5, "TranscodeLib"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v23, v9

    const-string v9, "[getSlowFastSeektime] regScaledDuration ="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, ", regDuration ="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, ", playSpeed ="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-long v5, v7, v21

    cmp-long v5, p1, v5

    if-ltz v5, :cond_1

    add-long v5, v11, v7

    add-long v5, v5, v21

    cmp-long v5, p1, v5

    if-gtz v5, :cond_1

    sub-long v5, p1, v7

    sub-long v5, v5, v21

    long-to-float v5, v5

    div-float v5, v5, v20

    float-to-long v5, v5

    add-long v1, v7, v5

    goto :goto_1

    :cond_1
    add-long v5, v11, v7

    add-long v5, v5, v21

    cmp-long v5, p1, v5

    if-lez v5, :cond_2

    sub-long v5, v11, v13

    add-long v21, v21, v5

    iget-object v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne v3, v5, :cond_4

    sub-long v1, p1, v21

    goto :goto_1

    :cond_2
    add-long v5, v7, v21

    cmp-long v5, p1, v5

    if-gez v5, :cond_4

    if-nez v3, :cond_3

    nop

    move-wide/from16 v1, p1

    goto :goto_1

    :cond_3
    sub-long v1, p1, v21

    goto :goto_1

    :cond_4
    add-int/lit8 v3, v3, 0x1

    move/from16 v19, v4

    move-wide/from16 v9, v23

    goto/16 :goto_0

    :cond_5
    move-wide/from16 v1, p1

    move-wide/from16 v23, v9

    move/from16 v4, v19

    :goto_1
    const-string v3, "TranscodeLib"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[getSlowfastSeektime] seekTimeUs= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v1

    :cond_6
    const-string v3, "TranscodeLib"

    const-string v4, "There is no region info."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide p1
.end method

.method private getSuperslowSeektime(J)J
    .locals 31

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    move-wide v13, v1

    const-wide/16 v15, 0x0

    cmp-long v15, v1, v15

    if-gez v15, :cond_0

    const-wide/16 v15, -0x1

    return-wide v15

    :cond_0
    iget-object v15, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    if-eqz v15, :cond_9

    iget-object v15, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_9

    const/4 v15, 0x0

    :goto_0
    move-wide/from16 v17, v5

    iget-object v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v15, v5, :cond_8

    iget-object v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v5, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/transcode/core/Encode$Region;

    iget v5, v5, Lcom/samsung/android/transcode/core/Encode$Region;->regionStartTime:I

    int-to-long v5, v5

    const-wide/16 v19, 0x3e8

    mul-long v5, v5, v19

    move-wide/from16 v21, v7

    iget-object v7, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v7, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/transcode/core/Encode$Region;

    iget v7, v7, Lcom/samsung/android/transcode/core/Encode$Region;->regionEndTime:I

    int-to-long v7, v7

    mul-long v7, v7, v19

    move-wide/from16 v23, v9

    iget-object v9, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v9, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/transcode/core/Encode$Region;

    iget v9, v9, Lcom/samsung/android/transcode/core/Encode$Region;->regionAudioEndTime:I

    int-to-long v9, v9

    mul-long v9, v9, v19

    sub-long v11, v7, v9

    const/16 v16, 0x0

    move-wide/from16 v25, v11

    iget-object v11, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v11, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/samsung/android/transcode/core/Encode$Region;

    iget v11, v11, Lcom/samsung/android/transcode/core/Encode$Region;->regionSpeed:I

    const/16 v12, 0x9

    if-ne v11, v12, :cond_1

    const/16 v16, 0x1

    :cond_1
    move/from16 v11, v16

    const-string v12, "TranscodeLib"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v27, v12

    const-string v12, "[getSuperslowSeektime] regStartTime = "

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v12, ",regEndTime : "

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v12, ",regAudioEndTime: "

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v12, ", isCancel ="

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, ",tmpSeekTimeUs: "

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v12, ", timeDelta:"

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v12, ", seekTimeUs:"

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v12, ", i :"

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v12, v27

    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    cmp-long v0, v13, v9

    const/4 v12, 0x1

    if-ltz v0, :cond_3

    cmp-long v0, v13, v7

    if-gtz v0, :cond_3

    if-ne v11, v12, :cond_2

    add-long v3, v3, v25

    add-long v13, v13, v25

    :cond_2
    move-wide/from16 v28, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v12

    if-ne v15, v5, :cond_7

    add-long/2addr v1, v3

    goto :goto_1

    :cond_3
    move-wide/from16 v28, v5

    move-object/from16 v0, p0

    cmp-long v5, v13, v7

    if-lez v5, :cond_5

    if-ne v11, v12, :cond_4

    add-long v3, v3, v25

    add-long v13, v13, v25

    :cond_4
    iget-object v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v12

    if-ne v15, v5, :cond_7

    add-long/2addr v1, v3

    goto :goto_1

    :cond_5
    cmp-long v5, v13, v9

    if-gez v5, :cond_7

    if-nez v15, :cond_6

    goto :goto_1

    :cond_6
    add-long/2addr v1, v3

    goto :goto_1

    :cond_7
    add-int/lit8 v15, v15, 0x1

    move-wide/from16 v11, v25

    move-wide/from16 v5, v28

    goto/16 :goto_0

    :cond_8
    move-wide/from16 v21, v7

    move-wide/from16 v23, v9

    move-wide/from16 v25, v11

    move-wide/from16 v28, v17

    :goto_1
    const-string v5, "TranscodeLib"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[getSuperslowSeektime] seekTimeUs= "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v1

    :cond_9
    const-string v15, "TranscodeLib"

    const-string v0, "There is no region info."

    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v1
.end method

.method private getVEEditFilePath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_6

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TranscodeLib"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "lFileName :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "content://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object v2, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Landroid/provider/MediaStore$Video$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {p2, p1}, Lcom/samsung/android/transcode/core/EncodeVideo;->getVideoFileInfoByUri(Landroid/net/Uri;Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_2

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v3, "_data"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_2
    if-eqz v2, :cond_3

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_3
    goto :goto_1

    :cond_4
    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_5
    move-object v0, v1

    :cond_6
    :goto_1
    return-object v0
.end method

.method private static getVideoFileInfoByUri(Landroid/net/Uri;Landroid/content/Context;)Landroid/database/Cursor;
    .locals 9

    const-string v0, "_data"

    const-string v1, "duration"

    const-string/jumbo v2, "recording_mode"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v5

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, p0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    nop

    nop

    return-object v0

    :catch_0
    move-exception v1

    return-object v0

    :catch_1
    move-exception v1

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

.method private static is10bitVideo(Landroid/media/MediaMetadataRetriever;)Z
    .locals 2

    const-string v0, ""

    const/16 v1, 0x404

    :try_start_0
    invoke-virtual {p0, v1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const-string v1, "10"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private static isRecognizedFormat(I)Z
    .locals 1

    const/16 v0, 0x27

    if-eq p0, v0, :cond_0

    const v0, 0x7f000100

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :cond_0
    :pswitch_0
    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private isSEFRegion(JI)Z
    .locals 9

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    nop

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    goto :goto_3

    :cond_1
    const-wide/16 v3, 0x3e8

    if-eq p3, v2, :cond_3

    const/4 v2, 0x2

    if-ne p3, v2, :cond_2

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/transcode/core/Encode$Region;

    iget v2, v2, Lcom/samsung/android/transcode/core/Encode$Region;->regionAudioEndTime:I

    int-to-long v5, v2

    mul-long/2addr v5, v3

    goto :goto_2

    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/transcode/core/Encode$Region;

    iget v2, v2, Lcom/samsung/android/transcode/core/Encode$Region;->regionStartTime:I

    int-to-long v5, v2

    mul-long/2addr v5, v3

    :goto_2
    nop

    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/transcode/core/Encode$Region;

    iget v2, v2, Lcom/samsung/android/transcode/core/Encode$Region;->regionEndTime:I

    int-to-long v7, v2

    mul-long/2addr v7, v3

    cmp-long v2, p1, v5

    if-ltz v2, :cond_4

    cmp-long v2, p1, v7

    if-gez v2, :cond_4

    const/4 v0, 0x1

    goto :goto_3

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    :goto_3
    return v0

    :cond_6
    const-string v2, "TranscodeLib"

    const-string v3, "There is no region info."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public static isSupportedFormat(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 1

    invoke-static {p0, p1}, Lcom/samsung/android/transcode/util/CodecsHelper;->isSupportedFormat(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method public static isSupportedFormat(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/transcode/util/CodecsHelper;->isSupportedFormat(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isSupportedFormat(Ljava/lang/String;Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUseUri:Z

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Lcom/samsung/android/transcode/util/CodecsHelper;->isSupportedFormat(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    return v0

    :cond_0
    invoke-static {p0}, Lcom/samsung/android/transcode/util/CodecsHelper;->isSupportedFormat(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static parseAvcProfile([B)I
    .locals 2

    const/4 v0, 0x5

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x42

    if-eq v0, v1, :cond_6

    const/16 v1, 0x4d

    if-eq v0, v1, :cond_5

    const/16 v1, 0x58

    if-eq v0, v1, :cond_4

    const/16 v1, 0x64

    if-eq v0, v1, :cond_3

    const/16 v1, 0x6e

    if-eq v0, v1, :cond_2

    const/16 v1, 0x7a

    if-eq v0, v1, :cond_1

    const/16 v1, 0xf4

    if-eq v0, v1, :cond_0

    const/4 v1, -0x1

    return v1

    :cond_0
    const/16 v1, 0x40

    return v1

    :cond_1
    const/16 v1, 0x20

    return v1

    :cond_2
    const/16 v1, 0x10

    return v1

    :cond_3
    const/16 v1, 0x8

    return v1

    :cond_4
    const/4 v1, 0x4

    return v1

    :cond_5
    const/4 v1, 0x2

    return v1

    :cond_6
    const/4 v1, 0x1

    return v1
.end method

.method private procSuperSlowVideo(JI[BI)Z
    .locals 34

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    sget-object v11, Lcom/samsung/android/transcode/core/Encode$Speed;->NORMAL:Lcom/samsung/android/transcode/core/Encode$Speed;

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v13, -0x1

    move-wide v7, v1

    const-string v14, "TranscodeLib"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v16, v4

    const-string v4, "[procSuperSlowVideo]SampleTime = tempSampleTime = "

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v14, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    if-eqz v4, :cond_c

    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_c

    move-wide/from16 v17, v9

    const/4 v9, 0x0

    :goto_0
    iget-object v10, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_b

    iget-object v10, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/transcode/core/Encode$Region;

    iget v10, v10, Lcom/samsung/android/transcode/core/Encode$Region;->regionStartTime:I

    int-to-long v14, v10

    const-wide/16 v19, 0x3e8

    mul-long v14, v14, v19

    cmp-long v10, v1, v14

    const/16 v14, 0x9

    const-wide/high16 v21, 0x3ff0000000000000L    # 1.0

    const-wide v23, 0x408f400000000000L    # 1000.0

    if-ltz v10, :cond_9

    iget-object v10, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/transcode/core/Encode$Region;

    iget v10, v10, Lcom/samsung/android/transcode/core/Encode$Region;->regionEndTime:I

    move/from16 v25, v5

    int-to-long v4, v10

    mul-long v4, v4, v19

    cmp-long v4, v1, v4

    if-gez v4, :cond_8

    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/transcode/core/Encode$Region;

    iget v4, v4, Lcom/samsung/android/transcode/core/Encode$Region;->regionSpeed:I

    if-ne v4, v14, :cond_7

    const/4 v4, 0x0

    aget-byte v4, p4, v4

    and-int/lit8 v4, v4, 0x1f

    const/16 v5, 0xe

    const/4 v10, 0x3

    if-ne v4, v5, :cond_0

    const/4 v4, 0x1

    aget-byte v5, p4, v4

    const/16 v4, 0x80

    and-int/2addr v5, v4

    if-ne v5, v4, :cond_0

    aget-byte v4, p4, v10

    and-int/lit16 v4, v4, 0xe0

    ushr-int/lit8 v13, v4, 0x5

    const-string v4, "TranscodeLib"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "layernum:"

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez p5, :cond_1

    const/16 v4, 0x1e

    goto :goto_1

    :cond_1
    move/from16 v4, p5

    :goto_1
    iget-object v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/transcode/core/Encode$Region;

    iget v5, v5, Lcom/samsung/android/transcode/core/Encode$Region;->regionEndTime:I

    int-to-long v14, v5

    mul-long v14, v14, v19

    sub-long/2addr v14, v1

    const-wide/16 v26, 0x0

    cmp-long v5, v14, v26

    if-lez v5, :cond_5

    iget-object v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/transcode/core/Encode$Region;

    iget v5, v5, Lcom/samsung/android/transcode/core/Encode$Region;->regionEndTime:I

    int-to-long v14, v5

    mul-long v14, v14, v19

    sub-long/2addr v14, v1

    long-to-double v14, v14

    move-object/from16 v28, v11

    int-to-double v10, v4

    const-wide v26, 0x3ff7333333333333L    # 1.45

    div-double v10, v26, v10

    mul-double v10, v10, v23

    move/from16 v29, v6

    int-to-double v5, v4

    div-double v5, v21, v5

    mul-double v5, v5, v23

    const-wide/high16 v30, 0x402c000000000000L    # 14.0

    mul-double v5, v5, v30

    add-double/2addr v10, v5

    cmpg-double v5, v14, v10

    if-gez v5, :cond_6

    const/4 v5, 0x1

    if-ne v13, v5, :cond_2

    const/4 v6, 0x1

    :goto_2
    goto :goto_3

    :cond_2
    const/4 v5, 0x2

    if-ne v13, v5, :cond_3

    iget-object v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/transcode/core/Encode$Region;

    iget v5, v5, Lcom/samsung/android/transcode/core/Encode$Region;->regionEndTime:I

    int-to-long v5, v5

    sub-long/2addr v5, v1

    long-to-double v5, v5

    int-to-double v10, v4

    div-double v10, v26, v10

    mul-double v10, v10, v23

    int-to-double v14, v4

    div-double v14, v21, v14

    mul-double v14, v14, v23

    const-wide/high16 v30, 0x4018000000000000L    # 6.0

    mul-double v14, v14, v30

    add-double/2addr v10, v14

    cmpg-double v5, v5, v10

    if-gez v5, :cond_3

    const/4 v6, 0x1

    goto :goto_2

    :cond_3
    const/4 v5, 0x3

    if-ne v13, v5, :cond_4

    iget-object v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/transcode/core/Encode$Region;

    iget v5, v5, Lcom/samsung/android/transcode/core/Encode$Region;->regionEndTime:I

    int-to-long v5, v5

    sub-long/2addr v5, v1

    long-to-double v5, v5

    int-to-double v10, v4

    div-double v10, v26, v10

    mul-double v10, v10, v23

    int-to-double v14, v4

    div-double v21, v21, v14

    mul-double v21, v21, v23

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    mul-double v21, v21, v14

    add-double v10, v10, v21

    cmpg-double v5, v5, v10

    if-gez v5, :cond_4

    const/4 v6, 0x1

    goto :goto_2

    :cond_4
    const/4 v5, 0x4

    if-ne v13, v5, :cond_6

    iget-object v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/transcode/core/Encode$Region;

    iget v5, v5, Lcom/samsung/android/transcode/core/Encode$Region;->regionEndTime:I

    int-to-long v5, v5

    sub-long/2addr v5, v1

    long-to-double v5, v5

    int-to-double v10, v4

    div-double v26, v26, v10

    mul-double v26, v26, v23

    cmpg-double v5, v5, v26

    if-gez v5, :cond_6

    const/4 v6, 0x1

    goto :goto_2

    :cond_5
    move/from16 v29, v6

    move-object/from16 v28, v11

    :cond_6
    move/from16 v6, v29

    :goto_3
    iget-object v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/transcode/core/Encode$Region;

    iget-object v5, v5, Lcom/samsung/android/transcode/core/Encode$Region;->regionSpeedType:Lcom/samsung/android/transcode/core/Encode$Speed;

    invoke-static {v5}, Lcom/samsung/android/transcode/core/EncodeVideo;->getTimeScale(Lcom/samsung/android/transcode/core/Encode$Speed;)F

    move-result v10

    iget-object v11, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/samsung/android/transcode/core/Encode$Region;

    iget v11, v11, Lcom/samsung/android/transcode/core/Encode$Region;->regionStartTime:I

    int-to-long v11, v11

    mul-long v11, v11, v19

    iget-object v14, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v14, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/samsung/android/transcode/core/Encode$Region;

    iget v14, v14, Lcom/samsung/android/transcode/core/Encode$Region;->regionStartTime:I

    int-to-long v14, v14

    mul-long v14, v14, v19

    sub-long v14, v1, v14

    const v19, 0x49742400    # 1000000.0f

    mul-float v3, v10, v19

    move/from16 v32, v4

    float-to-long v3, v3

    mul-long/2addr v14, v3

    const-wide/32 v3, 0xf4240

    div-long/2addr v14, v3

    add-long/2addr v11, v14

    const/4 v3, 0x1

    move v4, v3

    move-object/from16 v28, v5

    move-wide v7, v11

    move v12, v10

    goto :goto_4

    :cond_7
    move/from16 v29, v6

    move-object/from16 v28, v11

    const/4 v3, 0x0

    nop

    move/from16 v32, p5

    move v4, v3

    :goto_4
    move-wide/from16 v10, v17

    goto/16 :goto_7

    :cond_8
    move/from16 v29, v6

    move-object/from16 v28, v11

    const/4 v4, 0x0

    goto :goto_5

    :cond_9
    move/from16 v25, v5

    move/from16 v29, v6

    move-object/from16 v28, v11

    const/4 v4, 0x0

    :goto_5
    iget-object v3, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/transcode/core/Encode$Region;

    iget v3, v3, Lcom/samsung/android/transcode/core/Encode$Region;->regionEndTime:I

    int-to-long v10, v3

    mul-long v10, v10, v19

    cmp-long v3, v1, v10

    if-ltz v3, :cond_a

    iget-object v3, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/transcode/core/Encode$Region;

    iget v3, v3, Lcom/samsung/android/transcode/core/Encode$Region;->regionSpeed:I

    if-ne v3, v14, :cond_a

    iget-object v3, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/transcode/core/Encode$Region;

    iget-object v3, v3, Lcom/samsung/android/transcode/core/Encode$Region;->regionSpeedType:Lcom/samsung/android/transcode/core/Encode$Speed;

    invoke-static {v3}, Lcom/samsung/android/transcode/core/EncodeVideo;->getTimeScale(Lcom/samsung/android/transcode/core/Encode$Speed;)F

    move-result v6

    move-wide/from16 v10, v17

    long-to-double v14, v10

    float-to-double v4, v6

    sub-double v21, v21, v4

    mul-double v23, v23, v21

    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/transcode/core/Encode$Region;

    iget v4, v4, Lcom/samsung/android/transcode/core/Encode$Region;->regionEndTime:I

    iget-object v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/transcode/core/Encode$Region;

    iget v5, v5, Lcom/samsung/android/transcode/core/Encode$Region;->regionStartTime:I

    sub-int/2addr v4, v5

    int-to-double v4, v4

    mul-double v23, v23, v4

    sub-double v14, v14, v23

    double-to-long v4, v14

    move-object v11, v3

    move-wide/from16 v17, v4

    move v12, v6

    goto :goto_6

    :cond_a
    move-wide/from16 v10, v17

    move-wide/from16 v17, v10

    move-object/from16 v11, v28

    :goto_6
    add-int/lit8 v9, v9, 0x1

    move/from16 v5, v25

    move/from16 v6, v29

    goto/16 :goto_0

    :cond_b
    move/from16 v25, v5

    move/from16 v29, v6

    move-object/from16 v28, v11

    move-wide/from16 v10, v17

    move/from16 v32, p5

    move/from16 v4, v16

    :goto_7
    add-long v14, v7, v10

    iput-wide v14, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mModifiedVideotime:J

    move-wide v9, v10

    move-object/from16 v11, v28

    goto :goto_8

    :cond_c
    move/from16 v25, v5

    move/from16 v29, v6

    move/from16 v32, p5

    move/from16 v4, v16

    move/from16 v6, v29

    :goto_8
    const/4 v3, 0x1

    if-ne v4, v3, :cond_e

    if-eqz v13, :cond_d

    const/4 v5, 0x1

    goto :goto_9

    :cond_d
    move/from16 v5, v25

    :goto_9
    if-ne v6, v3, :cond_f

    const/4 v5, 0x0

    goto :goto_a

    :cond_e
    move/from16 v5, v25

    :cond_f
    :goto_a
    return v5
.end method

.method private static selectColorFormat(Landroid/media/MediaCodecInfo;Ljava/lang/String;)I
    .locals 5

    invoke-virtual {p0, p1}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->colorFormats:[I

    array-length v3, v3

    if-ge v2, v3, :cond_1

    iget-object v3, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->colorFormats:[I

    aget v3, v3, v2

    invoke-static {v3}, Lcom/samsung/android/transcode/core/EncodeVideo;->isRecognizedFormat(I)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "colorFormat: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    return v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string v2, "TranscodeLib"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "couldn\'t find a good color format for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " / "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private slowfastSEFParser(Ljava/lang/String;)Z
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "TranscodeLib"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sefData read slow : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    const-string v1, "TranscodeLib"

    const-string/jumbo v2, "sefData == null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    const-string v1, "\\*"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const-string v2, "TranscodeLib"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "slowDataregion,length: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v0

    :goto_0
    array-length v3, v1

    const/4 v4, 0x1

    if-ge v2, v3, :cond_1

    aget-object v3, v1, v2

    const-string v5, ":"

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/samsung/android/transcode/core/Encode$Region;

    invoke-direct {v5}, Lcom/samsung/android/transcode/core/Encode$Region;-><init>()V

    aget-object v6, v3, v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, v5, Lcom/samsung/android/transcode/core/Encode$Region;->regionStartTime:I

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v5, Lcom/samsung/android/transcode/core/Encode$Region;->regionEndTime:I

    const/4 v4, 0x2

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v5, Lcom/samsung/android/transcode/core/Encode$Region;->regionSpeed:I

    iget v4, v5, Lcom/samsung/android/transcode/core/Encode$Region;->regionSpeed:I

    invoke-static {v4}, Lcom/samsung/android/transcode/core/EncodeVideo;->getSpeed(I)Lcom/samsung/android/transcode/core/Encode$Speed;

    move-result-object v4

    iput-object v4, v5, Lcom/samsung/android/transcode/core/Encode$Region;->regionSpeedType:Lcom/samsung/android/transcode/core/Encode$Speed;

    iget-object v4, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    nop

    return v4

    :catch_0
    move-exception v1

    const-string v2, "TranscodeLib"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "throwing number format:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private superslowSEFParser(Ljava/lang/String;)Z
    .locals 9

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "TranscodeLib"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sefData read super : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    const-string v1, "TranscodeLib"

    const-string/jumbo v2, "sefData == null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    const-string v1, "\\*"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const-string v2, "TranscodeLib"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "slowDataregion,length: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v0

    :goto_0
    array-length v3, v1

    const/4 v4, 0x1

    if-ge v2, v3, :cond_2

    aget-object v3, v1, v2

    const-string v5, ":"

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x3

    aget-object v6, v3, v5

    const-string v7, "!"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    if-le v7, v4, :cond_1

    aget-object v7, v6, v0

    aput-object v7, v3, v5

    aget-object v7, v6, v4

    iput-object v7, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mMainRegion:Ljava/lang/String;

    :cond_1
    new-instance v7, Lcom/samsung/android/transcode/core/Encode$Region;

    invoke-direct {v7}, Lcom/samsung/android/transcode/core/Encode$Region;-><init>()V

    aget-object v8, v3, v0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iput v8, v7, Lcom/samsung/android/transcode/core/Encode$Region;->regionStartTime:I

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v7, Lcom/samsung/android/transcode/core/Encode$Region;->regionEndTime:I

    const/4 v4, 0x2

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v7, Lcom/samsung/android/transcode/core/Encode$Region;->regionAudioEndTime:I

    aget-object v4, v3, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v7, Lcom/samsung/android/transcode/core/Encode$Region;->regionSpeed:I

    iget v4, v7, Lcom/samsung/android/transcode/core/Encode$Region;->regionSpeed:I

    invoke-static {v4}, Lcom/samsung/android/transcode/core/EncodeVideo;->getSpeed(I)Lcom/samsung/android/transcode/core/Encode$Speed;

    move-result-object v4

    iput-object v4, v7, Lcom/samsung/android/transcode/core/Encode$Region;->regionSpeedType:Lcom/samsung/android/transcode/core/Encode$Speed;

    iget-object v4, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    nop

    return v4

    :catch_0
    move-exception v1

    const-string v2, "TranscodeLib"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "throwing number format:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private supportConverter()Z
    .locals 3

    const/4 v0, 0x0

    sget v1, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    const v2, 0x186a0

    if-lt v1, v2, :cond_0

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_MMFW_SUPPORT_HDR10PLUS_PLAYBACK"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    :cond_0
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
.method public checkTransRewritable(Landroid/media/MediaFormat;ILandroid/net/Uri;)I
    .locals 3

    const/4 v0, 0x1

    move v1, v0

    :try_start_0
    const-string/jumbo v2, "moof"

    invoke-static {p3, v2}, Lcom/samsung/android/transcode/core/EncodeVideo;->findAtom(Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v2

    if-ne v2, v0, :cond_0

    const-string/jumbo v0, "moof detected"

    invoke-static {v0}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    return v0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return v1
.end method

.method public checkTransRewritable(Landroid/media/MediaFormat;ILjava/lang/String;)I
    .locals 5

    const/4 v0, 0x1

    const-string v1, "TranscodeLib"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Build.VERSION.SEM_PLATFORM_INT: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget v1, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    const v4, 0x13948

    if-ge v1, v4, :cond_1

    :try_start_0
    const-string v1, "ctts"

    invoke-static {p3, v1}, Lcom/samsung/android/transcode/core/EncodeVideo;->findAtom(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-ne v1, v3, :cond_0

    const-string v1, "ctts detected"

    invoke-static {v1}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_0
    :try_start_1
    const-string/jumbo v1, "moof"

    invoke-static {p3, v1}, Lcom/samsung/android/transcode/core/EncodeVideo;->findAtom(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-ne v1, v3, :cond_2

    const-string/jumbo v1, "moof detected"

    invoke-static {v1}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    return v2

    :cond_2
    goto :goto_1

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    return v0
.end method

.method public getHDRMode(Landroid/media/MediaMetadataRetriever;)V
    .locals 6

    const/16 v0, 0x3f7

    :try_start_0
    invoke-virtual {p1, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3fe

    invoke-virtual {p1, v1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x403

    invoke-virtual {p1, v2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAuthor:I

    if-eqz v1, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingMode:I

    :cond_0
    const-string v3, "TranscodeLib"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getHDRMode  mAuthor : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAuthor:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", mRecordingMode : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingMode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_2

    const-string/jumbo v3, "yes"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    iput v3, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mHDRType:I

    iget v3, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAuthor:I

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAuthor:I

    const/16 v4, 0x8

    if-ne v3, v4, :cond_2

    :cond_1
    iget v3, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingMode:I

    const/16 v4, 0xa

    if-ne v3, v4, :cond_2

    const/4 v3, 0x2

    iput v3, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mHDRType:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const-string v0, "TranscodeLib"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getHDRMode  mHDRType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mHDRType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getLocalEncHeader(I)Lcom/samsung/android/transcode/core/EncodeVideo$SpsPps;
    .locals 29
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputWidth:I

    iget v4, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputHeight:I

    mul-int/2addr v0, v4

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    move-object v4, v0

    :try_start_0
    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoMimeType:Ljava/lang/String;

    invoke-static {v0}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v0

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v0

    const-string v5, "TranscodeLib"

    const-string/jumbo v6, "type is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v5, "TranscodeLib"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "type is not a valid mime type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoMimeType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v0

    const-string v5, "TranscodeLib"

    const-string v6, "codec cannot be created"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :goto_1
    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoMimeType:Ljava/lang/String;

    invoke-static {v0}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v2

    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoMimeType:Ljava/lang/String;

    iget v5, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputWidth:I

    iget v6, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputHeight:I

    invoke-static {v0, v5, v6}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v5

    const-string v0, "bitrate"

    iget v6, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoBitRate:I

    invoke-virtual {v5, v0, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v0, "frame-rate"

    move/from16 v6, p1

    invoke-virtual {v5, v0, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v0, "color-format"

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getCodecInfo()Landroid/media/MediaCodecInfo;

    move-result-object v7

    iget-object v8, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoMimeType:Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/samsung/android/transcode/core/EncodeVideo;->selectColorFormat(Landroid/media/MediaCodecInfo;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v5, v0, v7}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v0, "i-frame-interval"

    iget v7, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoIFrameInterval:I

    invoke-virtual {v5, v0, v7}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string/jumbo v0, "profile"

    iget v7, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoProfile:I

    invoke-virtual {v5, v0, v7}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Local video format "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    const/4 v14, 0x0

    const/4 v0, 0x1

    invoke-virtual {v3, v5, v14, v14, v0}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    invoke-virtual {v3}, Landroid/media/MediaCodec;->start()V

    :try_start_1
    invoke-virtual {v3}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v7

    move-object v15, v7

    invoke-virtual {v3}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v7

    move-object/from16 v16, v7

    const-wide/16 v11, -0x1

    invoke-virtual {v3, v11, v12}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v7

    move v13, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "inputBufferIndex A: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    if-ltz v13, :cond_0

    :try_start_2
    aget-object v7, v15, v13

    move-object v10, v7

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    invoke-virtual {v10, v4}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    const/4 v9, 0x0

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v17

    const-wide/16 v18, 0x0

    const/16 v20, 0x0

    move-object v7, v3

    move v8, v13

    move-object/from16 v21, v10

    move/from16 v10, v17

    move-wide v0, v11

    move-wide/from16 v11, v18

    move v14, v13

    move/from16 v13, v20

    invoke-virtual/range {v7 .. v13}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "inputBufferIndex G4: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    invoke-virtual {v3, v0, v1}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v0

    aget-object v1, v15, v0

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    const/4 v13, 0x4

    move-object v7, v3

    move v8, v0

    invoke-virtual/range {v7 .. v13}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "inputBufferIndex G5: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v14, v0

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object/from16 v22, v2

    move-object/from16 v23, v4

    move-object/from16 v24, v5

    goto/16 :goto_a

    :catch_3
    move-exception v0

    move-object/from16 v22, v2

    move-object/from16 v23, v4

    move-object/from16 v24, v5

    goto/16 :goto_8

    :cond_0
    move v14, v13

    :goto_2
    const-wide/16 v0, 0x64

    :try_start_3
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    const-wide/16 v7, 0x0

    invoke-virtual {v3, v0, v7, v8}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "outputBufferIndex: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    const/4 v9, -0x2

    if-ne v1, v9, :cond_1

    :try_start_4
    invoke-virtual {v3, v0, v7, v8}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v9
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move v1, v9

    :cond_1
    :try_start_5
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "outputBufferIndex 4: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    if-ltz v1, :cond_7

    aget-object v9, v16, v1

    iget v10, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    new-array v10, v10, [B

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "bufferInfo.size: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    invoke-virtual {v9, v10}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-static {v10}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v12
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_7
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    const/4 v13, 0x1

    if-ne v12, v13, :cond_2

    :try_start_6
    const-string/jumbo v12, "start pattern match"

    invoke-static {v12}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3

    :cond_2
    :try_start_7
    const-string v12, "Invalid start pattern"

    invoke-static {v12}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    :goto_3
    const/4 v13, 0x0

    :goto_4
    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->get()B

    move-result v17

    if-nez v17, :cond_6

    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->get()B

    move-result v17

    if-nez v17, :cond_6

    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->get()B

    move-result v17

    if-nez v17, :cond_6

    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->get()B

    move-result v7

    const/4 v8, 0x1

    if-eq v7, v8, :cond_3

    move-object/from16 v22, v2

    move-object/from16 v23, v4

    move-object/from16 v24, v5

    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    goto/16 :goto_7

    :cond_3
    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->position()I

    move-result v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "ppsIndex: "

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    add-int/lit8 v8, v7, -0x8

    new-array v8, v8, [B

    const/4 v13, 0x4

    array-length v12, v8
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    move-object/from16 v22, v2

    const/4 v2, 0x0

    :try_start_8
    invoke-static {v10, v13, v8, v2, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, v10

    sub-int/2addr v2, v7

    new-array v2, v2, [B

    array-length v12, v2

    const/4 v13, 0x0

    invoke-static {v10, v7, v2, v13, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v12, Lcom/samsung/android/transcode/core/EncodeVideo$SpsPps;

    const/4 v13, 0x0

    invoke-direct {v12, v13}, Lcom/samsung/android/transcode/core/EncodeVideo$SpsPps;-><init>(Lcom/samsung/android/transcode/core/EncodeVideo$1;)V

    array-length v13, v8

    invoke-static {v8, v13}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v13

    iput-object v13, v12, Lcom/samsung/android/transcode/core/EncodeVideo$SpsPps;->_sps:[B

    array-length v13, v2

    invoke-static {v2, v13}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v13

    iput-object v13, v12, Lcom/samsung/android/transcode/core/EncodeVideo$SpsPps;->_pps:[B

    const-string v13, ""
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_6
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    move-object/from16 v23, v4

    :try_start_9
    array-length v4, v8
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    move-object/from16 v24, v5

    move-object v5, v13

    const/4 v13, 0x0

    :goto_5
    if-ge v13, v4, :cond_4

    :try_start_a
    aget-byte v17, v8, v13

    move/from16 v25, v17

    move/from16 v26, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "0x"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v27, v7

    move/from16 v6, v25

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v5, v4

    add-int/lit8 v13, v13, 0x1

    move/from16 v4, v26

    move/from16 v7, v27

    move/from16 v6, p1

    goto :goto_5

    :catch_4
    move-exception v0

    goto/16 :goto_8

    :cond_4
    move/from16 v27, v7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Local SPS: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    const-string v4, ""

    array-length v5, v2

    move-object v6, v4

    const/4 v4, 0x0

    :goto_6
    if-ge v4, v5, :cond_5

    aget-byte v7, v2, v4

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v28, v2

    const-string v2, "0x"

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v6, v2

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v2, v28

    goto :goto_6

    :cond_5
    move-object/from16 v28, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Local PPS: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    const/4 v2, 0x0

    invoke-virtual {v3, v1, v2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v0, v4, v5}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v2
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    move v1, v2

    nop

    invoke-virtual {v3}, Landroid/media/MediaCodec;->stop()V

    invoke-virtual {v3}, Landroid/media/MediaCodec;->release()V

    return-object v12

    :catchall_1
    move-exception v0

    move-object/from16 v24, v5

    goto :goto_a

    :catch_5
    move-exception v0

    move-object/from16 v24, v5

    goto :goto_8

    :catchall_2
    move-exception v0

    move-object/from16 v23, v4

    move-object/from16 v24, v5

    goto :goto_a

    :catch_6
    move-exception v0

    move-object/from16 v23, v4

    move-object/from16 v24, v5

    goto :goto_8

    :cond_6
    move-object/from16 v22, v2

    move-object/from16 v23, v4

    move-object/from16 v24, v5

    move-wide v4, v7

    const/4 v2, 0x0

    const/4 v8, 0x1

    :goto_7
    move-wide v7, v4

    move-object/from16 v2, v22

    move-object/from16 v4, v23

    move-object/from16 v5, v24

    move/from16 v6, p1

    goto/16 :goto_4

    :cond_7
    move-object/from16 v22, v2

    move-object/from16 v23, v4

    move-object/from16 v24, v5

    goto :goto_9

    :catchall_3
    move-exception v0

    move-object/from16 v22, v2

    move-object/from16 v23, v4

    move-object/from16 v24, v5

    goto :goto_a

    :catch_7
    move-exception v0

    move-object/from16 v22, v2

    move-object/from16 v23, v4

    move-object/from16 v24, v5

    :goto_8
    :try_start_b
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    :goto_9
    invoke-virtual {v3}, Landroid/media/MediaCodec;->stop()V

    invoke-virtual {v3}, Landroid/media/MediaCodec;->release()V

    nop

    const/4 v1, 0x0

    return-object v1

    :catchall_4
    move-exception v0

    :goto_a
    invoke-virtual {v3}, Landroid/media/MediaCodec;->stop()V

    invoke-virtual {v3}, Landroid/media/MediaCodec;->release()V

    throw v0
.end method

.method public getOutputFileSize()I
    .locals 20

    move-object/from16 v1, p0

    const-wide/16 v2, 0x0

    move-wide v4, v2

    :try_start_0
    sget-boolean v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUseUri:Z

    if-eqz v0, :cond_0

    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mContext:Landroid/content/Context;

    iget-object v6, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputUri:Landroid/net/Uri;

    invoke-static {v0, v6}, Lcom/samsung/android/transcode/util/CodecsHelper;->createExtractor(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaExtractor;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFilePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/transcode/util/CodecsHelper;->createExtractor(Ljava/lang/String;)Landroid/media/MediaExtractor;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/samsung/android/transcode/util/CodecsHelper;->getAndSelectVideoTrackIndex(Landroid/media/MediaExtractor;)I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v7

    iget-wide v8, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoEndUs:J

    move-wide v4, v8

    cmp-long v8, v4, v2

    if-nez v8, :cond_2

    iget-boolean v8, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mSEFVideo:Z

    if-eqz v8, :cond_1

    iget-object v8, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFilePath:Ljava/lang/String;

    iget-object v9, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mContext:Landroid/content/Context;

    iget-object v10, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputUri:Landroid/net/Uri;

    invoke-virtual {v1, v8, v9, v10}, Lcom/samsung/android/transcode/core/EncodeVideo;->getSEFVideoDuration(Ljava/lang/String;Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v8

    move-wide v4, v8

    goto :goto_1

    :cond_1
    const-string v8, "durationUs"

    invoke-virtual {v7, v8}, Landroid/media/MediaFormat;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    move-wide v4, v8

    :goto_1
    const-string v8, "TranscodeLib"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getOutputFileSize  trimEndTime was 0 but updated  trimEndTime : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    const/4 v8, 0x0

    iget-wide v9, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputMaxSizeKB:J

    cmp-long v9, v9, v2

    const/16 v10, 0x3e8

    if-ltz v9, :cond_4

    iget-object v9, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoMimeType:Ljava/lang/String;

    const-string/jumbo v11, "video/avc"

    if-ne v9, v11, :cond_3

    const v9, 0x3f666666    # 0.9f

    iput v9, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mSizeFraction:F

    :cond_3
    iget v11, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mSizeFraction:F

    iget-wide v12, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputMaxSizeKB:J

    iget-wide v14, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    sub-long v14, v4, v14

    const-wide/16 v16, 0x3e8

    div-long v14, v14, v16

    iget v9, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputAudioBitRate:I

    div-int/2addr v9, v10

    iget v2, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputWidth:I

    iget v3, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputHeight:I

    move/from16 v16, v9

    move/from16 v17, v2

    move/from16 v18, v3

    invoke-static/range {v11 .. v18}, Lcom/samsung/android/transcode/util/CodecsHelper;->getVideoEncodingBitRate(FJJIII)I

    move-result v2

    mul-int/2addr v10, v2

    goto :goto_2

    :cond_4
    iget v2, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputWidth:I

    iget v3, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputHeight:I

    invoke-static {v2, v3}, Lcom/samsung/android/transcode/util/CodecsHelper;->suggestBitRate(II)I

    move-result v2

    mul-int/2addr v10, v2

    :goto_2
    iget-wide v2, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    sub-long v2, v4, v2

    long-to-double v2, v2

    const-wide v8, 0x415e848000000000L    # 8000000.0

    div-double/2addr v2, v8

    iget v8, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputAudioBitRate:I

    add-int/2addr v8, v10

    int-to-double v8, v8

    const-wide v11, 0x408f400000000000L    # 1000.0

    div-double/2addr v8, v11

    mul-double/2addr v2, v8

    double-to-int v2, v2

    iget-wide v8, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputMaxSizeKB:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v11, 0x0

    cmp-long v3, v8, v11

    if-nez v3, :cond_5

    int-to-double v8, v2

    const-wide v11, 0x3feccccccccccccdL    # 0.9

    mul-double/2addr v8, v11

    double-to-int v3, v8

    return v3

    :cond_5
    return v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    const/4 v2, -0x1

    return v2

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    nop

    const/4 v0, 0x0

    return v0
.end method

.method public getSEFVideoDuration(Ljava/lang/String;Landroid/content/Context;Landroid/net/Uri;)J
    .locals 7

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    :try_start_0
    sget-boolean v3, Lcom/samsung/android/transcode/core/EncodeVideo;->mUseUri:Z

    if-eqz v3, :cond_0

    invoke-static {p2, p3}, Lcom/samsung/android/transcode/util/CodecsHelper;->createMediaMetadataRetriever(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaMetadataRetriever;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/samsung/android/transcode/util/CodecsHelper;->createMediaMetadataRetriever(Ljava/lang/String;)Landroid/media/MediaMetadataRetriever;

    move-result-object v3

    move-object v0, v3

    :goto_0
    const/16 v3, 0x405

    invoke-virtual {v0, v3}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    int-to-long v3, v3

    const-wide/16 v5, 0x3e8

    mul-long v1, v3, v5

    const-string v3, "TranscodeLib"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSEFVideoDuration  duration : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    goto :goto_1

    :catchall_0
    move-exception v3

    goto :goto_2

    :catch_0
    move-exception v3

    :try_start_1
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V

    :cond_1
    const/4 v0, 0x0

    nop

    return-wide v1

    :goto_2
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V

    :cond_2
    const/4 v0, 0x0

    throw v3
.end method

.method public getVideoFramerate(Ljava/lang/String;Landroid/content/Context;Landroid/net/Uri;)I
    .locals 25

    const/4 v0, 0x0

    move-object v1, v0

    :try_start_0
    sget-boolean v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUseUri:Z

    if-eqz v0, :cond_0

    invoke-static/range {p2 .. p3}, Lcom/samsung/android/transcode/util/CodecsHelper;->createExtractor(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaExtractor;

    move-result-object v0

    :goto_0
    move-object v1, v0

    goto :goto_1

    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/transcode/util/CodecsHelper;->createExtractor(Ljava/lang/String;)Landroid/media/MediaExtractor;

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

    invoke-static {v1}, Lcom/samsung/android/transcode/util/CodecsHelper;->getAndSelectVideoTrackIndex(Landroid/media/MediaExtractor;)I

    move-result v11

    const/4 v12, -0x1

    if-ne v11, v12, :cond_1

    const-string v12, "TranscodeLib"

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

    invoke-direct {v12, v0}, Lcom/samsung/android/transcode/core/EncodeVideo;->getVideoSampleSize(Landroid/media/MediaFormat;)I

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

.method public initialize(Ljava/lang/String;IILandroid/content/Context;Landroid/net/Uri;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-lez p2, :cond_7

    if-lez p3, :cond_6

    if-eqz p1, :cond_5

    if-eqz p5, :cond_4

    if-eqz p4, :cond_3

    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUseUri:Z

    invoke-direct {p0, p4, p5}, Lcom/samsung/android/transcode/core/EncodeVideo;->CheckVideoFormat(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v6, 0x0

    move-object v1, p0

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/transcode/core/EncodeVideo;->CheckVideoCodec(IILandroid/content/Context;Landroid/net/Uri;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p4, p5}, Lcom/samsung/android/transcode/core/EncodeVideo;->CheckSEFData(Ljava/lang/String;Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "TranscodeLib"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CheckSEFData mSEFVideo:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mSEFVideo:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputFilePath:Ljava/lang/String;

    iput p2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputWidth:I

    iput p3, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputHeight:I

    iput-object p5, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputUri:Landroid/net/Uri;

    iput-object p4, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mContext:Landroid/content/Context;

    return-void

    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Not a valid video codec."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Not a valid video format."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "input uri cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "output file path cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "height cannot be equal to or less than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "width cannot be equal to or less than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public initialize(Ljava/lang/String;IILandroid/content/Context;Landroid/net/Uri;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-lez p2, :cond_6

    if-lez p3, :cond_5

    if-eqz p1, :cond_4

    if-eqz p5, :cond_3

    if-eqz p4, :cond_2

    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUseUri:Z

    invoke-direct {p0, p4, p5}, Lcom/samsung/android/transcode/core/EncodeVideo;->CheckVideoFormat(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p0

    move v1, p2

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/transcode/core/EncodeVideo;->CheckVideoCodec(IILandroid/content/Context;Landroid/net/Uri;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputFilePath:Ljava/lang/String;

    iput p2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputWidth:I

    iput p3, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputHeight:I

    iput-object p5, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputUri:Landroid/net/Uri;

    iput-object p4, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mContext:Landroid/content/Context;

    return-void

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Not a valid video codec."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Not a valid video format."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "input uri cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "output file path cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "height cannot be equal to or less than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "width cannot be equal to or less than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public initialize(Ljava/lang/String;IILandroid/content/Context;Landroid/net/Uri;ZZ)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-lez p2, :cond_7

    if-lez p3, :cond_6

    if-eqz p1, :cond_5

    if-eqz p5, :cond_4

    if-eqz p4, :cond_3

    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUseUri:Z

    invoke-direct {p0, p4, p5}, Lcom/samsung/android/transcode/core/EncodeVideo;->CheckVideoFormat(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, p0

    move v1, p2

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/transcode/core/EncodeVideo;->CheckVideoCodec(IILandroid/content/Context;Landroid/net/Uri;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p7, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0, p4, p5}, Lcom/samsung/android/transcode/core/EncodeVideo;->CheckSEFData(Ljava/lang/String;Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "TranscodeLib"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CheckSEFData failed! mSEFVideo:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mSEFVideo:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputFilePath:Ljava/lang/String;

    iput p2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputWidth:I

    iput p3, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputHeight:I

    iput-object p5, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputUri:Landroid/net/Uri;

    iput-object p4, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mContext:Landroid/content/Context;

    return-void

    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Not a valid video codec."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Not a valid video format."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "input uri cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "output file path cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "height cannot be equal to or less than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "width cannot be equal to or less than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public initialize(Ljava/lang/String;IILandroid/content/Context;Landroid/net/Uri;ZZI)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-lez p2, :cond_8

    if-lez p3, :cond_7

    if-eqz p1, :cond_6

    if-eqz p5, :cond_5

    if-eqz p4, :cond_4

    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUseUri:Z

    invoke-direct {p0, p4, p5}, Lcom/samsung/android/transcode/core/EncodeVideo;->CheckVideoFormat(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object v1, p0

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/transcode/core/EncodeVideo;->CheckVideoCodec(IILandroid/content/Context;Landroid/net/Uri;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p7, :cond_0

    const/4 v1, 0x0

    invoke-direct {p0, v1, p4, p5}, Lcom/samsung/android/transcode/core/EncodeVideo;->CheckSEFData(Ljava/lang/String;Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "TranscodeLib"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CheckSEFData failed! mSEFVideo:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mSEFVideo:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputFilePath:Ljava/lang/String;

    iput p2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputWidth:I

    iput p3, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputHeight:I

    iput-object p5, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputUri:Landroid/net/Uri;

    iput-object p4, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mContext:Landroid/content/Context;

    if-nez p7, :cond_1

    if-lez p8, :cond_1

    iput p8, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mSourceFrameRate:I

    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mKeepSourceFrameRate:Z

    :cond_1
    return-void

    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Not a valid video codec."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Not a valid video format."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "input uri cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "output file path cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "height cannot be equal to or less than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "width cannot be equal to or less than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public initialize(Ljava/lang/String;IILjava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-lez p2, :cond_6

    if-lez p3, :cond_5

    if-eqz p1, :cond_4

    if-eqz p4, :cond_3

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUseUri:Z

    invoke-direct {p0, p4}, Lcom/samsung/android/transcode/core/EncodeVideo;->CheckVideoFormat(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, p2, p3, p4, v0}, Lcom/samsung/android/transcode/core/EncodeVideo;->CheckVideoCodec(IILjava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-direct {p0, p4, v0, v0}, Lcom/samsung/android/transcode/core/EncodeVideo;->CheckSEFData(Ljava/lang/String;Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "TranscodeLib"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CheckSEFData mSEFVideo:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mSEFVideo:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputFilePath:Ljava/lang/String;

    iput p2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputWidth:I

    iput p3, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputHeight:I

    iput-object p4, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFilePath:Ljava/lang/String;

    return-void

    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Not a valid video codec."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Not a valid video format."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "input file path cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "output file path cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "height cannot be equal to or less than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "width cannot be equal to or less than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public initialize(Ljava/lang/String;IILjava/lang/String;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-lez p2, :cond_5

    if-lez p3, :cond_4

    if-eqz p1, :cond_3

    if-eqz p4, :cond_2

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUseUri:Z

    invoke-direct {p0, p4}, Lcom/samsung/android/transcode/core/EncodeVideo;->CheckVideoFormat(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/samsung/android/transcode/core/EncodeVideo;->CheckVideoCodec(IILjava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputFilePath:Ljava/lang/String;

    iput p2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputWidth:I

    iput p3, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputHeight:I

    iput-object p4, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFilePath:Ljava/lang/String;

    return-void

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Not a valid video codec."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Not a valid video format."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "input file path cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "output file path cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "height cannot be equal to or less than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "width cannot be equal to or less than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public initialize(Ljava/lang/String;IILjava/lang/String;ZZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-lez p2, :cond_6

    if-lez p3, :cond_5

    if-eqz p1, :cond_4

    if-eqz p4, :cond_3

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUseUri:Z

    invoke-direct {p0, p4}, Lcom/samsung/android/transcode/core/EncodeVideo;->CheckVideoFormat(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/samsung/android/transcode/core/EncodeVideo;->CheckVideoCodec(IILjava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p6, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, p4, v0, v0}, Lcom/samsung/android/transcode/core/EncodeVideo;->CheckSEFData(Ljava/lang/String;Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "TranscodeLib"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CheckSEFData failed! mSEFVideo:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mSEFVideo:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputFilePath:Ljava/lang/String;

    iput p2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputWidth:I

    iput p3, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputHeight:I

    iput-object p4, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFilePath:Ljava/lang/String;

    return-void

    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Not a valid video codec."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Not a valid video format."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "input file path cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "output file path cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "height cannot be equal to or less than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "width cannot be equal to or less than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public initialize(Ljava/lang/String;IILjava/lang/String;ZZI)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-lez p2, :cond_7

    if-lez p3, :cond_6

    if-eqz p1, :cond_5

    if-eqz p4, :cond_4

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUseUri:Z

    invoke-direct {p0, p4}, Lcom/samsung/android/transcode/core/EncodeVideo;->CheckVideoFormat(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/samsung/android/transcode/core/EncodeVideo;->CheckVideoCodec(IILjava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p6, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, p4, v0, v0}, Lcom/samsung/android/transcode/core/EncodeVideo;->CheckSEFData(Ljava/lang/String;Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "TranscodeLib"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CheckSEFData failed! mSEFVideo:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mSEFVideo:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputFilePath:Ljava/lang/String;

    iput p2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputWidth:I

    iput p3, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputHeight:I

    iput-object p4, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFilePath:Ljava/lang/String;

    if-nez p6, :cond_1

    if-lez p7, :cond_1

    iput p7, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mSourceFrameRate:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mKeepSourceFrameRate:Z

    :cond_1
    return-void

    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Not a valid video codec."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Not a valid video format."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "input file path cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "output file path cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "height cannot be equal to or less than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "width cannot be equal to or less than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public initialize(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p2}, Lcom/samsung/android/transcode/core/Encode$EncodeResolution;->isSupportedResolution(I)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    if-eqz p3, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-static {p2, v0}, Lcom/samsung/android/transcode/util/CodecsHelper;->fillResolutionRect(ILandroid/graphics/Rect;)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {p0, p1, v1, v2, p3}, Lcom/samsung/android/transcode/core/EncodeVideo;->initialize(Ljava/lang/String;IILjava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Input file path cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Output file path cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid resolution value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected pause()V
    .locals 4

    const-string v0, "TranscodeLib"

    const-string/jumbo v1, "pause encoder objects"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mPrepared:Z

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    iput-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "TranscodeLib"

    const-string v3, "Exception in releasing video extractor."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputVideoDecoder:Landroid/media/MediaCodec;

    if-eqz v0, :cond_1

    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputVideoDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputVideoDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    iput-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputVideoDecoder:Landroid/media/MediaCodec;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v2, "TranscodeLib"

    const-string v3, "Exception in releasing input video decoder."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    if-eqz v0, :cond_2

    :try_start_2
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    iput-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoEncoder:Landroid/media/MediaCodec;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    const-string v2, "TranscodeLib"

    const-string v3, "Exception in releasing output video encoder."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mImgConverter:Lcom/samsung/android/media/vidsol/simgp/ImgConverter;

    if-eqz v0, :cond_3

    :try_start_3
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mImgConverter:Lcom/samsung/android/media/vidsol/simgp/ImgConverter;

    invoke-virtual {v0}, Lcom/samsung/android/media/vidsol/simgp/ImgConverter;->release()V

    iput-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mImgConverter:Lcom/samsung/android/media/vidsol/simgp/ImgConverter;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    const-string v1, "TranscodeLib"

    const-string v2, "Exception in releasing image converter."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_3
    return-void
.end method

.method public pauseResize()V
    .locals 2

    const-string v0, "TranscodeLib"

    const-string/jumbo v1, "pause method called "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputReachedEOS:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mPaused:Z

    :cond_0
    return-void
.end method

.method protected prepare()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mEncoding:Z

    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/EncodeVideo;->prepareVideoCodec()V

    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/EncodeVideo;->prepareAudioCodec()V

    return-void
.end method

.method protected prepareAudioCodec()V
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    sget-boolean v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUseUri:Z

    if-eqz v0, :cond_1

    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mContext:Landroid/content/Context;

    iget-object v2, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputUri:Landroid/net/Uri;

    invoke-static {v0, v2}, Lcom/samsung/android/transcode/util/CodecsHelper;->createExtractor(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaExtractor;

    move-result-object v0

    iput-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v2, "mInputUri or mContext  is NULL"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFilePath:Ljava/lang/String;

    if-eqz v0, :cond_20

    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFilePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/transcode/util/CodecsHelper;->createExtractor(Ljava/lang/String;)Landroid/media/MediaExtractor;

    move-result-object v0

    iput-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    :goto_0
    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-static {v0}, Lcom/samsung/android/transcode/util/CodecsHelper;->getAndSelectAudioTrackIndex(Landroid/media/MediaExtractor;)I

    move-result v2

    const/4 v0, -0x1

    const/4 v3, 0x0

    if-ne v2, v0, :cond_2

    iput-boolean v3, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mCopyAudio:Z

    return-void

    :cond_2
    iget-object v4, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v4, v2}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v4

    const-string v5, "audio/unknown"

    const-string/jumbo v6, "mime"

    invoke-virtual {v4, v6}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v0, "TranscodeLib"

    const-string v5, "Audio mime type is unknown. Ignore audio track."

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v3, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mCopyAudio:Z

    return-void

    :cond_3
    const-string v5, "error-type"

    invoke-virtual {v4, v5}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v5, 0x0

    const-string v6, "error-type"

    invoke-virtual {v4, v6}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_4

    const-string v0, "TranscodeLib"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Audio codec error appear : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v3, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mCopyAudio:Z

    return-void

    :cond_4
    const/4 v5, 0x1

    iput-boolean v5, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mCopyAudio:Z

    iget-wide v6, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimAudioEndUs:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_6

    const-string v6, "durationUs"

    invoke-virtual {v4, v6}, Landroid/media/MediaFormat;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimAudioEndUs:J

    iput-wide v6, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOriginTrimEndUs:J

    iget-boolean v6, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mSEFVideo:Z

    if-eqz v6, :cond_5

    iget-object v6, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFilePath:Ljava/lang/String;

    iget-object v7, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mContext:Landroid/content/Context;

    iget-object v10, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputUri:Landroid/net/Uri;

    invoke-virtual {v1, v6, v7, v10}, Lcom/samsung/android/transcode/core/EncodeVideo;->getSEFVideoDuration(Ljava/lang/String;Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v6

    iput-wide v6, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOriginTrimEndUs:J

    :cond_5
    const-string v6, "TranscodeLib"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "mTrimAudioEndUs was 0 but updated mTrimAudioEndUs :"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimAudioEndUs:J

    invoke-virtual {v7, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, ", mOriginTrimEndUs:"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOriginTrimEndUs:J

    invoke-virtual {v7, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    const-string v6, "TranscodeLib"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Audio input format "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v6, "sample-rate"

    invoke-virtual {v4, v6}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v6

    iput v6, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputAudioSampleRateHZ:I

    const-string v6, "channel-count"

    invoke-virtual {v4, v6}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v6

    iput v6, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputAudioChannelCount:I

    const-string/jumbo v6, "mime"

    invoke-virtual {v4, v6}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "audio/mp4a-latm"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_15

    :try_start_0
    invoke-static {v6}, Lcom/samsung/android/transcode/util/CodecsHelper;->getDecoderCodec(Ljava/lang/String;)Landroid/media/MediaCodecInfo;

    move-result-object v7

    invoke-static {v7, v4}, Lcom/samsung/android/transcode/util/CodecsHelper;->createAudioDecoder(Landroid/media/MediaCodecInfo;Landroid/media/MediaFormat;)Landroid/media/MediaCodec;

    move-result-object v11

    iput-object v11, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputAudioDecoder:Landroid/media/MediaCodec;

    iget-boolean v11, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mCopyAudio:Z

    if-eqz v11, :cond_7

    iget-object v11, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputAudioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v11}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v11

    goto :goto_1

    :cond_7
    const/4 v11, 0x0

    :goto_1
    iget-boolean v13, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mCopyAudio:Z

    if-eqz v13, :cond_8

    iget-object v13, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputAudioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v13}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v13

    goto :goto_2

    :cond_8
    const/4 v13, 0x0

    :goto_2
    new-instance v14, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v14}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    const/4 v15, -0x1

    new-instance v8, Lcom/samsung/android/transcode/core/EncodeVideo$1;

    invoke-direct {v8, v1}, Lcom/samsung/android/transcode/core/EncodeVideo$1;-><init>(Lcom/samsung/android/transcode/core/EncodeVideo;)V

    :goto_3
    iget-boolean v9, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->formatupdated:Z

    if-nez v9, :cond_12

    iget-boolean v9, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->formatupdated:Z

    move-object/from16 v16, v11

    const-wide/16 v10, 0x2710

    if-nez v9, :cond_b

    iget-object v9, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputAudioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v9, v10, v11}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v9

    if-ne v9, v0, :cond_9

    const-string v12, "TranscodeLib"

    const-string v10, "audio decoder input try again later while preparing audio codec"

    invoke-static {v12, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_9
    aget-object v10, v13, v9

    iget-object v11, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v11, v10, v3}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v11

    iget-object v12, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v12}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v21

    if-lez v11, :cond_a

    iget-object v12, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputAudioDecoder:Landroid/media/MediaCodec;

    const/16 v19, 0x0

    iget-object v5, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v5}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v23

    move-object/from16 v17, v12

    move/from16 v18, v9

    move/from16 v20, v11

    invoke-virtual/range {v17 .. v23}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    goto :goto_4

    :cond_a
    if-ne v11, v0, :cond_b

    iput-boolean v3, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mCopyAudio:Z

    const/4 v5, 0x1

    iput-boolean v5, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->formatupdated:Z

    const-string v5, "TranscodeLib"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Audio buffer is empty, size :"

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    nop

    :cond_b
    :goto_4
    const/4 v3, 0x3

    invoke-static {v3, v8}, Lcom/samsung/android/transcode/util/CodecsHelper;->scheduleAfter(ILjava/lang/Runnable;)V

    iget-boolean v3, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->formatupdated:Z

    if-nez v3, :cond_11

    if-ne v15, v0, :cond_11

    iget-object v3, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputAudioDecoder:Landroid/media/MediaCodec;

    const-wide/16 v9, 0x2710

    invoke-virtual {v3, v14, v9, v10}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v3

    if-ne v3, v0, :cond_c

    const-string v5, "TranscodeLib"

    const-string v9, "audio decoder output buffer try again later while preparing audio codec"

    invoke-static {v5, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :cond_c
    const/4 v5, -0x3

    if-ne v3, v5, :cond_d

    const-string v5, "TranscodeLib"

    const-string v9, "audio decoder: output buffers changed "

    invoke-static {v5, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputAudioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v5}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v5

    move-object v11, v5

    goto :goto_6

    :cond_d
    const/4 v5, -0x2

    if-ne v3, v5, :cond_e

    iget-object v5, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputAudioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v5}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v5

    const-string/jumbo v9, "sample-rate"

    invoke-virtual {v5, v9}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v5

    iput v5, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputAudioSampleRateHZ:I

    iget-object v5, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputAudioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v5}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v5

    const-string v9, "channel-count"

    invoke-virtual {v5, v9}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v5

    iput v5, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputAudioChannelCount:I

    const-string v5, "TranscodeLib"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "audio decoder: output format changed: SampleRate"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputAudioSampleRateHZ:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ",ChannelCount"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputAudioChannelCount:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x1

    iput-boolean v5, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->formatupdated:Z

    goto :goto_5

    :cond_e
    if-gez v3, :cond_f

    const-string v5, "TranscodeLib"

    const-string v9, "Unexpected result from audio decoder dequeue output format."

    invoke-static {v5, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_f
    iget v5, v14, Landroid/media/MediaCodec$BufferInfo;->flags:I

    const/4 v9, 0x2

    and-int/2addr v5, v9

    if-eqz v5, :cond_10

    const-string v5, "TranscodeLib"

    const-string v9, "audio decoder: codec config buffer"

    invoke-static {v5, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputAudioDecoder:Landroid/media/MediaCodec;

    const/4 v9, 0x0

    invoke-virtual {v5, v3, v9}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    goto :goto_5

    :cond_10
    move v15, v3

    nop

    :cond_11
    :goto_5
    move-object/from16 v11, v16

    :goto_6
    const/4 v3, 0x0

    const/4 v5, 0x1

    goto/16 :goto_3

    :cond_12
    move-object/from16 v16, v11

    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputAudioDecoder:Landroid/media/MediaCodec;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_13

    :try_start_1
    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputAudioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputAudioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    const/4 v0, 0x0

    iput-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputAudioDecoder:Landroid/media/MediaCodec;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_7

    :catch_0
    move-exception v0

    :try_start_2
    const-string v3, "TranscodeLib"

    const-string v5, "Exception in releasing input audio decoder."

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_13
    :goto_7
    iget-boolean v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mCopyAudio:Z

    if-eqz v0, :cond_14

    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    const/4 v3, 0x0

    const-wide/16 v9, 0x0

    invoke-virtual {v0, v9, v10, v3}, Landroid/media/MediaExtractor;->seekTo(JI)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_8

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    goto :goto_8

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :cond_14
    :goto_8
    goto :goto_9

    :cond_15
    const-string v0, "audio/ac3"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    const-string v0, "audio/eac3"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    const-string v0, "audio/eac3-joc"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    const-string v0, "audio/ac4"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    :cond_16
    iget v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputAudioChannelCount:I

    const/4 v3, 0x2

    if-le v0, v3, :cond_17

    iput v3, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputAudioChannelCount:I

    :cond_17
    const-string v0, "TranscodeLib"

    const-string v3, "Audio ac3 type :  mOutputAudioChannelCount is changed."

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18
    :goto_9
    const/4 v3, 0x0

    move v5, v3

    :try_start_3
    const-string/jumbo v0, "max-input-size"

    invoke-virtual {v4, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_3

    move v5, v0

    goto :goto_a

    :catch_3
    move-exception v0

    const-string v3, "TranscodeLib"

    const-string v7, "Audio max input size not defined"

    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_a
    iget-boolean v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mMMSMode:Z

    if-eqz v0, :cond_19

    iget v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputAudioChannelCount:I

    const/4 v3, 0x2

    if-lt v0, v3, :cond_1a

    iget v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputAudioChannelCount:I

    iput v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOriginalAudioChannelCount:I

    const/4 v3, 0x1

    iput v3, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputAudioChannelCount:I

    goto :goto_b

    :cond_19
    const/4 v3, 0x2

    :cond_1a
    iget v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputAudioChannelCount:I

    if-le v0, v3, :cond_1c

    iget v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputAudioChannelCount:I

    const/4 v7, 0x6

    if-ne v0, v7, :cond_1b

    iget v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputAudioChannelCount:I

    iput v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOriginalAudioChannelCount:I

    iput v3, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputAudioChannelCount:I

    const-string v0, "TranscodeLib"

    const-string v3, "Audio need down mixing "

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    :cond_1b
    const-string v0, "TranscodeLib"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Can\'t support "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputAudioChannelCount:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " channel "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mCopyAudio:Z

    return-void

    :cond_1c
    :goto_b
    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputAudioMimeType:Ljava/lang/String;

    iget v3, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputAudioSampleRateHZ:I

    iget v7, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputAudioChannelCount:I

    invoke-static {v0, v3, v7}, Landroid/media/MediaFormat;->createAudioFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v0

    if-eqz v5, :cond_1d

    const-string/jumbo v3, "max-input-size"

    invoke-virtual {v0, v3, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_1d
    const-string v3, "bitrate"

    iget v7, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputAudioBitRate:I

    invoke-virtual {v0, v3, v7}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v3, "aac-profile"

    iget v7, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputAudioAACProfile:I

    invoke-virtual {v0, v3, v7}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v3, "TranscodeLib"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Audio output format "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputAudioMimeType:Ljava/lang/String;

    invoke-static {v3}, Lcom/samsung/android/transcode/util/CodecsHelper;->getEncoderCodec(Ljava/lang/String;)Landroid/media/MediaCodecInfo;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/samsung/android/transcode/util/CodecsHelper;->createAudioEncoder(Landroid/media/MediaCodecInfo;Landroid/media/MediaFormat;)Landroid/media/MediaCodec;

    move-result-object v7

    iput-object v7, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    const-string v7, "encoder-delay"

    invoke-virtual {v4, v7}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1e

    const-string v7, "encoder-delay"

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_1e
    const-string v7, "audio/mp4a-latm"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1f

    invoke-static {v6}, Lcom/samsung/android/transcode/util/CodecsHelper;->getDecoderCodec(Ljava/lang/String;)Landroid/media/MediaCodecInfo;

    move-result-object v7

    invoke-static {v7, v4}, Lcom/samsung/android/transcode/util/CodecsHelper;->createAudioDecoder(Landroid/media/MediaCodecInfo;Landroid/media/MediaFormat;)Landroid/media/MediaCodec;

    move-result-object v8

    iput-object v8, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputAudioDecoder:Landroid/media/MediaCodec;

    goto :goto_c

    :cond_1f
    invoke-static {v4}, Lcom/samsung/android/transcode/util/CodecsHelper;->createAudioDecoder(Landroid/media/MediaFormat;)Landroid/media/MediaCodec;

    move-result-object v7

    iput-object v7, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputAudioDecoder:Landroid/media/MediaCodec;

    :goto_c
    return-void

    :cond_20
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v2, "mInputFilePath is NULL"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected prepareHDRConverter(J)V
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    const-string v0, "TranscodeLib"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "prepareHDRConverter  seektime : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-wide v2, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mSeektime:J

    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    move-object v4, v0

    const/4 v5, 0x0

    :try_start_0
    sget-boolean v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUseUri:Z

    if-eqz v0, :cond_0

    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mContext:Landroid/content/Context;

    iget-object v6, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputUri:Landroid/net/Uri;

    invoke-virtual {v4, v0, v6}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_0

    :cond_0
    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFilePath:Ljava/lang/String;

    invoke-virtual {v4, v0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    :goto_0
    const/16 v0, 0x18

    invoke-virtual {v4, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v6, v0

    if-eqz v6, :cond_5

    move v7, v5

    :try_start_1
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v7, v0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v8, v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    :goto_1
    if-eqz v7, :cond_4

    const/16 v0, 0x5a

    if-eq v7, v0, :cond_3

    const/16 v0, 0xb4

    if-eq v7, v0, :cond_2

    const/16 v0, 0x10e

    if-eq v7, v0, :cond_1

    goto :goto_2

    :cond_1
    iput v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputOrientationDegrees:I

    goto :goto_2

    :cond_2
    iput v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputOrientationDegrees:I

    goto :goto_2

    :cond_3
    iput v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputOrientationDegrees:I

    goto :goto_2

    :cond_4
    iput v5, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputOrientationDegrees:I

    nop

    :goto_2
    goto :goto_3

    :cond_5
    iput v5, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputOrientationDegrees:I
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_3
    goto :goto_4

    :catchall_0
    move-exception v0

    goto/16 :goto_f

    :catch_1
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    nop

    :goto_4
    invoke-virtual {v4}, Landroid/media/MediaMetadataRetriever;->release()V

    const/4 v0, 0x0

    nop

    move-object v4, v0

    sget-boolean v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUseUri:Z

    if-eqz v0, :cond_6

    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mContext:Landroid/content/Context;

    iget-object v6, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputUri:Landroid/net/Uri;

    invoke-static {v0, v6}, Lcom/samsung/android/transcode/util/CodecsHelper;->createExtractor(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaExtractor;

    move-result-object v0

    iput-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mContext:Landroid/content/Context;

    iget-object v6, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputUri:Landroid/net/Uri;

    invoke-static {v0, v6}, Lcom/samsung/android/transcode/util/CodecsHelper;->createExtractor(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaExtractor;

    move-result-object v0

    iput-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    goto :goto_5

    :cond_6
    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFilePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/transcode/util/CodecsHelper;->createExtractor(Ljava/lang/String;)Landroid/media/MediaExtractor;

    move-result-object v0

    iput-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFilePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/transcode/util/CodecsHelper;->createExtractor(Ljava/lang/String;)Landroid/media/MediaExtractor;

    move-result-object v0

    iput-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    :goto_5
    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-static {v0}, Lcom/samsung/android/transcode/util/CodecsHelper;->getAndSelectVideoTrackIndex(Landroid/media/MediaExtractor;)I

    move-result v6

    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-static {v0}, Lcom/samsung/android/transcode/util/CodecsHelper;->getAndSelectAudioTrackIndex(Landroid/media/MediaExtractor;)I

    move-result v7

    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0, v6}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v8

    const-string v0, "TranscodeLib"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "input video format: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v9, -0x1

    if-ne v7, v9, :cond_7

    const-string v9, "TranscodeLib"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "can\'t get audio format : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6
    move-object v9, v0

    goto :goto_7

    :cond_7
    iget-object v9, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v9, v7}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v0

    const-string v9, "TranscodeLib"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Audio input format "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :goto_7
    iput v5, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mSourceFrameRate:I

    :try_start_4
    const-string v0, "frame-rate"

    invoke-virtual {v8, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mSourceFrameRate:I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_8

    :catch_2
    move-exception v0

    :goto_8
    iget v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mSourceFrameRate:I

    if-eqz v0, :cond_8

    iget v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mSourceFrameRate:I

    const/16 v10, 0xfa

    if-le v0, v10, :cond_9

    :cond_8
    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFilePath:Ljava/lang/String;

    iget-object v10, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mContext:Landroid/content/Context;

    iget-object v11, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputUri:Landroid/net/Uri;

    invoke-virtual {v1, v0, v10, v11}, Lcom/samsung/android/transcode/core/EncodeVideo;->getVideoFramerate(Ljava/lang/String;Landroid/content/Context;Landroid/net/Uri;)I

    move-result v0

    iput v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mSourceFrameRate:I

    :cond_9
    iget v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mSourceFrameRate:I

    if-lez v0, :cond_a

    iget v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mSourceFrameRate:I

    iput v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoFrameRate:I

    :cond_a
    const-string v0, "TranscodeLib"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "mSourceFrameRate :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mSourceFrameRate:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", mOutputVideoFrameRate :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoFrameRate:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x3e8

    iget v10, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputWidth:I

    iget v11, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputHeight:I

    invoke-static {v10, v11}, Lcom/samsung/android/transcode/util/CodecsHelper;->suggestBitRate(II)I

    move-result v10

    mul-int/2addr v0, v10

    iput v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoBitRate:I

    const-string v0, "TranscodeLib"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "mOutputVideoMimeType :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoMimeType:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoMimeType:Ljava/lang/String;

    iget v10, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputWidth:I

    iget v11, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputHeight:I

    invoke-static {v0, v10, v11}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v0

    const-string v10, "color-format"

    const v11, 0x7f000789

    invoke-virtual {v0, v10, v11}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v10, "bitrate"

    iget v11, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoBitRate:I

    invoke-virtual {v0, v10, v11}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v10, "frame-rate"

    iget v11, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoFrameRate:I

    invoke-virtual {v0, v10, v11}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v10, "i-frame-interval"

    iget v11, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoIFrameInterval:I

    invoke-virtual {v0, v10, v11}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string/jumbo v10, "priority"

    const/4 v11, 0x1

    invoke-virtual {v0, v10, v11}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    new-instance v10, Lcom/samsung/android/media/vidsol/simgp/ImageFormat;

    invoke-direct {v10, v8}, Lcom/samsung/android/media/vidsol/simgp/ImageFormat;-><init>(Landroid/media/MediaFormat;)V

    iget v12, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mHDRType:I

    const/4 v13, 0x2

    if-ne v12, v13, :cond_b

    invoke-virtual {v10, v11}, Lcom/samsung/android/media/vidsol/simgp/ImageFormat;->setHdrType(I)V

    :cond_b
    new-instance v12, Lcom/samsung/android/media/vidsol/simgp/ImageFormat;

    invoke-direct {v12, v0}, Lcom/samsung/android/media/vidsol/simgp/ImageFormat;-><init>(Landroid/media/MediaFormat;)V

    invoke-virtual {v12, v11}, Lcom/samsung/android/media/vidsol/simgp/ImageFormat;->setColorSpace(I)V

    new-instance v14, Lcom/samsung/android/media/vidsol/simgp/ImgConverter$Option;

    invoke-direct {v14}, Lcom/samsung/android/media/vidsol/simgp/ImgConverter$Option;-><init>()V

    iput-boolean v11, v14, Lcom/samsung/android/media/vidsol/simgp/ImgConverter$Option;->preferHw:Z

    new-instance v15, Lcom/samsung/android/media/vidsol/simgp/ImgConverter;

    invoke-direct {v15, v10, v12, v14}, Lcom/samsung/android/media/vidsol/simgp/ImgConverter;-><init>(Lcom/samsung/android/media/vidsol/simgp/ImageFormat;Lcom/samsung/android/media/vidsol/simgp/ImageFormat;Lcom/samsung/android/media/vidsol/simgp/ImgConverter$Option;)V

    iput-object v15, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mImgConverter:Lcom/samsung/android/media/vidsol/simgp/ImgConverter;

    iget-object v15, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mImgConverter:Lcom/samsung/android/media/vidsol/simgp/ImgConverter;

    new-instance v11, Lcom/samsung/android/transcode/core/EncodeVideo$2;

    invoke-direct {v11, v1}, Lcom/samsung/android/transcode/core/EncodeVideo$2;-><init>(Lcom/samsung/android/transcode/core/EncodeVideo;)V

    invoke-virtual {v15, v11}, Lcom/samsung/android/media/vidsol/simgp/ImgConverter;->setEventListener(Lcom/samsung/android/media/vidsol/simgp/ImgConverter$OnEventListener;)V

    iget-object v11, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mImgConverter:Lcom/samsung/android/media/vidsol/simgp/ImgConverter;

    sget-object v15, Lcom/samsung/android/media/vidsol/simgp/ImgConverter$PortType;->OUTPUT:Lcom/samsung/android/media/vidsol/simgp/ImgConverter$PortType;

    invoke-virtual {v11, v13, v15}, Lcom/samsung/android/media/vidsol/simgp/ImgConverter;->queryMetadata(ILcom/samsung/android/media/vidsol/simgp/ImgConverter$PortType;)Landroid/os/Bundle;

    move-result-object v11

    const-string v13, "color-standard"

    const-string v15, "color-standard"

    invoke-virtual {v11, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v0, v13, v15}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v13, "color-range"

    const-string v15, "color-range"

    invoke-virtual {v11, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v0, v13, v15}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v13, "color-transfer"

    const-string v15, "color-transfer"

    invoke-virtual {v11, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v0, v13, v15}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v13, "TranscodeLib"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "output video format : "

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v13, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v5, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxerStarted:Z

    if-nez v5, :cond_f

    const/4 v5, 0x0

    sget-boolean v13, Lcom/samsung/android/transcode/core/EncodeVideo;->mUseUri:Z

    if-eqz v13, :cond_c

    iget-object v13, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputUri:Landroid/net/Uri;

    invoke-virtual {v13}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v13

    goto :goto_9

    :cond_c
    iget-object v13, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFilePath:Ljava/lang/String;

    :goto_9
    move-object v5, v13

    const/4 v13, 0x0

    invoke-virtual {v1, v5, v13}, Lcom/samsung/android/transcode/core/EncodeVideo;->updateCreationTime(Ljava/lang/String;Z)Z

    move-result v15

    if-eqz v15, :cond_d

    const-string/jumbo v13, "param-meta-author"

    const/16 v15, 0x8

    invoke-virtual {v0, v13, v15}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string/jumbo v13, "param-meta-transcoding"

    const/4 v15, 0x1

    invoke-virtual {v0, v13, v15}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_d
    iget-object v13, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v13, v0}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v13

    iput v13, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoTrackIndex:I

    if-eqz v9, :cond_e

    const-string v13, "audio/unknown"

    const-string/jumbo v15, "mime"

    invoke-virtual {v9, v15}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_e

    iget-object v13, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v13, v9}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v13

    iput v13, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioTrackIndex:I

    const/4 v13, 0x1

    iput-boolean v13, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mCopyAudio:Z

    goto :goto_a

    :cond_e
    const/4 v13, 0x1

    const/4 v7, -0x1

    iput-boolean v13, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->HDR_audioDone:Z

    :goto_a
    iget-object v15, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxer:Landroid/media/MediaMuxer;

    iget v13, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputOrientationDegrees:I

    invoke-virtual {v15, v13}, Landroid/media/MediaMuxer;->setOrientationHint(I)V

    iget-object v13, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v13}, Landroid/media/MediaMuxer;->start()V

    const/4 v13, 0x1

    iput-boolean v13, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxerStarted:Z

    const-string v13, "TranscodeLib"

    const-string v15, "Muxer start "

    invoke-static {v13, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    move-object/from16 v16, v4

    iget-wide v4, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoEndUs:J

    const-wide/16 v17, 0x0

    cmp-long v4, v4, v17

    if-nez v4, :cond_10

    const-string v4, "durationUs"

    invoke-virtual {v8, v4}, Landroid/media/MediaFormat;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoEndUs:J

    const-string v4, "TranscodeLib"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "mTrimVideoEndUs was 0 but updated  mTrimVideoEndUs : "

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v19, v6

    move/from16 v20, v7

    iget-wide v6, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoEndUs:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    :cond_10
    move/from16 v19, v6

    move/from16 v20, v7

    :goto_b
    iget-wide v4, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimAudioEndUs:J

    cmp-long v4, v4, v17

    if-nez v4, :cond_11

    const-string v4, "durationUs"

    invoke-virtual {v9, v4}, Landroid/media/MediaFormat;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimAudioEndUs:J

    const-string v4, "TranscodeLib"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mTrimAudioEndUs was 0 but updated mTrimAudioEndUs :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimAudioEndUs:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    cmp-long v4, v2, v17

    if-eqz v4, :cond_12

    iget-object v4, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v3, v5}, Landroid/media/MediaExtractor;->seekTo(JI)V

    :cond_12
    iget-boolean v4, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mCopyAudio:Z

    const-wide/16 v5, -0x1

    if-eqz v4, :cond_14

    cmp-long v4, v2, v17

    if-eqz v4, :cond_14

    iget-object v4, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    const/4 v7, 0x0

    invoke-virtual {v4, v2, v3, v7}, Landroid/media/MediaExtractor;->seekTo(JI)V

    :goto_c
    iget-object v4, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v4}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v17

    cmp-long v4, v17, v2

    if-gez v4, :cond_14

    iget-object v4, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v4}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v17

    cmp-long v4, v17, v5

    if-eqz v4, :cond_13

    iget-object v4, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v4}, Landroid/media/MediaExtractor;->advance()Z

    goto :goto_c

    :cond_13
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Invalid File!"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_14
    iget-boolean v4, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    if-nez v4, :cond_17

    iget-boolean v4, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mCopyAudio:Z

    if-eqz v4, :cond_17

    iget-boolean v4, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxerStarted:Z

    if-eqz v4, :cond_17

    iget-boolean v4, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->HDR_audioDone:Z

    if-nez v4, :cond_17

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/high16 v13, 0x20000

    invoke-static {v13}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v13

    new-instance v15, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v15}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iget-object v5, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v5, v13, v4}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v5

    iput v5, v15, Landroid/media/MediaCodec$BufferInfo;->size:I

    const-string v5, "TranscodeLib"

    const-string v6, "Audio rewirte"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_d
    iget-boolean v5, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    if-nez v5, :cond_17

    if-nez v7, :cond_17

    iput v4, v15, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget-object v5, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v5, v13, v4}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v5

    iput v5, v15, Landroid/media/MediaCodec$BufferInfo;->size:I

    iget v5, v15, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-gez v5, :cond_15

    const-string v5, "TranscodeLib"

    const-string/jumbo v6, "saw input EOS: Audio"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x1

    const/4 v5, 0x0

    iput v5, v15, Landroid/media/MediaCodec$BufferInfo;->size:I

    goto :goto_d

    :cond_15
    iget-object v5, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v5}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v5

    iput-wide v5, v15, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-wide v5, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimAudioEndUs:J

    const-wide/16 v17, -0x1

    cmp-long v5, v5, v17

    if-eqz v5, :cond_16

    iget-wide v5, v15, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-wide v2, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimAudioEndUs:J

    cmp-long v2, v5, v2

    if-lez v2, :cond_16

    const/4 v7, 0x1

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->HDR_audioDone:Z

    const-string v2, "TranscodeLib"

    const-string/jumbo v3, "sawEOS: true: A"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    :cond_16
    iget-object v2, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v2}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v2

    iput v2, v15, Landroid/media/MediaCodec$BufferInfo;->flags:I

    iget-object v2, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxer:Landroid/media/MediaMuxer;

    iget v3, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioTrackIndex:I

    invoke-virtual {v2, v3, v13, v15}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    iget-object v2, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v2}, Landroid/media/MediaExtractor;->advance()Z

    :goto_e
    move-wide/from16 v2, p1

    goto :goto_d

    :cond_17
    iget-object v2, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mImgConverter:Lcom/samsung/android/media/vidsol/simgp/ImgConverter;

    invoke-virtual {v2}, Lcom/samsung/android/media/vidsol/simgp/ImgConverter;->getInputSurface()Landroid/view/Surface;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v8, v2, v3}, Lcom/samsung/android/transcode/util/CodecsHelper;->createVideoDecoder(Landroid/media/MediaFormat;Landroid/view/Surface;Z)Landroid/media/MediaCodec;

    move-result-object v2

    iput-object v2, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputVideoDecoder:Landroid/media/MediaCodec;

    iget-object v2, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputVideoDecoder:Landroid/media/MediaCodec;

    if-eqz v2, :cond_18

    iget-object v2, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputVideoDecoder:Landroid/media/MediaCodec;

    new-instance v3, Lcom/samsung/android/transcode/core/EncodeVideo$3;

    invoke-direct {v3, v1}, Lcom/samsung/android/transcode/core/EncodeVideo$3;-><init>(Lcom/samsung/android/transcode/core/EncodeVideo;)V

    invoke-virtual {v2, v3}, Landroid/media/MediaCodec;->setCallback(Landroid/media/MediaCodec$Callback;)V

    iget-object v2, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoMimeType:Ljava/lang/String;

    invoke-static {v2}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v2

    iput-object v2, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    iget-object v2, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v0, v3, v3, v4}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    iget-object v2, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    new-instance v3, Lcom/samsung/android/transcode/core/EncodeVideo$4;

    invoke-direct {v3, v1}, Lcom/samsung/android/transcode/core/EncodeVideo$4;-><init>(Lcom/samsung/android/transcode/core/EncodeVideo;)V

    invoke-virtual {v2, v3}, Landroid/media/MediaCodec;->setCallback(Landroid/media/MediaCodec$Callback;)V

    iget-object v2, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mImgConverter:Lcom/samsung/android/media/vidsol/simgp/ImgConverter;

    iget-object v3, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v3}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/media/vidsol/simgp/ImgConverter;->setOutputSurface(Landroid/view/Surface;)V

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mPrepared:Z

    return-void

    :cond_18
    new-instance v2, Ljava/io/IOException;

    const-string v3, "can\'t set VideoDecoder"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :goto_f
    nop

    invoke-virtual {v4}, Landroid/media/MediaMetadataRetriever;->release()V

    const/4 v2, 0x0

    throw v0
.end method

.method protected prepareVideoCodec()V
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    sget-boolean v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUseUri:Z

    if-eqz v0, :cond_1

    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v2, "mInputUri or mContext  is NULL"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFilePath:Ljava/lang/String;

    if-eqz v0, :cond_1c

    :goto_0
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    move-object v2, v0

    const-string v0, ""

    move-object v3, v0

    const/4 v4, 0x0

    :try_start_0
    sget-boolean v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUseUri:Z

    if-eqz v0, :cond_2

    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mContext:Landroid/content/Context;

    iget-object v5, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputUri:Landroid/net/Uri;

    invoke-virtual {v2, v0, v5}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_1

    :cond_2
    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFilePath:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    :goto_1
    const/16 v0, 0x18

    invoke-virtual {v2, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    const/16 v0, 0xc

    invoke-virtual {v2, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    const/16 v0, 0x3f7

    invoke-virtual {v2, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v6, v0

    if-eqz v5, :cond_7

    move v7, v4

    :try_start_1
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v7, v0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v8, v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    :goto_2
    if-eqz v7, :cond_6

    const/16 v0, 0x5a

    if-eq v7, v0, :cond_5

    const/16 v0, 0xb4

    if-eq v7, v0, :cond_4

    const/16 v0, 0x10e

    if-eq v7, v0, :cond_3

    goto :goto_3

    :cond_3
    iput v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputOrientationDegrees:I

    goto :goto_3

    :cond_4
    iput v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputOrientationDegrees:I

    goto :goto_3

    :cond_5
    iput v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputOrientationDegrees:I

    goto :goto_3

    :cond_6
    iput v4, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputOrientationDegrees:I

    nop

    :goto_3
    goto :goto_4

    :cond_7
    iput v4, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputOrientationDegrees:I

    :goto_4
    if-eqz v6, :cond_8

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mAuthor:I
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_8
    goto :goto_5

    :catchall_0
    move-exception v0

    goto/16 :goto_f

    :catch_1
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    nop

    :goto_5
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V

    const/4 v0, 0x0

    nop

    move-object v2, v0

    sget-boolean v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUseUri:Z

    if-eqz v0, :cond_9

    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mContext:Landroid/content/Context;

    iget-object v5, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputUri:Landroid/net/Uri;

    invoke-static {v0, v5}, Lcom/samsung/android/transcode/util/CodecsHelper;->createExtractor(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaExtractor;

    move-result-object v0

    iput-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    goto :goto_6

    :cond_9
    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFilePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/transcode/util/CodecsHelper;->createExtractor(Ljava/lang/String;)Landroid/media/MediaExtractor;

    move-result-object v0

    iput-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    :goto_6
    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-static {v0}, Lcom/samsung/android/transcode/util/CodecsHelper;->getAndSelectVideoTrackIndex(Landroid/media/MediaExtractor;)I

    move-result v5

    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0, v5}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v6

    const-string v0, "TranscodeLib"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "input video format: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v7, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoEndUs:J

    const-wide/16 v9, 0x0

    cmp-long v0, v7, v9

    if-nez v0, :cond_b

    const-string v0, "durationUs"

    invoke-virtual {v6, v0}, Landroid/media/MediaFormat;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    iput-wide v7, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoEndUs:J

    iput-wide v7, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOriginTrimEndUs:J

    iget-boolean v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mSEFVideo:Z

    if-eqz v0, :cond_a

    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFilePath:Ljava/lang/String;

    iget-object v7, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mContext:Landroid/content/Context;

    iget-object v8, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputUri:Landroid/net/Uri;

    invoke-virtual {v1, v0, v7, v8}, Lcom/samsung/android/transcode/core/EncodeVideo;->getSEFVideoDuration(Ljava/lang/String;Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v7

    iput-wide v7, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOriginTrimEndUs:J

    :cond_a
    const-string v0, "TranscodeLib"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "mTrimVideoEndUs was 0 but updated  mTrimVideoEndUs : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v11, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoEndUs:J

    invoke-virtual {v7, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, ", mOriginTrimEndUs : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v11, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOriginTrimEndUs:J

    invoke-virtual {v7, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    iget-wide v7, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputMaxSizeKB:J

    cmp-long v0, v7, v9

    const/16 v7, 0x3e8

    if-ltz v0, :cond_e

    iget-boolean v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->m2ndTimeEncoding:Z

    if-nez v0, :cond_c

    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoMimeType:Ljava/lang/String;

    const-string/jumbo v8, "video/avc"

    if-ne v0, v8, :cond_c

    const v0, 0x3f666666    # 0.9f

    iput v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mSizeFraction:F

    :cond_c
    iget-boolean v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mMMSMode:Z

    if-eqz v0, :cond_d

    const/16 v0, 0x7d00

    iput v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputAudioBitRate:I

    :cond_d
    iget v8, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mSizeFraction:F

    iget-wide v9, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputMaxSizeKB:J

    iget-wide v11, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOriginTrimEndUs:J

    iget-wide v13, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOriginTrimStartUs:J

    sub-long/2addr v11, v13

    const-wide/16 v13, 0x3e8

    div-long/2addr v11, v13

    iget v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputAudioBitRate:I

    div-int/lit16 v13, v0, 0x3e8

    iget v14, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputWidth:I

    iget v15, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputHeight:I

    invoke-static/range {v8 .. v15}, Lcom/samsung/android/transcode/util/CodecsHelper;->getVideoEncodingBitRate(FJJIII)I

    move-result v0

    mul-int/2addr v7, v0

    iput v7, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoBitRate:I

    goto :goto_7

    :cond_e
    iget v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputWidth:I

    iget v8, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputHeight:I

    invoke-static {v0, v8}, Lcom/samsung/android/transcode/util/CodecsHelper;->suggestBitRate(II)I

    move-result v0

    mul-int/2addr v7, v0

    iput v7, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoBitRate:I

    :goto_7
    iput v4, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mSourceFrameRate:I

    :try_start_4
    const-string v0, "frame-rate"

    invoke-virtual {v6, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mSourceFrameRate:I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_8

    :catch_2
    move-exception v0

    :goto_8
    iget v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mSourceFrameRate:I

    if-eqz v0, :cond_f

    iget v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mSourceFrameRate:I

    const/16 v7, 0xfa

    if-le v0, v7, :cond_10

    :cond_f
    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFilePath:Ljava/lang/String;

    iget-object v7, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mContext:Landroid/content/Context;

    iget-object v8, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputUri:Landroid/net/Uri;

    invoke-virtual {v1, v0, v7, v8}, Lcom/samsung/android/transcode/core/EncodeVideo;->getVideoFramerate(Ljava/lang/String;Landroid/content/Context;Landroid/net/Uri;)I

    move-result v0

    iput v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mSourceFrameRate:I

    :cond_10
    iget-boolean v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mMMSMode:Z

    if-eqz v0, :cond_11

    const/16 v0, 0xa

    iput v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoFrameRate:I

    :cond_11
    iget-boolean v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mKeepSourceFrameRate:Z

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-nez v0, :cond_16

    iget v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mSourceFrameRate:I

    iget v9, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoFrameRate:I

    mul-int/2addr v9, v7

    if-lt v0, v9, :cond_16

    iget v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingMode:I

    if-eq v0, v8, :cond_13

    iget v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingMode:I

    if-ne v0, v7, :cond_12

    goto :goto_9

    :cond_12
    iget v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mSourceFrameRate:I

    int-to-float v0, v0

    iget v9, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoFrameRate:I

    int-to-float v9, v9

    div-float/2addr v0, v9

    float-to-double v9, v0

    invoke-static {v9, v10}, Ljava/lang/Math;->floor(D)D

    move-result-wide v9

    double-to-int v0, v9

    iput v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mFramesSkipInterval:I

    iget v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mFramesSkipInterval:I

    if-le v0, v8, :cond_15

    iget v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mSourceFrameRate:I

    iget v9, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mFramesSkipInterval:I

    div-int/2addr v0, v9

    iput v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoFrameRate:I

    goto :goto_a

    :cond_13
    :goto_9
    iget v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingMode:I

    if-ne v0, v8, :cond_14

    iget v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mSourceFrameRate:I

    const/16 v9, 0x82

    if-ge v0, v9, :cond_14

    iput v4, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mFramesSkipInterval:I

    const/16 v0, 0xf

    iput v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoFrameRate:I

    goto :goto_a

    :cond_14
    const/high16 v0, 0x41f00000    # 30.0f

    iget v9, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoFrameRate:I

    int-to-float v9, v9

    div-float/2addr v0, v9

    float-to-double v9, v0

    invoke-static {v9, v10}, Ljava/lang/Math;->floor(D)D

    move-result-wide v9

    double-to-int v0, v9

    iput v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mFramesSkipInterval:I

    iget v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mFramesSkipInterval:I

    if-le v0, v8, :cond_15

    const/16 v0, 0x1e

    iget v9, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mFramesSkipInterval:I

    div-int/2addr v0, v9

    iput v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoFrameRate:I

    :cond_15
    :goto_a
    iget v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mFramesSkipInterval:I

    if-le v0, v8, :cond_17

    iput-boolean v8, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mSkipFrames:Z

    goto :goto_b

    :cond_16
    iget v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mSourceFrameRate:I

    if-lez v0, :cond_17

    iget v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mSourceFrameRate:I

    iput v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoFrameRate:I

    :cond_17
    :goto_b
    const-string v0, "TranscodeLib"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "mSourceFrameRate :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mSourceFrameRate:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", mOutputVideoFrameRate :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoFrameRate:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ",mFramesSkipInterval: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mFramesSkipInterval:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", mKeepSourceFrameRate : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v10, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mKeepSourceFrameRate:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoMimeType:Ljava/lang/String;

    iget v9, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputWidth:I

    iget v10, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputHeight:I

    invoke-static {v0, v9, v10}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v9

    const-string v0, "color-format"

    const v10, 0x7f000789

    invoke-virtual {v9, v0, v10}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v0, "bitrate"

    iget v10, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoBitRate:I

    invoke-virtual {v9, v0, v10}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v0, "frame-rate"

    iget v10, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoFrameRate:I

    invoke-virtual {v9, v0, v10}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v0, "i-frame-interval"

    iget v10, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoIFrameInterval:I

    invoke-virtual {v9, v0, v10}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string/jumbo v0, "priority"

    invoke-virtual {v9, v0, v8}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v0, "TranscodeLib"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "output video format "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoMimeType:Ljava/lang/String;

    invoke-static {v0}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    iput-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10, v10, v8}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    new-instance v0, Lcom/samsung/android/transcode/surfaces/InputSurface;

    iget-object v10, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v10}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object v10

    invoke-direct {v0, v10}, Lcom/samsung/android/transcode/surfaces/InputSurface;-><init>(Landroid/view/Surface;)V

    iput-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputSurface:Lcom/samsung/android/transcode/surfaces/InputSurface;

    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputSurface:Lcom/samsung/android/transcode/surfaces/InputSurface;

    invoke-virtual {v0}, Lcom/samsung/android/transcode/surfaces/InputSurface;->makeCurrent()V

    const-string v0, "TranscodeLib"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Build.VERSION.SEM_PLATFORM_INT: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v11, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    const v10, 0x13948

    if-le v0, v10, :cond_19

    :try_start_5
    const-string/jumbo v0, "width"

    invoke-virtual {v6, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    const-string v10, "height"

    invoke-virtual {v6, v10}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v10

    move v15, v10

    int-to-float v10, v0

    int-to-float v11, v15

    div-float v19, v10, v11

    iget v10, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputWidth:I

    int-to-float v10, v10

    iget v11, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputHeight:I

    int-to-float v11, v11

    div-float v20, v10, v11

    cmpl-float v10, v19, v20

    if-lez v10, :cond_18

    iget v4, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputWidth:I

    iget v10, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputWidth:I

    mul-int/2addr v10, v15

    div-int/2addr v10, v0

    const/4 v11, 0x0

    iget v12, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputHeight:I

    sub-int/2addr v12, v10

    div-int/2addr v12, v7

    move v7, v12

    move v13, v7

    move/from16 v21, v10

    move v7, v11

    goto :goto_c

    :cond_18
    iget v10, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputHeight:I

    iget v11, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputHeight:I

    mul-int/2addr v11, v0

    div-int/2addr v11, v15

    iget v12, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputWidth:I

    sub-int/2addr v12, v11

    div-int/2addr v12, v7

    move v7, v12

    move v13, v4

    move/from16 v21, v10

    move v4, v11

    :goto_c
    new-instance v14, Lcom/samsung/android/transcode/surfaces/OutputSurface;

    iget v11, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputOrientationDegrees:I

    iget-boolean v12, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mMMSMode:Z

    move-object v10, v14

    move/from16 v18, v12

    move v12, v7

    move-object v8, v14

    move v14, v4

    move/from16 v22, v15

    move/from16 v15, v21

    move/from16 v16, v0

    move/from16 v17, v22

    invoke-direct/range {v10 .. v18}, Lcom/samsung/android/transcode/surfaces/OutputSurface;-><init>(IIIIIIIZ)V

    iput-object v8, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputSurface:Lcom/samsung/android/transcode/surfaces/OutputSurface;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_d

    :catch_3
    move-exception v0

    const-string v4, "TranscodeLib"

    const-string v7, "Can\'t get input video resolution"

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Lcom/samsung/android/transcode/surfaces/OutputSurface;

    iget v7, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputOrientationDegrees:I

    invoke-direct {v4, v7}, Lcom/samsung/android/transcode/surfaces/OutputSurface;-><init>(I)V

    iput-object v4, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputSurface:Lcom/samsung/android/transcode/surfaces/OutputSurface;

    :goto_d
    goto :goto_e

    :cond_19
    new-instance v0, Lcom/samsung/android/transcode/surfaces/OutputSurface;

    iget v4, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputOrientationDegrees:I

    invoke-direct {v0, v4}, Lcom/samsung/android/transcode/surfaces/OutputSurface;-><init>(I)V

    iput-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputSurface:Lcom/samsung/android/transcode/surfaces/OutputSurface;

    :goto_e
    iget-boolean v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mLogoPresent:Z

    if-eqz v0, :cond_1a

    new-instance v0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;

    invoke-direct {v0}, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;-><init>()V

    iput-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mLogoRenderer:Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;

    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mLogoRenderer:Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;

    invoke-virtual {v0}, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;->prepare()I

    :cond_1a
    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputSurface:Lcom/samsung/android/transcode/surfaces/OutputSurface;

    invoke-virtual {v0}, Lcom/samsung/android/transcode/surfaces/OutputSurface;->getSurface()Landroid/view/Surface;

    move-result-object v0

    const/4 v4, 0x1

    invoke-static {v6, v0, v4}, Lcom/samsung/android/transcode/util/CodecsHelper;->createVideoDecoder(Landroid/media/MediaFormat;Landroid/view/Surface;Z)Landroid/media/MediaCodec;

    move-result-object v0

    iput-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputVideoDecoder:Landroid/media/MediaCodec;

    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputVideoDecoder:Landroid/media/MediaCodec;

    if-eqz v0, :cond_1b

    return-void

    :cond_1b
    new-instance v0, Ljava/io/IOException;

    const-string v4, "can\'t set VideoDecoder"

    invoke-direct {v0, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_f
    nop

    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V

    const/4 v2, 0x0

    throw v0

    :cond_1c
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v2, "mInputFilePath is NULL"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected prepareVideoCodecNeo()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-boolean v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUseUri:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "mInputUri or mContext  is NULL"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFilePath:Ljava/lang/String;

    if-eqz v0, :cond_13

    :goto_0
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    const/4 v1, 0x0

    :try_start_0
    sget-boolean v2, Lcom/samsung/android/transcode/core/EncodeVideo;->mUseUri:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputUri:Landroid/net/Uri;

    invoke-virtual {v0, v2, v3}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFilePath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    :goto_1
    const/16 v2, 0x18

    invoke-virtual {v0, v2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x14

    invoke-virtual {v0, v3}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x3f7

    invoke-virtual {v0, v4}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x3fe

    invoke-virtual {v0, v5}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v3, :cond_3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoBitRate:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    if-eqz v2, :cond_8

    move v6, v1

    :try_start_1
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v6, v7

    goto :goto_2

    :catch_0
    move-exception v7

    :try_start_2
    invoke-virtual {v7}, Ljava/lang/NumberFormatException;->printStackTrace()V

    :goto_2
    if-eqz v6, :cond_7

    const/16 v7, 0x5a

    if-eq v6, v7, :cond_6

    const/16 v7, 0xb4

    if-eq v6, v7, :cond_5

    const/16 v7, 0x10e

    if-eq v6, v7, :cond_4

    goto :goto_3

    :cond_4
    iput v7, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputOrientationDegrees:I

    goto :goto_3

    :cond_5
    iput v7, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputOrientationDegrees:I

    goto :goto_3

    :cond_6
    iput v7, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputOrientationDegrees:I

    goto :goto_3

    :cond_7
    iput v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputOrientationDegrees:I

    nop

    :goto_3
    goto :goto_4

    :cond_8
    iput v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputOrientationDegrees:I

    :goto_4
    if-eqz v4, :cond_9

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAuthor:I

    :cond_9
    iget-boolean v6, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mSEFVideo:Z

    if-nez v6, :cond_a

    if-eqz v5, :cond_a

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingMode:I
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_a
    goto :goto_5

    :catchall_0
    move-exception v1

    goto/16 :goto_b

    :catch_1
    move-exception v2

    :try_start_3
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    nop

    :goto_5
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V

    const/4 v0, 0x0

    nop

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "input video auth : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAuthor:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", recordingMode :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    sget-boolean v2, Lcom/samsung/android/transcode/core/EncodeVideo;->mUseUri:Z

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputUri:Landroid/net/Uri;

    invoke-static {v2, v3}, Lcom/samsung/android/transcode/util/CodecsHelper;->createExtractor(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaExtractor;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    goto :goto_6

    :cond_b
    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFilePath:Ljava/lang/String;

    invoke-static {v2}, Lcom/samsung/android/transcode/util/CodecsHelper;->createExtractor(Ljava/lang/String;)Landroid/media/MediaExtractor;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    :goto_6
    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-static {v2}, Lcom/samsung/android/transcode/util/CodecsHelper;->getAndSelectVideoTrackIndex(Landroid/media/MediaExtractor;)I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v3, v2}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "input video format: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    iget-wide v4, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoEndUs:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_c

    const-string v4, "durationUs"

    invoke-virtual {v3, v4}, Landroid/media/MediaFormat;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoEndUs:J

    const-string/jumbo v4, "mTrimVideoEndUs was 0 but updated"

    invoke-static {v4}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    :cond_c
    iput v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mSourceFrameRate:I

    :try_start_4
    const-string v1, "frame-rate"

    invoke-virtual {v3, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mSourceFrameRate:I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_7

    :catch_2
    move-exception v1

    :goto_7
    iget v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mSourceFrameRate:I

    if-lez v1, :cond_d

    iget v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mSourceFrameRate:I

    iput v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoFrameRate:I

    :cond_d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mOutputVideoFrameRate: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoFrameRate:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    sget-boolean v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mUseUri:Z

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputUri:Landroid/net/Uri;

    invoke-static {v1, v4}, Lcom/samsung/android/transcode/core/EncodeVideo;->checkRewritable(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTransRewritable:I

    goto :goto_8

    :cond_e
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFilePath:Ljava/lang/String;

    invoke-static {v1}, Lcom/samsung/android/transcode/core/EncodeVideo;->checkRewritable(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTransRewritable:I

    :goto_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "askRewritable: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTransRewritable:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    iget v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTransRewritable:I

    const/4 v4, 0x1

    if-ne v1, v4, :cond_10

    sget-boolean v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mUseUri:Z

    if-eqz v1, :cond_f

    iget v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mSourceFrameRate:I

    iget-object v5, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputUri:Landroid/net/Uri;

    invoke-virtual {p0, v3, v1, v5}, Lcom/samsung/android/transcode/core/EncodeVideo;->checkTransRewritable(Landroid/media/MediaFormat;ILandroid/net/Uri;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTransRewritable:I

    goto :goto_9

    :cond_f
    iget v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mSourceFrameRate:I

    iget-object v5, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFilePath:Ljava/lang/String;

    invoke-virtual {p0, v3, v1, v5}, Lcom/samsung/android/transcode/core/EncodeVideo;->checkTransRewritable(Landroid/media/MediaFormat;ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTransRewritable:I

    :goto_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mTransRewritable: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTransRewritable:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    :cond_10
    iget v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTransRewritable:I

    if-ne v1, v4, :cond_12

    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoMimeType:Ljava/lang/String;

    iget v4, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputWidth:I

    iget v5, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputHeight:I

    invoke-static {v1, v4, v5}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v1

    const-string v4, "color-format"

    const v5, 0x7f000789

    invoke-virtual {v1, v4, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v4, "bitrate"

    iget v5, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoBitRate:I

    invoke-virtual {v1, v4, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v4, "frame-rate"

    iget v5, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoFrameRate:I

    invoke-virtual {v1, v4, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v4, "i-frame-interval"

    iget v5, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoIFrameInterval:I

    invoke-virtual {v1, v4, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    iget v4, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoProfile:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_11

    const-string/jumbo v4, "profile"

    iget v5, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoProfile:I

    invoke-virtual {v1, v4, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto :goto_a

    :cond_11
    const-string v4, "Skip video profile setup"

    invoke-static {v4}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    :goto_a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "output video format "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    return-void

    :cond_12
    new-instance v1, Ljava/io/IOException;

    const-string v4, "Unable to handle input file"

    invoke-direct {v1, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :goto_b
    nop

    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V

    const/4 v0, 0x0

    throw v1

    :cond_13
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "mInputFilePath is NULL"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected prepare_for_transrewrite()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mEncoding:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTransRewritable:I

    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/EncodeVideo;->prepareVideoCodecNeo()V

    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/EncodeVideo;->prepareAudioCodec()V

    return-void
.end method

.method protected release()V
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "TranscodeLib"

    const-string/jumbo v2, "releasing encoder objects"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoEncoder:Landroid/media/MediaCodec;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->stop()V

    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V

    iput-object v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoEncoder:Landroid/media/MediaCodec;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    const-string v3, "TranscodeLib"

    const-string v4, "Exception in releasing output video encoder."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputVideoDecoder:Landroid/media/MediaCodec;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_1

    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputVideoDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->stop()V

    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputVideoDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V

    iput-object v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputVideoDecoder:Landroid/media/MediaCodec;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catch_1
    move-exception v1

    :try_start_4
    const-string v3, "TranscodeLib"

    const-string v4, "Exception in releasing input video decoder."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v1, :cond_2

    :try_start_5
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v1}, Landroid/media/MediaExtractor;->release()V

    iput-object v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    :catch_2
    move-exception v1

    :try_start_6
    const-string v3, "TranscodeLib"

    const-string v4, "Exception in releasing video extractor."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_2
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputSurface:Lcom/samsung/android/transcode/surfaces/OutputSurface;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v1, :cond_3

    :try_start_7
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputSurface:Lcom/samsung/android/transcode/surfaces/OutputSurface;

    invoke-virtual {v1}, Lcom/samsung/android/transcode/surfaces/OutputSurface;->release()V

    iput-object v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputSurface:Lcom/samsung/android/transcode/surfaces/OutputSurface;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_3

    :catch_3
    move-exception v1

    :try_start_8
    const-string v3, "TranscodeLib"

    const-string v4, "Exception in releasing outputSurface."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_3
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mLogoRenderer:Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-eqz v1, :cond_4

    :try_start_9
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mLogoRenderer:Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;

    invoke-virtual {v1}, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;->release()V

    iput-object v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mLogoRenderer:Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_4

    :catch_4
    move-exception v1

    :try_start_a
    const-string v3, "TranscodeLib"

    const-string v4, "Exception in releasing logo renderer."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_4
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mLogo:Lcom/samsung/android/transcode/core/Encode$Logo;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mLogo:Lcom/samsung/android/transcode/core/Encode$Logo;

    iget-object v1, v1, Lcom/samsung/android/transcode/core/Encode$Logo;->mLogoBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mLogo:Lcom/samsung/android/transcode/core/Encode$Logo;

    iget-object v1, v1, Lcom/samsung/android/transcode/core/Encode$Logo;->mLogoBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mLogo:Lcom/samsung/android/transcode/core/Encode$Logo;

    iget-object v1, v1, Lcom/samsung/android/transcode/core/Encode$Logo;->mLogoBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mLogo:Lcom/samsung/android/transcode/core/Encode$Logo;

    iput-object v2, v1, Lcom/samsung/android/transcode/core/Encode$Logo;->mLogoBitmap:Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mLogo:Lcom/samsung/android/transcode/core/Encode$Logo;

    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mLogoPresent:Z

    :cond_5
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputSurface:Lcom/samsung/android/transcode/surfaces/InputSurface;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    if-eqz v1, :cond_6

    :try_start_b
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputSurface:Lcom/samsung/android/transcode/surfaces/InputSurface;

    invoke-virtual {v1}, Lcom/samsung/android/transcode/surfaces/InputSurface;->release()V

    iput-object v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputSurface:Lcom/samsung/android/transcode/surfaces/InputSurface;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto :goto_5

    :catch_5
    move-exception v1

    :try_start_c
    const-string v3, "TranscodeLib"

    const-string v4, "Exception in releasing input surface."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_6
    :goto_5
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputAudioEncoder:Landroid/media/MediaCodec;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    if-eqz v1, :cond_7

    :try_start_d
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->stop()V

    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V

    iput-object v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputAudioEncoder:Landroid/media/MediaCodec;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_6
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    goto :goto_6

    :catch_6
    move-exception v1

    :try_start_e
    const-string v3, "TranscodeLib"

    const-string v4, "Exception in releasing output audio encoder."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_7
    :goto_6
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputAudioDecoder:Landroid/media/MediaCodec;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    if-eqz v1, :cond_8

    :try_start_f
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputAudioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->stop()V

    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputAudioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V

    iput-object v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputAudioDecoder:Landroid/media/MediaCodec;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_7
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    goto :goto_7

    :catch_7
    move-exception v1

    :try_start_10
    const-string v3, "TranscodeLib"

    const-string v4, "Exception in releasing input audio decoder."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_8
    :goto_7
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    if-eqz v1, :cond_9

    :try_start_11
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v1}, Landroid/media/MediaExtractor;->release()V

    iput-object v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_8
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    goto :goto_8

    :catch_8
    move-exception v1

    :try_start_12
    const-string v3, "TranscodeLib"

    const-string v4, "Exception in releasing audio extractor."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_9
    :goto_8
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mImgConverter:Lcom/samsung/android/media/vidsol/simgp/ImgConverter;
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    if-eqz v1, :cond_a

    :try_start_13
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mImgConverter:Lcom/samsung/android/media/vidsol/simgp/ImgConverter;

    invoke-virtual {v1}, Lcom/samsung/android/media/vidsol/simgp/ImgConverter;->release()V

    iput-object v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mImgConverter:Lcom/samsung/android/media/vidsol/simgp/ImgConverter;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_9
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    goto :goto_9

    :catch_9
    move-exception v1

    :try_start_14
    const-string v3, "TranscodeLib"

    const-string v4, "Exception in releasing image converter."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_a
    :goto_9
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxer:Landroid/media/MediaMuxer;
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    if-eqz v1, :cond_c

    :try_start_15
    iget-boolean v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxerStarted:Z

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v1}, Landroid/media/MediaMuxer;->stop()V

    :cond_b
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v1}, Landroid/media/MediaMuxer;->release()V

    iput-object v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxer:Landroid/media/MediaMuxer;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_a
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    goto :goto_a

    :catch_a
    move-exception v1

    :try_start_16
    const-string v2, "TranscodeLib"

    const-string v3, "Exception in releasing muxer."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_c
    :goto_a
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->seidata:Ljava/util/HashMap;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->seidata:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    const-string v1, "TranscodeLib"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "seidata clear   isEmpty :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->seidata:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    iget-boolean v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mEncoding:Z

    if-eqz v1, :cond_e

    iget-boolean v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUpdateCreationTime:Z

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputFilePath:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/transcode/core/EncodeVideo;->updateCreationTime(Ljava/lang/String;Z)Z
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_1

    :cond_e
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mStopLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_17
    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mEncoding:Z

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mStopLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    nop

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mStopLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_18
    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mEncoding:Z

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mStopLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v2
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_2

    throw v1

    :catchall_2
    move-exception v0

    :try_start_19
    monitor-exit v2
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_2

    throw v0
.end method

.method public resumeResize()V
    .locals 3

    const-string v0, "TranscodeLib"

    const-string/jumbo v1, "resume method called "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mPaused:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mPaused:Z

    :try_start_0
    iget-wide v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mPausedVideoUs:J

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/transcode/core/EncodeVideo;->prepareHDRConverter(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "TranscodeLib"

    const-string v2, "Exception in prepareHDRConverter."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public setEncodingCodecs(II)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "videoCodecType is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TranscodeLib"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid video codec"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const-string/jumbo v0, "video/avc"

    iput-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoMimeType:Ljava/lang/String;

    goto :goto_0

    :pswitch_1
    const-string/jumbo v0, "video/3gpp"

    iput-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoMimeType:Ljava/lang/String;

    nop

    :goto_0
    packed-switch p2, :pswitch_data_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid audio codec"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_2
    const-string v0, "audio/mp4a-latm"

    iput-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputAudioMimeType:Ljava/lang/String;

    goto :goto_1

    :pswitch_3
    const-string v0, "audio/3gpp"

    iput-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputAudioMimeType:Ljava/lang/String;

    nop

    :goto_1
    return-void

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public setMaxOutputSize(I)V
    .locals 4

    if-lez p1, :cond_2

    const-string v0, "TranscodeLib"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "max output size is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputMaxSizeKB:J

    iget-wide v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputMaxSizeKB:J

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputWidth:I

    const/16 v1, 0xc8

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputHeight:I

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mMMSMode:Z

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mMMSMode:Z

    :goto_1
    const-string v0, "TranscodeLib"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mMMSMode is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mMMSMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "size cannot be 0 or lesser"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOutputBitdepth(I)Z
    .locals 5

    const-string v0, "TranscodeLib"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setOutputBitdepth  bitdepth : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mInputBitdepth : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputBitdepth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xa

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-ne p1, v1, :cond_2

    iget v3, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputBitdepth:I

    const/4 v4, 0x1

    if-ne v3, v1, :cond_0

    return v4

    :cond_0
    iget v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputBitdepth:I

    if-ne v1, v0, :cond_1

    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mHDRType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/transcode/core/EncodeVideo;->supportConverter()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-boolean v4, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mConvert:Z

    return v4

    :cond_1
    return v2

    :cond_2
    if-ne p1, v0, :cond_3

    return v2

    :cond_3
    return v2
.end method

.method public setTrimTime(JJ)V
    .locals 4

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_8

    cmp-long v0, p3, v0

    if-ltz v0, :cond_7

    cmp-long v0, p1, p3

    if-gtz v0, :cond_6

    cmp-long v0, p1, p3

    if-eqz v0, :cond_5

    const-wide/16 v0, 0x3e8

    mul-long v2, p1, v0

    iput-wide v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOriginTrimStartUs:J

    mul-long v2, p3, v0

    iput-wide v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOriginTrimEndUs:J

    iget-boolean v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mSEFVideo:Z

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingMode:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    iget v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    iget v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingMode:I

    const/16 v3, 0x8

    if-eq v2, v3, :cond_1

    iget v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingMode:I

    const/4 v3, 0x7

    if-eq v2, v3, :cond_1

    iget v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingMode:I

    const/16 v3, 0x9

    if-ne v2, v3, :cond_4

    :cond_1
    mul-long v2, p1, v0

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/transcode/core/EncodeVideo;->getSuperslowSeektime(J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimAudioStartUs:J

    iput-wide v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    mul-long/2addr v0, p3

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/transcode/core/EncodeVideo;->getSuperslowSeektime(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimAudioEndUs:J

    iput-wide v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoEndUs:J

    goto :goto_1

    :cond_2
    :goto_0
    mul-long v2, p1, v0

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/transcode/core/EncodeVideo;->getSlowfastSeektime(J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimAudioStartUs:J

    iput-wide v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    mul-long/2addr v0, p3

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/transcode/core/EncodeVideo;->getSlowfastSeektime(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimAudioEndUs:J

    iput-wide v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoEndUs:J

    goto :goto_1

    :cond_3
    mul-long v2, p1, v0

    iput-wide v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimAudioStartUs:J

    iput-wide v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    mul-long/2addr v0, p3

    iput-wide v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimAudioEndUs:J

    iput-wide v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoEndUs:J

    :cond_4
    :goto_1
    const-string v0, "TranscodeLib"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trim startUS: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", endUS: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoEndUs:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", OriginstartUS: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOriginTrimStartUs:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", OriginendUS :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOriginTrimEndUs:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "endUs cannot be equal to startUs"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "start time cannot be more than end time"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "end time cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "start time cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected startEncoding()V
    .locals 76
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v8, p0

    iget-boolean v0, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    if-eqz v0, :cond_0

    const-string v0, "TranscodeLib"

    const-string v1, "Not starting encoding because it is stopped by user."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object v1, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputVideoDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v9

    iget-object v1, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputVideoDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v1

    iget-boolean v2, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mCopyAudio:Z

    if-eqz v2, :cond_1

    iget-object v2, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    iget-boolean v4, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mCopyAudio:Z

    if-eqz v4, :cond_2

    iget-object v4, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v4}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v4

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    move-object v10, v4

    iget-boolean v4, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mCopyAudio:Z

    if-eqz v4, :cond_3

    iget-object v4, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputAudioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v4}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v4

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    :goto_2
    iget-boolean v5, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mCopyAudio:Z

    if-eqz v5, :cond_4

    iget-object v5, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputAudioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v5}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v5

    goto :goto_3

    :cond_4
    const/4 v5, 0x0

    :goto_3
    move-object v11, v5

    new-instance v5, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v5}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    move-object v12, v5

    new-instance v5, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v5}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    move-object v13, v5

    new-instance v5, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v5}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    move-object v14, v5

    new-instance v5, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v5}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    move-object v15, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-boolean v7, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mCopyAudio:Z

    const/4 v3, 0x1

    xor-int/2addr v7, v3

    iget-boolean v3, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mCopyAudio:Z

    const/16 v17, 0x1

    xor-int/lit8 v3, v3, 0x1

    move-object/from16 v18, v0

    iget-boolean v0, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mCopyAudio:Z

    xor-int/lit8 v0, v0, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, -0x1

    const/16 v23, 0x0

    const/16 v24, 0x0

    move/from16 v25, v0

    iget v0, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoFrameRate:I

    const/16 v17, 0x1

    shl-int/lit8 v26, v0, 0x1

    const/4 v0, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move/from16 v29, v0

    iget-boolean v0, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mLogoPresent:Z

    if-eqz v0, :cond_8

    iget-object v0, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mLogoRenderer:Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;

    move-object/from16 v30, v1

    iget-object v1, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mLogo:Lcom/samsung/android/transcode/core/Encode$Logo;

    iget-object v1, v1, Lcom/samsung/android/transcode/core/Encode$Logo;->mLogoBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v31, v2

    iget-object v2, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mLogo:Lcom/samsung/android/transcode/core/Encode$Logo;

    iget v2, v2, Lcom/samsung/android/transcode/core/Encode$Logo;->mLogoDrawWidth:I

    move/from16 v32, v3

    iget-object v3, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mLogo:Lcom/samsung/android/transcode/core/Encode$Logo;

    iget v3, v3, Lcom/samsung/android/transcode/core/Encode$Logo;->mLogoDrawHeight:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;->loadTexture(Landroid/graphics/Bitmap;II)I

    iget-object v0, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mLogo:Lcom/samsung/android/transcode/core/Encode$Logo;

    iget-object v0, v0, Lcom/samsung/android/transcode/core/Encode$Logo;->mLogoBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iget-object v0, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mLogo:Lcom/samsung/android/transcode/core/Encode$Logo;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/samsung/android/transcode/core/Encode$Logo;->mLogoBitmap:Landroid/graphics/Bitmap;

    iget v0, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputWidth:I

    const/4 v1, 0x1

    shr-int/2addr v0, v1

    int-to-float v0, v0

    iget-object v2, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mLogo:Lcom/samsung/android/transcode/core/Encode$Logo;

    iget v2, v2, Lcom/samsung/android/transcode/core/Encode$Logo;->mTopX:I

    iget-object v3, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mLogo:Lcom/samsung/android/transcode/core/Encode$Logo;

    iget v3, v3, Lcom/samsung/android/transcode/core/Encode$Logo;->mLogoDrawWidth:I

    shr-int/2addr v3, v1

    add-int/2addr v2, v3

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v2, v3

    sub-float/2addr v0, v2

    neg-float v0, v0

    iget v2, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputWidth:I

    shr-int/2addr v2, v1

    int-to-float v2, v2

    div-float/2addr v0, v2

    iget v2, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputHeight:I

    shr-int/2addr v2, v1

    int-to-float v2, v2

    iget-object v3, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mLogo:Lcom/samsung/android/transcode/core/Encode$Logo;

    iget v3, v3, Lcom/samsung/android/transcode/core/Encode$Logo;->mTopY:I

    move-object/from16 v34, v4

    iget-object v4, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mLogo:Lcom/samsung/android/transcode/core/Encode$Logo;

    iget v4, v4, Lcom/samsung/android/transcode/core/Encode$Logo;->mLogoDrawHeight:I

    shr-int/2addr v4, v1

    add-int/2addr v3, v4

    int-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget v3, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputHeight:I

    shr-int/2addr v3, v1

    int-to-float v1, v3

    div-float/2addr v2, v1

    iget v1, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputOrientationDegrees:I

    const/16 v3, 0x5a

    const/high16 v4, -0x40800000    # -1.0f

    if-eq v1, v3, :cond_7

    const/16 v3, 0xb4

    if-eq v1, v3, :cond_6

    const/16 v3, 0x10e

    if-eq v1, v3, :cond_5

    goto :goto_4

    :cond_5
    mul-float/2addr v0, v4

    goto :goto_4

    :cond_6
    mul-float/2addr v0, v4

    mul-float/2addr v2, v4

    goto :goto_4

    :cond_7
    mul-float/2addr v2, v4

    nop

    :goto_4
    iget-object v1, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mLogoRenderer:Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;

    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;->setProjectionMatrixTranslate(FF)V

    iget-object v1, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mLogoRenderer:Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;

    iget-object v3, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mLogo:Lcom/samsung/android/transcode/core/Encode$Logo;

    iget v3, v3, Lcom/samsung/android/transcode/core/Encode$Logo;->mLogoDrawWidth:I

    int-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float/2addr v3, v4

    iget v4, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputWidth:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    iget-object v4, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mLogo:Lcom/samsung/android/transcode/core/Encode$Logo;

    iget v4, v4, Lcom/samsung/android/transcode/core/Encode$Logo;->mLogoDrawHeight:I

    int-to-float v4, v4

    move/from16 v36, v0

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float/2addr v4, v0

    iget v0, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputHeight:I

    int-to-float v0, v0

    div-float/2addr v4, v0

    invoke-virtual {v1, v3, v4}, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;->setProjectionMatrixScale(FF)V

    iget-object v0, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mLogoRenderer:Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;

    iget v1, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputOrientationDegrees:I

    int-to-float v1, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    move/from16 v38, v2

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v3, v4, v2}, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;->setProjectionMatrixRotate(FFFF)V

    goto :goto_5

    :cond_8
    move-object/from16 v30, v1

    move-object/from16 v31, v2

    move/from16 v32, v3

    move-object/from16 v34, v4

    :goto_5
    iget-wide v0, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    const-wide/16 v35, 0x0

    cmp-long v0, v0, v35

    const/4 v4, 0x0

    if-eqz v0, :cond_9

    iget-object v0, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    iget-wide v1, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    invoke-virtual {v0, v1, v2, v4}, Landroid/media/MediaExtractor;->seekTo(JI)V

    :cond_9
    iget-boolean v0, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mCopyAudio:Z

    const-wide/16 v37, -0x1

    if-eqz v0, :cond_b

    iget-wide v0, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimAudioStartUs:J

    cmp-long v0, v0, v35

    if-eqz v0, :cond_b

    iget-object v0, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    iget-wide v1, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimAudioStartUs:J

    invoke-virtual {v0, v1, v2, v4}, Landroid/media/MediaExtractor;->seekTo(JI)V

    :goto_6
    iget-object v0, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v0

    iget-wide v2, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimAudioStartUs:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_b

    iget-object v0, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v0

    cmp-long v0, v0, v37

    if-eqz v0, :cond_a

    iget-object v0, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->advance()Z

    goto :goto_6

    :cond_a
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid File!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    move-object/from16 v16, v6

    move/from16 v6, v28

    move-wide/from16 v0, v37

    move/from16 v28, v7

    move/from16 v7, v22

    move-object/from16 v22, v5

    :goto_7
    move-wide v2, v0

    if-eqz v20, :cond_d

    if-nez v25, :cond_c

    goto :goto_8

    :cond_c
    move-wide/from16 v57, v2

    move-object/from16 v53, v9

    move-object/from16 v54, v10

    move-object/from16 v65, v11

    move-object/from16 v61, v12

    move-object/from16 v62, v13

    move-object v1, v14

    move-object/from16 v2, v22

    goto/16 :goto_36

    :cond_d
    :goto_8
    iget-boolean v0, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    move/from16 v39, v6

    const-wide/16 v5, 0x2710

    const/4 v1, -0x1

    if-nez v0, :cond_1a

    if-nez v19, :cond_1a

    if-eqz v16, :cond_f

    iget-boolean v0, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxerStarted:Z

    if-eqz v0, :cond_e

    goto :goto_a

    :cond_e
    :goto_9
    move-wide/from16 v57, v2

    move-object/from16 v53, v9

    move-object/from16 v54, v10

    move/from16 v59, v39

    const/16 v40, 0x4

    move v9, v7

    goto/16 :goto_10

    :cond_f
    :goto_a
    iget-object v0, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputVideoDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0, v5, v6}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v0

    if-ne v0, v1, :cond_10

    const-string v1, "TranscodeLib"

    const-string/jumbo v5, "no video decoder input buffer"

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    :cond_10
    aget-object v6, v9, v0

    iget-object v1, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v1, v6, v4}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v33

    iget-object v1, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v1}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v4

    const/16 v29, 0x0

    iput-wide v4, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mModifiedVideotime:J

    const-string v1, "TranscodeLib"

    move-wide/from16 v51, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mModifiedVideotime = presentationTime = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v53, v9

    move-object/from16 v54, v10

    iget-wide v9, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mModifiedVideotime:J

    invoke-virtual {v2, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mSEFVideo:Z

    if-eqz v1, :cond_16

    const/4 v1, 0x4

    new-array v9, v1, [B

    const/4 v10, 0x4

    invoke-virtual {v6, v10}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    array-length v2, v9

    const/4 v3, 0x0

    invoke-virtual {v6, v9, v3, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    invoke-virtual {v6, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const-string v2, "TranscodeLib"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mRecordingMode:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingMode:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingMode:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_14

    iget v1, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingMode:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_11

    move/from16 v56, v10

    move/from16 v59, v39

    move-wide/from16 v57, v51

    const/4 v10, 0x0

    const/16 v40, 0x4

    move-wide/from16 v50, v4

    move-object/from16 v39, v6

    goto/16 :goto_c

    :cond_11
    iget v1, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingMode:I

    move-object/from16 v55, v6

    const/16 v6, 0x8

    if-eq v1, v6, :cond_13

    iget v1, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingMode:I

    const/4 v2, 0x7

    if-eq v1, v2, :cond_13

    iget v1, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingMode:I

    const/16 v2, 0x9

    if-ne v1, v2, :cond_12

    goto :goto_b

    :cond_12
    const-string v1, "TranscodeLib"

    const-string v2, "Need to check recording mode and SEF data"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v9, v7

    move/from16 v59, v39

    move-wide/from16 v57, v51

    move-object/from16 v39, v55

    const/16 v40, 0x4

    move-wide/from16 v50, v4

    goto/16 :goto_d

    :cond_13
    :goto_b
    iget v2, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->NumOfSVCLayers:I

    iget v1, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mSourceFrameRate:I

    move/from16 v17, v1

    move/from16 v56, v10

    const/4 v10, -0x1

    const/16 v40, 0x4

    move-object v1, v8

    move/from16 v41, v2

    move v10, v3

    move-wide/from16 v57, v51

    const/16 v42, 0x0

    move-wide v2, v4

    move-wide/from16 v50, v4

    move/from16 v5, v42

    move/from16 v4, v41

    move v6, v5

    move-object v5, v9

    move v10, v6

    move/from16 v59, v39

    move-object/from16 v39, v55

    move/from16 v6, v17

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/transcode/core/EncodeVideo;->procSuperSlowVideo(JI[BI)Z

    move-result v1

    const-string v2, "TranscodeLib"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isDrop:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ",mModifiedVideotime : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mModifiedVideotime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v9, v7

    goto/16 :goto_e

    :cond_14
    move/from16 v56, v10

    move/from16 v59, v39

    move-wide/from16 v57, v51

    const/4 v10, 0x0

    const/16 v40, 0x4

    move-wide/from16 v50, v4

    move-object/from16 v39, v6

    :goto_c
    aget-byte v1, v9, v10

    and-int/lit8 v1, v1, 0x1f

    const/16 v2, 0xe

    if-ne v1, v2, :cond_15

    const/4 v1, 0x1

    aget-byte v2, v9, v1

    and-int/lit16 v1, v2, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_15

    const/4 v1, 0x3

    aget-byte v1, v9, v1

    and-int/lit16 v1, v1, 0xe0

    ushr-int/lit8 v6, v1, 0x5

    iget v5, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->NumOfSVCLayers:I

    iget v4, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingMode:I

    iget v2, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mSourceFrameRate:I

    move-object v1, v8

    move/from16 v17, v2

    move-wide/from16 v2, v50

    move/from16 v41, v4

    move v4, v6

    move v10, v6

    move/from16 v6, v41

    move-object/from16 v60, v9

    move v9, v7

    move/from16 v7, v17

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/transcode/core/EncodeVideo;->ProcSVCLayerDrop(JIIII)Z

    move-result v1

    const-string v2, "TranscodeLib"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "layernum:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",isDrop:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", mModifiedVideotime : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mModifiedVideotime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    :cond_15
    move-object/from16 v60, v9

    move v9, v7

    const-string v1, "TranscodeLib"

    const-string v2, "S5 SLOW CASE : Can\'t read layer number"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x1

    iget v5, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->NumOfSVCLayers:I

    iget v6, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingMode:I

    iget v7, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mSourceFrameRate:I

    move-object v1, v8

    move-wide/from16 v2, v50

    move v4, v10

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/transcode/core/EncodeVideo;->ProcSVCLayerDrop(JIIII)Z

    goto :goto_d

    :cond_16
    move v9, v7

    move/from16 v59, v39

    move-wide/from16 v57, v51

    const/16 v40, 0x4

    move-wide/from16 v50, v4

    move-object/from16 v39, v6

    :goto_d
    move/from16 v1, v29

    :goto_e
    iget-wide v2, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoEndUs:J

    cmp-long v2, v50, v2

    if-gtz v2, :cond_18

    if-ltz v33, :cond_17

    iget-object v2, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputVideoDecoder:Landroid/media/MediaCodec;

    const/16 v45, 0x0

    iget-wide v3, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mModifiedVideotime:J

    iget-object v5, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v5}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v49

    move-object/from16 v43, v2

    move/from16 v44, v0

    move/from16 v46, v33

    move-wide/from16 v47, v3

    invoke-virtual/range {v43 .. v49}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    :cond_17
    iget-object v2, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v2}, Landroid/media/MediaExtractor;->advance()Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    goto :goto_f

    :cond_18
    const/4 v2, 0x1

    :goto_f
    if-eqz v2, :cond_19

    const-string v3, "TranscodeLib"

    const-string/jumbo v4, "video extractor: EOS"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputVideoDecoder:Landroid/media/MediaCodec;

    const/16 v45, 0x0

    const/16 v46, 0x0

    const-wide/16 v47, 0x0

    const/16 v49, 0x4

    move-object/from16 v43, v3

    move/from16 v44, v0

    invoke-virtual/range {v43 .. v49}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    :cond_19
    move/from16 v29, v1

    move/from16 v19, v2

    goto :goto_10

    :cond_1a
    move-wide/from16 v57, v2

    move-object/from16 v53, v9

    move-object/from16 v54, v10

    move/from16 v59, v39

    const/16 v40, 0x4

    move v9, v7

    :goto_10
    iget-boolean v0, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    const/4 v3, -0x2

    const/4 v4, -0x3

    if-nez v0, :cond_28

    if-nez v21, :cond_28

    if-eqz v16, :cond_1b

    iget-boolean v0, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxerStarted:Z

    if-eqz v0, :cond_28

    :cond_1b
    iget-object v0, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputVideoDecoder:Landroid/media/MediaCodec;

    const-wide/16 v5, 0x2710

    invoke-virtual {v0, v13, v5, v6}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v7

    const/4 v10, -0x1

    if-ne v7, v10, :cond_1c

    const-string v0, "TranscodeLib"

    const-string/jumbo v10, "no video decoder output buffer"

    invoke-static {v0, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_15

    :cond_1c
    if-ne v7, v4, :cond_1d

    const-string v0, "TranscodeLib"

    const-string/jumbo v10, "video decoder: output buffers changed"

    invoke-static {v0, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputVideoDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    nop

    move-object/from16 v30, v0

    goto/16 :goto_15

    :cond_1d
    if-ne v7, v3, :cond_1e

    const-string v0, "TranscodeLib"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "video decoder: codec info format changed"

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputVideoDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v3}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_15

    :cond_1e
    aget-object v3, v30, v7

    iget v0, v13, Landroid/media/MediaCodec$BufferInfo;->flags:I

    const/4 v10, 0x2

    and-int/2addr v0, v10

    if-eqz v0, :cond_1f

    const-string v0, "TranscodeLib"

    const-string/jumbo v10, "video decoder: codec config buffer"

    invoke-static {v0, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputVideoDecoder:Landroid/media/MediaCodec;

    const/4 v10, 0x0

    invoke-virtual {v0, v7, v10}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    goto/16 :goto_15

    :cond_1f
    const-string v0, "TranscodeLib"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "video decoder: returned buffer for time "

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v13, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v10, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, v13, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-eqz v0, :cond_20

    const/4 v0, 0x1

    goto :goto_11

    :cond_20
    const/4 v0, 0x0

    :goto_11
    move v4, v0

    iget-object v0, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputVideoDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0, v7, v4}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    if-eqz v4, :cond_27

    const-string v0, "TranscodeLib"

    const-string/jumbo v5, "output surface: await new image"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputSurface:Lcom/samsung/android/transcode/surfaces/OutputSurface;

    const/16 v5, 0x3e8

    invoke-virtual {v0, v5}, Lcom/samsung/android/transcode/surfaces/OutputSurface;->checkForNewImage(I)Z

    move-result v0

    if-nez v0, :cond_21

    const-string v0, "TranscodeLib"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "video decoder: checkForNewImage return false!!  mUserStop : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_10

    :cond_21
    const-string v0, "TranscodeLib"

    const-string/jumbo v5, "output surface: draw image"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x4000

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    iget-object v0, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputSurface:Lcom/samsung/android/transcode/surfaces/OutputSurface;

    invoke-virtual {v0}, Lcom/samsung/android/transcode/surfaces/OutputSurface;->drawImage()V

    iget-boolean v0, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mLogoPresent:Z

    if-eqz v0, :cond_22

    rem-int v0, v23, v26

    iget v5, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoFrameRate:I

    if-ge v0, v5, :cond_22

    iget-object v0, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mLogoRenderer:Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;

    invoke-virtual {v0}, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;->draw()V

    :cond_22
    iget-wide v5, v13, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-wide v1, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mOriginTrimStartUs:J

    cmp-long v0, v5, v1

    if-ltz v0, :cond_25

    if-nez v29, :cond_24

    iget-boolean v0, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mSkipFrames:Z

    if-eqz v0, :cond_23

    iget v0, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mFramesSkipInterval:I

    rem-int v0, v24, v0

    if-eqz v0, :cond_23

    goto :goto_12

    :cond_23
    const/16 v24, 0x0

    iget-object v0, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputSurface:Lcom/samsung/android/transcode/surfaces/InputSurface;

    iget-wide v1, v13, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const-wide/16 v5, 0x3e8

    mul-long/2addr v1, v5

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/transcode/surfaces/InputSurface;->setPresentationTime(J)V

    const-string v0, "TranscodeLib"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "input surface: swap buffers time:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v13, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputSurface:Lcom/samsung/android/transcode/surfaces/InputSurface;

    invoke-virtual {v0}, Lcom/samsung/android/transcode/surfaces/InputSurface;->swapBuffers()Z

    const-string v0, "TranscodeLib"

    const-string/jumbo v1, "video encoder: notified of new frame"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v23, v23, 0x1

    goto :goto_13

    :cond_24
    :goto_12
    const-string v0, "TranscodeLib"

    const-string v1, "input surface: skip this frame."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_13
    if-nez v29, :cond_25

    add-int/lit8 v24, v24, 0x1

    :cond_25
    goto :goto_14

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    if-eqz v2, :cond_26

    if-eqz v1, :cond_26

    const-string v2, "Surface frame wait timed out"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    goto :goto_14

    :cond_26
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :cond_27
    :goto_14
    iget v0, v13, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_28

    const-string v0, "TranscodeLib"

    const-string/jumbo v1, "video decoder: EOS"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iget-object v1, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->signalEndOfInputStream()V

    move/from16 v21, v0

    :cond_28
    :goto_15
    iget-boolean v0, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    if-nez v0, :cond_32

    if-nez v20, :cond_32

    if-eqz v16, :cond_29

    iget-boolean v0, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxerStarted:Z

    if-eqz v0, :cond_32

    :cond_29
    iget-object v0, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    const-wide/16 v1, 0x2710

    invoke-virtual {v0, v12, v1, v2}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2a

    const-string v1, "TranscodeLib"

    const-string/jumbo v2, "no video encoder output buffer"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_16

    :cond_2a
    const/4 v1, -0x3

    if-ne v0, v1, :cond_2b

    const-string v1, "TranscodeLib"

    const-string/jumbo v2, "video encoder: output buffers changed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v1

    nop

    move-object/from16 v18, v1

    goto/16 :goto_16

    :cond_2b
    const/4 v1, -0x2

    if-ne v0, v1, :cond_2d

    const-string v1, "TranscodeLib"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "video encoder: output format changed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v3}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoTrackIndex:I

    if-gez v1, :cond_2c

    iget-object v1, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v1

    goto :goto_17

    :cond_2c
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Video encoder output format changed after muxer has started"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2d
    if-gez v0, :cond_2e

    const-string v1, "TranscodeLib"

    const-string v2, "Unexpected result from video encoder dequeue output format."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16

    :cond_2e
    aget-object v1, v18, v0

    iget v2, v12, Landroid/media/MediaCodec$BufferInfo;->flags:I

    const/4 v3, 0x2

    and-int/2addr v2, v3

    if-eqz v2, :cond_2f

    const-string v2, "TranscodeLib"

    const-string/jumbo v3, "video encoder: codec config buffer"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    goto :goto_16

    :cond_2f
    iget v2, v12, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-eqz v2, :cond_30

    const-string v2, "TranscodeLib"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "video encoder: writing sample data timestamp "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v12, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxer:Landroid/media/MediaMuxer;

    iget v3, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoTrackIndex:I

    invoke-virtual {v2, v3, v1, v12}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    :cond_30
    iget v2, v12, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_31

    const-string v2, "TranscodeLib"

    const-string/jumbo v3, "video encoder: EOS"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v20, 0x1

    :cond_31
    iget-object v2, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    nop

    :cond_32
    :goto_16
    move-object/from16 v1, v16

    :goto_17
    iget-boolean v0, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mCopyAudio:Z

    if-eqz v0, :cond_6f

    iget-boolean v0, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    if-nez v0, :cond_3e

    if-nez v28, :cond_3e

    if-eqz v22, :cond_34

    iget-boolean v0, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxerStarted:Z

    if-eqz v0, :cond_33

    if-nez v27, :cond_33

    goto :goto_18

    :cond_33
    move-object/from16 v63, v1

    move-object/from16 v61, v12

    move-object/from16 v62, v13

    const/16 v5, 0x8

    goto/16 :goto_1c

    :cond_34
    :goto_18
    iget-object v0, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v2

    const/4 v0, -0x1

    iget-boolean v4, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mSEFVideo:Z

    if-eqz v4, :cond_36

    iget v4, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingMode:I

    const/16 v5, 0x8

    if-eq v4, v5, :cond_35

    iget v4, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingMode:I

    const/4 v6, 0x7

    if-eq v4, v6, :cond_35

    iget v4, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingMode:I

    const/16 v6, 0x9

    if-ne v4, v6, :cond_37

    :cond_35
    invoke-direct {v8, v2, v3}, Lcom/samsung/android/transcode/core/EncodeVideo;->checkSilentRegion(J)I

    move-result v0

    goto :goto_19

    :cond_36
    const/16 v5, 0x8

    :cond_37
    :goto_19
    const/4 v4, -0x1

    if-eq v0, v4, :cond_39

    const-string v4, "TranscodeLib"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Seekto region End time :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/transcode/core/Encode$Region;

    iget v7, v7, Lcom/samsung/android/transcode/core/Encode$Region;->regionEndTime:I

    move-object/from16 v61, v12

    move-object/from16 v62, v13

    int-to-long v12, v7

    const-wide/16 v16, 0x3e8

    mul-long v12, v12, v16

    invoke-virtual {v6, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    iget-object v6, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/transcode/core/Encode$Region;

    iget v6, v6, Lcom/samsung/android/transcode/core/Encode$Region;->regionEndTime:I

    int-to-long v6, v6

    const-wide/16 v12, 0x3e8

    mul-long/2addr v6, v12

    const/4 v10, 0x0

    invoke-virtual {v4, v6, v7, v10}, Landroid/media/MediaExtractor;->seekTo(JI)V

    :goto_1a
    iget-object v4, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v4}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v6

    iget-object v4, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/transcode/core/Encode$Region;

    iget v4, v4, Lcom/samsung/android/transcode/core/Encode$Region;->regionEndTime:I

    move/from16 v64, v0

    move-object/from16 v63, v1

    int-to-long v0, v4

    mul-long/2addr v0, v12

    cmp-long v0, v6, v0

    if-gez v0, :cond_3f

    iget-object v0, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v0

    cmp-long v0, v0, v37

    if-eqz v0, :cond_38

    iget-object v0, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->advance()Z

    move-object/from16 v1, v63

    move/from16 v0, v64

    goto :goto_1a

    :cond_38
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid File!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_39
    move/from16 v64, v0

    move-object/from16 v63, v1

    move-object/from16 v61, v12

    move-object/from16 v62, v13

    iget-object v0, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputAudioDecoder:Landroid/media/MediaCodec;

    const-wide/16 v6, 0x2710

    invoke-virtual {v0, v6, v7}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3a

    const-string v1, "TranscodeLib"

    const-string v4, "audio decoder input try again later"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1c

    :cond_3a
    aget-object v1, v11, v0

    iget-object v4, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    const/4 v6, 0x0

    invoke-virtual {v4, v1, v6}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v4

    iput-wide v2, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mModifiedAudiotime:J

    iget-boolean v6, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mSEFVideo:Z

    if-eqz v6, :cond_3b

    iget v6, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingMode:I

    invoke-direct {v8, v2, v3, v6}, Lcom/samsung/android/transcode/core/EncodeVideo;->getAudioTime(JI)V

    :cond_3b
    const-string v6, "TranscodeLib"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "audioDecoderInput  presentationTimeUs :"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, ", size:"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", mTrimAudioEndUs:"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v12, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimAudioEndUs:J

    invoke-virtual {v7, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, ", mModifiedAudiotime :"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v12, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mModifiedAudiotime:J

    invoke-virtual {v7, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v6, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimAudioEndUs:J

    cmp-long v6, v2, v6

    if-gtz v6, :cond_3d

    if-ltz v4, :cond_3c

    iget-object v6, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputAudioDecoder:Landroid/media/MediaCodec;

    const/16 v43, 0x0

    iget-wide v12, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mModifiedAudiotime:J

    iget-object v7, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v7}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v47

    move-object/from16 v41, v6

    move/from16 v42, v0

    move/from16 v44, v4

    move-wide/from16 v45, v12

    invoke-virtual/range {v41 .. v47}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    :cond_3c
    iget-object v6, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v6}, Landroid/media/MediaExtractor;->advance()Z

    move-result v6

    const/4 v7, 0x1

    xor-int/2addr v6, v7

    goto :goto_1b

    :cond_3d
    const/4 v6, 0x1

    :goto_1b
    move/from16 v28, v6

    if-eqz v28, :cond_3f

    const-string v6, "TranscodeLib"

    const-string v7, "audio decoder sending EOS"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputAudioDecoder:Landroid/media/MediaCodec;

    const/16 v43, 0x0

    const/16 v44, 0x0

    const-wide/16 v45, 0x0

    const/16 v47, 0x4

    move-object/from16 v41, v6

    move/from16 v42, v0

    invoke-virtual/range {v41 .. v47}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    goto :goto_1c

    :cond_3e
    move-object/from16 v63, v1

    move-object/from16 v61, v12

    move-object/from16 v62, v13

    const/16 v5, 0x8

    :cond_3f
    :goto_1c
    iget-boolean v0, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    if-nez v0, :cond_46

    if-nez v32, :cond_46

    const/4 v1, -0x1

    if-ne v9, v1, :cond_46

    if-nez v27, :cond_46

    if-eqz v22, :cond_40

    iget-boolean v0, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxerStarted:Z

    if-eqz v0, :cond_46

    :cond_40
    iget-object v0, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputAudioDecoder:Landroid/media/MediaCodec;

    const-wide/16 v1, 0x2710

    invoke-virtual {v0, v15, v1, v2}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_41

    const-string v1, "TranscodeLib"

    const-string v2, "audio decoder output buffer try again later while decoding"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d

    :cond_41
    const/4 v1, -0x3

    if-ne v0, v1, :cond_42

    const-string v1, "TranscodeLib"

    const-string v2, "audio decoder: output buffers changed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputAudioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v34

    goto :goto_1d

    :cond_42
    const/4 v1, -0x2

    if-ne v0, v1, :cond_43

    const-string v1, "TranscodeLib"

    const-string v2, "audio decoder: output format changed: "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d

    :cond_43
    if-gez v0, :cond_44

    const-string v1, "TranscodeLib"

    const-string v2, "Unexpected result from audio decoder dequeue output format."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d

    :cond_44
    iget v1, v15, Landroid/media/MediaCodec$BufferInfo;->flags:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-eqz v1, :cond_45

    const-string v1, "TranscodeLib"

    const-string v2, "audio decoder: codec config buffer"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputAudioDecoder:Landroid/media/MediaCodec;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    goto :goto_1d

    :cond_45
    move v7, v0

    nop

    move v9, v7

    :cond_46
    :goto_1d
    iget-boolean v0, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    if-nez v0, :cond_61

    if-nez v32, :cond_61

    const/4 v1, -0x1

    if-ne v9, v1, :cond_48

    if-eqz v27, :cond_47

    goto :goto_1e

    :cond_47
    move-object/from16 v65, v11

    move-object/from16 v73, v14

    move/from16 v68, v59

    goto/16 :goto_29

    :cond_48
    :goto_1e
    iget v0, v15, Landroid/media/MediaCodec$BufferInfo;->size:I

    iget-wide v1, v15, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    move/from16 v3, v59

    int-to-long v6, v3

    const-wide/16 v12, 0x5355

    mul-long/2addr v6, v12

    add-long/2addr v6, v1

    move-wide v12, v6

    iget-boolean v4, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mSEFVideo:Z

    if-eqz v4, :cond_4d

    iget v4, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingMode:I

    const/4 v10, 0x2

    if-eq v4, v10, :cond_4b

    iget v4, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingMode:I

    const/4 v10, 0x1

    if-ne v4, v10, :cond_49

    goto :goto_1f

    :cond_49
    iget v4, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingMode:I

    if-eq v4, v5, :cond_4a

    iget v4, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingMode:I

    const/4 v10, 0x7

    if-eq v4, v10, :cond_4a

    iget v4, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingMode:I

    const/16 v10, 0x9

    if-ne v4, v10, :cond_4c

    :cond_4a
    invoke-direct {v8, v6, v7}, Lcom/samsung/android/transcode/core/EncodeVideo;->getSuperslowSeektime(J)J

    move-result-wide v12

    goto :goto_20

    :cond_4b
    :goto_1f
    invoke-direct {v8, v6, v7}, Lcom/samsung/android/transcode/core/EncodeVideo;->getSlowfastSeektime(J)J

    move-result-wide v12

    :cond_4c
    :goto_20
    iget v4, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingMode:I

    invoke-direct {v8, v12, v13, v4}, Lcom/samsung/android/transcode/core/EncodeVideo;->getAudioDrop(JI)Z

    move-result v27

    :cond_4d
    move/from16 v4, v27

    const-string v10, "TranscodeLib"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v65, v11

    const-string/jumbo v11, "presentationTime :"

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, ", temp_presentationTime: "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, ", seektime :"

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, ", audioWaitFrame:"

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v10, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v4, :cond_56

    iget-object v5, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    const-wide/16 v10, 0x2710

    invoke-virtual {v5, v10, v11}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v5

    const/4 v10, -0x1

    if-ne v5, v10, :cond_4e

    const-string v10, "TranscodeLib"

    const-string v11, "audio encoder input buffer try again later"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    nop

    move/from16 v66, v4

    goto/16 :goto_24

    :cond_4e
    if-ltz v0, :cond_51

    aget-object v10, v54, v5

    iget v11, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mOriginalAudioChannelCount:I

    if-lez v11, :cond_4f

    iget v11, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mOriginalAudioChannelCount:I

    div-int/2addr v0, v11

    :cond_4f
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v11

    if-eqz v11, :cond_50

    move/from16 v66, v4

    const/4 v4, 0x0

    invoke-virtual {v11, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v11, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-virtual {v10, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v10, v11}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    iget-object v4, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    const/16 v43, 0x0

    move-object/from16 v67, v10

    iget v10, v15, Landroid/media/MediaCodec$BufferInfo;->flags:I

    move-object/from16 v41, v4

    move/from16 v42, v5

    move/from16 v44, v0

    move-wide/from16 v45, v6

    move/from16 v47, v10

    invoke-virtual/range {v41 .. v47}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    const/4 v4, 0x0

    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    :cond_50
    move/from16 v66, v4

    move-object/from16 v67, v10

    const-string v4, "TranscodeLib"

    const-string v10, "TempAudio is null!"

    invoke-static {v4, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21

    :cond_51
    move/from16 v66, v4

    :goto_21
    iget-wide v10, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mOriginTrimEndUs:J

    cmp-long v4, v6, v10

    if-lez v4, :cond_53

    const/4 v4, -0x1

    if-eq v9, v4, :cond_52

    iget-object v4, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputAudioDecoder:Landroid/media/MediaCodec;

    const/4 v10, 0x0

    invoke-virtual {v4, v9, v10}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    const/4 v4, -0x1

    move v9, v4

    :cond_52
    const-string v4, "TranscodeLib"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Forcely EOS  AudioLoopCount :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", seek time:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, ", temp_presentationTime :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget-object v10, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputAudioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v10}, Landroid/media/MediaCodec;->flush()V

    iget-object v10, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    const/4 v11, 0x1

    invoke-virtual {v10, v12, v13, v11}, Landroid/media/MediaExtractor;->seekTo(JI)V

    move/from16 v27, v4

    goto :goto_22

    :cond_53
    move/from16 v27, v66

    :goto_22
    iget v4, v15, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_55

    const-string v4, "TranscodeLib"

    const-string v10, "audio decoder: EOS"

    invoke-static {v4, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, -0x1

    if-eq v9, v4, :cond_54

    iget-object v4, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputAudioDecoder:Landroid/media/MediaCodec;

    const/4 v10, 0x0

    invoke-virtual {v4, v9, v10}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    const/4 v4, -0x1

    move v9, v4

    :cond_54
    const/16 v27, 0x0

    const/16 v32, 0x1

    const/4 v3, 0x0

    :cond_55
    move-object/from16 v73, v14

    goto/16 :goto_2a

    :cond_56
    move/from16 v66, v4

    iget-boolean v4, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mSEFVideo:Z

    if-eqz v4, :cond_59

    if-lez v3, :cond_59

    const/4 v4, -0x1

    if-eq v9, v4, :cond_57

    iget-object v4, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputAudioDecoder:Landroid/media/MediaCodec;

    const/4 v5, 0x0

    invoke-virtual {v4, v9, v5}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    const/4 v4, -0x1

    move v9, v4

    :cond_57
    iget-object v4, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputAudioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v4}, Landroid/media/MediaCodec;->flush()V

    const-string v4, "TranscodeLib"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Seekto next frame  AudioLoopCount :"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", seektime: "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v27, 0x0

    const/4 v3, 0x0

    iget-object v4, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    const/4 v5, 0x1

    invoke-virtual {v4, v12, v13, v5}, Landroid/media/MediaExtractor;->seekTo(JI)V

    :goto_23
    iget-object v4, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v4}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v4

    cmp-long v4, v4, v12

    if-gez v4, :cond_55

    iget-object v4, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v4}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v4

    cmp-long v4, v4, v37

    if-eqz v4, :cond_58

    iget-object v4, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v4}, Landroid/media/MediaExtractor;->advance()Z

    goto :goto_23

    :cond_58
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Invalid File!"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_59
    iget-object v4, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    const-wide/16 v10, 0x2710

    invoke-virtual {v4, v10, v11}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_5a

    const-string v5, "TranscodeLib"

    const-string v10, "audio encoder input buffer try again later"

    invoke-static {v5, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    nop

    :goto_24
    move-object/from16 v73, v14

    move/from16 v27, v66

    goto/16 :goto_2a

    :cond_5a
    if-ltz v0, :cond_5f

    cmp-long v5, v1, v35

    if-ltz v5, :cond_5f

    aget-object v5, v54, v4

    aget-object v10, v34, v9

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v10

    iget v11, v15, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v10, v11}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget v11, v15, Landroid/media/MediaCodec$BufferInfo;->offset:I

    add-int/2addr v11, v0

    invoke-virtual {v10, v11}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget v11, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mOriginalAudioChannelCount:I

    if-lez v11, :cond_5e

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v11

    invoke-static {v11}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v11

    move/from16 v68, v3

    iget v3, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mOriginalAudioChannelCount:I

    div-int v3, v0, v3

    move-wide/from16 v69, v6

    iget v6, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputAudioChannelCount:I

    mul-int/2addr v3, v6

    iget v6, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputAudioChannelCount:I

    const/4 v7, 0x2

    mul-int/2addr v6, v7

    move-wide/from16 v71, v12

    iget v12, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mOriginalAudioChannelCount:I

    mul-int/2addr v12, v7

    if-eqz v11, :cond_5d

    const/4 v7, 0x0

    invoke-virtual {v11, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v11, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    const/4 v7, 0x0

    :goto_25
    div-int v13, v0, v12

    if-ge v7, v13, :cond_5c

    const/4 v13, 0x0

    :goto_26
    move-object/from16 v73, v14

    iget v14, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputAudioChannelCount:I

    if-ge v13, v14, :cond_5b

    mul-int v14, v7, v6

    mul-int/lit8 v16, v13, 0x2

    add-int v14, v14, v16

    mul-int v16, v7, v12

    mul-int/lit8 v17, v13, 0x2

    move/from16 v74, v9

    add-int v9, v16, v17

    invoke-virtual {v10, v9}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v9

    invoke-virtual {v11, v14, v9}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    mul-int v9, v7, v6

    mul-int/lit8 v14, v13, 0x2

    add-int/2addr v9, v14

    const/4 v14, 0x1

    add-int/2addr v9, v14

    mul-int v16, v7, v12

    mul-int/lit8 v17, v13, 0x2

    add-int v16, v16, v17

    move/from16 v75, v6

    add-int/lit8 v6, v16, 0x1

    invoke-virtual {v10, v6}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v6

    invoke-virtual {v11, v9, v6}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v14, v73

    move/from16 v9, v74

    move/from16 v6, v75

    goto :goto_26

    :cond_5b
    move/from16 v75, v6

    move/from16 v74, v9

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v14, v73

    goto :goto_25

    :cond_5c
    move/from16 v75, v6

    move/from16 v74, v9

    move-object/from16 v73, v14

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v5, v11}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    iget-object v6, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    const/16 v43, 0x0

    iget v7, v15, Landroid/media/MediaCodec$BufferInfo;->flags:I

    move-object/from16 v41, v6

    move/from16 v42, v4

    move/from16 v44, v3

    move-wide/from16 v45, v1

    move/from16 v47, v7

    invoke-virtual/range {v41 .. v47}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    const/4 v6, 0x0

    goto :goto_27

    :cond_5d
    move/from16 v75, v6

    move/from16 v74, v9

    move-object/from16 v73, v14

    const-string v6, "TranscodeLib"

    const-string v7, "TempAudio is null!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_27
    goto :goto_28

    :cond_5e
    move/from16 v68, v3

    move-wide/from16 v69, v6

    move/from16 v74, v9

    move-wide/from16 v71, v12

    move-object/from16 v73, v14

    const-string v3, "TranscodeLib"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "encoderInputBuffer capacity :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", audioDecoderOutputBuffer size : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    invoke-virtual {v5, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v5, v10}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    iget-object v3, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    const/16 v43, 0x0

    iget v6, v15, Landroid/media/MediaCodec$BufferInfo;->flags:I

    move-object/from16 v41, v3

    move/from16 v42, v4

    move/from16 v44, v0

    move-wide/from16 v45, v1

    move/from16 v47, v6

    invoke-virtual/range {v41 .. v47}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    goto :goto_28

    :cond_5f
    move/from16 v68, v3

    move-wide/from16 v69, v6

    move/from16 v74, v9

    move-wide/from16 v71, v12

    move-object/from16 v73, v14

    :goto_28
    iget-object v3, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputAudioDecoder:Landroid/media/MediaCodec;

    move/from16 v9, v74

    const/4 v5, 0x0

    invoke-virtual {v3, v9, v5}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    const/4 v9, -0x1

    iget v3, v15, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_60

    const-string v3, "TranscodeLib"

    const-string v5, "audio decoder: EOS"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v32, 0x1

    :cond_60
    move/from16 v27, v66

    goto :goto_29

    :cond_61
    move-object/from16 v65, v11

    move-object/from16 v73, v14

    move/from16 v68, v59

    :goto_29
    move/from16 v3, v68

    :goto_2a
    iget-boolean v0, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    if-nez v0, :cond_6e

    if-nez v25, :cond_6e

    if-eqz v22, :cond_63

    iget-boolean v0, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxerStarted:Z

    if-eqz v0, :cond_62

    goto :goto_2b

    :cond_62
    move-wide/from16 v6, v57

    move-object/from16 v1, v73

    goto/16 :goto_30

    :cond_63
    :goto_2b
    iget-object v0, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    move-object/from16 v1, v73

    const-wide/16 v4, 0x2710

    invoke-virtual {v0, v1, v4, v5}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_64

    const-string v2, "TranscodeLib"

    const-string v4, "audio encoder output buffer try again later"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    nop

    :goto_2c
    move-wide/from16 v6, v57

    goto/16 :goto_30

    :cond_64
    const/4 v2, -0x3

    if-ne v0, v2, :cond_65

    const-string v2, "TranscodeLib"

    const-string v4, "audio encoder: output buffers changed"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v2

    nop

    move-object/from16 v31, v2

    move v6, v3

    :goto_2d
    move v7, v9

    move-object/from16 v2, v22

    goto/16 :goto_31

    :cond_65
    const/4 v2, -0x2

    if-ne v0, v2, :cond_67

    iget v2, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioTrackIndex:I

    if-gez v2, :cond_66

    iget-object v2, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v2

    const-string v4, "TranscodeLib"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "audio encoder: output format changed "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    nop

    move v6, v3

    move v7, v9

    goto/16 :goto_31

    :cond_66
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v4, "Audio encoder output format changed after muxer is started."

    invoke-direct {v2, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_67
    if-gez v0, :cond_68

    const-string v2, "TranscodeLib"

    const-string v4, "Unexpected result from audio encoder dequeue output format."

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2c

    :cond_68
    aget-object v2, v31, v0

    iget v4, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    const/4 v5, 0x2

    and-int/2addr v4, v5

    if-eqz v4, :cond_69

    const-string v4, "TranscodeLib"

    const-string v5, "audio encoder ignoring BUFFER_FLAG_CODEC_CONFIG"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    goto :goto_2c

    :cond_69
    iget v4, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-eqz v4, :cond_6c

    iget-wide v4, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    move-wide/from16 v6, v57

    cmp-long v4, v6, v4

    if-gtz v4, :cond_6a

    const-string v4, "TranscodeLib"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "audio encoder writing sample data to muxer  time: "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v5, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v4, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-object v6, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxer:Landroid/media/MediaMuxer;

    iget v7, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioTrackIndex:I

    invoke-virtual {v6, v7, v2, v1}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    goto :goto_2f

    :cond_6a
    const-string v4, "TranscodeLib"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "lastAudioSampleWrittenTime : "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, " > presentationTime :"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v5, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v32, :cond_6b

    goto :goto_2e

    :cond_6b
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Audio time stamps are not in increasing order."

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_6c
    move-wide/from16 v6, v57

    :goto_2e
    move-wide v4, v6

    :goto_2f
    iget v6, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_6d

    const-string v6, "TranscodeLib"

    const-string v7, "audio encoder: EOS"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v25, 0x1

    :cond_6d
    iget-object v6, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    const/4 v7, 0x0

    invoke-virtual {v6, v0, v7}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    nop

    move v6, v3

    move-wide/from16 v57, v4

    goto/16 :goto_2d

    :cond_6e
    move-wide/from16 v6, v57

    move-object/from16 v1, v73

    :goto_30
    move-wide/from16 v57, v6

    move v7, v9

    move-object/from16 v2, v22

    move v6, v3

    goto :goto_31

    :cond_6f
    move-object/from16 v63, v1

    move-object/from16 v65, v11

    move-object/from16 v61, v12

    move-object/from16 v62, v13

    move-object v1, v14

    move-wide/from16 v6, v57

    move/from16 v68, v59

    move v7, v9

    move-object/from16 v2, v22

    move/from16 v6, v68

    :goto_31
    iget-boolean v0, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    if-nez v0, :cond_75

    iget-boolean v0, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxerStarted:Z

    if-nez v0, :cond_75

    if-eqz v63, :cond_75

    iget-boolean v0, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mCopyAudio:Z

    if-eqz v0, :cond_71

    if-eqz v2, :cond_70

    goto :goto_32

    :cond_70
    move-object/from16 v5, v63

    const/4 v3, 0x0

    const/4 v4, 0x1

    goto :goto_35

    :cond_71
    :goto_32
    const/4 v0, 0x0

    sget-boolean v3, Lcom/samsung/android/transcode/core/EncodeVideo;->mUseUri:Z

    if-eqz v3, :cond_72

    iget-object v3, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    goto :goto_33

    :cond_72
    iget-object v3, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFilePath:Ljava/lang/String;

    :goto_33
    move-object v0, v3

    const/4 v3, 0x0

    invoke-virtual {v8, v0, v3}, Lcom/samsung/android/transcode/core/EncodeVideo;->updateCreationTime(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_73

    const-string/jumbo v4, "param-meta-author"

    move-object/from16 v5, v63

    const/16 v9, 0x8

    invoke-virtual {v5, v4, v9}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string/jumbo v4, "param-meta-transcoding"

    const/4 v9, 0x1

    invoke-virtual {v5, v4, v9}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto :goto_34

    :cond_73
    move-object/from16 v5, v63

    :goto_34
    iget-object v4, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v4, v5}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v4

    iput v4, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoTrackIndex:I

    iget-boolean v4, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mCopyAudio:Z

    if-eqz v4, :cond_74

    iget-object v4, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v4, v2}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v4

    iput v4, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioTrackIndex:I

    :cond_74
    iget-object v4, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxer:Landroid/media/MediaMuxer;

    iget v9, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputOrientationDegrees:I

    invoke-virtual {v4, v9}, Landroid/media/MediaMuxer;->setOrientationHint(I)V

    iget-object v4, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v4}, Landroid/media/MediaMuxer;->start()V

    const/4 v4, 0x1

    iput-boolean v4, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxerStarted:Z

    goto :goto_35

    :cond_75
    move-object/from16 v5, v63

    const/4 v3, 0x0

    const/4 v4, 0x1

    :goto_35
    iget-boolean v0, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    if-eqz v0, :cond_76

    const-string v0, "TranscodeLib"

    const-string v3, "Encoding abruptly stopped."

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    nop

    move-object/from16 v16, v5

    :goto_36
    return-void

    :cond_76
    move-object v14, v1

    move-object/from16 v22, v2

    move v4, v3

    move-object/from16 v16, v5

    move-object/from16 v9, v53

    move-object/from16 v10, v54

    move-wide/from16 v0, v57

    move-object/from16 v12, v61

    move-object/from16 v13, v62

    move-object/from16 v11, v65

    goto/16 :goto_7
.end method

.method public startHDREncoding()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mEncoding:Z

    if-eqz v0, :cond_0

    goto/16 :goto_9

    :cond_0
    sget-boolean v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUseUri:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputUri:Landroid/net/Uri;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "mInputUri or mContext  is NULL"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFilePath:Ljava/lang/String;

    if-eqz v0, :cond_a

    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->HDR_audioDone:Z

    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->HDR_videoDone:Z

    iget-wide v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/transcode/core/EncodeVideo;->prepareHDRConverter(J)V

    :goto_1
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->HDR_audioDone:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->HDR_videoDone:Z

    if-nez v0, :cond_9

    :cond_3
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mError:Z

    if-nez v0, :cond_9

    :cond_4
    const-string v0, "TranscodeLib"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HDR_audioDone : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->HDR_audioDone:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", HDR_videoDone :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->HDR_videoDone:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mUserStop :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mError :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mError:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mPrepared:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputVideoDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mImgConverter:Lcom/samsung/android/media/vidsol/simgp/ImgConverter;

    invoke-virtual {v0}, Lcom/samsung/android/media/vidsol/simgp/ImgConverter;->convert()I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mEncoding:Z

    const-string v0, "TranscodeLib"

    const-string/jumbo v1, "waiting eos......"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputVideoDecoder:Landroid/media/MediaCodec;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputVideoDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v1

    goto :goto_5

    :catch_0
    move-exception v1

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v0, "TranscodeLib"

    const-string v1, "decoder waiting done!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mError:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mPaused:Z

    if-nez v0, :cond_5

    const-string v0, "TranscodeLib"

    const-string/jumbo v1, "waiting encoder eos......"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    monitor-enter v0

    :try_start_2
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const-string v0, "TranscodeLib"

    const-string v1, "encoder waiting done!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :goto_4
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1

    :goto_5
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v1

    :cond_5
    :goto_6
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    if-eqz v0, :cond_6

    const-string v0, "TranscodeLib"

    const-string/jumbo v1, "user stop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :cond_6
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mPaused:Z

    if-eqz v0, :cond_8

    const-string v0, "TranscodeLib"

    const-string/jumbo v1, "paused"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mPrepared:Z

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/EncodeVideo;->pause()V

    goto/16 :goto_1

    :cond_7
    const-wide/16 v0, 0x3e8

    :try_start_6
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    :goto_7
    goto/16 :goto_1

    :catch_2
    move-exception v0

    const-string v1, "VideoTrimmer"

    const-string/jumbo v2, "sleep interrupted"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    :cond_8
    const-string v0, "TranscodeLib"

    const-string v1, "finish convert"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    nop

    :cond_9
    :goto_8
    return-void

    :cond_a
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "mInputFilePath is NULL"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    :goto_9
    const-string v0, "TranscodeLib"

    const-string v1, "Not starting encoding because it is stopped by user."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public startTransRewriting()V
    .locals 68
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    iget-boolean v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    if-eqz v0, :cond_0

    const-string v0, "Not starting encoding because it is stopped by user."

    invoke-static {v0}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x0

    iget-boolean v3, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mCopyAudio:Z

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    iget-boolean v5, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mCopyAudio:Z

    xor-int/2addr v5, v4

    iget-boolean v6, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mCopyAudio:Z

    xor-int/2addr v6, v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    iget v13, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoFrameRate:I

    shl-int/2addr v13, v4

    const-wide/16 v14, 0x0

    move/from16 v16, v5

    iget-wide v4, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoEndUs:J

    move-object/from16 v17, v2

    move/from16 v18, v3

    iget-wide v2, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    const-wide/16 v19, 0x0

    cmp-long v2, v2, v19

    if-eqz v2, :cond_2

    iget v2, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mTransRewritable:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    iget-object v2, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    move/from16 v21, v6

    move/from16 v22, v7

    iget-wide v6, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    const/4 v3, 0x0

    invoke-virtual {v2, v6, v7, v3}, Landroid/media/MediaExtractor;->seekTo(JI)V

    iget-object v2, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v2}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v6

    iput-wide v6, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    iget-object v2, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    iget-wide v6, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    invoke-virtual {v2, v6, v7, v3}, Landroid/media/MediaExtractor;->seekTo(JI)V

    iget-object v2, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v2}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimAudioStartUs:J

    const/4 v8, 0x1

    const/4 v6, 0x1

    const-string v2, "Abandon TransRewrite. Switch to Rewrite mode."

    invoke-static {v2}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    move/from16 v21, v6

    move/from16 v22, v7

    goto :goto_0

    :cond_2
    move/from16 v21, v6

    move/from16 v22, v7

    const-wide/16 v14, -0x1

    const/4 v8, 0x1

    const/4 v6, 0x1

    const-string v2, "Start point has not been updated!"

    invoke-static {v2}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    :goto_0
    if-eqz v8, :cond_4

    if-nez v6, :cond_3

    goto :goto_1

    :cond_3
    move/from16 v23, v6

    goto :goto_3

    :cond_4
    :goto_1
    iget-boolean v2, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mCopyAudio:Z

    if-eqz v2, :cond_6

    iget-wide v2, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimAudioStartUs:J

    cmp-long v2, v2, v19

    if-eqz v2, :cond_6

    iget-object v2, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    move/from16 v23, v6

    iget-wide v6, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimAudioStartUs:J

    const/4 v3, 0x0

    invoke-virtual {v2, v6, v7, v3}, Landroid/media/MediaExtractor;->seekTo(JI)V

    :goto_2
    iget-object v2, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v2}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v2

    iget-wide v6, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimAudioStartUs:J

    cmp-long v2, v2, v6

    if-gez v2, :cond_5

    const-string v2, "Advance audio..."

    invoke-static {v2}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    iget-object v2, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v2}, Landroid/media/MediaExtractor;->advance()Z

    goto :goto_2

    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Audio Transcode section: Current position: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v3}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " mTrimAudioStartUs: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimAudioStartUs:J

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    goto :goto_3

    :cond_6
    move/from16 v23, v6

    :goto_3
    iget v2, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mTransRewritable:I

    if-nez v2, :cond_51

    const-string v2, "Transcoding start"

    invoke-static {v2}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    iget-object v2, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v2

    iget-object v6, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputVideoDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v6}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v6

    iget-object v7, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputVideoDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v7}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v7

    iget-boolean v3, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mCopyAudio:Z

    const/16 v19, 0x0

    if-eqz v3, :cond_7

    iget-object v3, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v3}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v3

    goto :goto_4

    :cond_7
    move-object/from16 v3, v19

    :goto_4
    move-object/from16 v24, v0

    iget-boolean v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mCopyAudio:Z

    if-eqz v0, :cond_8

    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_5

    :cond_8
    move-object/from16 v0, v19

    :goto_5
    move-object/from16 v20, v0

    iget-boolean v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mCopyAudio:Z

    if-eqz v0, :cond_9

    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputAudioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_6

    :cond_9
    move-object/from16 v0, v19

    :goto_6
    move-object/from16 v25, v0

    iget-boolean v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mCopyAudio:Z

    if-eqz v0, :cond_a

    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputAudioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v19

    nop

    :cond_a
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    move-object/from16 v26, v0

    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    move-object/from16 v27, v0

    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    move-object/from16 v28, v0

    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    move-object/from16 v29, v0

    move/from16 v21, v11

    move/from16 v30, v12

    move v11, v9

    move v12, v10

    move-object v10, v3

    move-object v9, v7

    move-object v7, v2

    const-wide/16 v2, -0x1

    :goto_7
    if-eqz v8, :cond_c

    if-nez v23, :cond_b

    goto :goto_8

    :cond_b
    move-wide/from16 v47, v2

    move-wide/from16 v31, v4

    move-object/from16 v40, v6

    move-object/from16 v54, v9

    move v9, v11

    move/from16 v5, v16

    move/from16 v3, v18

    move/from16 v11, v21

    move/from16 v6, v23

    move-object/from16 v0, v24

    move-object/from16 v51, v26

    move-object/from16 v49, v27

    move-object/from16 v4, v28

    move-object/from16 v2, v29

    goto/16 :goto_27

    :cond_c
    :goto_8
    iget-boolean v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    move-wide/from16 v31, v4

    const-wide/16 v4, 0x2710

    if-nez v0, :cond_13

    if-nez v22, :cond_13

    if-eqz v17, :cond_e

    iget-boolean v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxerStarted:Z

    if-eqz v0, :cond_d

    goto :goto_a

    :cond_d
    :goto_9
    move-object/from16 v40, v6

    goto/16 :goto_d

    :cond_e
    :goto_a
    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputVideoDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0, v4, v5}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v0

    const/4 v4, -0x1

    if-ne v0, v4, :cond_f

    const-string/jumbo v4, "no video decoder input buffer"

    invoke-static {v4}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    goto :goto_9

    :cond_f
    aget-object v4, v6, v0

    iget-object v5, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    move-object/from16 v40, v6

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v5

    iget-object v6, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v6}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v41

    cmp-long v6, v41, v14

    if-gtz v6, :cond_11

    if-ltz v5, :cond_10

    iget-object v6, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputVideoDecoder:Landroid/media/MediaCodec;

    const/16 v35, 0x0

    move-object/from16 v43, v4

    iget-object v4, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v4}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v39

    move-object/from16 v33, v6

    move/from16 v34, v0

    move/from16 v36, v5

    move-wide/from16 v37, v41

    invoke-virtual/range {v33 .. v39}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    goto :goto_b

    :cond_10
    move-object/from16 v43, v4

    :goto_b
    iget-object v4, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v4}, Landroid/media/MediaExtractor;->advance()Z

    move-result v4

    const/4 v6, 0x1

    xor-int/2addr v4, v6

    const-string v6, "Move forward to locate: Video"

    invoke-static {v6}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    goto :goto_c

    :cond_11
    move-object/from16 v43, v4

    const/4 v4, 0x1

    :goto_c
    if-eqz v4, :cond_12

    const-string/jumbo v6, "video extractor: EOS"

    invoke-static {v6}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    iget-object v6, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputVideoDecoder:Landroid/media/MediaCodec;

    const/16 v35, 0x0

    const/16 v36, 0x0

    const-wide/16 v37, 0x0

    const/16 v39, 0x4

    move-object/from16 v33, v6

    move/from16 v34, v0

    invoke-virtual/range {v33 .. v39}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    :cond_12
    move/from16 v22, v4

    goto :goto_d

    :cond_13
    move-object/from16 v40, v6

    :goto_d
    iget-boolean v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    if-nez v0, :cond_20

    if-nez v11, :cond_20

    if-eqz v17, :cond_15

    iget-boolean v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxerStarted:Z

    if-eqz v0, :cond_14

    goto :goto_e

    :cond_14
    move-wide/from16 v47, v2

    move/from16 v44, v11

    move-object/from16 v6, v27

    goto/16 :goto_14

    :cond_15
    :goto_e
    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputVideoDecoder:Landroid/media/MediaCodec;

    move/from16 v44, v11

    move-object/from16 v6, v27

    const-wide/16 v4, 0x2710

    invoke-virtual {v0, v6, v4, v5}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v11

    const/4 v4, -0x1

    if-ne v11, v4, :cond_16

    const-string/jumbo v0, "no video decoder output buffer"

    invoke-static {v0}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    goto :goto_f

    :cond_16
    const/4 v4, -0x3

    if-ne v11, v4, :cond_17

    const-string/jumbo v0, "video decoder: output buffers changed"

    invoke-static {v0}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputVideoDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    nop

    move-object v9, v0

    :goto_f
    move-wide/from16 v47, v2

    goto/16 :goto_14

    :cond_17
    const/4 v4, -0x2

    if-ne v11, v4, :cond_18

    goto :goto_f

    :cond_18
    aget-object v4, v9, v11

    iget v0, v6, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_19

    const-string/jumbo v0, "video decoder: codec config buffer"

    invoke-static {v0}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputVideoDecoder:Landroid/media/MediaCodec;

    const/4 v5, 0x0

    invoke-virtual {v0, v11, v5}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    goto :goto_f

    :cond_19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "video decoder: returned buffer for time "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v45, v4

    iget-wide v4, v6, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    iget v0, v6, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    goto :goto_10

    :cond_1a
    const/4 v0, 0x0

    :goto_10
    move v4, v0

    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputVideoDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0, v11, v4}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    if-eqz v4, :cond_1f

    const-string/jumbo v0, "output surface: await new image"

    invoke-static {v0}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    :try_start_0
    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputSurface:Lcom/samsung/android/transcode/surfaces/OutputSurface;

    const/16 v5, 0x3e8

    invoke-virtual {v0, v5}, Lcom/samsung/android/transcode/surfaces/OutputSurface;->checkForNewImage(I)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3

    if-nez v0, :cond_1b

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "video decoder: checkForNewImage return false!!  mUserStop : "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    nop

    move-object/from16 v27, v6

    move/from16 v11, v44

    goto/16 :goto_d

    :catch_0
    move-exception v0

    move-wide/from16 v47, v2

    move/from16 v46, v4

    goto/16 :goto_12

    :cond_1b
    :try_start_2
    const-string/jumbo v0, "output surface: draw image"

    invoke-static {v0}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    const/16 v0, 0x4000

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputSurface:Lcom/samsung/android/transcode/surfaces/OutputSurface;

    invoke-virtual {v0}, Lcom/samsung/android/transcode/surfaces/OutputSurface;->drawImage()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "presentationTimeUs: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_3

    move/from16 v46, v4

    :try_start_3
    iget-wide v4, v6, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "StartPnt: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    iget-wide v4, v6, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2

    move-wide/from16 v47, v2

    :try_start_4
    iget-wide v2, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    cmp-long v0, v4, v2

    if-ltz v0, :cond_1d

    iget-boolean v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mSkipFrames:Z

    if-eqz v0, :cond_1c

    iget v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mFramesSkipInterval:I

    rem-int v0, v30, v0

    if-eqz v0, :cond_1c

    goto :goto_11

    :cond_1c
    const/16 v30, 0x0

    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputSurface:Lcom/samsung/android/transcode/surfaces/InputSurface;

    iget-wide v2, v6, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/transcode/surfaces/InputSurface;->setPresentationTime(J)V

    const-string v0, "input surface: swap buffers"

    invoke-static {v0}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputSurface:Lcom/samsung/android/transcode/surfaces/InputSurface;

    invoke-virtual {v0}, Lcom/samsung/android/transcode/surfaces/InputSurface;->swapBuffers()Z

    const-string/jumbo v0, "video encoder: notified of new frame"

    invoke-static {v0}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1

    add-int/lit8 v21, v21, 0x1

    :goto_11
    const/4 v2, 0x1

    add-int/lit8 v30, v30, 0x1

    :cond_1d
    goto :goto_13

    :catch_1
    move-exception v0

    goto :goto_12

    :catch_2
    move-exception v0

    move-wide/from16 v47, v2

    goto :goto_12

    :catch_3
    move-exception v0

    move-wide/from16 v47, v2

    move/from16 v46, v4

    :goto_12
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    if-eqz v3, :cond_1e

    if-eqz v2, :cond_1e

    const-string v3, "Surface frame wait timed out"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    goto :goto_13

    :cond_1e
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    :cond_1f
    move-wide/from16 v47, v2

    move/from16 v46, v4

    :goto_13
    iget v0, v6, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_21

    const-string/jumbo v0, "video decoder: EOS"

    invoke-static {v0}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    const/4 v0, 0x1

    iget-object v2, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->signalEndOfInputStream()V

    move v11, v0

    goto :goto_15

    :cond_20
    move-wide/from16 v47, v2

    move/from16 v44, v11

    move-object/from16 v6, v27

    :cond_21
    :goto_14
    move/from16 v11, v44

    :goto_15
    iget-boolean v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    if-nez v0, :cond_2c

    if-nez v8, :cond_2c

    if-eqz v17, :cond_23

    iget-boolean v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxerStarted:Z

    if-eqz v0, :cond_22

    goto :goto_16

    :cond_22
    move-object/from16 v49, v6

    move-object/from16 v2, v26

    goto/16 :goto_19

    :cond_23
    :goto_16
    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    move-object/from16 v2, v26

    const-wide/16 v3, 0x2710

    invoke-virtual {v0, v2, v3, v4}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_24

    const-string/jumbo v3, "no video encoder output buffer"

    invoke-static {v3}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    goto :goto_17

    :cond_24
    const/4 v3, -0x3

    if-ne v0, v3, :cond_25

    const-string/jumbo v3, "video encoder: output buffers changed"

    invoke-static {v3}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    iget-object v3, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v3}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v3

    nop

    move-object v7, v3

    :goto_17
    move-object/from16 v49, v6

    goto/16 :goto_19

    :cond_25
    const/4 v3, -0x2

    if-ne v0, v3, :cond_27

    const-string/jumbo v3, "video encoder: output format changed"

    invoke-static {v3}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    iget v3, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoTrackIndex:I

    if-gez v3, :cond_26

    iget-object v3, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v3}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v3

    nop

    move-object/from16 v49, v6

    goto :goto_1a

    :cond_26
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Video encoder output format changed after muxer has started"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_27
    if-gez v0, :cond_28

    const-string v3, "Unexpected result from video encoder dequeue output format."

    invoke-static {v3}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    goto :goto_17

    :cond_28
    aget-object v3, v7, v0

    iget v4, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_29

    const-string/jumbo v4, "video encoder: codec config buffer"

    invoke-static {v4}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    iget-object v4, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    goto :goto_17

    :cond_29
    iget v4, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-eqz v4, :cond_2a

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "video encoder: writing sample data timestamp "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v49, v6

    iget-wide v5, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    iget-object v4, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxer:Landroid/media/MediaMuxer;

    iget v5, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoTrackIndex:I

    invoke-virtual {v4, v5, v3, v2}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    goto :goto_18

    :cond_2a
    move-object/from16 v49, v6

    :goto_18
    iget v4, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_2b

    const-string/jumbo v4, "video encoder: EOS"

    invoke-static {v4}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    const/4 v8, 0x1

    :cond_2b
    iget-object v4, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    goto :goto_19

    :cond_2c
    move-object/from16 v49, v6

    move-object/from16 v2, v26

    :goto_19
    move-object/from16 v3, v17

    :goto_1a
    iget-boolean v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mCopyAudio:Z

    if-eqz v0, :cond_4c

    iget-boolean v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    if-nez v0, :cond_32

    if-nez v18, :cond_32

    if-eqz v24, :cond_2e

    iget-boolean v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxerStarted:Z

    if-eqz v0, :cond_2d

    goto :goto_1c

    :cond_2d
    :goto_1b
    move-object/from16 v51, v2

    move-object/from16 v50, v7

    goto/16 :goto_1e

    :cond_2e
    :goto_1c
    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputAudioDecoder:Landroid/media/MediaCodec;

    const-wide/16 v4, 0x2710

    invoke-virtual {v0, v4, v5}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v0

    const/4 v4, -0x1

    if-ne v0, v4, :cond_2f

    const-string v4, "audio decoder input try again later"

    invoke-static {v4}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    goto :goto_1b

    :cond_2f
    aget-object v4, v19, v0

    iget-object v5, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v5

    iget-object v6, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    move-object/from16 v50, v7

    invoke-virtual {v6}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v6

    move-object/from16 v51, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v52, v4

    const-string v4, "Audio psntTimeUs: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", TrimTCEndTime "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    cmp-long v2, v6, v14

    if-gtz v2, :cond_31

    if-ltz v5, :cond_30

    iget-object v2, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputAudioDecoder:Landroid/media/MediaCodec;

    const/16 v35, 0x0

    iget-object v4, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v4}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v39

    move-object/from16 v33, v2

    move/from16 v34, v0

    move/from16 v36, v5

    move-wide/from16 v37, v6

    invoke-virtual/range {v33 .. v39}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    :cond_30
    iget-object v2, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v2}, Landroid/media/MediaExtractor;->advance()Z

    move-result v2

    const/4 v4, 0x1

    xor-int/2addr v2, v4

    const-string v4, "Move forward to locate: Audio"

    invoke-static {v4}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    goto :goto_1d

    :cond_31
    const/4 v2, 0x1

    :goto_1d
    move/from16 v18, v2

    if-eqz v18, :cond_33

    const-string v2, "audio decoder sending EOS"

    invoke-static {v2}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    iget-object v2, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputAudioDecoder:Landroid/media/MediaCodec;

    const/16 v35, 0x0

    const/16 v36, 0x0

    const-wide/16 v37, 0x0

    const/16 v39, 0x4

    move-object/from16 v33, v2

    move/from16 v34, v0

    invoke-virtual/range {v33 .. v39}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    goto :goto_1e

    :cond_32
    move-object/from16 v51, v2

    move-object/from16 v50, v7

    :cond_33
    :goto_1e
    iget-boolean v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    if-nez v0, :cond_3b

    if-nez v16, :cond_3b

    const/4 v2, -0x1

    if-ne v12, v2, :cond_3b

    if-eqz v24, :cond_35

    iget-boolean v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxerStarted:Z

    if-eqz v0, :cond_34

    goto :goto_1f

    :cond_34
    move-object/from16 v2, v29

    goto :goto_20

    :cond_35
    :goto_1f
    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputAudioDecoder:Landroid/media/MediaCodec;

    move-object/from16 v2, v29

    const-wide/16 v4, 0x2710

    invoke-virtual {v0, v2, v4, v5}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v0

    const/4 v4, -0x1

    if-ne v0, v4, :cond_36

    const-string v4, "audio decoder output buffer try again later"

    invoke-static {v4}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    goto :goto_20

    :cond_36
    const/4 v4, -0x3

    if-ne v0, v4, :cond_37

    const-string v4, "audio decoder: output buffers changed"

    invoke-static {v4}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    iget-object v4, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputAudioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v4}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v25

    goto :goto_20

    :cond_37
    const/4 v4, -0x2

    if-ne v0, v4, :cond_38

    const-string v4, "audio decoder: output format changed: "

    invoke-static {v4}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    goto :goto_20

    :cond_38
    if-gez v0, :cond_39

    const-string v4, "Unexpected result from audio decoder dequeue output format."

    invoke-static {v4}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    goto :goto_20

    :cond_39
    iget v4, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_3a

    const-string v4, "audio decoder: codec config buffer"

    invoke-static {v4}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    iget-object v4, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputAudioDecoder:Landroid/media/MediaCodec;

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    goto :goto_20

    :cond_3a
    move v12, v0

    goto :goto_20

    :cond_3b
    move-object/from16 v2, v29

    :goto_20
    iget-boolean v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    if-nez v0, :cond_3e

    const/4 v4, -0x1

    if-eq v12, v4, :cond_3e

    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    const-wide/16 v5, 0x2710

    invoke-virtual {v0, v5, v6}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v0

    if-ne v0, v4, :cond_3c

    const-string v4, "audio encoder input buffer try again later"

    invoke-static {v4}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    nop

    move/from16 v53, v8

    move-object/from16 v54, v9

    goto :goto_22

    :cond_3c
    aget-object v4, v20, v0

    iget v5, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    iget-wide v6, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    if-ltz v5, :cond_3d

    move/from16 v53, v8

    aget-object v8, v25, v12

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v8

    move-object/from16 v54, v9

    iget v9, v2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget v9, v2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    add-int/2addr v9, v5

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v4, v8}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    iget-object v9, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    const/16 v35, 0x0

    move-object/from16 v55, v4

    iget v4, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    move-object/from16 v33, v9

    move/from16 v34, v0

    move/from16 v36, v5

    move-wide/from16 v37, v6

    move/from16 v39, v4

    invoke-virtual/range {v33 .. v39}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    goto :goto_21

    :cond_3d
    move-object/from16 v55, v4

    move/from16 v53, v8

    move-object/from16 v54, v9

    :goto_21
    iget-object v4, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputAudioDecoder:Landroid/media/MediaCodec;

    const/4 v8, 0x0

    invoke-virtual {v4, v12, v8}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    const/4 v12, -0x1

    iget v4, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_3f

    const-string v4, "audio decoder: EOS"

    invoke-static {v4}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    const/16 v16, 0x1

    goto :goto_22

    :cond_3e
    move/from16 v53, v8

    move-object/from16 v54, v9

    :cond_3f
    :goto_22
    iget-boolean v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    if-nez v0, :cond_4b

    if-nez v23, :cond_4b

    if-eqz v24, :cond_41

    iget-boolean v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxerStarted:Z

    if-eqz v0, :cond_40

    goto :goto_23

    :cond_40
    move-object/from16 v4, v28

    goto/16 :goto_25

    :cond_41
    :goto_23
    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    move-object/from16 v4, v28

    const-wide/16 v5, 0x2710

    invoke-virtual {v0, v4, v5, v6}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v0

    const/4 v5, -0x1

    if-ne v0, v5, :cond_42

    const-string v5, "audio encoder output buffer try again later"

    invoke-static {v5}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    goto/16 :goto_25

    :cond_42
    const/4 v5, -0x3

    if-ne v0, v5, :cond_43

    const-string v5, "audio encoder: output buffers changed"

    invoke-static {v5}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    iget-object v5, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v5}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v5

    nop

    move-object v10, v5

    goto/16 :goto_25

    :cond_43
    const/4 v5, -0x2

    if-ne v0, v5, :cond_45

    iget v5, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioTrackIndex:I

    if-gez v5, :cond_44

    iget-object v5, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v5}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "audio encoder: output format changed "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    goto/16 :goto_26

    :cond_44
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Audio encoder output format changed after muxer is started."

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_45
    if-gez v0, :cond_46

    const-string v5, "Unexpected result from audio encoder dequeue output format."

    invoke-static {v5}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    goto :goto_25

    :cond_46
    aget-object v5, v10, v0

    iget v6, v4, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_47

    const-string v6, "audio encoder ignoring BUFFER_FLAG_CODEC_CONFIG"

    invoke-static {v6}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    iget-object v6, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    const/4 v7, 0x0

    invoke-virtual {v6, v0, v7}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    goto :goto_25

    :cond_47
    iget v6, v4, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-eqz v6, :cond_49

    iget-wide v6, v4, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    cmp-long v6, v47, v6

    if-gtz v6, :cond_48

    iget-wide v6, v4, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-object v8, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxer:Landroid/media/MediaMuxer;

    iget v9, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioTrackIndex:I

    invoke-virtual {v8, v9, v5, v4}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    goto :goto_24

    :cond_48
    new-instance v6, Ljava/io/IOException;

    const-string v7, "Audio time stamps are not in increasing order."

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_49
    move-wide/from16 v6, v47

    :goto_24
    iget v8, v4, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v8, v8, 0x4

    if-eqz v8, :cond_4a

    const-string v8, "audio encoder: EOS"

    invoke-static {v8}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    const/16 v23, 0x1

    :cond_4a
    iget-object v8, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    const/4 v9, 0x0

    invoke-virtual {v8, v0, v9}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    nop

    move-wide/from16 v47, v6

    goto :goto_25

    :cond_4b
    move-object/from16 v4, v28

    :goto_25
    move-object/from16 v5, v24

    goto :goto_26

    :cond_4c
    move-object/from16 v51, v2

    move-object/from16 v50, v7

    move/from16 v53, v8

    move-object/from16 v54, v9

    move-object/from16 v4, v28

    move-object/from16 v2, v29

    move-object/from16 v5, v24

    :goto_26
    iget-boolean v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    if-nez v0, :cond_4f

    iget-boolean v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxerStarted:Z

    if-nez v0, :cond_4f

    if-eqz v3, :cond_4f

    iget-boolean v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mCopyAudio:Z

    if-eqz v0, :cond_4d

    if-eqz v5, :cond_4f

    :cond_4d
    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0, v3}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v0

    iput v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoTrackIndex:I

    iget-boolean v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mCopyAudio:Z

    if-eqz v0, :cond_4e

    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0, v5}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v0

    iput v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioTrackIndex:I

    :cond_4e
    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxer:Landroid/media/MediaMuxer;

    iget v6, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputOrientationDegrees:I

    invoke-virtual {v0, v6}, Landroid/media/MediaMuxer;->setOrientationHint(I)V

    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->start()V

    const/4 v6, 0x1

    iput-boolean v6, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxerStarted:Z

    :cond_4f
    iget-boolean v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    if-eqz v0, :cond_50

    const-string v0, "Encoding abruptly stopped."

    invoke-static {v0}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    nop

    move-object/from16 v17, v3

    move-object v0, v5

    move v9, v11

    move/from16 v5, v16

    move/from16 v3, v18

    move/from16 v11, v21

    move/from16 v6, v23

    move-object/from16 v7, v50

    move/from16 v8, v53

    :goto_27
    move-object/from16 v56, v0

    const-string v0, "Transcoding Done"

    invoke-static {v0}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    move/from16 v18, v3

    move/from16 v16, v5

    move v10, v12

    move-object/from16 v24, v56

    goto :goto_28

    :cond_50
    move-object/from16 v29, v2

    move-object/from16 v17, v3

    move-object/from16 v28, v4

    move-object/from16 v24, v5

    move-wide/from16 v4, v31

    move-object/from16 v6, v40

    move-wide/from16 v2, v47

    move-object/from16 v27, v49

    move-object/from16 v7, v50

    move-object/from16 v26, v51

    move/from16 v8, v53

    move-object/from16 v9, v54

    goto/16 :goto_7

    :cond_51
    move-object/from16 v24, v0

    move-wide/from16 v31, v4

    move/from16 v30, v12

    move/from16 v6, v23

    :goto_28
    const-string v0, "Rewriting starts"

    invoke-static {v0}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    const/4 v0, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-static {v4}, Lcom/samsung/android/transcode/util/CodecsHelper;->getAndSelectVideoTrackIndex(Landroid/media/MediaExtractor;)I

    move-result v4

    iget-object v5, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-static {v5}, Lcom/samsung/android/transcode/util/CodecsHelper;->getAndSelectAudioTrackIndex(Landroid/media/MediaExtractor;)I

    move-result v5

    const/4 v7, 0x0

    const/4 v12, 0x0

    move/from16 v57, v2

    const/4 v2, -0x1

    if-eq v4, v2, :cond_61

    iget-object v2, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v2, v4}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v2

    const/4 v7, -0x1

    if-eq v5, v7, :cond_52

    iget-object v7, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v7, v5}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v12

    :cond_52
    iget-boolean v7, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxerStarted:Z

    if-nez v7, :cond_57

    const/4 v7, 0x0

    sget-boolean v19, Lcom/samsung/android/transcode/core/EncodeVideo;->mUseUri:Z

    if-eqz v19, :cond_53

    move/from16 v58, v0

    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_29

    :cond_53
    move/from16 v58, v0

    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFilePath:Ljava/lang/String;

    :goto_29
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v59, v3

    const-string v3, "filepath :"

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Lcom/samsung/android/transcode/core/EncodeVideo;->updateCreationTime(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_54

    const-string/jumbo v3, "param-meta-author"

    const/16 v7, 0x8

    invoke-virtual {v2, v3, v7}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string/jumbo v3, "param-meta-transcoding"

    const/4 v7, 0x1

    invoke-virtual {v2, v3, v7}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_54
    iget v3, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingMode:I

    const/16 v7, 0xa

    if-ne v3, v7, :cond_55

    const-string/jumbo v3, "param-meta-recording-mode"

    iget v7, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingMode:I

    invoke-virtual {v2, v3, v7}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "set recording mode for HDR 10 PLUS : "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingMode:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    :cond_55
    iget-object v3, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v3, v2}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v3

    iput v3, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoTrackIndex:I

    if-eqz v12, :cond_56

    const-string v3, "audio/unknown"

    const-string/jumbo v7, "mime"

    invoke-virtual {v12, v7}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_56

    iget-object v3, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v3, v12}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v3

    iput v3, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioTrackIndex:I

    goto :goto_2a

    :cond_56
    const/4 v3, -0x1

    move v5, v3

    :goto_2a
    iget-object v3, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxer:Landroid/media/MediaMuxer;

    iget v7, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputOrientationDegrees:I

    invoke-virtual {v3, v7}, Landroid/media/MediaMuxer;->setOrientationHint(I)V

    iget-object v3, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v3}, Landroid/media/MediaMuxer;->start()V

    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxerStarted:Z

    goto :goto_2b

    :cond_57
    move/from16 v58, v0

    move/from16 v59, v3

    :goto_2b
    invoke-direct {v1, v2}, Lcom/samsung/android/transcode/core/EncodeVideo;->getVideoSampleSize(Landroid/media/MediaFormat;)I

    move-result v0

    const/4 v3, 0x0

    const/4 v7, -0x1

    if-ne v5, v7, :cond_58

    const/4 v7, 0x1

    move/from16 v59, v7

    :cond_58
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    move/from16 v60, v0

    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    move-object/from16 v61, v2

    iget-object v2, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v2, v7, v3}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v2

    iput v2, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    iget-object v2, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v2}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v19

    move/from16 v2, v57

    :goto_2c
    move/from16 v62, v4

    iget-boolean v4, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    if-nez v4, :cond_5c

    if-nez v2, :cond_5c

    iput v3, v0, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget-object v4, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v4, v7, v3}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v4

    iput v4, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    iget v4, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-gez v4, :cond_59

    const-string/jumbo v4, "saw input EOS: Video"

    invoke-static {v4}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    const/4 v2, 0x1

    const/4 v4, 0x0

    iput v4, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    move/from16 v4, v62

    goto :goto_2c

    :cond_59
    iget-object v4, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    move/from16 v63, v8

    move/from16 v64, v9

    invoke-virtual {v4}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v8

    iput-wide v8, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const-wide/16 v8, -0x1

    cmp-long v4, v31, v8

    if-eqz v4, :cond_5a

    iget-wide v8, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    cmp-long v4, v8, v31

    if-lez v4, :cond_5a

    const/4 v2, 0x1

    const-string/jumbo v4, "sawEOS: true: V"

    invoke-static {v4}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    :goto_2d
    move/from16 v4, v62

    move/from16 v8, v63

    move/from16 v9, v64

    goto :goto_2c

    :cond_5a
    iget-wide v8, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    cmp-long v4, v8, v19

    if-ltz v4, :cond_5b

    iget-object v4, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v4}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v4

    iput v4, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    iget-object v4, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxer:Landroid/media/MediaMuxer;

    iget v8, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoTrackIndex:I

    invoke-virtual {v4, v8, v7, v0}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    :cond_5b
    iget-object v4, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v4}, Landroid/media/MediaExtractor;->advance()Z

    goto :goto_2d

    :cond_5c
    move/from16 v63, v8

    move/from16 v64, v9

    const/4 v4, -0x1

    if-eq v5, v4, :cond_5f

    const/high16 v4, 0x20000

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    new-instance v8, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v8}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iget-object v9, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v9, v4, v3}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v9

    iput v9, v8, Landroid/media/MediaCodec$BufferInfo;->size:I

    :goto_2e
    iget-boolean v9, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    if-nez v9, :cond_5f

    if-nez v59, :cond_5f

    iput v3, v8, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget-object v9, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v9, v4, v3}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v9

    iput v9, v8, Landroid/media/MediaCodec$BufferInfo;->size:I

    iget v9, v8, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-gez v9, :cond_5d

    const-string/jumbo v9, "saw input EOS: Audio"

    invoke-static {v9}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    const/16 v59, 0x1

    const/4 v9, 0x0

    iput v9, v8, Landroid/media/MediaCodec$BufferInfo;->size:I

    goto :goto_2e

    :cond_5d
    const/4 v9, 0x0

    iget-object v9, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    move/from16 v66, v2

    move/from16 v65, v3

    invoke-virtual {v9}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v2

    iput-wide v2, v8, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const-wide/16 v2, -0x1

    cmp-long v9, v31, v2

    if-eqz v9, :cond_5e

    iget-wide v2, v8, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    cmp-long v2, v2, v31

    if-lez v2, :cond_5e

    const/16 v59, 0x1

    const-string/jumbo v2, "sawEOS: true: A"

    invoke-static {v2}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    goto :goto_2f

    :cond_5e
    iget-object v2, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v2}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v2

    iput v2, v8, Landroid/media/MediaCodec$BufferInfo;->flags:I

    iget-object v2, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxer:Landroid/media/MediaMuxer;

    iget v3, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioTrackIndex:I

    invoke-virtual {v2, v3, v4, v8}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    iget-object v2, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v2}, Landroid/media/MediaExtractor;->advance()Z

    :goto_2f
    move/from16 v3, v65

    move/from16 v2, v66

    goto :goto_2e

    :cond_5f
    move/from16 v66, v2

    move/from16 v65, v3

    iget-boolean v2, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    if-nez v2, :cond_60

    const-string v2, "Rewriting finished"

    invoke-static {v2}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    :cond_60
    return-void

    :cond_61
    move/from16 v58, v0

    move/from16 v59, v3

    move/from16 v62, v4

    move/from16 v63, v8

    move/from16 v64, v9

    new-instance v0, Ljava/io/IOException;

    const-string v2, "Absent valid video track"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public stop()V
    .locals 5

    const-string v0, "TranscodeLib"

    const-string v1, "Stop method called "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mConvert:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mEncoding:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput-boolean v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    const-string v0, "TranscodeLib"

    const-string/jumbo v1, "mUserStop - true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mStopLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputSurface:Lcom/samsung/android/transcode/surfaces/OutputSurface;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputSurface:Lcom/samsung/android/transcode/surfaces/OutputSurface;

    invoke-virtual {v2}, Lcom/samsung/android/transcode/surfaces/OutputSurface;->notifyFrameSyncObject()V

    :cond_2
    iput-boolean v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    const-string v1, "TranscodeLib"

    const-string/jumbo v2, "mUserStop - true"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mEncoding:Z

    if-nez v1, :cond_3

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    return-void

    :cond_3
    :try_start_1
    const-string v1, "TranscodeLib"

    const-string v2, "Calling wait on stop lock."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mStopLock:Ljava/lang/Object;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string v1, "TranscodeLib"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stop method finally  mEncoding :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mEncoding:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mEncoding:Z

    if-eqz v1, :cond_4

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/EncodeVideo;->release()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_3

    :catch_0
    move-exception v1

    :try_start_3
    const-string v2, "TranscodeLib"

    const-string v3, "Stop lock interrupted."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    const-string v1, "TranscodeLib"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stop method finally  mEncoding :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mEncoding:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mEncoding:Z

    if-eqz v1, :cond_4

    goto :goto_0

    :cond_4
    :goto_1
    monitor-exit v0

    :goto_2
    return-void

    :goto_3
    const-string v2, "TranscodeLib"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stop method finally  mEncoding :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mEncoding:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mEncoding:Z

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/EncodeVideo;->release()V

    :cond_5
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

    const-string v0, "TranscodeLib"

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

    iget v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mAuthor:I

    const/4 v5, -0x1

    if-eq v0, v5, :cond_9

    iget-boolean v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mUpdateCreationTime:Z

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

    const-string v0, "TranscodeLib"

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
    const-string v0, "TranscodeLib"

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

    invoke-static {v7}, Lcom/samsung/android/transcode/core/EncodeVideo;->unsignedIntToLong([B)J

    move-result-wide v16

    move-wide/from16 v18, v16

    const-string v0, "TranscodeLib"

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

    const-string v2, "TranscodeLib"

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

    const-string v5, "TranscodeLib"

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

    const-string v5, "TranscodeLib"

    const-string v8, "Found: mvhd"

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    if-eqz v3, :cond_4

    array-length v5, v9

    const/4 v8, 0x0

    invoke-virtual {v13, v9, v8, v5}, Ljava/io/RandomAccessFile;->read([BII)I

    sget-object v5, Lcom/samsung/android/transcode/core/EncodeVideo;->creationTime:[B

    sget-object v8, Lcom/samsung/android/transcode/core/EncodeVideo;->creationTime:[B

    array-length v8, v8

    const/4 v10, 0x0

    invoke-virtual {v13, v5, v10, v8}, Ljava/io/RandomAccessFile;->write([BII)V

    goto/16 :goto_6

    :cond_4
    sget-object v5, Lcom/samsung/android/transcode/core/EncodeVideo;->creationTime:[B

    sget-object v8, Lcom/samsung/android/transcode/core/EncodeVideo;->creationTime:[B

    array-length v8, v8

    const/4 v10, 0x0

    invoke-virtual {v13, v5, v10, v8}, Ljava/io/RandomAccessFile;->read([BII)I

    sget-object v5, Lcom/samsung/android/transcode/core/EncodeVideo;->creationTime:[B

    sget-object v8, Lcom/samsung/android/transcode/core/EncodeVideo;->creationTime:[B

    array-length v8, v8

    const/4 v10, 0x0

    invoke-virtual {v13, v5, v10, v8}, Ljava/io/RandomAccessFile;->read([BII)I

    const/4 v5, 0x1

    iput-boolean v5, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mUpdateCreationTime:Z

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

    const-string v7, "TranscodeLib"

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

    const-string v0, "TranscodeLib"

    const-string v5, "filePointer does not go forward. Exit."

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    goto :goto_6

    :cond_7
    add-long v14, v14, v27

    const-string v0, "TranscodeLib"

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
    const-string v0, "TranscodeLib"

    const-string v2, "Do not update CreationTime"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4
.end method

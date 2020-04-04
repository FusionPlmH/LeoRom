.class public Lcom/samsung/android/transcode/core/EncodeImages;
.super Lcom/samsung/android/transcode/core/Encode;
.source "EncodeImages.java"


# static fields
.field private static final TIMEOUT_USEC:J = 0x2710L


# instance fields
.field private mAudioExtractor:Landroid/media/MediaExtractor;

.field private mCopyAudio:Z

.field private mEncodedOutputDurationMs:J

.field private volatile mEncoding:Z

.field private mFramesPerImage:I

.field private mFramesToWrite:I

.field private mInputFilePaths:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mInputOrientationDegrees:I

.field private mInputSurface:Lcom/samsung/android/transcode/surfaces/InputSurface;

.field private mLogoRenderer:Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;

.field private mRenderer:Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;

.field private mStopLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/transcode/core/Encode;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mInputOrientationDegrees:I

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mEncodedOutputDurationMs:J

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mFramesToWrite:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mFramesPerImage:I

    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mEncoding:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mStopLock:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public initialize(Ljava/lang/String;IIJ[Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mOutputFilePath:Ljava/lang/String;

    iput p2, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mOutputWidth:I

    iput p3, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mOutputHeight:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mInputFilePaths:Ljava/util/ArrayList;

    iput-wide p4, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mEncodedOutputDurationMs:J

    return-void
.end method

.method public initialize(Ljava/lang/String;IIJ[Ljava/lang/String;Ljava/io/FileDescriptor;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p7, p8, p9}, Lcom/samsung/android/transcode/core/EncodeImages;->setAudioData(Ljava/io/FileDescriptor;II)V

    invoke-virtual/range {p0 .. p6}, Lcom/samsung/android/transcode/core/EncodeImages;->initialize(Ljava/lang/String;IIJ[Ljava/lang/String;)V

    return-void
.end method

.method public initialize(Ljava/lang/String;IIJ[Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p7}, Lcom/samsung/android/transcode/core/EncodeImages;->setAudioData(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p6}, Lcom/samsung/android/transcode/core/EncodeImages;->initialize(Ljava/lang/String;IIJ[Ljava/lang/String;)V

    return-void
.end method

.method protected prepare()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mEncoding:Z

    iget-boolean v1, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mCopyAudio:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/EncodeImages;->prepareAudioCodecs()V

    :cond_0
    iget-wide v1, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mEncodedOutputDurationMs:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mInputFilePaths:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mFramesToWrite:I

    iget v1, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mFramesToWrite:I

    iget v2, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mOutputVideoFrameRate:I

    div-int/2addr v1, v2

    int-to-long v1, v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    iput-wide v1, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mEncodedOutputDurationMs:J

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mOutputVideoFrameRate:I

    int-to-long v1, v1

    iget-wide v3, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mEncodedOutputDurationMs:J

    mul-long/2addr v1, v3

    long-to-double v1, v1

    const-wide v3, 0x408f400000000000L    # 1000.0

    div-double/2addr v1, v3

    double-to-int v1, v1

    iput v1, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mFramesToWrite:I

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/EncodeImages;->prepareVideoCodecs()V

    iget v1, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mFramesToWrite:I

    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mInputFilePaths:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    div-int/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mFramesPerImage:I

    new-instance v1, Landroid/media/ExifInterface;

    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mInputFilePaths:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const-string v2, "Orientation"

    invoke-virtual {v1, v2, v0}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x6

    if-ne v0, v2, :cond_2

    const/16 v2, 0x5a

    iput v2, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mInputOrientationDegrees:I

    goto :goto_1

    :cond_2
    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    const/16 v2, 0xb4

    iput v2, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mInputOrientationDegrees:I

    goto :goto_1

    :cond_3
    const/16 v2, 0x8

    if-ne v0, v2, :cond_4

    const/16 v2, 0x10e

    iput v2, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mInputOrientationDegrees:I

    :cond_4
    :goto_1
    const-string v2, "TranscodeLib"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Total frames to be written "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mFramesToWrite:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ". Frames per image "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mFramesPerImage:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected prepareAudioCodecs()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-static {v0}, Lcom/samsung/android/transcode/util/CodecsHelper;->getAndSelectAudioTrackIndex(Landroid/media/MediaExtractor;)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v1, v0}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v1

    const-string v2, "TranscodeLib"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Audio input format "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "sample-rate"

    invoke-virtual {v1, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mOutputAudioSampleRateHZ:I

    const-string v2, "channel-count"

    invoke-virtual {v1, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mOutputAudioChannelCount:I

    const/4 v2, 0x0

    :try_start_0
    const-string/jumbo v3, "max-input-size"

    invoke-virtual {v1, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v3

    goto :goto_0

    :catch_0
    move-exception v3

    const-string v4, "TranscodeLib"

    const-string v5, "Audio max input size not defined"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mOutputAudioMimeType:Ljava/lang/String;

    iget v4, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mOutputAudioSampleRateHZ:I

    iget v5, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mOutputAudioChannelCount:I

    invoke-static {v3, v4, v5}, Landroid/media/MediaFormat;->createAudioFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v3

    if-eqz v2, :cond_0

    const-string/jumbo v4, "max-input-size"

    invoke-virtual {v3, v4, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_0
    const-string v4, "bitrate"

    iget v5, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mOutputAudioBitRate:I

    invoke-virtual {v3, v4, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v4, "aac-profile"

    iget v5, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mOutputAudioAACProfile:I

    invoke-virtual {v3, v4, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v4, "TranscodeLib"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Audio output format "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mOutputAudioMimeType:Ljava/lang/String;

    invoke-static {v4}, Lcom/samsung/android/transcode/util/CodecsHelper;->getEncoderCodec(Ljava/lang/String;)Landroid/media/MediaCodecInfo;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/samsung/android/transcode/util/CodecsHelper;->createAudioEncoder(Landroid/media/MediaCodecInfo;Landroid/media/MediaFormat;)Landroid/media/MediaCodec;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    invoke-static {v1}, Lcom/samsung/android/transcode/util/CodecsHelper;->createAudioDecoder(Landroid/media/MediaFormat;)Landroid/media/MediaCodec;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mInputAudioDecoder:Landroid/media/MediaCodec;

    iget-object v5, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mInputAudioDecoder:Landroid/media/MediaCodec;

    if-eqz v5, :cond_2

    iget-wide v5, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mEncodedOutputDurationMs:J

    const-wide/16 v7, -0x1

    cmp-long v5, v5, v7

    if-nez v5, :cond_1

    const-string v5, "durationUs"

    invoke-virtual {v1, v5}, Landroid/media/MediaFormat;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    iput-wide v5, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mEncodedOutputDurationMs:J

    :cond_1
    return-void

    :cond_2
    new-instance v5, Ljava/io/IOException;

    const-string v6, "Codec initialization error, unable to create Codecs!"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method protected prepareVideoCodecs()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mOutputMaxSizeKB:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    const/16 v1, 0x3e8

    if-eqz v0, :cond_0

    iget v2, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mSizeFraction:F

    iget-wide v3, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mOutputMaxSizeKB:J

    iget-wide v5, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mEncodedOutputDurationMs:J

    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mOutputAudioBitRate:I

    div-int/lit16 v7, v0, 0x3e8

    iget v8, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mOutputWidth:I

    iget v9, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mOutputHeight:I

    invoke-static/range {v2 .. v9}, Lcom/samsung/android/transcode/util/CodecsHelper;->getVideoEncodingBitRate(FJJIII)I

    move-result v0

    mul-int/2addr v1, v0

    iput v1, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mOutputVideoBitRate:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mOutputWidth:I

    iget v2, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mOutputHeight:I

    invoke-static {v0, v2}, Lcom/samsung/android/transcode/util/CodecsHelper;->suggestBitRate(II)I

    move-result v0

    mul-int/2addr v1, v0

    iput v1, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mOutputVideoBitRate:I

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mOutputVideoMimeType:Ljava/lang/String;

    iget v1, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mOutputWidth:I

    iget v2, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mOutputHeight:I

    invoke-static {v0, v1, v2}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v0

    const-string v1, "color-format"

    const v2, 0x7f000789

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v1, "bitrate"

    iget v2, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mOutputVideoBitRate:I

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v1, "frame-rate"

    iget v2, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mOutputVideoFrameRate:I

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v1, "i-frame-interval"

    iget v2, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mOutputVideoIFrameInterval:I

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mOutputVideoMimeType:Ljava/lang/String;

    invoke-static {v1}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v3, v2}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    new-instance v1, Lcom/samsung/android/transcode/surfaces/InputSurface;

    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/transcode/surfaces/InputSurface;-><init>(Landroid/view/Surface;)V

    iput-object v1, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mInputSurface:Lcom/samsung/android/transcode/surfaces/InputSurface;

    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->start()V

    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mInputSurface:Lcom/samsung/android/transcode/surfaces/InputSurface;

    invoke-virtual {v1}, Lcom/samsung/android/transcode/surfaces/InputSurface;->makeCurrent()V

    new-instance v1, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;

    invoke-direct {v1}, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mRenderer:Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;

    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mRenderer:Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;

    invoke-virtual {v1}, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;->prepare()I

    iget-boolean v1, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mLogoPresent:Z

    if-eqz v1, :cond_1

    new-instance v1, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;

    invoke-direct {v1}, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mLogoRenderer:Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;

    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mLogoRenderer:Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;

    invoke-virtual {v1}, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;->prepare()I

    :cond_1
    return-void
.end method

.method protected prepare_for_transrewrite()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method protected release()V
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "TranscodeLib"

    const-string/jumbo v2, "releasing encoder objects"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mOutputVideoEncoder:Landroid/media/MediaCodec;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->stop()V

    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V

    iput-object v2, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mOutputVideoEncoder:Landroid/media/MediaCodec;
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
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mRenderer:Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_1

    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mRenderer:Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;

    invoke-virtual {v1}, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;->release()V

    iput-object v2, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mRenderer:Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catch_1
    move-exception v1

    :try_start_4
    const-string v3, "TranscodeLib"

    const-string v4, "Exception in releasing renderer."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mLogoRenderer:Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v1, :cond_2

    :try_start_5
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mLogoRenderer:Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;

    invoke-virtual {v1}, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;->release()V

    iput-object v2, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mLogoRenderer:Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    :catch_2
    move-exception v1

    :try_start_6
    const-string v3, "TranscodeLib"

    const-string v4, "Exception in releasing logo renderer."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_2
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mLogo:Lcom/samsung/android/transcode/core/Encode$Logo;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mLogo:Lcom/samsung/android/transcode/core/Encode$Logo;

    iget-object v1, v1, Lcom/samsung/android/transcode/core/Encode$Logo;->mLogoBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mLogo:Lcom/samsung/android/transcode/core/Encode$Logo;

    iget-object v1, v1, Lcom/samsung/android/transcode/core/Encode$Logo;->mLogoBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mLogo:Lcom/samsung/android/transcode/core/Encode$Logo;

    iget-object v1, v1, Lcom/samsung/android/transcode/core/Encode$Logo;->mLogoBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mLogo:Lcom/samsung/android/transcode/core/Encode$Logo;

    iput-object v2, v1, Lcom/samsung/android/transcode/core/Encode$Logo;->mLogoBitmap:Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mLogo:Lcom/samsung/android/transcode/core/Encode$Logo;

    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mLogoPresent:Z

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mInputSurface:Lcom/samsung/android/transcode/surfaces/InputSurface;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v1, :cond_4

    :try_start_7
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mInputSurface:Lcom/samsung/android/transcode/surfaces/InputSurface;

    invoke-virtual {v1}, Lcom/samsung/android/transcode/surfaces/InputSurface;->release()V

    iput-object v2, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mInputSurface:Lcom/samsung/android/transcode/surfaces/InputSurface;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_3

    :catch_3
    move-exception v1

    :try_start_8
    const-string v3, "TranscodeLib"

    const-string v4, "Exception in releasing input surface."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_3
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mOutputAudioEncoder:Landroid/media/MediaCodec;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-eqz v1, :cond_5

    :try_start_9
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->stop()V

    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V

    iput-object v2, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mOutputAudioEncoder:Landroid/media/MediaCodec;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_4

    :catch_4
    move-exception v1

    :try_start_a
    const-string v3, "TranscodeLib"

    const-string v4, "Exception in releasing output audio encoder."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    :goto_4
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mInputAudioDecoder:Landroid/media/MediaCodec;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    if-eqz v1, :cond_6

    :try_start_b
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mInputAudioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->stop()V

    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mInputAudioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V

    iput-object v2, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mInputAudioDecoder:Landroid/media/MediaCodec;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto :goto_5

    :catch_5
    move-exception v1

    :try_start_c
    const-string v3, "TranscodeLib"

    const-string v4, "Exception in releasing input audio decoder."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_6
    :goto_5
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mAudioExtractor:Landroid/media/MediaExtractor;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    if-eqz v1, :cond_7

    :try_start_d
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v1}, Landroid/media/MediaExtractor;->release()V

    iput-object v2, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mAudioExtractor:Landroid/media/MediaExtractor;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_6
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    goto :goto_6

    :catch_6
    move-exception v1

    :try_start_e
    const-string v3, "TranscodeLib"

    const-string v4, "Exception in releasing audio extractor."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_7
    :goto_6
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mInputFilePaths:Ljava/util/ArrayList;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mInputFilePaths:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iput-object v2, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mInputFilePaths:Ljava/util/ArrayList;

    :cond_8
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mMuxer:Landroid/media/MediaMuxer;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    if-eqz v1, :cond_a

    :try_start_f
    iget-boolean v1, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mMuxerStarted:Z

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v1}, Landroid/media/MediaMuxer;->stop()V

    :cond_9
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v1}, Landroid/media/MediaMuxer;->release()V

    iput-object v2, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mMuxer:Landroid/media/MediaMuxer;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_7
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    goto :goto_7

    :catch_7
    move-exception v1

    :try_start_10
    const-string v2, "TranscodeLib"

    const-string v3, "Exception in releasing muxer."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    :cond_a
    :goto_7
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mStopLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_11
    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mStopLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mEncoding:Z

    monitor-exit v1

    nop

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mStopLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_12
    iget-object v3, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mStopLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mEncoding:Z

    monitor-exit v2
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    throw v1

    :catchall_2
    move-exception v0

    :try_start_13
    monitor-exit v2
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    throw v0
.end method

.method public setAudioData(Ljava/io/FileDescriptor;II)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    int-to-long v0, p2

    int-to-long v2, p3

    invoke-static {p1, v0, v1, v2, v3}, Lcom/samsung/android/transcode/util/CodecsHelper;->createExtractor(Ljava/io/FileDescriptor;JJ)Landroid/media/MediaExtractor;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mAudioExtractor:Landroid/media/MediaExtractor;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mCopyAudio:Z

    return-void
.end method

.method public setAudioData(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lcom/samsung/android/transcode/util/CodecsHelper;->createExtractor(Ljava/lang/String;)Landroid/media/MediaExtractor;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mAudioExtractor:Landroid/media/MediaExtractor;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mCopyAudio:Z

    return-void
.end method

.method public setMaxOutputSize(I)V
    .locals 2

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mOutputMaxSizeKB:J

    return-void
.end method

.method public setOutputDuration(J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mEncodedOutputDurationMs:J

    return-void
.end method

.method protected startEncoding()V
    .locals 44
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mUserStop:Z

    if-eqz v1, :cond_0

    const-string v1, "TranscodeLib"

    const-string v2, "Not starting encoding because it is stopped by user."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v1, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v1

    iget-boolean v2, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mCopyAudio:Z

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    iget-boolean v4, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mCopyAudio:Z

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v4}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v4

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    iget-boolean v5, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mCopyAudio:Z

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mInputAudioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v5}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v5

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    :goto_2
    iget-boolean v6, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mCopyAudio:Z

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mInputAudioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v6}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v6

    goto :goto_3

    :cond_4
    const/4 v6, 0x0

    :goto_3
    new-instance v7, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v7}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    new-instance v8, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v8}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    new-instance v9, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v9}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    const/4 v10, 0x0

    const/4 v11, 0x0

    iget-boolean v12, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mCopyAudio:Z

    const/4 v13, 0x1

    xor-int/2addr v12, v13

    iget-boolean v14, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mCopyAudio:Z

    xor-int/2addr v14, v13

    iget-boolean v15, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mCopyAudio:Z

    xor-int/2addr v15, v13

    const/16 v16, 0x0

    const/16 v17, -0x1

    const/16 v18, 0x0

    const/4 v3, 0x0

    const/16 v19, 0x0

    iget-object v13, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mInputFilePaths:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    move-object/from16 v21, v1

    iget v1, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mOutputVideoFrameRate:I

    const/16 v20, 0x1

    shl-int/lit8 v1, v1, 0x1

    move-object/from16 v22, v2

    iget-boolean v2, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mLogoPresent:Z

    if-eqz v2, :cond_8

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mLogoRenderer:Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;

    move-object/from16 v23, v5

    iget-object v5, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mLogo:Lcom/samsung/android/transcode/core/Encode$Logo;

    iget-object v5, v5, Lcom/samsung/android/transcode/core/Encode$Logo;->mLogoBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v24, v10

    iget-object v10, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mLogo:Lcom/samsung/android/transcode/core/Encode$Logo;

    iget v10, v10, Lcom/samsung/android/transcode/core/Encode$Logo;->mLogoDrawWidth:I

    move-object/from16 v25, v11

    iget-object v11, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mLogo:Lcom/samsung/android/transcode/core/Encode$Logo;

    iget v11, v11, Lcom/samsung/android/transcode/core/Encode$Logo;->mLogoDrawHeight:I

    invoke-virtual {v2, v5, v10, v11}, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;->loadTexture(Landroid/graphics/Bitmap;II)I

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mLogo:Lcom/samsung/android/transcode/core/Encode$Logo;

    iget-object v2, v2, Lcom/samsung/android/transcode/core/Encode$Logo;->mLogoBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mLogo:Lcom/samsung/android/transcode/core/Encode$Logo;

    const/4 v5, 0x0

    iput-object v5, v2, Lcom/samsung/android/transcode/core/Encode$Logo;->mLogoBitmap:Landroid/graphics/Bitmap;

    iget v2, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mOutputWidth:I

    const/4 v5, 0x1

    shr-int/2addr v2, v5

    int-to-float v2, v2

    iget-object v10, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mLogo:Lcom/samsung/android/transcode/core/Encode$Logo;

    iget v10, v10, Lcom/samsung/android/transcode/core/Encode$Logo;->mTopX:I

    iget-object v11, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mLogo:Lcom/samsung/android/transcode/core/Encode$Logo;

    iget v11, v11, Lcom/samsung/android/transcode/core/Encode$Logo;->mLogoDrawWidth:I

    shr-int/2addr v11, v5

    add-int/2addr v10, v11

    int-to-float v10, v10

    const/high16 v11, 0x3f800000    # 1.0f

    mul-float/2addr v10, v11

    sub-float/2addr v2, v10

    neg-float v2, v2

    iget v10, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mOutputWidth:I

    shr-int/2addr v10, v5

    int-to-float v10, v10

    div-float/2addr v2, v10

    iget v10, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mOutputHeight:I

    shr-int/2addr v10, v5

    int-to-float v10, v10

    iget-object v11, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mLogo:Lcom/samsung/android/transcode/core/Encode$Logo;

    iget v11, v11, Lcom/samsung/android/transcode/core/Encode$Logo;->mTopY:I

    move/from16 v27, v12

    iget-object v12, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mLogo:Lcom/samsung/android/transcode/core/Encode$Logo;

    iget v12, v12, Lcom/samsung/android/transcode/core/Encode$Logo;->mLogoDrawHeight:I

    shr-int/2addr v12, v5

    add-int/2addr v11, v12

    int-to-float v11, v11

    const/high16 v12, 0x3f800000    # 1.0f

    mul-float/2addr v11, v12

    sub-float/2addr v10, v11

    iget v11, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mOutputHeight:I

    shr-int/2addr v11, v5

    int-to-float v5, v11

    div-float/2addr v10, v5

    iget v5, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mInputOrientationDegrees:I

    const/16 v11, 0x5a

    const/high16 v12, -0x40800000    # -1.0f

    if-eq v5, v11, :cond_7

    const/16 v11, 0xb4

    if-eq v5, v11, :cond_6

    const/16 v11, 0x10e

    if-eq v5, v11, :cond_5

    goto :goto_4

    :cond_5
    mul-float/2addr v2, v12

    goto :goto_4

    :cond_6
    mul-float/2addr v2, v12

    mul-float/2addr v10, v12

    goto :goto_4

    :cond_7
    mul-float/2addr v10, v12

    nop

    :goto_4
    iget-object v5, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mLogoRenderer:Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;

    invoke-virtual {v5, v2, v10}, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;->setProjectionMatrixTranslate(FF)V

    iget-object v5, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mLogoRenderer:Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;

    iget-object v11, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mLogo:Lcom/samsung/android/transcode/core/Encode$Logo;

    iget v11, v11, Lcom/samsung/android/transcode/core/Encode$Logo;->mLogoDrawWidth:I

    int-to-float v11, v11

    const/high16 v12, 0x3f800000    # 1.0f

    mul-float/2addr v11, v12

    iget v12, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mOutputWidth:I

    int-to-float v12, v12

    div-float/2addr v11, v12

    iget-object v12, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mLogo:Lcom/samsung/android/transcode/core/Encode$Logo;

    iget v12, v12, Lcom/samsung/android/transcode/core/Encode$Logo;->mLogoDrawHeight:I

    int-to-float v12, v12

    move/from16 v28, v2

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v12, v2

    iget v2, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mOutputHeight:I

    int-to-float v2, v2

    div-float/2addr v12, v2

    invoke-virtual {v5, v11, v12}, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;->setProjectionMatrixScale(FF)V

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mLogoRenderer:Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;

    iget v5, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mInputOrientationDegrees:I

    int-to-float v5, v5

    const/4 v11, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-virtual {v2, v5, v11, v11, v12}, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;->setProjectionMatrixRotate(FFFF)V

    goto :goto_5

    :cond_8
    move-object/from16 v23, v5

    move-object/from16 v24, v10

    move-object/from16 v25, v11

    move/from16 v27, v12

    :goto_5
    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mRenderer:Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;

    iget-object v5, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mInputFilePaths:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget v10, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mOutputWidth:I

    iget v11, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mOutputHeight:I

    invoke-virtual {v2, v5, v10, v11}, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;->loadTexture(Ljava/lang/String;II)I

    move v5, v3

    move/from16 v2, v17

    move/from16 v3, v18

    :goto_6
    if-eqz v16, :cond_a

    if-nez v15, :cond_9

    goto :goto_7

    :cond_9
    move/from16 v32, v1

    move/from16 v42, v3

    move/from16 v41, v5

    move-object/from16 v40, v6

    move v12, v13

    move-object/from16 v3, v24

    move-object/from16 v5, v25

    goto/16 :goto_1b

    :cond_a
    :goto_7
    iget-boolean v10, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mUserStop:Z

    const/4 v11, -0x1

    if-nez v10, :cond_18

    if-nez v16, :cond_18

    if-eqz v25, :cond_c

    iget-boolean v10, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mMuxerStarted:Z

    if-eqz v10, :cond_b

    goto :goto_8

    :cond_b
    move/from16 v29, v13

    goto/16 :goto_b

    :cond_c
    :goto_8
    iget-object v10, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    move/from16 v29, v13

    const-wide/16 v12, 0x2710

    invoke-virtual {v10, v7, v12, v13}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v10

    if-ne v10, v11, :cond_d

    const-string v12, "TranscodeLib"

    const-string v13, "Video encoder output try again later "

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    :cond_d
    const/4 v12, -0x3

    if-ne v10, v12, :cond_e

    const-string v12, "TranscodeLib"

    const-string v13, "Video encoder output buffer changed"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v12, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v12}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v12

    nop

    move-object/from16 v21, v12

    goto/16 :goto_b

    :cond_e
    const/4 v12, -0x2

    if-ne v10, v12, :cond_10

    const-string v12, "TranscodeLib"

    const-string v13, "Video encoder output buffer changed"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v12, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mVideoTrackIndex:I

    if-gez v12, :cond_f

    iget-object v12, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v12}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v12

    goto/16 :goto_c

    :cond_f
    new-instance v11, Ljava/lang/RuntimeException;

    const-string v12, "Video encoder output format changed after muxer has started"

    invoke-direct {v11, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v11

    :cond_10
    if-gez v10, :cond_11

    const-string v12, "TranscodeLib"

    const-string v13, "Unexpected result from video encoder dequeue output format."

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    :cond_11
    aget-object v12, v21, v10

    if-eqz v12, :cond_17

    iget v13, v7, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v13, v13, 0x2

    if-eqz v13, :cond_12

    const-string v13, "TranscodeLib"

    const-string v11, "ignoring BUFFER_FLAG_CODEC_CONFIG"

    invoke-static {v13, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x0

    iput v11, v7, Landroid/media/MediaCodec$BufferInfo;->size:I

    :cond_12
    iget v11, v7, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-eqz v11, :cond_14

    iget-boolean v11, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mMuxerStarted:Z

    if-eqz v11, :cond_13

    iget v11, v7, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v12, v11}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget v11, v7, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v13, v7, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v11, v13

    invoke-virtual {v12, v11}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget-object v11, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mMuxer:Landroid/media/MediaMuxer;

    iget v13, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mVideoTrackIndex:I

    invoke-virtual {v11, v13, v12, v7}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    const-string v11, "TranscodeLib"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v30, v12

    const-string/jumbo v12, "sent "

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v7, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " bytes to muxer"

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    :cond_13
    move-object/from16 v30, v12

    new-instance v11, Ljava/lang/RuntimeException;

    const-string/jumbo v12, "muxer hasn\'t started. We cannot write video encoder output."

    invoke-direct {v11, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v11

    :cond_14
    move-object/from16 v30, v12

    :goto_9
    iget-object v11, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    const/4 v12, 0x0

    invoke-virtual {v11, v10, v12}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    iget v11, v7, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v11, v11, 0x4

    if-eqz v11, :cond_16

    iget v11, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mFramesToWrite:I

    if-le v3, v11, :cond_15

    const-string v11, "TranscodeLib"

    const-string/jumbo v12, "video endcoder end of stream reached"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    :cond_15
    const-string v11, "TranscodeLib"

    const-string/jumbo v12, "reached video encoder end of stream unexpectedly"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_a
    const/4 v11, 0x1

    nop

    move/from16 v16, v11

    goto :goto_b

    :cond_16
    nop

    move/from16 v13, v29

    goto/16 :goto_7

    :cond_17
    move-object/from16 v30, v12

    new-instance v11, Ljava/lang/RuntimeException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "video encoder OutputBuffer "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " is null"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v11

    :cond_18
    move/from16 v29, v13

    :goto_b
    move-object/from16 v12, v25

    :goto_c
    iget-boolean v10, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mUserStop:Z

    if-nez v10, :cond_1e

    iget v10, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mFramesToWrite:I

    if-ge v3, v10, :cond_1e

    if-eqz v12, :cond_1a

    iget-boolean v10, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mMuxerStarted:Z

    if-eqz v10, :cond_19

    goto :goto_d

    :cond_19
    move/from16 v32, v1

    move-object/from16 v31, v12

    move/from16 v12, v29

    goto/16 :goto_e

    :cond_1a
    :goto_d
    const/16 v10, 0x4000

    invoke-static {v10}, Landroid/opengl/GLES20;->glClear(I)V

    iget-object v10, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mRenderer:Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;

    invoke-virtual {v10}, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;->draw()V

    iget-boolean v10, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mLogoPresent:Z

    if-eqz v10, :cond_1b

    rem-int v10, v3, v1

    iget v11, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mOutputVideoFrameRate:I

    if-ge v10, v11, :cond_1b

    iget-object v10, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mLogoRenderer:Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;

    invoke-virtual {v10}, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;->draw()V

    :cond_1b
    iget-object v10, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mInputSurface:Lcom/samsung/android/transcode/surfaces/InputSurface;

    move-object/from16 v31, v12

    invoke-virtual {v0, v3}, Lcom/samsung/android/transcode/core/EncodeImages;->computePresentationTimeNsec(I)J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Lcom/samsung/android/transcode/surfaces/InputSurface;->setPresentationTime(J)V

    const-string v10, "TranscodeLib"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "sending frame "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " to video encoder"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mInputSurface:Lcom/samsung/android/transcode/surfaces/InputSurface;

    invoke-virtual {v10}, Lcom/samsung/android/transcode/surfaces/InputSurface;->swapBuffers()Z

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v10, v19, 0x1

    iget v11, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mFramesPerImage:I

    if-ne v10, v11, :cond_1d

    const/4 v10, 0x0

    add-int/lit8 v11, v5, 0x1

    move/from16 v12, v29

    if-eq v11, v12, :cond_1c

    add-int/lit8 v5, v5, 0x1

    iget-object v11, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mRenderer:Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;

    iget-object v13, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mInputFilePaths:Ljava/util/ArrayList;

    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    move/from16 v32, v1

    iget v1, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mOutputWidth:I

    move/from16 v33, v3

    iget v3, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mOutputHeight:I

    invoke-virtual {v11, v13, v1, v3}, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;->loadTexture(Ljava/lang/String;II)I

    move/from16 v19, v10

    move/from16 v3, v33

    goto :goto_f

    :cond_1c
    move/from16 v32, v1

    move/from16 v33, v3

    move/from16 v19, v10

    goto :goto_f

    :cond_1d
    move/from16 v32, v1

    move/from16 v33, v3

    move/from16 v12, v29

    move/from16 v19, v10

    goto :goto_f

    :cond_1e
    move/from16 v32, v1

    move-object/from16 v31, v12

    move/from16 v12, v29

    :goto_e
    iget-boolean v1, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mUserStop:Z

    if-nez v1, :cond_1f

    iget v1, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mFramesToWrite:I

    if-ne v3, v1, :cond_1f

    const-string v1, "TranscodeLib"

    const-string/jumbo v10, "sending EOS to video encoder"

    invoke-static {v1, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->signalEndOfInputStream()V

    add-int/lit8 v3, v3, 0x1

    :cond_1f
    :goto_f
    iget-boolean v1, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mCopyAudio:Z

    if-eqz v1, :cond_3c

    iget-boolean v1, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mUserStop:Z

    if-nez v1, :cond_25

    if-nez v27, :cond_25

    if-eqz v24, :cond_21

    iget-boolean v1, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mMuxerStarted:Z

    if-eqz v1, :cond_20

    goto :goto_11

    :cond_20
    :goto_10
    move/from16 v41, v5

    move-object/from16 v40, v6

    goto/16 :goto_13

    :cond_21
    :goto_11
    iget-object v1, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mInputAudioDecoder:Landroid/media/MediaCodec;

    const-wide/16 v10, 0x2710

    invoke-virtual {v1, v10, v11}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v1

    const/4 v10, -0x1

    if-ne v1, v10, :cond_22

    const-string v10, "TranscodeLib"

    const-string v11, "audio decoder input try again later"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    :cond_22
    aget-object v10, v6, v1

    iget-object v11, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mAudioExtractor:Landroid/media/MediaExtractor;

    const/4 v13, 0x0

    invoke-virtual {v11, v10, v13}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v11

    iget-object v13, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v13}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v17

    move/from16 v41, v5

    move-object/from16 v40, v6

    iget-wide v5, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mEncodedOutputDurationMs:J

    const-wide/16 v25, 0x3e8

    mul-long v5, v5, v25

    cmp-long v5, v17, v5

    if-gtz v5, :cond_24

    if-lez v11, :cond_23

    iget-object v5, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mInputAudioDecoder:Landroid/media/MediaCodec;

    const/16 v35, 0x0

    iget-object v6, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v6}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v39

    move-object/from16 v33, v5

    move/from16 v34, v1

    move/from16 v36, v11

    move-wide/from16 v37, v17

    invoke-virtual/range {v33 .. v39}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    :cond_23
    iget-object v5, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v5}, Landroid/media/MediaExtractor;->advance()Z

    move-result v5

    const/4 v6, 0x1

    xor-int/2addr v5, v6

    goto :goto_12

    :cond_24
    const/4 v5, 0x1

    :goto_12
    move/from16 v27, v5

    if-eqz v27, :cond_26

    const-string v5, "TranscodeLib"

    const-string v6, "audio decoder sending EOS"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mInputAudioDecoder:Landroid/media/MediaCodec;

    const/16 v35, 0x0

    const/16 v36, 0x0

    const-wide/16 v37, 0x0

    const/16 v39, 0x4

    move-object/from16 v33, v5

    move/from16 v34, v1

    invoke-virtual/range {v33 .. v39}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    goto :goto_13

    :cond_25
    move/from16 v41, v5

    move-object/from16 v40, v6

    :cond_26
    :goto_13
    iget-boolean v1, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mUserStop:Z

    if-nez v1, :cond_2d

    if-nez v14, :cond_2d

    const/4 v1, -0x1

    if-ne v2, v1, :cond_2d

    if-eqz v24, :cond_27

    iget-boolean v1, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mMuxerStarted:Z

    if-eqz v1, :cond_2d

    :cond_27
    iget-object v1, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mInputAudioDecoder:Landroid/media/MediaCodec;

    const-wide/16 v5, 0x2710

    invoke-virtual {v1, v8, v5, v6}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v1

    const/4 v5, -0x1

    if-ne v1, v5, :cond_28

    const-string v5, "TranscodeLib"

    const-string v6, "audio decoder output buffer try again later"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14

    :cond_28
    const/4 v5, -0x3

    if-ne v1, v5, :cond_29

    const-string v5, "TranscodeLib"

    const-string v6, "audio decoder: output buffers changed"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mInputAudioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v5}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v23

    goto :goto_14

    :cond_29
    const/4 v5, -0x2

    if-ne v1, v5, :cond_2a

    const-string v5, "TranscodeLib"

    const-string v6, "audio decoder: output format changed: "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14

    :cond_2a
    if-gez v1, :cond_2b

    const-string v5, "TranscodeLib"

    const-string v6, "Unexpected result from audio decoder dequeue output format."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14

    :cond_2b
    iget v5, v8, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_2c

    const-string v5, "TranscodeLib"

    const-string v6, "audio decoder: codec config buffer"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mInputAudioDecoder:Landroid/media/MediaCodec;

    const/4 v6, 0x0

    invoke-virtual {v5, v1, v6}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    goto :goto_14

    :cond_2c
    move v2, v1

    nop

    :cond_2d
    :goto_14
    iget-boolean v1, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mUserStop:Z

    if-nez v1, :cond_30

    const/4 v1, -0x1

    if-eq v2, v1, :cond_30

    iget-object v5, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    const-wide/16 v10, 0x2710

    invoke-virtual {v5, v10, v11}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v5

    if-ne v5, v1, :cond_2e

    const-string v1, "TranscodeLib"

    const-string v6, "audio encoder input buffer try again later"

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    nop

    move/from16 v42, v3

    goto :goto_16

    :cond_2e
    aget-object v1, v4, v5

    iget v6, v8, Landroid/media/MediaCodec$BufferInfo;->size:I

    iget-wide v10, v8, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    if-ltz v6, :cond_2f

    aget-object v13, v23, v2

    invoke-virtual {v13}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v13

    move/from16 v42, v3

    iget v3, v8, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v13, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget v3, v8, Landroid/media/MediaCodec$BufferInfo;->offset:I

    add-int/2addr v3, v6

    invoke-virtual {v13, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v1, v13}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    iget-object v3, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    const/16 v35, 0x0

    move-object/from16 v43, v1

    iget v1, v8, Landroid/media/MediaCodec$BufferInfo;->flags:I

    move-object/from16 v33, v3

    move/from16 v34, v5

    move/from16 v36, v6

    move-wide/from16 v37, v10

    move/from16 v39, v1

    invoke-virtual/range {v33 .. v39}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    goto :goto_15

    :cond_2f
    move-object/from16 v43, v1

    move/from16 v42, v3

    :goto_15
    iget-object v1, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mInputAudioDecoder:Landroid/media/MediaCodec;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    const/4 v2, -0x1

    iget v1, v8, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_31

    const-string v1, "TranscodeLib"

    const-string v3, "audio decoder: EOS"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v14, 0x1

    goto :goto_16

    :cond_30
    move/from16 v42, v3

    :cond_31
    :goto_16
    iget-boolean v1, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mUserStop:Z

    if-nez v1, :cond_3b

    if-nez v15, :cond_3b

    if-eqz v24, :cond_32

    iget-boolean v1, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mMuxerStarted:Z

    if-eqz v1, :cond_3b

    :cond_32
    iget-object v1, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    const-wide/16 v5, 0x2710

    invoke-virtual {v1, v9, v5, v6}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_33

    const-string v3, "TranscodeLib"

    const-string v5, "audio encoder output buffer try again later"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_17

    :cond_33
    const/4 v3, -0x3

    if-ne v1, v3, :cond_34

    const-string v3, "TranscodeLib"

    const-string v5, "audio encoder: output buffers changed"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v3}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v3

    nop

    move-object/from16 v22, v3

    goto :goto_17

    :cond_34
    const/4 v3, -0x2

    if-ne v1, v3, :cond_36

    iget v3, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mAudioTrackIndex:I

    if-gez v3, :cond_35

    iget-object v3, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v3}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v3

    const-string v5, "TranscodeLib"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "audio encoder: output format changed "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18

    :cond_35
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v5, "Audio encoder output format changed after muxer is started."

    invoke-direct {v3, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_36
    if-gez v1, :cond_37

    const-string v3, "TranscodeLib"

    const-string v5, "Unexpected result from audio encoder dequeue output format."

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17

    :cond_37
    aget-object v3, v22, v1

    iget v5, v9, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_38

    const-string v5, "TranscodeLib"

    const-string v6, "audio encoder ignoring BUFFER_FLAG_CODEC_CONFIG"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    const/4 v6, 0x0

    invoke-virtual {v5, v1, v6}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    goto :goto_17

    :cond_38
    iget v5, v9, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-eqz v5, :cond_39

    iget-object v5, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mMuxer:Landroid/media/MediaMuxer;

    iget v6, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mAudioTrackIndex:I

    invoke-virtual {v5, v6, v3, v9}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    :cond_39
    iget v5, v9, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_3a

    const-string v5, "TranscodeLib"

    const-string v6, "audio encoder: EOS"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v15, 0x1

    :cond_3a
    iget-object v5, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    const/4 v6, 0x0

    invoke-virtual {v5, v1, v6}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    nop

    :cond_3b
    :goto_17
    move-object/from16 v3, v24

    goto :goto_18

    :cond_3c
    move/from16 v42, v3

    move/from16 v41, v5

    move-object/from16 v40, v6

    move-object/from16 v3, v24

    :goto_18
    iget-boolean v1, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mUserStop:Z

    if-nez v1, :cond_40

    iget-boolean v1, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mMuxerStarted:Z

    if-nez v1, :cond_40

    if-eqz v31, :cond_40

    iget-boolean v1, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mCopyAudio:Z

    if-eqz v1, :cond_3e

    if-eqz v3, :cond_3d

    goto :goto_19

    :cond_3d
    move-object/from16 v5, v31

    const/4 v1, 0x1

    goto :goto_1a

    :cond_3e
    :goto_19
    iget-object v1, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mMuxer:Landroid/media/MediaMuxer;

    move-object/from16 v5, v31

    invoke-virtual {v1, v5}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v1

    iput v1, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mVideoTrackIndex:I

    iget-boolean v1, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mCopyAudio:Z

    if-eqz v1, :cond_3f

    iget-object v1, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v1, v3}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v1

    iput v1, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mAudioTrackIndex:I

    :cond_3f
    iget-object v1, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mMuxer:Landroid/media/MediaMuxer;

    iget v6, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mInputOrientationDegrees:I

    invoke-virtual {v1, v6}, Landroid/media/MediaMuxer;->setOrientationHint(I)V

    iget-object v1, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v1}, Landroid/media/MediaMuxer;->start()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mMuxerStarted:Z

    goto :goto_1a

    :cond_40
    move-object/from16 v5, v31

    const/4 v1, 0x1

    :goto_1a
    iget-boolean v6, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mUserStop:Z

    if-eqz v6, :cond_41

    const-string v1, "TranscodeLib"

    const-string v6, "Encoding abruptly stopped."

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    nop

    :goto_1b
    return-void

    :cond_41
    move-object/from16 v24, v3

    move-object/from16 v25, v5

    move v13, v12

    move/from16 v1, v32

    move-object/from16 v6, v40

    move/from16 v5, v41

    move/from16 v3, v42

    goto/16 :goto_6
.end method

.method public startHDREncoding()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public startTransRewriting()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public stop()V
    .locals 4

    const-string v0, "TranscodeLib"

    const-string v1, "Stop method called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mStopLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mEncoding:Z

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mUserStop:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v1, "TranscodeLib"

    const-string v2, "Calling wait on stop lock."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mStopLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    const-string v2, "TranscodeLib"

    const-string v3, "Stop lock interrupted."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

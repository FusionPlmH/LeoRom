.class public Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;
.super Ljava/lang/Object;
.source "EncoderInterface.java"


# static fields
.field private static final MIME_TYPE:Ljava/lang/String; = "video/avc"

.field private static final TAG:Ljava/lang/String; = "EncoderInterface"

.field private static final VERBOSE:Z = true


# instance fields
.field EncBitRate:I

.field FRAME_RATE:I

.field IFRAME_INTERVAL:I

.field TIMEOUT_USEC:I

.field frameEncoded:I

.field private mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

.field private mEncoder:Landroid/media/MediaCodec;

.field private mMuxer:Landroid/media/MediaMuxer;

.field private mMuxerStarted:Z

.field private mOrientation:I

.field private mTrackIndex:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->TIMEOUT_USEC:I

    const v0, 0x5b8d80

    iput v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->EncBitRate:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->IFRAME_INTERVAL:I

    return-void
.end method

.method private drainEncoder(Z[B)V
    .locals 21

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "EncoderInterface"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "drainEncoder("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v1

    iget-object v4, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v4}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v4

    iget-object v5, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v5}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v5

    :cond_0
    :goto_0
    const/4 v6, -0x1

    const-wide/16 v7, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz v1, :cond_1

    iget-object v11, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v11, v7, v8}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v7

    if-ltz v7, :cond_3

    iget-object v12, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->mEncoder:Landroid/media/MediaCodec;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    const/16 v18, 0x4

    move v13, v7

    invoke-virtual/range {v12 .. v18}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    const-string v8, "EncoderInterface"

    const-string/jumbo v11, "sending EOS to encoder"

    invoke-static {v8, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    if-nez v3, :cond_3

    iget-object v11, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v11, v7, v8}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v7

    if-ltz v7, :cond_2

    aget-object v8, v4, v7

    invoke-virtual {v8, v10}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v8, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v8, v10}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget v11, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->frameEncoded:I

    add-int/lit8 v12, v11, 0x1

    iput v12, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->frameEncoded:I

    invoke-virtual {v0, v11}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->getPresentationTimeUs(I)J

    move-result-wide v14

    const-string v11, "EncoderInterface"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "ts of frame "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v13, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->frameEncoded:I

    sub-int/2addr v13, v9

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v12, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->mEncoder:Landroid/media/MediaCodec;

    const/4 v11, 0x0

    array-length v13, v2

    const/16 v18, 0x0

    move/from16 v16, v13

    move v13, v7

    move-wide/from16 v19, v14

    move v14, v11

    move/from16 v15, v16

    move-wide/from16 v16, v19

    invoke-virtual/range {v12 .. v18}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    if-ne v7, v6, :cond_3

    const-string v8, "EncoderInterface"

    const-string/jumbo v11, "no input available, spinning to encode buffer"

    invoke-static {v8, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    iget-object v7, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->mEncoder:Landroid/media/MediaCodec;

    iget-object v8, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v11, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->TIMEOUT_USEC:I

    int-to-long v11, v11

    invoke-virtual {v7, v8, v11, v12}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v7

    if-ne v7, v6, :cond_5

    if-nez v1, :cond_4

    if-eqz v3, :cond_4

    goto/16 :goto_3

    :cond_4
    const-string v6, "EncoderInterface"

    const-string/jumbo v8, "no output available, spinning to await EOS"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_5
    const/4 v6, -0x3

    if-ne v7, v6, :cond_6

    iget-object v6, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v6}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v5

    goto/16 :goto_0

    :cond_6
    const/4 v6, -0x2

    if-ne v7, v6, :cond_8

    iget-boolean v6, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->mMuxerStarted:Z

    if-nez v6, :cond_7

    iget-object v6, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v6}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v6

    const-string v8, "EncoderInterface"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "encoder output format changed: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v8, v6}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v8

    iput v8, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->mTrackIndex:I

    iget-object v8, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v8}, Landroid/media/MediaMuxer;->start()V

    iput-boolean v9, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->mMuxerStarted:Z

    goto/16 :goto_0

    :cond_7
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v8, "format changed twice"

    invoke-direct {v6, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_8
    if-gez v7, :cond_9

    const-string v6, "EncoderInterface"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "unexpected result from encoder.dequeueOutputBuffer: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_9
    aget-object v6, v5, v7

    if-eqz v6, :cond_e

    iget-object v8, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v8, v8, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v8, v8, 0x2

    if-eqz v8, :cond_a

    const-string v8, "EncoderInterface"

    const-string v9, "ignoring BUFFER_FLAG_CODEC_CONFIG"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iput v10, v8, Landroid/media/MediaCodec$BufferInfo;->size:I

    :cond_a
    iget-object v8, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v8, v8, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-eqz v8, :cond_c

    iget-boolean v8, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->mMuxerStarted:Z

    if-eqz v8, :cond_b

    iget-object v8, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v8, v8, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v6, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v8, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v8, v8, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget-object v9, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v9, v9, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v8, v9

    invoke-virtual {v6, v8}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget-object v8, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->mMuxer:Landroid/media/MediaMuxer;

    iget v9, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->mTrackIndex:I

    iget-object v11, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    invoke-virtual {v8, v9, v6, v11}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    const-string v8, "EncoderInterface"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "sent "

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v11, v11, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " bytes to muxer"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_b
    new-instance v8, Ljava/lang/RuntimeException;

    const-string/jumbo v9, "muxer hasn\'t started"

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_c
    :goto_2
    iget-object v8, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v8, v7, v10}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    iget-object v8, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v8, v8, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v8, v8, 0x4

    if-eqz v8, :cond_0

    if-nez v1, :cond_d

    const-string v8, "EncoderInterface"

    const-string/jumbo v9, "reached end of stream unexpectedly"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_d
    const-string v8, "EncoderInterface"

    const-string v9, "end of stream reached"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    return-void

    :cond_e
    new-instance v8, Ljava/lang/RuntimeException;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "encoderOutputBuffer "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " was null"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8
.end method

.method private prepareEncoder(IIIIIILjava/lang/String;)I
    .locals 5

    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    const-string/jumbo v0, "video/avc"

    invoke-static {v0, p1, p2}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v0

    const-string v1, "color-format"

    const/16 v2, 0x15

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v1, "bitrate"

    invoke-virtual {v0, v1, p3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v1, "frame-rate"

    invoke-virtual {v0, v1, p4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v1, "i-frame-interval"

    invoke-virtual {v0, v1, p5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v1, "EncoderInterface"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "format: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    const-string/jumbo v1, "video/avc"

    invoke-static {v1}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->mEncoder:Landroid/media/MediaCodec;

    iget-object v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->mEncoder:Landroid/media/MediaCodec;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v3, v2}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    iget-object v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->start()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->mEncoder:Landroid/media/MediaCodec;

    const/4 v2, -0x1

    if-nez v1, :cond_0

    const-string v1, "EncoderInterface"

    const-string/jumbo v3, "mEncoder is null returning"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    const-string v1, "EncoderInterface"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Output file is "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1
    new-instance v1, Landroid/media/MediaMuxer;

    const/4 v3, 0x0

    invoke-direct {v1, p7, v3}, Landroid/media/MediaMuxer;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->mMuxer:Landroid/media/MediaMuxer;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    nop

    iput v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->mTrackIndex:I

    iput-boolean v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->mMuxerStarted:Z

    return v3

    :catch_1
    move-exception v1

    const-string v3, "EncoderInterface"

    const-string v4, "MediaMuxer creation failed"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method private releaseEncoder()V
    .locals 2

    const-string v0, "EncoderInterface"

    const-string/jumbo v1, "releasing encoder objects"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->mEncoder:Landroid/media/MediaCodec;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    iget-object v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    iput-object v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->mEncoder:Landroid/media/MediaCodec;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->mMuxer:Landroid/media/MediaMuxer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->stop()V

    iget-object v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->release()V

    iput-object v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->mMuxer:Landroid/media/MediaMuxer;

    :cond_1
    return-void
.end method


# virtual methods
.method public deinit()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->drainEncoder(Z[B)V

    invoke-direct {p0}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->releaseEncoder()V

    return-void
.end method

.method public encode([B)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->drainEncoder(Z[B)V

    return-void
.end method

.method getPresentationTimeUs(I)J
    .locals 4

    int-to-long v0, p1

    iget v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->FRAME_RATE:I

    const v3, 0xf4240

    div-int/2addr v3, v2

    int-to-long v2, v3

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public init(IIIIIILjava/lang/String;I)I
    .locals 3

    const/4 v0, -0x1

    if-eqz p7, :cond_2

    invoke-virtual {p7}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x15

    if-eq p6, v1, :cond_1

    const-string v1, "EncoderInterface"

    const-string v2, "color format not supported as of now"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    iput p4, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->FRAME_RATE:I

    iput p3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->EncBitRate:I

    iput p8, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->mOrientation:I

    const-string v0, "EncoderInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "video/avc output "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " @"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p7}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->prepareEncoder(IIIIIILjava/lang/String;)I

    move-result v0

    return v0

    :cond_2
    :goto_0
    const-string v1, "EncoderInterface"

    const-string/jumbo v2, "wrong arguments to init"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public setTimeOutUs(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->TIMEOUT_USEC:I

    return-void
.end method

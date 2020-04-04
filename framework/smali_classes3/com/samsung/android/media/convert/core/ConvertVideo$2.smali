.class Lcom/samsung/android/media/convert/core/ConvertVideo$2;
.super Landroid/media/MediaCodec$Callback;
.source "ConvertVideo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/media/convert/core/ConvertVideo;->startConverting()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/media/convert/core/ConvertVideo;


# direct methods
.method constructor <init>(Lcom/samsung/android/media/convert/core/ConvertVideo;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/media/convert/core/ConvertVideo$2;->this$0:Lcom/samsung/android/media/convert/core/ConvertVideo;

    invoke-direct {p0}, Landroid/media/MediaCodec$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaCodec;Landroid/media/MediaCodec$CodecException;)V
    .locals 2

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "[dec]onError"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public onInputBufferAvailable(Landroid/media/MediaCodec;I)V
    .locals 20

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/media/convert/core/ConvertVideo$2;->this$0:Lcom/samsung/android/media/convert/core/ConvertVideo;

    iget-boolean v1, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mUserStop:Z

    if-eqz v1, :cond_0

    const-string v1, "SemVideoConverter"

    const-string v2, "[dec]onInputBufferAvailable :mUserStop "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v1, v0, Lcom/samsung/android/media/convert/core/ConvertVideo$2;->this$0:Lcom/samsung/android/media/convert/core/ConvertVideo;

    iget-object v1, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mInputVideoDecoder:Landroid/media/MediaCodec;

    move/from16 v9, p2

    invoke-virtual {v1, v9}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iget-object v2, v0, Lcom/samsung/android/media/convert/core/ConvertVideo$2;->this$0:Lcom/samsung/android/media/convert/core/ConvertVideo;

    invoke-static {v2}, Lcom/samsung/android/media/convert/core/ConvertVideo;->access$100(Lcom/samsung/android/media/convert/core/ConvertVideo;)Landroid/media/MediaExtractor;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v10

    if-ltz v10, :cond_4

    iget-object v2, v0, Lcom/samsung/android/media/convert/core/ConvertVideo$2;->this$0:Lcom/samsung/android/media/convert/core/ConvertVideo;

    invoke-static {v2}, Lcom/samsung/android/media/convert/core/ConvertVideo;->access$100(Lcom/samsung/android/media/convert/core/ConvertVideo;)Landroid/media/MediaExtractor;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v11

    iget-object v2, v0, Lcom/samsung/android/media/convert/core/ConvertVideo$2;->this$0:Lcom/samsung/android/media/convert/core/ConvertVideo;

    invoke-static {v2}, Lcom/samsung/android/media/convert/core/ConvertVideo;->access$100(Lcom/samsung/android/media/convert/core/ConvertVideo;)Landroid/media/MediaExtractor;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v13

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    const/16 v5, 0xff

    and-int/2addr v4, v5

    shl-int/lit8 v4, v4, 0x8

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    and-int/2addr v6, v5

    or-int/2addr v4, v6

    int-to-short v4, v4

    shr-int/lit8 v6, v4, 0xf

    const/4 v7, 0x1

    and-int/2addr v6, v7

    if-nez v6, :cond_3

    shr-int/lit8 v6, v4, 0x9

    and-int/lit8 v6, v6, 0x3f

    const/16 v8, 0x27

    if-ne v6, v8, :cond_3

    const/4 v6, 0x0

    move v8, v6

    move v6, v3

    :goto_0
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    add-int/2addr v8, v6

    if-eq v6, v5, :cond_2

    const/4 v14, 0x4

    if-ne v8, v14, :cond_3

    move v14, v6

    move v6, v3

    :goto_1
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v14

    add-int/2addr v6, v14

    if-eq v14, v5, :cond_1

    new-array v5, v6, [B

    invoke-virtual {v1, v5, v3, v6}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    iget-object v15, v0, Lcom/samsung/android/media/convert/core/ConvertVideo$2;->this$0:Lcom/samsung/android/media/convert/core/ConvertVideo;

    invoke-static {v15}, Lcom/samsung/android/media/convert/core/ConvertVideo;->access$200(Lcom/samsung/android/media/convert/core/ConvertVideo;)Ljava/util/HashMap;

    move-result-object v15

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v15, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, v0, Lcom/samsung/android/media/convert/core/ConvertVideo$2;->this$0:Lcom/samsung/android/media/convert/core/ConvertVideo;

    invoke-static {v7}, Lcom/samsung/android/media/convert/core/ConvertVideo;->access$300(Lcom/samsung/android/media/convert/core/ConvertVideo;)Lcom/samsung/android/media/vidsol/simgp/ImgConverter;

    move-result-object v7

    sget-object v15, Lcom/samsung/android/media/vidsol/simgp/ImgConverter$PortType;->OUTPUT:Lcom/samsung/android/media/vidsol/simgp/ImgConverter$PortType;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    const/16 v16, 0x0

    aput-object v17, v3, v16

    move/from16 v18, v2

    iget-object v2, v0, Lcom/samsung/android/media/convert/core/ConvertVideo$2;->this$0:Lcom/samsung/android/media/convert/core/ConvertVideo;

    invoke-static {v2}, Lcom/samsung/android/media/convert/core/ConvertVideo;->access$200(Lcom/samsung/android/media/convert/core/ConvertVideo;)Ljava/util/HashMap;

    move-result-object v2

    move/from16 v19, v4

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v3, v4

    invoke-virtual {v7, v4, v15, v3}, Lcom/samsung/android/media/vidsol/simgp/ImgConverter;->sendMetadata(ILcom/samsung/android/media/vidsol/simgp/ImgConverter$PortType;[Ljava/lang/Object;)V

    nop

    goto :goto_2

    :cond_1
    move/from16 v19, v4

    goto :goto_1

    :cond_2
    move/from16 v19, v4

    goto :goto_0

    :cond_3
    :goto_2
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v2, v0, Lcom/samsung/android/media/convert/core/ConvertVideo$2;->this$0:Lcom/samsung/android/media/convert/core/ConvertVideo;

    iget-object v2, v2, Lcom/samsung/android/media/convert/core/ConvertVideo;->mInputVideoDecoder:Landroid/media/MediaCodec;

    const/4 v4, 0x0

    move v3, v9

    move v5, v10

    move-wide v6, v11

    move v8, v13

    invoke-virtual/range {v2 .. v8}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    iget-object v2, v0, Lcom/samsung/android/media/convert/core/ConvertVideo$2;->this$0:Lcom/samsung/android/media/convert/core/ConvertVideo;

    invoke-static {v2}, Lcom/samsung/android/media/convert/core/ConvertVideo;->access$100(Lcom/samsung/android/media/convert/core/ConvertVideo;)Landroid/media/MediaExtractor;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaExtractor;->advance()Z

    goto :goto_3

    :cond_4
    iget-object v2, v0, Lcom/samsung/android/media/convert/core/ConvertVideo$2;->this$0:Lcom/samsung/android/media/convert/core/ConvertVideo;

    iget-object v2, v2, Lcom/samsung/android/media/convert/core/ConvertVideo;->mInputVideoDecoder:Landroid/media/MediaCodec;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x4

    move v3, v9

    invoke-virtual/range {v2 .. v8}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    :goto_3
    return-void
.end method

.method public onOutputBufferAvailable(Landroid/media/MediaCodec;ILandroid/media/MediaCodec$BufferInfo;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/media/convert/core/ConvertVideo$2;->this$0:Lcom/samsung/android/media/convert/core/ConvertVideo;

    iget-boolean v0, v0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mUserStop:Z

    if-eqz v0, :cond_0

    const-string v0, "SemVideoConverter"

    const-string v1, "[dec]onOutputBufferAvailable : mUserStop "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/media/convert/core/ConvertVideo$2;->this$0:Lcom/samsung/android/media/convert/core/ConvertVideo;

    iget-object v0, v0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mInputVideoDecoder:Landroid/media/MediaCodec;

    iget v1, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, p2, v1}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    iget v0, p3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    const-string v0, "SemVideoConverter"

    const-string/jumbo v1, "reached EOS"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/media/convert/core/ConvertVideo$2;->this$0:Lcom/samsung/android/media/convert/core/ConvertVideo;

    invoke-static {v0, v2}, Lcom/samsung/android/media/convert/core/ConvertVideo;->access$002(Lcom/samsung/android/media/convert/core/ConvertVideo;Z)Z

    iget-object v0, p0, Lcom/samsung/android/media/convert/core/ConvertVideo$2;->this$0:Lcom/samsung/android/media/convert/core/ConvertVideo;

    iget-object v0, v0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mInputVideoDecoder:Landroid/media/MediaCodec;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/media/convert/core/ConvertVideo$2;->this$0:Lcom/samsung/android/media/convert/core/ConvertVideo;

    iget-object v1, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mInputVideoDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    :goto_1
    return-void
.end method

.method public onOutputFormatChanged(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/media/convert/core/ConvertVideo$2;->this$0:Lcom/samsung/android/media/convert/core/ConvertVideo;

    iget-boolean v0, v0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mUserStop:Z

    if-eqz v0, :cond_0

    const-string v0, "SemVideoConverter"

    const-string v1, "[dec]onOutputFormatChanged : mUserStop "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[dec]onOutputFormatChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/media/convert/core/ConvertVideo$2;->this$0:Lcom/samsung/android/media/convert/core/ConvertVideo;

    invoke-static {v0}, Lcom/samsung/android/media/convert/core/ConvertVideo;->access$300(Lcom/samsung/android/media/convert/core/ConvertVideo;)Lcom/samsung/android/media/vidsol/simgp/ImgConverter;

    move-result-object v0

    const/4 v1, 0x3

    sget-object v2, Lcom/samsung/android/media/vidsol/simgp/ImgConverter$PortType;->INPUT:Lcom/samsung/android/media/vidsol/simgp/ImgConverter$PortType;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/media/vidsol/simgp/ImgConverter;->sendMetadata(ILcom/samsung/android/media/vidsol/simgp/ImgConverter$PortType;[Ljava/lang/Object;)V

    return-void
.end method

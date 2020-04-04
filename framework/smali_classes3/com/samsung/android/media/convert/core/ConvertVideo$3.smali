.class Lcom/samsung/android/media/convert/core/ConvertVideo$3;
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

    iput-object p1, p0, Lcom/samsung/android/media/convert/core/ConvertVideo$3;->this$0:Lcom/samsung/android/media/convert/core/ConvertVideo;

    invoke-direct {p0}, Landroid/media/MediaCodec$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaCodec;Landroid/media/MediaCodec$CodecException;)V
    .locals 2

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "[enc]onError"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public onInputBufferAvailable(Landroid/media/MediaCodec;I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/media/convert/core/ConvertVideo$3;->this$0:Lcom/samsung/android/media/convert/core/ConvertVideo;

    iget-boolean v0, v0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mUserStop:Z

    if-eqz v0, :cond_0

    const-string v0, "SemVideoConverter"

    const-string v1, "[enc]onInputBufferAvailable : mUserStop "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    return-void
.end method

.method public onOutputBufferAvailable(Landroid/media/MediaCodec;ILandroid/media/MediaCodec$BufferInfo;)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/media/convert/core/ConvertVideo$3;->this$0:Lcom/samsung/android/media/convert/core/ConvertVideo;

    iget-boolean v0, v0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mUserStop:Z

    if-eqz v0, :cond_0

    const-string v0, "SemVideoConverter"

    const-string v1, "[enc]onInputBufferAvailable : mUserStop "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/media/convert/core/ConvertVideo$3;->this$0:Lcom/samsung/android/media/convert/core/ConvertVideo;

    iget-object v0, v0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/media/convert/core/ConvertVideo$3;->this$0:Lcom/samsung/android/media/convert/core/ConvertVideo;

    iget-object v1, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/media/convert/core/ConvertVideo$3;->this$0:Lcom/samsung/android/media/convert/core/ConvertVideo;

    iget-object v0, v0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0, p2}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget v1, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-eqz v1, :cond_1

    iget-wide v1, p3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iput-wide v1, p3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const-string v1, "SemVideoConverter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "video encoder: writing sample data timestamp "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/media/convert/core/ConvertVideo$3;->this$0:Lcom/samsung/android/media/convert/core/ConvertVideo;

    iget-object v1, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mMuxer:Landroid/media/MediaMuxer;

    iget-object v2, p0, Lcom/samsung/android/media/convert/core/ConvertVideo$3;->this$0:Lcom/samsung/android/media/convert/core/ConvertVideo;

    iget v2, v2, Lcom/samsung/android/media/convert/core/ConvertVideo;->mVideoTrackIndex:I

    invoke-virtual {v1, v2, v0, p3}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    :cond_1
    iget v1, p3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    const-string v1, "SemVideoConverter"

    const-string v2, "[enc]reached EOS"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/media/convert/core/ConvertVideo$3;->this$0:Lcom/samsung/android/media/convert/core/ConvertVideo;

    iget-object v1, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    monitor-enter v1

    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/media/convert/core/ConvertVideo$3;->this$0:Lcom/samsung/android/media/convert/core/ConvertVideo;

    iget-object v2, v2, Lcom/samsung/android/media/convert/core/ConvertVideo;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    goto :goto_0

    :catchall_1
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v2

    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/media/convert/core/ConvertVideo$3;->this$0:Lcom/samsung/android/media/convert/core/ConvertVideo;

    iget-object v1, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    return-void
.end method

.method public onOutputFormatChanged(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .locals 4

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[enc]onOutputFormatChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/media/convert/core/ConvertVideo$3;->this$0:Lcom/samsung/android/media/convert/core/ConvertVideo;

    invoke-static {v0}, Lcom/samsung/android/media/convert/core/ConvertVideo;->access$300(Lcom/samsung/android/media/convert/core/ConvertVideo;)Lcom/samsung/android/media/vidsol/simgp/ImgConverter;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/media/vidsol/simgp/ImgConverter$PortType;->OUTPUT:Lcom/samsung/android/media/vidsol/simgp/ImgConverter$PortType;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v3, 0x3

    invoke-virtual {v0, v3, v1, v2}, Lcom/samsung/android/media/vidsol/simgp/ImgConverter;->sendMetadata(ILcom/samsung/android/media/vidsol/simgp/ImgConverter$PortType;[Ljava/lang/Object;)V

    return-void
.end method

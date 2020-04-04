.class Lcom/samsung/android/media/convert/core/ConvertVideo$1;
.super Ljava/lang/Object;
.source "ConvertVideo.java"

# interfaces
.implements Lcom/samsung/android/media/vidsol/simgp/ImgConverter$OnEventListener;


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

    iput-object p1, p0, Lcom/samsung/android/media/convert/core/ConvertVideo$1;->this$0:Lcom/samsung/android/media/convert/core/ConvertVideo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILandroid/os/Bundle;)V
    .locals 2

    const-string v0, "SemVideoConverter"

    const-string v1, "[conv] onError: internal error occur, stop & release"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/media/convert/core/ConvertVideo$1;->this$0:Lcom/samsung/android/media/convert/core/ConvertVideo;

    iget-boolean v0, v0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mUserStop:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/media/convert/core/ConvertVideo$1;->this$0:Lcom/samsung/android/media/convert/core/ConvertVideo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mError:Z

    iget-object v0, p0, Lcom/samsung/android/media/convert/core/ConvertVideo$1;->this$0:Lcom/samsung/android/media/convert/core/ConvertVideo;

    iget-object v0, v0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mInputVideoDecoder:Landroid/media/MediaCodec;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/media/convert/core/ConvertVideo$1;->this$0:Lcom/samsung/android/media/convert/core/ConvertVideo;

    iget-object v1, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mInputVideoDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :goto_0
    return-void
.end method

.method public onInfo(ILandroid/os/Bundle;)V
    .locals 3

    const-string v0, "SemVideoConverter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[conv] onInfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/media/convert/core/ConvertVideo$1;->this$0:Lcom/samsung/android/media/convert/core/ConvertVideo;

    invoke-static {v0}, Lcom/samsung/android/media/convert/core/ConvertVideo;->access$000(Lcom/samsung/android/media/convert/core/ConvertVideo;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "SemVideoConverter"

    const-string v1, "[conv] reached EOS"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/media/convert/core/ConvertVideo$1;->this$0:Lcom/samsung/android/media/convert/core/ConvertVideo;

    iget-object v0, v0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/media/convert/core/ConvertVideo$1;->this$0:Lcom/samsung/android/media/convert/core/ConvertVideo;

    iget-object v1, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    return-void
.end method

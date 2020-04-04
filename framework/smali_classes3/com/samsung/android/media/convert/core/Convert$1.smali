.class Lcom/samsung/android/media/convert/core/Convert$1;
.super Ljava/lang/Thread;
.source "Convert.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/media/convert/core/Convert;->convert()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/media/convert/core/Convert;


# direct methods
.method constructor <init>(Lcom/samsung/android/media/convert/core/Convert;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/media/convert/core/Convert$1;->this$0:Lcom/samsung/android/media/convert/core/Convert;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/media/convert/core/Convert$1;->this$0:Lcom/samsung/android/media/convert/core/Convert;

    new-instance v1, Landroid/media/MediaMuxer;

    iget-object v2, p0, Lcom/samsung/android/media/convert/core/Convert$1;->this$0:Lcom/samsung/android/media/convert/core/Convert;

    iget-object v2, v2, Lcom/samsung/android/media/convert/core/Convert;->mOutputFilePath:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/media/convert/core/Convert$1;->this$0:Lcom/samsung/android/media/convert/core/Convert;

    iget v3, v3, Lcom/samsung/android/media/convert/core/Convert;->mOutputFormat:I

    invoke-direct {v1, v2, v3}, Landroid/media/MediaMuxer;-><init>(Ljava/lang/String;I)V

    iput-object v1, v0, Lcom/samsung/android/media/convert/core/Convert;->mMuxer:Landroid/media/MediaMuxer;

    iget-object v0, p0, Lcom/samsung/android/media/convert/core/Convert$1;->this$0:Lcom/samsung/android/media/convert/core/Convert;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/samsung/android/media/convert/core/Convert;->mMuxerStarted:Z

    iget-object v0, p0, Lcom/samsung/android/media/convert/core/Convert$1;->this$0:Lcom/samsung/android/media/convert/core/Convert;

    const/4 v1, -0x1

    iput v1, v0, Lcom/samsung/android/media/convert/core/Convert;->mVideoTrackIndex:I

    iget-object v0, p0, Lcom/samsung/android/media/convert/core/Convert$1;->this$0:Lcom/samsung/android/media/convert/core/Convert;

    iput v1, v0, Lcom/samsung/android/media/convert/core/Convert;->mAudioTrackIndex:I

    iget-object v0, p0, Lcom/samsung/android/media/convert/core/Convert$1;->this$0:Lcom/samsung/android/media/convert/core/Convert;

    iget-object v0, v0, Lcom/samsung/android/media/convert/core/Convert;->mConvertEventListener:Lcom/samsung/android/media/convert/core/Convert$ConvertEventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/media/convert/core/Convert$1;->this$0:Lcom/samsung/android/media/convert/core/Convert;

    iget-object v0, v0, Lcom/samsung/android/media/convert/core/Convert;->mConvertEventListener:Lcom/samsung/android/media/convert/core/Convert$ConvertEventListener;

    invoke-interface {v0}, Lcom/samsung/android/media/convert/core/Convert$ConvertEventListener;->onStarted()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/media/convert/core/Convert$1;->this$0:Lcom/samsung/android/media/convert/core/Convert;

    invoke-virtual {v0}, Lcom/samsung/android/media/convert/core/Convert;->startConverting()V

    const-string v0, "SemVideoConverter"

    const-string v1, "encoding finished."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v1, p0, Lcom/samsung/android/media/convert/core/Convert$1;->this$0:Lcom/samsung/android/media/convert/core/Convert;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/samsung/android/media/convert/core/Convert;->mError:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/media/convert/core/Convert$1;->this$0:Lcom/samsung/android/media/convert/core/Convert;

    invoke-virtual {v0}, Lcom/samsung/android/media/convert/core/Convert;->release()V

    nop

    iget-object v0, p0, Lcom/samsung/android/media/convert/core/Convert$1;->this$0:Lcom/samsung/android/media/convert/core/Convert;

    iget-object v0, v0, Lcom/samsung/android/media/convert/core/Convert;->mConvertEventListener:Lcom/samsung/android/media/convert/core/Convert$ConvertEventListener;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/media/convert/core/Convert$1;->this$0:Lcom/samsung/android/media/convert/core/Convert;

    iget-boolean v0, v0, Lcom/samsung/android/media/convert/core/Convert;->mError:Z

    if-eqz v0, :cond_1

    const-string v0, "SemVideoConverter"

    const-string v1, "Stopped by error"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/media/convert/core/Convert$1;->this$0:Lcom/samsung/android/media/convert/core/Convert;

    iget-object v0, v0, Lcom/samsung/android/media/convert/core/Convert;->mConvertEventListener:Lcom/samsung/android/media/convert/core/Convert$ConvertEventListener;

    invoke-interface {v0}, Lcom/samsung/android/media/convert/core/Convert$ConvertEventListener;->onFailed()V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/media/convert/core/Convert$1;->this$0:Lcom/samsung/android/media/convert/core/Convert;

    iget-boolean v0, v0, Lcom/samsung/android/media/convert/core/Convert;->mUserStop:Z

    if-nez v0, :cond_2

    const-string v0, "SemVideoConverter"

    const-string v1, "calling onCompleted"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/media/convert/core/Convert$1;->this$0:Lcom/samsung/android/media/convert/core/Convert;

    iget-object v0, v0, Lcom/samsung/android/media/convert/core/Convert;->mConvertEventListener:Lcom/samsung/android/media/convert/core/Convert$ConvertEventListener;

    invoke-interface {v0}, Lcom/samsung/android/media/convert/core/Convert$ConvertEventListener;->onCompleted()V

    goto :goto_1

    :cond_2
    const-string v0, "SemVideoConverter"

    const-string/jumbo v1, "user stopped. Not calling onCompleted"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/media/convert/core/Convert$1;->this$0:Lcom/samsung/android/media/convert/core/Convert;

    iget-object v0, v0, Lcom/samsung/android/media/convert/core/Convert;->mConvertEventListener:Lcom/samsung/android/media/convert/core/Convert$ConvertEventListener;

    invoke-interface {v0}, Lcom/samsung/android/media/convert/core/Convert$ConvertEventListener;->onCancelled()V

    :goto_1
    iget-object v0, p0, Lcom/samsung/android/media/convert/core/Convert$1;->this$0:Lcom/samsung/android/media/convert/core/Convert;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/samsung/android/media/convert/core/Convert;->mConvertEventListener:Lcom/samsung/android/media/convert/core/Convert$ConvertEventListener;

    :cond_3
    return-void

    :goto_2
    iget-object v1, p0, Lcom/samsung/android/media/convert/core/Convert$1;->this$0:Lcom/samsung/android/media/convert/core/Convert;

    invoke-virtual {v1}, Lcom/samsung/android/media/convert/core/Convert;->release()V

    throw v0
.end method

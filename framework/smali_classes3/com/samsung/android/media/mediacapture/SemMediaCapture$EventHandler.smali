.class Lcom/samsung/android/media/mediacapture/SemMediaCapture$EventHandler;
.super Landroid/os/Handler;
.source "SemMediaCapture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/media/mediacapture/SemMediaCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field private mMediaCapture:Lcom/samsung/android/media/mediacapture/SemMediaCapture;

.field final synthetic this$0:Lcom/samsung/android/media/mediacapture/SemMediaCapture;


# direct methods
.method public constructor <init>(Lcom/samsung/android/media/mediacapture/SemMediaCapture;Lcom/samsung/android/media/mediacapture/SemMediaCapture;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture$EventHandler;->this$0:Lcom/samsung/android/media/mediacapture/SemMediaCapture;

    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture$EventHandler;->mMediaCapture:Lcom/samsung/android/media/mediacapture/SemMediaCapture;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture$EventHandler;->mMediaCapture:Lcom/samsung/android/media/mediacapture/SemMediaCapture;

    invoke-static {v0}, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->access$000(Lcom/samsung/android/media/mediacapture/SemMediaCapture;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-string v0, "SemMediaCapture"

    const-string/jumbo v1, "mediacapture went away with unhandled events"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_8

    const/16 v1, 0x64

    if-eq v0, v1, :cond_6

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    const-string v0, "SemMediaCapture"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown message type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture$EventHandler;->this$0:Lcom/samsung/android/media/mediacapture/SemMediaCapture;

    invoke-static {v0}, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->access$500(Lcom/samsung/android/media/mediacapture/SemMediaCapture;)Lcom/samsung/android/media/mediacapture/SemMediaCapture$OnRenderingStartedListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture$EventHandler;->this$0:Lcom/samsung/android/media/mediacapture/SemMediaCapture;

    invoke-static {v0}, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->access$500(Lcom/samsung/android/media/mediacapture/SemMediaCapture;)Lcom/samsung/android/media/mediacapture/SemMediaCapture$OnRenderingStartedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture$EventHandler;->mMediaCapture:Lcom/samsung/android/media/mediacapture/SemMediaCapture;

    invoke-interface {v0, v1}, Lcom/samsung/android/media/mediacapture/SemMediaCapture$OnRenderingStartedListener;->onRenderingStarted(Lcom/samsung/android/media/mediacapture/SemMediaCapture;)V

    :cond_1
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture$EventHandler;->this$0:Lcom/samsung/android/media/mediacapture/SemMediaCapture;

    invoke-static {v0}, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->access$200(Lcom/samsung/android/media/mediacapture/SemMediaCapture;)Lcom/samsung/android/media/mediacapture/SemMediaCapture$OnRecordingCompletionListener;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture$EventHandler;->this$0:Lcom/samsung/android/media/mediacapture/SemMediaCapture;

    invoke-static {v0}, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->access$200(Lcom/samsung/android/media/mediacapture/SemMediaCapture;)Lcom/samsung/android/media/mediacapture/SemMediaCapture$OnRecordingCompletionListener;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture$EventHandler;->mMediaCapture:Lcom/samsung/android/media/mediacapture/SemMediaCapture;

    invoke-interface {v0, v1}, Lcom/samsung/android/media/mediacapture/SemMediaCapture$OnRecordingCompletionListener;->onRecordingCompletion(Lcom/samsung/android/media/mediacapture/SemMediaCapture;)V

    :cond_2
    return-void

    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture$EventHandler;->this$0:Lcom/samsung/android/media/mediacapture/SemMediaCapture;

    invoke-static {v0}, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->access$100(Lcom/samsung/android/media/mediacapture/SemMediaCapture;)Lcom/samsung/android/media/mediacapture/SemMediaCapture$OnPlaybackCompletionListener;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture$EventHandler;->this$0:Lcom/samsung/android/media/mediacapture/SemMediaCapture;

    invoke-static {v0}, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->access$100(Lcom/samsung/android/media/mediacapture/SemMediaCapture;)Lcom/samsung/android/media/mediacapture/SemMediaCapture$OnPlaybackCompletionListener;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture$EventHandler;->mMediaCapture:Lcom/samsung/android/media/mediacapture/SemMediaCapture;

    invoke-interface {v0, v1}, Lcom/samsung/android/media/mediacapture/SemMediaCapture$OnPlaybackCompletionListener;->onPlaybackCompletion(Lcom/samsung/android/media/mediacapture/SemMediaCapture;)V

    :cond_3
    return-void

    :pswitch_3
    iget-object v0, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture$EventHandler;->this$0:Lcom/samsung/android/media/mediacapture/SemMediaCapture;

    invoke-static {v0}, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->access$300(Lcom/samsung/android/media/mediacapture/SemMediaCapture;)Lcom/samsung/android/media/mediacapture/SemMediaCapture$OnDecodingCompletionListener;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture$EventHandler;->this$0:Lcom/samsung/android/media/mediacapture/SemMediaCapture;

    invoke-static {v0}, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->access$300(Lcom/samsung/android/media/mediacapture/SemMediaCapture;)Lcom/samsung/android/media/mediacapture/SemMediaCapture$OnDecodingCompletionListener;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture$EventHandler;->mMediaCapture:Lcom/samsung/android/media/mediacapture/SemMediaCapture;

    invoke-interface {v0, v1}, Lcom/samsung/android/media/mediacapture/SemMediaCapture$OnDecodingCompletionListener;->onDecodingCompletion(Lcom/samsung/android/media/mediacapture/SemMediaCapture;)V

    :cond_4
    return-void

    :pswitch_4
    iget-object v0, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture$EventHandler;->this$0:Lcom/samsung/android/media/mediacapture/SemMediaCapture;

    invoke-static {v0}, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->access$400(Lcom/samsung/android/media/mediacapture/SemMediaCapture;)Lcom/samsung/android/media/mediacapture/SemMediaCapture$OnPreparedListener;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture$EventHandler;->this$0:Lcom/samsung/android/media/mediacapture/SemMediaCapture;

    invoke-static {v0}, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->access$400(Lcom/samsung/android/media/mediacapture/SemMediaCapture;)Lcom/samsung/android/media/mediacapture/SemMediaCapture$OnPreparedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture$EventHandler;->mMediaCapture:Lcom/samsung/android/media/mediacapture/SemMediaCapture;

    invoke-interface {v0, v1}, Lcom/samsung/android/media/mediacapture/SemMediaCapture$OnPreparedListener;->onPrepared(Lcom/samsung/android/media/mediacapture/SemMediaCapture;)V

    :cond_5
    return-void

    :pswitch_5
    nop

    return-void

    :cond_6
    const-string v0, "SemMediaCapture"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture$EventHandler;->this$0:Lcom/samsung/android/media/mediacapture/SemMediaCapture;

    invoke-static {v1}, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->access$600(Lcom/samsung/android/media/mediacapture/SemMediaCapture;)Lcom/samsung/android/media/mediacapture/SemMediaCapture$OnErrorListener;

    move-result-object v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture$EventHandler;->this$0:Lcom/samsung/android/media/mediacapture/SemMediaCapture;

    invoke-static {v1}, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->access$600(Lcom/samsung/android/media/mediacapture/SemMediaCapture;)Lcom/samsung/android/media/mediacapture/SemMediaCapture$OnErrorListener;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture$EventHandler;->mMediaCapture:Lcom/samsung/android/media/mediacapture/SemMediaCapture;

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v1, v2, v3, v4}, Lcom/samsung/android/media/mediacapture/SemMediaCapture$OnErrorListener;->onError(Lcom/samsung/android/media/mediacapture/SemMediaCapture;II)Z

    move-result v0

    :cond_7
    return-void

    :cond_8
    iget-object v0, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture$EventHandler;->this$0:Lcom/samsung/android/media/mediacapture/SemMediaCapture;

    invoke-static {v0}, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->access$700(Lcom/samsung/android/media/mediacapture/SemMediaCapture;)Lcom/samsung/android/media/mediacapture/SemMediaCapture$OnDecodingUpdatedListener;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture$EventHandler;->this$0:Lcom/samsung/android/media/mediacapture/SemMediaCapture;

    invoke-static {v0}, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->access$700(Lcom/samsung/android/media/mediacapture/SemMediaCapture;)Lcom/samsung/android/media/mediacapture/SemMediaCapture$OnDecodingUpdatedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture$EventHandler;->mMediaCapture:Lcom/samsung/android/media/mediacapture/SemMediaCapture;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/media/mediacapture/SemMediaCapture$OnDecodingUpdatedListener;->onUpdated(Lcom/samsung/android/media/mediacapture/SemMediaCapture;I)V

    :cond_9
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x5
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

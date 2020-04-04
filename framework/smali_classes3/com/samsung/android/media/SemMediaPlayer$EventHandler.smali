.class Lcom/samsung/android/media/SemMediaPlayer$EventHandler;
.super Landroid/os/Handler;
.source "SemMediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/media/SemMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field private mSemMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

.field final synthetic this$0:Lcom/samsung/android/media/SemMediaPlayer;


# direct methods
.method public constructor <init>(Lcom/samsung/android/media/SemMediaPlayer;Lcom/samsung/android/media/SemMediaPlayer;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/media/SemMediaPlayer$EventHandler;->this$0:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/samsung/android/media/SemMediaPlayer$EventHandler;->mSemMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer$EventHandler;->mSemMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-static {v0}, Lcom/samsung/android/media/SemMediaPlayer;->access$000(Lcom/samsung/android/media/SemMediaPlayer;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-string v0, "SemMediaPlayer"

    const-string/jumbo v1, "semmediaplayer went away with unhandled events"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_0

    const-string v0, "SemMediaPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown message type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :sswitch_0
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer$EventHandler;->this$0:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-static {v0}, Lcom/samsung/android/media/SemMediaPlayer;->access$600(Lcom/samsung/android/media/SemMediaPlayer;)Lcom/samsung/android/media/SemMediaPlayer$OnInfoListener;

    move-result-object v0

    if-eqz v0, :cond_6

    iget v1, p1, Landroid/os/Message;->arg1:I

    const/16 v2, 0x2ade

    if-ne v1, v2, :cond_1

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Landroid/os/Parcel;

    if-eqz v1, :cond_1

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Parcel;

    iget-object v2, p0, Lcom/samsung/android/media/SemMediaPlayer$EventHandler;->this$0:Lcom/samsung/android/media/SemMediaPlayer;

    sget-object v3, Lcom/samsung/android/media/SemMediaPlayer$SuperSlowRegion;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/samsung/android/media/SemMediaPlayer$SuperSlowRegion;

    invoke-static {v2, v3}, Lcom/samsung/android/media/SemMediaPlayer;->access$702(Lcom/samsung/android/media/SemMediaPlayer;[Lcom/samsung/android/media/SemMediaPlayer$SuperSlowRegion;)[Lcom/samsung/android/media/SemMediaPlayer$SuperSlowRegion;

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer$EventHandler;->mSemMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/android/media/SemMediaPlayer$OnInfoListener;->onInfo(Lcom/samsung/android/media/SemMediaPlayer;II)Z

    goto/16 :goto_0

    :sswitch_1
    const/4 v0, 0x0

    iget-object v2, p0, Lcom/samsung/android/media/SemMediaPlayer$EventHandler;->this$0:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-static {v2}, Lcom/samsung/android/media/SemMediaPlayer;->access$500(Lcom/samsung/android/media/SemMediaPlayer;)Lcom/samsung/android/media/SemMediaPlayer$OnErrorListener;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/samsung/android/media/SemMediaPlayer$EventHandler;->mSemMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v2, v3, v4, v5}, Lcom/samsung/android/media/SemMediaPlayer$OnErrorListener;->onError(Lcom/samsung/android/media/SemMediaPlayer;II)Z

    move-result v0

    :cond_2
    if-nez v0, :cond_3

    iget-object v3, p0, Lcom/samsung/android/media/SemMediaPlayer$EventHandler;->this$0:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-static {v3}, Lcom/samsung/android/media/SemMediaPlayer;->access$200(Lcom/samsung/android/media/SemMediaPlayer;)Lcom/samsung/android/media/SemMediaPlayer$OnPlaybackCompleteListener;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v4, p0, Lcom/samsung/android/media/SemMediaPlayer$EventHandler;->mSemMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-interface {v3, v4}, Lcom/samsung/android/media/SemMediaPlayer$OnPlaybackCompleteListener;->onPlaybackComplete(Lcom/samsung/android/media/SemMediaPlayer;)V

    :cond_3
    iget-object v3, p0, Lcom/samsung/android/media/SemMediaPlayer$EventHandler;->this$0:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-static {v3, v1}, Lcom/samsung/android/media/SemMediaPlayer;->access$300(Lcom/samsung/android/media/SemMediaPlayer;Z)V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer$EventHandler;->this$0:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-static {v0}, Lcom/samsung/android/media/SemMediaPlayer;->access$800(Lcom/samsung/android/media/SemMediaPlayer;)Lcom/samsung/android/media/SemMediaPlayer$OnVideoSizeChangedListener;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer$EventHandler;->mSemMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/android/media/SemMediaPlayer$OnVideoSizeChangedListener;->onVideoSizeChanged(Lcom/samsung/android/media/SemMediaPlayer;II)V

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer$EventHandler;->this$0:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-static {v0}, Lcom/samsung/android/media/SemMediaPlayer;->access$400(Lcom/samsung/android/media/SemMediaPlayer;)Lcom/samsung/android/media/SemMediaPlayer$OnSeekCompleteListener;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer$EventHandler;->mSemMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-interface {v0, v1}, Lcom/samsung/android/media/SemMediaPlayer$OnSeekCompleteListener;->onSeekComplete(Lcom/samsung/android/media/SemMediaPlayer;)V

    goto :goto_0

    :sswitch_4
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer$EventHandler;->this$0:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-static {v0}, Lcom/samsung/android/media/SemMediaPlayer;->access$200(Lcom/samsung/android/media/SemMediaPlayer;)Lcom/samsung/android/media/SemMediaPlayer$OnPlaybackCompleteListener;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/samsung/android/media/SemMediaPlayer$EventHandler;->mSemMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-interface {v0, v2}, Lcom/samsung/android/media/SemMediaPlayer$OnPlaybackCompleteListener;->onPlaybackComplete(Lcom/samsung/android/media/SemMediaPlayer;)V

    :cond_4
    iget-object v2, p0, Lcom/samsung/android/media/SemMediaPlayer$EventHandler;->this$0:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-static {v2, v1}, Lcom/samsung/android/media/SemMediaPlayer;->access$300(Lcom/samsung/android/media/SemMediaPlayer;Z)V

    goto :goto_0

    :sswitch_5
    const/4 v0, 0x0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Landroid/os/Parcel;

    if-eqz v1, :cond_5

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Parcel;

    sget-object v2, Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, [Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    :cond_5
    iget-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer$EventHandler;->this$0:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-static {v1}, Lcom/samsung/android/media/SemMediaPlayer;->access$100(Lcom/samsung/android/media/SemMediaPlayer;)Lcom/samsung/android/media/SemMediaPlayer$OnInitCompleteListener;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v2, p0, Lcom/samsung/android/media/SemMediaPlayer$EventHandler;->mSemMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-interface {v1, v2, v0}, Lcom/samsung/android/media/SemMediaPlayer$OnInitCompleteListener;->onInitComplete(Lcom/samsung/android/media/SemMediaPlayer;[Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;)V

    :cond_6
    :goto_0
    return-void

    nop

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_5
        0x2 -> :sswitch_4
        0x4 -> :sswitch_3
        0x5 -> :sswitch_2
        0x64 -> :sswitch_1
        0xc8 -> :sswitch_0
    .end sparse-switch
.end method

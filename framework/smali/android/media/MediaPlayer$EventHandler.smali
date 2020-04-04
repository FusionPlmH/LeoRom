.class Landroid/media/MediaPlayer$EventHandler;
.super Landroid/os/Handler;
.source "MediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field final synthetic this$0:Landroid/media/MediaPlayer;


# direct methods
.method public constructor <init>(Landroid/media/MediaPlayer;Landroid/media/MediaPlayer;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-void
.end method

.method static synthetic access$3700(Landroid/media/MediaPlayer$EventHandler;)Landroid/media/MediaPlayer;
    .locals 1

    iget-object v0, p0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 24

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v0, v1, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-static {v0}, Landroid/media/MediaPlayer;->access$800(Landroid/media/MediaPlayer;)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-nez v0, :cond_0

    const-string v0, "MediaPlayer"

    const-string/jumbo v3, "mediaplayer went away with unhandled events"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget v0, v2, Landroid/os/Message;->what:I

    const/16 v3, 0x12c

    const/16 v6, 0x9

    const/16 v7, 0x8

    const/4 v8, 0x6

    const/4 v9, 0x5

    const/4 v10, 0x3

    const/16 v11, 0xc

    const/4 v12, 0x4

    const/4 v13, 0x7

    const/4 v14, 0x2

    const/4 v15, 0x0

    const/4 v4, 0x1

    if-eq v0, v3, :cond_2a

    const/16 v5, 0x2710

    if-eq v0, v5, :cond_28

    const/4 v5, 0x0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    packed-switch v0, :pswitch_data_3

    const-string v0, "MediaPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown message type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_0
    monitor-enter p0

    :try_start_0
    iget-object v0, v1, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v0}, Landroid/media/MediaPlayer;->access$4000(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnMediaTimeDiscontinuityListener;

    move-result-object v0

    iget-object v3, v1, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v3}, Landroid/media/MediaPlayer;->access$4100(Landroid/media/MediaPlayer;)Landroid/os/Handler;

    move-result-object v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v4, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v4, v4, Landroid/os/Parcel;

    if-eqz v4, :cond_4

    iget-object v4, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/Parcel;

    invoke-virtual {v4, v15}, Landroid/os/Parcel;->setDataPosition(I)V

    invoke-virtual {v4}, Landroid/os/Parcel;->readLong()J

    move-result-wide v11

    invoke-virtual {v4}, Landroid/os/Parcel;->readLong()J

    move-result-wide v13

    invoke-virtual {v4}, Landroid/os/Parcel;->readFloat()F

    move-result v15

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    const-wide/16 v5, -0x1

    cmp-long v5, v11, v5

    if-eqz v5, :cond_2

    const-wide/16 v5, -0x1

    cmp-long v5, v13, v5

    if-eqz v5, :cond_2

    new-instance v16, Landroid/media/MediaTimestamp;

    const-wide/16 v5, 0x3e8

    mul-long v8, v13, v5

    move-object/from16 v5, v16

    move-wide v6, v11

    move v10, v15

    invoke-direct/range {v5 .. v10}, Landroid/media/MediaTimestamp;-><init>(JJF)V

    goto :goto_0

    :cond_2
    sget-object v5, Landroid/media/MediaTimestamp;->TIMESTAMP_UNKNOWN:Landroid/media/MediaTimestamp;

    :goto_0
    if-nez v3, :cond_3

    iget-object v6, v1, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v0, v6, v5}, Landroid/media/MediaPlayer$OnMediaTimeDiscontinuityListener;->onMediaTimeDiscontinuity(Landroid/media/MediaPlayer;Landroid/media/MediaTimestamp;)V

    goto :goto_1

    :cond_3
    new-instance v6, Landroid/media/MediaPlayer$EventHandler$2;

    invoke-direct {v6, v1, v0, v5}, Landroid/media/MediaPlayer$EventHandler$2;-><init>(Landroid/media/MediaPlayer$EventHandler;Landroid/media/MediaPlayer$OnMediaTimeDiscontinuityListener;Landroid/media/MediaTimestamp;)V

    invoke-virtual {v3, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_4
    :goto_1
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :pswitch_1
    const-string v0, "MediaPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MEDIA_DRM_INFO "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v4}, Landroid/media/MediaPlayer;->access$1100(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnDrmInfoHandlerDelegate;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v0, :cond_5

    const-string v0, "MediaPlayer"

    const-string v3, "MEDIA_DRM_INFO msg.obj=NULL"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_5
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Landroid/os/Parcel;

    if-eqz v0, :cond_8

    const/4 v3, 0x0

    iget-object v0, v1, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v0}, Landroid/media/MediaPlayer;->access$1200(Landroid/media/MediaPlayer;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    :try_start_2
    iget-object v0, v1, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v0}, Landroid/media/MediaPlayer;->access$1100(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnDrmInfoHandlerDelegate;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, v1, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v0}, Landroid/media/MediaPlayer;->access$1300(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$DrmInfo;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, v1, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v0}, Landroid/media/MediaPlayer;->access$1300(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$DrmInfo;

    move-result-object v0

    invoke-static {v0}, Landroid/media/MediaPlayer$DrmInfo;->access$1400(Landroid/media/MediaPlayer$DrmInfo;)Landroid/media/MediaPlayer$DrmInfo;

    move-result-object v0

    move-object v3, v0

    :cond_6
    iget-object v0, v1, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v0}, Landroid/media/MediaPlayer;->access$1100(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnDrmInfoHandlerDelegate;

    move-result-object v0

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v0, :cond_7

    invoke-virtual {v0, v3}, Landroid/media/MediaPlayer$OnDrmInfoHandlerDelegate;->notifyClient(Landroid/media/MediaPlayer$DrmInfo;)V

    :cond_7
    goto :goto_2

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :cond_8
    const-string v0, "MediaPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MEDIA_DRM_INFO msg.obj of unexpected type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void

    :pswitch_2
    iget-object v0, v1, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v0}, Landroid/media/MediaPlayer;->access$3800(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnTimedMetaDataAvailableListener;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v3, v3, Landroid/os/Parcel;

    if-eqz v3, :cond_a

    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Parcel;

    invoke-static {v3}, Landroid/media/TimedMetaData;->createTimedMetaDataFromParcel(Landroid/os/Parcel;)Landroid/media/TimedMetaData;

    move-result-object v4

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    iget-object v5, v1, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v0, v5, v4}, Landroid/media/MediaPlayer$OnTimedMetaDataAvailableListener;->onTimedMetaDataAvailable(Landroid/media/MediaPlayer;Landroid/media/TimedMetaData;)V

    :cond_a
    return-void

    :pswitch_3
    monitor-enter p0

    :try_start_4
    iget-object v0, v1, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v0}, Landroid/media/MediaPlayer;->access$3300(Landroid/media/MediaPlayer;)Z

    move-result v0

    if-eqz v0, :cond_b

    monitor-exit p0

    return-void

    :cond_b
    iget-object v0, v1, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v0}, Landroid/media/MediaPlayer;->access$3400(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnSubtitleDataListener;

    move-result-object v0

    iget-object v3, v1, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v3}, Landroid/media/MediaPlayer;->access$3500(Landroid/media/MediaPlayer;)Landroid/os/Handler;

    move-result-object v3

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    iget-object v4, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v4, v4, Landroid/os/Parcel;

    if-eqz v4, :cond_d

    iget-object v4, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/Parcel;

    new-instance v5, Landroid/media/SubtitleData;

    invoke-direct {v5, v4}, Landroid/media/SubtitleData;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    iget-object v6, v1, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v6}, Landroid/media/MediaPlayer;->access$3600(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnSubtitleDataListener;

    move-result-object v6

    iget-object v7, v1, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v6, v7, v5}, Landroid/media/MediaPlayer$OnSubtitleDataListener;->onSubtitleData(Landroid/media/MediaPlayer;Landroid/media/SubtitleData;)V

    if-eqz v0, :cond_d

    if-nez v3, :cond_c

    iget-object v6, v1, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v0, v6, v5}, Landroid/media/MediaPlayer$OnSubtitleDataListener;->onSubtitleData(Landroid/media/MediaPlayer;Landroid/media/SubtitleData;)V

    goto :goto_3

    :cond_c
    new-instance v6, Landroid/media/MediaPlayer$EventHandler$1;

    invoke-direct {v6, v1, v0, v5}, Landroid/media/MediaPlayer$EventHandler$1;-><init>(Landroid/media/MediaPlayer$EventHandler;Landroid/media/MediaPlayer$OnSubtitleDataListener;Landroid/media/SubtitleData;)V

    invoke-virtual {v3, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_d
    :goto_3
    return-void

    :catchall_2
    move-exception v0

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0

    :pswitch_4
    iget v0, v2, Landroid/os/Message;->arg1:I

    packed-switch v0, :pswitch_data_4

    packed-switch v0, :pswitch_data_5

    goto :goto_5

    :pswitch_5
    :try_start_6
    iget-object v0, v1, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v0}, Landroid/media/MediaPlayer;->access$900(Landroid/media/MediaPlayer;)V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    const/16 v3, 0x64

    const/16 v6, -0x3f2

    invoke-virtual {v1, v3, v4, v6, v5}, Landroid/media/MediaPlayer$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/media/MediaPlayer$EventHandler;->sendMessage(Landroid/os/Message;)Z

    :goto_4
    :pswitch_6
    const/16 v0, 0x322

    iput v0, v2, Landroid/os/Message;->arg1:I

    iget-object v0, v1, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v0}, Landroid/media/MediaPlayer;->access$200(Landroid/media/MediaPlayer;)Landroid/media/SubtitleController;

    move-result-object v0

    if-eqz v0, :cond_f

    iget-object v0, v1, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v0}, Landroid/media/MediaPlayer;->access$200(Landroid/media/MediaPlayer;)Landroid/media/SubtitleController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/SubtitleController;->selectDefaultTrack()V

    goto :goto_5

    :pswitch_7
    iget-object v0, v1, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v0}, Landroid/media/MediaPlayer;->access$300(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$TimeProvider;

    move-result-object v0

    if-eqz v0, :cond_f

    iget v3, v2, Landroid/os/Message;->arg1:I

    const/16 v5, 0x2bd

    if-ne v3, v5, :cond_e

    move v15, v4

    nop

    :cond_e
    invoke-virtual {v0, v15}, Landroid/media/MediaPlayer$TimeProvider;->onBuffering(Z)V

    goto :goto_5

    :pswitch_8
    const-string v0, "MediaPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Info ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Landroid/os/Message;->arg2:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    nop

    :cond_f
    :goto_5
    iget-object v0, v1, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v0}, Landroid/media/MediaPlayer;->access$3100(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnInfoListener;

    move-result-object v0

    if-eqz v0, :cond_10

    iget-object v3, v1, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget v4, v2, Landroid/os/Message;->arg1:I

    iget v5, v2, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v3, v4, v5}, Landroid/media/MediaPlayer$OnInfoListener;->onInfo(Landroid/media/MediaPlayer;II)Z

    :cond_10
    return-void

    :pswitch_9
    const-string v0, "MediaPlayer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Landroid/os/Message;->arg2:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    iget-object v0, v1, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v0}, Landroid/media/MediaPlayer;->access$2900(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnErrorListener;

    move-result-object v5

    if-eqz v5, :cond_16

    iget v0, v2, Landroid/os/Message;->arg2:I

    const/16 v6, -0x31

    if-eq v0, v6, :cond_11

    iget v0, v2, Landroid/os/Message;->arg2:I

    const/16 v6, -0x3c

    if-eq v0, v6, :cond_11

    iget v0, v2, Landroid/os/Message;->arg2:I

    const/16 v6, -0x3d

    if-eq v0, v6, :cond_11

    iget v0, v2, Landroid/os/Message;->arg2:I

    const/16 v6, -0x40

    if-ne v0, v6, :cond_13

    :cond_11
    iget-object v0, v1, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v0}, Landroid/media/MediaPlayer;->access$3000(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnPlayReadyErrorListener;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_12

    const-string v0, "MediaPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PlayReadyAcquistion Failed \n sending onPlayReadyError "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v0}, Landroid/media/MediaPlayer;->access$3000(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnPlayReadyErrorListener;

    move-result-object v0

    iget-object v3, v1, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget v6, v2, Landroid/os/Message;->arg1:I

    iget v7, v2, Landroid/os/Message;->arg2:I

    iget-object v8, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    invoke-interface {v0, v3, v6, v7, v8}, Landroid/media/MediaPlayer$OnPlayReadyErrorListener;->onPlayReadyError(Landroid/media/MediaPlayer;IILjava/lang/String;)Z

    move-result v4

    goto :goto_7

    :cond_12
    const-string v0, "MediaPlayer"

    const-string v3, "PlayReadyAcquistion Failed \n sending onPlayReadyError NULL"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget v3, v2, Landroid/os/Message;->arg1:I

    iget v6, v2, Landroid/os/Message;->arg2:I

    invoke-interface {v5, v0, v3, v6}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    move-result v4

    goto :goto_7

    :cond_13
    iget v0, v2, Landroid/os/Message;->arg2:I

    if-ne v0, v3, :cond_14

    const-string v0, "MediaPlayer"

    const-string v3, "License Not Found, propagate error to MoviePlaybackService.java"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v0}, Landroid/media/MediaPlayer;->access$2900(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnErrorListener;

    move-result-object v0

    iget-object v3, v1, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget v6, v2, Landroid/os/Message;->arg1:I

    iget v7, v2, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v3, v6, v7}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    move-result v4

    goto :goto_7

    :cond_14
    :try_start_7
    iget-object v0, v1, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v0}, Landroid/media/MediaPlayer;->access$2900(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnErrorListener;

    move-result-object v0

    if-eqz v0, :cond_15

    iget-object v0, v1, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v0}, Landroid/media/MediaPlayer;->access$2900(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnErrorListener;

    move-result-object v0

    iget-object v3, v1, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget v6, v2, Landroid/os/Message;->arg1:I

    iget v7, v2, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v3, v6, v7}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    move-result v0

    move v4, v0

    goto :goto_6

    :cond_15
    const-string v0, "MediaPlayer"

    const-string v3, "error listener is null "

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_1

    :goto_6
    goto :goto_7

    :catch_1
    move-exception v0

    const-string v3, "MediaPlayer"

    const-string v6, "handleMessage e : "

    invoke-static {v3, v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_16
    :goto_7
    iget-object v0, v1, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v0}, Landroid/media/MediaPlayer;->access$1500(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v0

    iget-object v3, v1, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v0, v3}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    iget-object v0, v1, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v0}, Landroid/media/MediaPlayer;->access$1600(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v0

    if-eqz v0, :cond_17

    if-nez v4, :cond_17

    iget-object v3, v1, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v0, v3}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    :cond_17
    iget-object v0, v1, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v0, v15}, Landroid/media/MediaPlayer;->access$100(Landroid/media/MediaPlayer;Z)V

    return-void

    :pswitch_a
    iget-object v0, v1, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v0}, Landroid/media/MediaPlayer;->access$3200(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnTimedTextListener;

    move-result-object v0

    if-nez v0, :cond_18

    return-void

    :cond_18
    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v3, :cond_19

    iget-object v3, v1, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v0, v3, v5}, Landroid/media/MediaPlayer$OnTimedTextListener;->onTimedText(Landroid/media/MediaPlayer;Landroid/media/TimedText;)V

    goto :goto_8

    :cond_19
    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v3, v3, Landroid/os/Parcel;

    if-eqz v3, :cond_1a

    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Parcel;

    new-instance v4, Landroid/media/TimedText;

    invoke-direct {v4, v3}, Landroid/media/TimedText;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    iget-object v5, v1, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v0, v5, v4}, Landroid/media/MediaPlayer$OnTimedTextListener;->onTimedText(Landroid/media/MediaPlayer;Landroid/media/TimedText;)V

    :cond_1a
    :goto_8
    return-void

    :pswitch_b
    iget-object v0, v1, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v0}, Landroid/media/MediaPlayer;->access$300(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$TimeProvider;

    move-result-object v0

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Landroid/media/MediaPlayer$TimeProvider;->onNotifyTime()V

    :cond_1b
    return-void

    :pswitch_c
    :try_start_8
    iget-object v0, v1, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v0}, Landroid/media/MediaPlayer;->access$300(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$TimeProvider;

    move-result-object v0

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Landroid/media/MediaPlayer$TimeProvider;->onStopped()V
    :try_end_8
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_8} :catch_2

    :cond_1c
    goto/16 :goto_d

    :catch_2
    move-exception v0

    const-string v3, "MediaPlayer"

    const-string v4, "handleMessage MEDIA_STOPPED e : "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_d

    :pswitch_d
    :try_start_9
    iget-object v0, v1, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v0}, Landroid/media/MediaPlayer;->access$300(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$TimeProvider;

    move-result-object v0

    if-eqz v0, :cond_1e

    iget v3, v2, Landroid/os/Message;->what:I

    if-ne v3, v13, :cond_1d

    move v15, v4

    nop

    :cond_1d
    invoke-virtual {v0, v15}, Landroid/media/MediaPlayer$TimeProvider;->onPaused(Z)V
    :try_end_9
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_9} :catch_3

    :cond_1e
    goto/16 :goto_d

    :catch_3
    move-exception v0

    const-string v3, "MediaPlayer"

    const-string v4, "handleMessage MEDIA_STARTED or MEDIA_PAUSED e : "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_d

    :pswitch_e
    iget-object v0, v1, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v0}, Landroid/media/MediaPlayer;->access$2700(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    move-result-object v0

    if-eqz v0, :cond_1f

    iget-object v3, v1, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget v5, v2, Landroid/os/Message;->arg1:I

    iget v6, v2, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v3, v5, v6}, Landroid/media/MediaPlayer$OnVideoSizeChangedListener;->onVideoSizeChanged(Landroid/media/MediaPlayer;II)V

    :cond_1f
    iget v3, v2, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_20

    iget v3, v2, Landroid/os/Message;->arg2:I

    if-eqz v3, :cond_20

    iget-object v3, v1, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v3, v4}, Landroid/media/MediaPlayer;->access$2302(Landroid/media/MediaPlayer;I)I

    iget-object v3, v1, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v3}, Landroid/media/MediaPlayer;->access$2800(Landroid/media/MediaPlayer;)Z

    move-result v3

    if-eqz v3, :cond_20

    iget-object v3, v1, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    const-string v5, "com.samsung.intent.videoexist"

    new-array v6, v14, [Ljava/lang/Object;

    const-string v7, "PID"

    aput-object v7, v6, v15

    iget-object v7, v1, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v7}, Landroid/media/MediaPlayer;->access$2100(Landroid/media/MediaPlayer;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-static {v3, v5, v6}, Landroid/media/MediaPlayer;->access$2400(Landroid/media/MediaPlayer;Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_20
    return-void

    :pswitch_f
    iget-object v0, v1, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v0}, Landroid/media/MediaPlayer;->access$2600(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnSeekCompleteListener;

    move-result-object v0

    if-eqz v0, :cond_21

    iget-object v3, v1, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v0, v3}, Landroid/media/MediaPlayer$OnSeekCompleteListener;->onSeekComplete(Landroid/media/MediaPlayer;)V

    :cond_21
    :pswitch_10
    :try_start_a
    iget-object v0, v1, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v0}, Landroid/media/MediaPlayer;->access$300(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$TimeProvider;

    move-result-object v0

    if-eqz v0, :cond_22

    iget-object v3, v1, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v3}, Landroid/media/MediaPlayer$TimeProvider;->onSeekComplete(Landroid/media/MediaPlayer;)V
    :try_end_a
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_a} :catch_4

    :cond_22
    goto :goto_9

    :catch_4
    move-exception v0

    const-string v3, "MediaPlayer"

    const-string v4, "handleMessage MEDIA_SKIPPED e : "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_9
    return-void

    :pswitch_11
    iget-object v0, v1, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v0}, Landroid/media/MediaPlayer;->access$2500(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    move-result-object v0

    if-eqz v0, :cond_23

    iget-object v3, v1, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget v4, v2, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v3, v4}, Landroid/media/MediaPlayer$OnBufferingUpdateListener;->onBufferingUpdate(Landroid/media/MediaPlayer;I)V

    :cond_23
    return-void

    :pswitch_12
    iget-object v0, v1, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v0}, Landroid/media/MediaPlayer;->access$1500(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v0

    iget-object v3, v1, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v0, v3}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    iget-object v0, v1, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v0}, Landroid/media/MediaPlayer;->access$1600(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v0

    if-eqz v0, :cond_24

    iget-object v3, v1, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v0, v3}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    :cond_24
    iget-object v0, v1, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v0, v15}, Landroid/media/MediaPlayer;->access$100(Landroid/media/MediaPlayer;Z)V

    invoke-static {}, Landroid/media/MediaPlayer;->access$1700()Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object v0, v1, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v0}, Landroid/media/MediaPlayer;->access$1800(Landroid/media/MediaPlayer;)I

    move-result v0

    if-ne v0, v4, :cond_25

    iget-object v0, v1, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    const-string v3, "com.samsung.CONTEXT_AWARE_MUSIC_INFO"

    new-array v5, v11, [Ljava/lang/Object;

    const-string v11, "TYPE"

    aput-object v11, v5, v15

    const-string v11, "complete"

    aput-object v11, v5, v4

    const-string v4, "URI"

    aput-object v4, v5, v14

    iget-object v4, v1, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v4}, Landroid/media/MediaPlayer;->access$1900(Landroid/media/MediaPlayer;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v10

    const-string v4, "ID"

    aput-object v4, v5, v12

    iget-object v4, v1, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v4}, Landroid/media/MediaPlayer;->access$2000(Landroid/media/MediaPlayer;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v9

    const-string v4, "PID"

    aput-object v4, v5, v8

    iget-object v4, v1, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v4}, Landroid/media/MediaPlayer;->access$2100(Landroid/media/MediaPlayer;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v13

    const-string v4, "DURATION_MS"

    aput-object v4, v5, v7

    iget-object v4, v1, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v4}, Landroid/media/MediaPlayer;->access$2200(Landroid/media/MediaPlayer;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v6

    const-string v4, "IS_VIDEO"

    const/16 v6, 0xa

    aput-object v4, v5, v6

    iget-object v4, v1, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v4}, Landroid/media/MediaPlayer;->access$2300(Landroid/media/MediaPlayer;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v6, 0xb

    aput-object v4, v5, v6

    invoke-static {v0, v3, v5}, Landroid/media/MediaPlayer;->access$2400(Landroid/media/MediaPlayer;Ljava/lang/String;[Ljava/lang/Object;)Z

    iget-object v0, v1, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v0, v14}, Landroid/media/MediaPlayer;->access$1802(Landroid/media/MediaPlayer;I)I

    :cond_25
    return-void

    :pswitch_13
    iget v0, v2, Landroid/os/Message;->arg1:I

    const/16 v3, 0x2c7

    if-eq v0, v3, :cond_26

    :try_start_b
    iget-object v0, v1, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v0}, Landroid/media/MediaPlayer;->access$900(Landroid/media/MediaPlayer;)V
    :try_end_b
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_5

    goto :goto_a

    :catch_5
    move-exception v0

    const/16 v3, 0x64

    const/16 v6, -0x3f2

    invoke-virtual {v1, v3, v4, v6, v5}, Landroid/media/MediaPlayer$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/media/MediaPlayer$EventHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_26
    :goto_a
    iget-object v0, v1, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v0}, Landroid/media/MediaPlayer;->access$1000(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnPreparedListener;

    move-result-object v0

    if-eqz v0, :cond_27

    iget-object v3, v1, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v0, v3}, Landroid/media/MediaPlayer$OnPreparedListener;->onPrepared(Landroid/media/MediaPlayer;)V

    :cond_27
    return-void

    :pswitch_14
    goto/16 :goto_d

    :cond_28
    invoke-static {}, Landroid/media/AudioManager;->resetAudioPortGeneration()I

    iget-object v0, v1, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v0}, Landroid/media/MediaPlayer;->access$3900(Landroid/media/MediaPlayer;)Landroid/util/ArrayMap;

    move-result-object v3

    monitor-enter v3

    :try_start_c
    iget-object v0, v1, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v0}, Landroid/media/MediaPlayer;->access$3900(Landroid/media/MediaPlayer;)Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/NativeRoutingEventHandlerDelegate;

    invoke-virtual {v4}, Landroid/media/NativeRoutingEventHandlerDelegate;->notifyClient()V

    goto :goto_b

    :cond_29
    monitor-exit v3

    return-void

    :catchall_3
    move-exception v0

    monitor-exit v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    throw v0

    :cond_2a
    invoke-static {}, Landroid/media/MediaPlayer;->access$1700()Z

    move-result v0

    if-eqz v0, :cond_2d

    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Landroid/os/Parcel;

    if-eqz v0, :cond_2d

    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iget-object v7, v1, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v7}, Landroid/media/MediaPlayer;->access$1800(Landroid/media/MediaPlayer;)I

    move-result v7

    if-nez v7, :cond_2c

    const-string/jumbo v7, "start"

    invoke-virtual {v3, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_2b

    iget-object v7, v1, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v7, v6}, Landroid/media/MediaPlayer;->access$2002(Landroid/media/MediaPlayer;I)I

    iget-object v7, v1, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v7, v5}, Landroid/media/MediaPlayer;->access$1902(Landroid/media/MediaPlayer;Ljava/lang/String;)Ljava/lang/String;

    iget-object v7, v1, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v13

    invoke-static {v7, v13}, Landroid/media/MediaPlayer;->access$2202(Landroid/media/MediaPlayer;I)I

    iget-object v7, v1, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v7, v4}, Landroid/media/MediaPlayer;->access$1802(Landroid/media/MediaPlayer;I)I

    :cond_2b
    iget-object v7, v1, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    const-string v13, "com.samsung.CONTEXT_AWARE_MUSIC_INFO"

    new-array v8, v11, [Ljava/lang/Object;

    const-string v22, "TYPE"

    aput-object v22, v8, v15

    aput-object v3, v8, v4

    const-string v22, "URI"

    aput-object v22, v8, v14

    aput-object v5, v8, v10

    const-string v22, "ID"

    aput-object v22, v8, v12

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v8, v9

    const-string v22, "PID"

    const/16 v21, 0x6

    aput-object v22, v8, v21

    iget-object v9, v1, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v9}, Landroid/media/MediaPlayer;->access$2100(Landroid/media/MediaPlayer;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/16 v20, 0x7

    aput-object v9, v8, v20

    const-string v9, "DURATION_MS"

    const/16 v19, 0x8

    aput-object v9, v8, v19

    iget-object v9, v1, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v9}, Landroid/media/MediaPlayer;->access$2200(Landroid/media/MediaPlayer;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/16 v18, 0x9

    aput-object v9, v8, v18

    const-string v9, "IS_VIDEO"

    const/16 v17, 0xa

    aput-object v9, v8, v17

    iget-object v9, v1, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v9}, Landroid/media/MediaPlayer;->access$2300(Landroid/media/MediaPlayer;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/16 v16, 0xb

    aput-object v9, v8, v16

    invoke-static {v7, v13, v8}, Landroid/media/MediaPlayer;->access$2400(Landroid/media/MediaPlayer;Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_2c
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    :cond_2d
    iget-object v0, v1, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v0}, Landroid/media/MediaPlayer;->access$4200(Landroid/media/MediaPlayer;)I

    move-result v0

    if-ne v0, v4, :cond_2e

    iget-object v0, v1, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    const-string v3, "com.samsung.CONTEXT_AWARE_MUSIC_INFO"

    new-array v5, v11, [Ljava/lang/Object;

    const-string v6, "TYPE"

    aput-object v6, v5, v15

    const-string/jumbo v6, "pause"

    aput-object v6, v5, v4

    const-string v4, "URI"

    aput-object v4, v5, v14

    iget-object v4, v1, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v4}, Landroid/media/MediaPlayer;->access$1900(Landroid/media/MediaPlayer;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v10

    const-string v4, "ID"

    aput-object v4, v5, v12

    iget-object v4, v1, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v4}, Landroid/media/MediaPlayer;->access$2000(Landroid/media/MediaPlayer;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x5

    aput-object v4, v5, v6

    const-string v4, "PID"

    const/4 v6, 0x6

    aput-object v4, v5, v6

    iget-object v4, v1, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v4}, Landroid/media/MediaPlayer;->access$2100(Landroid/media/MediaPlayer;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x7

    aput-object v4, v5, v6

    const-string v4, "DURATION_MS"

    const/16 v6, 0x8

    aput-object v4, v5, v6

    iget-object v4, v1, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v4}, Landroid/media/MediaPlayer;->access$2200(Landroid/media/MediaPlayer;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v6, 0x9

    aput-object v4, v5, v6

    const-string v4, "IS_VIDEO"

    const/16 v6, 0xa

    aput-object v4, v5, v6

    iget-object v4, v1, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v4}, Landroid/media/MediaPlayer;->access$2300(Landroid/media/MediaPlayer;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v6, 0xb

    aput-object v4, v5, v6

    invoke-static {v0, v3, v5}, Landroid/media/MediaPlayer;->access$2400(Landroid/media/MediaPlayer;Ljava/lang/String;[Ljava/lang/Object;)Z

    iget-object v0, v1, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v0, v14}, Landroid/media/MediaPlayer;->access$1802(Landroid/media/MediaPlayer;I)I

    goto :goto_c

    :cond_2e
    iget-object v0, v1, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v0}, Landroid/media/MediaPlayer;->access$4200(Landroid/media/MediaPlayer;)I

    move-result v0

    if-ne v0, v14, :cond_2f

    iget-object v0, v1, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    const-string v3, "com.samsung.CONTEXT_AWARE_MUSIC_INFO"

    new-array v5, v11, [Ljava/lang/Object;

    const-string v6, "TYPE"

    aput-object v6, v5, v15

    const-string/jumbo v6, "stop"

    aput-object v6, v5, v4

    const-string v4, "URI"

    aput-object v4, v5, v14

    iget-object v4, v1, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v4}, Landroid/media/MediaPlayer;->access$1900(Landroid/media/MediaPlayer;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v10

    const-string v4, "ID"

    aput-object v4, v5, v12

    iget-object v4, v1, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v4}, Landroid/media/MediaPlayer;->access$2000(Landroid/media/MediaPlayer;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x5

    aput-object v4, v5, v6

    const-string v4, "PID"

    const/4 v6, 0x6

    aput-object v4, v5, v6

    iget-object v4, v1, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v4}, Landroid/media/MediaPlayer;->access$2100(Landroid/media/MediaPlayer;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x7

    aput-object v4, v5, v6

    const-string v4, "DURATION_MS"

    const/16 v6, 0x8

    aput-object v4, v5, v6

    iget-object v4, v1, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v4}, Landroid/media/MediaPlayer;->access$2200(Landroid/media/MediaPlayer;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v6, 0x9

    aput-object v4, v5, v6

    const-string v4, "IS_VIDEO"

    const/16 v6, 0xa

    aput-object v4, v5, v6

    iget-object v4, v1, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v4}, Landroid/media/MediaPlayer;->access$2300(Landroid/media/MediaPlayer;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v6, 0xb

    aput-object v4, v5, v6

    invoke-static {v0, v3, v5}, Landroid/media/MediaPlayer;->access$2400(Landroid/media/MediaPlayer;Ljava/lang/String;[Ljava/lang/Object;)Z

    iget-object v0, v1, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v0, v12}, Landroid/media/MediaPlayer;->access$1802(Landroid/media/MediaPlayer;I)I

    :cond_2f
    :goto_c
    iget-object v0, v1, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v0, v15}, Landroid/media/MediaPlayer;->access$4202(Landroid/media/MediaPlayer;I)I

    nop

    :goto_d
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_d
        :pswitch_c
        :pswitch_10
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x62
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xc8
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0xd2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x2bc
        :pswitch_8
        :pswitch_7
        :pswitch_7
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x322
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

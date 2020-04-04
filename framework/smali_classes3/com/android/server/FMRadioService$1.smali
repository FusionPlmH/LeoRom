.class Lcom/android/server/FMRadioService$1;
.super Landroid/content/BroadcastReceiver;
.source "FMRadioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/FMRadioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/FMRadioService;


# direct methods
.method constructor <init>(Lcom/android/server/FMRadioService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/FMRadioService$1;->this$0:Lcom/android/server/FMRadioService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "*** mVolumeEventReceiver: ACTION  - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    const-string v0, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_4

    const-string v0, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    const/16 v4, 0xa

    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v4, "android.media.EXTRA_VOLUME_STREAM_VALUE"

    invoke-virtual {p2, v4, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Stream: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "  and volume: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/media/AudioManager;->semGetStreamType(I)I

    move-result v5

    if-eq v0, v5, :cond_0

    if-ne v0, v1, :cond_4

    iget-object v5, p0, Lcom/android/server/FMRadioService$1;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v5}, Lcom/android/server/FMRadioService;->access$000(Lcom/android/server/FMRadioService;)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_0
    iget-object v5, p0, Lcom/android/server/FMRadioService$1;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v5}, Lcom/android/server/FMRadioService;->access$100(Lcom/android/server/FMRadioService;)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/android/server/FMRadioService$1;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v5}, Lcom/android/server/FMRadioService;->access$200(Lcom/android/server/FMRadioService;)Landroid/media/AudioManager;

    move-result-object v5

    invoke-static {v3}, Landroid/media/AudioManager;->semGetStreamType(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "current_stream_volume: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    if-ne v4, v5, :cond_2

    iget-object v6, p0, Lcom/android/server/FMRadioService$1;->this$0:Lcom/android/server/FMRadioService;

    iget-object v6, v6, Lcom/android/server/FMRadioService;->mHandler:Landroid/os/Handler;

    const/16 v7, 0xc8

    invoke-virtual {v6, v7}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/server/FMRadioService$1;->this$0:Lcom/android/server/FMRadioService;

    iget-object v6, v6, Lcom/android/server/FMRadioService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    iget-object v6, p0, Lcom/android/server/FMRadioService$1;->this$0:Lcom/android/server/FMRadioService;

    int-to-long v7, v4

    invoke-virtual {v6, v7, v8}, Lcom/android/server/FMRadioService;->setVolume(J)V

    :cond_2
    goto :goto_0

    :cond_3
    iget-object v5, p0, Lcom/android/server/FMRadioService$1;->this$0:Lcom/android/server/FMRadioService;

    const/16 v6, 0xf

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    :cond_4
    :goto_0
    const-string v0, "com.sec.android.fm.volume_lock"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v4, -0x1

    if-eqz v0, :cond_7

    sget v0, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_5

    sget v0, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    if-eq v0, v1, :cond_5

    sget v0, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_6

    :cond_5
    iget-object v0, p0, Lcom/android/server/FMRadioService$1;->this$0:Lcom/android/server/FMRadioService;

    const-string v1, "com.sec.android.fm.return_back_volume"

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/FMRadioService;->access$302(Lcom/android/server/FMRadioService;I)I

    :cond_6
    const-string v0, "Volume Locked..."

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/FMRadioService$1;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v0, v3}, Lcom/android/server/FMRadioService;->access$102(Lcom/android/server/FMRadioService;Z)Z

    goto :goto_1

    :cond_7
    const-string v0, "com.sec.android.fm.volume_unlock"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "Volume Unlocked..."

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/FMRadioService$1;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v0, v4}, Lcom/android/server/FMRadioService;->access$302(Lcom/android/server/FMRadioService;I)I

    iget-object v0, p0, Lcom/android/server/FMRadioService$1;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v0, v2}, Lcom/android/server/FMRadioService;->access$102(Lcom/android/server/FMRadioService;Z)Z

    :cond_8
    :goto_1
    return-void
.end method

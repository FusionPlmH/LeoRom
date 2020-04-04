.class Lcom/android/server/FMRadioService$5;
.super Landroid/telephony/PhoneStateListener;
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
.field private mIsPhoneCallRinging:Z

.field final synthetic this$0:Lcom/android/server/FMRadioService;


# direct methods
.method constructor <init>(Lcom/android/server/FMRadioService;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/FMRadioService$5;->this$0:Lcom/android/server/FMRadioService;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/FMRadioService$5;->mIsPhoneCallRinging:Z

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "phone state : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mNeedToResumeFM: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/FMRadioService;->access$1500()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mIsPhoneCallRinging : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/FMRadioService$5;->mIsPhoneCallRinging:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mNeedResumeToFreq : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/FMRadioService$5;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v1}, Lcom/android/server/FMRadioService;->access$1600(Lcom/android/server/FMRadioService;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " mIsForcestop : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/FMRadioService$5;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v1}, Lcom/android/server/FMRadioService;->access$1700(Lcom/android/server/FMRadioService;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    goto/16 :goto_3

    :pswitch_1
    iput-boolean v0, p0, Lcom/android/server/FMRadioService$5;->mIsPhoneCallRinging:Z

    goto/16 :goto_3

    :pswitch_2
    invoke-static {}, Lcom/android/server/FMRadioService;->access$1500()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/server/FMRadioService$5;->this$0:Lcom/android/server/FMRadioService;

    invoke-virtual {v1}, Lcom/android/server/FMRadioService;->isOn()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/server/FMRadioService$5;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v1}, Lcom/android/server/FMRadioService;->access$1600(Lcom/android/server/FMRadioService;)J

    move-result-wide v3

    const-wide/16 v5, -0x2

    cmp-long v1, v3, v5

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/server/FMRadioService$5;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v1}, Lcom/android/server/FMRadioService;->access$1700(Lcom/android/server/FMRadioService;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-boolean v1, p0, Lcom/android/server/FMRadioService$5;->mIsPhoneCallRinging:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/server/FMRadioService$5;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v1, v2}, Lcom/android/server/FMRadioService;->access$1800(Lcom/android/server/FMRadioService;Z)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/server/FMRadioService$5;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v1}, Lcom/android/server/FMRadioService;->access$200(Lcom/android/server/FMRadioService;)Landroid/media/AudioManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioManager;->semGetRadioOutputPath()I

    move-result v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onCallStateChanged() :: CALL_STATE_IDLE setPath() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/FMRadioService$5;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v3}, Lcom/android/server/FMRadioService;->access$200(Lcom/android/server/FMRadioService;)Landroid/media/AudioManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/media/AudioManager;->semSetRadioOutputPath(I)Z

    invoke-static {}, Lcom/android/server/FMRadioService;->access$1100()Z

    move-result v3

    const-wide/16 v7, 0x0

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/FMRadioService$5;->this$0:Lcom/android/server/FMRadioService;

    iget-object v4, p0, Lcom/android/server/FMRadioService$5;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v4}, Lcom/android/server/FMRadioService;->access$200(Lcom/android/server/FMRadioService;)Landroid/media/AudioManager;

    move-result-object v4

    invoke-static {v0}, Landroid/media/AudioManager;->semGetStreamType(I)I

    move-result v9

    invoke-virtual {v4, v9}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v4

    int-to-long v9, v4

    invoke-static {v3, v9, v10}, Lcom/android/server/FMRadioService;->access$1902(Lcom/android/server/FMRadioService;J)J

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "slowly increase the volume till :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/FMRadioService$5;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v4}, Lcom/android/server/FMRadioService;->access$1900(Lcom/android/server/FMRadioService;)J

    move-result-wide v9

    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/FMRadioService$5;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v3}, Lcom/android/server/FMRadioService;->access$1900(Lcom/android/server/FMRadioService;)J

    move-result-wide v3

    cmp-long v3, v3, v7

    if-eqz v3, :cond_1

    iget-object v0, p0, Lcom/android/server/FMRadioService$5;->this$0:Lcom/android/server/FMRadioService;

    iget-object v3, p0, Lcom/android/server/FMRadioService$5;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v3}, Lcom/android/server/FMRadioService;->access$1900(Lcom/android/server/FMRadioService;)J

    move-result-wide v3

    invoke-static {v0, v3, v4}, Lcom/android/server/FMRadioService;->access$2002(Lcom/android/server/FMRadioService;J)J

    sget-boolean v0, Lcom/android/server/FMRadioServiceFeature;->FEATURE_USE_CHIPSET_VOLUME:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/FMRadioService$5;->this$0:Lcom/android/server/FMRadioService;

    const-wide/16 v3, 0x1

    invoke-virtual {v0, v3, v4}, Lcom/android/server/FMRadioService;->setVolume(J)V

    iget-object v0, p0, Lcom/android/server/FMRadioService$5;->this$0:Lcom/android/server/FMRadioService;

    iget-object v0, v0, Lcom/android/server/FMRadioService;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xc8

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/FMRadioService$5;->this$0:Lcom/android/server/FMRadioService;

    iget-object v0, v0, Lcom/android/server/FMRadioService;->mHandler:Landroid/os/Handler;

    const-wide/16 v9, 0x64

    invoke-virtual {v0, v3, v9, v10}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/FMRadioService$5;->this$0:Lcom/android/server/FMRadioService;

    iget-object v3, p0, Lcom/android/server/FMRadioService$5;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v3}, Lcom/android/server/FMRadioService;->access$1900(Lcom/android/server/FMRadioService;)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/android/server/FMRadioService;->setVolume(J)V

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/server/FMRadioService$5;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v3}, Lcom/android/server/FMRadioService;->access$200(Lcom/android/server/FMRadioService;)Landroid/media/AudioManager;

    move-result-object v3

    invoke-static {v0}, Landroid/media/AudioManager;->semGetStreamType(I)I

    move-result v0

    iget-object v4, p0, Lcom/android/server/FMRadioService$5;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v4}, Lcom/android/server/FMRadioService;->access$1900(Lcom/android/server/FMRadioService;)J

    move-result-wide v9

    long-to-int v4, v9

    invoke-virtual {v3, v0, v4, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    :goto_0
    invoke-static {v2}, Lcom/android/server/FMRadioService;->access$1102(Z)Z

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/android/server/FMRadioService$5;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v3}, Lcom/android/server/FMRadioService;->access$200(Lcom/android/server/FMRadioService;)Landroid/media/AudioManager;

    move-result-object v3

    invoke-static {v0}, Landroid/media/AudioManager;->semGetStreamType(I)I

    move-result v4

    iget-object v9, p0, Lcom/android/server/FMRadioService$5;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v9}, Lcom/android/server/FMRadioService;->access$200(Lcom/android/server/FMRadioService;)Landroid/media/AudioManager;

    move-result-object v9

    invoke-static {v0}, Landroid/media/AudioManager;->semGetStreamType(I)I

    move-result v0

    invoke-virtual {v9, v0}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    invoke-virtual {v3, v4, v0, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    :goto_1
    iget-object v0, p0, Lcom/android/server/FMRadioService$5;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v0}, Lcom/android/server/FMRadioService;->access$1600(Lcom/android/server/FMRadioService;)J

    move-result-wide v3

    cmp-long v0, v3, v7

    if-gtz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/FMRadioService$5;->this$0:Lcom/android/server/FMRadioService;

    const-wide/32 v3, 0x155cc

    invoke-static {v0, v3, v4}, Lcom/android/server/FMRadioService;->access$1602(Lcom/android/server/FMRadioService;J)J

    :cond_3
    iget-object v0, p0, Lcom/android/server/FMRadioService$5;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v0}, Lcom/android/server/FMRadioService;->access$2100(Lcom/android/server/FMRadioService;)Lcom/android/server/FMPlayerNativeBase;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/FMRadioService$5;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v3}, Lcom/android/server/FMRadioService;->access$1600(Lcom/android/server/FMRadioService;)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/android/server/FMPlayerNativeBase;->tune(J)V

    iget-object v0, p0, Lcom/android/server/FMRadioService$5;->this$0:Lcom/android/server/FMRadioService;

    const/4 v3, 0x7

    iget-object v4, p0, Lcom/android/server/FMRadioService$5;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v4}, Lcom/android/server/FMRadioService;->access$1600(Lcom/android/server/FMRadioService;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.app.fm.auto.on"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x10000000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v3, "freq"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/server/FMRadioService$5;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v7}, Lcom/android/server/FMRadioService;->access$1600(Lcom/android/server/FMRadioService;)J

    move-result-wide v7

    long-to-float v7, v7

    const/high16 v8, 0x447a0000    # 1000.0f

    div-float/2addr v7, v8

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, ""

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/FMRadioService$5;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v3}, Lcom/android/server/FMRadioService;->access$600(Lcom/android/server/FMRadioService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v3, p0, Lcom/android/server/FMRadioService$5;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v3, v5, v6}, Lcom/android/server/FMRadioService;->access$1602(Lcom/android/server/FMRadioService;J)J

    goto :goto_2

    :cond_4
    const-string v0, "Not able to resume FM player"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    :cond_5
    :goto_2
    invoke-static {v2}, Lcom/android/server/FMRadioService;->access$1502(Z)Z

    iput-boolean v2, p0, Lcom/android/server/FMRadioService$5;->mIsPhoneCallRinging:Z

    nop

    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

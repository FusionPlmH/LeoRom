.class final Lcom/samsung/android/settings/notification/SecVolumeSettings$VolumePreferenceCallback;
.super Ljava/lang/Object;
.source "SecVolumeSettings.java"

# interfaces
.implements Lcom/android/settings/notification/VolumeSeekBarPreference$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/notification/SecVolumeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "VolumePreferenceCallback"
.end annotation


# instance fields
.field private mCurrent:Landroid/preference/SeekBarVolumizer;

.field final synthetic this$0:Lcom/samsung/android/settings/notification/SecVolumeSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/notification/SecVolumeSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/notification/SecVolumeSettings$VolumePreferenceCallback;->this$0:Lcom/samsung/android/settings/notification/SecVolumeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSampleStarting(Landroid/preference/SeekBarVolumizer;)V
    .locals 3

    const-string v0, "SecVolumeSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSampleStarting : SeekBarVolumizer : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "past :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/settings/notification/SecVolumeSettings$VolumePreferenceCallback;->mCurrent:Landroid/preference/SeekBarVolumizer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecVolumeSettings$VolumePreferenceCallback;->mCurrent:Landroid/preference/SeekBarVolumizer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecVolumeSettings$VolumePreferenceCallback;->mCurrent:Landroid/preference/SeekBarVolumizer;

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecVolumeSettings$VolumePreferenceCallback;->mCurrent:Landroid/preference/SeekBarVolumizer;

    invoke-virtual {v0}, Landroid/preference/SeekBarVolumizer;->stopSample()V

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/settings/notification/SecVolumeSettings$VolumePreferenceCallback;->mCurrent:Landroid/preference/SeekBarVolumizer;

    return-void
.end method

.method public onStreamValueChanged(II)V
    .locals 4

    const/4 v0, 0x5

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1

    const/16 v0, 0x10

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    const-string v0, "SecVolumeSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStreamValueChanged - not controlled stream :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", progress :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_0
    const-string v0, "SecVolumeSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStreamValueChanged : STREAM_MUSIC, progress : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecVolumeSettings$VolumePreferenceCallback;->this$0:Lcom/samsung/android/settings/notification/SecVolumeSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/SecVolumeSettings;->access$300(Lcom/samsung/android/settings/notification/SecVolumeSettings;)Lcom/samsung/android/settings/notification/SecVolumeSettings$H;

    move-result-object v0

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/notification/SecVolumeSettings$H;->removeMessages(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecVolumeSettings$VolumePreferenceCallback;->this$0:Lcom/samsung/android/settings/notification/SecVolumeSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/SecVolumeSettings;->access$300(Lcom/samsung/android/settings/notification/SecVolumeSettings;)Lcom/samsung/android/settings/notification/SecVolumeSettings$H;

    move-result-object v0

    invoke-virtual {v0, v2, p2, v1}, Lcom/samsung/android/settings/notification/SecVolumeSettings$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    :pswitch_1
    const-string v0, "SecVolumeSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStreamValueChanged : STREAM_RING, progress : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_2
    const-string v0, "SecVolumeSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStreamValueChanged : STREAM_SYSTEM, progress : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecVolumeSettings$VolumePreferenceCallback;->this$0:Lcom/samsung/android/settings/notification/SecVolumeSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/SecVolumeSettings;->access$300(Lcom/samsung/android/settings/notification/SecVolumeSettings;)Lcom/samsung/android/settings/notification/SecVolumeSettings$H;

    move-result-object v0

    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/notification/SecVolumeSettings$H;->removeMessages(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecVolumeSettings$VolumePreferenceCallback;->this$0:Lcom/samsung/android/settings/notification/SecVolumeSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/SecVolumeSettings;->access$300(Lcom/samsung/android/settings/notification/SecVolumeSettings;)Lcom/samsung/android/settings/notification/SecVolumeSettings$H;

    move-result-object v0

    invoke-virtual {v0, v2, p2, v1}, Lcom/samsung/android/settings/notification/SecVolumeSettings$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :cond_0
    const-string v0, "SecVolumeSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStreamValueChanged : STREAM_VOICENOTE, progress : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecVolumeSettings$VolumePreferenceCallback;->this$0:Lcom/samsung/android/settings/notification/SecVolumeSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/SecVolumeSettings;->access$300(Lcom/samsung/android/settings/notification/SecVolumeSettings;)Lcom/samsung/android/settings/notification/SecVolumeSettings$H;

    move-result-object v0

    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/notification/SecVolumeSettings$H;->removeMessages(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecVolumeSettings$VolumePreferenceCallback;->this$0:Lcom/samsung/android/settings/notification/SecVolumeSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/SecVolumeSettings;->access$300(Lcom/samsung/android/settings/notification/SecVolumeSettings;)Lcom/samsung/android/settings/notification/SecVolumeSettings$H;

    move-result-object v0

    invoke-virtual {v0, v2, p2, v1}, Lcom/samsung/android/settings/notification/SecVolumeSettings$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :cond_1
    const-string v0, "SecVolumeSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStreamValueChanged : STREAM_NOTIFICATION, progress : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecVolumeSettings$VolumePreferenceCallback;->this$0:Lcom/samsung/android/settings/notification/SecVolumeSettings;

    invoke-virtual {v0}, Lcom/samsung/android/settings/notification/SecVolumeSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecVolumeSettings$VolumePreferenceCallback;->this$0:Lcom/samsung/android/settings/notification/SecVolumeSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/SecVolumeSettings;->access$300(Lcom/samsung/android/settings/notification/SecVolumeSettings;)Lcom/samsung/android/settings/notification/SecVolumeSettings$H;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/notification/SecVolumeSettings$H;->removeMessages(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecVolumeSettings$VolumePreferenceCallback;->this$0:Lcom/samsung/android/settings/notification/SecVolumeSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/SecVolumeSettings;->access$300(Lcom/samsung/android/settings/notification/SecVolumeSettings;)Lcom/samsung/android/settings/notification/SecVolumeSettings$H;

    move-result-object v0

    invoke-virtual {v0, v2, p2, v1}, Lcom/samsung/android/settings/notification/SecVolumeSettings$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_2
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public stopSample()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecVolumeSettings$VolumePreferenceCallback;->mCurrent:Landroid/preference/SeekBarVolumizer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecVolumeSettings$VolumePreferenceCallback;->mCurrent:Landroid/preference/SeekBarVolumizer;

    invoke-virtual {v0}, Landroid/preference/SeekBarVolumizer;->stopSample()V

    :cond_0
    return-void
.end method

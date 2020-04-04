.class Lcom/samsung/android/settings/notification/SecRecommendRingtoneDialog$1;
.super Ljava/lang/Object;
.source "SecRecommendRingtoneDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/notification/SecRecommendRingtoneDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/notification/SecRecommendRingtoneDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/notification/SecRecommendRingtoneDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/notification/SecRecommendRingtoneDialog$1;->this$0:Lcom/samsung/android/settings/notification/SecRecommendRingtoneDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecRecommendRingtoneDialog$1;->this$0:Lcom/samsung/android/settings/notification/SecRecommendRingtoneDialog;

    invoke-static {v0, p2}, Lcom/samsung/android/settings/notification/SecRecommendRingtoneDialog;->access$002(Lcom/samsung/android/settings/notification/SecRecommendRingtoneDialog;I)I

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecRecommendRingtoneDialog$1;->this$0:Lcom/samsung/android/settings/notification/SecRecommendRingtoneDialog;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/SecRecommendRingtoneDialog;->access$100(Lcom/samsung/android/settings/notification/SecRecommendRingtoneDialog;)Lcom/samsung/android/settings/notification/SecRecommendRingtoneDialog$RecommendAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/notification/SecRecommendRingtoneDialog$RecommendAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecRecommendRingtoneDialog$1;->this$0:Lcom/samsung/android/settings/notification/SecRecommendRingtoneDialog;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/SecRecommendRingtoneDialog;->access$200(Lcom/samsung/android/settings/notification/SecRecommendRingtoneDialog;)Landroid/media/Ringtone;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecRecommendRingtoneDialog$1;->this$0:Lcom/samsung/android/settings/notification/SecRecommendRingtoneDialog;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/SecRecommendRingtoneDialog;->access$200(Lcom/samsung/android/settings/notification/SecRecommendRingtoneDialog;)Landroid/media/Ringtone;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecRecommendRingtoneDialog$1;->this$0:Lcom/samsung/android/settings/notification/SecRecommendRingtoneDialog;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/SecRecommendRingtoneDialog;->access$300(Lcom/samsung/android/settings/notification/SecRecommendRingtoneDialog;)V

    const/4 v0, 0x3

    const/4 v1, 0x2

    packed-switch p2, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    iget-object v2, p0, Lcom/samsung/android/settings/notification/SecRecommendRingtoneDialog$1;->this$0:Lcom/samsung/android/settings/notification/SecRecommendRingtoneDialog;

    iget-object v3, p0, Lcom/samsung/android/settings/notification/SecRecommendRingtoneDialog$1;->this$0:Lcom/samsung/android/settings/notification/SecRecommendRingtoneDialog;

    invoke-static {v3}, Lcom/samsung/android/settings/notification/SecRecommendRingtoneDialog;->access$400(Lcom/samsung/android/settings/notification/SecRecommendRingtoneDialog;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/notification/SecRecommendRingtoneDialog$1;->this$0:Lcom/samsung/android/settings/notification/SecRecommendRingtoneDialog;

    invoke-static {v4}, Lcom/samsung/android/settings/notification/SecRecommendRingtoneDialog;->access$700(Lcom/samsung/android/settings/notification/SecRecommendRingtoneDialog;)I

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SecRecommendRingtoneDialog$1;->this$0:Lcom/samsung/android/settings/notification/SecRecommendRingtoneDialog;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SecRecommendRingtoneDialog;->access$500(Lcom/samsung/android/settings/notification/SecRecommendRingtoneDialog;)I

    move-result v5

    invoke-static {v5}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v5

    invoke-static {v3, v4, v5}, Landroid/media/RingtoneManager;->semGetRingtone(Landroid/content/Context;ILandroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/settings/notification/SecRecommendRingtoneDialog;->access$202(Lcom/samsung/android/settings/notification/SecRecommendRingtoneDialog;Landroid/media/Ringtone;)Landroid/media/Ringtone;

    iget-object v2, p0, Lcom/samsung/android/settings/notification/SecRecommendRingtoneDialog$1;->this$0:Lcom/samsung/android/settings/notification/SecRecommendRingtoneDialog;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/SecRecommendRingtoneDialog;->access$600(Lcom/samsung/android/settings/notification/SecRecommendRingtoneDialog;)Landroid/media/AudioManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v2

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecRecommendRingtoneDialog$1;->this$0:Lcom/samsung/android/settings/notification/SecRecommendRingtoneDialog;

    invoke-static {v1}, Lcom/samsung/android/settings/notification/SecRecommendRingtoneDialog;->access$600(Lcom/samsung/android/settings/notification/SecRecommendRingtoneDialog;)Landroid/media/AudioManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecRecommendRingtoneDialog$1;->this$0:Lcom/samsung/android/settings/notification/SecRecommendRingtoneDialog;

    invoke-static {v1}, Lcom/samsung/android/settings/notification/SecRecommendRingtoneDialog;->access$200(Lcom/samsung/android/settings/notification/SecRecommendRingtoneDialog;)Landroid/media/Ringtone;

    move-result-object v1

    new-instance v2, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v2}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v2, v0}, Landroid/media/AudioAttributes$Builder;->setLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/media/Ringtone;->setAudioAttributes(Landroid/media/AudioAttributes;)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecRecommendRingtoneDialog$1;->this$0:Lcom/samsung/android/settings/notification/SecRecommendRingtoneDialog;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/SecRecommendRingtoneDialog;->access$200(Lcom/samsung/android/settings/notification/SecRecommendRingtoneDialog;)Landroid/media/Ringtone;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/Ringtone;->play()V

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Lcom/samsung/android/settings/notification/SecRecommendRingtoneDialog$1;->this$0:Lcom/samsung/android/settings/notification/SecRecommendRingtoneDialog;

    iget-object v3, p0, Lcom/samsung/android/settings/notification/SecRecommendRingtoneDialog$1;->this$0:Lcom/samsung/android/settings/notification/SecRecommendRingtoneDialog;

    invoke-static {v3}, Lcom/samsung/android/settings/notification/SecRecommendRingtoneDialog;->access$400(Lcom/samsung/android/settings/notification/SecRecommendRingtoneDialog;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/notification/SecRecommendRingtoneDialog$1;->this$0:Lcom/samsung/android/settings/notification/SecRecommendRingtoneDialog;

    invoke-static {v4}, Lcom/samsung/android/settings/notification/SecRecommendRingtoneDialog;->access$500(Lcom/samsung/android/settings/notification/SecRecommendRingtoneDialog;)I

    move-result v4

    invoke-static {v4}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/settings/notification/SecRecommendRingtoneDialog;->access$202(Lcom/samsung/android/settings/notification/SecRecommendRingtoneDialog;Landroid/media/Ringtone;)Landroid/media/Ringtone;

    iget-object v2, p0, Lcom/samsung/android/settings/notification/SecRecommendRingtoneDialog$1;->this$0:Lcom/samsung/android/settings/notification/SecRecommendRingtoneDialog;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/SecRecommendRingtoneDialog;->access$600(Lcom/samsung/android/settings/notification/SecRecommendRingtoneDialog;)Landroid/media/AudioManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v2

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecRecommendRingtoneDialog$1;->this$0:Lcom/samsung/android/settings/notification/SecRecommendRingtoneDialog;

    invoke-static {v1}, Lcom/samsung/android/settings/notification/SecRecommendRingtoneDialog;->access$600(Lcom/samsung/android/settings/notification/SecRecommendRingtoneDialog;)Landroid/media/AudioManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecRecommendRingtoneDialog$1;->this$0:Lcom/samsung/android/settings/notification/SecRecommendRingtoneDialog;

    invoke-static {v1}, Lcom/samsung/android/settings/notification/SecRecommendRingtoneDialog;->access$200(Lcom/samsung/android/settings/notification/SecRecommendRingtoneDialog;)Landroid/media/Ringtone;

    move-result-object v1

    new-instance v2, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v2}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v2, v0}, Landroid/media/AudioAttributes$Builder;->setLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/media/Ringtone;->setAudioAttributes(Landroid/media/AudioAttributes;)V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecRecommendRingtoneDialog$1;->this$0:Lcom/samsung/android/settings/notification/SecRecommendRingtoneDialog;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/SecRecommendRingtoneDialog;->access$200(Lcom/samsung/android/settings/notification/SecRecommendRingtoneDialog;)Landroid/media/Ringtone;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/Ringtone;->play()V

    nop

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

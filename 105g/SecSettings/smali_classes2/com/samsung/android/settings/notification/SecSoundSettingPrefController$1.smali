.class Lcom/samsung/android/settings/notification/SecSoundSettingPrefController$1;
.super Ljava/lang/Object;
.source "SecSoundSettingPrefController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/notification/SecSoundSettingPrefController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/notification/SecSoundSettingPrefController;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/notification/SecSoundSettingPrefController;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/notification/SecSoundSettingPrefController$1;->this$0:Lcom/samsung/android/settings/notification/SecSoundSettingPrefController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecSoundSettingPrefController$1;->this$0:Lcom/samsung/android/settings/notification/SecSoundSettingPrefController;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/SecSoundSettingPrefController;->access$200(Lcom/samsung/android/settings/notification/SecSoundSettingPrefController;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v2, 0x2

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/samsung/android/settings/notification/SecSoundSettingPrefController$1;->this$0:Lcom/samsung/android/settings/notification/SecSoundSettingPrefController;

    invoke-static {v4}, Lcom/samsung/android/settings/notification/SecSoundSettingPrefController;->access$1000(Lcom/samsung/android/settings/notification/SecSoundSettingPrefController;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/samsung/android/settings/notification/SoundUtils;->getSimName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/settings/notification/SecSoundSettingPrefController$1;->this$0:Lcom/samsung/android/settings/notification/SecSoundSettingPrefController;

    invoke-static {v3}, Lcom/samsung/android/settings/notification/SecSoundSettingPrefController;->access$1100(Lcom/samsung/android/settings/notification/SecSoundSettingPrefController;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/samsung/android/settings/notification/SecSoundSettingPrefController;->updateRingtoneName(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/settings/notification/SecSoundSettingPrefController$1;->this$0:Lcom/samsung/android/settings/notification/SecSoundSettingPrefController;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/SecSoundSettingPrefController;->access$1200(Lcom/samsung/android/settings/notification/SecSoundSettingPrefController;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/samsung/android/settings/notification/SoundUtils;->getSimName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecSoundSettingPrefController$1;->this$0:Lcom/samsung/android/settings/notification/SecSoundSettingPrefController;

    invoke-static {v1}, Lcom/samsung/android/settings/notification/SecSoundSettingPrefController;->access$1300(Lcom/samsung/android/settings/notification/SecSoundSettingPrefController;)Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x100

    invoke-static {v1, v2}, Lcom/samsung/android/settings/notification/SecSoundSettingPrefController;->updateRingtoneName(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecSoundSettingPrefController$1;->this$0:Lcom/samsung/android/settings/notification/SecSoundSettingPrefController;

    invoke-static {v1}, Lcom/samsung/android/settings/notification/SecSoundSettingPrefController;->access$400(Lcom/samsung/android/settings/notification/SecSoundSettingPrefController;)Lcom/samsung/android/settings/notification/SecSoundSettingPrefController$H;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/settings/notification/SecSoundSettingPrefController$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecSoundSettingPrefController$1;->this$0:Lcom/samsung/android/settings/notification/SecSoundSettingPrefController;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/SecSoundSettingPrefController;->access$900(Lcom/samsung/android/settings/notification/SecSoundSettingPrefController;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/samsung/android/settings/notification/SecSoundSettingPrefController;->updateRingtoneName(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecSoundSettingPrefController$1;->this$0:Lcom/samsung/android/settings/notification/SecSoundSettingPrefController;

    invoke-static {v1}, Lcom/samsung/android/settings/notification/SecSoundSettingPrefController;->access$400(Lcom/samsung/android/settings/notification/SecSoundSettingPrefController;)Lcom/samsung/android/settings/notification/SecSoundSettingPrefController$H;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/settings/notification/SecSoundSettingPrefController$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/settings/notification/SecSoundSettingPrefController$1;->this$0:Lcom/samsung/android/settings/notification/SecSoundSettingPrefController;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/SecSoundSettingPrefController;->access$500(Lcom/samsung/android/settings/notification/SecSoundSettingPrefController;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/samsung/android/settings/notification/SoundUtils;->getSimName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/settings/notification/SecSoundSettingPrefController$1;->this$0:Lcom/samsung/android/settings/notification/SecSoundSettingPrefController;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/SecSoundSettingPrefController;->access$600(Lcom/samsung/android/settings/notification/SecSoundSettingPrefController;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/samsung/android/settings/notification/SecSoundSettingPrefController;->updateRingtoneName(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/settings/notification/SecSoundSettingPrefController$1;->this$0:Lcom/samsung/android/settings/notification/SecSoundSettingPrefController;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/SecSoundSettingPrefController;->access$700(Lcom/samsung/android/settings/notification/SecSoundSettingPrefController;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/samsung/android/settings/notification/SoundUtils;->getSimName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecSoundSettingPrefController$1;->this$0:Lcom/samsung/android/settings/notification/SecSoundSettingPrefController;

    invoke-static {v1}, Lcom/samsung/android/settings/notification/SecSoundSettingPrefController;->access$800(Lcom/samsung/android/settings/notification/SecSoundSettingPrefController;)Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x80

    invoke-static {v1, v2}, Lcom/samsung/android/settings/notification/SecSoundSettingPrefController;->updateRingtoneName(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecSoundSettingPrefController$1;->this$0:Lcom/samsung/android/settings/notification/SecSoundSettingPrefController;

    invoke-static {v1}, Lcom/samsung/android/settings/notification/SecSoundSettingPrefController;->access$400(Lcom/samsung/android/settings/notification/SecSoundSettingPrefController;)Lcom/samsung/android/settings/notification/SecSoundSettingPrefController$H;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/settings/notification/SecSoundSettingPrefController$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecSoundSettingPrefController$1;->this$0:Lcom/samsung/android/settings/notification/SecSoundSettingPrefController;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/SecSoundSettingPrefController;->access$300(Lcom/samsung/android/settings/notification/SecSoundSettingPrefController;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/samsung/android/settings/notification/SecSoundSettingPrefController;->updateRingtoneName(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/notification/SecSoundSettingPrefController$1;->this$0:Lcom/samsung/android/settings/notification/SecSoundSettingPrefController;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/SecSoundSettingPrefController;->access$400(Lcom/samsung/android/settings/notification/SecSoundSettingPrefController;)Lcom/samsung/android/settings/notification/SecSoundSettingPrefController$H;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/samsung/android/settings/notification/SecSoundSettingPrefController$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

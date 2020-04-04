.class final Lcom/samsung/android/settings/notification/SecVolumeSettings$H;
.super Landroid/os/Handler;
.source "SecVolumeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/notification/SecVolumeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/notification/SecVolumeSettings;


# direct methods
.method private constructor <init>(Lcom/samsung/android/settings/notification/SecVolumeSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/notification/SecVolumeSettings$H;->this$0:Lcom/samsung/android/settings/notification/SecVolumeSettings;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/settings/notification/SecVolumeSettings;Lcom/samsung/android/settings/notification/SecVolumeSettings$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/notification/SecVolumeSettings$H;-><init>(Lcom/samsung/android/settings/notification/SecVolumeSettings;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecVolumeSettings$H;->this$0:Lcom/samsung/android/settings/notification/SecVolumeSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/SecVolumeSettings;->access$800(Lcom/samsung/android/settings/notification/SecVolumeSettings;)Lcom/samsung/android/settings/notification/SecBixbyVolumePreferenceController;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecVolumeSettings$H;->this$0:Lcom/samsung/android/settings/notification/SecVolumeSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/SecVolumeSettings;->access$800(Lcom/samsung/android/settings/notification/SecVolumeSettings;)Lcom/samsung/android/settings/notification/SecBixbyVolumePreferenceController;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/notification/SecBixbyVolumePreferenceController;->updatePreferenceIcon(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecVolumeSettings$H;->this$0:Lcom/samsung/android/settings/notification/SecVolumeSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/SecVolumeSettings;->access$500(Lcom/samsung/android/settings/notification/SecVolumeSettings;)Lcom/android/settings/notification/NotificationVolumePreferenceController;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecVolumeSettings$H;->this$0:Lcom/samsung/android/settings/notification/SecVolumeSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/SecVolumeSettings;->access$500(Lcom/samsung/android/settings/notification/SecVolumeSettings;)Lcom/android/settings/notification/NotificationVolumePreferenceController;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/NotificationVolumePreferenceController;->updatePreferenceIcon(I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecVolumeSettings$H;->this$0:Lcom/samsung/android/settings/notification/SecVolumeSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/SecVolumeSettings;->access$700(Lcom/samsung/android/settings/notification/SecVolumeSettings;)Lcom/samsung/android/settings/notification/SecSystemVolumePreferenceController;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecVolumeSettings$H;->this$0:Lcom/samsung/android/settings/notification/SecVolumeSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/SecVolumeSettings;->access$700(Lcom/samsung/android/settings/notification/SecVolumeSettings;)Lcom/samsung/android/settings/notification/SecSystemVolumePreferenceController;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/notification/SecSystemVolumePreferenceController;->updatePreferenceIcon(I)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecVolumeSettings$H;->this$0:Lcom/samsung/android/settings/notification/SecVolumeSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/SecVolumeSettings;->access$600(Lcom/samsung/android/settings/notification/SecVolumeSettings;)Lcom/android/settings/notification/MediaVolumePreferenceController;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecVolumeSettings$H;->this$0:Lcom/samsung/android/settings/notification/SecVolumeSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/SecVolumeSettings;->access$600(Lcom/samsung/android/settings/notification/SecVolumeSettings;)Lcom/android/settings/notification/MediaVolumePreferenceController;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/MediaVolumePreferenceController;->updatePreferenceIcon(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecVolumeSettings$H;->this$0:Lcom/samsung/android/settings/notification/SecVolumeSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/SecVolumeSettings;->access$400(Lcom/samsung/android/settings/notification/SecVolumeSettings;)Lcom/samsung/android/settings/notification/SecVolumeSettings$VolumePreferenceCallback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/notification/SecVolumeSettings$VolumePreferenceCallback;->stopSample()V

    nop

    :cond_1
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.class Lcom/samsung/android/settings/notification/SecSoundModeSettings$6;
.super Landroid/content/BroadcastReceiver;
.source "SecSoundModeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/notification/SecSoundModeSettings;->registerListenersAndObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/notification/SecSoundModeSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/notification/SecSoundModeSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/notification/SecSoundModeSettings$6;->this$0:Lcom/samsung/android/settings/notification/SecSoundModeSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecSoundModeSettings$6;->this$0:Lcom/samsung/android/settings/notification/SecSoundModeSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/notification/SecSoundModeSettings;->access$1100(Lcom/samsung/android/settings/notification/SecSoundModeSettings;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "audio"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v2

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/notification/SecSoundModeSettings$6;->this$0:Lcom/samsung/android/settings/notification/SecSoundModeSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/notification/SecSoundModeSettings;->access$1200(Lcom/samsung/android/settings/notification/SecSoundModeSettings;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "mode_ringer_time_on"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/settings/notification/SecSoundModeSettings$6;->this$0:Lcom/samsung/android/settings/notification/SecSoundModeSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/notification/SecSoundModeSettings;->access$1300(Lcom/samsung/android/settings/notification/SecSoundModeSettings;)V

    :cond_1
    return-void
.end method

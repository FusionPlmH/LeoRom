.class Lcom/android/settings/notification/MediaVolumePreferenceController$MediaChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MediaVolumePreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/MediaVolumePreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaChangedReceiver"
.end annotation


# instance fields
.field private mRegistered:Z

.field final synthetic this$0:Lcom/android/settings/notification/MediaVolumePreferenceController;


# direct methods
.method private constructor <init>(Lcom/android/settings/notification/MediaVolumePreferenceController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/notification/MediaVolumePreferenceController$MediaChangedReceiver;->this$0:Lcom/android/settings/notification/MediaVolumePreferenceController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/notification/MediaVolumePreferenceController;Lcom/android/settings/notification/MediaVolumePreferenceController$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/notification/MediaVolumePreferenceController$MediaChangedReceiver;-><init>(Lcom/android/settings/notification/MediaVolumePreferenceController;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PrefControllerMixin"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MediaChangedReceiver is called by : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/notification/MediaVolumePreferenceController$MediaChangedReceiver;->this$0:Lcom/android/settings/notification/MediaVolumePreferenceController;

    invoke-static {v1}, Lcom/android/settings/notification/MediaVolumePreferenceController;->access$500(Lcom/android/settings/notification/MediaVolumePreferenceController;)Lcom/android/settings/notification/MediaVolumePreferenceController$H;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/settings/notification/MediaVolumePreferenceController$H;->sendEmptyMessage(I)Z

    return-void
.end method

.method public register(Z)V
    .locals 5

    iget-boolean v0, p0, Lcom/android/settings/notification/MediaVolumePreferenceController$MediaChangedReceiver;->mRegistered:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.sec.android.fm.player_lock.status.off"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.sec.android.fm.player_lock.status.on"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/notification/MediaVolumePreferenceController$MediaChangedReceiver;->this$0:Lcom/android/settings/notification/MediaVolumePreferenceController;

    invoke-static {v1}, Lcom/android/settings/notification/MediaVolumePreferenceController;->access$300(Lcom/android/settings/notification/MediaVolumePreferenceController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/android/settings/notification/MediaVolumePreferenceController$MediaChangedReceiver$1;

    invoke-direct {v2, p0}, Lcom/android/settings/notification/MediaVolumePreferenceController$MediaChangedReceiver$1;-><init>(Lcom/android/settings/notification/MediaVolumePreferenceController$MediaChangedReceiver;)V

    const-wide/16 v3, 0xa

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const-string v1, "PrefControllerMixin"

    const-string v2, "rester MediaChangedReceiver"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/notification/MediaVolumePreferenceController$MediaChangedReceiver;->this$0:Lcom/android/settings/notification/MediaVolumePreferenceController;

    invoke-static {v0}, Lcom/android/settings/notification/MediaVolumePreferenceController;->access$400(Lcom/android/settings/notification/MediaVolumePreferenceController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const-string v0, "PrefControllerMixin"

    const-string/jumbo v1, "un-rester MediaChangedReceiver"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iput-boolean p1, p0, Lcom/android/settings/notification/MediaVolumePreferenceController$MediaChangedReceiver;->mRegistered:Z

    return-void
.end method

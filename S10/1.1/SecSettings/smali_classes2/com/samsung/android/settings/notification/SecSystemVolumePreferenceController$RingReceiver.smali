.class Lcom/samsung/android/settings/notification/SecSystemVolumePreferenceController$RingReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SecSystemVolumePreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/notification/SecSystemVolumePreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RingReceiver"
.end annotation


# instance fields
.field private mRegistered:Z

.field final synthetic this$0:Lcom/samsung/android/settings/notification/SecSystemVolumePreferenceController;


# direct methods
.method private constructor <init>(Lcom/samsung/android/settings/notification/SecSystemVolumePreferenceController;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/notification/SecSystemVolumePreferenceController$RingReceiver;->this$0:Lcom/samsung/android/settings/notification/SecSystemVolumePreferenceController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/settings/notification/SecSystemVolumePreferenceController;Lcom/samsung/android/settings/notification/SecSystemVolumePreferenceController$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/notification/SecSystemVolumePreferenceController$RingReceiver;-><init>(Lcom/samsung/android/settings/notification/SecSystemVolumePreferenceController;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecSystemVolumePreferenceController$RingReceiver;->this$0:Lcom/samsung/android/settings/notification/SecSystemVolumePreferenceController;

    iget-object v1, v1, Lcom/samsung/android/settings/notification/SecSystemVolumePreferenceController;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public register(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/settings/notification/SecSystemVolumePreferenceController$RingReceiver;->mRegistered:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecSystemVolumePreferenceController$RingReceiver;->this$0:Lcom/samsung/android/settings/notification/SecSystemVolumePreferenceController;

    invoke-static {v1}, Lcom/samsung/android/settings/notification/SecSystemVolumePreferenceController;->access$200(Lcom/samsung/android/settings/notification/SecSystemVolumePreferenceController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecSystemVolumePreferenceController$RingReceiver;->this$0:Lcom/samsung/android/settings/notification/SecSystemVolumePreferenceController;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/SecSystemVolumePreferenceController;->access$300(Lcom/samsung/android/settings/notification/SecSystemVolumePreferenceController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :goto_0
    iput-boolean p1, p0, Lcom/samsung/android/settings/notification/SecSystemVolumePreferenceController$RingReceiver;->mRegistered:Z

    return-void
.end method

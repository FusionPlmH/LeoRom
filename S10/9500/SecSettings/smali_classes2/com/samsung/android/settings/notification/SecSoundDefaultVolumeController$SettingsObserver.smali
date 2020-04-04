.class final Lcom/samsung/android/settings/notification/SecSoundDefaultVolumeController$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "SecSoundDefaultVolumeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/notification/SecSoundDefaultVolumeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field private final DEFAULT_VOLUME_URI:Landroid/net/Uri;

.field final synthetic this$0:Lcom/samsung/android/settings/notification/SecSoundDefaultVolumeController;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/notification/SecSoundDefaultVolumeController;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/settings/notification/SecSoundDefaultVolumeController$SettingsObserver;->this$0:Lcom/samsung/android/settings/notification/SecSoundDefaultVolumeController;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string p1, "adjust_media_volume_only"

    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/notification/SecSoundDefaultVolumeController$SettingsObserver;->DEFAULT_VOLUME_URI:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecSoundDefaultVolumeController$SettingsObserver;->this$0:Lcom/samsung/android/settings/notification/SecSoundDefaultVolumeController;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/SecSoundDefaultVolumeController;->access$100(Lcom/samsung/android/settings/notification/SecSoundDefaultVolumeController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecSoundDefaultVolumeController$SettingsObserver;->this$0:Lcom/samsung/android/settings/notification/SecSoundDefaultVolumeController;

    invoke-static {v1}, Lcom/samsung/android/settings/notification/SecSoundDefaultVolumeController;->access$200(Lcom/samsung/android/settings/notification/SecSoundDefaultVolumeController;)Lcom/samsung/android/media/SemSoundAssistantManager;

    move-result-object v1

    const-string v2, "adjust_media_volume_only"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v1, v3}, Lcom/samsung/android/media/SemSoundAssistantManager;->setVolumeKeyMode(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecSoundDefaultVolumeController$SettingsObserver;->this$0:Lcom/samsung/android/settings/notification/SecSoundDefaultVolumeController;

    invoke-static {v1}, Lcom/samsung/android/settings/notification/SecSoundDefaultVolumeController;->access$400(Lcom/samsung/android/settings/notification/SecSoundDefaultVolumeController;)Lcom/android/settings/notification/SettingPref;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/notification/SecSoundDefaultVolumeController$SettingsObserver;->this$0:Lcom/samsung/android/settings/notification/SecSoundDefaultVolumeController;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/SecSoundDefaultVolumeController;->access$300(Lcom/samsung/android/settings/notification/SecSoundDefaultVolumeController;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/notification/SettingPref;->update(Landroid/content/Context;)V

    return-void
.end method

.method public register(Z)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecSoundDefaultVolumeController$SettingsObserver;->this$0:Lcom/samsung/android/settings/notification/SecSoundDefaultVolumeController;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/SecSoundDefaultVolumeController;->access$000(Lcom/samsung/android/settings/notification/SecSoundDefaultVolumeController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecSoundDefaultVolumeController$SettingsObserver;->DEFAULT_VOLUME_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :goto_0
    return-void
.end method

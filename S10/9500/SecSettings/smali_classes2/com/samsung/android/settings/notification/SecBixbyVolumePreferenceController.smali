.class public Lcom/samsung/android/settings/notification/SecBixbyVolumePreferenceController;
.super Lcom/android/settings/notification/VolumeSeekBarPreferenceController;
.source "SecBixbyVolumePreferenceController.java"


# static fields
.field private static final KEY_BIXBY_VOLUME:Ljava/lang/String; = "bixby_volume"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "bixby_volume"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected getAudioStream()I
    .locals 1

    const/4 v0, 0x3

    invoke-static {v0}, Landroid/media/AudioManager;->semGetStreamType(I)I

    move-result v0

    return v0
.end method

.method public getAvailabilityStatus()I
    .locals 1

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isSupportBixby()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecBixbyVolumePreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/SoundUtils;->isBixbyVoiceEnable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    return v0
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;->onResume()V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecBixbyVolumePreferenceController;->mHelper:Lcom/android/settings/notification/AudioHelper;

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecBixbyVolumePreferenceController;->getAudioStream()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/AudioHelper;->getStreamVolume(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/notification/SecBixbyVolumePreferenceController;->updatePreferenceIcon(I)V

    return-void
.end method

.method public updatePreferenceIcon(I)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecBixbyVolumePreferenceController;->mPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    if-eqz v0, :cond_1

    if-lez p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecBixbyVolumePreferenceController;->getNormalIcon()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecBixbyVolumePreferenceController;->getMuteIcon()I

    move-result v0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecBixbyVolumePreferenceController;->mPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/android/settings/notification/VolumeSeekBarPreference;->showIcon(IZ)V

    :cond_1
    return-void
.end method

.class public Lcom/android/settings/notification/NotificationVolumePreferenceController;
.super Lcom/android/settings/notification/RingVolumePreferenceController;
.source "NotificationVolumePreferenceController.java"


# static fields
.field private static final KEY_NOTIFICATION_VOLUME:Ljava/lang/String; = "notification_volume"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "notification_volume"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/notification/RingVolumePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/notification/RingVolumePreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    iget-object v0, p0, Lcom/android/settings/notification/NotificationVolumePreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/NotificationVolumePreferenceController;->mPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/VolumeSeekBarPreference;->setOrder(I)V

    :cond_0
    return-void
.end method

.method public getAudioStream()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public getAvailabilityStatus()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getMuteIcon()I
    .locals 1

    const v0, 0x7f080687

    return v0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "notification_volume"

    return-object v0
.end method

.method public isSliceable()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationVolumePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "notification_volume"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public updatePreferenceIcon(I)V
    .locals 6

    iget-object v0, p0, Lcom/android/settings/notification/NotificationVolumePreferenceController;->mPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/settings/notification/NotificationVolumePreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/android/settings/notification/NotificationVolumePreferenceController;->mHelper:Lcom/android/settings/notification/AudioHelper;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/android/settings/notification/AudioHelper;->getStreamVolume(I)I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    iget-object v4, p0, Lcom/android/settings/notification/NotificationVolumePreferenceController;->mPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    if-lez p1, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationVolumePreferenceController;->getNormalIcon()I

    move-result v5

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationVolumePreferenceController;->wasRingerModeVibrate()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationVolumePreferenceController;->getVibrateIcon()I

    move-result v5

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationVolumePreferenceController;->getMuteIcon()I

    move-result v5

    :goto_1
    if-nez v2, :cond_3

    goto :goto_2

    :cond_3
    move v1, v3

    :goto_2
    invoke-virtual {v4, v5, v1}, Lcom/android/settings/notification/VolumeSeekBarPreference;->showIcon(IZ)V

    goto :goto_4

    :cond_4
    iget-object v2, p0, Lcom/android/settings/notification/NotificationVolumePreferenceController;->mPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    if-lez p1, :cond_5

    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationVolumePreferenceController;->getNormalIcon()I

    move-result v3

    goto :goto_3

    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationVolumePreferenceController;->wasRingerModeVibrate()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationVolumePreferenceController;->getVibrateIcon()I

    move-result v3

    goto :goto_3

    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationVolumePreferenceController;->getMuteIcon()I

    move-result v3

    :goto_3
    invoke-virtual {v2, v3, v1}, Lcom/android/settings/notification/VolumeSeekBarPreference;->showIcon(IZ)V

    :cond_7
    :goto_4
    return-void
.end method

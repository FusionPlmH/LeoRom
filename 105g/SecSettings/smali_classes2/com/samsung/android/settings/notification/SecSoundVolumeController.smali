.class public Lcom/samsung/android/settings/notification/SecSoundVolumeController;
.super Lcom/samsung/android/settings/notification/SecSoundSettingPrefController;
.source "SecSoundVolumeController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/notification/SecSoundSettingPrefController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "volume_setting"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/samsung/android/settings/notification/SecSoundSettingPrefController;->updateState(Landroid/support/v7/preference/Preference;)V

    move-object v0, p1

    check-cast v0, Lcom/samsung/android/settings/widget/SecRestrictedPreference;

    const-string v1, "no_adjust_volume"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/SecRestrictedPreference;->checkRestrictionAndSetDisabled(Ljava/lang/String;)V

    return-void
.end method

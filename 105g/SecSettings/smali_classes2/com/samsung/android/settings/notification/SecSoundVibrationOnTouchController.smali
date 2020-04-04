.class public Lcom/samsung/android/settings/notification/SecSoundVibrationOnTouchController;
.super Lcom/samsung/android/settings/notification/SecSoundSettingPrefController;
.source "SecSoundVibrationOnTouchController.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mPreference:Landroid/support/v14/preference/SecSwitchPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/notification/SecSoundSettingPrefController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    return-void
.end method

.method private getVibrationOnTouchSummary()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecSoundVibrationOnTouchController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11200ae

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecSoundVibrationOnTouchController;->mContext:Landroid/content/Context;

    const v2, 0x7f121bff

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecSoundVibrationOnTouchController;->mContext:Landroid/content/Context;

    const v2, 0x7f1216cd

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-static {}, Lcom/samsung/android/settings/notification/SoundUtils;->hasActiveKey()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v1, ""

    :cond_1
    return-object v1
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/samsung/android/settings/notification/SecSoundSettingPrefController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecSoundVibrationOnTouchController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SecSwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/notification/SecSoundVibrationOnTouchController;->mPreference:Landroid/support/v14/preference/SecSwitchPreference;

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecSoundVibrationOnTouchController;->mPreference:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SecSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "vibrate_on_touch"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecSoundVibrationOnTouchController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/SoundUtils;->hasSystemVibration(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecSoundVibrationOnTouchController;->getViewIdForLogging()I

    move-result v1

    const/16 v2, 0xfb2

    invoke-static {v1, v2, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIZ)V

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecSoundVibrationOnTouchController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "haptic_feedback_enabled"

    nop

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v1

    return v1
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/samsung/android/settings/notification/SecSoundSettingPrefController;->updateState(Landroid/support/v7/preference/Preference;)V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecSoundVibrationOnTouchController;->mPreference:Landroid/support/v14/preference/SecSwitchPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecSoundVibrationOnTouchController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecSoundVibrationOnTouchController;->mPreference:Landroid/support/v14/preference/SecSwitchPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecSoundVibrationOnTouchController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "haptic_feedback_enabled"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecSoundVibrationOnTouchController;->mPreference:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/SecSoundVibrationOnTouchController;->getVibrationOnTouchSummary()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SecSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

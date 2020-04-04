.class public Lcom/samsung/android/settings/notification/SecSoundVibrateWhenRingingController;
.super Lcom/samsung/android/settings/notification/SecSoundSettingPrefController;
.source "SecSoundVibrateWhenRingingController.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mPreference:Landroid/support/v14/preference/SecSwitchPreference;

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/notification/SecSoundSettingPrefController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/notification/SecSoundVibrateWhenRingingController;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/SecSoundVibrateWhenRingingController;->updatePrefState()V

    return-void
.end method

.method private registerRingModeChangedReceiver()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecSoundVibrateWhenRingingController;->mReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v1, Lcom/samsung/android/settings/notification/SecSoundVibrateWhenRingingController$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/notification/SecSoundVibrateWhenRingingController$1;-><init>(Lcom/samsung/android/settings/notification/SecSoundVibrateWhenRingingController;)V

    iput-object v1, p0, Lcom/samsung/android/settings/notification/SecSoundVibrateWhenRingingController;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecSoundVibrateWhenRingingController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/notification/SecSoundVibrateWhenRingingController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method private releaseRingModeChangedReceiver()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecSoundVibrateWhenRingingController;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecSoundVibrateWhenRingingController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecSoundVibrateWhenRingingController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/notification/SecSoundVibrateWhenRingingController;->mReceiver:Landroid/content/BroadcastReceiver;

    :cond_0
    return-void
.end method

.method private updatePrefState()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecSoundVibrateWhenRingingController;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v1

    const/4 v2, 0x2

    if-ne v2, v1, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/notification/SecSoundVibrateWhenRingingController;->mPreference:Landroid/support/v14/preference/SecSwitchPreference;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/notification/SecSoundVibrateWhenRingingController;->mPreference:Landroid/support/v14/preference/SecSwitchPreference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    :goto_0
    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/samsung/android/settings/notification/SecSoundSettingPrefController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecSoundVibrateWhenRingingController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SecSwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/notification/SecSoundVibrateWhenRingingController;->mPreference:Landroid/support/v14/preference/SecSwitchPreference;

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "vibrate_when_ringing"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecSoundVibrateWhenRingingController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportSoftphone()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecSoundVibrateWhenRingingController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/SoundUtils;->hasHaptic(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onPause()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/SecSoundVibrateWhenRingingController;->releaseRingModeChangedReceiver()V

    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/16 v1, 0x150

    const/16 v2, 0xfa1

    invoke-static {v1, v2, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIZ)V

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecSoundVibrateWhenRingingController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "vibrate_when_ringing"

    nop

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v1

    return v1
.end method

.method public onResume()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/SecSoundVibrateWhenRingingController;->registerRingModeChangedReceiver()V

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/SecSoundVibrateWhenRingingController;->updatePrefState()V

    return-void
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/samsung/android/settings/notification/SecSoundSettingPrefController;->updateState(Landroid/support/v7/preference/Preference;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/SecSoundVibrateWhenRingingController;->updatePrefState()V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecSoundVibrateWhenRingingController;->mPreference:Landroid/support/v14/preference/SecSwitchPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecSoundVibrateWhenRingingController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "vibrate_when_ringing"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v3, 0x1

    nop

    :cond_0
    invoke-virtual {v0, v3}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    return-void
.end method

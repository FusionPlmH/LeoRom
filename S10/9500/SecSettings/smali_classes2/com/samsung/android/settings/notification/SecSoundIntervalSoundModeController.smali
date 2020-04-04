.class public Lcom/samsung/android/settings/notification/SecSoundIntervalSoundModeController;
.super Lcom/samsung/android/settings/notification/SecSoundSettingPrefController;
.source "SecSoundIntervalSoundModeController.java"


# instance fields
.field private mPreference:Landroid/support/v7/preference/SecPreferenceScreen;

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/notification/SecSoundSettingPrefController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/notification/SecSoundIntervalSoundModeController;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/SecSoundIntervalSoundModeController;->updatePrefSummary()V

    return-void
.end method

.method private getSoundModeSummaryID()I
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecSoundIntervalSoundModeController;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/settings/notification/SecSoundIntervalSoundModeController;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/settings/notification/SoundUtils;->hasHaptic(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const v0, 0x7f12189f

    goto :goto_0

    :pswitch_1
    const v0, 0x7f12164f

    goto :goto_0

    :pswitch_2
    const v0, 0x7f12164d

    goto :goto_0

    :cond_0
    packed-switch v2, :pswitch_data_1

    const v0, 0x7f12189f

    goto :goto_0

    :pswitch_3
    const v0, 0x7f12164d

    nop

    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private registerRingModeChangedReceiver()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecSoundIntervalSoundModeController;->mReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v1, Lcom/samsung/android/settings/notification/SecSoundIntervalSoundModeController$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/notification/SecSoundIntervalSoundModeController$1;-><init>(Lcom/samsung/android/settings/notification/SecSoundIntervalSoundModeController;)V

    iput-object v1, p0, Lcom/samsung/android/settings/notification/SecSoundIntervalSoundModeController;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecSoundIntervalSoundModeController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/notification/SecSoundIntervalSoundModeController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method private releaseRingModeChangedReceiver()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecSoundIntervalSoundModeController;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecSoundIntervalSoundModeController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecSoundIntervalSoundModeController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/notification/SecSoundIntervalSoundModeController;->mReceiver:Landroid/content/BroadcastReceiver;

    :cond_0
    return-void
.end method

.method private updatePrefSummary()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecSoundIntervalSoundModeController;->mPreference:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/SecSoundIntervalSoundModeController;->getSoundModeSummaryID()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecPreferenceScreen;->setSummary(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecSoundIntervalSoundModeController;->mPreference:Landroid/support/v7/preference/SecPreferenceScreen;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/samsung/android/settings/notification/SecSoundSettingPrefController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecSoundIntervalSoundModeController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/SecPreferenceScreen;

    iput-object v0, p0, Lcom/samsung/android/settings/notification/SecSoundIntervalSoundModeController;->mPreference:Landroid/support/v7/preference/SecPreferenceScreen;

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "interval_sound_mode"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onPause()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/SecSoundIntervalSoundModeController;->releaseRingModeChangedReceiver()V

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/SecSoundIntervalSoundModeController;->registerRingModeChangedReceiver()V

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/SecSoundIntervalSoundModeController;->updatePrefSummary()V

    return-void
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/notification/SecSoundSettingPrefController;->updateState(Landroid/support/v7/preference/Preference;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/SecSoundIntervalSoundModeController;->updatePrefSummary()V

    return-void
.end method

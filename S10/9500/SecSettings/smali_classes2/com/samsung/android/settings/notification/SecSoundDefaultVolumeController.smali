.class public Lcom/samsung/android/settings/notification/SecSoundDefaultVolumeController;
.super Lcom/android/settings/notification/SettingPrefController;
.source "SecSoundDefaultVolumeController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/notification/SecSoundDefaultVolumeController$SettingsObserver;
    }
.end annotation


# instance fields
.field private mSemSoundAssistantManager:Lcom/samsung/android/media/SemSoundAssistantManager;

.field private mSettingsObserver:Lcom/samsung/android/settings/notification/SecSoundDefaultVolumeController$SettingsObserver;

.field private mSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 9

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/notification/SettingPrefController;-><init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    new-instance v0, Lcom/samsung/android/settings/notification/SecSoundDefaultVolumeController$SettingsObserver;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/notification/SecSoundDefaultVolumeController$SettingsObserver;-><init>(Lcom/samsung/android/settings/notification/SecSoundDefaultVolumeController;)V

    iput-object v0, p0, Lcom/samsung/android/settings/notification/SecSoundDefaultVolumeController;->mSettingsObserver:Lcom/samsung/android/settings/notification/SecSoundDefaultVolumeController$SettingsObserver;

    new-instance v0, Lcom/samsung/android/media/SemSoundAssistantManager;

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecSoundDefaultVolumeController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/media/SemSoundAssistantManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/notification/SecSoundDefaultVolumeController;->mSemSoundAssistantManager:Lcom/samsung/android/media/SemSoundAssistantManager;

    if-eqz p3, :cond_0

    invoke-virtual {p3, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    :cond_0
    new-instance v0, Lcom/samsung/android/settings/notification/SecSoundDefaultVolumeController$1;

    const/4 v4, 0x2

    const-string v5, "volume_key_control"

    const-string v6, "adjust_media_volume_only"

    const/4 v7, 0x0

    const/4 v1, 0x0

    new-array v8, v1, [I

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v8}, Lcom/samsung/android/settings/notification/SecSoundDefaultVolumeController$1;-><init>(Lcom/samsung/android/settings/notification/SecSoundDefaultVolumeController;ILjava/lang/String;Ljava/lang/String;I[I)V

    iput-object v0, p0, Lcom/samsung/android/settings/notification/SecSoundDefaultVolumeController;->mPreference:Lcom/android/settings/notification/SettingPref;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/notification/SecSoundDefaultVolumeController;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecSoundDefaultVolumeController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/settings/notification/SecSoundDefaultVolumeController;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecSoundDefaultVolumeController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/settings/notification/SecSoundDefaultVolumeController;)Lcom/samsung/android/media/SemSoundAssistantManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecSoundDefaultVolumeController;->mSemSoundAssistantManager:Lcom/samsung/android/media/SemSoundAssistantManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/settings/notification/SecSoundDefaultVolumeController;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecSoundDefaultVolumeController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/settings/notification/SecSoundDefaultVolumeController;)Lcom/android/settings/notification/SettingPref;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecSoundDefaultVolumeController;->mPreference:Lcom/android/settings/notification/SettingPref;

    return-object v0
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/notification/SettingPrefController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecSoundDefaultVolumeController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SecSwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/notification/SecSoundDefaultVolumeController;->mSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "volume_key_control"

    return-object v0
.end method

.method public handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecSoundDefaultVolumeController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x150

    const/16 v1, 0x1c57

    iget-object v2, p0, Lcom/samsung/android/settings/notification/SecSoundDefaultVolumeController;->mSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v2}, Landroid/support/v14/preference/SecSwitchPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    const-wide/16 v2, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x0

    :goto_0
    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isAvailable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onPause()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecSoundDefaultVolumeController;->mSettingsObserver:Lcom/samsung/android/settings/notification/SecSoundDefaultVolumeController$SettingsObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/notification/SecSoundDefaultVolumeController$SettingsObserver;->register(Z)V

    return-void
.end method

.method public onResume()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecSoundDefaultVolumeController;->mSettingsObserver:Lcom/samsung/android/settings/notification/SecSoundDefaultVolumeController$SettingsObserver;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/notification/SecSoundDefaultVolumeController$SettingsObserver;->register(Z)V

    return-void
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/notification/SettingPrefController;->updateState(Landroid/support/v7/preference/Preference;)V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecSoundDefaultVolumeController;->mSemSoundAssistantManager:Lcom/samsung/android/media/SemSoundAssistantManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecSoundDefaultVolumeController;->mSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecSoundDefaultVolumeController;->mSemSoundAssistantManager:Lcom/samsung/android/media/SemSoundAssistantManager;

    invoke-virtual {v1}, Lcom/samsung/android/media/SemSoundAssistantManager;->getVolumeKeyMode()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    :cond_1
    return-void
.end method

.class public Lcom/samsung/android/settings/notification/SecSoundZenModeDNDController;
.super Lcom/android/settings/notification/AbstractZenModePreferenceController;
.source "SecSoundZenModeDNDController.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/notification/SecSoundZenModeDNDController$SettingsObserver;
    }
.end annotation


# instance fields
.field private mPreference:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

.field private final mSettingsObserver:Lcom/samsung/android/settings/notification/SecSoundZenModeDNDController$SettingsObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 1

    const-string v0, "zen_mode_dnd"

    invoke-direct {p0, p1, v0, p2}, Lcom/android/settings/notification/AbstractZenModePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    new-instance v0, Lcom/samsung/android/settings/notification/SecSoundZenModeDNDController$SettingsObserver;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/notification/SecSoundZenModeDNDController$SettingsObserver;-><init>(Lcom/samsung/android/settings/notification/SecSoundZenModeDNDController;)V

    iput-object v0, p0, Lcom/samsung/android/settings/notification/SecSoundZenModeDNDController;->mSettingsObserver:Lcom/samsung/android/settings/notification/SecSoundZenModeDNDController$SettingsObserver;

    if-eqz p2, :cond_0

    invoke-virtual {p2, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/notification/SecSoundZenModeDNDController;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecSoundZenModeDNDController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/settings/notification/SecSoundZenModeDNDController;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/SecSoundZenModeDNDController;->updateDNDModePref()V

    return-void
.end method

.method private checkScheduleState()Z
    .locals 6

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecSoundZenModeDNDController;->getZenModeConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    iget-object v4, v1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    const-string v4, "twschedule"

    iget-object v5, v1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v5, v5, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, v1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    move-object v2, v4

    check-cast v2, Landroid/service/notification/ZenModeConfig$ZenRule;

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz v2, :cond_2

    iget-boolean v3, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    if-eqz v3, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method private getDNDModeSummaryID()I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecSoundZenModeDNDController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "zen_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const v1, 0x7f121a13

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const v0, 0x7f121a12

    :goto_0
    if-eq v0, v1, :cond_1

    const v0, 0x7f12144a

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/SecSoundZenModeDNDController;->checkScheduleState()Z

    move-result v1

    if-eqz v1, :cond_1

    const v0, 0x7f121472

    :cond_1
    return v0
.end method

.method private updateDNDModePref()V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecSoundZenModeDNDController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecSoundZenModeDNDController;->mPreference:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    const-string v2, "no_adjust_volume"

    invoke-virtual {v0, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setEnabled(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecSoundZenModeDNDController;->mPreference:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    iget-object v2, p0, Lcom/samsung/android/settings/notification/SecSoundZenModeDNDController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "zen_mode"

    const/4 v5, 0x0

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v5

    :goto_0
    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecSoundZenModeDNDController;->mPreference:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/SecSoundZenModeDNDController;->getDNDModeSummaryID()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setSummary(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecSoundZenModeDNDController;->mPreference:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    iget-object v2, p0, Lcom/samsung/android/settings/notification/SecSoundZenModeDNDController;->mPreference:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v2}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->isChecked()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/SecSoundZenModeDNDController;->checkScheduleState()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move v3, v5

    nop

    :cond_2
    :goto_1
    invoke-virtual {v1, v3}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/notification/AbstractZenModePreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecSoundZenModeDNDController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    iput-object v0, p0, Lcom/samsung/android/settings/notification/SecSoundZenModeDNDController;->mPreference:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecSoundZenModeDNDController;->mPreference:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "zen_mode_dnd"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onPause()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecSoundZenModeDNDController;->mSettingsObserver:Lcom/samsung/android/settings/notification/SecSoundZenModeDNDController$SettingsObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/notification/SecSoundZenModeDNDController$SettingsObserver;->register(Z)V

    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 5

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecSoundZenModeDNDController;->getZenModeConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/notification/SecSoundZenModeDNDController;->mBackend:Lcom/android/settings/notification/ZenModeBackend;

    iget-object v4, v2, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/notification/ZenModeConfig$ZenRule;

    iget v1, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    invoke-virtual {v3, v1}, Lcom/android/settings/notification/ZenModeBackend;->setZenMode(I)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/notification/SecSoundZenModeDNDController;->mBackend:Lcom/android/settings/notification/ZenModeBackend;

    invoke-virtual {v2, v1}, Lcom/android/settings/notification/ZenModeBackend;->setZenMode(I)V

    :goto_0
    const/16 v1, 0xfd2

    const/16 v2, 0xfd6

    if-eqz v0, :cond_1

    const-wide/16 v3, 0x1

    goto :goto_1

    :cond_1
    const-wide/16 v3, 0x0

    :goto_1
    invoke-static {v1, v2, v3, v4}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    const/4 v1, 0x1

    return v1
.end method

.method public onResume()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecSoundZenModeDNDController;->mSettingsObserver:Lcom/samsung/android/settings/notification/SecSoundZenModeDNDController$SettingsObserver;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/notification/SecSoundZenModeDNDController$SettingsObserver;->register(Z)V

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/SecSoundZenModeDNDController;->updateDNDModePref()V

    return-void
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/SecSoundZenModeDNDController;->updateDNDModePref()V

    return-void
.end method

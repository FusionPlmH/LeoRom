.class public Lcom/android/settings/dream/WhenToDreamPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "WhenToDreamPreferenceController.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field private final mBackend:Lcom/android/settingslib/dream/DreamBackend;

.field private mPreference:Landroid/support/v7/preference/SecDropDownPreference;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/android/settingslib/dream/DreamBackend;->getInstance(Landroid/content/Context;)Lcom/android/settingslib/dream/DreamBackend;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dream/WhenToDreamPreferenceController;->mBackend:Lcom/android/settingslib/dream/DreamBackend;

    return-void
.end method

.method private setPreferenceSummary()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/dream/WhenToDreamPreferenceController;->mBackend:Lcom/android/settingslib/dream/DreamBackend;

    invoke-virtual {v0}, Lcom/android/settingslib/dream/DreamBackend;->getWhenToDreamSetting()I

    move-result v0

    invoke-static {v0}, Lcom/android/settings/dream/DreamSettings;->getDreamSettingDescriptionResId(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/dream/WhenToDreamPreferenceController;->mPreference:Landroid/support/v7/preference/SecDropDownPreference;

    iget-object v2, p0, Lcom/android/settings/dream/WhenToDreamPreferenceController;->mPreference:Landroid/support/v7/preference/SecDropDownPreference;

    invoke-virtual {v2}, Landroid/support/v7/preference/SecDropDownPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/SecDropDownPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/dream/WhenToDreamPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/SecDropDownPreference;

    iput-object v0, p0, Lcom/android/settings/dream/WhenToDreamPreferenceController;->mPreference:Landroid/support/v7/preference/SecDropDownPreference;

    iget-object v0, p0, Lcom/android/settings/dream/WhenToDreamPreferenceController;->mPreference:Landroid/support/v7/preference/SecDropDownPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/dream/WhenToDreamPreferenceController;->mPreference:Landroid/support/v7/preference/SecDropDownPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecDropDownPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    iget-object v0, p0, Lcom/android/settings/dream/WhenToDreamPreferenceController;->mPreference:Landroid/support/v7/preference/SecDropDownPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecDropDownPreference;->setSoundEffectsEnabled(Z)V

    :cond_0
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "when_to_start"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    invoke-static {}, Lcom/samsung/android/settings/display/SecDisplayUtils;->isSupportScreenSaverWhenToDream()Z

    move-result v0

    return v0
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/settings/dream/WhenToDreamPreferenceController;->mPreference:Landroid/support/v7/preference/SecDropDownPreference;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/dream/WhenToDreamPreferenceController;->mBackend:Lcom/android/settingslib/dream/DreamBackend;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/dream/WhenToDreamPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/dream/WhenToDreamPreferenceController;->mBackend:Lcom/android/settingslib/dream/DreamBackend;

    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/android/settings/dream/DreamSettings;->getSettingFromPrefKey(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/dream/DreamBackend;->setWhenToDream(I)V

    invoke-direct {p0}, Lcom/android/settings/dream/WhenToDreamPreferenceController;->setPreferenceSummary()V

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1

    :cond_2
    :goto_0
    return v1
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    iget-object v0, p0, Lcom/android/settings/dream/WhenToDreamPreferenceController;->mPreference:Landroid/support/v7/preference/SecDropDownPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/dream/WhenToDreamPreferenceController;->mBackend:Lcom/android/settingslib/dream/DreamBackend;

    invoke-virtual {v0}, Lcom/android/settingslib/dream/DreamBackend;->getWhenToDreamSetting()I

    move-result v0

    invoke-static {v0}, Lcom/android/settings/dream/DreamSettings;->getKeyFromSetting(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/dream/WhenToDreamPreferenceController;->mPreference:Landroid/support/v7/preference/SecDropDownPreference;

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/SecDropDownPreference;->setValue(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/settings/dream/WhenToDreamPreferenceController;->setPreferenceSummary()V

    :cond_0
    return-void
.end method

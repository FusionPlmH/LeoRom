.class public Lcom/android/settings/datetime/TimeZonePreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "TimeZonePreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field private final mAutoTimePreferenceController:Lcom/android/settings/datetime/AutoTimePreferenceController;

.field private final mIsFromSUW:Z

.field private final mZonePickerV2:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/datetime/AutoTimePreferenceController;Z)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/datetime/TimeZonePreferenceController;->mAutoTimePreferenceController:Lcom/android/settings/datetime/AutoTimePreferenceController;

    iput-boolean p3, p0, Lcom/android/settings/datetime/TimeZonePreferenceController;->mIsFromSUW:Z

    iget-object v0, p0, Lcom/android/settings/datetime/TimeZonePreferenceController;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "settings_zone_picker_v2"

    invoke-static {v0, v1}, Landroid/util/FeatureFlagUtils;->isEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/datetime/TimeZonePreferenceController;->mZonePickerV2:Z

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "timezone"

    return-object v0
.end method

.method getTimeZoneOffsetAndName()Ljava/lang/CharSequence;
    .locals 4

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/datetime/TimeZonePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/settingslib/datetime/ZoneGetter;->getTimeZoneOffsetAndName(Landroid/content/Context;Ljava/util/TimeZone;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1
.end method

.method public handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 6

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "timezone"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/datetime/TimeZonePreferenceController;->mIsFromSUW:Z

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "firstRun"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance v2, Lcom/android/settings/DateTimeSettings;

    invoke-direct {v2}, Lcom/android/settings/DateTimeSettings;-><init>()V

    new-instance v4, Lcom/android/settings/core/SubSettingLauncher;

    iget-object v5, p0, Lcom/android/settings/datetime/TimeZonePreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v4

    instance-of v5, v2, Lcom/android/settingslib/core/instrumentation/Instrumentable;

    if-eqz v5, :cond_1

    move-object v1, v2

    check-cast v1, Lcom/android/settingslib/core/instrumentation/Instrumentable;

    invoke-interface {v1}, Lcom/android/settingslib/core/instrumentation/Instrumentable;->getMetricsCategory()I

    move-result v1

    goto :goto_0

    :cond_1
    nop

    :goto_0
    invoke-virtual {v4, v1}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    const/4 v4, -0x1

    invoke-virtual {v1, v4}, Lcom/android/settings/core/SubSettingLauncher;->setTitle(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return v3

    :cond_2
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public isAvailable()Z
    .locals 2

    iget-object v0, p0, Lcom/android/settings/datetime/TimeZonePreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/settings/datetime/TimeZonePreferenceController;->mAutoTimePreferenceController:Lcom/android/settings/datetime/AutoTimePreferenceController;

    invoke-virtual {v0}, Lcom/android/settings/datetime/AutoTimePreferenceController;->isEnabled()Z

    move-result v0

    xor-int/2addr v0, v1

    return v0
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 2

    instance-of v0, p1, Lcom/samsung/android/settings/widget/SecRestrictedPreference;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/datetime/TimeZonePreferenceController;->mZonePickerV2:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    const-class v0, Lcom/android/settings/datetime/timezone/TimeZoneSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setFragment(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/datetime/TimeZonePreferenceController;->getTimeZoneOffsetAndName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/datetime/TimeZonePreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/samsung/android/settings/datetime/DateTimeUtils;->getTimeZoneText(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_0
    move-object v0, p1

    check-cast v0, Lcom/samsung/android/settings/widget/SecRestrictedPreference;

    invoke-virtual {v0}, Lcom/samsung/android/settings/widget/SecRestrictedPreference;->isDisabledByAdmin()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/datetime/TimeZonePreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/datetime/DateTimeUtils;->applyEDMDateTimeChangePolicy(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/settings/datetime/TimeZonePreferenceController;->mIsFromSUW:Z

    if-nez v0, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/android/settings/datetime/TimeZonePreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/android/settings/datetime/TimeZonePreferenceController;->mIsFromSUW:Z

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/settings/datetime/TimeZonePreferenceController;->mAutoTimePreferenceController:Lcom/android/settings/datetime/AutoTimePreferenceController;

    invoke-virtual {v0}, Lcom/android/settings/datetime/AutoTimePreferenceController;->isEnabled()Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    goto :goto_2

    :cond_4
    :goto_1
    invoke-virtual {p1, v1}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    :cond_5
    :goto_2
    move-object v0, p1

    check-cast v0, Lcom/samsung/android/settings/widget/SecRestrictedPreference;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/SecRestrictedPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    invoke-virtual {p0}, Lcom/android/settings/datetime/TimeZonePreferenceController;->isAvailable()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setVisible(Z)V

    return-void
.end method

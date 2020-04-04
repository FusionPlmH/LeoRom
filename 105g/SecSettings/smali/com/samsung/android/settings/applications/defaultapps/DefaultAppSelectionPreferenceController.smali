.class public Lcom/samsung/android/settings/applications/defaultapps/DefaultAppSelectionPreferenceController;
.super Lcom/android/settings/applications/defaultapps/DefaultAppPreferenceController;
.source "DefaultAppSelectionPreferenceController.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/applications/defaultapps/DefaultAppPreferenceController;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private setSummary(Landroid/support/v7/preference/SecDropDownPreference;I)V
    .locals 1

    invoke-virtual {p1, p2}, Landroid/support/v7/preference/SecDropDownPreference;->setValueIndex(I)V

    invoke-virtual {p1}, Landroid/support/v7/preference/SecDropDownPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    invoke-virtual {p1}, Landroid/support/v7/preference/SecDropDownPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    aget-object v0, v0, p2

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/SecDropDownPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/SecDropDownPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    return-void
.end method


# virtual methods
.method protected getDefaultAppInfo()Lcom/android/settingslib/applications/DefaultAppInfo;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "default_app_selection"

    return-object v0
.end method

.method public handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/applications/defaultapps/DefaultAppSelectionPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "default_app_selection_option"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/16 v1, 0x1e19

    invoke-static {v1, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    return v2
.end method

.method public isAvailable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/applications/defaultapps/DefaultAppSelectionPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "default_app_selection_option"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-object v1, p1

    check-cast v1, Landroid/support/v7/preference/SecDropDownPreference;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/settings/applications/defaultapps/DefaultAppSelectionPreferenceController;->setSummary(Landroid/support/v7/preference/SecDropDownPreference;I)V

    const/16 v1, 0x1e1a

    invoke-static {v1, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    const/4 v1, 0x1

    return v1
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/applications/defaultapps/DefaultAppPreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    iget-object v0, p0, Lcom/samsung/android/settings/applications/defaultapps/DefaultAppSelectionPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "default_app_selection_option"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    move-object v1, p1

    check-cast v1, Landroid/support/v7/preference/SecDropDownPreference;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/settings/applications/defaultapps/DefaultAppSelectionPreferenceController;->setSummary(Landroid/support/v7/preference/SecDropDownPreference;I)V

    return-void
.end method

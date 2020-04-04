.class public Lcom/samsung/android/settings/language/PrimaryMouseButtonPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "PrimaryMouseButtonPreferenceController.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field private mDropDownPref:Landroid/support/v7/preference/SecDropDownPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private setSummary(I)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/language/PrimaryMouseButtonPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f1210eb

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/language/PrimaryMouseButtonPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f1210ec

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 7

    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/language/PrimaryMouseButtonPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/SecDropDownPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/language/PrimaryMouseButtonPreferenceController;->mDropDownPref:Landroid/support/v7/preference/SecDropDownPreference;

    iget-object v0, p0, Lcom/samsung/android/settings/language/PrimaryMouseButtonPreferenceController;->mDropDownPref:Landroid/support/v7/preference/SecDropDownPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/language/PrimaryMouseButtonPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "primary_mouse_button_option"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/language/PrimaryMouseButtonPreferenceController;->mDropDownPref:Landroid/support/v7/preference/SecDropDownPreference;

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/CharSequence;

    iget-object v5, p0, Lcom/samsung/android/settings/language/PrimaryMouseButtonPreferenceController;->mContext:Landroid/content/Context;

    const v6, 0x7f1210eb

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    iget-object v5, p0, Lcom/samsung/android/settings/language/PrimaryMouseButtonPreferenceController;->mContext:Landroid/content/Context;

    const v6, 0x7f1210ec

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-virtual {v1, v4}, Landroid/support/v7/preference/SecDropDownPreference;->setEntries([Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/samsung/android/settings/language/PrimaryMouseButtonPreferenceController;->mDropDownPref:Landroid/support/v7/preference/SecDropDownPreference;

    new-array v3, v3, [Ljava/lang/CharSequence;

    const-string v4, "0"

    aput-object v4, v3, v2

    const-string v2, "1"

    aput-object v2, v3, v6

    invoke-virtual {v1, v3}, Landroid/support/v7/preference/SecDropDownPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/samsung/android/settings/language/PrimaryMouseButtonPreferenceController;->mDropDownPref:Landroid/support/v7/preference/SecDropDownPreference;

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/SecDropDownPreference;->setValueIndex(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/language/PrimaryMouseButtonPreferenceController;->mDropDownPref:Landroid/support/v7/preference/SecDropDownPreference;

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/language/PrimaryMouseButtonPreferenceController;->setSummary(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/SecDropDownPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/samsung/android/settings/language/PrimaryMouseButtonPreferenceController;->mDropDownPref:Landroid/support/v7/preference/SecDropDownPreference;

    invoke-virtual {v1, p0}, Landroid/support/v7/preference/SecDropDownPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v1, p0, Lcom/samsung/android/settings/language/PrimaryMouseButtonPreferenceController;->mDropDownPref:Landroid/support/v7/preference/SecDropDownPreference;

    invoke-virtual {v1, v6}, Landroid/support/v7/preference/SecDropDownPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_0
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "key_primary_mouse_button"

    return-object v0
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

    invoke-virtual {p0}, Lcom/samsung/android/settings/language/PrimaryMouseButtonPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/language/PrimaryMouseButtonPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "primary_mouse_button_option"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/samsung/android/settings/language/PrimaryMouseButtonPreferenceController;->mDropDownPref:Landroid/support/v7/preference/SecDropDownPreference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/language/PrimaryMouseButtonPreferenceController;->mDropDownPref:Landroid/support/v7/preference/SecDropDownPreference;

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/language/PrimaryMouseButtonPreferenceController;->setSummary(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/SecDropDownPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    const/4 v1, 0x1

    return v1

    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.class public Lcom/android/settings/notification/EmergencyTonePreferenceController;
.super Lcom/android/settings/notification/SettingPrefController;
.source "EmergencyTonePreferenceController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 8

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/notification/SettingPrefController;-><init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    new-instance v7, Lcom/android/settings/notification/EmergencyTonePreferenceController$1;

    const-string v3, "emergency_tone"

    const-string v4, "emergency_tone"

    const/4 v0, 0x3

    new-array v6, v0, [I

    fill-array-data v6, :array_0

    const/4 v2, 0x1

    const/4 v5, 0x0

    move-object v0, v7

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/notification/EmergencyTonePreferenceController$1;-><init>(Lcom/android/settings/notification/EmergencyTonePreferenceController;ILjava/lang/String;Ljava/lang/String;I[I)V

    iput-object v7, p0, Lcom/android/settings/notification/EmergencyTonePreferenceController;->mPreference:Lcom/android/settings/notification/SettingPref;

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x0
    .end array-data
.end method


# virtual methods
.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/notification/SettingPrefController;->updateState(Landroid/support/v7/preference/Preference;)V

    move-object v0, p1

    check-cast v0, Landroid/support/v7/preference/SecDropDownPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecDropDownPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    return-void
.end method

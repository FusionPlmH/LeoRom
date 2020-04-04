.class public Lcom/samsung/android/settings/notification/SecSoundDSNotificationController;
.super Lcom/samsung/android/settings/notification/SecSoundSettingPrefController;
.source "SecSoundDSNotificationController.java"


# instance fields
.field private mFragment:Lcom/android/settings/SettingsPreferenceFragment;

.field private mPreference:Landroid/support/v7/preference/SecPreferenceScreen;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 1

    const-string v0, "ds_notification_sound"

    invoke-direct {p0, p1, p3, v0}, Lcom/samsung/android/settings/notification/SecSoundSettingPrefController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/samsung/android/settings/notification/SecSoundDSNotificationController;->mFragment:Lcom/android/settings/SettingsPreferenceFragment;

    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/samsung/android/settings/notification/SecSoundSettingPrefController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecSoundDSNotificationController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/SecPreferenceScreen;

    iput-object v0, p0, Lcom/samsung/android/settings/notification/SecSoundDSNotificationController;->mPreference:Landroid/support/v7/preference/SecPreferenceScreen;

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "ds_notification_sound"

    return-object v0
.end method

.method public handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 10

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecSoundDSNotificationController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.settings"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "sound title"

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecSoundDSNotificationController;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/android/settings/SettingsActivity;

    iget-object v3, p0, Lcom/samsung/android/settings/notification/SecSoundDSNotificationController;->mFragment:Lcom/android/settings/SettingsPreferenceFragment;

    const-class v2, Lcom/samsung/android/settings/notification/SecDualNotificationSoundSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const v6, 0x7f1215d0

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, v1

    invoke-virtual/range {v2 .. v9}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Landroid/app/Fragment;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    const/4 v2, 0x1

    return v2

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isAvailable()Z
    .locals 1

    invoke-static {}, Lcom/android/settings/Utils;->isMultisimModel()Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 1

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/notification/SecSoundDSNotificationController;->setUpdateRingtoneType(I)V

    invoke-super {p0}, Lcom/samsung/android/settings/notification/SecSoundSettingPrefController;->onResume()V

    return-void
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/samsung/android/settings/notification/SecSoundSettingPrefController;->updateState(Landroid/support/v7/preference/Preference;)V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecSoundDSNotificationController;->mPreference:Landroid/support/v7/preference/SecPreferenceScreen;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    return-void
.end method

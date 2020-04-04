.class public Lcom/android/settings/development/AdbPreferenceController;
.super Lcom/android/settingslib/development/AbstractEnableAdbPreferenceController;
.source "AdbPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mFragment:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settingslib/development/AbstractEnableAdbPreferenceController;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/development/AdbPreferenceController;->mFragment:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    iput-object p1, p0, Lcom/android/settings/development/AdbPreferenceController;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onAdbDialogConfirmed()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/development/AdbPreferenceController;->writeAdbSetting(Z)V

    return-void
.end method

.method public onAdbDialogDismissed()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/development/AdbPreferenceController;->mPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p0, v0}, Lcom/android/settings/development/AdbPreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    return-void
.end method

.method protected onDeveloperOptionsSwitchDisabled()V
    .locals 2

    invoke-super {p0}, Lcom/android/settingslib/development/AbstractEnableAdbPreferenceController;->onDeveloperOptionsSwitchDisabled()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/development/AdbPreferenceController;->writeAdbSetting(Z)V

    iget-object v1, p0, Lcom/android/settings/development/AdbPreferenceController;->mPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    return-void
.end method

.method public showConfirmationDialog(Landroid/support/v7/preference/Preference;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/development/AdbPreferenceController;->mFragment:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    invoke-static {v0}, Lcom/android/settings/development/EnableAdbWarningDialog;->show(Landroid/app/Fragment;)V

    return-void
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/android/settingslib/development/AbstractEnableAdbPreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isChinaModel()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/settings/connecteddevice/usb/UsbBackend;

    iget-object v1, p0, Lcom/android/settings/development/AdbPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settings/connecteddevice/usb/UsbBackend;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->getCurrentFunctions()J

    move-result-wide v1

    const-wide/32 v3, 0x40000

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/settings/development/AdbPreferenceController;->enablePreference(Z)V

    :cond_0
    return-void
.end method

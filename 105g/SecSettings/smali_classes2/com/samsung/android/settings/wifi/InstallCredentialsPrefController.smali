.class public Lcom/samsung/android/settings/wifi/InstallCredentialsPrefController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "InstallCredentialsPrefController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# static fields
.field private static DBG:Z


# instance fields
.field private mInstallCredentials:Landroid/support/v7/preference/Preference;

.field private mIntent:Landroid/content/Intent;

.field private mIsAvailable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/wifi/InstallCredentialsPrefController;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/InstallCredentialsPrefController;->mIsAvailable:Z

    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    const-string v0, "install_credentials"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/InstallCredentialsPrefController;->mInstallCredentials:Landroid/support/v7/preference/Preference;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.credentials.INSTALL_AS_USER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/InstallCredentialsPrefController;->mIntent:Landroid/content/Intent;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/InstallCredentialsPrefController;->mIntent:Landroid/content/Intent;

    const-string v1, "install_as_uid"

    const/16 v2, 0x3f2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/InstallCredentialsPrefController;->mInstallCredentials:Landroid/support/v7/preference/Preference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/InstallCredentialsPrefController;->mInstallCredentials:Landroid/support/v7/preference/Preference;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/InstallCredentialsPrefController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f121e80

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/InstallCredentialsPrefController;->mInstallCredentials:Landroid/support/v7/preference/Preference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/InstallCredentialsPrefController;->mInstallCredentials:Landroid/support/v7/preference/Preference;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/InstallCredentialsPrefController;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setIntent(Landroid/content/Intent;)V

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/InstallCredentialsPrefController;->mIsAvailable:Z

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "install_credentials"

    return-object v0
.end method

.method public handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/InstallCredentialsPrefController;->mInstallCredentials:Landroid/support/v7/preference/Preference;

    if-eqz v0, :cond_0

    const-string v0, "install_credentials"

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/InstallCredentialsPrefController;->mContext:Landroid/content/Context;

    const v1, 0x7f1212e6

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/InstallCredentialsPrefController;->mContext:Landroid/content/Context;

    const v2, 0x7f1208bf

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/InstallCredentialsPrefController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/InstallCredentialsPrefController;->mIntent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 v2, 0x1

    return v2

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isAvailable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/InstallCredentialsPrefController;->mIsAvailable:Z

    return v0
.end method

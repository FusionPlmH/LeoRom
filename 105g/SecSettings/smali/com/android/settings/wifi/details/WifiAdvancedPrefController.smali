.class public Lcom/android/settings/wifi/details/WifiAdvancedPrefController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "WifiAdvancedPrefController.java"


# static fields
.field private static DBG:Z


# instance fields
.field private mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

.field private mAcessPointSavedState:Landroid/os/Bundle;

.field private final mActivity:Landroid/app/Activity;

.field private mAdvancedPref:Landroid/support/v7/preference/Preference;

.field private final mContext:Landroid/content/Context;

.field private mInManageNetwork:Z

.field private final mParent:Lcom/android/settings/SettingsPreferenceFragment;

.field private mSAScreenId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/wifi/details/WifiAdvancedPrefController;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/android/settings/SettingsPreferenceFragment;Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0, p3}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wifi/details/WifiAdvancedPrefController;->mInManageNetwork:Z

    iput-object p1, p0, Lcom/android/settings/wifi/details/WifiAdvancedPrefController;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/android/settings/wifi/details/WifiAdvancedPrefController;->mParent:Lcom/android/settings/SettingsPreferenceFragment;

    iput-object p3, p0, Lcom/android/settings/wifi/details/WifiAdvancedPrefController;->mContext:Landroid/content/Context;

    if-eqz p4, :cond_0

    iput-object p4, p0, Lcom/android/settings/wifi/details/WifiAdvancedPrefController;->mAcessPointSavedState:Landroid/os/Bundle;

    new-instance v1, Lcom/samsung/android/settingslib/wifi/AccessPoint;

    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiAdvancedPrefController;->mAcessPointSavedState:Landroid/os/Bundle;

    invoke-direct {v1, p3, v2}, Lcom/samsung/android/settingslib/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    iput-object v1, p0, Lcom/android/settings/wifi/details/WifiAdvancedPrefController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    const-string v1, "manage_network"

    invoke-virtual {p4, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/details/WifiAdvancedPrefController;->mInManageNetwork:Z

    goto :goto_0

    :cond_0
    const-string v0, "WifiAdvancedPrefController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreferenceChange bundle is null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiAdvancedPrefController;->mAcessPointSavedState:Landroid/os/Bundle;

    :goto_0
    iput-object p5, p0, Lcom/android/settings/wifi/details/WifiAdvancedPrefController;->mSAScreenId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    const-string v0, "advanced"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiAdvancedPrefController;->mAdvancedPref:Landroid/support/v7/preference/Preference;

    iget-boolean v0, p0, Lcom/android/settings/wifi/details/WifiAdvancedPrefController;->mInManageNetwork:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiAdvancedPrefController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiAdvancedPrefController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->isPasspointConfig()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiAdvancedPrefController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->isVendorAp()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiAdvancedPrefController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/settings/Utils;->REMOVABLE_DEFAULT_AP:Z

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiAdvancedPrefController;->mAdvancedPref:Landroid/support/v7/preference/Preference;

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_1
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "advanced"

    return-object v0
.end method

.method public handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 4

    const-string v0, "advanced"

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiAdvancedPrefController;->mContext:Landroid/content/Context;

    const v1, 0x7f120923

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiAdvancedPrefController;->mSAScreenId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiAdvancedPrefController;->mSAScreenId:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.Settings$WifiAdvancedActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v2, "AcessPoint_SavedState"

    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiAdvancedPrefController;->mAcessPointSavedState:Landroid/os/Bundle;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiAdvancedPrefController;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 v2, 0x1

    return v2

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isAvailable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

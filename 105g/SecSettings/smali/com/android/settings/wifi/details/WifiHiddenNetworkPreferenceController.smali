.class public Lcom/android/settings/wifi/details/WifiHiddenNetworkPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "WifiHiddenNetworkPreferenceController.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

.field private mHiddenPref:Landroid/support/v7/preference/SwitchPreferenceCompat;

.field private mSAScreenId:Ljava/lang/String;

.field private mTempConfig:Landroid/net/wifi/WifiConfiguration;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/settingslib/wifi/AccessPoint;Lcom/android/settingslib/core/lifecycle/Lifecycle;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/wifi/details/WifiHiddenNetworkPreferenceController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-static {}, Lcom/android/settings/wifi/details/TempWifiConfiguration;->getInstance()Lcom/android/settings/wifi/details/TempWifiConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/wifi/details/TempWifiConfiguration;->getConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiHiddenNetworkPreferenceController;->mTempConfig:Landroid/net/wifi/WifiConfiguration;

    const-string/jumbo v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiHiddenNetworkPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    iput-object p4, p0, Lcom/android/settings/wifi/details/WifiHiddenNetworkPreferenceController;->mSAScreenId:Ljava/lang/String;

    return-void
.end method

.method private disableViewsIfAppropriate()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiHiddenNetworkPreferenceController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiHiddenNetworkPreferenceController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiHiddenNetworkPreferenceController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiHiddenNetworkPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/samsung/android/settings/wifi/WifiDevicePolicyManager;->isAllowedToUseEnterpriseSsid(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiHiddenNetworkPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/WifiDevicePolicyManager;->isAllowedToChangeUserPolicy(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiHiddenNetworkPreferenceController;->mHiddenPref:Landroid/support/v7/preference/SwitchPreferenceCompat;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiHiddenNetworkPreferenceController;->mHiddenPref:Landroid/support/v7/preference/SwitchPreferenceCompat;

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setEnabled(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    const-string v0, "hidden"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/SwitchPreferenceCompat;

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiHiddenNetworkPreferenceController;->mHiddenPref:Landroid/support/v7/preference/SwitchPreferenceCompat;

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiHiddenNetworkPreferenceController;->mHiddenPref:Landroid/support/v7/preference/SwitchPreferenceCompat;

    invoke-virtual {v0, p0}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiHiddenNetworkPreferenceController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiHiddenNetworkPreferenceController;->mHiddenPref:Landroid/support/v7/preference/SwitchPreferenceCompat;

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiHiddenNetworkPreferenceController;->mHiddenPref:Landroid/support/v7/preference/SwitchPreferenceCompat;

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/wifi/details/WifiHiddenNetworkPreferenceController;->disableViewsIfAppropriate()V

    return-void
.end method

.method getHiddenOverride()Z
    .locals 3

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiHiddenNetworkPreferenceController;->mTempConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_0

    const-string v0, "WifiConnectPrefController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getHiddenOverride checked : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiHiddenNetworkPreferenceController;->mTempConfig:Landroid/net/wifi/WifiConfiguration;

    iget-boolean v2, v2, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiHiddenNetworkPreferenceController;->mTempConfig:Landroid/net/wifi/WifiConfiguration;

    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "hidden"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 6

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "hidden"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const-string v2, "WifiConnectPrefController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hiddenonPreferenceChange checked : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiHiddenNetworkPreferenceController;->mTempConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiHiddenNetworkPreferenceController;->mTempConfig:Landroid/net/wifi/WifiConfiguration;

    iput-boolean v1, v2, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    const-string v2, "WifiConnectPrefController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hiddenonPreferenceChange WifiConfig : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/settings/wifi/details/WifiHiddenNetworkPreferenceController;->mTempConfig:Landroid/net/wifi/WifiConfiguration;

    iget-boolean v4, v4, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object v2, p1

    check-cast v2, Landroid/support/v7/preference/SwitchPreferenceCompat;

    invoke-virtual {v2, v1}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setChecked(Z)V

    invoke-direct {p0}, Lcom/android/settings/wifi/details/WifiHiddenNetworkPreferenceController;->disableViewsIfAppropriate()V

    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiHiddenNetworkPreferenceController;->mContext:Landroid/content/Context;

    const v3, 0x7f12090a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiHiddenNetworkPreferenceController;->mSAScreenId:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-wide/16 v4, 0x1

    goto :goto_0

    :cond_1
    const-wide/16 v4, 0x0

    :goto_0
    invoke-static {v3, v2, v4, v5}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;J)V

    const/4 v3, 0x1

    return v3

    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiHiddenNetworkPreferenceController;->mHiddenPref:Landroid/support/v7/preference/SwitchPreferenceCompat;

    if-nez v0, :cond_0

    return-void

    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/support/v7/preference/SwitchPreferenceCompat;

    invoke-virtual {p0}, Lcom/android/settings/wifi/details/WifiHiddenNetworkPreferenceController;->getHiddenOverride()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setChecked(Z)V

    return-void
.end method

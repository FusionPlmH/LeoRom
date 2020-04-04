.class public Lcom/android/settings/wifi/details/WifiMeteredPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "WifiMeteredPreferenceController.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final KEY_WIFI_METERED:Ljava/lang/String; = "metered"

.field private static final TAG:Ljava/lang/String; = "WifiMeteredPreferenceController"


# instance fields
.field private mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

.field private mDropDownPreference:Landroid/support/v7/preference/DropDownPreference;

.field private mSAScreenId:Ljava/lang/String;

.field private mTempConfig:Landroid/net/wifi/WifiConfiguration;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/settingslib/wifi/AccessPoint;Ljava/lang/String;)V
    .locals 1

    const-string v0, "metered"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/settings/wifi/details/WifiMeteredPreferenceController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-static {}, Lcom/android/settings/wifi/details/TempWifiConfiguration;->getInstance()Lcom/android/settings/wifi/details/TempWifiConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/wifi/details/TempWifiConfiguration;->getConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiMeteredPreferenceController;->mTempConfig:Landroid/net/wifi/WifiConfiguration;

    const-string/jumbo v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiMeteredPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    iput-object p3, p0, Lcom/android/settings/wifi/details/WifiMeteredPreferenceController;->mSAScreenId:Ljava/lang/String;

    return-void
.end method

.method private disableViewsIfAppropriate()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiMeteredPreferenceController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiMeteredPreferenceController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiMeteredPreferenceController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiMeteredPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/samsung/android/settings/wifi/WifiDevicePolicyManager;->isAllowedToUseEnterpriseSsid(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiMeteredPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/WifiDevicePolicyManager;->isAllowedToChangeUserPolicy(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiMeteredPreferenceController;->mDropDownPreference:Landroid/support/v7/preference/DropDownPreference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiMeteredPreferenceController;->mDropDownPreference:Landroid/support/v7/preference/DropDownPreference;

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/DropDownPreference;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method private updateSummary(Landroid/support/v7/preference/DropDownPreference;I)V
    .locals 1

    invoke-virtual {p1}, Landroid/support/v7/preference/DropDownPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    aget-object v0, v0, p2

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/DropDownPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method getMeteredOverride()I
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiMeteredPreferenceController;->mTempConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiMeteredPreferenceController;->mTempConfig:Landroid/net/wifi/WifiConfiguration;

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->meteredOverride:I

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiMeteredPreferenceController;->mTempConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiMeteredPreferenceController;->mTempConfig:Landroid/net/wifi/WifiConfiguration;

    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Landroid/net/wifi/WifiConfiguration;->meteredOverride:I

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiMeteredPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f12090b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiMeteredPreferenceController;->mSAScreenId:Ljava/lang/String;

    move-object v2, p2

    check-cast v2, Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "WifiMeteredPreferenceController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Metered onPreferenceChange checked : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "com.android.providers.settings"

    invoke-static {v1}, Landroid/app/backup/BackupManager;->dataChanged(Ljava/lang/String;)V

    move-object v1, p1

    check-cast v1, Landroid/support/v7/preference/DropDownPreference;

    invoke-virtual {p0}, Lcom/android/settings/wifi/details/WifiMeteredPreferenceController;->getMeteredOverride()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/settings/wifi/details/WifiMeteredPreferenceController;->updateSummary(Landroid/support/v7/preference/DropDownPreference;I)V

    invoke-direct {p0}, Lcom/android/settings/wifi/details/WifiMeteredPreferenceController;->disableViewsIfAppropriate()V

    const/4 v1, 0x1

    return v1
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 3

    move-object v0, p1

    check-cast v0, Landroid/support/v7/preference/DropDownPreference;

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiMeteredPreferenceController;->mDropDownPreference:Landroid/support/v7/preference/DropDownPreference;

    invoke-virtual {p0}, Lcom/android/settings/wifi/details/WifiMeteredPreferenceController;->getMeteredOverride()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiMeteredPreferenceController;->mDropDownPreference:Landroid/support/v7/preference/DropDownPreference;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/DropDownPreference;->setValue(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiMeteredPreferenceController;->mDropDownPreference:Landroid/support/v7/preference/DropDownPreference;

    invoke-direct {p0, v1, v0}, Lcom/android/settings/wifi/details/WifiMeteredPreferenceController;->updateSummary(Landroid/support/v7/preference/DropDownPreference;I)V

    invoke-direct {p0}, Lcom/android/settings/wifi/details/WifiMeteredPreferenceController;->disableViewsIfAppropriate()V

    return-void
.end method

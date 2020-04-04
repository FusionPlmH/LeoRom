.class public Lcom/samsung/android/settings/wifi/WlanPermissionAvailablePrefController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "WlanPermissionAvailablePrefController.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# static fields
.field private static DBG:Z


# instance fields
.field private CSC_COMMON_CHINA_NAL_SECURITY_TYPE:Ljava/lang/String;

.field private isAllowPermissionPopup:Landroid/support/v7/preference/SwitchPreferenceCompat;

.field private mIsAvailable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/wifi/WlanPermissionAvailablePrefController;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WlanPermissionAvailablePrefController;->mIsAvailable:Z

    nop

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Common_ConfigLocalSecurityPolicy"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WlanPermissionAvailablePrefController;->CSC_COMMON_CHINA_NAL_SECURITY_TYPE:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    const-string v0, "wlan_permission_available"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/SwitchPreferenceCompat;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WlanPermissionAvailablePrefController;->isAllowPermissionPopup:Landroid/support/v7/preference/SwitchPreferenceCompat;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WlanPermissionAvailablePrefController;->isAllowPermissionPopup:Landroid/support/v7/preference/SwitchPreferenceCompat;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const-string v0, "ChinaNalSecurity"

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WlanPermissionAvailablePrefController;->CSC_COMMON_CHINA_NAL_SECURITY_TYPE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WlanPermissionAvailablePrefController;->isAllowPermissionPopup:Landroid/support/v7/preference/SwitchPreferenceCompat;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WlanPermissionAvailablePrefController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wlan_permission_available"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v4, :cond_0

    move v1, v4

    nop

    :cond_0
    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setChecked(Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WlanPermissionAvailablePrefController;->isAllowPermissionPopup:Landroid/support/v7/preference/SwitchPreferenceCompat;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WlanPermissionAvailablePrefController;->isAllowPermissionPopup:Landroid/support/v7/preference/SwitchPreferenceCompat;

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/WlanPermissionAvailablePrefController;->mIsAvailable:Z

    :cond_2
    :goto_0
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "wlan_permission_available"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WlanPermissionAvailablePrefController;->mIsAvailable:Z

    return v0
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 6

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "wlan_permission_available"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WlanPermissionAvailablePrefController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wlan_permission_available"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WlanPermissionAvailablePrefController;->mContext:Landroid/content/Context;

    const v3, 0x7f1212e6

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WlanPermissionAvailablePrefController;->mContext:Landroid/content/Context;

    const v4, 0x7f1208bb

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v1, :cond_0

    const-wide/16 v4, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v4, 0x0

    :goto_0
    invoke-static {v2, v3, v4, v5}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;J)V

    const/4 v4, 0x1

    return v4

    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 3

    const-string v0, "wlan_permission_available"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WlanPermissionAvailablePrefController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wlan_permission_available"

    const/4 v2, 0x0

    invoke-interface {p1, p2, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    return-void
.end method

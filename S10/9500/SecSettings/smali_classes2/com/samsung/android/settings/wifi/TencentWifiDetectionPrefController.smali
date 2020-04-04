.class public Lcom/samsung/android/settings/wifi/TencentWifiDetectionPrefController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "TencentWifiDetectionPrefController.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# static fields
.field private static final CONTENT_URI:Landroid/net/Uri;

.field private static final projection:[Ljava/lang/String;


# instance fields
.field private mInSetupWizard:Z

.field private mIsAvailable:Z

.field private mWifiDetection:Landroid/support/v14/preference/SecSwitchPreference;

.field private pm:Landroid/content/pm/PackageManager;

.field private resolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const-string v0, "content://com.samsung.tencentwifi.security.provider/item/1"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/wifi/TencentWifiDetectionPrefController;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "_id"

    const-string v2, "_dialog"

    const-string v3, "_enabletws"

    const-string v4, "_ssid"

    const-string v5, "_bssid"

    const-string v6, "_security"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/wifi/TencentWifiDetectionPrefController;->projection:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/wifi/TencentWifiDetectionPrefController;-><init>(Landroid/content/Context;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/TencentWifiDetectionPrefController;->resolver:Landroid/content/ContentResolver;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/TencentWifiDetectionPrefController;->pm:Landroid/content/pm/PackageManager;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/TencentWifiDetectionPrefController;->mIsAvailable:Z

    const-string v0, "TencentSecurityWiFi"

    sget-object v1, Lcom/android/settings/Utils;->CONFIG_SECURE_SVC_INTEGRATION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/TencentWifiDetectionPrefController;->pm:Landroid/content/pm/PackageManager;

    :try_start_0
    const-string v0, "com.samsung.android.tencentwifisecurity"

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/TencentWifiDetectionPrefController;->resolver:Landroid/content/ContentResolver;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :cond_0
    :goto_0
    iput-boolean p2, p0, Lcom/samsung/android/settings/wifi/TencentWifiDetectionPrefController;->mInSetupWizard:Z

    return-void
.end method

.method private getWifiSecurityState()Ljava/lang/String;
    .locals 10

    const/4 v0, 0x0

    const-string v1, "disable"

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/TencentWifiDetectionPrefController;->resolver:Landroid/content/ContentResolver;

    if-nez v2, :cond_0

    const-string v2, "disable"

    return-object v2

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/TencentWifiDetectionPrefController;->resolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/samsung/android/settings/wifi/TencentWifiDetectionPrefController;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v3, "disable"

    return-object v3

    :cond_1
    :try_start_0
    sget-object v5, Lcom/samsung/android/settings/wifi/TencentWifiDetectionPrefController;->CONTENT_URI:Landroid/net/Uri;

    sget-object v6, Lcom/samsung/android/settings/wifi/TencentWifiDetectionPrefController;->projection:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "_id asc"

    move-object v4, v2

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    move-object v0, v3

    if-nez v0, :cond_2

    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->close()V

    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->release()Z

    const-string v3, "disable"

    return-object v3

    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->close()V

    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->release()Z

    const-string v3, "disable"

    return-object v3

    :cond_3
    const/4 v3, 0x2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->close()V

    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->release()Z

    return-object v1
.end method

.method private isWifiSecurityPackageExist()Z
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/TencentWifiDetectionPrefController;->pm:Landroid/content/pm/PackageManager;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/TencentWifiDetectionPrefController;->pm:Landroid/content/pm/PackageManager;

    const-string v3, "com.samsung.android.tencentwifisecurity"

    invoke-virtual {v1, v3, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :goto_0
    return v0
.end method

.method private setWifiSecurityState(Z)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/TencentWifiDetectionPrefController;->resolver:Landroid/content/ContentResolver;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/TencentWifiDetectionPrefController;->resolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/samsung/android/settings/wifi/TencentWifiDetectionPrefController;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    sget-object v2, Lcom/samsung/android/settings/wifi/TencentWifiDetectionPrefController;->projection:[Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    if-eqz p1, :cond_2

    const-string v3, "enable"

    goto :goto_0

    :cond_2
    const-string v3, "disable"

    :goto_0
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    sget-object v2, Lcom/samsung/android/settings/wifi/TencentWifiDetectionPrefController;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3, v3}, Landroid/content/ContentProviderClient;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_1
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->close()V

    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    const-string v0, "tencent_wifi_security_detection"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SecSwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/TencentWifiDetectionPrefController;->mWifiDetection:Landroid/support/v14/preference/SecSwitchPreference;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/TencentWifiDetectionPrefController;->mWifiDetection:Landroid/support/v14/preference/SecSwitchPreference;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/TencentWifiDetectionPrefController;->mInSetupWizard:Z

    if-nez v0, :cond_1

    const-string v0, "TencentSecurityWiFi"

    sget-object v1, Lcom/android/settings/Utils;->CONFIG_SECURE_SVC_INTEGRATION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/TencentWifiDetectionPrefController;->isWifiSecurityPackageExist()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "invalid"

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/TencentWifiDetectionPrefController;->getWifiSecurityState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/TencentWifiDetectionPrefController;->mIsAvailable:Z

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/TencentWifiDetectionPrefController;->mWifiDetection:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/TencentWifiDetectionPrefController;->mIsAvailable:Z

    :cond_2
    :goto_1
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "tencent_wifi_security_detection"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/TencentWifiDetectionPrefController;->mIsAvailable:Z

    return v0
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "tencent_wifi_security_detection"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/TencentWifiDetectionPrefController;->setWifiSecurityState(Z)V

    const/4 v2, 0x1

    return v2

    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-string v1, "tencent_wifi_security_detection"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/TencentWifiDetectionPrefController;->setWifiSecurityState(Z)V

    :cond_0
    return-void
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/TencentWifiDetectionPrefController;->mWifiDetection:Landroid/support/v14/preference/SecSwitchPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/TencentWifiDetectionPrefController;->mWifiDetection:Landroid/support/v14/preference/SecSwitchPreference;

    const-string v1, "enable"

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/TencentWifiDetectionPrefController;->getWifiSecurityState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    :cond_0
    return-void
.end method

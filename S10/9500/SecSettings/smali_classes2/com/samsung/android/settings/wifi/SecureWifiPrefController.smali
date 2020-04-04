.class public Lcom/samsung/android/settings/wifi/SecureWifiPrefController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "SecureWifiPrefController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;


# static fields
.field private static DBG:Z


# instance fields
.field private final mFilter:Landroid/content/IntentFilter;

.field private mIntent:Landroid/content/Intent;

.field private mIsAvailable:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSecureWifi:Landroid/support/v7/preference/Preference;

.field private mSecureWifiManager:Lcom/samsung/android/settings/wifi/SecureWifiManager;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/wifi/SecureWifiPrefController;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroid/net/wifi/WifiManager;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/SecureWifiPrefController;->mIsAvailable:Z

    new-instance v0, Lcom/samsung/android/settings/wifi/SecureWifiPrefController$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/SecureWifiPrefController$1;-><init>(Lcom/samsung/android/settings/wifi/SecureWifiPrefController;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/SecureWifiPrefController;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/samsung/android/settings/wifi/SecureWifiManager;

    invoke-direct {v0, p1}, Lcom/samsung/android/settings/wifi/SecureWifiManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/SecureWifiPrefController;->mSecureWifiManager:Lcom/samsung/android/settings/wifi/SecureWifiManager;

    iput-object p3, p0, Lcom/samsung/android/settings/wifi/SecureWifiPrefController;->mWifiManager:Landroid/net/wifi/WifiManager;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/SecureWifiPrefController;->mFilter:Landroid/content/IntentFilter;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SecureWifiPrefController;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SecureWifiPrefController;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/wifi/SecureWifiPrefController;)Landroid/support/v7/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SecureWifiPrefController;->mSecureWifi:Landroid/support/v7/preference/Preference;

    return-object v0
.end method

.method private getColorWithAlpha(IF)I
    .locals 5

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    return v4
.end method

.method private setSecureWifiSummary()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SecureWifiPrefController;->mSecureWifiManager:Lcom/samsung/android/settings/wifi/SecureWifiManager;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/SecureWifiManager;->getSecureWifiMode()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/SecureWifiPrefController;->mSecureWifiManager:Lcom/samsung/android/settings/wifi/SecureWifiManager;

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/SecureWifiManager;->getSecureWifiTermsAndConditionsAgreed()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/SecureWifiPrefController;->mSecureWifi:Landroid/support/v7/preference/Preference;

    if-eqz v2, :cond_2

    const-string v2, "true"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const v3, 0x7f1216c7

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    const-string v2, "0"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v4}, Lcom/samsung/android/settings/wifi/SecureWifiPrefController;->setSummaryColorToColorPrimaryDark(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/SecureWifiPrefController;->mSecureWifi:Landroid/support/v7/preference/Preference;

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/SecureWifiPrefController;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/wifi/SecureWifiPrefController;->setSummaryColorToColorPrimaryDark(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/SecureWifiPrefController;->mSecureWifi:Landroid/support/v7/preference/Preference;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/SecureWifiPrefController;->mContext:Landroid/content/Context;

    const v4, 0x7f1216c8

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, v4}, Lcom/samsung/android/settings/wifi/SecureWifiPrefController;->setSummaryColorToColorPrimaryDark(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/SecureWifiPrefController;->mSecureWifi:Landroid/support/v7/preference/Preference;

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/SecureWifiPrefController;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private setSummaryColorToColorPrimaryDark(Z)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/SecureWifiPrefController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060199

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/SecureWifiPrefController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/SecureWifiPrefController;->mSecureWifi:Landroid/support/v7/preference/Preference;

    invoke-virtual {v4}, Landroid/support/v7/preference/Preference;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const v4, 0x3ecccccd    # 0.4f

    :goto_0
    invoke-direct {p0, v3, v4}, Lcom/samsung/android/settings/wifi/SecureWifiPrefController;->getColorWithAlpha(IF)I

    move-result v0

    goto :goto_1

    :cond_1
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/SecureWifiPrefController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    const v5, 0x1010038

    invoke-virtual {v4, v5, v3, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v4, v3, Landroid/util/TypedValue;->resourceId:I

    if-lez v4, :cond_2

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/SecureWifiPrefController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, v3, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    :cond_2
    :goto_1
    if-eqz v1, :cond_4

    new-array v3, v2, [I

    const v4, -0x101009e

    const/4 v5, 0x0

    aput v4, v3, v5

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/SecureWifiPrefController;->mSecureWifi:Landroid/support/v7/preference/Preference;

    invoke-virtual {v4}, Landroid/support/v7/preference/Preference;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    new-array v2, v2, [I

    const v4, 0x101009e

    aput v4, v2, v5

    move-object v3, v2

    :cond_3
    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    invoke-virtual {v1, v3, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    :cond_4
    if-eqz v0, :cond_5

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/SecureWifiPrefController;->mSecureWifi:Landroid/support/v7/preference/Preference;

    invoke-virtual {v2, v0}, Landroid/support/v7/preference/Preference;->seslSetSummaryColor(I)V

    :cond_5
    return-void
.end method

.method private togglePreferences()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SecureWifiPrefController;->mSecureWifi:Landroid/support/v7/preference/Preference;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SecureWifiPrefController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SecureWifiPrefController;->mSecureWifi:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SecureWifiPrefController;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    if-ne v2, v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/SecureWifiPrefController;->mSecureWifi:Landroid/support/v7/preference/Preference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/SecureWifiPrefController;->mSecureWifi:Landroid/support/v7/preference/Preference;

    invoke-virtual {v2, v1}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    const-string v0, "secure_wifi"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/SecureWifiPrefController;->mSecureWifi:Landroid/support/v7/preference/Preference;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.fast.ACTION_SECURE_WIFI"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/SecureWifiPrefController;->mIntent:Landroid/content/Intent;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SecureWifiPrefController;->mIntent:Landroid/content/Intent;

    const-string v1, "com.samsung.android.fast"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_SupportSecureWifi"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_WLAN_SUPPORT_SECURE_WIFI"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/SecureWifiPrefController;->setSecureWifiSummary()V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SecureWifiPrefController;->mSecureWifi:Landroid/support/v7/preference/Preference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SecureWifiPrefController;->mSecureWifi:Landroid/support/v7/preference/Preference;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/SecureWifiPrefController;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setIntent(Landroid/content/Intent;)V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/SecureWifiPrefController;->mIsAvailable:Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SecureWifiPrefController;->mSecureWifi:Landroid/support/v7/preference/Preference;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SecureWifiPrefController;->mSecureWifi:Landroid/support/v7/preference/Preference;

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/SecureWifiPrefController;->mIsAvailable:Z

    :goto_0
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "secure_wifi"

    return-object v0
.end method

.method public handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SecureWifiPrefController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/SecureWifiPrefController;->mIntent:Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/SecureWifiPrefController;->mSecureWifi:Landroid/support/v7/preference/Preference;

    if-eqz v1, :cond_2

    const-string v1, "secure_wifi"

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_1

    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v1}, Landroid/content/pm/ActivityInfo;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/SecureWifiPrefController;->mSecureWifiManager:Lcom/samsung/android/settings/wifi/SecureWifiManager;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/SecureWifiPrefController;->mSecureWifiManager:Lcom/samsung/android/settings/wifi/SecureWifiManager;

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/SecureWifiManager;->getAdvancedSettingsScreenId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/SecureWifiPrefController;->mSecureWifiManager:Lcom/samsung/android/settings/wifi/SecureWifiManager;

    invoke-virtual {v2}, Lcom/samsung/android/settings/wifi/SecureWifiManager;->getAdvancedSettingsSwifiEventId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/settings/wifi/SecureWifiManager;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/SecureWifiPrefController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/SecureWifiPrefController;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 v1, 0x1

    return v1

    :cond_0
    const-string v1, "SecureWiFi"

    const-string v3, "Can\'t start Secure Wi-Fi by admin"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v1, "SecureWiFi"

    const-string v3, "Can\'t start Secure Wi-Fi"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return v2
.end method

.method public isAvailable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/SecureWifiPrefController;->mIsAvailable:Z

    return v0
.end method

.method public onPause()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SecureWifiPrefController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/SecureWifiPrefController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onResume()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SecureWifiPrefController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/SecureWifiPrefController;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/SecureWifiPrefController;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SecureWifiPrefController;->mSecureWifi:Landroid/support/v7/preference/Preference;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/SecureWifiPrefController;->updateState(Landroid/support/v7/preference/Preference;)V

    return-void
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SecureWifiPrefController;->mSecureWifi:Landroid/support/v7/preference/Preference;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/SecureWifiPrefController;->togglePreferences()V

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/SecureWifiPrefController;->setSecureWifiSummary()V

    :cond_0
    return-void
.end method

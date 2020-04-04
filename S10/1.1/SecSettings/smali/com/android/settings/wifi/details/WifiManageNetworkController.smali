.class public Lcom/android/settings/wifi/details/WifiManageNetworkController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "WifiManageNetworkController.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnDestroy;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;


# static fields
.field private static final CSC_SUPPORT_EAP_AKA:Z

.field private static final DEBUG:Z


# instance fields
.field private mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

.field private mAcessPointSavedState:Landroid/os/Bundle;

.field private mAutoReconnectPref:Landroid/support/v7/preference/SwitchPreferenceCompat;

.field private final mContext:Landroid/content/Context;

.field private final mFragment:Landroid/app/Fragment;

.field private mIsSavedVzwEapAka:Z

.field private final mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

.field private final mModifyFragmentListener:Landroid/view/View$OnClickListener;

.field private final mParent:Lcom/android/settings/SettingsPreferenceFragment;

.field private mSAScreenId:Ljava/lang/String;

.field private mSecurityPref:Lcom/samsung/android/settings/wifi/SecWifiWidgetPreference;

.field private mTempConfiguration:Lcom/android/settings/wifi/details/TempWifiConfiguration;

.field private mWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "WifiManageNetworkController"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/wifi/details/WifiManageNetworkController;->DEBUG:Z

    invoke-static {}, Lcom/samsung/android/net/wifi/OpBrandingLoader;->getInstance()Lcom/samsung/android/net/wifi/OpBrandingLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/net/wifi/OpBrandingLoader;->isSupportEapAka()Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/wifi/details/WifiManageNetworkController;->CSC_SUPPORT_EAP_AKA:Z

    return-void
.end method

.method constructor <init>(Lcom/samsung/android/settingslib/wifi/AccessPoint;Landroid/content/Context;Landroid/app/Fragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroid/net/wifi/WifiManager;Landroid/os/Bundle;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;Ljava/lang/String;)V
    .locals 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    invoke-direct {p0, p2}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wifi/details/WifiManageNetworkController;->mIsSavedVzwEapAka:Z

    new-instance v0, Lcom/android/settings/wifi/details/WifiManageNetworkController$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/details/WifiManageNetworkController$1;-><init>(Lcom/android/settings/wifi/details/WifiManageNetworkController;)V

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiManageNetworkController;->mModifyFragmentListener:Landroid/view/View$OnClickListener;

    iput-object p1, p0, Lcom/android/settings/wifi/details/WifiManageNetworkController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    iput-object p3, p0, Lcom/android/settings/wifi/details/WifiManageNetworkController;->mFragment:Landroid/app/Fragment;

    iput-object p2, p0, Lcom/android/settings/wifi/details/WifiManageNetworkController;->mContext:Landroid/content/Context;

    iput-object p7, p0, Lcom/android/settings/wifi/details/WifiManageNetworkController;->mParent:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-static {}, Lcom/android/settings/wifi/details/TempWifiConfiguration;->getInstance()Lcom/android/settings/wifi/details/TempWifiConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiManageNetworkController;->mTempConfiguration:Lcom/android/settings/wifi/details/TempWifiConfiguration;

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiManageNetworkController;->mTempConfiguration:Lcom/android/settings/wifi/details/TempWifiConfiguration;

    invoke-virtual {v0}, Lcom/android/settings/wifi/details/TempWifiConfiguration;->getConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiManageNetworkController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iput-object p5, p0, Lcom/android/settings/wifi/details/WifiManageNetworkController;->mWifiManager:Landroid/net/wifi/WifiManager;

    iput-object p6, p0, Lcom/android/settings/wifi/details/WifiManageNetworkController;->mAcessPointSavedState:Landroid/os/Bundle;

    iput-object p8, p0, Lcom/android/settings/wifi/details/WifiManageNetworkController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iput-object p9, p0, Lcom/android/settings/wifi/details/WifiManageNetworkController;->mSAScreenId:Ljava/lang/String;

    invoke-virtual {p4, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    sget-boolean v0, Lcom/android/settings/wifi/details/WifiManageNetworkController;->CSC_SUPPORT_EAP_AKA:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiManageNetworkController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiManageNetworkController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->isVendorAp()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/settings/wifi/details/WifiManageNetworkController;->mIsSavedVzwEapAka:Z

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/details/WifiManageNetworkController;)Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiManageNetworkController;->mAcessPointSavedState:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/details/WifiManageNetworkController;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiManageNetworkController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private canModifyNetwork()Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiManageNetworkController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiManageNetworkController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiManageNetworkController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getSecurity()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private insertLogging(Ljava/lang/String;IJ)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiManageNetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p3, p4}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method private refreshAutoReconnectViews()V
    .locals 3

    sget-boolean v0, Lcom/android/settings/Utils;->ENABLE_WIFI_CONNECTION_TYPE:Z

    const/4 v1, 0x0

    if-nez v0, :cond_4

    sget-boolean v0, Lcom/android/settings/Utils;->COMMON_SUPPORTCOMCASTWIFI:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/android/settings/wifi/details/WifiManageNetworkController;->mIsSavedVzwEapAka:Z

    if-nez v0, :cond_4

    sget-boolean v0, Lcom/android/settings/Utils;->SUPPORT_AUTO_RECONNECT:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiManageNetworkController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiManageNetworkController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->isVendorAp()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiManageNetworkController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiManageNetworkController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->isPasspointConfig()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiManageNetworkController;->mAutoReconnectPref:Landroid/support/v7/preference/SwitchPreferenceCompat;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setVisible(Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiManageNetworkController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiManageNetworkController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->semAutoReconnect:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiManageNetworkController;->mAutoReconnectPref:Landroid/support/v7/preference/SwitchPreferenceCompat;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setChecked(Z)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiManageNetworkController;->mAutoReconnectPref:Landroid/support/v7/preference/SwitchPreferenceCompat;

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setChecked(Z)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiManageNetworkController;->mAutoReconnectPref:Landroid/support/v7/preference/SwitchPreferenceCompat;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setVisible(Z)V

    return-void
.end method

.method private setAutoReconnectEnabled(Z)V
    .locals 5

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiManageNetworkController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiManageNetworkController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iput p1, v0, Landroid/net/wifi/WifiConfiguration;->semAutoReconnect:I

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x47

    iput v1, v0, Landroid/os/Message;->what:I

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "netId"

    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiManageNetworkController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v3, v3, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "autoReconnect"

    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiManageNetworkController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v3, v3, Landroid/net/wifi/WifiConfiguration;->semAutoReconnect:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiManageNetworkController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v0}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiManageNetworkController;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiManageNetworkController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v3, v3, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiManageNetworkController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiManageNetworkController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->reconnect()Z

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiManageNetworkController;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiManageNetworkController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v3, v3, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiManager;->disableNetwork(I)Z

    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiManageNetworkController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiManageNetworkController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->reconnect()Z

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    const-string v0, "security"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/wifi/SecWifiWidgetPreference;

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiManageNetworkController;->mSecurityPref:Lcom/samsung/android/settings/wifi/SecWifiWidgetPreference;

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiManageNetworkController;->mSecurityPref:Lcom/samsung/android/settings/wifi/SecWifiWidgetPreference;

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiManageNetworkController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getSecurityString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/SecWifiWidgetPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/android/settings/wifi/details/WifiManageNetworkController;->canModifyNetwork()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "WifiManageNetworkController"

    const-string v1, "can ModifyNetwork"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiManageNetworkController;->mSecurityPref:Lcom/samsung/android/settings/wifi/SecWifiWidgetPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/SecWifiWidgetPreference;->setWidgetVisibility(Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiManageNetworkController;->mSecurityPref:Lcom/samsung/android/settings/wifi/SecWifiWidgetPreference;

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiManageNetworkController;->mModifyFragmentListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/SecWifiWidgetPreference;->setOnWidgetClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_0
    const-string v0, "WifiManageNetworkController"

    const-string v1, "can\'t ModifyNetwork"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiManageNetworkController;->mSecurityPref:Lcom/samsung/android/settings/wifi/SecWifiWidgetPreference;

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/wifi/SecWifiWidgetPreference;->setWidgetVisibility(Z)V

    :goto_0
    const-string/jumbo v0, "wifi_autoreconnect_switch"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/SwitchPreferenceCompat;

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiManageNetworkController;->mAutoReconnectPref:Landroid/support/v7/preference/SwitchPreferenceCompat;

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiManageNetworkController;->mAutoReconnectPref:Landroid/support/v7/preference/SwitchPreferenceCompat;

    invoke-virtual {v0, p0}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "WifiManageNetworkController"

    const-string v1, "onDestroy clearall"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiManageNetworkController;->mTempConfiguration:Lcom/android/settings/wifi/details/TempWifiConfiguration;

    invoke-virtual {v0}, Lcom/android/settings/wifi/details/TempWifiConfiguration;->clearall()V

    return-void
.end method

.method public onPause()V
    .locals 0

    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 6

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "wifi_autoreconnect_switch"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/details/WifiManageNetworkController;->setAutoReconnectEnabled(Z)V

    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiManageNetworkController;->mSAScreenId:Ljava/lang/String;

    const v3, 0x7f12091e

    if-eqz v1, :cond_0

    const-wide/16 v4, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v4, 0x0

    :goto_0
    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/settings/wifi/details/WifiManageNetworkController;->insertLogging(Ljava/lang/String;IJ)V

    const/4 v2, 0x1

    return v2

    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public onResume()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/wifi/details/WifiManageNetworkController;->refreshAutoReconnectViews()V

    return-void
.end method

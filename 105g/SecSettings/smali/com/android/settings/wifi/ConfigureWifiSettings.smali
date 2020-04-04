.class public Lcom/android/settings/wifi/ConfigureWifiSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "ConfigureWifiSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/search/SecIndexable;


# static fields
.field private static final CSC_COMMON_CHINA_NAL_SECURITY_TYPE:Ljava/lang/String;

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/samsung/android/settings/search/SecIndexable$SecSearchIndexProvider;

.field private static controllers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation
.end field

.field private static final mIsSupportMWIPS:Z

.field private static final mOpBranding:Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;


# instance fields
.field private final EXTRA_SHOW_SWITCH_FOR_INDIVIDUAL_APPS:Ljava/lang/String;

.field private isLaunchSmartNetworkSwitch:Z

.field private mAdaptiveWifiCategory:Landroid/support/v7/preference/PreferenceCategory;

.field private mContext:Landroid/content/Context;

.field private mSAScreenId:Ljava/lang/String;

.field private mWifiProgressiveDisclosureMixin:Lcom/samsung/android/settings/wifi/WifiProgressiveDisclosureMixin;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/samsung/android/net/wifi/OpBrandingLoader;->getInstance()Lcom/samsung/android/net/wifi/OpBrandingLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/net/wifi/OpBrandingLoader;->getOpBranding()Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;

    move-result-object v0

    sput-object v0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mOpBranding:Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Common_ConfigLocalSecurityPolicy"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/wifi/ConfigureWifiSettings;->CSC_COMMON_CHINA_NAL_SECURITY_TYPE:Ljava/lang/String;

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_DisableMWIPS"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mIsSupportMWIPS:Z

    new-instance v0, Lcom/android/settings/wifi/ConfigureWifiSettings$1;

    invoke-direct {v0}, Lcom/android/settings/wifi/ConfigureWifiSettings$1;-><init>()V

    sput-object v0, Lcom/android/settings/wifi/ConfigureWifiSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/samsung/android/settings/search/SecIndexable$SecSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->isLaunchSmartNetworkSwitch:Z

    const-string/jumbo v0, "show_individual_apps"

    iput-object v0, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->EXTRA_SHOW_SWITCH_FOR_INDIVIDUAL_APPS:Ljava/lang/String;

    return-void
.end method

.method private static ConfigureWifiPreferenceControllers(Landroid/content/Context;Landroid/app/Activity;Landroid/app/Fragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroid/app/FragmentManager;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/app/Activity;",
            "Landroid/app/Fragment;",
            "Lcom/android/settingslib/core/lifecycle/Lifecycle;",
            "Landroid/app/FragmentManager;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    const-class v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    sget-object v1, Lcom/android/settings/wifi/ConfigureWifiSettings;->controllers:Ljava/util/List;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/settings/wifi/ConfigureWifiSettings;->controllers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/android/settings/wifi/ConfigureWifiSettings;->controllers:Ljava/util/List;

    :goto_0
    sget-object v1, Lcom/android/settings/wifi/ConfigureWifiSettings;->controllers:Ljava/util/List;

    new-instance v2, Lcom/android/settings/wifi/WifiInfoPreferenceController;

    invoke-direct {v2, p0, p3, v0}, Lcom/android/settings/wifi/WifiInfoPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroid/net/wifi/WifiManager;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/android/settings/wifi/ConfigureWifiSettings;->controllers:Ljava/util/List;

    new-instance v2, Lcom/samsung/android/settings/wifi/WifiPowerSavingModePrefController;

    invoke-direct {v2, p0, p3, v0}, Lcom/samsung/android/settings/wifi/WifiPowerSavingModePrefController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroid/net/wifi/WifiManager;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/android/settings/wifi/ConfigureWifiSettings;->controllers:Ljava/util/List;

    new-instance v2, Lcom/samsung/android/settings/wifi/PasspointPreferenceController;

    invoke-direct {v2, p0, p3, v0}, Lcom/samsung/android/settings/wifi/PasspointPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroid/net/wifi/WifiManager;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/android/settings/wifi/ConfigureWifiSettings;->controllers:Ljava/util/List;

    new-instance v2, Lcom/samsung/android/settings/wifi/ScanForFreeWlansPrefController;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/ScanForFreeWlansPrefController;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/android/settings/wifi/ConfigureWifiSettings;->controllers:Ljava/util/List;

    new-instance v2, Lcom/samsung/android/settings/wifi/TencentWifiDetectionPrefController;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/TencentWifiDetectionPrefController;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/android/settings/wifi/ConfigureWifiSettings;->controllers:Ljava/util/List;

    new-instance v2, Lcom/samsung/android/settings/wifi/SecureWifiPrefController;

    invoke-direct {v2, p0, p3, v0}, Lcom/samsung/android/settings/wifi/SecureWifiPrefController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroid/net/wifi/WifiManager;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v7, Lcom/android/settings/wifi/ConfigureWifiSettings;->controllers:Ljava/util/List;

    new-instance v8, Lcom/samsung/android/settings/wifi/WifiManageNetworkPrefController;

    move-object v1, v8

    move-object v2, p1

    move-object v3, p2

    move-object v4, p0

    move-object v5, p3

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/settings/wifi/WifiManageNetworkPrefController;-><init>(Landroid/app/Activity;Landroid/app/Fragment;Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroid/net/wifi/WifiManager;)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/android/settings/wifi/ConfigureWifiSettings;->controllers:Ljava/util/List;

    new-instance v2, Lcom/samsung/android/settings/wifi/AttAutoConnectionPrefController;

    invoke-direct {v2, p0, p3, v0}, Lcom/samsung/android/settings/wifi/AttAutoConnectionPrefController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroid/net/wifi/WifiManager;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/android/settings/wifi/ConfigureWifiSettings;->controllers:Ljava/util/List;

    new-instance v2, Lcom/samsung/android/settings/wifi/NotifyOpenNetworkPrefController;

    invoke-direct {v2, p0, p3, v0}, Lcom/samsung/android/settings/wifi/NotifyOpenNetworkPrefController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroid/net/wifi/WifiManager;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/android/settings/wifi/ConfigureWifiSettings;->controllers:Ljava/util/List;

    new-instance v2, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;

    invoke-direct {v2, p0, p3}, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/android/settings/wifi/ConfigureWifiSettings;->controllers:Ljava/util/List;

    new-instance v2, Lcom/samsung/android/settings/wifi/CharterWifiController;

    invoke-direct {v2, p0, p3}, Lcom/samsung/android/settings/wifi/CharterWifiController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/android/settings/wifi/ConfigureWifiSettings;->controllers:Ljava/util/List;

    new-instance v2, Lcom/samsung/android/settings/wifi/ShowWifiPopupPreferenceController;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/ShowWifiPopupPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/android/settings/wifi/ConfigureWifiSettings;->controllers:Ljava/util/List;

    new-instance v2, Lcom/samsung/android/settings/wifi/WlanPermissionAvailablePrefController;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/WlanPermissionAvailablePrefController;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/android/settings/wifi/ConfigureWifiSettings;->controllers:Ljava/util/List;

    new-instance v2, Lcom/samsung/android/settings/wifi/WifiConnectionTypePrefController;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/settings/wifi/WifiConnectionTypePrefController;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiManager;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/android/settings/wifi/ConfigureWifiSettings;->controllers:Ljava/util/List;

    new-instance v2, Lcom/samsung/android/settings/wifi/WifiControlHistoryPrefController;

    invoke-direct {v2, p1, p2, p0}, Lcom/samsung/android/settings/wifi/WifiControlHistoryPrefController;-><init>(Landroid/app/Activity;Landroid/app/Fragment;Landroid/content/Context;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/android/settings/wifi/ConfigureWifiSettings;->controllers:Ljava/util/List;

    new-instance v2, Lcom/samsung/android/settings/wifi/InstallCredentialsPrefController;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/InstallCredentialsPrefController;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/android/settings/wifi/ConfigureWifiSettings;->controllers:Ljava/util/List;

    new-instance v2, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;

    invoke-direct {v2, p1, p2, p0, p3}, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;-><init>(Landroid/app/Activity;Landroid/app/Fragment;Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/android/settings/wifi/ConfigureWifiSettings;->controllers:Ljava/util/List;

    new-instance v2, Lcom/samsung/android/settings/wifi/AutoWifiPreferenceController;

    invoke-direct {v2, p0, p3, v0}, Lcom/samsung/android/settings/wifi/AutoWifiPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroid/net/wifi/WifiManager;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/android/settings/wifi/ConfigureWifiSettings;->controllers:Ljava/util/List;

    new-instance v2, Lcom/samsung/android/settings/wifi/CMCCEnableWarningPrefController;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/CMCCEnableWarningPrefController;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/android/settings/wifi/ConfigureWifiSettings;->controllers:Ljava/util/List;

    new-instance v2, Lcom/samsung/android/settings/wifi/CricketManagerPreferenceController;

    invoke-direct {v2, p1, p0}, Lcom/samsung/android/settings/wifi/CricketManagerPreferenceController;-><init>(Landroid/app/Activity;Landroid/content/Context;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/android/settings/wifi/ConfigureWifiSettings;->controllers:Ljava/util/List;

    new-instance v2, Lcom/samsung/android/settings/wifi/MobileWIPSPrefController;

    invoke-direct {v2, p1, p2, p0, p3}, Lcom/samsung/android/settings/wifi/MobileWIPSPrefController;-><init>(Landroid/app/Activity;Landroid/app/Fragment;Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/android/settings/wifi/ConfigureWifiSettings;->controllers:Ljava/util/List;

    new-instance v2, Lcom/samsung/android/settings/wifi/NotifyWifiRecommendController;

    invoke-direct {v2, p0, p3, v0}, Lcom/samsung/android/settings/wifi/NotifyWifiRecommendController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroid/net/wifi/WifiManager;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/android/settings/wifi/ConfigureWifiSettings;->controllers:Ljava/util/List;

    return-object v1
.end method

.method static synthetic access$000()Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;
    .locals 1

    sget-object v0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mOpBranding:Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;

    return-object v0
.end method

.method static synthetic access$100()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mIsSupportMWIPS:Z

    return v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/settings/wifi/ConfigureWifiSettings;->CSC_COMMON_CHINA_NAL_SECURITY_TYPE:Ljava/lang/String;

    return-object v0
.end method

.method private refreshAllPreferences(Landroid/content/Context;)V
    .locals 5

    invoke-virtual {p0}, Lcom/android/settings/wifi/ConfigureWifiSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/wifi/ConfigureWifiSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/ConfigureWifiSettings;->getPreferenceScreenResId()I

    move-result v0

    if-gtz v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/ConfigureWifiSettings;->addPreferencesFromResource(I)V

    sget-object v1, Lcom/android/settings/wifi/ConfigureWifiSettings;->controllers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/core/AbstractPreferenceController;

    invoke-virtual {p0}, Lcom/android/settings/wifi/ConfigureWifiSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    goto :goto_0

    :cond_2
    const-string v1, "advanced_adaptive_wifi"

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/ConfigureWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/PreferenceCategory;

    iput-object v1, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mAdaptiveWifiCategory:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mWifiProgressiveDisclosureMixin:Lcom/samsung/android/settings/wifi/WifiProgressiveDisclosureMixin;

    if-nez v1, :cond_4

    const-string v1, "ConfigureWifiSettings"

    const-string v2, "mWifiProgressiveDisclosureMixin set limit"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/samsung/android/settings/wifi/WifiProgressiveDisclosureMixin;

    invoke-virtual {p0}, Lcom/android/settings/wifi/ConfigureWifiSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, p1, v2, v3}, Lcom/samsung/android/settings/wifi/WifiProgressiveDisclosureMixin;-><init>(Landroid/content/Context;Landroid/support/v7/preference/PreferenceScreen;Z)V

    iput-object v1, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mWifiProgressiveDisclosureMixin:Lcom/samsung/android/settings/wifi/WifiProgressiveDisclosureMixin;

    invoke-virtual {p0}, Lcom/android/settings/wifi/ConfigureWifiSettings;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mWifiProgressiveDisclosureMixin:Lcom/samsung/android/settings/wifi/WifiProgressiveDisclosureMixin;

    invoke-virtual {v1, v2}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    const-string v1, "ro.product.device"

    const-string v2, "NONE"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v2

    if-nez v2, :cond_3

    const-string/jumbo v2, "winner"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mWifiProgressiveDisclosureMixin:Lcom/samsung/android/settings/wifi/WifiProgressiveDisclosureMixin;

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Lcom/samsung/android/settings/wifi/WifiProgressiveDisclosureMixin;->setTileLimit(I)V

    iget-object v2, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mWifiProgressiveDisclosureMixin:Lcom/samsung/android/settings/wifi/WifiProgressiveDisclosureMixin;

    invoke-virtual {p0}, Lcom/android/settings/wifi/ConfigureWifiSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/samsung/android/settings/wifi/WifiProgressiveDisclosureMixin;->collapse(Landroid/support/v7/preference/PreferenceScreen;)V

    :cond_3
    iget-object v2, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mAdaptiveWifiCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v2}, Landroid/support/v7/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mAdaptiveWifiCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v2}, Landroid/support/v7/preference/PreferenceCategory;->removeAll()V

    iget-object v2, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mAdaptiveWifiCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceCategory;->setVisible(Z)V

    :cond_4
    return-void
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/settings/wifi/ConfigureWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/settings/wifi/ConfigureWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/wifi/ConfigureWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/wifi/ConfigureWifiSettings;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/wifi/ConfigureWifiSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-static {p1, v1, p0, v2, v3}, Lcom/android/settings/wifi/ConfigureWifiSettings;->ConfigureWifiPreferenceControllers(Landroid/content/Context;Landroid/app/Activity;Landroid/app/Fragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroid/app/FragmentManager;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 1

    const-string v0, "ConfigureWifiSettings"

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x152

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f15014e

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/dashboard/DashboardFragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/ConfigureWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f1212e6

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mSAScreenId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/wifi/ConfigureWifiSettings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "show_individual_apps"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "show_individual_apps"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "ConfigureWifiSettings"

    const-string/jumbo v2, "show switch for individual apps screen"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->isLaunchSmartNetworkSwitch:Z

    :cond_0
    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/android/settings/dashboard/DashboardFragment;->onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/ConfigureWifiSettings;->refreshAllPreferences(Landroid/content/Context;)V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/ConfigureWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f12090e

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mSAScreenId:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/ConfigureWifiSettings;->finish()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    return v1

    :catch_0
    move-exception v1

    const-string v2, "ConfigureWifiSettings"

    const-string v3, "IllegalStateException: Can not perform this action after onSaveInstanceState"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    invoke-virtual {p0}, Lcom/android/settings/wifi/ConfigureWifiSettings;->updatePreferenceStates()V

    return-void
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onStart()V

    iget-object v0, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mSAScreenId:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;)V

    return-void
.end method

.method protected updatePreferenceStates()V
    .locals 10

    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->updatePreferenceStates()V

    invoke-virtual {p0}, Lcom/android/settings/wifi/ConfigureWifiSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mWifiProgressiveDisclosureMixin:Lcom/samsung/android/settings/wifi/WifiProgressiveDisclosureMixin;

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mWifiProgressiveDisclosureMixin:Lcom/samsung/android/settings/wifi/WifiProgressiveDisclosureMixin;

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/WifiProgressiveDisclosureMixin;->updateDivider()V

    sget-object v1, Lcom/android/settings/wifi/ConfigureWifiSettings;->controllers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/core/AbstractPreferenceController;

    invoke-virtual {v2}, Lcom/android/settingslib/core/AbstractPreferenceController;->isAvailable()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lcom/android/settingslib/core/AbstractPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mWifiProgressiveDisclosureMixin:Lcom/samsung/android/settings/wifi/WifiProgressiveDisclosureMixin;

    invoke-virtual {v4, v0, v3}, Lcom/samsung/android/settings/wifi/WifiProgressiveDisclosureMixin;->findPreference(Landroid/support/v7/preference/PreferenceScreen;Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    const/4 v5, 0x0

    if-nez v4, :cond_2

    const-string v6, "ConfigureWifiSettings"

    const-string v7, "Cannot find preference with key %s in Controller %s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v3, v8, v5

    const/4 v5, 0x1

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v5

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-boolean v6, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->isLaunchSmartNetworkSwitch:Z

    if-eqz v6, :cond_3

    const-string/jumbo v6, "wifi_poor_network_detection"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    iput-boolean v5, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->isLaunchSmartNetworkSwitch:Z

    instance-of v5, v2, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;

    if-eqz v5, :cond_3

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v6, ":settings:fragment_args_key"

    const-string/jumbo v7, "wifi_switch_for_individual_apps"

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v6, v2

    check-cast v6, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;

    invoke-virtual {v6, v4, v5}, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;->handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;Landroid/os/Bundle;)Z

    :cond_3
    invoke-virtual {v2, v4}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    goto :goto_0

    :cond_4
    return-void
.end method

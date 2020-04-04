.class public Lcom/samsung/android/settingslib/wifi/WifiTracker;
.super Ljava/lang/Object;
.source "WifiTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settingslib/wifi/WifiTracker$AccessPointListenerAdapter;,
        Lcom/samsung/android/settingslib/wifi/WifiTracker$WifiListener;,
        Lcom/samsung/android/settingslib/wifi/WifiTracker$SemWifiListener;,
        Lcom/samsung/android/settingslib/wifi/WifiTracker$Multimap;,
        Lcom/samsung/android/settingslib/wifi/WifiTracker$Scanner;,
        Lcom/samsung/android/settingslib/wifi/WifiTracker$WorkHandler;,
        Lcom/samsung/android/settingslib/wifi/WifiTracker$MainHandler;,
        Lcom/samsung/android/settingslib/wifi/WifiTracker$WifiTrackerNetworkCallback;
    }
.end annotation


# static fields
.field private static final CONFIG_SECURE_SVC_INTEGRATION:Ljava/lang/String;

.field private static final CSC_WIFI_SUPPORT_VZW_EAP_AKA:Z

.field private static final DBG:Z

.field private static final DISPLAY_SSID_STATUS_BAR_INFO:Z

.field public static final ENABLE_TENCENT_SECURITY_WIFI:Z

.field public static final ENABLE_WECHAT_WIFI:Z

.field public static SPF_SupportMobileApEnhanced:Z

.field public static sVerboseLogging:I


# instance fields
.field private final mAccessPointListenerAdapter:Lcom/samsung/android/settingslib/wifi/WifiTracker$AccessPointListenerAdapter;

.field private final mAccessPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/settingslib/wifi/AccessPoint;",
            ">;"
        }
    .end annotation
.end field

.field private final mBleAccessPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/net/wifi/SemWifiApBleScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private final mConfigLock:Ljava/lang/Object;

.field private final mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private mCurrentNetworkState:Landroid/net/NetworkInfo$DetailedState;

.field private final mFilter:Landroid/content/IntentFilter;

.field private mIgnoreUpdateAccessPointOnStart:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mInSetupWizard:Z

.field private mIncludeNotInRangedAp:Z

.field private final mIncludePasspoints:Z

.field private final mIncludeSaved:Z

.field private final mIncludeScans:Z

.field private final mInternalAccessPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/settingslib/wifi/AccessPoint;",
            ">;"
        }
    .end annotation
.end field

.field private final mInternalBleAccessPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/net/wifi/SemWifiApBleScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mLastInfo:Landroid/net/wifi/WifiInfo;

.field private volatile mLastLinkProperties:Landroid/net/LinkProperties;

.field private volatile mLastNetworkInfo:Landroid/net/NetworkInfo;

.field private mLastScanResult:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private mLastUpdatedConfigs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private mLastUpdatedTime:J

.field private mLastWifiState:I

.field private mLatestNetworkState:Landroid/net/NetworkInfo$DetailedState;

.field private final mListener:Lcom/samsung/android/settingslib/wifi/WifiTracker$WifiListener;

.field private final mLock:Ljava/lang/Object;

.field final mMainHandler:Lcom/samsung/android/settingslib/wifi/WifiTracker$MainHandler;

.field private mMaxSpeedLabelScoreCacheAge:J

.field private mNetworkCallback:Lcom/samsung/android/settingslib/wifi/WifiTracker$WifiTrackerNetworkCallback;

.field private final mNetworkRequest:Landroid/net/NetworkRequest;

.field private final mNetworkScoreManager:Landroid/net/NetworkScoreManager;

.field private mNetworkScoringUiEnabled:Z

.field private mNumSavedNetworks:I

.field private mPreviousNetworkState:Landroid/net/NetworkInfo$DetailedState;

.field final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRegistered:Z

.field private final mRequestedScores:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/net/NetworkKey;",
            ">;"
        }
    .end annotation
.end field

.field private mScanId:Ljava/lang/Integer;

.field private final mScanResultCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field mScanner:Lcom/samsung/android/settingslib/wifi/WifiTracker$Scanner;

.field private mScoreCache:Landroid/net/wifi/WifiNetworkScoreCache;

.field private final mSeenBssids:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSemFlagTracking:Z

.field private mSemListener:Lcom/samsung/android/settingslib/wifi/WifiTracker$SemWifiListener;

.field private mSemReceivedToUpdateAccessPoint:Z

.field private mSemReceivedToUpdateAccessPointWithClear:Z

.field private mSemRequestToHoldAccessPointUpdate:Z

.field private mStaleScanResults:Z

.field private mTencentSecurityWifiManager:Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;

.field private mWeChatWifiManager:Lcom/samsung/android/settingslib/wifi/WeChatWifiManager;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiServiceMaybeNotRun:Z

.field private final mWorkHandler:Lcom/samsung/android/settingslib/wifi/WifiTracker$WorkHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->DBG:Z

    const/4 v0, 0x0

    sput v0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->sVerboseLogging:I

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_ConfigSecureSvcIntegration"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->CONFIG_SECURE_SVC_INTEGRATION:Ljava/lang/String;

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_DisplaySsidStatusBarInfo"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->DISPLAY_SSID_STATUS_BAR_INFO:Z

    invoke-static {}, Lcom/samsung/android/net/wifi/OpBrandingLoader;->getInstance()Lcom/samsung/android/net/wifi/OpBrandingLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/net/wifi/OpBrandingLoader;->isSupportEapAka()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->CSC_WIFI_SUPPORT_VZW_EAP_AKA:Z

    const-string v0, "WeChatWiFi"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Wifi_ConfigSocialSvcIntegrationn"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->ENABLE_WECHAT_WIFI:Z

    const-string v0, "TencentSecurityWiFi"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Wifi_ConfigSecureSvcIntegration"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->ENABLE_TENCENT_SECURITY_WIFI:Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->SPF_SupportMobileApEnhanced:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/settingslib/wifi/WifiTracker$WifiListener;Landroid/os/Looper;ZZZ)V
    .locals 12

    move-object v11, p1

    const-class v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v11, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/net/wifi/WifiManager;

    const-class v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v11, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/net/ConnectivityManager;

    const-class v0, Landroid/net/NetworkScoreManager;

    invoke-virtual {v11, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/net/NetworkScoreManager;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v10

    move-object v0, p0

    move-object v1, v11

    move-object v2, p2

    move-object v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    invoke-direct/range {v0 .. v10}, Lcom/samsung/android/settingslib/wifi/WifiTracker;-><init>(Landroid/content/Context;Lcom/samsung/android/settingslib/wifi/WifiTracker$WifiListener;Landroid/os/Looper;ZZZLandroid/net/wifi/WifiManager;Landroid/net/ConnectivityManager;Landroid/net/NetworkScoreManager;Landroid/os/Looper;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/samsung/android/settingslib/wifi/WifiTracker$WifiListener;Landroid/os/Looper;ZZZLandroid/net/wifi/WifiManager;Landroid/net/ConnectivityManager;Landroid/net/NetworkScoreManager;Landroid/os/Looper;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mAccessPoints:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mInternalAccessPoints:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mBleAccessPoints:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mInternalBleAccessPoints:Ljava/util/List;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mConfigLock:Ljava/lang/Object;

    new-instance v0, Lcom/samsung/android/settingslib/wifi/WifiTracker$AccessPointListenerAdapter;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/samsung/android/settingslib/wifi/WifiTracker$AccessPointListenerAdapter;-><init>(Lcom/samsung/android/settingslib/wifi/WifiTracker$1;)V

    iput-object v0, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mAccessPointListenerAdapter:Lcom/samsung/android/settingslib/wifi/WifiTracker$AccessPointListenerAdapter;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mRequestedScores:Ljava/util/Set;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mStaleScanResults:Z

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mSeenBssids:Ljava/util/HashMap;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mScanResultCache:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mScanId:Ljava/lang/Integer;

    iput-object v2, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mTencentSecurityWifiManager:Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;

    new-instance v1, Lcom/samsung/android/settingslib/wifi/WifiTracker$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/settingslib/wifi/WifiTracker$2;-><init>(Lcom/samsung/android/settingslib/wifi/WifiTracker;)V

    iput-object v1, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mReceiver:Landroid/content/BroadcastReceiver;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mLastUpdatedTime:J

    if-nez p4, :cond_1

    if-eqz p5, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must include either saved or scans"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mContext:Landroid/content/Context;

    if-nez p10, :cond_2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p10

    :cond_2
    new-instance v1, Lcom/samsung/android/settingslib/wifi/WifiTracker$MainHandler;

    invoke-direct {v1, p0, p10}, Lcom/samsung/android/settingslib/wifi/WifiTracker$MainHandler;-><init>(Lcom/samsung/android/settingslib/wifi/WifiTracker;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mMainHandler:Lcom/samsung/android/settingslib/wifi/WifiTracker$MainHandler;

    new-instance v1, Lcom/samsung/android/settingslib/wifi/WifiTracker$WorkHandler;

    if-eqz p3, :cond_3

    move-object v2, p3

    goto :goto_1

    :cond_3
    move-object v2, p10

    :goto_1
    invoke-direct {v1, p0, v2}, Lcom/samsung/android/settingslib/wifi/WifiTracker$WorkHandler;-><init>(Lcom/samsung/android/settingslib/wifi/WifiTracker;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mWorkHandler:Lcom/samsung/android/settingslib/wifi/WifiTracker$WorkHandler;

    iput-object p7, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez p7, :cond_4

    iput-boolean v0, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mWifiServiceMaybeNotRun:Z

    :cond_4
    iput-boolean p4, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mIncludeSaved:Z

    iput-boolean p5, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mIncludeScans:Z

    iput-boolean p6, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mIncludePasspoints:Z

    iput-object p2, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mListener:Lcom/samsung/android/settingslib/wifi/WifiTracker$WifiListener;

    iput-object p8, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-boolean v1, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mWifiServiceMaybeNotRun:Z

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mLastWifiState:I

    :cond_5
    sget-boolean v1, Lcom/samsung/android/settingslib/wifi/WifiTracker;->ENABLE_WECHAT_WIFI:Z

    if-eqz v1, :cond_6

    invoke-static {}, Lcom/samsung/android/settingslib/wifi/WeChatWifiManager;->getInstance()Lcom/samsung/android/settingslib/wifi/WeChatWifiManager;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mWeChatWifiManager:Lcom/samsung/android/settingslib/wifi/WeChatWifiManager;

    :cond_6
    sget-boolean v1, Lcom/samsung/android/settingslib/wifi/WifiTracker;->ENABLE_TENCENT_SECURITY_WIFI:Z

    if-eqz v1, :cond_7

    new-instance v1, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;

    invoke-direct {v1}, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mTencentSecurityWifiManager:Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;

    :cond_7
    iget-boolean v1, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mWifiServiceMaybeNotRun:Z

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getVerboseLoggingLevel()I

    move-result v1

    sput v1, Lcom/samsung/android/settingslib/wifi/WifiTracker;->sVerboseLogging:I

    :cond_8
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mFilter:Landroid/content/IntentFilter;

    iget-boolean v1, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mWifiServiceMaybeNotRun:Z

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mFilter:Landroid/content/IntentFilter;

    const-string v2, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mFilter:Landroid/content/IntentFilter;

    const-string v2, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mFilter:Landroid/content/IntentFilter;

    const-string v2, "android.net.wifi.NETWORK_IDS_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mFilter:Landroid/content/IntentFilter;

    const-string v2, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mFilter:Landroid/content/IntentFilter;

    const-string v2, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mFilter:Landroid/content/IntentFilter;

    const-string v2, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mFilter:Landroid/content/IntentFilter;

    const-string v2, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mFilter:Landroid/content/IntentFilter;

    const-string v2, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mFilter:Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.INET_CONDITION_ACTION"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mFilter:Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mFilter:Landroid/content/IntentFilter;

    const-string v2, "com.samsung.android.net.wifi.SHOW_NOTI_MESSAGE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mFilter:Landroid/content/IntentFilter;

    const-string v2, "com.samsung.android.net.wifi.CAPTIVE_PORTAL_AUTHENTICATED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mFilter:Landroid/content/IntentFilter;

    const-string v2, "com.samsung.android.net.wifi.CAPTIVE_PORTAL_DETECTED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-boolean v1, Lcom/samsung/android/settingslib/wifi/WifiTracker;->ENABLE_WECHAT_WIFI:Z

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mFilter:Landroid/content/IntentFilter;

    const-string v2, "com.samsung.android.net.wifi.WECHAT_AP_LIST"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mFilter:Landroid/content/IntentFilter;

    const-string v2, "com.samsung.android.net.wifi.WECHAT_ERRORCODE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mFilter:Landroid/content/IntentFilter;

    const-string v2, "com.samsung.android.net.wifi.WECHAT_LOGOUT"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_9
    new-instance v1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->clearCapabilities()Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mNetworkRequest:Landroid/net/NetworkRequest;

    iput-object p9, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mNetworkScoreManager:Landroid/net/NetworkScoreManager;

    new-instance v0, Landroid/net/wifi/WifiNetworkScoreCache;

    iget-object v1, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/samsung/android/settingslib/wifi/WifiTracker$1;

    iget-object v3, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mWorkHandler:Lcom/samsung/android/settingslib/wifi/WifiTracker$WorkHandler;

    invoke-direct {v2, p0, v3}, Lcom/samsung/android/settingslib/wifi/WifiTracker$1;-><init>(Lcom/samsung/android/settingslib/wifi/WifiTracker;Landroid/os/Handler;)V

    invoke-direct {v0, v1, v2}, Landroid/net/wifi/WifiNetworkScoreCache;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiNetworkScoreCache$CacheListener;)V

    iput-object v0, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mScoreCache:Landroid/net/wifi/WifiNetworkScoreCache;

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/settingslib/wifi/WifiTracker;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mRegistered:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/samsung/android/settingslib/wifi/WifiTracker;)Lcom/samsung/android/settingslib/wifi/WifiTracker$SemWifiListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mSemListener:Lcom/samsung/android/settingslib/wifi/WifiTracker$SemWifiListener;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/samsung/android/settingslib/wifi/WifiTracker;)Landroid/net/wifi/WifiInfo;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mLastInfo:Landroid/net/wifi/WifiInfo;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/samsung/android/settingslib/wifi/WifiTracker;Landroid/net/wifi/WifiInfo;)Landroid/net/wifi/WifiInfo;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mLastInfo:Landroid/net/wifi/WifiInfo;

    return-object p1
.end method

.method static synthetic access$1202(Lcom/samsung/android/settingslib/wifi/WifiTracker;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mLastLinkProperties:Landroid/net/LinkProperties;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/samsung/android/settingslib/wifi/WifiTracker;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/samsung/android/settingslib/wifi/WifiTracker;)Landroid/net/NetworkInfo$DetailedState;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mCurrentNetworkState:Landroid/net/NetworkInfo$DetailedState;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/samsung/android/settingslib/wifi/WifiTracker;Landroid/net/NetworkInfo$DetailedState;)Landroid/net/NetworkInfo$DetailedState;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mCurrentNetworkState:Landroid/net/NetworkInfo$DetailedState;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/samsung/android/settingslib/wifi/WifiTracker;)Landroid/net/NetworkInfo$DetailedState;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mPreviousNetworkState:Landroid/net/NetworkInfo$DetailedState;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/samsung/android/settingslib/wifi/WifiTracker;Landroid/net/NetworkInfo$DetailedState;)Landroid/net/NetworkInfo$DetailedState;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mPreviousNetworkState:Landroid/net/NetworkInfo$DetailedState;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/samsung/android/settingslib/wifi/WifiTracker;Landroid/net/NetworkInfo$DetailedState;Landroid/net/NetworkInfo$DetailedState;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settingslib/wifi/WifiTracker;->isStateChanged(Landroid/net/NetworkInfo$DetailedState;Landroid/net/NetworkInfo$DetailedState;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/samsung/android/settingslib/wifi/WifiTracker;)Landroid/net/NetworkInfo$DetailedState;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mLatestNetworkState:Landroid/net/NetworkInfo$DetailedState;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/samsung/android/settingslib/wifi/WifiTracker;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mInSetupWizard:Z

    return v0
.end method

.method static synthetic access$1900(Lcom/samsung/android/settingslib/wifi/WifiTracker;)Landroid/net/ConnectivityManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/settingslib/wifi/WifiTracker;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settingslib/wifi/WifiTracker;->updateNetworkScores()V

    return-void
.end method

.method static synthetic access$2000(Lcom/samsung/android/settingslib/wifi/WifiTracker;)Landroid/net/wifi/WifiManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/samsung/android/settingslib/wifi/WifiTracker;)Lcom/samsung/android/settingslib/wifi/WeChatWifiManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mWeChatWifiManager:Lcom/samsung/android/settingslib/wifi/WeChatWifiManager;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/samsung/android/settingslib/wifi/WifiTracker;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settingslib/wifi/WifiTracker;->updateAccessPointsLocked(ZZ)V

    return-void
.end method

.method static synthetic access$2300(Lcom/samsung/android/settingslib/wifi/WifiTracker;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settingslib/wifi/WifiTracker;->clearAndForceUpdate()V

    return-void
.end method

.method static synthetic access$2400(Lcom/samsung/android/settingslib/wifi/WifiTracker;)Lcom/samsung/android/settingslib/wifi/WifiTracker$WifiListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mListener:Lcom/samsung/android/settingslib/wifi/WifiTracker$WifiListener;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/samsung/android/settingslib/wifi/WifiTracker;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mSemFlagTracking:Z

    return v0
.end method

.method static synthetic access$2602(Lcom/samsung/android/settingslib/wifi/WifiTracker;J)J
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mLastUpdatedTime:J

    return-wide p1
.end method

.method static synthetic access$2700(Lcom/samsung/android/settingslib/wifi/WifiTracker;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settingslib/wifi/WifiTracker;->copyAndNotifyListeners(Z)V

    return-void
.end method

.method static synthetic access$2800(Lcom/samsung/android/settingslib/wifi/WifiTracker;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/samsung/android/settingslib/wifi/WifiTracker;Landroid/net/NetworkInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settingslib/wifi/WifiTracker;->updateNetworkInfo(Landroid/net/NetworkInfo;)V

    return-void
.end method

.method static synthetic access$3000(Lcom/samsung/android/settingslib/wifi/WifiTracker;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settingslib/wifi/WifiTracker;->handleResume()V

    return-void
.end method

.method static synthetic access$3102(Lcom/samsung/android/settingslib/wifi/WifiTracker;Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mLastNetworkInfo:Landroid/net/NetworkInfo;

    return-object p1
.end method

.method static synthetic access$3200(Lcom/samsung/android/settingslib/wifi/WifiTracker;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mAccessPoints:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/samsung/android/settingslib/wifi/WifiTracker;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->DBG:Z

    return v0
.end method

.method static synthetic access$700(Lcom/samsung/android/settingslib/wifi/WifiTracker;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mLastWifiState:I

    return v0
.end method

.method static synthetic access$702(Lcom/samsung/android/settingslib/wifi/WifiTracker;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mLastWifiState:I

    return p1
.end method

.method static synthetic access$800(Lcom/samsung/android/settingslib/wifi/WifiTracker;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mIgnoreUpdateAccessPointOnStart:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$900(Lcom/samsung/android/settingslib/wifi/WifiTracker;)Lcom/samsung/android/settingslib/wifi/WifiTracker$WorkHandler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mWorkHandler:Lcom/samsung/android/settingslib/wifi/WifiTracker$WorkHandler;

    return-object v0
.end method

.method private clearAndForceUpdate()V
    .locals 2

    sget-boolean v0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "WifiTracker"

    const-string v1, "clearAndForceUpdate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mAccessPoints:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    sget-boolean v1, Lcom/samsung/android/settingslib/wifi/WifiTracker;->SPF_SupportMobileApEnhanced:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mBleAccessPoints:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/samsung/android/settingslib/wifi/WifiTracker;->forceUpdate()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private copyAndNotifyListeners(Z)V
    .locals 9

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/4 v1, 0x0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mAccessPoints:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/settingslib/wifi/AccessPoint;

    iget v6, v5, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mId:I

    invoke-virtual {v0, v6, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    sget-boolean v4, Lcom/samsung/android/settingslib/wifi/WifiTracker;->DBG:Z

    if-eqz v4, :cond_1

    const-string v4, "WifiTracker"

    const-string v5, "Starting to copy AP items on the MainHandler"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz p1, :cond_2

    iget-object v4, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mAccessPointListenerAdapter:Lcom/samsung/android/settingslib/wifi/WifiTracker$AccessPointListenerAdapter;

    iget-object v4, v4, Lcom/samsung/android/settingslib/wifi/WifiTracker$AccessPointListenerAdapter;->mPendingNotifications:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->clone()Landroid/util/SparseIntArray;

    move-result-object v4

    move-object v1, v4

    :cond_2
    iget-object v4, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mAccessPointListenerAdapter:Lcom/samsung/android/settingslib/wifi/WifiTracker$AccessPointListenerAdapter;

    iget-object v4, v4, Lcom/samsung/android/settingslib/wifi/WifiTracker$AccessPointListenerAdapter;->mPendingNotifications:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->clear()V

    iget-object v4, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mInternalAccessPoints:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/settingslib/wifi/AccessPoint;

    iget v6, v5, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mId:I

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/settingslib/wifi/AccessPoint;

    if-nez v6, :cond_3

    new-instance v7, Lcom/samsung/android/settingslib/wifi/AccessPoint;

    iget-object v8, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mContext:Landroid/content/Context;

    invoke-direct {v7, v8, v5}, Lcom/samsung/android/settingslib/wifi/AccessPoint;-><init>(Landroid/content/Context;Lcom/samsung/android/settingslib/wifi/AccessPoint;)V

    move-object v6, v7

    goto :goto_2

    :cond_3
    invoke-virtual {v6, v5}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->copyFrom(Lcom/samsung/android/settingslib/wifi/AccessPoint;)V

    :goto_2
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    iget-object v4, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mAccessPoints:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    iget-object v4, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mAccessPoints:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-lez v3, :cond_9

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/settingslib/wifi/AccessPoint;

    iget v5, v4, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mId:I

    invoke-virtual {v1, v5}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

    iget-object v6, v4, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mAccessPointListener:Lcom/samsung/android/settingslib/wifi/AccessPoint$AccessPointListener;

    if-eqz v5, :cond_5

    if-nez v6, :cond_6

    goto :goto_3

    :cond_6
    and-int/lit8 v7, v5, 0x1

    if-eqz v7, :cond_7

    invoke-interface {v6, v4}, Lcom/samsung/android/settingslib/wifi/AccessPoint$AccessPointListener;->onAccessPointChanged(Lcom/samsung/android/settingslib/wifi/AccessPoint;)V

    :cond_7
    and-int/lit8 v7, v5, 0x2

    if-eqz v7, :cond_8

    invoke-interface {v6, v4}, Lcom/samsung/android/settingslib/wifi/AccessPoint$AccessPointListener;->onLevelChanged(Lcom/samsung/android/settingslib/wifi/AccessPoint;)V

    :cond_8
    goto :goto_3

    :cond_9
    sget-boolean v3, Lcom/samsung/android/settingslib/wifi/WifiTracker;->SPF_SupportMobileApEnhanced:Z

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mBleAccessPoints:Ljava/util/List;

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mBleAccessPoints:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    iget-object v3, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mInternalBleAccessPoints:Ljava/util/List;

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mInternalBleAccessPoints:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_a

    iget-object v3, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mBleAccessPoints:Ljava/util/List;

    iget-object v4, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mInternalBleAccessPoints:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_a
    const-string v3, "WifiTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "copyAndNotifyListeners() : mBleAccessPoints after update "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mBleAccessPoints:Ljava/util/List;

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mBleAccessPoints:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_4

    :cond_b
    const-string v5, "null"

    :goto_4
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    return-void

    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method private getPersistedWifiState()I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    :try_start_0
    const-string v1, "wifi_on"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    const/4 v2, 0x0

    return v2
.end method

.method private getScanResults()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mLastScanResult:Ljava/util/List;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mLastScanResult:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mLastScanResult:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/ScanResult;

    iget-wide v1, v1, Landroid/net/wifi/ScanResult;->timestamp:J

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v3, v1

    sget-boolean v5, Lcom/samsung/android/settingslib/wifi/WifiTracker;->DBG:Z

    if-eqz v5, :cond_0

    const-string v5, "WifiTracker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "check to use previous scan results diff:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-lez v5, :cond_1

    const-wide/32 v5, 0xea60

    cmp-long v5, v3, v5

    if-gez v5, :cond_1

    iget-object v5, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mLastScanResult:Ljava/util/List;

    return-object v5

    :cond_1
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mLastScanResult:Ljava/util/List;

    goto :goto_0

    :cond_2
    iput-object v0, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mLastScanResult:Ljava/util/List;

    :cond_3
    :goto_0
    return-object v0
.end method

.method private getTopActivityName(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    const-string v0, "unknown"

    const-string v1, "activity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {v1, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    const-string v3, "WifiTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "topActivityName name -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "WifiTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getTopActivityName - exception : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-object v0
.end method

.method private getWifiConfigurationForNetworkId(I)Landroid/net/wifi/WifiConfiguration;
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mConfigLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mLastUpdatedConfigs:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mLastUpdatedConfigs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    iget-object v3, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mLastInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v3, :cond_0

    iget v3, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne p1, v3, :cond_0

    monitor-exit v0

    return-object v2

    :cond_0
    goto :goto_0

    :cond_1
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private handleResume()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mScanResultCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mSeenBssids:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mScanId:Ljava/lang/Integer;

    return-void
.end method

.method private isStateChanged(Landroid/net/NetworkInfo$DetailedState;Landroid/net/NetworkInfo$DetailedState;)Z
    .locals 1

    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->AUTHENTICATING:Landroid/net/NetworkInfo$DetailedState;

    if-eq p1, v0, :cond_0

    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v0, :cond_1

    :cond_0
    sget-object p1, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    :cond_1
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->AUTHENTICATING:Landroid/net/NetworkInfo$DetailedState;

    if-eq p2, v0, :cond_2

    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    if-ne p2, v0, :cond_3

    :cond_2
    sget-object p2, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    :cond_3
    if-eq p1, p2, :cond_4

    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private printAccessPoints(ILjava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/samsung/android/settingslib/wifi/AccessPoint;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    const-string v1, "WifiTracker"

    const-string v2, "------ Dumping SSIDs that were not seen on this scan ------"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, 0x1

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settingslib/wifi/AccessPoint;

    if-le v1, p1, :cond_1

    goto :goto_1

    :cond_1
    sget-boolean v4, Lcom/samsung/android/settingslib/wifi/WifiTracker;->DBG:Z

    if-eqz v4, :cond_2

    const-string v4, "WifiTracker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AP "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getSummary()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    if-le p1, v0, :cond_4

    const-string v0, "WifiTracker"

    const-string v2, "---- Done dumping SSIDs that were not seen on this scan ----"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void
.end method

.method private registerScoreCache()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mNetworkScoreManager:Landroid/net/NetworkScoreManager;

    iget-object v1, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mScoreCache:Landroid/net/wifi/WifiNetworkScoreCache;

    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v1, v3}, Landroid/net/NetworkScoreManager;->registerNetworkScoreCache(ILandroid/net/INetworkScoreCache;I)V

    return-void
.end method

.method private requestScoresForNetworkKeys(Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/net/NetworkKey;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "WifiTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requesting scores for Network Keys: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mNetworkScoreManager:Landroid/net/NetworkScoreManager;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    new-array v1, v1, [Landroid/net/NetworkKey;

    invoke-interface {p1, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/net/NetworkKey;

    invoke-virtual {v0, v1}, Landroid/net/NetworkScoreManager;->requestScores([Landroid/net/NetworkKey;)Z

    iget-object v0, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mRequestedScores:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private sendNewAccessPointToClient(Z)V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mMainHandler:Lcom/samsung/android/settingslib/wifi/WifiTracker$MainHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/samsung/android/settingslib/wifi/WifiTracker$MainHandler;->removeMessages(I)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mLastUpdatedTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x190

    cmp-long v0, v2, v4

    const/4 v2, 0x0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mMainHandler:Lcom/samsung/android/settingslib/wifi/WifiTracker$MainHandler;

    nop

    invoke-virtual {v0, v1, p1, v2}, Lcom/samsung/android/settingslib/wifi/WifiTracker$MainHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mMainHandler:Lcom/samsung/android/settingslib/wifi/WifiTracker$MainHandler;

    iget-object v3, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mMainHandler:Lcom/samsung/android/settingslib/wifi/WifiTracker$MainHandler;

    nop

    invoke-virtual {v3, v1, p1, v2}, Lcom/samsung/android/settingslib/wifi/WifiTracker$MainHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v5}, Lcom/samsung/android/settingslib/wifi/WifiTracker$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_0
    return-void
.end method

.method private unregisterScoreCache()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mNetworkScoreManager:Landroid/net/NetworkScoreManager;

    iget-object v1, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mScoreCache:Landroid/net/wifi/WifiNetworkScoreCache;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/net/NetworkScoreManager;->unregisterNetworkScoreCache(ILandroid/net/INetworkScoreCache;)V

    iget-object v0, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mRequestedScores:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private updateAccessPoints(ZZ)V
    .locals 44

    move-object/from16 v1, p0

    move/from16 v0, p1

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settingslib/wifi/WifiTracker;->getPersistedWifiState()I

    move-result v2

    if-eqz v2, :cond_43

    iget v2, v1, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mLastWifiState:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    iget v2, v1, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mLastWifiState:I

    const/4 v4, 0x2

    if-eq v2, v4, :cond_0

    goto/16 :goto_22

    :cond_0
    iget-boolean v2, v1, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mSemRequestToHoldAccessPointUpdate:Z

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    sget-boolean v2, Lcom/samsung/android/settingslib/wifi/WifiTracker;->DBG:Z

    if-eqz v2, :cond_1

    const-string v2, "WifiTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ignored updateAccessPoints, holding by settings. doClearConfig:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iput-boolean v4, v1, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mSemReceivedToUpdateAccessPoint:Z

    iget-boolean v2, v1, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mSemReceivedToUpdateAccessPointWithClear:Z

    if-nez v2, :cond_2

    iput-boolean v0, v1, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mSemReceivedToUpdateAccessPointWithClear:Z

    :cond_2
    return-void

    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    iget-object v5, v1, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mInternalAccessPoints:Ljava/util/List;

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iget-object v6, v1, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mLastUpdatedConfigs:Ljava/util/List;

    if-nez v6, :cond_4

    const/4 v0, 0x1

    :cond_4
    move v6, v0

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settingslib/wifi/WifiTracker;->updateConfiguredNetworks()V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/settingslib/wifi/AccessPoint;

    if-eqz v6, :cond_5

    invoke-virtual {v7}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->clearConfig()V

    sget-boolean v8, Lcom/samsung/android/settingslib/wifi/WifiTracker;->ENABLE_WECHAT_WIFI:Z

    if-eqz v8, :cond_5

    invoke-virtual {v7}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->clearWeChatApInfo()V

    :cond_5
    iget-object v8, v1, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mLastInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v8, :cond_6

    iget-object v8, v1, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mLastInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v7, v8}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->clearNetworkInfoExcept(Landroid/net/wifi/WifiInfo;)V

    :cond_6
    invoke-virtual {v7}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->clearUpdateFlag()V

    goto :goto_0

    :cond_7
    iget-object v0, v1, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mLastNetworkInfo:Landroid/net/NetworkInfo;

    const/4 v7, 0x0

    if-eqz v0, :cond_8

    iget-object v0, v1, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mCurrentNetworkState:Landroid/net/NetworkInfo$DetailedState;

    if-eqz v0, :cond_8

    iget-object v0, v1, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mLastNetworkInfo:Landroid/net/NetworkInfo;

    iget-object v8, v1, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mCurrentNetworkState:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v8, v7, v7}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    new-instance v0, Lcom/samsung/android/settingslib/wifi/WifiTracker$Multimap;

    invoke-direct {v0, v7}, Lcom/samsung/android/settingslib/wifi/WifiTracker$Multimap;-><init>(Lcom/samsung/android/settingslib/wifi/WifiTracker$1;)V

    move-object v7, v0

    const/4 v0, 0x0

    iget-object v8, v1, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mLastInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v8, :cond_9

    iget-object v8, v1, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mLastInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v8}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v8

    invoke-direct {v1, v8}, Lcom/samsung/android/settingslib/wifi/WifiTracker;->getWifiConfigurationForNetworkId(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    :cond_9
    move-object v8, v0

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settingslib/wifi/WifiTracker;->getScanResults()Ljava/util/List;

    move-result-object v9

    const-string v0, "WifiTracker"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "updateAccessPoints clearConfig:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, " configSize:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v1, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mLastUpdatedConfigs:Ljava/util/List;

    if-eqz v11, :cond_a

    iget-object v11, v1, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mLastUpdatedConfigs:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    goto :goto_1

    :cond_a
    const-string v11, "null"

    :goto_1
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " scanSize:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v9, :cond_b

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    goto :goto_2

    :cond_b
    const-string v11, "null"

    :goto_2
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, v1, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mLastUpdatedConfigs:Ljava/util/List;

    iget-object v11, v1, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mConfigLock:Ljava/lang/Object;

    monitor-enter v11

    const/4 v0, 0x0

    if-eqz v10, :cond_13

    :try_start_0
    iput v0, v1, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mNumSavedNetworks:I

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_13

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/net/wifi/WifiConfiguration;

    iget-boolean v14, v13, Landroid/net/wifi/WifiConfiguration;->selfAdded:Z

    if-eqz v14, :cond_c

    iget v14, v13, Landroid/net/wifi/WifiConfiguration;->numAssociation:I

    if-nez v14, :cond_c

    goto :goto_3

    :cond_c
    iget v14, v1, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mNumSavedNetworks:I

    add-int/2addr v14, v4

    iput v14, v1, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mNumSavedNetworks:I

    invoke-virtual {v1, v13, v2}, Lcom/samsung/android/settingslib/wifi/WifiTracker;->getCachedOrCreate(Landroid/net/wifi/WifiConfiguration;Ljava/util/List;)Lcom/samsung/android/settingslib/wifi/AccessPoint;

    move-result-object v14

    if-eqz v6, :cond_d

    invoke-virtual {v14, v13}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->update(Landroid/net/wifi/WifiConfiguration;)V

    :cond_d
    iget-object v15, v1, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mLastInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v15, :cond_e

    iget-object v15, v1, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mLastNetworkInfo:Landroid/net/NetworkInfo;

    if-eqz v15, :cond_e

    iget-object v15, v1, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mLastInfo:Landroid/net/wifi/WifiInfo;

    iget-object v3, v1, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mLastNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v14, v8, v15, v3}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->update(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo;)Z

    :cond_e
    iget-boolean v3, v1, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mIncludeSaved:Z

    if-eqz v3, :cond_12

    const/4 v3, 0x0

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_4
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_10

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/net/wifi/ScanResult;

    move-object/from16 v17, v16

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->matches(Landroid/net/wifi/ScanResult;)Z

    move-result v16

    if-eqz v16, :cond_f

    const/4 v3, 0x1

    goto :goto_5

    :cond_f
    nop

    const/4 v0, 0x0

    goto :goto_4

    :cond_10
    :goto_5
    if-nez v3, :cond_11

    invoke-virtual {v14}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->isConnected()Z

    move-result v0

    if-nez v0, :cond_11

    invoke-virtual {v14}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->setUnreachable()V

    :cond_11
    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v14}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0, v14}, Lcom/samsung/android/settingslib/wifi/WifiTracker$Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_12
    nop

    const/4 v0, 0x0

    const/4 v3, 0x3

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v3, v1

    move-object/from16 v23, v2

    move/from16 v25, v6

    move-object/from16 v26, v7

    move-object/from16 v27, v8

    move-object/from16 v28, v9

    move-object/from16 v30, v10

    move/from16 v1, p2

    goto/16 :goto_21

    :cond_13
    :try_start_1
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v0

    if-eqz v9, :cond_1b

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_14
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/net/wifi/ScanResult;

    iget-object v12, v11, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    if-eqz v12, :cond_14

    iget-object v12, v11, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-eqz v12, :cond_14

    iget-object v12, v11, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v13, "[IBSS]"

    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_15

    goto :goto_6

    :cond_15
    invoke-static {v11}, Landroid/net/NetworkKey;->createFromScanResult(Landroid/net/wifi/ScanResult;)Landroid/net/NetworkKey;

    move-result-object v12

    if-eqz v12, :cond_16

    iget-object v13, v1, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mRequestedScores:Ljava/util/Set;

    invoke-interface {v13, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_16

    invoke-interface {v3, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_16
    const/4 v13, 0x0

    iget-object v14, v11, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v7, v14}, Lcom/samsung/android/settingslib/wifi/WifiTracker$Multimap;->getAll(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_7
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_18

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v15, v11}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->update(Landroid/net/wifi/ScanResult;)Z

    move-result v16

    if-eqz v16, :cond_17

    const/4 v13, 0x1

    :cond_17
    goto :goto_7

    :cond_18
    if-nez v13, :cond_1a

    iget-boolean v14, v1, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mIncludeScans:Z

    if-eqz v14, :cond_1a

    invoke-virtual {v1, v11, v2}, Lcom/samsung/android/settingslib/wifi/WifiTracker;->getCachedOrCreate(Landroid/net/wifi/ScanResult;Ljava/util/List;)Lcom/samsung/android/settingslib/wifi/AccessPoint;

    move-result-object v14

    iget-object v15, v1, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mLastInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v15, :cond_19

    iget-object v15, v1, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mLastNetworkInfo:Landroid/net/NetworkInfo;

    if-eqz v15, :cond_19

    iget-object v15, v1, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mLastInfo:Landroid/net/wifi/WifiInfo;

    iget-object v4, v1, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mLastNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v14, v8, v15, v4}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->update(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo;)Z

    :cond_19
    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v14}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4, v14}, Lcom/samsung/android/settingslib/wifi/WifiTracker$Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1a
    nop

    const/4 v4, 0x1

    goto :goto_6

    :cond_1b
    const/4 v0, 0x0

    const/4 v4, 0x0

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-wide/16 v18, 0x0

    const-wide/16 v20, 0x0

    move/from16 v22, v0

    const-string v0, ""

    move-object/from16 v23, v2

    sget-object v2, Lcom/samsung/android/settingslib/wifi/WifiTracker;->CONFIG_SECURE_SVC_INTEGRATION:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v2, "CscFeature_Wifi_DisableMWIPS"

    invoke-virtual {v0, v2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1d

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v2, "CscFeature_Wifi_DisableDefaultMWIPS"

    invoke-virtual {v0, v2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    iget-object v2, v1, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v24, v4

    const-string v4, "wifi_mwips"

    invoke-static {v2, v4, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1c

    const/4 v2, 0x1

    goto :goto_8

    :cond_1c
    const/4 v2, 0x0

    :goto_8
    move v13, v2

    iget-object v2, v1, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "wifi_mwips_special_ssid"

    invoke-static {v2, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iget-object v2, v1, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "wifi_mwips_special_ssid_prev"

    invoke-static {v2, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    iget-object v2, v1, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "wifi_mwips_special_null_ssid"

    invoke-static {v2, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    iget-object v2, v1, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "wifi_mwips_special_null_ssid_prev"

    invoke-static {v2, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-wide/16 v18, 0x0

    const-wide/16 v20, 0x0

    goto :goto_9

    :cond_1d
    move-object/from16 v24, v4

    :goto_9
    move-object/from16 v2, v16

    move-object/from16 v4, v17

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move/from16 v25, v6

    move-object/from16 v26, v7

    move-object/from16 v27, v8

    move-object/from16 v28, v9

    move-wide/from16 v6, v20

    move/from16 v8, v22

    move-object/from16 v9, v24

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_34

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v29, v0

    move-object/from16 v0, v16

    check-cast v0, Lcom/samsung/android/settingslib/wifi/AccessPoint;

    if-eqz v13, :cond_27

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_25

    move-object/from16 v30, v10

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/wifi/WifiInfo;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move/from16 v31, v13

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v13

    move-object/from16 v32, v3

    const/4 v3, 0x5

    if-le v13, v3, :cond_22

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    move-object/from16 v33, v9

    array-length v9, v3

    move/from16 v34, v8

    const/4 v8, 0x0

    :goto_b
    if-ge v8, v9, :cond_1e

    move/from16 v35, v9

    aget-byte v9, v3, v8

    move-object/from16 v36, v3

    const-string v3, "%02x"

    move-object/from16 v37, v5

    const/4 v5, 0x1

    new-array v1, v5, [Ljava/lang/Object;

    and-int/lit16 v5, v9, 0xff

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v16, 0x0

    aput-object v5, v1, v16

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, 0x1

    move/from16 v9, v35

    move-object/from16 v3, v36

    move-object/from16 v5, v37

    move-object/from16 v1, p0

    goto :goto_b

    :cond_1e
    move-object/from16 v37, v5

    if-eqz v2, :cond_20

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x5

    if-le v1, v3, :cond_20

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    const-string v1, "WifiTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ignore special ssid filtering karma hex "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_c

    :cond_1f
    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    const-string v1, "WifiTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ignore special ssid filtering karma "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_c

    :cond_20
    if-eqz v4, :cond_23

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x5

    if-le v1, v3, :cond_23

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    const-string v1, "WifiTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ignore special ssid filtering karma hex prev"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_c

    :cond_21
    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    const-string v1, "WifiTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ignore special ssid filtering karma prev "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_22
    move-object/from16 v37, v5

    move/from16 v34, v8

    move-object/from16 v33, v9

    :cond_23
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v3, 0xe

    if-le v1, v3, :cond_26

    if-eqz v14, :cond_24

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_24

    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    const-string v1, "WifiTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ignore special ssid karma "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_24
    if-eqz v15, :cond_26

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_26

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    const-string v1, "WifiTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ignore special ssid karma prev "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    nop

    :goto_c
    move-object/from16 v0, v29

    move-object/from16 v10, v30

    move/from16 v13, v31

    move-object/from16 v3, v32

    move-object/from16 v9, v33

    move/from16 v8, v34

    move-object/from16 v5, v37

    move-object/from16 v1, p0

    goto/16 :goto_a

    :cond_25
    move-object/from16 v32, v3

    move-object/from16 v37, v5

    move/from16 v34, v8

    move-object/from16 v33, v9

    move-object/from16 v30, v10

    move/from16 v31, v13

    :cond_26
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v8, v8, v18

    add-long/2addr v6, v8

    goto :goto_d

    :cond_27
    move-object/from16 v32, v3

    move-object/from16 v37, v5

    move/from16 v34, v8

    move-object/from16 v33, v9

    move-object/from16 v30, v10

    move/from16 v31, v13

    :goto_d
    sget-boolean v1, Lcom/samsung/android/settingslib/wifi/WifiTracker;->CSC_WIFI_SUPPORT_VZW_EAP_AKA:Z

    if-eqz v1, :cond_29

    const-string v1, "VerizonWiFi"

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    sget-boolean v1, Lcom/samsung/android/settingslib/wifi/WifiTracker;->DBG:Z

    if-eqz v1, :cond_28

    const-string v1, "WifiTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    - filter.add "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " (EAP AKA for VZW)"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_28
    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    nop

    move-object/from16 v3, p0

    goto/16 :goto_13

    :cond_29
    invoke-virtual {v0}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    if-eq v1, v3, :cond_32

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->AUTHENTICATING:Landroid/net/NetworkInfo$DetailedState;

    if-eq v1, v3, :cond_32

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    if-eq v1, v3, :cond_32

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->VERIFYING_POOR_LINK:Landroid/net/NetworkInfo$DetailedState;

    if-eq v1, v3, :cond_32

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->CAPTIVE_PORTAL_CHECK:Landroid/net/NetworkInfo$DetailedState;

    if-eq v1, v3, :cond_32

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v1, v3, :cond_2a

    goto/16 :goto_12

    :cond_2a
    invoke-virtual {v0}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->isUpdated()Z

    move-result v3

    if-nez v3, :cond_2c

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-boolean v3, Lcom/samsung/android/settingslib/wifi/WifiTracker;->DBG:Z

    if-eqz v3, :cond_2b

    const-string v3, "WifiTracker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "    - weak.add "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " (not updated)"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2b
    move-object/from16 v3, p0

    goto/16 :goto_10

    :cond_2c
    invoke-virtual {v0}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getLevel()I

    move-result v3

    const/4 v5, -0x1

    if-eq v3, v5, :cond_2f

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getRssi()I

    move-result v3

    const/16 v5, -0x4e

    if-lt v3, v5, :cond_2f

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->isReachable()Z

    move-result v3

    if-eqz v3, :cond_2f

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getFrequency()I

    move-result v3

    const/16 v5, 0x1388

    if-le v3, v5, :cond_2d

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getRssi()I

    move-result v3

    const/16 v5, -0x4b

    if-ge v3, v5, :cond_2d

    goto :goto_f

    :cond_2d
    sget-boolean v3, Lcom/samsung/android/settingslib/wifi/WifiTracker;->DISPLAY_SSID_STATUS_BAR_INFO:Z

    if-eqz v3, :cond_2b

    const-string v3, "Swisscom_Auto_Login"

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2e

    const-string v3, "Swisscom"

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b

    move-object v3, v0

    move-object v9, v3

    move/from16 v8, v34

    :goto_e
    move-object/from16 v3, p0

    goto :goto_11

    :cond_2e
    invoke-virtual {v0}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    if-eqz v3, :cond_2b

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    iget v3, v3, Landroid/net/wifi/WifiConfiguration;->status:I

    if-nez v3, :cond_2b

    const/4 v0, 0x1

    move v8, v0

    move-object/from16 v9, v33

    goto :goto_e

    :cond_2f
    :goto_f
    move-object/from16 v3, p0

    iget-boolean v5, v3, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mIncludeNotInRangedAp:Z

    if-eqz v5, :cond_30

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v5

    if-eqz v5, :cond_30

    goto/16 :goto_13

    :cond_30
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-boolean v5, Lcom/samsung/android/settingslib/wifi/WifiTracker;->DBG:Z

    if-eqz v5, :cond_31

    const-string v5, "WifiTracker"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "    - weak.add "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " rssi:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getRssi()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " freq:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getFrequency()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " state:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_31
    :goto_10
    move-object/from16 v9, v33

    move/from16 v8, v34

    :goto_11
    move-object v1, v3

    move-object/from16 v0, v29

    move-object/from16 v10, v30

    move/from16 v13, v31

    move-object/from16 v3, v32

    goto :goto_14

    :cond_32
    :goto_12
    move-object/from16 v3, p0

    sget-boolean v5, Lcom/samsung/android/settingslib/wifi/WifiTracker;->DBG:Z

    if-eqz v5, :cond_33

    const-string v5, "WifiTracker"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "current network is existed ssid="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", state="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ", summary="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getSummary()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_33
    :goto_13
    move-object v1, v3

    move-object/from16 v0, v29

    move-object/from16 v10, v30

    move/from16 v13, v31

    move-object/from16 v3, v32

    move-object/from16 v9, v33

    move/from16 v8, v34

    :goto_14
    move-object/from16 v5, v37

    goto/16 :goto_a

    :cond_34
    move-object/from16 v32, v3

    move-object/from16 v37, v5

    move/from16 v34, v8

    move-object/from16 v33, v9

    move-object/from16 v30, v10

    move/from16 v31, v13

    move-object v3, v1

    const-string v0, "WifiTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Total wips checking time : "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " millisecond"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, v3, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mIncludeScans:Z

    if-eqz v0, :cond_35

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settingslib/wifi/AccessPoint;

    move-object/from16 v5, v37

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_15

    :cond_35
    move-object/from16 v5, v37

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_16

    :cond_36
    sget-boolean v0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->DISPLAY_SSID_STATUS_BAR_INFO:Z

    if-eqz v0, :cond_38

    move/from16 v8, v34

    const/4 v0, 0x1

    if-ne v8, v0, :cond_37

    if-eqz v33, :cond_37

    move-object/from16 v9, v33

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const-string v0, "WifiTracker"

    const-string v1, "network removed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17

    :cond_37
    move-object/from16 v9, v33

    goto :goto_17

    :cond_38
    move-object/from16 v9, v33

    move/from16 v8, v34

    :goto_17
    move-object/from16 v1, v32

    invoke-direct {v3, v1}, Lcom/samsung/android/settingslib/wifi/WifiTracker;->requestScoresForNetworkKeys(Ljava/util/Collection;)V

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_39

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/settingslib/wifi/AccessPoint;

    iget-object v13, v3, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mScoreCache:Landroid/net/wifi/WifiNetworkScoreCache;

    move-object/from16 v38, v0

    iget-boolean v0, v3, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mNetworkScoringUiEnabled:Z

    move-object/from16 v40, v1

    move-object/from16 v39, v2

    iget-wide v1, v3, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mMaxSpeedLabelScoreCacheAge:J

    invoke-virtual {v10, v13, v0, v1, v2}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->update(Landroid/net/wifi/WifiNetworkScoreCache;ZJ)Z

    nop

    move-object/from16 v0, v38

    move-object/from16 v2, v39

    move-object/from16 v1, v40

    goto :goto_18

    :cond_39
    move-object/from16 v40, v1

    move-object/from16 v39, v2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->isRecommended()Z

    move-result v10

    if-eqz v10, :cond_3c

    const/4 v10, 0x0

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_1a
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_3b

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v41, v0

    move-object/from16 v0, v16

    check-cast v0, Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v2, v0}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->compareSpeedTo(Lcom/samsung/android/settingslib/wifi/AccessPoint;)I

    move-result v16

    if-gez v16, :cond_3a

    goto :goto_1b

    :cond_3a
    add-int/lit8 v10, v10, 0x1

    nop

    move-object/from16 v0, v41

    goto :goto_1a

    :cond_3b
    move-object/from16 v41, v0

    :goto_1b
    invoke-virtual {v1, v10, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1c

    :cond_3c
    move-object/from16 v41, v0

    :goto_1c
    move-object/from16 v0, v41

    goto :goto_19

    :cond_3d
    const-string v0, "WifiTracker"

    const-string v2, "RecommendList START"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v10, v0

    :goto_1d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settingslib/wifi/AccessPoint;

    const-string v13, "WifiTracker"

    move-object/from16 v42, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v43, v2

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    if-gt v10, v1, :cond_3e

    invoke-virtual {v0, v1}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->setSorted(Z)V

    const/4 v2, 0x0

    goto :goto_1e

    :cond_3e
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->setSorted(Z)V

    :goto_1e
    add-int/lit8 v10, v10, 0x1

    nop

    move-object/from16 v1, v42

    move-object/from16 v2, v43

    goto :goto_1d

    :cond_3f
    move-object/from16 v42, v1

    const-string v0, "WifiTracker"

    const-string v1, "RecommendList END"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_2
    invoke-static {v5}, Ljava/util/Collections;->sort(Ljava/util/List;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1f

    :catch_0
    move-exception v0

    move-object v1, v0

    const-string v1, "WifiTracker"

    const-string v2, "Exception occures during sorting accessPoints !!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1f
    sget-boolean v0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->DBG:Z

    if-eqz v0, :cond_40

    const/4 v1, 0x3

    invoke-direct {v3, v1, v5}, Lcom/samsung/android/settingslib/wifi/WifiTracker;->printAccessPoints(ILjava/util/List;)V

    :cond_40
    sget-boolean v0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->SPF_SupportMobileApEnhanced:Z

    if-eqz v0, :cond_42

    iget-object v0, v3, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->semGetWifiApBleScanDetail()Ljava/util/List;

    move-result-object v0

    const-string v1, "WifiTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "updateAccessPoints() : bleAccessPoints -> "

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_41

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    goto :goto_20

    :cond_41
    const-string v13, "null"

    :goto_20
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v3, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mInternalBleAccessPoints:Ljava/util/List;

    if-eqz v1, :cond_42

    iget-object v1, v3, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mInternalBleAccessPoints:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    if-eqz v0, :cond_42

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_42

    iget-object v1, v3, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mInternalBleAccessPoints:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_42
    iget-object v0, v3, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mInternalAccessPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, v3, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mInternalAccessPoints:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move/from16 v1, p2

    invoke-direct {v3, v1}, Lcom/samsung/android/settingslib/wifi/WifiTracker;->sendNewAccessPointToClient(Z)V

    return-void

    :catchall_1
    move-exception v0

    move-object v3, v1

    move-object/from16 v23, v2

    move/from16 v25, v6

    move-object/from16 v26, v7

    move-object/from16 v27, v8

    move-object/from16 v28, v9

    move-object/from16 v30, v10

    move/from16 v1, p2

    :goto_21
    :try_start_3
    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0

    :catchall_2
    move-exception v0

    goto :goto_21

    :cond_43
    :goto_22
    move-object v3, v1

    move/from16 v1, p2

    const-string v2, "WifiTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ignored updateAccessPoints, Wi-Fi is not enabled. state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mLastWifiState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updateAccessPointsLocked(ZZ)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settingslib/wifi/WifiTracker;->updateAccessPoints(ZZ)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private updateConfiguredNetworks()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mConfigLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mLastUpdatedConfigs:Ljava/util/List;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "WifiTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getConfiguredNetworks size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mLastUpdatedConfigs:Ljava/util/List;

    if-nez v2, :cond_0

    const-string v2, "null"

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mLastUpdatedConfigs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private updateNetworkInfo(Landroid/net/NetworkInfo;)V
    .locals 12

    iget v0, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mLastWifiState:I

    const/4 v1, 0x4

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mMainHandler:Lcom/samsung/android/settingslib/wifi/WifiTracker$MainHandler;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settingslib/wifi/WifiTracker$MainHandler;->sendEmptyMessage(I)Z

    return-void

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mMainHandler:Lcom/samsung/android/settingslib/wifi/WifiTracker$MainHandler;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settingslib/wifi/WifiTracker$MainHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mMainHandler:Lcom/samsung/android/settingslib/wifi/WifiTracker$MainHandler;

    invoke-virtual {v0, v2}, Lcom/samsung/android/settingslib/wifi/WifiTracker$MainHandler;->sendEmptyMessage(I)Z

    :goto_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mCurrentNetworkState:Landroid/net/NetworkInfo$DetailedState;

    if-eqz v0, :cond_2

    iput-object p1, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mLastNetworkInfo:Landroid/net/NetworkInfo;

    iget-object v0, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mLastNetworkInfo:Landroid/net/NetworkInfo;

    iget-object v1, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mCurrentNetworkState:Landroid/net/NetworkInfo$DetailedState;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mLastInfo:Landroid/net/wifi/WifiInfo;

    iget-object v1, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mLastInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mLastInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/settingslib/wifi/WifiTracker;->getWifiConfigurationForNetworkId(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    :cond_3
    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mInternalAccessPoints:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    :goto_1
    if-ltz v4, :cond_7

    iget-object v6, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mInternalAccessPoints:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/settingslib/wifi/AccessPoint;

    if-nez v6, :cond_4

    const-string v7, "WifiTracker"

    const-string v8, "updateNetworkInfo - ap is null"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_4
    invoke-virtual {v6}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->isActive()Z

    move-result v7

    iget-object v8, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mLastInfo:Landroid/net/wifi/WifiInfo;

    iget-object v9, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mLastNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v6, v0, v8, v9}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->update(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo;)Z

    move-result v8

    if-eqz v8, :cond_5

    const/4 v1, 0x1

    invoke-virtual {v6}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->isActive()Z

    move-result v8

    if-eq v7, v8, :cond_5

    const/4 v2, 0x1

    :cond_5
    iget-object v8, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mScoreCache:Landroid/net/wifi/WifiNetworkScoreCache;

    iget-boolean v9, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mNetworkScoringUiEnabled:Z

    iget-wide v10, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mMaxSpeedLabelScoreCacheAge:J

    invoke-virtual {v6, v8, v9, v10, v11}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->update(Landroid/net/wifi/WifiNetworkScoreCache;ZJ)Z

    move-result v8

    if-eqz v8, :cond_6

    const/4 v2, 0x1

    const/4 v1, 0x1

    :cond_6
    :goto_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_7
    const-string v4, "WifiTracker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateNetworkInfo reorder:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", updated:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_8

    iget-object v4, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mInternalAccessPoints:Ljava/util/List;

    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    :cond_8
    sget-boolean v4, Lcom/samsung/android/settingslib/wifi/WifiTracker;->DBG:Z

    if-eqz v4, :cond_9

    invoke-virtual {p0}, Lcom/samsung/android/settingslib/wifi/WifiTracker;->getAccessPoints()Ljava/util/List;

    move-result-object v4

    invoke-direct {p0, v5, v4}, Lcom/samsung/android/settingslib/wifi/WifiTracker;->printAccessPoints(ILjava/util/List;)V

    :cond_9
    if-eqz v1, :cond_a

    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/samsung/android/settingslib/wifi/WifiTracker;->sendNewAccessPointToClient(Z)V

    :cond_a
    monitor-exit v3

    return-void

    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method private updateNetworkScores()V
    .locals 9

    iget-object v0, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v1

    move v1, v2

    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mInternalAccessPoints:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    iget-object v4, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mInternalAccessPoints:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/settingslib/wifi/AccessPoint;

    iget-object v5, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mScoreCache:Landroid/net/wifi/WifiNetworkScoreCache;

    iget-boolean v6, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mNetworkScoringUiEnabled:Z

    iget-wide v7, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mMaxSpeedLabelScoreCacheAge:J

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->update(Landroid/net/wifi/WifiNetworkScoreCache;ZJ)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-eqz v3, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mInternalAccessPoints:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-direct {p0, v2}, Lcom/samsung/android/settingslib/wifi/WifiTracker;->sendNewAccessPointToClient(Z)V

    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public forceScan()V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mWifiServiceMaybeNotRun:Z

    if-eqz v0, :cond_0

    const-string v0, "WifiTracker"

    const-string v1, "WifiManager is null, need to initialize this WifiTracker"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget v0, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mLastWifiState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mScanner:Lcom/samsung/android/settingslib/wifi/WifiTracker$Scanner;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mScanner:Lcom/samsung/android/settingslib/wifi/WifiTracker$Scanner;

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/wifi/WifiTracker$Scanner;->forceScan()V

    :cond_1
    return-void
.end method

.method public forceUpdate()V
    .locals 4

    iget-boolean v0, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mWifiServiceMaybeNotRun:Z

    if-eqz v0, :cond_0

    const-string v0, "WifiTracker"

    const-string v1, "WifiManager is null, need to initialize this WifiTracker"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mWorkHandler:Lcom/samsung/android/settingslib/wifi/WifiTracker$WorkHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/settingslib/wifi/WifiTracker$WorkHandler;->removeMessages(I)V

    iget-object v1, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mLastInfo:Landroid/net/wifi/WifiInfo;

    iget-object v1, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v3, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getCurrentNetwork()Landroid/net/Network;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mLastNetworkInfo:Landroid/net/NetworkInfo;

    const/4 v1, 0x1

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/settingslib/wifi/WifiTracker;->updateAccessPointsLocked(ZZ)V

    sget-boolean v1, Lcom/samsung/android/settingslib/wifi/WifiTracker;->DBG:Z

    if-eqz v1, :cond_1

    const-string v1, "WifiTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "force update - internal access point list:\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mInternalAccessPoints:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mMainHandler:Lcom/samsung/android/settingslib/wifi/WifiTracker$MainHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/samsung/android/settingslib/wifi/WifiTracker$MainHandler;->removeMessages(I)V

    iget-object v1, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mMainHandler:Lcom/samsung/android/settingslib/wifi/WifiTracker$MainHandler;

    iget-object v3, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mMainHandler:Lcom/samsung/android/settingslib/wifi/WifiTracker$MainHandler;

    invoke-static {v3, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/settingslib/wifi/WifiTracker$MainHandler;->handleMessage(Landroid/os/Message;)V

    sget-boolean v1, Lcom/samsung/android/settingslib/wifi/WifiTracker;->DBG:Z

    if-eqz v1, :cond_2

    const-string v1, "WifiTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "force update - external access point list:\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mAccessPoints:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public forceUpdateAsync()V
    .locals 4

    sget-boolean v0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "WifiTracker"

    const-string v1, "forceUpdate asynchronously"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mWifiServiceMaybeNotRun:Z

    if-eqz v0, :cond_1

    const-string v0, "WifiTracker"

    const-string v1, "WifiManager is null, need to initialize this WifiTracker"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mWorkHandler:Lcom/samsung/android/settingslib/wifi/WifiTracker$WorkHandler;

    const/4 v1, 0x1

    const-string v2, "forceUpdateAsync"

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Lcom/samsung/android/settingslib/wifi/WifiTracker$WorkHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public getAccessPoints()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/settingslib/wifi/AccessPoint;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mAccessPoints:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method getCachedOrCreate(Landroid/net/wifi/ScanResult;Ljava/util/List;)Lcom/samsung/android/settingslib/wifi/AccessPoint;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/ScanResult;",
            "Ljava/util/List<",
            "Lcom/samsung/android/settingslib/wifi/AccessPoint;",
            ">;)",
            "Lcom/samsung/android/settingslib/wifi/AccessPoint;"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v2, p1}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->matches(Landroid/net/wifi/ScanResult;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v2, p1}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->update(Landroid/net/wifi/ScanResult;)Z

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/samsung/android/settingslib/wifi/AccessPoint;

    iget-object v2, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p1}, Lcom/samsung/android/settingslib/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/net/wifi/ScanResult;)V

    iget-object v2, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mAccessPointListenerAdapter:Lcom/samsung/android/settingslib/wifi/WifiTracker$AccessPointListenerAdapter;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->setListener(Lcom/samsung/android/settingslib/wifi/AccessPoint$AccessPointListener;)V

    return-object v1
.end method

.method getCachedOrCreate(Landroid/net/wifi/WifiConfiguration;Ljava/util/List;)Lcom/samsung/android/settingslib/wifi/AccessPoint;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/WifiConfiguration;",
            "Ljava/util/List<",
            "Lcom/samsung/android/settingslib/wifi/AccessPoint;",
            ">;)",
            "Lcom/samsung/android/settingslib/wifi/AccessPoint;"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v2, p1}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->matches(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v2, p1}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->loadConfig(Landroid/net/wifi/WifiConfiguration;)V

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/samsung/android/settingslib/wifi/AccessPoint;

    iget-object v2, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p1}, Lcom/samsung/android/settingslib/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V

    iget-object v2, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mAccessPointListenerAdapter:Lcom/samsung/android/settingslib/wifi/WifiTracker$AccessPointListenerAdapter;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->setListener(Lcom/samsung/android/settingslib/wifi/AccessPoint$AccessPointListener;)V

    return-object v1
.end method

.method public getManager()Landroid/net/wifi/WifiManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method public getWifiState()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mLastWifiState:I

    iget v0, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mLastWifiState:I

    return v0
.end method

.method public isConnected()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public isWifiEnabled()Z
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mWifiServiceMaybeNotRun:Z

    if-eqz v0, :cond_0

    const-string v0, "WifiTracker"

    const-string v1, "WifiManager is null, need to initialize this WifiTracker"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    return v0
.end method

.method public pauseScanning()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mScanner:Lcom/samsung/android/settingslib/wifi/WifiTracker$Scanner;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mWifiServiceMaybeNotRun:Z

    if-eqz v0, :cond_0

    const-string v0, "WifiTracker"

    const-string v1, "WifiManager is null, need to initialize this WifiTracker"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mScanner:Lcom/samsung/android/settingslib/wifi/WifiTracker$Scanner;

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/wifi/WifiTracker$Scanner;->pause()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mScanner:Lcom/samsung/android/settingslib/wifi/WifiTracker$Scanner;

    :cond_1
    return-void
.end method

.method public resumeScanning()V
    .locals 3

    iget-boolean v0, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mWifiServiceMaybeNotRun:Z

    if-eqz v0, :cond_0

    const-string v0, "WifiTracker"

    const-string v1, "WifiManager is null, need to initialize this WifiTracker"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mScanner:Lcom/samsung/android/settingslib/wifi/WifiTracker$Scanner;

    if-nez v0, :cond_1

    new-instance v0, Lcom/samsung/android/settingslib/wifi/WifiTracker$Scanner;

    invoke-direct {v0, p0}, Lcom/samsung/android/settingslib/wifi/WifiTracker$Scanner;-><init>(Lcom/samsung/android/settingslib/wifi/WifiTracker;)V

    iput-object v0, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mScanner:Lcom/samsung/android/settingslib/wifi/WifiTracker$Scanner;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mWorkHandler:Lcom/samsung/android/settingslib/wifi/WifiTracker$WorkHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/samsung/android/settingslib/wifi/WifiTracker$WorkHandler;->sendEmptyMessage(I)Z

    iget v0, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mLastWifiState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mScanner:Lcom/samsung/android/settingslib/wifi/WifiTracker$Scanner;

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/wifi/WifiTracker$Scanner;->resume()V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mWorkHandler:Lcom/samsung/android/settingslib/wifi/WifiTracker$WorkHandler;

    const/4 v1, 0x0

    const-string v2, "resumeScan"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settingslib/wifi/WifiTracker$WorkHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public resumeToUpdateAccessPoint()V
    .locals 2

    sget-boolean v0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "WifiTracker"

    const-string v1, "resumeToUpdateAccessPoint"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mWifiServiceMaybeNotRun:Z

    if-eqz v0, :cond_1

    const-string v0, "WifiTracker"

    const-string v1, "WifiManager is null, need to initialize this WifiTracker"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mSemRequestToHoldAccessPointUpdate:Z

    iget-boolean v1, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mSemReceivedToUpdateAccessPoint:Z

    if-eqz v1, :cond_2

    iput-boolean v0, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mSemReceivedToUpdateAccessPoint:Z

    iget-boolean v0, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mSemReceivedToUpdateAccessPointWithClear:Z

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settingslib/wifi/WifiTracker;->updateAccessPointsLocked(ZZ)V

    :cond_2
    return-void
.end method

.method public setAccessPointVisible(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mIncludeNotInRangedAp:Z

    return-void
.end method

.method public setSemWifiListener(Lcom/samsung/android/settingslib/wifi/WifiTracker$SemWifiListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mSemListener:Lcom/samsung/android/settingslib/wifi/WifiTracker$SemWifiListener;

    return-void
.end method

.method public setSetupWizardMode()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mInSetupWizard:Z

    return-void
.end method

.method public startTracking()V
    .locals 5

    const-string v0, "WifiTracker"

    const-string v1, "startTracking"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mWifiServiceMaybeNotRun:Z

    if-eqz v0, :cond_0

    const-string v0, "WifiTracker"

    const-string v1, "WifiManager is null, need to initialize this WifiTracker"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mLastWifiState:I

    iget-object v0, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/settingslib/wifi/WifiTracker;->registerScoreCache()V

    invoke-virtual {p0}, Lcom/samsung/android/settingslib/wifi/WifiTracker;->resumeScanning()V

    sget-boolean v1, Lcom/samsung/android/settingslib/wifi/WifiTracker;->SPF_SupportMobileApEnhanced:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mLastWifiState:I

    const/4 v3, 0x3

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->semWifiApBleClientRole(Z)Z

    const-string v1, "WifiTracker"

    const-string v3, "Making semWifiApBleClientRole true"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iput-boolean v2, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mSemFlagTracking:Z

    iget-boolean v1, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mRegistered:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mLastInfo:Landroid/net/wifi/WifiInfo;

    iget-object v1, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mLastNetworkInfo:Landroid/net/NetworkInfo;

    iget-object v1, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mLastNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mCurrentNetworkState:Landroid/net/NetworkInfo$DetailedState;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mIgnoreUpdateAccessPointOnStart:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v4, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v1, Lcom/samsung/android/settingslib/wifi/WifiTracker$WifiTrackerNetworkCallback;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/samsung/android/settingslib/wifi/WifiTracker$WifiTrackerNetworkCallback;-><init>(Lcom/samsung/android/settingslib/wifi/WifiTracker;Lcom/samsung/android/settingslib/wifi/WifiTracker$1;)V

    iput-object v1, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mNetworkCallback:Lcom/samsung/android/settingslib/wifi/WifiTracker$WifiTrackerNetworkCallback;

    iget-object v1, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v3, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mNetworkRequest:Landroid/net/NetworkRequest;

    iget-object v4, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mNetworkCallback:Lcom/samsung/android/settingslib/wifi/WifiTracker$WifiTrackerNetworkCallback;

    invoke-virtual {v1, v3, v4}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    iput-boolean v2, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mRegistered:Z

    :cond_2
    iput-boolean v2, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mNetworkScoringUiEnabled:Z

    iget-object v1, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "speed_label_cache_eviction_age_millis"

    const-wide/32 v3, 0x124f80

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mMaxSpeedLabelScoreCacheAge:J

    sget-boolean v1, Lcom/samsung/android/settingslib/wifi/WifiTracker;->ENABLE_WECHAT_WIFI:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mWeChatWifiManager:Lcom/samsung/android/settingslib/wifi/WeChatWifiManager;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mWeChatWifiManager:Lcom/samsung/android/settingslib/wifi/WeChatWifiManager;

    iget-object v2, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settingslib/wifi/WeChatWifiManager;->isScanEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mAccessPoints:Ljava/util/List;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-direct {p0}, Lcom/samsung/android/settingslib/wifi/WifiTracker;->clearAndForceUpdate()V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mWeChatWifiManager:Lcom/samsung/android/settingslib/wifi/WeChatWifiManager;

    iget-object v2, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settingslib/wifi/WeChatWifiManager;->checkLogout(Landroid/content/Context;)V

    :cond_4
    :goto_0
    sget-boolean v1, Lcom/samsung/android/settingslib/wifi/WifiTracker;->ENABLE_TENCENT_SECURITY_WIFI:Z

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mInSetupWizard:Z

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mTencentSecurityWifiManager:Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mTencentSecurityWifiManager:Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;

    iget-object v2, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mWorkHandler:Lcom/samsung/android/settingslib/wifi/WifiTracker$WorkHandler;

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->startWifiSecurityEvalution(Landroid/content/Context;Landroid/os/Handler;)V

    :cond_5
    monitor-exit v0

    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public stopToUpdateAccessPoint()V
    .locals 2

    sget-boolean v0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "WifiTracker"

    const-string v1, "stopToUpdateAccessPoint"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mWifiServiceMaybeNotRun:Z

    if-eqz v0, :cond_1

    const-string v0, "WifiTracker"

    const-string v1, "WifiManager is null, need to initialize this WifiTracker"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mSemRequestToHoldAccessPointUpdate:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mSemRequestToHoldAccessPointUpdate:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mSemReceivedToUpdateAccessPointWithClear:Z

    :cond_2
    return-void
.end method

.method public stopTracking()V
    .locals 4

    const-string v0, "WifiTracker"

    const-string v1, "stopTracking"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mWifiServiceMaybeNotRun:Z

    if-eqz v0, :cond_0

    const-string v0, "WifiTracker"

    const-string v1, "WifiManager is null, need to initialize this WifiTracker"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mConfigLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mLastUpdatedConfigs:Ljava/util/List;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v1, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    iget-boolean v0, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mRegistered:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v3, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mNetworkCallback:Lcom/samsung/android/settingslib/wifi/WifiTracker$WifiTrackerNetworkCallback;

    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    iput-boolean v2, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mRegistered:Z

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/settingslib/wifi/WifiTracker;->unregisterScoreCache()V

    invoke-virtual {p0}, Lcom/samsung/android/settingslib/wifi/WifiTracker;->pauseScanning()V

    sget-boolean v0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->SPF_SupportMobileApEnhanced:Z

    if-eqz v0, :cond_2

    const-string v0, "com.android.settings.Settings$WifiSettingsActivity"

    iget-object v3, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3}, Lcom/samsung/android/settingslib/wifi/WifiTracker;->getTopActivityName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiManager;->semWifiApBleClientRole(Z)Z

    :cond_2
    iput-boolean v2, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mSemFlagTracking:Z

    iget-object v0, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mWorkHandler:Lcom/samsung/android/settingslib/wifi/WifiTracker$WorkHandler;

    invoke-static {v0}, Lcom/samsung/android/settingslib/wifi/WifiTracker$WorkHandler;->access$400(Lcom/samsung/android/settingslib/wifi/WifiTracker$WorkHandler;)V

    iget-object v0, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mMainHandler:Lcom/samsung/android/settingslib/wifi/WifiTracker$MainHandler;

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/wifi/WifiTracker$MainHandler;->removePendingMessages()V

    sget-boolean v0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->ENABLE_TENCENT_SECURITY_WIFI:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mInSetupWizard:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mTencentSecurityWifiManager:Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mTencentSecurityWifiManager:Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;

    iget-object v2, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->stopWifiSecurityEvalution(Landroid/content/Context;)V

    :cond_3
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mCurrentNetworkState:Landroid/net/NetworkInfo$DetailedState;

    iput-object v0, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mLatestNetworkState:Landroid/net/NetworkInfo$DetailedState;

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.class public Lcom/android/settings/wifi/WifiSettings;
.super Lcom/android/settings/RestrictedSettingsFragment;
.source "WifiSettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;
.implements Lcom/samsung/android/settingslib/wifi/AccessPoint$AccessPointListener;
.implements Lcom/samsung/android/settingslib/wifi/WifiTracker$SemWifiListener;
.implements Lcom/samsung/android/settingslib/wifi/WifiTracker$WifiListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/WifiSettings$GoToWebpageHandler;,
        Lcom/android/settings/wifi/WifiSettings$SummaryProvider;,
        Lcom/android/settings/wifi/WifiSettings$SortList;,
        Lcom/android/settings/wifi/WifiSettings$WifiSettingsListener;
    }
.end annotation


# static fields
.field private static DBG:Z

.field private static final DEBUG:Z

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field public static final SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

.field private static final mOpBranding:Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;

.field private static mWifiSettingsForeground:Z

.field public static mWpsInProgress:Z


# instance fields
.field private disableIntent:Landroid/content/Intent;

.field private disableReasons:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private isSupportWifiTips:Z

.field private isWifiQr:Z

.field private mAccessPointSavedState:Landroid/os/Bundle;

.field private mAccessPointsPreferenceGroup:Lcom/samsung/android/settingslib/wifi/AccessPointPreferenceGroup;

.field private mAddPreference:Landroid/support/v7/preference/Preference;

.field private mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

.field private mBgThread:Landroid/os/HandlerThread;

.field private mCheckHttpResponseHandler:Lcom/android/settings/wifi/WifiSettings$GoToWebpageHandler;

.field private mClickedConnect:Z

.field private mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

.field private mConnectedAccessPointPreferenceGroup:Lcom/samsung/android/settingslib/wifi/AccessPointPreferenceGroup;

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mContainer:Landroid/view/ViewGroup;

.field private mContext:Landroid/content/Context;

.field private mDialog:Lcom/android/settings/wifi/WifiDialog;

.field protected mDialogListener:Lcom/android/settings/wifi/WifiDialog$WifiDialogListener;

.field private mDialogMode:I

.field private mDialogShown:Z

.field private mDlgAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

.field private mEnableNextOnConnection:Z

.field private mExteranlProgressBar:Landroid/widget/ProgressBar;

.field private mExternalSwitchTextView:Landroid/widget/TextView;

.field private mExternalSwitchView:Landroid/widget/Switch;

.field private mFinishIfConnected:Z

.field private mFinishIfWifiDisabled:Z

.field private mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

.field private mGoToSettingsFromQuickPanelFirstTime:Z

.field private mHideActionBar:Z

.field private mHideActionBarMenus:Z

.field private mHideContextMenus:Z

.field private final mHideProgressBarRunnable:Ljava/lang/Runnable;

.field private mInManageNetwork:Z

.field private mInOffloadDialog:Z

.field private mInPickerActivity:Z

.field private mInPickerDialog:Z

.field private mInSetupWizardActivity:Z

.field private mIpMacFooter:Landroid/view/View;

.field private mIpMacView:Landroid/widget/TextView;

.field private mIsGuideMode:Z

.field private mIsRestricted:Z

.field private mIsSprotectDownloadble:Z

.field private mIsSupportSSecure:Z

.field private mIsSupportedContactUs:Z

.field private mIsSupportedHelpHub:Z

.field private mLastWifiState:I

.field private mLinearLayoutSecureWifi:Landroid/widget/LinearLayout;

.field private mListAnimationView:Landroid/view/View;

.field private mListener:Lcom/android/settings/wifi/WifiSettings$WifiSettingsListener;

.field private mLoggingScreenId:Ljava/lang/String;

.field private mMacAddress:Ljava/lang/String;

.field private mOpenSecurity:I

.field private mOpenSsid:Ljava/lang/String;

.field private mPassPointPreferenceGroup:Lcom/samsung/android/settingslib/wifi/AccessPointPreferenceGroup;

.field private mPasspointConfigList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/wifi/hotspot2/PasspointConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private mPasspointInfoMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/net/wifi/hotspot2/PasspointConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private mPreviousIp:Ljava/lang/String;

.field private mProgressHeader:Lcom/android/settings/widget/SwitchBar;

.field private mQrConfig:Landroid/net/wifi/WifiConfiguration;

.field private mSTConnectedApState:I

.field private mSTMHSMac:Ljava/lang/String;

.field private mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

.field private mScrollTimer:J

.field private mSecureWifiObserver:Landroid/database/ContentObserver;

.field private mSecureWifiSwitch:Landroid/widget/Switch;

.field private mSecureWifiSwitchView:Landroid/widget/LinearLayout;

.field private mSelectedAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

.field private mSelectedPasspointConfig:Landroid/net/wifi/hotspot2/PasspointConfiguration;

.field private mSemWifiApSmartCallback:Landroid/net/wifi/WifiManager$SemWifiApSmartCallback;

.field private mShowNotInRagededAp:Z

.field private mShowRetryDialog:Z

.field private mSmartTetheringPreferenceGroup:Lcom/samsung/android/settingslib/wifi/AccessPointPreferenceGroup;

.field private mTextViewSecureWifiStatus:Landroid/widget/TextView;

.field private mUseExternalWifiEnabler:Z

.field private mUserBadgeCache:Lcom/samsung/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;

.field private mViListListener:Lcom/samsung/android/settings/wifi/ListAnimationController$OnEventListener;

.field private mWifiAdvanced:Landroid/widget/TextView;

.field private mWifiDirect:Landroid/widget/TextView;

.field private mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

.field private mWifiEnablerListener:Lcom/android/settings/wifi/WifiEnabler$IWifiEnablerListener;

.field protected mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiNfcDialogSavedState:Landroid/os/Bundle;

.field private mWifiPickerHelper:Lcom/samsung/android/settings/wifi/WifiPickerHelper;

.field private mWifiToNfcDialog:Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;

.field private mWifiTracker:Lcom/samsung/android/settingslib/wifi/WifiTracker;

.field private status:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/wifi/WifiSettings;->DBG:Z

    const-string v0, "WifiSettings"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/wifi/WifiSettings;->DEBUG:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/wifi/WifiSettings;->mWifiSettingsForeground:Z

    invoke-static {}, Lcom/samsung/android/net/wifi/OpBrandingLoader;->getInstance()Lcom/samsung/android/net/wifi/OpBrandingLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/net/wifi/OpBrandingLoader;->getOpBranding()Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;

    move-result-object v0

    sput-object v0, Lcom/android/settings/wifi/WifiSettings;->mOpBranding:Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;

    new-instance v0, Lcom/android/settings/wifi/WifiSettings$10;

    invoke-direct {v0}, Lcom/android/settings/wifi/WifiSettings$10;-><init>()V

    sput-object v0, Lcom/android/settings/wifi/WifiSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    new-instance v0, Lcom/android/settings/wifi/WifiSettings$12;

    invoke-direct {v0}, Lcom/android/settings/wifi/WifiSettings$12;-><init>()V

    sput-object v0, Lcom/android/settings/wifi/WifiSettings;->SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const-string v0, "no_config_wifi"

    invoke-direct {p0, v0}, Lcom/android/settings/RestrictedSettingsFragment;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/android/settings/wifi/-$$Lambda$WifiSettings$Dc8tARLt9797q5fiCWMG56ysJZ4;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/-$$Lambda$WifiSettings$Dc8tARLt9797q5fiCWMG56ysJZ4;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mHideProgressBarRunnable:Ljava/lang/Runnable;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mIsSupportSSecure:Z

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Common_ConfigYuva"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "downloadable_sprotect"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->mIsSprotectDownloadble:Z

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mFinishIfConnected:Z

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mFinishIfWifiDisabled:Z

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->status:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->mDialogShown:Z

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mPasspointInfoMap:Ljava/util/HashMap;

    const/4 v1, 0x4

    iput v1, p0, Lcom/android/settings/wifi/WifiSettings;->mLastWifiState:I

    iput v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSTConnectedApState:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSTMHSMac:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mQrConfig:Landroid/net/wifi/WifiConfiguration;

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->isWifiQr:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->disableReasons:Ljava/util/ArrayList;

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->isSupportWifiTips:Z

    new-instance v0, Lcom/android/settings/wifi/WifiSettings$6;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiSettings$6;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSemWifiApSmartCallback:Landroid/net/wifi/WifiManager$SemWifiApSmartCallback;

    new-instance v0, Lcom/android/settings/wifi/WifiSettings$8;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiSettings$8;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialogListener:Lcom/android/settings/wifi/WifiDialog$WifiDialogListener;

    new-instance v0, Lcom/android/settings/wifi/WifiSettings$11;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiSettings$11;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiEnablerListener:Lcom/android/settings/wifi/WifiEnabler$IWifiEnablerListener;

    new-instance v0, Lcom/android/settings/wifi/WifiSettings$13;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiSettings$13;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mViListListener:Lcom/samsung/android/settings/wifi/ListAnimationController$OnEventListener;

    new-instance v0, Lcom/android/settings/wifi/WifiSettings$16;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/wifi/WifiSettings$16;-><init>(Lcom/android/settings/wifi/WifiSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSecureWifiObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/WifiSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->startWifiP2pSettings()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/WifiSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->startWifiConfigSettings()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings/wifi/WifiSettings;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->updateContentDescriptionForDirectMenu(Z)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/settings/wifi/WifiSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->checkManageRouterHttpResponse()V

    return-void
.end method

.method static synthetic access$1200()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/wifi/WifiSettings;->DBG:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/android/settings/wifi/WifiSettings;Lcom/samsung/android/settingslib/wifi/AccessPoint;)Lcom/android/settings/wifi/LongPressAccessPointPreference;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->createLongPressAccessPointPreference(Lcom/samsung/android/settingslib/wifi/AccessPoint;)Lcom/android/settings/wifi/LongPressAccessPointPreference;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/settings/wifi/WifiSettings;Lcom/samsung/android/settingslib/wifi/AccessPointPreference;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->launchSmartTetheringAp(Lcom/samsung/android/settingslib/wifi/AccessPointPreference;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/settings/wifi/WifiSettings;Landroid/support/v7/preference/Preference;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->launchPasspointDetailsFragment(Landroid/support/v7/preference/Preference;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/settings/wifi/WifiSettings;Landroid/content/Context;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->isWifiEulaAgreed(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/android/settings/wifi/WifiSettings;Landroid/content/Context;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->isSecureWifiInitializing(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/android/settings/wifi/WifiSettings;)Landroid/widget/Switch;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSecureWifiSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/settings/wifi/WifiSettings;Landroid/content/Context;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->isSecureWifiDisabled(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$202(Lcom/android/settings/wifi/WifiSettings;I)I
    .locals 0

    iput p1, p0, Lcom/android/settings/wifi/WifiSettings;->mSTConnectedApState:I

    return p1
.end method

.method static synthetic access$2100(Lcom/android/settings/wifi/WifiSettings;Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/WifiSettings;->setSecureWifiState(Landroid/content/Context;I)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/settings/wifi/WifiSettings;Landroid/content/Context;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->isSecureWifiEnabled(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Lcom/android/settings/wifi/WifiSettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mIsSprotectDownloadble:Z

    return v0
.end method

.method static synthetic access$2400(Lcom/android/settings/wifi/WifiSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->updateSecureWifiLayout()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/WifiSettings;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSTMHSMac:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/settings/wifi/WifiSettings;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mSTMHSMac:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/settings/wifi/WifiSettings;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->addsmartTetheringPreference()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/settings/wifi/WifiSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->disconnect()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/wifi/WifiSettings;Landroid/net/wifi/WifiConfiguration;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->saveConfig(Landroid/net/wifi/WifiConfiguration;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/wifi/WifiSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->showDialogForModify()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings/wifi/WifiSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->disable()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/settings/wifi/WifiSettings;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiDirect:Landroid/widget/TextView;

    return-object v0
.end method

.method private addBleAccessPointPref(Lcom/samsung/android/net/wifi/SemWifiApBleScanResult;)Lcom/android/settings/wifi/LongPressAccessPointPreference;
    .locals 8

    new-instance v7, Lcom/android/settings/wifi/LongPressAccessPointPreference;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mUserBadgeCache:Lcom/samsung/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;

    const/4 v1, 0x0

    const/4 v4, 0x0

    const v5, 0x7f0801bc

    move-object v0, v7

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/wifi/LongPressAccessPointPreference;-><init>(Lcom/samsung/android/settingslib/wifi/AccessPoint;Landroid/content/Context;Lcom/samsung/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;ZILandroid/app/Fragment;)V

    iget-object v1, p1, Lcom/samsung/android/net/wifi/SemWifiApBleScanResult;->mWifiMac:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/LongPressAccessPointPreference;->setKey(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/LongPressAccessPointPreference;->setSmartTethering(Z)V

    iget-object v1, p1, Lcom/samsung/android/net/wifi/SemWifiApBleScanResult;->mDevice:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/LongPressAccessPointPreference;->setBLEAddress(Ljava/lang/String;)V

    iget v1, p1, Lcom/samsung/android/net/wifi/SemWifiApBleScanResult;->mMHSdeviceType:I

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/LongPressAccessPointPreference;->setSmartTetheringUserType(I)V

    iget v1, p1, Lcom/samsung/android/net/wifi/SemWifiApBleScanResult;->mhidden:I

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/LongPressAccessPointPreference;->setHidden(I)V

    iget v1, p1, Lcom/samsung/android/net/wifi/SemWifiApBleScanResult;->mBLERssi:I

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/LongPressAccessPointPreference;->setBleRssi(I)V

    iget-object v1, p1, Lcom/samsung/android/net/wifi/SemWifiApBleScanResult;->mWifiMac:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/LongPressAccessPointPreference;->setHotspotAddress(Ljava/lang/String;)V

    iget v1, p1, Lcom/samsung/android/net/wifi/SemWifiApBleScanResult;->mBattery:I

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/LongPressAccessPointPreference;->setHotspotBattery(I)V

    iget-object v1, p1, Lcom/samsung/android/net/wifi/SemWifiApBleScanResult;->mSSID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/LongPressAccessPointPreference;->setHotspotSSID(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/samsung/android/net/wifi/SemWifiApBleScanResult;->mUserName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/LongPressAccessPointPreference;->setHotspotUserName(Ljava/lang/String;)V

    iget v1, p1, Lcom/samsung/android/net/wifi/SemWifiApBleScanResult;->mSecurity:I

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/LongPressAccessPointPreference;->setSTSecurity(I)V

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/LongPressAccessPointPreference;->setSmartTetheringTitle(Ljava/lang/String;)V

    return-object v0
.end method

.method private addConnectedAccessPointPreference(Lcom/samsung/android/settingslib/wifi/AccessPoint;)V
    .locals 8

    const-string v0, "WifiSettings"

    const-string v1, "addConnectedAccessPointPreference"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mConnectedAccessPointPreferenceGroup:Lcom/samsung/android/settingslib/wifi/AccessPointPreferenceGroup;

    const/4 v1, 0x0

    const v2, 0x7f121eaa

    invoke-direct {p0, v0, v2, v1}, Lcom/android/settings/wifi/WifiSettings;->addDeviceCategory(Lcom/samsung/android/settingslib/wifi/AccessPointPreferenceGroup;II)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getSecurity()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->isPasspoint()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->createLongPressAccessPointPreference(Lcom/samsung/android/settingslib/wifi/AccessPoint;)Lcom/android/settings/wifi/LongPressAccessPointPreference;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/settings/wifi/LongPressAccessPointPreference;->setKey(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lcom/android/settings/wifi/LongPressAccessPointPreference;->setOrder(I)V

    invoke-virtual {v2, v1}, Lcom/android/settings/wifi/LongPressAccessPointPreference;->setSelectable(Z)V

    sget-boolean v3, Lcom/android/settings/Utils;->SPF_SupportMobileApEnhanced:Z

    if-eqz v3, :cond_2

    const-wide/16 v3, 0x12c

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    const-string v4, "WifiSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error InterruptedException "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    :goto_0
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->checkWifiConnectivity()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v4

    :cond_0
    const-string v5, "WifiSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "BSSID from Info"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v4, :cond_1

    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5, v4}, Landroid/net/wifi/WifiManager;->getSmartApConnectedStatus(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/android/settings/wifi/WifiSettings;->mSTConnectedApState:I

    const-string v5, "WifiSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getSmartApConnectedStatus:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/android/settings/wifi/WifiSettings;->mSTConnectedApState:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget v5, p0, Lcom/android/settings/wifi/WifiSettings;->mSTConnectedApState:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_2

    const-string v5, "WifiSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "connectedAp.getSsidStr()"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/android/settings/wifi/LongPressAccessPointPreference;->setSmartTetheringConnectedApSummary(Ljava/lang/String;)V

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Lcom/android/settings/wifi/LongPressAccessPointPreference;->setSmartTetheringConnectedAp(Z)V

    :cond_2
    const-class v3, Lcom/android/settings/wifi/details/WifiNetworkDetailsFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/wifi/LongPressAccessPointPreference;->setFragment(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/settings/wifi/LongPressAccessPointPreference;->getAccessPoint()Lcom/samsung/android/settingslib/wifi/AccessPoint;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/settings/wifi/LongPressAccessPointPreference;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->saveWifiState(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getListAdapter()Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;->getConnectedAccesspointGroup()Lcom/samsung/android/settingslib/wifi/AccessPointPreferenceGroup;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getListAdapter()Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;->getConnectedAccesspointGroup()Lcom/samsung/android/settingslib/wifi/AccessPointPreferenceGroup;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settingslib/wifi/AccessPointPreferenceGroup;->removeAll()V

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getListAdapter()Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;->getConnectedAccesspointGroup()Lcom/samsung/android/settingslib/wifi/AccessPointPreferenceGroup;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Lcom/samsung/android/settingslib/wifi/AccessPointPreferenceGroup;->insert(Lcom/samsung/android/settingslib/wifi/AccessPointPreference;I)Z

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getListAdapter()Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;->getAvailableAccesspointGroup()Lcom/samsung/android/settingslib/wifi/AccessPointPreferenceGroup;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/samsung/android/settingslib/wifi/AccessPointPreferenceGroup;->getPreference(I)Lcom/samsung/android/settingslib/wifi/AccessPointPreference;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getListAdapter()Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;->getAvailableAccesspointGroup()Lcom/samsung/android/settingslib/wifi/AccessPointPreferenceGroup;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/samsung/android/settingslib/wifi/AccessPointPreferenceGroup;->getPreference(I)Lcom/samsung/android/settingslib/wifi/AccessPointPreference;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->getAccessPoint()Lcom/samsung/android/settingslib/wifi/AccessPoint;

    move-result-object v3

    if-eqz v3, :cond_3

    nop

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getListAdapter()Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;->getAvailableAccesspointGroup()Lcom/samsung/android/settingslib/wifi/AccessPointPreferenceGroup;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/samsung/android/settingslib/wifi/AccessPointPreferenceGroup;->getPreference(I)Lcom/samsung/android/settingslib/wifi/AccessPointPreference;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->getAccessPoint()Lcom/samsung/android/settingslib/wifi/AccessPoint;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->matches(Lcom/samsung/android/settingslib/wifi/AccessPoint;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getListAdapter()Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;->getAvailableAccesspointGroup()Lcom/samsung/android/settingslib/wifi/AccessPointPreferenceGroup;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/samsung/android/settingslib/wifi/AccessPointPreferenceGroup;->removeAt(I)V

    :cond_3
    return-void
.end method

.method private addDeviceCategory(Lcom/samsung/android/settingslib/wifi/AccessPointPreferenceGroup;II)V
    .locals 3

    const-string v0, "WifiSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addDeviceCategory "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Lcom/android/settings/wifi/WifiSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p2}, Lcom/android/settings/wifi/WifiSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/settingslib/wifi/AccessPointPreferenceGroup;->setTitle(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getListAdapter()Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;

    move-result-object v0

    invoke-virtual {v0, p3, p1}, Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;->addPreferenceGroup(ILcom/samsung/android/settingslib/wifi/AccessPointPreferenceGroup;)Z

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getListAdapter()Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;->setAcessPointListGroup(Lcom/samsung/android/settingslib/wifi/AccessPointPreferenceGroup;)V

    return-void
.end method

.method private addMessagePreference(I)V
    .locals 3

    const-string v0, "WifiSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addMessagePreference id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getEmptyTextView()Landroid/widget/TextView;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->mInManageNetwork:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/ListAnimationController;->getNoItemView()Landroid/widget/TextView;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    :cond_1
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/ListAnimationController;->removeAll()V

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/ListAnimationController;->updateEmptyView()V

    return-void
.end method

.method private addsmartTetheringPreference()Z
    .locals 21

    move-object/from16 v0, p0

    const-string v1, "WifiSettings"

    const-string v2, "addsmartTetheringPreference"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/settings/wifi/WifiSettings;->status:Z

    const v3, 0x7f121d4c

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanModel()Z

    move-result v4

    if-eqz v4, :cond_0

    const v3, 0x7f121d4d

    :cond_0
    iget-object v4, v0, Lcom/android/settings/wifi/WifiSettings;->mSmartTetheringPreferenceGroup:Lcom/samsung/android/settingslib/wifi/AccessPointPreferenceGroup;

    invoke-direct {v0, v4, v3, v2}, Lcom/android/settings/wifi/WifiSettings;->addDeviceCategory(Lcom/samsung/android/settingslib/wifi/AccessPointPreferenceGroup;II)V

    iget-object v4, v0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->semGetWifiApBleScanDetail()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_1

    const-string v5, "WifiSettings"

    const-string v6, "BLE scan result is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    const-string v5, "WifiSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "bleScanResult.size() :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->getListAdapter()Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;->getSmartTetheringPreferenceGroup()Lcom/samsung/android/settingslib/wifi/AccessPointPreferenceGroup;

    move-result-object v5

    if-eqz v5, :cond_2

    if-eqz v4, :cond_2

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "WifiSettings"

    const-string v6, "getListAdapter().getSmartTetheringPreferenceGroup() != null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->getListAdapter()Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;->getSmartTetheringPreferenceGroup()Lcom/samsung/android/settingslib/wifi/AccessPointPreferenceGroup;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/settingslib/wifi/AccessPointPreferenceGroup;->removeAll()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->getListAdapter()Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;->notifyDataSetChanged()V

    return v2

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->getListAdapter()Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;->getSmartTetheringPreferenceGroup()Lcom/samsung/android/settingslib/wifi/AccessPointPreferenceGroup;

    move-result-object v5

    if-nez v5, :cond_3

    if-eqz v4, :cond_3

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_3

    return v2

    :cond_3
    iget-object v5, v0, Lcom/android/settings/wifi/WifiSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "wifi"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v6

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v7

    if-eqz v6, :cond_4

    if-eqz v7, :cond_4

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v8

    sget-object v9, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v8, v9, :cond_4

    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v8}, Lcom/android/settings/wifi/WifiSettings;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_4
    const-string v8, "WifiSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mConnectedSSID"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {v0, v4, v1}, Lcom/android/settings/wifi/WifiSettings;->manageSmartTetheringApList(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->getListAdapter()Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;->getSmartTetheringPreferenceGroup()Lcom/samsung/android/settingslib/wifi/AccessPointPreferenceGroup;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->getListAdapter()Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;->getGroupPosition(Lcom/samsung/android/settingslib/wifi/AccessPointPreferenceGroup;)I

    move-result v9

    const-string v10, "WifiSettings"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "groupPosition count:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->getListAdapter()Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;->getChildrenCount(I)I

    move-result v10

    move v11, v10

    const-string v12, "WifiSettings"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Child count in addsmartTetheringPreference:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_d

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/samsung/android/net/wifi/SemWifiApBleScanResult;

    const/4 v15, 0x0

    move/from16 v16, v15

    move v15, v2

    :goto_1
    if-ge v15, v10, :cond_a

    invoke-virtual {v8, v15}, Lcom/samsung/android/settingslib/wifi/AccessPointPreferenceGroup;->getPreference(I)Lcom/samsung/android/settingslib/wifi/AccessPointPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->getHotspotAddress()Ljava/lang/String;

    move-result-object v14

    move/from16 v17, v3

    const-string v3, "WifiSettings"

    move-object/from16 v18, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v19, v5

    const-string v5, "prefs.getHotspotAddress():"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "res.mWifiMac:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v13, Lcom/samsung/android/net/wifi/SemWifiApBleScanResult;->mWifiMac:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, v13, Lcom/samsung/android/net/wifi/SemWifiApBleScanResult;->mWifiMac:Ljava/lang/String;

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {v2, v15}, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->setOrder(I)V

    iget-object v3, v13, Lcom/samsung/android/net/wifi/SemWifiApBleScanResult;->mWifiMac:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->setKey(Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->setSmartTethering(Z)V

    iget-object v3, v13, Lcom/samsung/android/net/wifi/SemWifiApBleScanResult;->mDevice:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->setBLEAddress(Ljava/lang/String;)V

    iget v3, v13, Lcom/samsung/android/net/wifi/SemWifiApBleScanResult;->mMHSdeviceType:I

    invoke-virtual {v2, v3}, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->setSmartTetheringUserType(I)V

    iget v3, v13, Lcom/samsung/android/net/wifi/SemWifiApBleScanResult;->mhidden:I

    invoke-virtual {v2, v3}, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->setHidden(I)V

    iget v3, v13, Lcom/samsung/android/net/wifi/SemWifiApBleScanResult;->mBLERssi:I

    invoke-virtual {v2, v3}, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->setBleRssi(I)V

    iget v3, v13, Lcom/samsung/android/net/wifi/SemWifiApBleScanResult;->mSecurity:I

    invoke-virtual {v2, v3}, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->setSTSecurity(I)V

    iget v3, v13, Lcom/samsung/android/net/wifi/SemWifiApBleScanResult;->mBattery:I

    invoke-virtual {v2, v3}, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->setHotspotBattery(I)V

    iget-object v3, v13, Lcom/samsung/android/net/wifi/SemWifiApBleScanResult;->mSSID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->setHotspotSSID(Ljava/lang/String;)V

    iget-object v3, v13, Lcom/samsung/android/net/wifi/SemWifiApBleScanResult;->mUserName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->setHotspotUserName(Ljava/lang/String;)V

    iget-object v3, v13, Lcom/samsung/android/net/wifi/SemWifiApBleScanResult;->mWifiMac:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->setHotspotAddress(Ljava/lang/String;)V

    const-string v3, ""

    const-string v4, "WifiSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v20, v3

    const-string v3, "res.mWifiMac "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v13, Lcom/samsung/android/net/wifi/SemWifiApBleScanResult;->mWifiMac:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, v0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v3, :cond_8

    iget-object v3, v13, Lcom/samsung/android/net/wifi/SemWifiApBleScanResult;->mWifiMac:Ljava/lang/String;

    if-eqz v3, :cond_8

    iget-object v3, v0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v4, v13, Lcom/samsung/android/net/wifi/SemWifiApBleScanResult;->mWifiMac:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiManager;->getSmartApConnectedStatusFromScanResult(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/android/settings/wifi/WifiSettings;->mSTConnectedApState:I

    const-string v3, "WifiSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "state getSmartApConnectedStatus"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/android/settings/wifi/WifiSettings;->mSTConnectedApState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "res.mWifiMac"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v13, Lcom/samsung/android/net/wifi/SemWifiApBleScanResult;->mWifiMac:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, v0, Lcom/android/settings/wifi/WifiSettings;->mSTConnectedApState:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_7

    iget v3, v0, Lcom/android/settings/wifi/WifiSettings;->mSTConnectedApState:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_5

    goto :goto_2

    :cond_5
    iget v3, v0, Lcom/android/settings/wifi/WifiSettings;->mSTConnectedApState:I

    if-gez v3, :cond_6

    const-string v3, "WifiSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed state"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/android/settings/wifi/WifiSettings;->mSTConnectedApState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f121885    # 1.941946E38f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    const/4 v3, 0x0

    goto :goto_3

    :cond_6
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->setSmartTetheringConnectedAp(Z)V

    move-object/from16 v4, v20

    goto :goto_3

    :cond_7
    :goto_2
    const/4 v3, 0x0

    const-string v4, "WifiSettings"

    const-string v5, "Connecting state"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f121884

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    :goto_3
    invoke-virtual {v2, v4}, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->setSmartTetheringTitle(Ljava/lang/String;)V

    iget v5, v0, Lcom/android/settings/wifi/WifiSettings;->mSTConnectedApState:I

    invoke-virtual {v2, v5}, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->setSmartTetheringConnState(I)V

    goto :goto_4

    :cond_8
    const/4 v3, 0x0

    move-object/from16 v4, v20

    :goto_4
    const/4 v4, 0x1

    move/from16 v16, v4

    goto :goto_5

    :cond_9
    const/4 v3, 0x0

    :goto_5
    add-int/lit8 v15, v15, 0x1

    move v2, v3

    move/from16 v3, v17

    move-object/from16 v4, v18

    move-object/from16 v5, v19

    goto/16 :goto_1

    :cond_a
    move/from16 v17, v3

    move-object/from16 v18, v4

    move-object/from16 v19, v5

    move v3, v2

    if-nez v16, :cond_c

    iget-object v2, v0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v2, :cond_c

    iget-object v2, v0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v4, v13, Lcom/samsung/android/net/wifi/SemWifiApBleScanResult;->mWifiMac:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/net/wifi/WifiManager;->getSmartApConnectedStatusFromScanResult(Ljava/lang/String;)I

    move-result v2

    const/4 v4, 0x3

    if-eq v2, v4, :cond_c

    if-eqz v1, :cond_b

    if-eqz v1, :cond_c

    iget-object v2, v13, Lcom/samsung/android/net/wifi/SemWifiApBleScanResult;->mSSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    :cond_b
    invoke-direct {v0, v13}, Lcom/android/settings/wifi/WifiSettings;->addBleAccessPointPref(Lcom/samsung/android/net/wifi/SemWifiApBleScanResult;)Lcom/android/settings/wifi/LongPressAccessPointPreference;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->getListAdapter()Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;->getSmartTetheringPreferenceGroup()Lcom/samsung/android/settingslib/wifi/AccessPointPreferenceGroup;

    move-result-object v4

    if-eqz v4, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->getListAdapter()Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;->getSmartTetheringPreferenceGroup()Lcom/samsung/android/settingslib/wifi/AccessPointPreferenceGroup;

    move-result-object v4

    add-int/lit8 v5, v11, 0x1

    invoke-virtual {v4, v2, v11}, Lcom/samsung/android/settingslib/wifi/AccessPointPreferenceGroup;->insert(Lcom/samsung/android/settingslib/wifi/AccessPointPreference;I)Z

    move v11, v5

    :cond_c
    move v2, v3

    move/from16 v3, v17

    move-object/from16 v4, v18

    move-object/from16 v5, v19

    goto/16 :goto_0

    :cond_d
    move/from16 v17, v3

    move-object/from16 v18, v4

    move-object/from16 v19, v5

    invoke-virtual {v8}, Lcom/samsung/android/settingslib/wifi/AccessPointPreferenceGroup;->getAccessPointList()Ljava/util/ArrayList;

    move-result-object v2

    new-instance v3, Lcom/android/settings/wifi/WifiSettings$SortList;

    invoke-direct {v3, v0}, Lcom/android/settings/wifi/WifiSettings$SortList;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;

    const-string v12, "WifiSettings"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "AccessPointPreference before sort. Username"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->getHotspotSSID()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "BLERSSI"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->getBleRssi()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_e
    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;

    const-string v12, "WifiSettings"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "AccessPointPreference after sort. Username"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->getHotspotSSID()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "BLERSSI"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->getBleRssi()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->getListAdapter()Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;->notifyDataSetChanged()V

    const/4 v4, 0x1

    return v4
.end method

.method private announceForAccessibility(I)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    const/16 v2, 0x4000

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_0
    return-void
.end method

.method private changeNextButtonState(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mEnableNextOnConnection:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->hasNextButton()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method private checkManageRouterHttpResponse()V
    .locals 6

    new-instance v0, Lcom/android/settings/wifi/details/CheckManageRouterTask;

    invoke-direct {v0}, Lcom/android/settings/wifi/details/CheckManageRouterTask;-><init>()V

    invoke-virtual {v0}, Lcom/android/settings/wifi/details/CheckManageRouterTask;->resetResponseCode()V

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "WifiSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dhcpInfo.gateway : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Landroid/net/DhcpInfo;->gateway:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, v1, Landroid/net/DhcpInfo;->gateway:I

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Landroid/net/DhcpInfo;->gateway:I

    invoke-static {v3}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WifiSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Go to Webpage: gateway addr: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    nop

    sget-object v3, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-virtual {v0, v3, v4}, Lcom/android/settings/wifi/details/CheckManageRouterTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

.method private checkWifiConnectivity()Z
    .locals 3

    nop

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    return v2

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private configureConnectedAccessPointPreferenceCategory(Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/settingslib/wifi/AccessPoint;",
            ">;)Z"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mInManageNetwork:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getListAdapter()Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;->removeAll()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->removeConnectedAccessPointPreference()V

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getListAdapter()Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;->getAvailableAccesspointGroup()Lcom/samsung/android/settingslib/wifi/AccessPointPreferenceGroup;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getListAdapter()Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;->getAvailableAccesspointGroup()Lcom/samsung/android/settingslib/wifi/AccessPointPreferenceGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/wifi/AccessPointPreferenceGroup;->removeAll()V

    :cond_1
    :goto_0
    return v1

    :cond_2
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->isConnected()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mConnectedAccessPointPreferenceGroup:Lcom/samsung/android/settingslib/wifi/AccessPointPreferenceGroup;

    if-eqz v2, :cond_3

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->removeConnectedAccessPointPreference()V

    return v1

    :cond_3
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mOpenSsid:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mOpenSsid:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getSecurity()I

    move-result v2

    iget v3, p0, Lcom/android/settings/wifi/WifiSettings;->mOpenSecurity:I

    if-ne v2, v3, :cond_4

    iget-boolean v2, p0, Lcom/android/settings/wifi/WifiSettings;->mInManageNetwork:Z

    if-nez v2, :cond_4

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->createLongPressAccessPointPreference(Lcom/samsung/android/settingslib/wifi/AccessPoint;)Lcom/android/settings/wifi/LongPressAccessPointPreference;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiSettings;->onAccessPointPreferenceClick(Landroid/support/v7/preference/Preference;)Z

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mOpenSsid:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->mGoToSettingsFromQuickPanelFirstTime:Z

    :cond_4
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

    invoke-virtual {v2}, Lcom/samsung/android/settings/wifi/ListAnimationController;->getConnectedAPCount()I

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_5

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->addConnectedAccessPointPreference(Lcom/samsung/android/settingslib/wifi/AccessPoint;)V

    return v3

    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getListAdapter()Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;->getConnectedAccesspointGroup()Lcom/samsung/android/settingslib/wifi/AccessPointPreferenceGroup;

    move-result-object v2

    if-nez v2, :cond_6

    return v1

    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getListAdapter()Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;->getConnectedAccesspointGroup()Lcom/samsung/android/settingslib/wifi/AccessPointPreferenceGroup;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/samsung/android/settingslib/wifi/AccessPointPreferenceGroup;->getPreference(I)Lcom/samsung/android/settingslib/wifi/AccessPointPreference;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->getAccessPoint()Lcom/samsung/android/settingslib/wifi/AccessPoint;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {v1}, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->getAccessPoint()Lcom/samsung/android/settingslib/wifi/AccessPoint;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getSecurity()I

    move-result v2

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getSecurity()I

    move-result v4

    if-ne v2, v4, :cond_7

    invoke-virtual {v1}, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->getAccessPoint()Lcom/samsung/android/settingslib/wifi/AccessPoint;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->isPasspoint()Z

    move-result v2

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->isPasspoint()Z

    move-result v4

    if-eq v2, v4, :cond_8

    :cond_7
    const-string v2, "WifiSettings"

    const-string v4, "remove and add connected accesspointpreference"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->removeConnectedAccessPointPreference()V

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->addConnectedAccessPointPreference(Lcom/samsung/android/settingslib/wifi/AccessPoint;)V

    return v3

    :cond_8
    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->getAccessPoint()Lcom/samsung/android/settingslib/wifi/AccessPoint;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->isWeChatAp()Z

    move-result v2

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->isWeChatAp()Z

    move-result v4

    if-eq v2, v4, :cond_9

    const-string v2, "WifiSettings"

    const-string v4, "remove and add connected wechat accesspointpreference"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->removeConnectedAccessPointPreference()V

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->addConnectedAccessPointPreference(Lcom/samsung/android/settingslib/wifi/AccessPoint;)V

    :cond_9
    if-eqz v1, :cond_a

    invoke-virtual {v1}, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->refresh()V

    :cond_a
    return v3
.end method

.method private createLongPressAccessPointPreference(Lcom/samsung/android/settingslib/wifi/AccessPoint;)Lcom/android/settings/wifi/LongPressAccessPointPreference;
    .locals 8

    new-instance v7, Lcom/android/settings/wifi/LongPressAccessPointPreference;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mUserBadgeCache:Lcom/samsung/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;

    const/4 v4, 0x0

    const v5, 0x7f0801b5

    move-object v0, v7

    move-object v1, p1

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/wifi/LongPressAccessPointPreference;-><init>(Lcom/samsung/android/settingslib/wifi/AccessPoint;Landroid/content/Context;Lcom/samsung/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;ZILandroid/app/Fragment;)V

    return-object v7
.end method

.method private createLongPressAccessPointPreference(Lcom/samsung/android/settingslib/wifi/AccessPoint;Landroid/content/Intent;)Lcom/android/settings/wifi/LongPressAccessPointPreference;
    .locals 9

    new-instance v8, Lcom/android/settings/wifi/LongPressAccessPointPreference;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mUserBadgeCache:Lcom/samsung/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;

    const/4 v4, 0x0

    const v6, 0x7f0801b5

    move-object v0, v8

    move-object v1, p1

    move-object v5, p2

    move-object v7, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/settings/wifi/LongPressAccessPointPreference;-><init>(Lcom/samsung/android/settingslib/wifi/AccessPoint;Landroid/content/Context;Lcom/samsung/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;ZLandroid/content/Intent;ILandroid/app/Fragment;)V

    return-object v8
.end method

.method private createWifiEnabler()Lcom/android/settings/wifi/WifiEnabler;
    .locals 5

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v1, v0, Lcom/android/settings/SettingsActivity;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/android/settings/SettingsActivity;

    new-instance v2, Lcom/android/settings/wifi/WifiEnabler;

    new-instance v3, Lcom/android/settings/widget/SwitchBarController;

    invoke-virtual {v1}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/settings/widget/SwitchBarController;-><init>(Lcom/android/settings/widget/SwitchBar;)V

    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    invoke-direct {v2, v1, v3, v4}, Lcom/android/settings/wifi/WifiEnabler;-><init>(Landroid/content/Context;Lcom/android/settings/widget/SwitchWidgetController;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;)V

    return-object v2

    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private createWifiEnabler(Landroid/widget/Switch;Landroid/widget/TextView;)Lcom/android/settings/wifi/WifiEnabler;
    .locals 2

    if-nez p1, :cond_0

    const-string v0, "WifiSettings"

    const-string v1, "external switch is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Lcom/android/settings/wifi/WifiEnabler;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lcom/android/settings/wifi/WifiEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;Landroid/widget/TextView;)V

    return-object v0
.end method

.method private disable()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "WifiSettings"

    const-string v1, "disconnecting AP..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    iget v1, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->disableNetwork(I)Z

    :cond_0
    return-void
.end method

.method private disconnect()V
    .locals 2

    const-string v0, "WifiSettings"

    const-string v1, "disconnect"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->disconnect()Z

    return-void
.end method

.method private dismissDialog(I)V
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->isWifiQr:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v1

    if-ne v1, v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiDialog;->dismiss()V

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->removeDialog(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    :cond_2
    :goto_0
    return-void
.end method

.method private findAccessPoint(Landroid/net/wifi/WifiConfiguration;)Lcom/samsung/android/settingslib/wifi/AccessPoint;
    .locals 4

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiTracker:Lcom/samsung/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/wifi/WifiTracker;->getAccessPoints()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v2, p1}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->matches(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    goto :goto_0

    :cond_1
    const-string v1, "WifiSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can\'t find configured AP, networkId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return-object v1
.end method

.method private forceScrollToTopOfList()V
    .locals 4

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/settings/wifi/WifiSettings;->mScrollTimer:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x5dc

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    sget-boolean v0, Lcom/android/settings/wifi/WifiSettings;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "WifiSettings"

    const-string v1, "scroll end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/settings/wifi/WifiSettings;->mScrollTimer:J

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getViListView()Landroid/widget/SemExpandableListView;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getViListView()Landroid/widget/SemExpandableListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SemExpandableListView;->getCount()I

    move-result v0

    if-lez v0, :cond_3

    sget-boolean v0, Lcom/android/settings/wifi/WifiSettings;->DBG:Z

    if-eqz v0, :cond_2

    const-string v0, "WifiSettings"

    const-string v1, "force scroll up"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getViListView()Landroid/widget/SemExpandableListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SemExpandableListView;->setSelection(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method private forceUpdateAPs(Z)V
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->setProgressBarVisible(Z)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiTracker:Lcom/samsung/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/wifi/WifiTracker;->forceUpdate()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiTracker:Lcom/samsung/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/wifi/WifiTracker;->forceUpdateAsync()V

    :goto_0
    sget-boolean v0, Lcom/android/settings/wifi/WifiSettings;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "WifiSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WifiSettings force update APs: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiTracker:Lcom/samsung/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v2}, Lcom/samsung/android/settingslib/wifi/WifiTracker;->getAccessPoints()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private getSamsungAccountCount()I
    .locals 3

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mContext:Landroid/content/Context;

    const-string v1, "account"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/AccountManager;

    const-string v1, "com.osp.app.signin"

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    array-length v2, v1

    return v2
.end method

.method private getSecureWifiState(Landroid/content/Context;)I
    .locals 3

    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mIsSprotectDownloadble:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "covert_on"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "covert_on"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getWifiConfigFromIntent(Landroid/content/Intent;)Landroid/net/wifi/WifiConfiguration;
    .locals 10

    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    const-string v1, "AUTH_TYPE"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "SSID"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "PASSWORD"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "HIDDEN"

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    const/4 v6, 0x1

    const/16 v7, 0x22

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    const/4 v5, 0x0

    return-object v5

    :pswitch_1
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v6, 0x16

    invoke-virtual {v5, v6}, Ljava/util/BitSet;->set(I)V

    if-eqz v3, :cond_5

    const-string v5, "[0-9A-Fa-f]{64}"

    invoke-virtual {v3, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    iput-object v3, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto/16 :goto_1

    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/String;->clear()V

    invoke-virtual {v5}, Ljava/lang/String;->clear()V

    iput-object v6, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto/16 :goto_1

    :pswitch_2
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Ljava/util/BitSet;->set(I)V

    if-eqz v3, :cond_5

    const-string v5, "[0-9A-Fa-f]{64}"

    invoke-virtual {v3, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    iput-object v3, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto/16 :goto_1

    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/String;->clear()V

    invoke-virtual {v5}, Ljava/lang/String;->clear()V

    iput-object v6, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto/16 :goto_1

    :pswitch_3
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v5, v6}, Ljava/util/BitSet;->set(I)V

    if-eqz v3, :cond_5

    const-string v5, "[0-9A-Fa-f]{64}"

    invoke-virtual {v3, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    iput-object v3, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto/16 :goto_1

    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/String;->clear()V

    invoke-virtual {v5}, Ljava/lang/String;->clear()V

    iput-object v6, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_1

    :pswitch_4
    iget-object v8, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v8, v5}, Ljava/util/BitSet;->set(I)V

    iget-object v8, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v8, v5}, Ljava/util/BitSet;->set(I)V

    iget-object v8, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v8, v6}, Ljava/util/BitSet;->set(I)V

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v8, 0xa

    if-eq v6, v8, :cond_3

    const/16 v8, 0x1a

    if-eq v6, v8, :cond_3

    const/16 v8, 0x3a

    if-ne v6, v8, :cond_4

    :cond_3
    const-string v8, "[0-9A-Fa-f]*"

    invoke-virtual {v3, v8}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    iget-object v7, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aput-object v3, v7, v5

    goto :goto_0

    :cond_4
    iget-object v8, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v8, v5

    :goto_0
    goto :goto_1

    :pswitch_5
    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v6, v5}, Ljava/util/BitSet;->set(I)V

    nop

    :cond_5
    :goto_1
    iput-boolean v4, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    const-string v5, "WifiSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getWifiConfigFromIntent return config : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private initSecureWifiLayout(Landroid/content/Context;)V
    .locals 12

    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mIsSupportSSecure:Z

    const v1, 0x7f0a06e7

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isAfwProfile(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mLinearLayoutSecureWifi:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mLinearLayoutSecureWifi:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mLinearLayoutSecureWifi:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getView()Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0a06e8

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mTextViewSecureWifiStatus:Landroid/widget/TextView;

    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.samsung.android.app.sprotect"

    const-string v4, "com.samsung.android.app.sprotect.securewifi.SecureWifiDescriptionActivity"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const v2, 0x10008000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mLinearLayoutSecureWifi:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mLinearLayoutSecureWifi:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/android/settings/wifi/WifiSettings$14;

    invoke-direct {v3, p0, p1, v0}, Lcom/android/settings/wifi/WifiSettings$14;-><init>(Lcom/android/settings/wifi/WifiSettings;Landroid/content/Context;Landroid/content/Intent;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0a06ea

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSecureWifiSwitchView:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSecureWifiSwitchView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.samsung.android.app.sprotect.ENABLE_SECURE_WIFI"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.samsung.android.app.sprotect.DISABLE_SECURE_WIFI"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v9, v3

    const/high16 v3, 0x10800000

    invoke-virtual {v9, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.samsung.android.app.sprotect"

    const-string v5, "com.samsung.android.app.sprotect.securewifi.EulaActivity"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getView()Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0a06e9

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Switch;

    iput-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mSecureWifiSwitch:Landroid/widget/Switch;

    iget-object v10, p0, Lcom/android/settings/wifi/WifiSettings;->mSecureWifiSwitch:Landroid/widget/Switch;

    new-instance v11, Lcom/android/settings/wifi/WifiSettings$15;

    move-object v3, v11

    move-object v4, p0

    move-object v5, p1

    move-object v6, v9

    move-object v7, v1

    move-object v8, v2

    invoke-direct/range {v3 .. v8}, Lcom/android/settings/wifi/WifiSettings$15;-><init>(Lcom/android/settings/wifi/WifiSettings;Landroid/content/Context;Landroid/content/Intent;Landroid/content/Intent;Landroid/content/Intent;)V

    invoke-virtual {v10, v11}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->updateSecureWifiLayout()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mLinearLayoutSecureWifi:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mLinearLayoutSecureWifi:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mLinearLayoutSecureWifi:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method private insertLogging(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;)V

    return-void
.end method

.method private insertLogging(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private isCoreanVendorAp(Lcom/samsung/android/settingslib/wifi/AccessPoint;)Z
    .locals 8

    invoke-virtual {p1}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getSsid()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_2

    invoke-direct {p0, v2}, Lcom/android/settings/wifi/WifiSettings;->isVendorSsid(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_1

    sget-object v5, Lcom/android/settings/wifi/WifiSettings;->mOpBranding:Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;

    invoke-virtual {v5}, Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;->getCountry()I

    move-result v5

    if-ne v5, v6, :cond_1

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->isUsimUseable()Z

    move-result v5

    if-nez v5, :cond_2

    return v6

    :cond_1
    const-string v5, "UPC Wi-Free"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    sget-object v5, Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;->ATO:Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;

    sget-object v7, Lcom/android/settings/wifi/WifiSettings;->mOpBranding:Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;

    if-ne v5, v7, :cond_2

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->isUsimUseable()Z

    move-result v5

    if-nez v5, :cond_2

    return v6

    :cond_2
    return v1
.end method

.method public static isEnabledUltraPowerSaving(Landroid/content/Context;)Z
    .locals 3

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_SAFETYCARE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v2, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_ULTRA_POWER_SAVING"

    invoke-virtual {v0, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v2, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_BATTERY_CONVERSING"

    invoke-virtual {v0, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    invoke-static {p0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/emergencymode/SemEmergencyManager;

    move-result-object v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    invoke-virtual {v0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode()Z

    move-result v1

    return v1
.end method

.method private isSecureWifiDisabled(Landroid/content/Context;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->getSecureWifiState(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isSecureWifiEnabled(Landroid/content/Context;)Z
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->getSecureWifiState(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isSecureWifiInitializing(Landroid/content/Context;)Z
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->getSecureWifiState(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isShowRetryDialog()Z
    .locals 4

    invoke-static {}, Lcom/android/settings/wifi/details/TempWifiConfiguration;->getInstance()Lcom/android/settings/wifi/details/TempWifiConfiguration;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "WifiSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isShowRetryDialog : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/settings/wifi/details/TempWifiConfiguration;->isShowRetryDialog()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/android/settings/wifi/details/TempWifiConfiguration;->isShowRetryDialog()Z

    move-result v1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private isUsimUseable()Z
    .locals 7

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    sget-object v5, Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;->ATO:Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;

    sget-object v6, Lcom/android/settings/wifi/WifiSettings;->mOpBranding:Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;

    if-ne v5, v6, :cond_2

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    const-string v6, "20601"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v3, "WifiSettings"

    const-string v6, "ATO_USIM this mccmnc is not allowed"

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_1
    return v3

    :cond_2
    const/4 v5, 0x5

    if-eq v1, v5, :cond_3

    if-nez v2, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v5, 0x7f121e85

    invoke-static {v3, v5, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    return v4

    :cond_3
    sget-object v5, Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;->SKT:Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;

    sget-object v6, Lcom/android/settings/wifi/WifiSettings;->mOpBranding:Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;

    if-ne v5, v6, :cond_5

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    const-string v6, "45005"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string v6, "45000"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v6, 0x7f121e87

    invoke-static {v3, v6, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    return v4

    :cond_4
    goto :goto_1

    :cond_5
    sget-object v5, Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;->KTT:Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;

    sget-object v6, Lcom/android/settings/wifi/WifiSettings;->mOpBranding:Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;

    if-ne v5, v6, :cond_6

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_6

    const-string v6, "45008"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_6

    const-string v6, "45002"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_6

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v6, 0x7f121e50

    invoke-static {v3, v6, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    return v4

    :cond_6
    :goto_1
    return v3
.end method

.method private isVendorSsid(Ljava/lang/String;)Z
    .locals 6

    sget-object v0, Lcom/android/settings/Utils;->CONFIG_VENDOR_SSID_LIST:Ljava/lang/String;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method private isWifiEulaAgreed(Landroid/content/Context;)Z
    .locals 4

    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mIsSprotectDownloadble:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "wifi_eula_agreement"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v2, v0, :cond_0

    move v1, v2

    nop

    :cond_0
    return v1

    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "wifi_eula_agreement"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v2, v0, :cond_2

    move v1, v2

    nop

    :cond_2
    return v1
.end method

.method public static synthetic lambda$new$0(Lcom/android/settings/wifi/WifiSettings;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->setProgressBarVisible(Z)V

    return-void
.end method

.method private launchAddNetworkFragment()V
    .locals 3

    const-string v0, "WifiSettings"

    const-string v1, "launchAddNetworkFragment"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.Settings$WifiAddNetworkActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x14000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private launchManageNetworkFragment(Lcom/samsung/android/settingslib/wifi/AccessPoint;)V
    .locals 4

    const-string v0, "WifiSettings"

    const-string v1, "launchManageNetworkFragment"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p1, v0}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->saveWifiState(Landroid/os/Bundle;)V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.Settings$WifiManageNetworkActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x14000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v2, "AcessPoint_SavedState"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private launchNetworkConnectFragment(Lcom/samsung/android/settingslib/wifi/AccessPoint;)V
    .locals 4

    const-string v0, "WifiSettings"

    const-string v1, "launchNetworkConnectFragment"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p1, v0}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->saveWifiState(Landroid/os/Bundle;)V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.Settings$WifiNetworkConnectActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x14000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v2, "AcessPoint_SavedState"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private launchNetworkDetailsFragment(Lcom/samsung/android/settingslib/wifi/AccessPoint;)V
    .locals 5

    const-string v0, "WifiSettings"

    const-string v1, "launchNetworkDetailsFragment"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/settings/wifi/WifiUtils;->isNetworkLockedDown(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->isActive()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settingslib/RestrictedLockUtils;->getDeviceOwner(Landroid/content/Context;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    return-void

    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p1, v1}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->saveWifiState(Landroid/os/Bundle;)V

    const-string v2, "manage_network"

    iget-boolean v3, p0, Lcom/android/settings/wifi/WifiSettings;->mInManageNetwork:Z

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.android.settings"

    const-string v4, "com.android.settings.Settings$WifiNetworkDetailsActivity"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v3, 0x14000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v3, "AcessPoint_SavedState"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private launchPasspointDetailsFragment(Landroid/support/v7/preference/Preference;)V
    .locals 7

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mLoggingScreenId:Ljava/lang/String;

    const v1, 0x7f12092c

    invoke-direct {p0, v0, v1}, Lcom/android/settings/wifi/WifiSettings;->insertLogging(Ljava/lang/String;I)V

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mPasspointInfoMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/hotspot2/PasspointConfiguration;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedPasspointConfig:Landroid/net/wifi/hotspot2/PasspointConfiguration;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedPasspointConfig:Landroid/net/wifi/hotspot2/PasspointConfiguration;

    if-nez v1, :cond_0

    const-string v1, "WifiSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no matched any passpoint : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v1, Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedPasspointConfig:Landroid/net/wifi/hotspot2/PasspointConfiguration;

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/settingslib/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/net/wifi/hotspot2/PasspointConfiguration;)V

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v1, v3}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->saveWifiState(Landroid/os/Bundle;)V

    const-string/jumbo v4, "title"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-string v5, "com.android.settings"

    const-string v6, "com.android.settings.Settings$WifiNetworkDetailsActivity"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v5, 0x14000000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v5, "AcessPoint_SavedState"

    invoke-virtual {v4, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private launchSmartTetheringAp(Lcom/samsung/android/settingslib/wifi/AccessPointPreference;)V
    .locals 16

    move-object/from16 v0, p0

    const-string v1, "WifiSettings"

    const-string v2, "launchSmartTetheringAp"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->getBLEAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->getSmartTetheringUserType()I

    move-result v10

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->getHidden()I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->getSTSecurity()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->getHotspotBattery()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->getSmartTetheringConnState()I

    move-result v14

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->getHotspotUserName()Ljava/lang/String;

    move-result-object v15

    const/16 v3, 0xf

    if-le v13, v3, :cond_1

    const/4 v3, -0x1

    if-le v14, v3, :cond_1

    iget-object v3, v0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object v4, v1

    move v5, v10

    move v6, v11

    move v7, v12

    move-object v8, v2

    move-object v9, v15

    invoke-virtual/range {v3 .. v9}, Landroid/net/wifi/WifiManager;->connectToSmartMHS(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    iput v3, v0, Lcom/android/settings/wifi/WifiSettings;->mSTConnectedApState:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f121884

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v4, p1

    invoke-virtual {v4, v3}, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->setSmartTetheringTitle(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object/from16 v4, p1

    const/4 v3, -0x8

    iput v3, v0, Lcom/android/settings/wifi/WifiSettings;->mSTConnectedApState:I

    :goto_0
    const-string v3, "WifiSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MHC_MAC"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "Connection status"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Lcom/android/settings/wifi/WifiSettings;->mSTConnectedApState:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    move-object/from16 v4, p1

    :goto_1
    return-void
.end method

.method private manageSmartTetheringApList(Ljava/util/List;Ljava/lang/String;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/net/wifi/SemWifiApBleScanResult;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->getListAdapter()Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;->getSmartTetheringPreferenceGroup()Lcom/samsung/android/settingslib/wifi/AccessPointPreferenceGroup;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->getListAdapter()Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;->getGroupPosition(Lcom/samsung/android/settingslib/wifi/AccessPointPreferenceGroup;)I

    move-result v4

    const-string v5, "WifiSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Group Positition"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->getListAdapter()Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;->getChildrenCount(I)I

    move-result v5

    const-string v6, "WifiSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "child count"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v5

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    if-eqz v5, :cond_5

    const/4 v9, 0x0

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v5, :cond_5

    invoke-virtual {v0, v9}, Lcom/samsung/android/settingslib/wifi/AccessPointPreferenceGroup;->getPreference(I)Lcom/samsung/android/settingslib/wifi/AccessPointPreference;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10}, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->getHotspotAddress()Ljava/lang/String;

    move-result-object v12

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v13

    const/4 v14, 0x0

    :goto_1
    if-ge v14, v13, :cond_1

    const-string v15, "WifiSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v17, v4

    const-string v4, "res.mWifiMac:"

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/net/wifi/SemWifiApBleScanResult;

    iget-object v4, v4, Lcom/samsung/android/net/wifi/SemWifiApBleScanResult;->mWifiMac:Ljava/lang/String;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "mMHSMAC :"

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v15, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v2, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/net/wifi/SemWifiApBleScanResult;

    iget-object v4, v4, Lcom/samsung/android/net/wifi/SemWifiApBleScanResult;->mWifiMac:Ljava/lang/String;

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v11, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v14, v14, 0x1

    move/from16 v4, v17

    goto :goto_1

    :cond_1
    move/from16 v17, v4

    :goto_2
    const-string v4, "WifiSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "found"

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v15, "mMHSMAC"

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "WifiSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "prefs.getHotspotSSID()"

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->getHotspotSSID()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v11, :cond_2

    const-string v4, "WifiSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Not found in ble scan mMHSMAC"

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_2
    if-eqz v11, :cond_3

    iget-object v4, v1, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v4, :cond_3

    iget-object v4, v1, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4, v12}, Landroid/net/wifi/WifiManager;->getSmartApConnectedStatusFromScanResult(Ljava/lang/String;)I

    move-result v4

    const/4 v8, 0x3

    if-ne v4, v8, :cond_3

    const-string v4, "WifiSettings"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Remove mMHSMAC"

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "WifiSettings"

    const-string v8, "Connected state"

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x3

    iput v4, v1, Lcom/android/settings/wifi/WifiSettings;->mSTConnectedApState:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_3
    if-eqz v11, :cond_4

    if-eqz v3, :cond_4

    invoke-virtual {v10}, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->getHotspotSSID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "WifiSettings"

    const-string v8, "Connected state"

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_3
    add-int/lit8 v9, v9, 0x1

    move/from16 v4, v17

    goto/16 :goto_0

    :cond_5
    move/from16 v17, v4

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/16 v16, 0x0

    :goto_4
    move/from16 v8, v16

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_6

    const-string v9, "WifiSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "remove from the Preference:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v0, v9}, Lcom/samsung/android/settingslib/wifi/AccessPointPreferenceGroup;->getPreference(I)Lcom/samsung/android/settingslib/wifi/AccessPointPreference;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/samsung/android/settingslib/wifi/AccessPointPreferenceGroup;->remove(Lcom/samsung/android/settingslib/wifi/AccessPointPreference;)V

    add-int/lit8 v16, v8, 0x1

    goto :goto_4

    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->getListAdapter()Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    const-string v4, "WifiSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception occured"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    return-void
.end method

.method private popOrFinishThisActivity()V
    .locals 1

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStack()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method

.method private removeConnectedAccessPointPreference()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getListAdapter()Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;->getConnectedAccesspointGroup()Lcom/samsung/android/settingslib/wifi/AccessPointPreferenceGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getListAdapter()Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;->getConnectedAccesspointGroup()Lcom/samsung/android/settingslib/wifi/AccessPointPreferenceGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/wifi/AccessPointPreferenceGroup;->removeAll()V

    :cond_0
    return-void
.end method

.method private removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    if-nez p1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x22

    if-ne v2, v3, :cond_1

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_1

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_1
    return-object p1
.end method

.method private removeSmartTetheringPreference()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getListAdapter()Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;->getSmartTetheringPreferenceGroup()Lcom/samsung/android/settingslib/wifi/AccessPointPreferenceGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getListAdapter()Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;->getSmartTetheringPreferenceGroup()Lcom/samsung/android/settingslib/wifi/AccessPointPreferenceGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/wifi/AccessPointPreferenceGroup;->removeAll()V

    :cond_0
    return-void
.end method

.method private restrictUi()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->isUiRestrictedByOnlyAdmin()Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f121e16

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->addMessagePreference(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/ListAnimationController;->removeAll()V

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->onDataSetChanged()V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->isUiRestrictedByOnlyAdmin()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/ListAnimationController;->updateEmptyView(Z)V

    return-void
.end method

.method private saveConfig(Landroid/net/wifi/WifiConfiguration;)V
    .locals 3

    const-string v0, "WifiSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveConfig - networkId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " key:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v0, p1, v1}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    return-void
.end method

.method private setDescriptionAppearance(Landroid/widget/TextView;Z)V
    .locals 2

    if-eqz p1, :cond_0

    const v0, 0x800033

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextAlignment(I)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f130376

    invoke-virtual {p1, v0, v1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06019b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setLinkTextColor(I)V

    :cond_0
    return-void
.end method

.method private setOffMessage()V
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->setProgressBarVisible(Z)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getEmptyTextView()Landroid/widget/TextView;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const v2, 0x7f121e17

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    const/high16 v2, 0x40800000    # 4.0f

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v0, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v0, v2}, Landroid/widget/TextView;->setLineSpacing(FF)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/ListAnimationController;->removeAll()V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/ListAnimationController;->updateEmptyView()V

    return-void
.end method

.method private setPasspointPreferenceCategory()Z
    .locals 13

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mPassPointPreferenceGroup:Lcom/samsung/android/settingslib/wifi/AccessPointPreferenceGroup;

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mPassPointPreferenceGroup:Lcom/samsung/android/settingslib/wifi/AccessPointPreferenceGroup;

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/wifi/AccessPointPreferenceGroup;->removeAll()V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mPassPointPreferenceGroup:Lcom/samsung/android/settingslib/wifi/AccessPointPreferenceGroup;

    const v2, 0x7f121eab

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getListAdapter()Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;->getGroupCount()I

    move-result v3

    invoke-direct {p0, v0, v2, v3}, Lcom/android/settings/wifi/WifiSettings;->addDeviceCategory(Lcom/samsung/android/settingslib/wifi/AccessPointPreferenceGroup;II)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mPasspointInfoMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :try_start_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getPasspointConfigurations()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mPasspointConfigList:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mPasspointConfigList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-boolean v2, p0, Lcom/android/settings/wifi/WifiSettings;->mInManageNetwork:Z

    if-eqz v2, :cond_6

    if-lez v0, :cond_6

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mPasspointConfigList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/hotspot2/PasspointConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getHomeSp()Landroid/net/wifi/hotspot2/pps/HomeSp;

    move-result-object v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v3}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getHomeSp()Landroid/net/wifi/hotspot2/pps/HomeSp;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/hotspot2/pps/HomeSp;->getFqdn()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getHomeSp()Landroid/net/wifi/hotspot2/pps/HomeSp;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/wifi/hotspot2/pps/HomeSp;->getFriendlyName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_1

    :cond_1
    const-string v6, "Vendor Hotspot2.0 Profile"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/android/settings/wifi/WifiSettings;->mPasspointInfoMap:Ljava/util/HashMap;

    invoke-virtual {v6, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Lcom/android/settings/wifi/LongPressAccessPointPreference;

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/wifi/WifiSettings;->mUserBadgeCache:Lcom/samsung/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;

    const/4 v11, 0x1

    move-object v7, v6

    move-object v12, p0

    invoke-direct/range {v7 .. v12}, Lcom/android/settings/wifi/LongPressAccessPointPreference;-><init>(Lcom/samsung/android/settingslib/wifi/AccessPoint;Landroid/content/Context;Lcom/samsung/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;ZLandroid/app/Fragment;)V

    invoke-virtual {v6, v2}, Lcom/android/settings/wifi/LongPressAccessPointPreference;->setOrder(I)V

    const-string v7, "WifiSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "passpoint FriendlyName"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v6, v5}, Lcom/android/settings/wifi/LongPressAccessPointPreference;->setPasspointTitle(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Lcom/android/settings/wifi/LongPressAccessPointPreference;->setKey(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getListAdapter()Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;->getPasspointPreferenceGroup()Lcom/samsung/android/settingslib/wifi/AccessPointPreferenceGroup;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getListAdapter()Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;->getPasspointPreferenceGroup()Lcom/samsung/android/settingslib/wifi/AccessPointPreferenceGroup;

    move-result-object v7

    invoke-virtual {v7, v6, v2}, Lcom/samsung/android/settingslib/wifi/AccessPointPreferenceGroup;->insert(Lcom/samsung/android/settingslib/wifi/AccessPointPreference;I)Z

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getListAdapter()Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;->notifyDataSetChanged()V

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mPasspointInfoMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-gtz v2, :cond_5

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getListAdapter()Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;->getPasspointPreferenceGroup()Lcom/samsung/android/settingslib/wifi/AccessPointPreferenceGroup;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getListAdapter()Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;->getPasspointPreferenceGroup()Lcom/samsung/android/settingslib/wifi/AccessPointPreferenceGroup;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settingslib/wifi/AccessPointPreferenceGroup;->removeAll()V

    :cond_4
    return v1

    :cond_5
    const/4 v1, 0x1

    return v1

    :cond_6
    return v1

    :catch_0
    move-exception v0

    const-string v2, "WifiSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Caught exception while setPasspointPreferenceCategory: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_7
    return v1
.end method

.method private setSecureWifiState(Landroid/content/Context;I)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mIsSprotectDownloadble:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "covert_on"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "covert_on"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_0
    return-void
.end method

.method private setShowRetryDialog(Z)V
    .locals 4

    invoke-static {}, Lcom/android/settings/wifi/details/TempWifiConfiguration;->getInstance()Lcom/android/settings/wifi/details/TempWifiConfiguration;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "WifiSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setShowRetryDialog : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, p1}, Lcom/android/settings/wifi/details/TempWifiConfiguration;->setShowRetryDialog(Z)V

    :cond_0
    return-void
.end method

.method private setTwSummaryColorToColorPrimaryDark(Landroid/content/Context;Z)V
    .locals 3

    if-eqz p2, :cond_0

    const v0, 0x1010434

    :goto_0
    invoke-static {p1, v0}, Lcom/android/settings/Utils;->resolveResource(Landroid/content/Context;I)I

    move-result v0

    goto :goto_1

    :cond_0
    const v0, 0x1010038

    goto :goto_0

    :goto_1
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mTextViewSecureWifiStatus:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method private setupActionBarMenus()V
    .locals 13

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    instance-of v2, v0, Landroid/support/v7/app/AppCompatActivity;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {v2}, Landroid/support/v7/app/AppCompatActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    :cond_0
    if-eqz v1, :cond_c

    iget-boolean v2, p0, Lcom/android/settings/wifi/WifiSettings;->mHideActionBar:Z

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Landroid/support/v7/app/ActionBar;->hide()V

    return-void

    :cond_1
    const v2, 0x7f121eee

    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    iget-boolean v3, p0, Lcom/android/settings/wifi/WifiSettings;->mHideActionBarMenus:Z

    if-nez v3, :cond_b

    new-instance v3, Landroid/support/v7/app/ActionBar$LayoutParams;

    const v4, 0x800015

    const/4 v5, -0x2

    invoke-direct {v3, v5, v5, v4}, Landroid/support/v7/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f0d02c2

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f0a0957

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiDirect:Landroid/widget/TextView;

    const v6, 0x7f0a0920

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiAdvanced:Landroid/widget/TextView;

    iget-boolean v6, p0, Lcom/android/settings/wifi/WifiSettings;->mIsSupportedContactUs:Z

    if-eqz v6, :cond_2

    const-string v6, "WifiSettings"

    const-string v7, "hide advanced menu on actionbar"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiAdvanced:Landroid/widget/TextView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    invoke-virtual {v1}, Landroid/support/v7/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {v1}, Landroid/support/v7/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_4

    :cond_3
    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    invoke-virtual {v1, v4, v3}, Landroid/support/v7/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/support/v7/app/ActionBar$LayoutParams;)V

    :cond_4
    new-instance v5, Landroid/util/TypedValue;

    invoke-direct {v5}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {v0}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    const v7, 0x111008d

    invoke-virtual {v6, v7, v5, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    const/high16 v6, 0x41700000    # 15.0f

    const v7, 0x3f99999a    # 1.2f

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v8, v8, Landroid/content/res/Configuration;->fontScale:F

    cmpl-float v9, v8, v7

    if-lez v9, :cond_5

    move v8, v7

    :cond_5
    iget v9, v5, Landroid/util/TypedValue;->data:I

    const/4 v10, 0x0

    if-eqz v9, :cond_6

    move v9, v2

    goto :goto_0

    :cond_6
    move v9, v10

    :goto_0
    iget-object v11, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiDirect:Landroid/widget/TextView;

    if-eqz v11, :cond_8

    iget-object v11, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiDirect:Landroid/widget/TextView;

    mul-float v12, v6, v8

    invoke-virtual {v11, v2, v12}, Landroid/widget/TextView;->setTextSize(IF)V

    if-eqz v9, :cond_7

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v12, "show_button_background"

    invoke-static {v11, v12, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-ne v11, v2, :cond_7

    iget-object v11, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiDirect:Landroid/widget/TextView;

    invoke-virtual {v11, v2}, Landroid/widget/TextView;->semSetButtonShapeEnabled(Z)V

    :cond_7
    invoke-direct {p0, v10}, Lcom/android/settings/wifi/WifiSettings;->updateContentDescriptionForDirectMenu(Z)V

    iget-object v11, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiDirect:Landroid/widget/TextView;

    new-instance v12, Lcom/android/settings/wifi/WifiSettings$4;

    invoke-direct {v12, p0}, Lcom/android/settings/wifi/WifiSettings$4;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_8
    iget-object v11, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiAdvanced:Landroid/widget/TextView;

    if-eqz v11, :cond_a

    iget-object v11, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiAdvanced:Landroid/widget/TextView;

    mul-float v12, v6, v8

    invoke-virtual {v11, v2, v12}, Landroid/widget/TextView;->setTextSize(IF)V

    if-eqz v9, :cond_9

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v12, "show_button_background"

    invoke-static {v11, v12, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-ne v11, v2, :cond_9

    iget-object v11, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiAdvanced:Landroid/widget/TextView;

    invoke-virtual {v11, v2}, Landroid/widget/TextView;->semSetButtonShapeEnabled(Z)V

    :cond_9
    invoke-direct {p0, v10}, Lcom/android/settings/wifi/WifiSettings;->updateContentDescriptionForAdvancedMenu(Z)V

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiAdvanced:Landroid/widget/TextView;

    new-instance v10, Lcom/android/settings/wifi/WifiSettings$5;

    invoke-direct {v10, p0}, Lcom/android/settings/wifi/WifiSettings$5;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_a
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/settings/wifi/WifiSettings;->updateDirectMenu(I)V

    goto :goto_1

    :cond_b
    iget-boolean v2, p0, Lcom/android/settings/wifi/WifiSettings;->mInManageNetwork:Z

    if-eqz v2, :cond_c

    const v2, 0x7f121e5c

    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    :cond_c
    :goto_1
    return-void
.end method

.method private setupListDivider()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/ListAnimationController;->setListDivider(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private showConnectionWarningView(Lcom/samsung/android/settingslib/wifi/AccessPoint;)V
    .locals 5

    const-string v0, "WifiSettings"

    const-string/jumbo v1, "showConnectionWarningView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const v4, 0x7f1217dc

    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settings/wifi/WifiSettings$7;

    invoke-direct {v2, p0, p1}, Lcom/android/settings/wifi/WifiSettings$7;-><init>(Lcom/android/settings/wifi/WifiSettings;Lcom/samsung/android/settingslib/wifi/AccessPoint;)V

    const v3, 0x7f121dcb

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f121dbc

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private showDialog(Lcom/samsung/android/settingslib/wifi/AccessPoint;I)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/settings/wifi/WifiUtils;->isNetworkLockedDown(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->isActive()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settingslib/RestrictedLockUtils;->getDeviceOwner(Landroid/content/Context;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiSettings;->removeDialog(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    :cond_1
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mDlgAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    iput p2, p0, Lcom/android/settings/wifi/WifiSettings;->mDialogMode:I

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiSettings;->showDialog(I)V

    return-void
.end method

.method private showDialogForModify()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/android/settings/wifi/WifiSettings;->showDialog(Lcom/samsung/android/settingslib/wifi/AccessPoint;I)V

    return-void
.end method

.method private showDialogForRetry(Lcom/samsung/android/settingslib/wifi/AccessPoint;)V
    .locals 3

    const-string v0, "WifiSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showDialogForRetry : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiDevicePolicyManager;->isAllowedToShowRetryDialog(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiDevicePolicyManager;->isAllowedToShowRetryDialog(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    const-string v0, "WifiSettings"

    const-string/jumbo v1, "target AP is null, ignored retry popup"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    const-string v0, "WifiSettings"

    const-string/jumbo v1, "showDialogForRetry showDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->launchNetworkConnectFragment(Lcom/samsung/android/settingslib/wifi/AccessPoint;)V

    :cond_1
    return-void
.end method

.method private smartTetheringPreferenceCategory()Z
    .locals 3

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->getSamsungAccountCount()I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "WifiSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSamsungAccountCount() num "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->getSamsungAccountCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->addsmartTetheringPreference()Z

    move-result v0

    return v0

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->removeSmartTetheringPreference()V

    const/4 v0, 0x0

    return v0
.end method

.method private startContactUsActivity()V
    .locals 5

    const-string v0, "WifiSettings"

    const-string/jumbo v1, "start contact us activity"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mLoggingScreenId:Ljava/lang/String;

    const v1, 0x7f12090d

    invoke-direct {p0, v0, v1}, Lcom/android/settings/wifi/WifiSettings;->insertLogging(Ljava/lang/String;I)V

    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mIsSupportedContactUs:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "voc://view/contactUs"

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v2, "packageName"

    const-string v3, "com.android.settings.wifi"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "appId"

    const-string v3, "6u17f9w7m9"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "appName"

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f121eee

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "faqUrl"

    const-string/jumbo v3, "voc://view/categories"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiSettings;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private startWifiConfigSettings()V
    .locals 9

    const-string v0, "WifiSettings"

    const-string/jumbo v1, "start config settings"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mLoggingScreenId:Ljava/lang/String;

    const v1, 0x7f120909

    invoke-direct {p0, v0, v1}, Lcom/android/settings/wifi/WifiSettings;->insertLogging(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings/SettingsActivity;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/settings/SettingsActivity;

    const-class v0, Lcom/android/settings/wifi/ConfigureWifiSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const v5, 0x7f121e62

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    invoke-virtual/range {v1 .. v8}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Landroid/app/Fragment;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/settings/core/SubSettingLauncher;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getMetricsCategory()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    const-class v1, Lcom/android/settings/wifi/ConfigureWifiSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    const v1, 0x7f121e62

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setTitle(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->addFlags(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    :goto_0
    return-void
.end method

.method private startWifiP2pSettings()V
    .locals 9

    const-string v0, "WifiSettings"

    const-string/jumbo v1, "start p2p settings"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mLoggingScreenId:Ljava/lang/String;

    const v1, 0x7f120931

    invoke-direct {p0, v0, v1}, Lcom/android/settings/wifi/WifiSettings;->insertLogging(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings/SettingsActivity;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/settings/SettingsActivity;

    const-class v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const v5, 0x7f121e68

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    invoke-virtual/range {v1 .. v8}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Landroid/app/Fragment;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    :cond_0
    return-void
.end method

.method private updateAccessPointPreferences(Z)V
    .locals 18

    move-object/from16 v6, p0

    move/from16 v7, p1

    iget-boolean v0, v6, Lcom/android/settings/wifi/WifiSettings;->mIsRestricted:Z

    const/4 v8, 0x0

    if-eqz v0, :cond_0

    const-string v0, "WifiSettings"

    const-string/jumbo v1, "updateAccessPointPreferences - UI restricted"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v6, v8}, Lcom/android/settings/wifi/WifiSettings;->setProgressBarVisible(Z)V

    return-void

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1e

    iget v0, v6, Lcom/android/settings/wifi/WifiSettings;->mLastWifiState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    goto/16 :goto_a

    :cond_1
    iget-object v0, v6, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    if-eqz v0, :cond_2

    iget-object v0, v6, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "WifiSettings"

    const-string/jumbo v1, "updateAccessPointPreferences - dialog is showing."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v0, v6, Lcom/android/settings/wifi/WifiSettings;->mWifiTracker:Lcom/samsung/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/wifi/WifiTracker;->getWifiState()I

    move-result v9

    const/4 v0, 0x1

    if-eq v9, v0, :cond_1c

    if-eqz v9, :cond_1c

    const/4 v1, 0x4

    if-ne v9, v1, :cond_3

    goto/16 :goto_9

    :cond_3
    iget-object v1, v6, Lcom/android/settings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    if-eqz v1, :cond_4

    iget-object v1, v6, Lcom/android/settings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiEnabler;->isSwitchBarChecked()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v6, v8}, Lcom/android/settings/wifi/WifiSettings;->setProgressBarVisible(Z)V

    iget-object v0, v6, Lcom/android/settings/wifi/WifiSettings;->mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/ListAnimationController;->removeAll()V

    const v0, 0x7f121f39

    invoke-direct {v6, v0}, Lcom/android/settings/wifi/WifiSettings;->addMessagePreference(I)V

    return-void

    :cond_4
    invoke-virtual {v6, v0}, Lcom/android/settings/wifi/WifiSettings;->setProgressBarVisible(Z)V

    iget-object v1, v6, Lcom/android/settings/wifi/WifiSettings;->mWifiTracker:Lcom/samsung/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v1}, Lcom/samsung/android/settingslib/wifi/WifiTracker;->getAccessPoints()Ljava/util/List;

    move-result-object v10

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, -0x1

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v5

    iget-object v1, v6, Lcom/android/settings/wifi/WifiSettings;->mAccessPointsPreferenceGroup:Lcom/samsung/android/settingslib/wifi/AccessPointPreferenceGroup;

    if-nez v1, :cond_5

    new-instance v1, Lcom/samsung/android/settingslib/wifi/AccessPointPreferenceGroup;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/samsung/android/settingslib/wifi/AccessPointPreferenceGroup;-><init>(Landroid/content/Context;)V

    iput-object v1, v6, Lcom/android/settings/wifi/WifiSettings;->mAccessPointsPreferenceGroup:Lcom/samsung/android/settingslib/wifi/AccessPointPreferenceGroup;

    :cond_5
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v12

    const v1, 0x7f121ea9

    if-nez v12, :cond_6

    const-string v5, "WifiSettings"

    const-string v13, "No available access points"

    invoke-static {v5, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->getListAdapter()Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;->removeAll()V

    goto :goto_0

    :cond_6
    iget-boolean v5, v6, Lcom/android/settings/wifi/WifiSettings;->mInManageNetwork:Z

    if-eqz v5, :cond_7

    iget-object v5, v6, Lcom/android/settings/wifi/WifiSettings;->mAccessPointsPreferenceGroup:Lcom/samsung/android/settingslib/wifi/AccessPointPreferenceGroup;

    const v13, 0x7f121c65

    invoke-direct {v6, v5, v13, v8}, Lcom/android/settings/wifi/WifiSettings;->addDeviceCategory(Lcom/samsung/android/settingslib/wifi/AccessPointPreferenceGroup;II)V

    goto :goto_0

    :cond_7
    iget-object v5, v6, Lcom/android/settings/wifi/WifiSettings;->mAccessPointsPreferenceGroup:Lcom/samsung/android/settingslib/wifi/AccessPointPreferenceGroup;

    invoke-direct {v6, v5, v1, v8}, Lcom/android/settings/wifi/WifiSettings;->addDeviceCategory(Lcom/samsung/android/settingslib/wifi/AccessPointPreferenceGroup;II)V

    sget-boolean v5, Lcom/android/settings/Utils;->SPF_SupportMobileApEnhanced:Z

    if-eqz v5, :cond_8

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->smartTetheringPreferenceCategory()Z

    move-result v5

    if-eqz v5, :cond_8

    move v4, v3

    :cond_8
    :goto_0
    invoke-direct {v6, v10}, Lcom/android/settings/wifi/WifiSettings;->configureConnectedAccessPointPreferenceCategory(Ljava/util/List;)Z

    move-result v5

    move v3, v5

    if-eqz v3, :cond_9

    const/4 v2, 0x1

    :cond_9
    const-string v5, "WifiSettings"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "updateAccessPointPreferences size:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " connected:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " scan:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v5, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v14, v2

    move v13, v3

    move v15, v4

    :goto_1
    if-ge v13, v12, :cond_13

    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->isReachable()Z

    move-result v3

    if-nez v3, :cond_a

    iget-boolean v3, v6, Lcom/android/settings/wifi/WifiSettings;->mInManageNetwork:Z

    if-eqz v3, :cond_12

    :cond_a
    invoke-virtual {v2}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getBssid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_c

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getNetworkId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->isPasspoint()Z

    move-result v5

    if-eqz v5, :cond_b

    const-string v5, "1"

    goto :goto_2

    :cond_b
    const-string v5, "0"

    :goto_2
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_c
    const-string v4, "1.3"

    const-string v5, "1.3"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    iget-boolean v4, v6, Lcom/android/settings/wifi/WifiSettings;->isSupportWifiTips:Z

    if-eqz v4, :cond_f

    invoke-virtual {v2}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    if-eqz v4, :cond_e

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->isNetworkEnabled()Z

    move-result v5

    if-nez v5, :cond_e

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkSelectionDisableReason()I

    move-result v0

    const/16 v1, 0xd

    if-eq v0, v1, :cond_d

    const/16 v1, 0x12

    if-eq v0, v1, :cond_d

    const/16 v1, 0x14

    if-eq v0, v1, :cond_d

    packed-switch v0, :pswitch_data_0

    invoke-direct {v6, v2}, Lcom/android/settings/wifi/WifiSettings;->createLongPressAccessPointPreference(Lcom/samsung/android/settingslib/wifi/AccessPoint;)Lcom/android/settings/wifi/LongPressAccessPointPreference;

    move-result-object v0

    goto :goto_3

    :pswitch_0
    iget v0, v4, Landroid/net/wifi/WifiConfiguration;->semAutoReconnect:I

    if-nez v0, :cond_d

    invoke-direct {v6, v2}, Lcom/android/settings/wifi/WifiSettings;->createLongPressAccessPointPreference(Lcom/samsung/android/settingslib/wifi/AccessPoint;)Lcom/android/settings/wifi/LongPressAccessPointPreference;

    move-result-object v0

    goto :goto_3

    :cond_d
    :pswitch_1
    iget-object v0, v6, Lcom/android/settings/wifi/WifiSettings;->disableIntent:Landroid/content/Intent;

    invoke-direct {v6, v2, v0}, Lcom/android/settings/wifi/WifiSettings;->createLongPressAccessPointPreference(Lcom/samsung/android/settingslib/wifi/AccessPoint;Landroid/content/Intent;)Lcom/android/settings/wifi/LongPressAccessPointPreference;

    move-result-object v0

    nop

    :goto_3
    nop

    goto :goto_4

    :cond_e
    invoke-direct {v6, v2}, Lcom/android/settings/wifi/WifiSettings;->createLongPressAccessPointPreference(Lcom/samsung/android/settingslib/wifi/AccessPoint;)Lcom/android/settings/wifi/LongPressAccessPointPreference;

    move-result-object v0

    :goto_4
    goto :goto_5

    :cond_f
    invoke-direct {v6, v2}, Lcom/android/settings/wifi/WifiSettings;->createLongPressAccessPointPreference(Lcom/samsung/android/settingslib/wifi/AccessPoint;)Lcom/android/settings/wifi/LongPressAccessPointPreference;

    move-result-object v0

    :goto_5
    const/4 v1, 0x1

    invoke-virtual {v0, v3}, Lcom/android/settings/wifi/LongPressAccessPointPreference;->setKey(Ljava/lang/String;)V

    const/4 v4, -0x1

    if-ne v15, v4, :cond_10

    invoke-virtual {v0, v13}, Lcom/android/settings/wifi/LongPressAccessPointPreference;->setOrder(I)V

    goto :goto_6

    :cond_10
    add-int/lit8 v4, v15, 0x1

    invoke-virtual {v0, v15}, Lcom/android/settings/wifi/LongPressAccessPointPreference;->setOrder(I)V

    move v15, v4

    :goto_6
    iget-object v4, v6, Lcom/android/settings/wifi/WifiSettings;->mOpenSsid:Ljava/lang/String;

    if-eqz v4, :cond_11

    iget-object v4, v6, Lcom/android/settings/wifi/WifiSettings;->mOpenSsid:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-virtual {v2}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getSecurity()I

    move-result v4

    iget v5, v6, Lcom/android/settings/wifi/WifiSettings;->mOpenSecurity:I

    if-ne v4, v5, :cond_11

    iget-boolean v4, v6, Lcom/android/settings/wifi/WifiSettings;->mInManageNetwork:Z

    if-nez v4, :cond_11

    invoke-virtual {v6, v0}, Lcom/android/settings/wifi/WifiSettings;->onAccessPointPreferenceClick(Landroid/support/v7/preference/Preference;)Z

    const/4 v4, 0x0

    iput-object v4, v6, Lcom/android/settings/wifi/WifiSettings;->mOpenSsid:Ljava/lang/String;

    iput-boolean v8, v6, Lcom/android/settings/wifi/WifiSettings;->mGoToSettingsFromQuickPanelFirstTime:Z

    :cond_11
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v14, v1

    :cond_12
    add-int/lit8 v13, v13, 0x1

    const/4 v0, 0x1

    const v1, 0x7f121ea9

    goto/16 :goto_1

    :cond_13
    const/4 v0, 0x0

    iget-boolean v1, v6, Lcom/android/settings/wifi/WifiSettings;->mInManageNetwork:Z

    if-eqz v1, :cond_14

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->setPasspointPreferenceCategory()Z

    move-result v0

    :cond_14
    move/from16 v17, v0

    if-nez v14, :cond_18

    iget-boolean v0, v6, Lcom/android/settings/wifi/WifiSettings;->mInManageNetwork:Z

    if-eqz v0, :cond_16

    if-nez v17, :cond_1a

    sget-object v0, Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;->VZW:Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;

    sget-object v1, Lcom/android/settings/wifi/WifiSettings;->mOpBranding:Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;

    if-ne v0, v1, :cond_15

    const v0, 0x7f121e5d

    invoke-direct {v6, v0}, Lcom/android/settings/wifi/WifiSettings;->addMessagePreference(I)V

    goto :goto_8

    :cond_15
    const v0, 0x7f121e84

    invoke-direct {v6, v0}, Lcom/android/settings/wifi/WifiSettings;->addMessagePreference(I)V

    goto :goto_8

    :cond_16
    const-string v0, "WifiSettings"

    const-string v1, " not hasAvailableAccessPoints"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v6, Lcom/android/settings/wifi/WifiSettings;->mAccessPointsPreferenceGroup:Lcom/samsung/android/settingslib/wifi/AccessPointPreferenceGroup;

    const v1, 0x7f121ea9

    invoke-direct {v6, v0, v1, v8}, Lcom/android/settings/wifi/WifiSettings;->addDeviceCategory(Lcom/samsung/android/settingslib/wifi/AccessPointPreferenceGroup;II)V

    sget-boolean v0, Lcom/android/settings/Utils;->SPF_SupportMobileApEnhanced:Z

    if-eqz v0, :cond_17

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->smartTetheringPreferenceCategory()Z

    :cond_17
    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Lcom/android/settings/wifi/WifiSettings;->setProgressBarVisible(Z)V

    new-instance v16, Lcom/android/settings/wifi/LongPressAccessPointPreference;

    const/4 v1, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, v6, Lcom/android/settings/wifi/WifiSettings;->mUserBadgeCache:Lcom/samsung/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;

    const/4 v4, 0x0

    move-object/from16 v0, v16

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/wifi/LongPressAccessPointPreference;-><init>(Lcom/samsung/android/settingslib/wifi/AccessPoint;Landroid/content/Context;Lcom/samsung/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;ZLandroid/app/Fragment;)V

    invoke-virtual {v0, v8}, Lcom/android/settings/wifi/LongPressAccessPointPreference;->setSelectable(Z)V

    invoke-virtual {v0, v8}, Lcom/android/settings/wifi/LongPressAccessPointPreference;->setOrder(I)V

    const v1, 0x7f121e18

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/LongPressAccessPointPreference;->setTitle(I)V

    const-string/jumbo v1, "wifi_empty_list"

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/LongPressAccessPointPreference;->setKey(Ljava/lang/String;)V

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v6, Lcom/android/settings/wifi/WifiSettings;->mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

    invoke-virtual {v1, v11, v8}, Lcom/samsung/android/settings/wifi/ListAnimationController;->updateWithAnimation(Ljava/util/List;Z)V

    iget-object v1, v6, Lcom/android/settings/wifi/WifiSettings;->mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/ListAnimationController;->updateEmptyView()V

    goto :goto_8

    :cond_18
    if-eqz v7, :cond_19

    iget-boolean v0, v6, Lcom/android/settings/wifi/WifiSettings;->mInManageNetwork:Z

    if-nez v0, :cond_19

    iget-object v0, v6, Lcom/android/settings/wifi/WifiSettings;->mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

    const/4 v1, 0x1

    invoke-virtual {v0, v11, v1}, Lcom/samsung/android/settings/wifi/ListAnimationController;->updateWithAnimation(Ljava/util/List;Z)V

    goto :goto_7

    :cond_19
    iget-object v0, v6, Lcom/android/settings/wifi/WifiSettings;->mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

    invoke-virtual {v0, v11, v8}, Lcom/samsung/android/settings/wifi/ListAnimationController;->updateWithAnimation(Ljava/util/List;Z)V

    :goto_7
    iget-object v0, v6, Lcom/android/settings/wifi/WifiSettings;->mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/ListAnimationController;->updateEmptyView()V

    if-eqz v7, :cond_1a

    invoke-virtual {v6, v8}, Lcom/android/settings/wifi/WifiSettings;->setProgressBarVisible(Z)V

    :cond_1a
    :goto_8
    iget-wide v0, v6, Lcom/android/settings/wifi/WifiSettings;->mScrollTimer:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1b

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->forceScrollToTopOfList()V

    :cond_1b
    return-void

    :cond_1c
    :goto_9
    const/4 v0, 0x1

    if-ne v9, v0, :cond_1d

    invoke-virtual {v6, v8}, Lcom/android/settings/wifi/WifiSettings;->setProgressBarVisible(Z)V

    :cond_1d
    const-string v0, "WifiSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateAccessPointPreferences - Wi-Fi state is disabling/disabled "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1e
    :goto_a
    invoke-virtual {v6, v8}, Lcom/android/settings/wifi/WifiSettings;->setProgressBarVisible(Z)V

    const-string v0, "WifiSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateAccessPointPreferences - Wi-Fi is not enabled. state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v6, Lcom/android/settings/wifi/WifiSettings;->mLastWifiState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private updateContentDescriptionForAdvancedMenu(Z)V
    .locals 5

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiAdvanced:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    const-string v1, ""

    const v2, 0x7f12045e

    const v3, 0x7f121e62

    if-eqz p1, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v2, 0x7f121bc0

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiAdvanced:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method private updateContentDescriptionForDirectMenu(Z)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiDirect:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    const-string v1, ""

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f121e68

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v3, 0x7f12045e

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiDirect:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method private updateDirectMenu(I)V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiDirect:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiDevicePolicyManager;->isAllowedWifiDirectEnabled(Landroid/content/Context;)Z

    move-result v0

    const v1, 0x3ecccccd    # 0.4f

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v3, "android.hardware.wifi.direct"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    const/4 v3, 0x1

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiDirect:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setClickable(Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiDirect:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiDirect:Landroid/widget/TextView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    invoke-direct {p0, v3}, Lcom/android/settings/wifi/WifiSettings;->updateContentDescriptionForDirectMenu(Z)V

    invoke-direct {p0, v3}, Lcom/android/settings/wifi/WifiSettings;->updateContentDescriptionForAdvancedMenu(Z)V

    goto :goto_1

    :cond_1
    if-ne p1, v3, :cond_3

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiDirect:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setClickable(Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiDirect:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiDirect:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    invoke-direct {p0, v2}, Lcom/android/settings/wifi/WifiSettings;->updateContentDescriptionForDirectMenu(Z)V

    invoke-direct {p0, v2}, Lcom/android/settings/wifi/WifiSettings;->updateContentDescriptionForAdvancedMenu(Z)V

    goto :goto_1

    :cond_2
    :goto_0
    const-string v0, "WifiSettings"

    const-string v3, "not allowed Wi-Fi direct. disable Wi-Fi direct menu"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiDirect:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setClickable(Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiDirect:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiDirect:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    invoke-direct {p0, v2}, Lcom/android/settings/wifi/WifiSettings;->updateContentDescriptionForDirectMenu(Z)V

    :cond_3
    :goto_1
    return-void
.end method

.method private updateSecureWifiLayout()V
    .locals 5

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->getSecureWifiState(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v0, "WifiSettings"

    const-string v2, "mSecure Wifi Initializing"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSecureWifiSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    :pswitch_1
    const-string v0, "WifiSettings"

    const-string v1, "mTextViewSecureWifiStatus checked true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSecureWifiSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSecureWifiSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mTextViewSecureWifiStatus:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f1216b5

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/android/settings/wifi/WifiSettings;->setTwSummaryColorToColorPrimaryDark(Landroid/content/Context;Z)V

    goto :goto_0

    :pswitch_2
    const-string v0, "WifiSettings"

    const-string v3, "mTextViewSecureWifiStatus checked false"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mTextViewSecureWifiStatus:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f121629

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/android/settings/wifi/WifiSettings;->setTwSummaryColorToColorPrimaryDark(Landroid/content/Context;Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSecureWifiSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSecureWifiSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    nop

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected connect(Landroid/net/wifi/WifiConfiguration;Z)V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mShowRetryDialog:Z

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->setShowRetryDialog(Z)V

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getVisibilityLogger()Lcom/android/settingslib/core/instrumentation/VisibilityLoggerMixin;

    move-result-object v2

    const/16 v3, 0x87

    invoke-virtual {v1, v2, v3, p2}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Lcom/android/settingslib/core/instrumentation/VisibilityLoggerMixin;IZ)V

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v1, p1, v2}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mClickedConnect:Z

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/wifi/WifiSettings;->mScrollTimer:J

    return-void
.end method

.method protected connectWeChatAccessPoint(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.android.net.wifi.WECHAT_CONNECT_AP"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "ssid"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "bssid"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "rssi"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method forget()V
    .locals 5

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Landroid/util/Pair;

    const/16 v4, 0x89

    invoke-virtual {v0, v1, v4, v3}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    sget-object v1, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->disableEphemeralNetwork(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "WifiSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to forget invalid network "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->removePasspointConfiguration(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->setPasspointPreferenceCategory()Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->semIsRecommended:Z

    if-eqz v0, :cond_3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.server.wifi.RecommendNetworkScore.ACTION_USER_FORGET_RECOMMENDED_NETWORK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "ssid"

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    iget v1, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v0, v1, v3}, Landroid/net/wifi/WifiManager;->forget(ILandroid/net/wifi/WifiManager$ActionListener;)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->clearConfig()V

    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiTracker:Lcom/samsung/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/wifi/WifiTracker;->resumeScanning()V

    invoke-direct {p0, v2}, Lcom/android/settings/wifi/WifiSettings;->changeNextButtonState(Z)V

    return-void
.end method

.method public getDialogMetricsCategory(I)I
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/16 v0, 0x25e

    return v0

    :cond_1
    const/16 v0, 0x25b

    return v0
.end method

.method public getEmptyTextView()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/ListAnimationController;->getEmptyTextView()Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method public getHelpResource()I
    .locals 1

    const v0, 0x7f120b47

    return v0
.end method

.method public getListAdapter()Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/ListAnimationController;->getListAdapter()Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x67

    return v0
.end method

.method public getViListView()Landroid/widget/SemExpandableListView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/ListAnimationController;->getListView()Landroid/widget/SemExpandableListView;

    move-result-object v0

    return-object v0
.end method

.method public getWifiManager()Landroid/net/wifi/WifiManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method public onAccessPointChanged(Lcom/samsung/android/settingslib/wifi/AccessPoint;)V
    .locals 2

    const-string v0, "WifiSettings"

    const-string v1, "onAccessPointChanged (singular) callback initiated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/android/settings/wifi/WifiSettings$9;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/wifi/WifiSettings$9;-><init>(Lcom/android/settings/wifi/WifiSettings;Lcom/samsung/android/settingslib/wifi/AccessPoint;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onAccessPointPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 9

    const-string v0, "WifiSettings"

    const-string v1, "onAccessPointPreferenceClick"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    instance-of v0, p1, Lcom/android/settings/wifi/LongPressAccessPointPreference;

    const/4 v1, 0x1

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mLoggingScreenId:Ljava/lang/String;

    const v2, 0x7f12092b

    invoke-direct {p0, v0, v2}, Lcom/android/settings/wifi/WifiSettings;->insertLogging(Ljava/lang/String;I)V

    move-object v0, p1

    check-cast v0, Lcom/android/settings/wifi/LongPressAccessPointPreference;

    invoke-virtual {v0}, Lcom/android/settings/wifi/LongPressAccessPointPreference;->getAccessPoint()Lcom/samsung/android/settingslib/wifi/AccessPoint;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return v2

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiPickerHelper:Lcom/samsung/android/settings/wifi/WifiPickerHelper;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiPickerHelper:Lcom/samsung/android/settings/wifi/WifiPickerHelper;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/wifi/WifiPickerHelper;->userPickedAp(Lcom/samsung/android/settingslib/wifi/AccessPoint;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v2, -0x1

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiPickerHelper:Lcom/samsung/android/settings/wifi/WifiPickerHelper;

    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/wifi/WifiPickerHelper;->getApIntent(Lcom/samsung/android/settingslib/wifi/AccessPoint;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->popOrFinishThisActivity()V

    return v1

    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->isCoreanVendorAp(Lcom/samsung/android/settingslib/wifi/AccessPoint;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->isSupportedSecurityType()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f121f7a

    invoke-static {v2, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    :cond_3
    return v1

    :cond_4
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v4}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v4

    if-eqz v4, :cond_f

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/settings/wifi/WifiSettings;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getCurrentNetwork()Landroid/net/Network;

    move-result-object v4

    :cond_5
    if-eqz v4, :cond_6

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->checkWifiConnectivity()Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/settings/wifi/WifiSettings;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v6, v4}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v5

    :cond_6
    if-nez v5, :cond_7

    const-string v6, "WifiSettings"

    const-string v7, "NetworkCapabilities is NULL on Wi-FI only device"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    iget-object v6, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v6}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v6

    sget-object v7, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v6, v7, :cond_b

    if-eqz v3, :cond_b

    iget-boolean v6, p0, Lcom/android/settings/wifi/WifiSettings;->mInManageNetwork:Z

    if-nez v6, :cond_b

    iget-boolean v6, v3, Landroid/net/wifi/WifiConfiguration;->isCaptivePortal:Z

    if-nez v6, :cond_8

    if-eqz v5, :cond_b

    const/16 v6, 0x11

    invoke-virtual {v5, v6}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v6

    if-eqz v6, :cond_b

    :cond_8
    iget-object v6, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->isCaptivePortal()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->isAuthenticated()Z

    move-result v7

    if-eqz v7, :cond_a

    :cond_9
    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_b

    :cond_a
    const-string v2, "WifiSettings"

    const-string v7, "START captive portal login activity"

    invoke-static {v2, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/content/Intent;

    const-string v7, "android.net.netmon.launchCaptivePortalApp"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v7, "reason"

    const/4 v8, 0x3

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mContext:Landroid/content/Context;

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v7, v2, v8}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return v1

    :cond_b
    iget-object v6, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v6}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->isActive()Z

    move-result v6

    if-nez v6, :cond_d

    iget-boolean v6, p0, Lcom/android/settings/wifi/WifiSettings;->mInManageNetwork:Z

    if-eqz v6, :cond_c

    goto :goto_0

    :cond_c
    iget-object v6, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget v7, v3, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v6, v7, v2}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    invoke-virtual {p0, v3, v1}, Lcom/android/settings/wifi/WifiSettings;->connect(Landroid/net/wifi/WifiConfiguration;Z)V

    goto/16 :goto_1

    :cond_d
    :goto_0
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->isActive()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/android/settings/wifi/WifiUtils;->isNetworkLockedDown(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settingslib/RestrictedLockUtils;->getDeviceOwner(Landroid/content/Context;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    return v1

    :cond_e
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-direct {p0, v2}, Lcom/android/settings/wifi/WifiSettings;->launchNetworkDetailsFragment(Lcom/samsung/android/settingslib/wifi/AccessPoint;)V

    return v1

    :cond_f
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->isWeChatAp()Z

    move-result v2

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getSsid()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v4}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getWeChatBssid()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v5}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getRssi()I

    move-result v5

    invoke-virtual {p0, v2, v4, v5}, Lcom/android/settings/wifi/WifiSettings;->connectWeChatAccessPoint(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_1

    :cond_10
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getSecurity()I

    move-result v2

    if-nez v2, :cond_13

    sget-object v2, Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;->ATT:Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;

    sget-object v4, Lcom/android/settings/wifi/WifiSettings;->mOpBranding:Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;

    if-ne v2, v4, :cond_11

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->isActive()Z

    move-result v2

    if-nez v2, :cond_11

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-direct {p0, v2}, Lcom/android/settings/wifi/WifiSettings;->showConnectionWarningView(Lcom/samsung/android/settingslib/wifi/AccessPoint;)V

    goto :goto_1

    :cond_11
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->generateOpenNetworkConfig()V

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->isRecommended()Z

    move-result v2

    if-eqz v2, :cond_12

    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.android.server.wifi.RecommendNetworkNotification.CONNECT_TO_NETWORK"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v2, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_12
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v4}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v4

    invoke-virtual {p0, v2, v4}, Lcom/android/settings/wifi/WifiSettings;->connect(Landroid/net/wifi/WifiConfiguration;Z)V

    goto :goto_1

    :cond_13
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->isPasspoint()Z

    move-result v2

    if-eqz v2, :cond_14

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mLoggingScreenId:Ljava/lang/String;

    const v4, 0x7f12092c

    invoke-direct {p0, v2, v4}, Lcom/android/settings/wifi/WifiSettings;->insertLogging(Ljava/lang/String;I)V

    invoke-virtual {p0, v3, v1}, Lcom/android/settings/wifi/WifiSettings;->connect(Landroid/net/wifi/WifiConfiguration;Z)V

    goto :goto_1

    :cond_14
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-direct {p0, v2}, Lcom/android/settings/wifi/WifiSettings;->launchNetworkConnectFragment(Lcom/samsung/android/settingslib/wifi/AccessPoint;)V

    :goto_1
    goto :goto_2

    :cond_15
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAddPreference:Landroid/support/v7/preference/Preference;

    if-ne p1, v0, :cond_16

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->onAddNetworkPressed()V

    :cond_16
    :goto_2
    return v1
.end method

.method public onAccessPointsChanged()V
    .locals 0

    return-void
.end method

.method public onAccessPointsChanged(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->updateAccessPointPreferences(Z)V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 11

    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Landroid/net/ConnectivityManager;

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    iput-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mConnectivityManager:Landroid/net/ConnectivityManager;

    instance-of v2, v0, Lcom/samsung/android/settings/wifi/WifiPickerDialog;

    if-eqz v2, :cond_3

    sget-boolean v2, Lcom/android/settings/wifi/WifiSettings;->mWifiSettingsForeground:Z

    if-eqz v2, :cond_0

    const-string v1, "WifiSettings"

    const-string v2, "finished Wi-Fi picker dialog because another Wi-Fi settings activity is activated"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->popOrFinishThisActivity()V

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v1, "WifiSettings"

    const-string v2, "finished Wi-Fi picker dialog because Wi-Fi is disabled"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->popOrFinishThisActivity()V

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->checkWifiConnectivity()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v1, "WifiSettings"

    const-string v2, "finished Wi-Fi picker dialog because device was connected with AP"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->popOrFinishThisActivity()V

    return-void

    :cond_2
    const-string v2, "WifiSettings"

    const-string v3, "Wi-Fi picker dialog is showing"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->mFinishIfConnected:Z

    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->mFinishIfWifiDisabled:Z

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mContext:Landroid/content/Context;

    const v3, 0x7f1212c7

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mLoggingScreenId:Ljava/lang/String;

    goto :goto_0

    :cond_3
    instance-of v2, v0, Lcom/android/settings/wifi/WifiPickerActivity;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mContext:Landroid/content/Context;

    const v3, 0x7f1212c6

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mLoggingScreenId:Ljava/lang/String;

    :cond_4
    :goto_0
    new-instance v2, Lcom/android/settings/wifi/WifiSettings$1;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/WifiSettings$1;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    iput-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    new-instance v2, Lcom/android/settings/wifi/WifiSettings$2;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/WifiSettings$2;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    iput-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    new-instance v2, Lcom/android/settings/wifi/WifiSettings$3;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/WifiSettings$3;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    iput-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

    sget-boolean v2, Lcom/android/settings/Utils;->SPF_SupportMobileApEnhanced:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSemWifiApSmartCallback:Landroid/net/wifi/WifiManager$SemWifiApSmartCallback;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mSemWifiApSmartCallback:Landroid/net/wifi/WifiManager$SemWifiApSmartCallback;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-virtual {v2, v3, v4}, Landroid/net/wifi/WifiManager;->registerSemWifiApSmartCallback(Landroid/net/wifi/WifiManager$SemWifiApSmartCallback;Landroid/os/Handler;)V

    :cond_5
    if-eqz p1, :cond_7

    const-string v2, "dialog_mode"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/settings/wifi/WifiSettings;->mDialogMode:I

    const-string/jumbo v2, "wifi_ap_state"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string/jumbo v2, "wifi_ap_state"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    :cond_6
    const-string/jumbo v2, "wifi_nfc_dlg_state"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string/jumbo v2, "wifi_nfc_dlg_state"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiNfcDialogSavedState:Landroid/os/Bundle;

    :cond_7
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "wifi_enable_next_on_connect"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/wifi/WifiSettings;->mEnableNextOnConnection:Z

    invoke-static {v0}, Lcom/samsung/android/settings/guide/GuideFragment;->isInGuideMode(Landroid/app/Activity;)Z

    move-result v3

    if-nez v3, :cond_9

    const-string/jumbo v3, "settings:guide_mode"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    goto :goto_1

    :cond_8
    move v3, v4

    goto :goto_2

    :cond_9
    :goto_1
    move v3, v1

    :goto_2
    iput-boolean v3, p0, Lcom/android/settings/wifi/WifiSettings;->mIsGuideMode:Z

    iget-boolean v3, p0, Lcom/android/settings/wifi/WifiSettings;->mIsGuideMode:Z

    if-eqz v3, :cond_a

    const-string v3, "WifiSettings"

    const-string v5, "it\'s guide mode. hide some UI"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->mHideContextMenus:Z

    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->mHideActionBarMenus:Z

    :cond_a
    const-string v3, "com.samsung.android.net.wifi.PICK_WIFI_NETWORK_RESULT"

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    new-instance v3, Lcom/samsung/android/settings/wifi/WifiPickerHelper;

    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-direct {v3, v5, v2}, Lcom/samsung/android/settings/wifi/WifiPickerHelper;-><init>(Landroid/net/wifi/WifiManager;Landroid/content/Intent;)V

    iput-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiPickerHelper:Lcom/samsung/android/settings/wifi/WifiPickerHelper;

    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->mHideActionBarMenus:Z

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiPickerHelper:Lcom/samsung/android/settings/wifi/WifiPickerHelper;

    invoke-virtual {v3}, Lcom/samsung/android/settings/wifi/WifiPickerHelper;->needToHideContextMenu()Z

    move-result v3

    if-eqz v3, :cond_b

    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->mHideContextMenus:Z

    :cond_b
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/wifi/WifiSettings;->isEnabledUltraPowerSaving(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_c

    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->mHideActionBarMenus:Z

    :cond_c
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "device_provisioned"

    invoke-static {v3, v5, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_d

    move v3, v1

    goto :goto_3

    :cond_d
    move v3, v4

    :goto_3
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->hasNextButton()Z

    move-result v5

    if-eqz v5, :cond_f

    if-nez v3, :cond_e

    const-string v5, "WifiSettings"

    const-string v6, "next/prev button is showing at SetupWizard, hide navigation buttons"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v5, 0x3002

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_e
    iget-boolean v5, p0, Lcom/android/settings/wifi/WifiSettings;->mEnableNextOnConnection:Z

    if-eqz v5, :cond_f

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->checkWifiConnectivity()Z

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/settings/wifi/WifiSettings;->changeNextButtonState(Z)V

    :cond_f
    iget-boolean v5, p0, Lcom/android/settings/wifi/WifiSettings;->mHideContextMenus:Z

    if-nez v5, :cond_10

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getViListView()Landroid/widget/SemExpandableListView;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/WifiSettings;->registerForContextMenu(Landroid/view/View;)V

    :cond_10
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->setupListDivider()V

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiSettings;->setHasOptionsMenu(Z)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getEmptyTextView()Landroid/widget/TextView;

    move-result-object v5

    invoke-direct {p0, v5, v1}, Lcom/android/settings/wifi/WifiSettings;->setDescriptionAppearance(Landroid/widget/TextView;Z)V

    iget-boolean v6, p0, Lcom/android/settings/wifi/WifiSettings;->mInSetupWizardActivity:Z

    if-eqz v6, :cond_11

    iget-object v6, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiTracker:Lcom/samsung/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v6}, Lcom/samsung/android/settingslib/wifi/WifiTracker;->setSetupWizardMode()V

    iget-object v6, p0, Lcom/android/settings/wifi/WifiSettings;->mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

    invoke-virtual {v6}, Lcom/samsung/android/settings/wifi/ListAnimationController;->setSetupWizardMode()V

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string v7, "layout_inflater"

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/LayoutInflater;

    const v7, 0x7f0d02c9

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getViListView()Landroid/widget/SemExpandableListView;

    move-result-object v8

    invoke-virtual {v6, v7, v8, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mIpMacFooter:Landroid/view/View;

    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mIpMacFooter:Landroid/view/View;

    const/4 v8, 0x5

    invoke-virtual {v7, v8}, Landroid/view/View;->setTextAlignment(I)V

    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mIpMacFooter:Landroid/view/View;

    const v8, 0x7f0a0410

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mIpMacView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getViListView()Landroid/widget/SemExpandableListView;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/wifi/WifiSettings;->mIpMacFooter:Landroid/view/View;

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9, v4}, Landroid/widget/SemExpandableListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->updateIpMacInfo()V

    :cond_11
    const-string/jumbo v6, "wifi_start_connect_ssid"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_13

    const-string/jumbo v6, "wifi_start_connect_ssid"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/wifi/WifiSettings;->mOpenSsid:Ljava/lang/String;

    const-string/jumbo v6, "wifi_start_connect_security"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_12

    const-string/jumbo v6, "wifi_start_connect_security"

    invoke-virtual {v2, v6, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/android/settings/wifi/WifiSettings;->mOpenSecurity:I

    :cond_12
    iget-boolean v6, p0, Lcom/android/settings/wifi/WifiSettings;->mGoToSettingsFromQuickPanelFirstTime:Z

    if-nez v6, :cond_13

    const/4 v6, -0x1

    iput v6, p0, Lcom/android/settings/wifi/WifiSettings;->mOpenSecurity:I

    :cond_13
    if-eqz v2, :cond_15

    const-string v6, "AUTH_TYPE"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_15

    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->isWifiQr:Z

    invoke-direct {p0, v2}, Lcom/android/settings/wifi/WifiSettings;->getWifiConfigFromIntent(Landroid/content/Intent;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v6

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    const-string v8, "key_config"

    invoke-virtual {v7, v8, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    new-instance v8, Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v8, v9, v7}, Lcom/samsung/android/settingslib/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    iget-object v9, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v9

    if-ne v9, v1, :cond_14

    const-string v9, "WifiSettings"

    const-string/jumbo v10, "wifi is off, enable wifi"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v9, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    :cond_14
    invoke-direct {p0, v8}, Lcom/android/settings/wifi/WifiSettings;->launchNetworkConnectFragment(Lcom/samsung/android/settingslib/wifi/AccessPoint;)V

    :cond_15
    if-eqz v2, :cond_17

    const-string v6, "fromWifiGuider"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_17

    const-string v6, "WifiSettings"

    const-string v7, "fromWifiGuider"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v6, "wifiConfig"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/WifiConfiguration;

    if-eqz v6, :cond_17

    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget v8, v6, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v7, v8}, Landroid/net/wifi/WifiManager;->getSpecificNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v7

    if-nez v7, :cond_16

    const-string v8, "WifiSettings"

    const-string v9, "finish wifisetting activity because wificonfig is null"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->finish()V

    goto :goto_4

    :cond_16
    new-instance v8, Lcom/samsung/android/settingslib/wifi/AccessPoint;

    iget-object v9, p0, Lcom/android/settings/wifi/WifiSettings;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9, v7}, Lcom/samsung/android/settingslib/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V

    invoke-direct {p0, v8}, Lcom/android/settings/wifi/WifiSettings;->launchNetworkDetailsFragment(Lcom/samsung/android/settingslib/wifi/AccessPoint;)V

    :cond_17
    :goto_4
    invoke-static {}, Lcom/android/settings/Utils;->isSupportSSecure()Z

    move-result v6

    if-eqz v6, :cond_18

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/wifi/WifiSettings;->isEnabledUltraPowerSaving(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_18

    iget-boolean v6, p0, Lcom/android/settings/wifi/WifiSettings;->mInPickerActivity:Z

    if-nez v6, :cond_18

    iget-boolean v6, p0, Lcom/android/settings/wifi/WifiSettings;->mInPickerDialog:Z

    if-nez v6, :cond_18

    if-eqz v3, :cond_18

    iget-boolean v6, p0, Lcom/android/settings/wifi/WifiSettings;->mInManageNetwork:Z

    if-nez v6, :cond_18

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "com.samsung.android.app.sprotect"

    invoke-static {v6, v7}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_18

    goto :goto_5

    :cond_18
    move v1, v4

    :goto_5
    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->mIsSupportSSecure:Z

    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->mIsSupportSSecure:Z

    if-eqz v1, :cond_1a

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isAfwProfile(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1a

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiSettings;->initSecureWifiLayout(Landroid/content/Context;)V

    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->mIsSprotectDownloadble:Z

    if-eqz v1, :cond_19

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v6, "covert_on"

    invoke-static {v6}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mSecureWifiObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v6, v4, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_6

    :cond_19
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v6, "covert_on"

    invoke-static {v6}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mSecureWifiObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v6, v4, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_1a
    :goto_6
    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->mInManageNetwork:Z

    if-nez v1, :cond_1c

    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->mUseExternalWifiEnabler:Z

    if-eqz v1, :cond_1b

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mExternalSwitchView:Landroid/widget/Switch;

    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mExternalSwitchTextView:Landroid/widget/TextView;

    invoke-direct {p0, v1, v4}, Lcom/android/settings/wifi/WifiSettings;->createWifiEnabler(Landroid/widget/Switch;Landroid/widget/TextView;)Lcom/android/settings/wifi/WifiEnabler;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    goto :goto_7

    :cond_1b
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    if-nez v1, :cond_1c

    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->mInPickerDialog:Z

    if-nez v1, :cond_1c

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->createWifiEnabler()Lcom/android/settings/wifi/WifiEnabler;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    :cond_1c
    :goto_7
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/RestrictedSettingsFragment;->onActivityResult(IILandroid/content/Intent;)V

    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mIsRestricted:Z

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->isUiRestricted()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->mIsRestricted:Z

    return-void
.end method

.method onAddNetworkPressed()V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mLoggingScreenId:Ljava/lang/String;

    const v1, 0x7f120901

    invoke-direct {p0, v0, v1}, Lcom/android/settings/wifi/WifiSettings;->insertLogging(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/util/Pair;

    const/16 v3, 0x86

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->launchAddNetworkFragment()V

    return-void
.end method

.method public onConfiguredNetworksChanged(Landroid/net/wifi/WifiConfiguration;ZI)V
    .locals 7

    sget-boolean v0, Lcom/android/settings/wifi/WifiSettings;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "WifiSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfiguredNetworksChanged: config = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    const-string v2, "null"

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", isMultipleChanged = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiTracker:Lcom/samsung/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/wifi/WifiTracker;->getWifiState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_c

    if-eqz v0, :cond_c

    const/4 v2, 0x4

    if-ne v0, v2, :cond_2

    goto/16 :goto_2

    :cond_2
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    invoke-virtual {v2}, Lcom/android/settings/wifi/WifiEnabler;->isSwitchBarChecked()Z

    move-result v2

    if-nez v2, :cond_3

    const-string v1, "WifiSettings"

    const-string v2, "onConfiguredNetworksChanged - WifiEnabler is not checked"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    if-nez p1, :cond_4

    return-void

    :cond_4
    if-eqz p2, :cond_5

    return-void

    :cond_5
    iget-boolean v2, p1, Landroid/net/wifi/WifiConfiguration;->semIsVendorSpecificSsid:Z

    if-eqz v2, :cond_6

    sget-boolean v1, Lcom/android/settings/wifi/WifiSettings;->DBG:Z

    if-eqz v1, :cond_b

    const-string v1, "WifiSettings"

    const-string v2, "Failed to show retry popup. It\'s default AP"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_6
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_7

    sget-boolean v1, Lcom/android/settings/wifi/WifiSettings;->DBG:Z

    if-eqz v1, :cond_b

    const-string v1, "WifiSettings"

    const-string v2, "Failed to show retry popup. It\'s none secured (OPEN) AP"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_7
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->isNetworkEnabled()Z

    move-result v4

    if-nez v4, :cond_b

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkSelectionDisableReason()I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_8

    const/16 v5, 0x9

    if-eq v4, v5, :cond_8

    const/16 v5, 0xd

    if-ne v4, v5, :cond_b

    :cond_8
    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    if-eqz v5, :cond_9

    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v5}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_9

    if-eq p3, v1, :cond_9

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f121e13

    invoke-static {v5, v6, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :cond_9
    sget-boolean v1, Lcom/android/settings/wifi/WifiSettings;->DBG:Z

    if-eqz v1, :cond_a

    const-string v1, "WifiSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onConfiguredNetworksChanged: mShowRetryDialog = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/settings/wifi/WifiSettings;->mShowRetryDialog:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->isShowRetryDialog()Z

    move-result v1

    if-eqz v1, :cond_b

    iput-boolean v3, p0, Lcom/android/settings/wifi/WifiSettings;->mShowRetryDialog:Z

    invoke-direct {p0, v3}, Lcom/android/settings/wifi/WifiSettings;->setShowRetryDialog(Z)V

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->findAccessPoint(Landroid/net/wifi/WifiConfiguration;)Lcom/samsung/android/settingslib/wifi/AccessPoint;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiSettings;->showDialogForRetry(Lcom/samsung/android/settingslib/wifi/AccessPoint;)V

    :cond_b
    :goto_1
    return-void

    :cond_c
    :goto_2
    const-string v1, "WifiSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onConfiguredNetworksChanged - Wi-Fi state is disabling/disabled "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onConnectedChanged()V
    .locals 5

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiTracker:Lcom/samsung/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/wifi/WifiTracker;->isConnected()Z

    move-result v0

    const-string v1, "WifiSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onConnectedChanged: isConnected:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mListener:Lcom/android/settings/wifi/WifiSettings$WifiSettingsListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mListener:Lcom/android/settings/wifi/WifiSettings$WifiSettingsListener;

    invoke-interface {v1, v0}, Lcom/android/settings/wifi/WifiSettings$WifiSettingsListener;->onNetworkStateChanged(Z)V

    :cond_0
    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->mShowRetryDialog:Z

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiSettings;->setShowRetryDialog(Z)V

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiPickerHelper:Lcom/samsung/android/settings/wifi/WifiPickerHelper;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiPickerHelper:Lcom/samsung/android/settings/wifi/WifiPickerHelper;

    invoke-virtual {v2}, Lcom/samsung/android/settings/wifi/WifiPickerHelper;->isUserPickedAp()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, -0x1

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiPickerHelper:Lcom/samsung/android/settings/wifi/WifiPickerHelper;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/wifi/WifiPickerHelper;->getApIntent(Lcom/samsung/android/settingslib/wifi/AccessPoint;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->popOrFinishThisActivity()V

    return-void

    :cond_1
    iget-boolean v2, p0, Lcom/android/settings/wifi/WifiSettings;->mFinishIfConnected:Z

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->popOrFinishThisActivity()V

    return-void

    :cond_2
    const v2, 0x7f1214cc

    invoke-direct {p0, v2}, Lcom/android/settings/wifi/WifiSettings;->announceForAccessibility(I)V

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mCheckHttpResponseHandler:Lcom/android/settings/wifi/WifiSettings$GoToWebpageHandler;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mCheckHttpResponseHandler:Lcom/android/settings/wifi/WifiSettings$GoToWebpageHandler;

    invoke-virtual {v3, v1}, Lcom/android/settings/wifi/WifiSettings$GoToWebpageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v3, 0x3e8

    invoke-virtual {v2, v1, v3, v4}, Lcom/android/settings/wifi/WifiSettings$GoToWebpageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_3
    sput v1, Lcom/android/settings/wifi/details/CheckManageRouterTask;->mResponse:I

    :goto_0
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiTracker:Lcom/samsung/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v1}, Lcom/samsung/android/settingslib/wifi/WifiTracker;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->mInOffloadDialog:Z

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Common_SupportHuxWiFiPromptDataOveruse"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    return-void

    :cond_4
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->changeNextButtonState(Z)V

    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mLoggingScreenId:Ljava/lang/String;

    const v2, 0x7f120910

    invoke-direct {p0, v0, v2}, Lcom/android/settings/wifi/WifiSettings;->insertLogging(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->launchManageNetworkFragment(Lcom/samsung/android/settingslib/wifi/AccessPoint;)V

    return v1

    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mLoggingScreenId:Ljava/lang/String;

    const v2, 0x7f12090f

    invoke-direct {p0, v0, v2}, Lcom/android/settings/wifi/WifiSettings;->insertLogging(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->forget()V

    return v1

    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mLoggingScreenId:Ljava/lang/String;

    const v2, 0x7f12090e

    invoke-direct {p0, v0, v2}, Lcom/android/settings/wifi/WifiSettings;->insertLogging(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v0

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-direct {p0, v2}, Lcom/android/settings/wifi/WifiSettings;->isCoreanVendorAp(Lcom/samsung/android/settingslib/wifi/AccessPoint;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Lcom/android/settings/wifi/WifiSettings;->connect(Landroid/net/wifi/WifiConfiguration;Z)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->isWeChatAp()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getSsid()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getWeChatBssid()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v4}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getRssi()I

    move-result v4

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/settings/wifi/WifiSettings;->connectWeChatAccessPoint(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-direct {p0, v2}, Lcom/android/settings/wifi/WifiSettings;->launchNetworkConnectFragment(Lcom/samsung/android/settingslib/wifi/AccessPoint;)V

    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10

    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.settings.WIFI_SAVED_NETWORK_SETTINGS"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->mInManageNetwork:Z

    goto :goto_0

    :cond_0
    const-string v4, "manage_network"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/settings/wifi/WifiSettings;->mInManageNetwork:Z

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f1212c8

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mLoggingScreenId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    instance-of v2, v2, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    instance-of v2, v2, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;

    if-eqz v2, :cond_3

    :cond_2
    const-string v2, "WifiSettings"

    const-string v3, "instanceof WifiSetupWizardActivity"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->mInSetupWizardActivity:Z

    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->mHideActionBar:Z

    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->mHideActionBarMenus:Z

    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->mUseExternalWifiEnabler:Z

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f1212c9

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mLoggingScreenId:Ljava/lang/String;

    :cond_3
    const/4 v2, 0x1

    iget-boolean v3, p0, Lcom/android/settings/wifi/WifiSettings;->mInManageNetwork:Z

    if-eqz v3, :cond_4

    const/4 v2, 0x0

    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->mShowNotInRagededAp:Z

    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->mHideActionBarMenus:Z

    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->mFinishIfWifiDisabled:Z

    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->mHideContextMenus:Z

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f1212c2

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mLoggingScreenId:Ljava/lang/String;

    :cond_4
    const-string v3, "WifiSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Screen ID "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mLoggingScreenId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    instance-of v3, v3, Lcom/samsung/android/settings/wifi/WifiPickerDialog;

    iput-boolean v3, p0, Lcom/android/settings/wifi/WifiSettings;->mInPickerDialog:Z

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    instance-of v3, v3, Lcom/samsung/android/settings/wifi/WifiOffloadDialog;

    iput-boolean v3, p0, Lcom/android/settings/wifi/WifiSettings;->mInOffloadDialog:Z

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/samsung/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/samsung/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;-><init>(Landroid/content/pm/PackageManager;)V

    iput-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mUserBadgeCache:Lcom/samsung/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;

    new-instance v3, Landroid/os/HandlerThread;

    const-string v4, "WifiSettings"

    const/16 v5, 0xa

    invoke-direct {v3, v4, v5}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mBgThread:Landroid/os/HandlerThread;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mBgThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->start()V

    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mBgThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v6

    const/4 v7, 0x1

    const/4 v9, 0x0

    move-object v5, p0

    move v8, v2

    invoke-static/range {v4 .. v9}, Lcom/samsung/android/settingslib/wifi/WifiTrackerFactory;->create(Landroid/content/Context;Lcom/samsung/android/settingslib/wifi/WifiTracker$WifiListener;Landroid/os/Looper;ZZZ)Lcom/samsung/android/settingslib/wifi/WifiTracker;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiTracker:Lcom/samsung/android/settingslib/wifi/WifiTracker;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiTracker:Lcom/samsung/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v3}, Lcom/samsung/android/settingslib/wifi/WifiTracker;->getManager()Landroid/net/wifi/WifiManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiTracker:Lcom/samsung/android/settingslib/wifi/WifiTracker;

    iget-boolean v4, p0, Lcom/android/settings/wifi/WifiSettings;->mShowNotInRagededAp:Z

    invoke-virtual {v3, v4}, Lcom/samsung/android/settingslib/wifi/WifiTracker;->setAccessPointVisible(Z)V

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiTracker:Lcom/samsung/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v3, p0}, Lcom/samsung/android/settingslib/wifi/WifiTracker;->setSemWifiListener(Lcom/samsung/android/settingslib/wifi/WifiTracker$SemWifiListener;)V

    new-instance v3, Lcom/android/settings/wifi/WifiSettings$GoToWebpageHandler;

    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mBgThread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/android/settings/wifi/WifiSettings$GoToWebpageHandler;-><init>(Lcom/android/settings/wifi/WifiSettings;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mCheckHttpResponseHandler:Lcom/android/settings/wifi/WifiSettings$GoToWebpageHandler;

    new-instance v3, Lcom/samsung/android/settings/wifi/ListAnimationController;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/samsung/android/settings/wifi/ListAnimationController;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiTracker:Lcom/samsung/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/wifi/ListAnimationController;->setWifiTracker(Lcom/samsung/android/settingslib/wifi/WifiTracker;)V

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mViListListener:Lcom/samsung/android/settings/wifi/ListAnimationController$OnEventListener;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/wifi/ListAnimationController;->setListener(Lcom/samsung/android/settings/wifi/ListAnimationController$OnEventListener;)V

    iget-boolean v3, p0, Lcom/android/settings/wifi/WifiSettings;->mInSetupWizardActivity:Z

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

    invoke-virtual {v3}, Lcom/samsung/android/settings/wifi/ListAnimationController;->setSetupWizardStatus()V

    :cond_5
    new-instance v3, Lcom/samsung/android/settingslib/wifi/AccessPointPreferenceGroup;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/samsung/android/settingslib/wifi/AccessPointPreferenceGroup;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mConnectedAccessPointPreferenceGroup:Lcom/samsung/android/settingslib/wifi/AccessPointPreferenceGroup;

    new-instance v3, Lcom/samsung/android/settingslib/wifi/AccessPointPreferenceGroup;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/samsung/android/settingslib/wifi/AccessPointPreferenceGroup;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPointsPreferenceGroup:Lcom/samsung/android/settingslib/wifi/AccessPointPreferenceGroup;

    new-instance v3, Lcom/samsung/android/settingslib/wifi/AccessPointPreferenceGroup;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/samsung/android/settingslib/wifi/AccessPointPreferenceGroup;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mPassPointPreferenceGroup:Lcom/samsung/android/settingslib/wifi/AccessPointPreferenceGroup;

    sget-boolean v3, Lcom/android/settings/Utils;->SPF_SupportMobileApEnhanced:Z

    if-eqz v3, :cond_6

    new-instance v3, Lcom/samsung/android/settingslib/wifi/AccessPointPreferenceGroup;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/samsung/android/settingslib/wifi/AccessPointPreferenceGroup;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mSmartTetheringPreferenceGroup:Lcom/samsung/android/settingslib/wifi/AccessPointPreferenceGroup;

    :cond_6
    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->mGoToSettingsFromQuickPanelFirstTime:Z

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->isUiRestricted()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->mIsRestricted:Z

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isSupportHelpMenu(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->mIsSupportedHelpHub:Z

    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->mInSetupWizardActivity:Z

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mContext:Landroid/content/Context;

    const-wide/32 v3, 0xdcc6cc8

    invoke-static {v1, v3, v4}, Lcom/android/settings/Utils;->isSupportContactUs(Landroid/content/Context;J)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->mIsSupportedContactUs:Z

    :cond_7
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 12

    const-string v0, "WifiSettings"

    const-string v1, "create context menu"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mHideContextMenus:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    instance-of v0, p3, Landroid/widget/SemExpandableListView$ExpandableListContextMenuInfo;

    if-nez v0, :cond_1

    return-void

    :cond_1
    move-object v0, p3

    check-cast v0, Landroid/widget/SemExpandableListView$ExpandableListContextMenuInfo;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getViListView()Landroid/widget/SemExpandableListView;

    iget-wide v1, v0, Landroid/widget/SemExpandableListView$ExpandableListContextMenuInfo;->packedPosition:J

    invoke-static {v1, v2}, Landroid/widget/SemExpandableListView;->getPackedPositionGroup(J)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getViListView()Landroid/widget/SemExpandableListView;

    iget-wide v2, v0, Landroid/widget/SemExpandableListView$ExpandableListContextMenuInfo;->packedPosition:J

    invoke-static {v2, v3}, Landroid/widget/SemExpandableListView;->getPackedPositionChild(J)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    return-void

    :cond_2
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/settings/Rune;->isShopDemo(Landroid/content/Context;)Z

    move-result v3

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isLDUModel()Z

    move-result v4

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getListAdapter()Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;->getChild(II)Lcom/samsung/android/settingslib/wifi/AccessPointPreference;

    move-result-object v5

    instance-of v6, v5, Lcom/android/settings/wifi/LongPressAccessPointPreference;

    if-eqz v6, :cond_c

    iget-object v6, p0, Lcom/android/settings/wifi/WifiSettings;->mLoggingScreenId:Ljava/lang/String;

    const v7, 0x7f120928

    invoke-direct {p0, v6, v7}, Lcom/android/settings/wifi/WifiSettings;->insertLogging(Ljava/lang/String;I)V

    move-object v6, v5

    check-cast v6, Lcom/android/settings/wifi/LongPressAccessPointPreference;

    invoke-virtual {v6}, Lcom/android/settings/wifi/LongPressAccessPointPreference;->getAccessPoint()Lcom/samsung/android/settingslib/wifi/AccessPoint;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    iget-object v6, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    if-nez v6, :cond_3

    const-string v6, "WifiSettings"

    const-string v7, "onCreateContextMenu - selected ap is null"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    iget-object v6, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v6}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getSsid()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {p1, v6}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    iget-object v6, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v6}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->isSupportedSecurityType()Z

    move-result v6

    const v7, 0x7f121e65

    const/16 v8, 0x8

    const/4 v9, 0x0

    if-nez v6, :cond_5

    if-nez v3, :cond_5

    if-nez v4, :cond_5

    iget-object v10, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v10}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {p1, v9, v8, v9, v7}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const v8, 0x7f121f7a

    const/4 v9, 0x1

    invoke-static {v7, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    :cond_4
    return-void

    :cond_5
    iget-object v10, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v10}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->isConnectable()Z

    move-result v10

    if-eqz v10, :cond_6

    const/4 v10, 0x7

    const v11, 0x7f121e64

    invoke-interface {p1, v9, v10, v9, v11}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    :cond_6
    iget-object v10, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v10}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v10

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-static {v11, v10}, Lcom/android/settings/wifi/WifiUtils;->isNetworkLockedDown(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v11

    if-eqz v11, :cond_7

    return-void

    :cond_7
    iget-object v11, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v11}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v11

    if-nez v11, :cond_8

    iget-object v11, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v11}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->isEphemeral()Z

    move-result v11

    if-eqz v11, :cond_a

    :cond_8
    sget-boolean v11, Lcom/android/settings/Utils;->REMOVABLE_DEFAULT_AP:Z

    if-nez v11, :cond_9

    iget-object v11, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v11}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->isVendorAp()Z

    move-result v11

    if-nez v11, :cond_a

    :cond_9
    if-nez v3, :cond_a

    if-nez v4, :cond_a

    invoke-interface {p1, v9, v8, v9, v7}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    :cond_a
    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v7}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v7

    if-eqz v7, :cond_c

    sget-boolean v7, Lcom/android/settings/Utils;->REMOVABLE_DEFAULT_AP:Z

    if-nez v7, :cond_b

    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v7}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->isVendorAp()Z

    move-result v7

    if-nez v7, :cond_c

    :cond_b
    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v7}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->isActive()Z

    move-result v7

    if-nez v7, :cond_c

    const/16 v7, 0x9

    const v8, 0x7f121e66

    invoke-interface {p1, v9, v7, v9, v8}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    :cond_c
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getSecurity()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiToNfcDialog:Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiNfcDialogSavedState:Landroid/os/Bundle;

    if-eqz v0, :cond_2

    new-instance v0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiNfcDialogSavedState:Landroid/os/Bundle;

    invoke-direct {v0, v1, v2}, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiToNfcDialog:Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiToNfcDialog:Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;

    return-object v0

    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDlgAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    if-nez v0, :cond_4

    nop

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mDialogListener:Lcom/android/settings/wifi/WifiDialog$WifiDialogListener;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mDlgAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    iget v3, p0, Lcom/android/settings/wifi/WifiSettings;->mDialogMode:I

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/wifi/WifiDialog;->createModal(Landroid/content/Context;Lcom/android/settings/wifi/WifiDialog$WifiDialogListener;Lcom/samsung/android/settingslib/wifi/AccessPoint;I)Lcom/android/settings/wifi/WifiDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDlgAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    if-nez v0, :cond_5

    new-instance v0, Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settingslib/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDlgAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDlgAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4

    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mIsRestricted:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mHideActionBarMenus:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->setupActionBarMenus()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiDirect:Landroid/widget/TextView;

    const/4 v1, 0x1

    if-nez v0, :cond_2

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiSettings;->setHasOptionsMenu(Z)V

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->setupActionBarMenus()V

    :cond_2
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mIsSupportedContactUs:Z

    if-nez v0, :cond_3

    return-void

    :cond_3
    const-string v0, "WifiSettings"

    const-string v2, "create options menu"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x5

    const v2, 0x7f121e61

    const/4 v3, 0x0

    invoke-interface {p1, v3, v0, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mIsSupportedContactUs:Z

    if-eqz v0, :cond_4

    const-string v0, "WifiSettings"

    const-string/jumbo v2, "support contact us menu"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xd

    const v2, 0x7f12055f

    invoke-interface {p1, v3, v0, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_4
    invoke-super {p0, p1, p2}, Lcom/android/settings/RestrictedSettingsFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7

    iput-object p2, p0, Lcom/android/settings/wifi/WifiSettings;->mContainer:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

    iget-boolean v4, p0, Lcom/android/settings/wifi/WifiSettings;->mInManageNetwork:Z

    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->mInPickerDialog:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->mInOffloadDialog:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    move v5, v1

    iget-boolean v6, p0, Lcom/android/settings/wifi/WifiSettings;->mInOffloadDialog:Z

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/settings/wifi/ListAnimationController;->createView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;ZZZ)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mListAnimationView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mListAnimationView:Landroid/view/View;

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    sget-boolean v0, Lcom/android/settings/wifi/WifiSettings;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "WifiSettings"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiTracker:Lcom/samsung/android/settingslib/wifi/WifiTracker;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiTracker:Lcom/samsung/android/settingslib/wifi/WifiTracker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settingslib/wifi/WifiTracker;->setSemWifiListener(Lcom/samsung/android/settingslib/wifi/WifiTracker$SemWifiListener;)V

    iput-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiTracker:Lcom/samsung/android/settingslib/wifi/WifiTracker;

    :cond_1
    sget-boolean v0, Lcom/android/settings/Utils;->SPF_SupportMobileApEnhanced:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSemWifiApSmartCallback:Landroid/net/wifi/WifiManager$SemWifiApSmartCallback;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSemWifiApSmartCallback:Landroid/net/wifi/WifiManager$SemWifiApSmartCallback;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->unregisterSemWifiApSmartCallback(Landroid/net/wifi/WifiManager$SemWifiApSmartCallback;)V

    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/ListAnimationController;->destroyView()V

    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 3

    sget-boolean v0, Lcom/android/settings/wifi/WifiSettings;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "WifiSettings"

    const-string v1, "onDestroyView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onDestroyView()V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mListAnimationView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mListAnimationView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iput-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mListAnimationView:Landroid/view/View;

    const-string v0, "WifiSettings"

    const-string v2, "onDestroyView, mListAnimationView is removed"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiEnabler;->teardownSwitchController()V

    iput-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    :cond_2
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mIsSupportSSecure:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isAfwProfile(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSecureWifiObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_3
    return-void
.end method

.method public onLevelChanged(Lcom/samsung/android/settingslib/wifi/AccessPoint;)V
    .locals 1

    invoke-virtual {p1}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->onLevelChanged()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mIsRestricted:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mHideActionBarMenus:Z

    if-eqz v0, :cond_1

    return v1

    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x1

    if-eq v0, v1, :cond_4

    const/16 v1, 0xd

    if-eq v0, v1, :cond_3

    const v1, 0x102002c

    if-eq v0, v1, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mLoggingScreenId:Ljava/lang/String;

    const v1, 0x7f120930

    invoke-direct {p0, v0, v1}, Lcom/android/settings/wifi/WifiSettings;->insertLogging(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    :cond_3
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->startContactUsActivity()V

    return v2

    :cond_4
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->startWifiConfigSettings()V

    return v2
.end method

.method public onPause()V
    .locals 2

    const-string v0, "WifiSettings"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onPause()V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiEnabler;->pause()V

    :cond_0
    sget-boolean v0, Lcom/android/settings/Utils;->SPF_SupportMobileApEnhanced:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->semWifiApBleClientRole(Z)Z

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 9

    const-string v0, "WifiSettings"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "WifiSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setupwizard: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "device_provisioned"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "mInPickerActivity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/settings/wifi/WifiSettings;->mInPickerActivity:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onResume()V

    invoke-static {}, Lcom/android/settings/wifi/details/TempWifiConfiguration;->getInstance()Lcom/android/settings/wifi/details/TempWifiConfiguration;

    move-result-object v1

    iget-boolean v2, v1, Lcom/android/settings/wifi/details/TempWifiConfiguration;->forceScrollToTopOfList:Z

    if-eqz v2, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/settings/wifi/WifiSettings;->mScrollTimer:J

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->forceScrollToTopOfList()V

    iput-boolean v4, v1, Lcom/android/settings/wifi/details/TempWifiConfiguration;->forceScrollToTopOfList:Z

    :cond_1
    iget-boolean v2, p0, Lcom/android/settings/wifi/WifiSettings;->mIsRestricted:Z

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->isUiRestricted()Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/settings/wifi/WifiSettings;->mIsRestricted:Z

    if-nez v2, :cond_2

    iget-boolean v5, p0, Lcom/android/settings/wifi/WifiSettings;->mIsRestricted:Z

    if-eqz v5, :cond_2

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->restrictUi()V

    :cond_2
    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    invoke-virtual {v5}, Lcom/android/settings/wifi/WifiEnabler;->resume()V

    :cond_3
    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "shared_device_status"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_4

    const-string v5, "WifiSettings"

    const-string v6, "isSharedDeviceKeyguardOn!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/high16 v6, 0x80000

    invoke-virtual {v5, v6}, Landroid/view/Window;->addFlags(I)V

    :cond_4
    new-instance v5, Landroid/os/Message;

    invoke-direct {v5}, Landroid/os/Message;-><init>()V

    const/16 v6, 0x4a

    iput v6, v5, Landroid/os/Message;->what:I

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    const-string v7, "enable"

    invoke-virtual {v6, v7, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v7, "lock"

    invoke-virtual {v6, v7, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iput-object v6, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v7, v5}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v7

    if-nez v7, :cond_5

    const-string v7, "WifiSettings"

    const-string v8, "Stop p2p discovery after start legacy scan and assoc"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v7

    const/4 v8, 0x3

    if-ne v7, v8, :cond_6

    invoke-direct {p0, v4}, Lcom/android/settings/wifi/WifiSettings;->forceUpdateAPs(Z)V

    sget-boolean v4, Lcom/android/settings/Utils;->SPF_SupportMobileApEnhanced:Z

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4, v3}, Landroid/net/wifi/WifiManager;->semWifiApBleClientRole(Z)Z

    :cond_6
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mContext:Landroid/content/Context;

    const-wide/32 v7, 0x7bfa480

    invoke-static {v3, v7, v8}, Lcom/android/settings/wifi/WifiTipsUtils;->isSupportWifiTips(Landroid/content/Context;J)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/wifi/WifiSettings;->isSupportWifiTips:Z

    const-string v3, "1.3"

    const-string v4, "1.3"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-boolean v3, p0, Lcom/android/settings/wifi/WifiSettings;->isSupportWifiTips:Z

    if-eqz v3, :cond_7

    invoke-static {}, Lcom/android/settings/wifi/WifiTipsUtils;->getTipsIntent()Landroid/content/Intent;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->disableIntent:Landroid/content/Intent;

    :cond_7
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "dialog_mode"

    iget v1, p0, Lcom/android/settings/wifi/WifiSettings;->mDialogMode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDlgAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDlgAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->saveWifiState(Landroid/os/Bundle;)V

    const-string/jumbo v0, "wifi_ap_state"

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiToNfcDialog:Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiToNfcDialog:Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiToNfcDialog:Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;

    invoke-virtual {v1, v0}, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->saveState(Landroid/os/Bundle;)V

    const-string/jumbo v1, "wifi_nfc_dlg_state"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_1
    return-void
.end method

.method public onScanStateChange(I)V
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiTracker:Lcom/samsung/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v1}, Lcom/samsung/android/settingslib/wifi/WifiTracker;->getWifiState()I

    move-result v1

    if-eq v1, v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->setProgressBarVisible(Z)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 4

    const-string v0, "WifiSettings"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onStart()V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settings/wifi/WifiSettings;->mWifiSettingsForeground:Z

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mLoggingScreenId:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiSettings;->insertLogging(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiEnablerListener:Lcom/android/settings/wifi/WifiEnabler$IWifiEnablerListener;

    invoke-virtual {v1, v2}, Lcom/android/settings/wifi/WifiEnabler;->setListener(Lcom/android/settings/wifi/WifiEnabler$IWifiEnablerListener;)V

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mLoggingScreenId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/settings/wifi/WifiEnabler;->setScreenIdForSA(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/wifi/WifiEnabler;->start(Landroid/content/Context;)V

    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiTracker:Lcom/samsung/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v1}, Lcom/samsung/android/settingslib/wifi/WifiTracker;->startTracking()V

    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->mIsRestricted:Z

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->restrictUi()V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiTracker:Lcom/samsung/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v1}, Lcom/samsung/android/settingslib/wifi/WifiTracker;->getWifiState()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiSettings;->onWifiStateChanged(I)V

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isSharedDeviceEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "shared_device_status"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "sd_dismiss_keyguard"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_2
    return-void
.end method

.method public onStop()V
    .locals 2

    const-string v0, "WifiSettings"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiEnabler;->stop()V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiEnabler;->setListener(Lcom/android/settings/wifi/WifiEnabler$IWifiEnablerListener;)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiTracker:Lcom/samsung/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/wifi/WifiTracker;->stopTracking()V

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mHideProgressBarRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/wifi/WifiSettings;->mWifiSettingsForeground:Z

    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onStop()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/android/settings/RestrictedSettingsFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2

    instance-of v1, v0, Lcom/android/settings/SettingsActivity;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v1}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mProgressHeader:Lcom/android/settings/widget/SwitchBar;

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiSettings;->setProgressBarVisible(Z)V

    :cond_0
    instance-of v1, v0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;

    if-nez v1, :cond_1

    instance-of v1, v0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;

    if-eqz v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->mInSetupWizardActivity:Z

    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->mHideActionBar:Z

    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->mHideActionBarMenus:Z

    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->mUseExternalWifiEnabler:Z

    :cond_2
    return-void
.end method

.method public onWifiStateChanged(I)V
    .locals 4

    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mIsRestricted:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->updateDirectMenu(I)V

    iput p1, p0, Lcom/android/settings/wifi/WifiSettings;->mLastWifiState:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    sget-boolean v2, Lcom/android/settings/Utils;->SPF_SupportMobileApEnhanced:Z

    if-eqz v2, :cond_1

    const-string v2, "WifiSettings"

    const-string/jumbo v3, "smart tethering scan start"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v0}, Landroid/net/wifi/WifiManager;->semWifiApBleClientRole(Z)Z

    :cond_1
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->forceUpdateAPs(Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mQrConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mQrConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->saveConfig(Landroid/net/wifi/WifiConfiguration;)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mQrConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/wifi/WifiSettings;->connect(Landroid/net/wifi/WifiConfiguration;Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mQrConfig:Landroid/net/wifi/WifiConfiguration;

    goto :goto_0

    :pswitch_1
    const v1, 0x7f121f2c

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiSettings;->addMessagePreference(I)V

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->setProgressBarVisible(Z)V

    goto :goto_0

    :pswitch_2
    sget-boolean v2, Lcom/android/settings/Utils;->SPF_SupportMobileApEnhanced:Z

    if-eqz v2, :cond_2

    const-string v2, "WifiSettings"

    const-string/jumbo v3, "smart tethering scan end"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v1}, Landroid/net/wifi/WifiManager;->semWifiApBleClientRole(Z)Z

    :cond_2
    iput v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSTConnectedApState:I

    iget-boolean v2, p0, Lcom/android/settings/wifi/WifiSettings;->mFinishIfWifiDisabled:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/android/settings/wifi/WifiSettings;->mIsGuideMode:Z

    if-nez v2, :cond_3

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->popOrFinishThisActivity()V

    return-void

    :cond_3
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->dismissDialog(I)V

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->setOffMessage()V

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiSettings;->setProgressBarVisible(Z)V

    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mInOffloadDialog:Z

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Common_SupportHuxWiFiPromptDataOveruse"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void

    :pswitch_3
    iput v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSTConnectedApState:I

    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mFinishIfWifiDisabled:Z

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->popOrFinishThisActivity()V

    return-void

    :cond_4
    const v0, 0x7f121f39

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->addMessagePreference(I)V

    nop

    :cond_5
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setExternalProgressBar(Landroid/widget/ProgressBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mExteranlProgressBar:Landroid/widget/ProgressBar;

    return-void
.end method

.method protected setProgressBarVisible(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mProgressHeader:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mProgressHeader:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/SwitchBar;->setProgressBarVisible(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mExteranlProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mExteranlProgressBar:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public setWifiSettingsListener(Lcom/android/settings/wifi/WifiSettings$WifiSettingsListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mListener:Lcom/android/settings/wifi/WifiSettings$WifiSettingsListener;

    return-void
.end method

.method submit(Lcom/android/settings/wifi/WifiConfigController;)V
    .locals 4

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/wifi/WifiSettings;->mScrollTimer:J

    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiConfigController;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->forceScrollToTopOfList()V

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lcom/android/settings/wifi/WifiSettings;->connect(Landroid/net/wifi/WifiConfiguration;Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiConfigController;->getMode()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v1, v0, v2}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0

    :cond_1
    iget-boolean v2, p0, Lcom/android/settings/wifi/WifiSettings;->isWifiQr:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v2

    if-ne v2, v1, :cond_2

    iput-boolean v3, p0, Lcom/android/settings/wifi/WifiSettings;->isWifiQr:Z

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mQrConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    return-void

    :cond_2
    invoke-virtual {p0, v0, v3}, Lcom/android/settings/wifi/WifiSettings;->connect(Landroid/net/wifi/WifiConfiguration;Z)V

    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiTracker:Lcom/samsung/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v1}, Lcom/samsung/android/settingslib/wifi/WifiTracker;->resumeScanning()V

    return-void
.end method

.method public updateIpMacInfo()V
    .locals 5

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mIpMacFooter:Landroid/view/View;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mMacAddress:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mMacAddress:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->getWifiIpAddresses(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mPreviousIp:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mPreviousIp:Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mPreviousIp:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mContext:Landroid/content/Context;

    const v3, 0x7f121c6c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mMacAddress:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mMacAddress:Ljava/lang/String;

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mContext:Landroid/content/Context;

    const v3, 0x7f12191b

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mContext:Landroid/content/Context;

    const v4, 0x7f121c6b

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_4

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mContext:Landroid/content/Context;

    const v4, 0x7f121e83

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_4
    move-object v3, v0

    :goto_2
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mIpMacView:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mPreviousIp:Ljava/lang/String;

    :cond_5
    return-void
.end method

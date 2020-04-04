.class public Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "WifiApSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/datausage/DataSaverBackend$Listener;
.implements Lcom/samsung/android/settings/search/SecIndexable;


# static fields
.field private static final DBG:Z

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/samsung/android/settings/search/SecIndexable$SecSearchIndexProvider;

.field public static mApDeviceInfoDialogShow:Z

.field private static mDefaultTempPassword:Ljava/lang/String;

.field private static mTetheredData:I

.field private static mWifiApSettings:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/settings/SettingsPreferenceFragment;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final MHS_REQUEST:I

.field private final SOCIAL_REGISTER_REQUEST:I

.field private final TETHER_HELP_REQUEST:I

.field private bDisableMifi:Z

.field private desktopMode:Z

.field private emptyCategory:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

.field private emptyCategory1:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

.field private emptyCategory2:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

.field private isNoHotSpotModeWarningShown:Z

.field private isOverflowMenuOpen:Z

.field private isRoaming:Z

.field private isSmartTethering:I

.field private key_compare:I

.field private mActivity:Landroid/app/Activity;

.field private mAllowedMenuItem:Landroid/view/MenuItem;

.field private mApDataLimitPreference:Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;

.field private mApDdataLimit:Landroid/support/v7/preference/PreferenceCategory;

.field private mApUsageObserver:Landroid/database/ContentObserver;

.field private mConfigDialogCreate:Landroid/app/AlertDialog;

.field public mConfigureDialogDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field public mConfigureDialogListener:Landroid/content/DialogInterface$OnClickListener;

.field private mConfigureMenuItem:Landroid/view/MenuItem;

.field private mConnectedDevices:Landroid/support/v7/preference/PreferenceCategory;

.field private mContext:Landroid/content/Context;

.field private mContinueOpen:Z

.field private mDataAllowed:Z

.field private mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

.field private mDataSaverEnabled:Z

.field private mDeskManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

.field private mDeviceInfo:Landroid/support/v7/preference/PreferenceScreen;

.field private mDialogConfigure:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

.field private mDismissDialog:Z

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private final mFilter:Landroid/content/IntentFilter;

.field public mHandler:Landroid/os/Handler;

.field private mHelpCtrl:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$IMobileAPHelpController;

.field private mHelpStep1Dialog:Lcom/samsung/android/settings/helpdialog/TwHelpDialog;

.field private mHelpStep2Dialog:Lcom/samsung/android/settings/helpdialog/TwHelpDialog;

.field private mHelpText:Landroid/widget/TextView;

.field private mIsFromHelp:Z

.field private mIsTablet:Z

.field private mLimit:I

.field private mMHSCustomer:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMHSCustomerNames:[Ljava/lang/String;

.field private mMhsConfigPreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

.field private mMsg:Landroid/os/Message;

.field private mNewPassword:Ljava/lang/String;

.field private mOldPassword:Ljava/lang/String;

.field private mOldPowerSaveChecked:Z

.field private mOldWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field private mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

.field private mPasswordDialog:Landroid/app/AlertDialog;

.field private mPasswordEdit:Landroid/widget/EditText;

.field private mPasswordErrorText:Landroid/widget/TextView;

.field private mPasswordHasFocus:Z

.field private mPasswordPreference:Landroid/support/v7/preference/Preference;

.field private mPinDialog:Lcom/samsung/android/settings/wifi/mobileap/PinDialog;

.field public mPinDialogListener:Landroid/content/DialogInterface$OnClickListener;

.field private mQrCodeMenuItem:Landroid/view/MenuItem;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRvfMode:I

.field private mScreenType:Z

.field private mSelectedTimeoutValue:I

.field private mSharedPref:Landroid/content/SharedPreferences;

.field private mSharedPrefConnect:Landroid/content/SharedPreferences;

.field private mSmartTetheringPreferenceObserver:Landroid/database/ContentObserver;

.field private mSmartTetheringSwitchPreference:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

.field private mSsidPreference:Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;

.field private mSwitch:Landroid/widget/Switch;

.field public mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mSwitchPref:Landroid/support/v7/preference/SwitchPreferenceCompat;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTempConfig:Landroid/net/wifi/WifiConfiguration;

.field private mTempPassworld:Ljava/lang/String;

.field private mTimeoutDlg:Landroid/app/AlertDialog;

.field private mUsed:I

.field private mView:Landroid/view/View;

.field private mWifiApSwitchEnabler:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

.field private mWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiSharing:Landroid/view/MenuItem;

.field private mWifiSharingDlg:Landroid/app/AlertDialog;

.field private mWpsApDialog:Landroid/app/AlertDialog;

.field private mWpsSwitch:Landroid/view/MenuItem;

.field private mWpspinclient:Landroid/view/MenuItem;

.field private misLightTheme:Z

.field private missocialapplaunch:Z

.field private noHotspotModeWarningDialog:Landroid/app/AlertDialog;

.field private passwordWatcher:Landroid/text/TextWatcher;

.field private phoneStateListener:Landroid/telephony/PhoneStateListener;

.field private positiveButtonClicked:Z

.field private tetherImg:Landroid/widget/ImageView;

.field private toast:Landroid/widget/Toast;

.field private uiModeManager:Landroid/app/UiModeManager;

.field private wps_tether_pin:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/android/settings/Utils;->MHSDBG:Z

    sput-boolean v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->DBG:Z

    const/4 v0, 0x0

    sput v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mTetheredData:I

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiApSettings:Ljava/lang/ref/WeakReference;

    sput-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mDefaultTempPassword:Ljava/lang/String;

    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$40;

    invoke-direct {v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$40;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/samsung/android/settings/search/SecIndexable$SecSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 10

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->MHS_REQUEST:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->TETHER_HELP_REQUEST:I

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mTempConfig:Landroid/net/wifi/WifiConfiguration;

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mOldWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iput v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->key_compare:I

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mOldPowerSaveChecked:Z

    const/4 v3, -0x1

    iput v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mSelectedTimeoutValue:I

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mHelpCtrl:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$IMobileAPHelpController;

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->noHotspotModeWarningDialog:Landroid/app/AlertDialog;

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->bDisableMifi:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->isOverflowMenuOpen:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->desktopMode:Z

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mDeskManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    iput v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mRvfMode:I

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->isRoaming:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mDismissDialog:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mContinueOpen:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mIsFromHelp:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mPasswordHasFocus:Z

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->toast:Landroid/widget/Toast;

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->isNoHotSpotModeWarningShown:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->positiveButtonClicked:Z

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mHelpStep1Dialog:Lcom/samsung/android/settings/helpdialog/TwHelpDialog;

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mHelpStep2Dialog:Lcom/samsung/android/settings/helpdialog/TwHelpDialog;

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mTimeoutDlg:Landroid/app/AlertDialog;

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiSharingDlg:Landroid/app/AlertDialog;

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mConfigDialogCreate:Landroid/app/AlertDialog;

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mPasswordDialog:Landroid/app/AlertDialog;

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mTempPassworld:Ljava/lang/String;

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    const-string v4, "TMO"

    const-string v5, "VZW"

    const-string v6, "MTR"

    const-string v7, "ATT"

    const-string v8, "USC"

    const-string v9, "SPRINT"

    filled-new-array/range {v4 .. v9}, [Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mMHSCustomerNames:[Ljava/lang/String;

    iput v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->isSmartTethering:I

    const/16 v2, 0x1f4

    iput v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mLimit:I

    const/16 v2, 0xea

    iput v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mUsed:I

    const/16 v2, 0x64

    iput v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->SOCIAL_REGISTER_REQUEST:I

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->missocialapplaunch:Z

    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mDataAllowed:Z

    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$1;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$2;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mApUsageObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$6;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$6;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$9;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$9;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->phoneStateListener:Landroid/telephony/PhoneStateListener;

    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$17;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$17;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mPinDialogListener:Landroid/content/DialogInterface$OnClickListener;

    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$18;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$18;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mConfigureDialogListener:Landroid/content/DialogInterface$OnClickListener;

    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$31;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$31;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mConfigureDialogDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$32;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$32;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->passwordWatcher:Landroid/text/TextWatcher;

    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$39;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$39;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mSmartTetheringPreferenceObserver:Landroid/database/ContentObserver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mFilter:Landroid/content/IntentFilter;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "com.samsung.android.net.wifi.WIFI_AP_STA_STATUS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "com.samsung.android.net.wifi.WIFI_AP_STA_DHCPACK_EVENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "com.samsung.intent.action.UPDATE_DEFAULT_CONFIGURATION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "com.samsung.intent.action.UPDATE_OPTIONS_MENU"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.INET_CONDITION_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$3;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private SetSmartTethering()V
    .locals 4

    const-string v0, "WifiApSettings"

    const-string v1, "SetSmartTethering WIFI_AP_SMART_TETHERING"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->smart_tethering_simCheck()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "WifiApSettings"

    const-string v2, "Simcheck is not avaliable"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "wifi_ap_smart_tethering_settings"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->isConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "WifiApSettings"

    const-string v2, "Internet is not avaliable"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "wifi_ap_smart_tethering_settings"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getSamsungAccountCount()I

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "wifi_ap_smart_tethering_settings"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.sems.app.signin.action.ADD_SAMSUNG_ACCOUNT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x24000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "MODE"

    const-string v3, "ADD_ACCOUNT"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "IS_FROM_SETTING"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v1, 0x69

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "wifi_ap_smart_tethering_settings"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->updateSmartTetheringSwitchState()V

    const/4 v0, 0x0

    invoke-direct {p0, v1, v2, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->startSmartTetheringApk(ZZLjava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiManager;->semWifiApBleMhsRole(Z)Z

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mIsTablet:Z

    return v0
.end method

.method static synthetic access$100(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->updateSmartTetheringSwitchState()V

    return-void
.end method

.method static synthetic access$1000(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->isOverflowMenuOpen:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->isOverflowMenuOpen:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiConfiguration;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->showDialog(I)V

    return-void
.end method

.method static synthetic access$1402(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mDismissDialog:Z

    return p1
.end method

.method static synthetic access$1502(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mContinueOpen:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiConfiguration;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mOldWifiConfig:Landroid/net/wifi/WifiConfiguration;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mOldWifiConfig:Landroid/net/wifi/WifiConfiguration;

    return-object p1
.end method

.method static synthetic access$1702(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->key_compare:I

    return p1
.end method

.method static synthetic access$1800(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mOldPowerSaveChecked:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mOldPowerSaveChecked:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->isMobileApON()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mPasswordDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->showDialog(I)V

    return-void
.end method

.method static synthetic access$2202(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->bDisableMifi:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiApSwitchEnabler:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mSelectedTimeoutValue:I

    return v0
.end method

.method static synthetic access$2402(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mSelectedTimeoutValue:I

    return p1
.end method

.method static synthetic access$2500(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)I
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getTimeoutValueFromPreference()I

    move-result v0

    return v0
.end method

.method static synthetic access$2600(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getTimeoutIndexFromValue(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$2700(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getTimeoutValueFromIndex(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$2800(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->setTimeout(I)V

    return-void
.end method

.method static synthetic access$2900(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->removeDialog(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mApDataLimitPreference:Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->showDialog(I)V

    return-void
.end method

.method static synthetic access$3100(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->removeDialog(I)V

    return-void
.end method

.method static synthetic access$3200(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->showDialog(I)V

    return-void
.end method

.method static synthetic access$3300(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Landroid/content/SharedPreferences;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mSharedPref:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$3302(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;Landroid/content/SharedPreferences;)Landroid/content/SharedPreferences;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mSharedPref:Landroid/content/SharedPreferences;

    return-object p1
.end method

.method static synthetic access$3400(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->removeDialog(I)V

    return-void
.end method

.method static synthetic access$3500(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mPasswordEdit:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->isOpenWifiApAllowed()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3700(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mNewPassword:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3702(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mNewPassword:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3800(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mOldPassword:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->warnForOpenNetworkFromPasswordPref(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->handleEvent(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$4000(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->comparePassword(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4100(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->insertMHSPasswordLogging()V

    return-void
.end method

.method static synthetic access$4200(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->creatApConfigWithNewPassword(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4300(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Lcom/samsung/android/settings/wifi/mobileap/PinDialog;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mPinDialog:Lcom/samsung/android/settings/wifi/mobileap/PinDialog;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->wps_tether_pin:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4402(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->wps_tether_pin:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$4500(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->showDialog(I)V

    return-void
.end method

.method static synthetic access$4600(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mIsFromHelp:Z

    return v0
.end method

.method static synthetic access$4700(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiConfiguration;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mTempConfig:Landroid/net/wifi/WifiConfiguration;

    return-object v0
.end method

.method static synthetic access$4702(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mTempConfig:Landroid/net/wifi/WifiConfiguration;

    return-object p1
.end method

.method static synthetic access$4800(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;I)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->compareWifiConfiguration(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4900(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->positiveButtonClicked:Z

    return v0
.end method

.method static synthetic access$4902(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->positiveButtonClicked:Z

    return p1
.end method

.method static synthetic access$500(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Lcom/samsung/android/settings/wifi/WifiApDialogSec;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mDialogConfigure:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->warnForHiddenNetwork()V

    return-void
.end method

.method static synthetic access$5100(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->warnForOpenNetwork()V

    return-void
.end method

.method static synthetic access$5200(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mSsidPreference:Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;

    return-object v0
.end method

.method static synthetic access$5300(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->updateStatus()V

    return-void
.end method

.method static synthetic access$5400(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)I
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getRvfMode()I

    move-result v0

    return v0
.end method

.method static synthetic access$5500(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;Landroid/net/wifi/WifiConfiguration;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->resetWifiAp(Landroid/net/wifi/WifiConfiguration;)V

    return-void
.end method

.method static synthetic access$5600(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->setHelpPreference(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$5700(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->setWifiApConfigData()V

    return-void
.end method

.method static synthetic access$5800(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->setRvfMode(I)V

    return-void
.end method

.method static synthetic access$5902(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->isNoHotSpotModeWarningShown:Z

    return p1
.end method

.method static synthetic access$600(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mConfigDialogCreate:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$6000(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->showDialog(I)V

    return-void
.end method

.method static synthetic access$602(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mConfigDialogCreate:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$6100(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mTempPassworld:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6102(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mTempPassworld:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$6200(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mPasswordErrorText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$6300(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->validate()V

    return-void
.end method

.method static synthetic access$6400()I
    .locals 1

    sget v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mTetheredData:I

    return v0
.end method

.method static synthetic access$6402(I)I
    .locals 0

    sput p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mTetheredData:I

    return p0
.end method

.method static synthetic access$700(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->createHelpStep1Dialog()V

    return-void
.end method

.method static synthetic access$800(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Lcom/samsung/android/settings/helpdialog/TwHelpDialog;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mHelpStep1Dialog:Lcom/samsung/android/settings/helpdialog/TwHelpDialog;

    return-object v0
.end method

.method private addAPMobileDataPreference(I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mApDdataLimit:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceCategory;->removeAll()V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mApDdataLimit:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mApDataLimitPreference:Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mDeviceInfo:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mApDdataLimit:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mApDdataLimit:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v0, p1}, Landroid/support/v7/preference/PreferenceCategory;->setOrder(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mApDataLimitPreference:Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;

    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$8;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$8;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method

.method private addPasswordPreference()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->setPasswordTitle(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mPasswordPreference:Landroid/support/v7/preference/Preference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSelectable(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mPasswordPreference:Landroid/support/v7/preference/Preference;

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->isWifiApSettingUserModificationAllowed()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mPasswordPreference:Landroid/support/v7/preference/Preference;

    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$7;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$7;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method

.method private comparePassword(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private compareWifiConfiguration(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;I)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    iget v2, p2, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    if-eq v1, v2, :cond_1

    iget v1, p2, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->insertMHSChannelLogging(I)V

    :cond_1
    iget-boolean v1, p1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    iget-boolean v2, p2, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    if-eq v1, v2, :cond_2

    iget-boolean v1, p2, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->insertMHSHiddenSSIDLogging(Z)V

    :cond_2
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    iget v2, p2, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    if-eq v1, v2, :cond_3

    iget v1, p2, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->insertMHSMaxClientLogging(I)V

    :cond_3
    iget v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->key_compare:I

    if-eq v1, p3, :cond_4

    invoke-direct {p0, p3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->insertMHSSecurityLogging(I)V

    :cond_4
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iget-object v2, p2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->insertMHSSSIDLogging()V

    :cond_5
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    const/4 v2, 0x1

    if-eqz v1, :cond_7

    if-eq p3, v2, :cond_6

    const/4 v1, 0x2

    if-ne p3, v1, :cond_7

    :cond_6
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    iget-object v3, p2, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->insertMHSPasswordLogging()V

    :cond_7
    const-string v1, "SPRINT"

    sget-object v3, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "TMO"

    sget-object v3, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "NEWCO"

    sget-object v3, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_8
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    iget v3, p2, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    if-eq v1, v3, :cond_9

    return v0

    :cond_9
    iget-boolean v1, p1, Landroid/net/wifi/WifiConfiguration;->requirePMF:Z

    iget-boolean v3, p2, Landroid/net/wifi/WifiConfiguration;->requirePMF:Z

    if-eq v1, v3, :cond_a

    return v0

    :cond_a
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "wifi_ap_powersave_mode_checked"

    invoke-static {v1, v3, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_b

    move v1, v2

    goto :goto_0

    :cond_b
    move v1, v0

    :goto_0
    iget-boolean v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mOldPowerSaveChecked:Z

    if-eq v3, v1, :cond_c

    return v0

    :cond_c
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iget-object v3, p2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    iget v3, p2, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    if-ne v1, v3, :cond_d

    iget-boolean v1, p1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    iget-boolean v3, p2, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    if-ne v1, v3, :cond_d

    iget v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->key_compare:I

    if-ne v1, p3, :cond_d

    packed-switch p3, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    iget-object v3, p2, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    return v2

    :pswitch_1
    return v2

    :cond_d
    :goto_1
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private creatApConfigWithNewPassword(Ljava/lang/String;)V
    .locals 6

    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-boolean v1, v1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    iput-boolean v1, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v1, v1, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    iput v1, v0, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v1, v1, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    iput v1, v0, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    sget-boolean v1, Lcom/android/settings/Utils;->SUPPORT_MOBILEAP_MAXCLIENT_MENU:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v1, v1, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    iput v1, v0, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    iput-object p1, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Ljava/util/BitSet;->set(I)V

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v3, v2}, Ljava/util/BitSet;->set(I)V

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->insertMHSSecurityLogging(I)V

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v3, v2}, Ljava/util/BitSet;->set(I)V

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->insertMHSSecurityLogging(I)V

    :goto_1
    const-string v2, "VZW"

    sget-object v3, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v2

    const/16 v3, 0xd

    if-ne v2, v3, :cond_3

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {}, Lcom/samsung/android/settings/WifiApUtils;->getDialogTheme()I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v3, 0x7f121db9

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v3, 0x7f121da3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f120511

    new-instance v3, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$33;

    invoke-direct {v3, p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$33;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;Landroid/net/wifi/WifiConfiguration;)V

    invoke-virtual {v2, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f120475

    new-instance v3, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$34;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$34;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)V

    invoke-virtual {v2, v1, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$35;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$35;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)V

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mConfigDialogCreate:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mConfigDialogCreate:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_3

    :cond_3
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v0}, Landroid/net/wifi/WifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    const-wide/16 v2, 0x64

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    const-string v3, "WifiApSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error InterruptedException "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    :goto_2
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->updateStatus()V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getRvfMode()I

    move-result v2

    if-nez v2, :cond_4

    sput-boolean v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsProvisioningResultOk:Z

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->resetWifiAp(Landroid/net/wifi/WifiConfiguration;)V

    :cond_4
    :goto_3
    return-void
.end method

.method private createHelpStep1Dialog()V
    .locals 0

    return-void
.end method

.method private disabledHelpText()V
    .locals 13

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->tetherImg:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mHelpText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    float-to-double v0, v0

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    iget-boolean v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->desktopMode:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getHeaderView()Lcom/android/settings/applications/LayoutPreference;

    move-result-object v2

    const v4, 0x7f0a04e5

    invoke-virtual {v2, v4}, Lcom/android/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->tetherImg:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getHeaderView()Lcom/android/settings/applications/LayoutPreference;

    move-result-object v2

    const v4, 0x7f0a037f

    invoke-virtual {v2, v4}, Lcom/android/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mHelpText:Landroid/widget/TextView;

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getHeaderView()Lcom/android/settings/applications/LayoutPreference;

    move-result-object v2

    const v4, 0x7f0a04e4

    invoke-virtual {v2, v4}, Lcom/android/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->tetherImg:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getHeaderView()Lcom/android/settings/applications/LayoutPreference;

    move-result-object v2

    const v4, 0x7f0a037e

    invoke-virtual {v2, v4}, Lcom/android/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mHelpText:Landroid/widget/TextView;

    :goto_1
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v2

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->desktopMode:Z

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->tetherImg:Landroid/widget/ImageView;

    const-wide v4, 0x4066800000000000L    # 180.0

    mul-double/2addr v4, v0

    double-to-int v4, v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setMaxHeight(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->tetherImg:Landroid/widget/ImageView;

    const-wide/high16 v4, 0x4074000000000000L    # 320.0

    mul-double/2addr v4, v0

    double-to-int v4, v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setMaxWidth(I)V

    goto :goto_3

    :cond_3
    :goto_2
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->tetherImg:Landroid/widget/ImageView;

    const-wide/high16 v4, 0x406b000000000000L    # 216.0

    mul-double/2addr v4, v0

    double-to-int v4, v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setMaxHeight(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->tetherImg:Landroid/widget/ImageView;

    const-wide/high16 v4, 0x4078000000000000L    # 384.0

    mul-double/2addr v4, v0

    double-to-int v4, v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setMaxWidth(I)V

    :goto_3
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "TMO"

    sget-object v4, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->tetherImg:Landroid/widget/ImageView;

    const v4, 0x7f0806ba

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_4

    :cond_4
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->tetherImg:Landroid/widget/ImageView;

    const v4, 0x7f0806b9

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_4

    :cond_5
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->tetherImg:Landroid/widget/ImageView;

    const v4, 0x7f0806b7

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_4
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->uiModeManager:Landroid/app/UiModeManager;

    const/4 v4, 0x1

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->uiModeManager:Landroid/app/UiModeManager;

    invoke-virtual {v2}, Landroid/app/UiModeManager;->getNightMode()I

    move-result v2

    if-ne v2, v3, :cond_6

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->tetherImg:Landroid/widget/ImageView;

    const-string v5, "#26252525"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    goto :goto_5

    :cond_6
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->uiModeManager:Landroid/app/UiModeManager;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->uiModeManager:Landroid/app/UiModeManager;

    invoke-virtual {v2}, Landroid/app/UiModeManager;->getNightMode()I

    move-result v2

    if-ne v2, v4, :cond_7

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->tetherImg:Landroid/widget/ImageView;

    const-string v5, "#CCfcfcfc"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    :cond_7
    :goto_5
    const-string v2, "VZW"

    sget-object v5, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const v5, 0x7f10004e

    const v6, 0x7f10004f

    const/4 v7, 0x0

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v2

    const/16 v3, 0xd

    if-ne v2, v3, :cond_9

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mHelpText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v8

    if-eqz v8, :cond_8

    move v5, v6

    nop

    :cond_8
    new-array v4, v4, [Ljava/lang/Object;

    const/16 v6, 0xa

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v7

    invoke-virtual {v3, v5, v6, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_a

    :cond_9
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mHelpText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v8

    if-eqz v8, :cond_a

    move v5, v6

    nop

    :cond_a
    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v7

    invoke-virtual {v3, v5, v6, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_a

    :cond_b
    const-string v2, "SPRINT"

    sget-object v8, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v8, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    const-string v9, "phone"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/TelephonyManager;

    const/4 v9, 0x0

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v10

    if-eq v4, v10, :cond_d

    if-eq v3, v10, :cond_d

    const/16 v3, 0x10

    if-eq v3, v10, :cond_d

    if-nez v10, :cond_c

    goto :goto_6

    :cond_c
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    iget v11, v3, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    move v3, v11

    goto :goto_7

    :cond_d
    :goto_6
    const-string v3, "chameleon_gsmmaxuser"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_7
    goto :goto_8

    :catch_0
    move-exception v3

    const/16 v3, 0xa

    :goto_8
    const-string v9, "WifiApSettings"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mTelephonyManager.getNetworkType "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " chameleonMaxUser "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mHelpText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v12

    if-eqz v12, :cond_e

    move v5, v6

    nop

    :cond_e
    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v7

    invoke-virtual {v11, v5, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_a

    :cond_f
    const-string v2, "TMO"

    sget-object v3, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mHelpText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v8

    if-eqz v8, :cond_10

    move v5, v6

    nop

    :cond_10
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v6, v6, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v8, v8, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v7

    invoke-virtual {v3, v5, v6, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_a

    :cond_11
    const-string v2, "ATT"

    sget-object v3, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v2, :cond_13

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mHelpText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v5

    if-eqz v5, :cond_12

    const v5, 0x7f10004d

    goto :goto_9

    :cond_12
    const v5, 0x7f10004c

    :goto_9
    sget v6, Lcom/android/settings/Utils;->MAX_CLIENT_4_MOBILEAP:I

    new-array v4, v4, [Ljava/lang/Object;

    sget v8, Lcom/android/settings/Utils;->MAX_CLIENT_4_MOBILEAP:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v7

    invoke-virtual {v3, v5, v6, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_a

    :cond_13
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mHelpText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v8

    if-eqz v8, :cond_14

    move v5, v6

    nop

    :cond_14
    sget v6, Lcom/android/settings/Utils;->MAX_CLIENT_4_MOBILEAP:I

    new-array v4, v4, [Ljava/lang/Object;

    sget v8, Lcom/android/settings/Utils;->MAX_CLIENT_4_MOBILEAP:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v7

    invoke-virtual {v3, v5, v6, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_a
    return-void
.end method

.method private getRandomAlphabet(IJ)Ljava/lang/String;
    .locals 7

    new-instance v0, Ljava/lang/String;

    const-string v1, "abcdefghijklmnopqrstuvwxyz"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-nez v2, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p2

    :cond_0
    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {p0, p2, p3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->longToBytes(J)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/SecureRandom;-><init>([B)V

    const-string v3, ""

    const/4 v4, 0x0

    :goto_0
    if-ge v4, p1, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-object v3
.end method

.method private getRandomDigits(IJ)Ljava/lang/String;
    .locals 8

    if-nez p1, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-nez v0, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p2

    :cond_1
    const-wide/16 v0, 0x1

    cmp-long v2, p2, v0

    if-nez v2, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    add-long p2, v2, v0

    :cond_2
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {p0, p2, p3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->longToBytes(J)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/SecureRandom;-><init>([B)V

    const/16 v1, 0xa

    const/4 v2, 0x1

    move v3, v1

    move v1, v2

    :goto_0
    if-ge v1, p1, :cond_3

    mul-int/lit8 v3, v3, 0xa

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%%0%dd"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-static {v1, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    add-int/lit8 v4, v3, -0x1

    invoke-virtual {v0, v4}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getRandomSymbol(IJ)Ljava/lang/String;
    .locals 7

    new-instance v0, Ljava/lang/String;

    const-string v1, "!@#$/^&*()"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-nez v2, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p2

    :cond_0
    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {p0, p2, p3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->longToBytes(J)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/SecureRandom;-><init>([B)V

    const-string v3, ""

    const/4 v4, 0x0

    :goto_0
    if-ge v4, p1, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-object v3
.end method

.method private getRvfMode()I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mMsg:Landroid/os/Message;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mMsg:Landroid/os/Message;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mMsg:Landroid/os/Message;

    const/16 v1, 0x1c

    iput v1, v0, Landroid/os/Message;->what:I

    const/4 v0, -0x1

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mMsg:Landroid/os/Message;

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v0

    return v0
.end method

.method private getSamsungAccountCount()I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

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

.method private getTimeoutIndexFromValue(I)I
    .locals 1

    if-eqz p1, :cond_5

    const/16 v0, 0x12c

    if-eq p1, v0, :cond_4

    const/16 v0, 0x258

    if-eq p1, v0, :cond_3

    const/16 v0, 0x4b0

    if-eq p1, v0, :cond_2

    const/16 v0, 0x708

    if-eq p1, v0, :cond_1

    const/16 v0, 0xe10

    if-eq p1, v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    const/4 v0, 0x5

    return v0

    :cond_1
    const/4 v0, 0x4

    return v0

    :cond_2
    const/4 v0, 0x3

    return v0

    :cond_3
    const/4 v0, 0x2

    return v0

    :cond_4
    const/4 v0, 0x1

    return v0

    :cond_5
    const/4 v0, 0x0

    return v0
.end method

.method private getTimeoutValueFromIndex(I)I
    .locals 1

    const/16 v0, 0x4b0

    packed-switch p1, :pswitch_data_0

    return v0

    :pswitch_0
    const/16 v0, 0xe10

    return v0

    :pswitch_1
    const/16 v0, 0x708

    return v0

    :pswitch_2
    return v0

    :pswitch_3
    const/16 v0, 0x258

    return v0

    :pswitch_4
    const/16 v0, 0x12c

    return v0

    :pswitch_5
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getTimeoutValueFromPreference()I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mSharedPref:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "SAMSUNG_HOTSPOT"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mSharedPref:Landroid/content/SharedPreferences;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "CONNECTION_TIMEOUT"

    sget v2, Lcom/android/settings/Utils;->DEFAULT_TIMEOUT_MOBILEAP:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private handleEvent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiApSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleEvent action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "com.samsung.android.net.wifi.WIFI_AP_STA_STATUS_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    const-string v1, "EVENT"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v4, "sta_leave"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->updateConnectedDevices(Z)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->updateConnectedDevices(Z)V

    :goto_0
    goto/16 :goto_3

    :cond_1
    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mQrCodeMenuItem:Landroid/view/MenuItem;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mQrCodeMenuItem:Landroid/view/MenuItem;

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v4

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_2
    sget-boolean v1, Lcom/android/settings/Utils;->SUPPORTMOBILEAPWPSPBC:Z

    if-nez v1, :cond_3

    sget-boolean v1, Lcom/android/settings/Utils;->SUPPORTMOBILEAPWPSPIN:Z

    if-eqz v1, :cond_4

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mActivity:Landroid/app/Activity;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    :cond_4
    const-string v1, "wifi_state"

    const/16 v4, 0xe

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/16 v5, 0xd

    if-ne v1, v5, :cond_7

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mSsidPreference:Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v1, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->updateCurrent(Landroid/net/wifi/WifiConfiguration;)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mSsidPreference:Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->updateSsid(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mPasswordPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1}, Landroid/support/v7/preference/Preference;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "WifiApSettings"

    const-string v3, "Enabling Password Category in handleEvent"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mPasswordPreference:Landroid/support/v7/preference/Preference;

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->isWifiApSettingUserModificationAllowed()Z

    move-result v3

    invoke-virtual {v1, v3}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    :cond_5
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mSsidPreference:Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "WifiApSettings"

    const-string v3, "Enabling SSID Category in handleEvent"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mSsidPreference:Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->setEnabled(Z)V

    :cond_6
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->updateStatus()V

    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mScreenType:Z

    if-nez v1, :cond_17

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->setHelpPreference(Ljava/lang/Boolean;)V

    goto/16 :goto_3

    :cond_7
    const-string v1, "wifi_state"

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_9

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mPasswordDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mPasswordDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "WifiApSettings"

    const-string v2, "Dismissing Password Dialog in handleEvent"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mPasswordDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    :cond_8
    const-string v1, "WifiApSettings"

    const-string v2, "Disabling Password Category in handleEvent"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mPasswordPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1, v3}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mSsidPreference:Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->dismissdialog()V

    const-string v1, "WifiApSettings"

    const-string v2, "Disabling SSID Category in handleEvent"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mSsidPreference:Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;

    invoke-virtual {v1, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->setEnabled(Z)V

    :cond_9
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "SAMSUNG_HOTSPOT_CONNECT_TIME"

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mSharedPrefConnect:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mSharedPrefConnect:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string v2, "WifiApSettings"

    const-string v4, "cleared sharedprefs"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mScreenType:Z

    if-eqz v2, :cond_a

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->setHelpPreference(Ljava/lang/Boolean;)V

    :cond_a
    goto/16 :goto_3

    :cond_b
    const-string v1, "com.samsung.intent.action.UPDATE_DEFAULT_CONFIGURATION"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->updateStatus()V

    goto/16 :goto_3

    :cond_c
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    sget-boolean v1, Lcom/android/settings/Utils;->SPF_SupportMobileApEnhanced:Z

    if-eqz v1, :cond_d

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->updateSmartTetheringSwitchState()V

    :cond_d
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "airplane_mode_on"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_e

    goto :goto_1

    :cond_e
    move v2, v3

    :goto_1
    move v1, v2

    if-eqz v1, :cond_f

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    const v4, 0x7f120a63

    invoke-static {v2, v4, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->finish()V

    :cond_f
    goto/16 :goto_3

    :cond_10
    const-string v1, "com.samsung.intent.action.UPDATE_OPTIONS_MENU"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->updateOptionsMenu()V

    goto/16 :goto_3

    :cond_11
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    const-string v1, "ss"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ABSENT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    sget-boolean v2, Lcom/android/settings/Utils;->SPF_SupportMobileApEnhanced:Z

    if-eqz v2, :cond_13

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->updateSmartTetheringSwitchState()V

    goto :goto_2

    :cond_12
    const-string v2, "READY"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    sget-boolean v2, Lcom/android/settings/Utils;->SPF_SupportMobileApEnhanced:Z

    if-eqz v2, :cond_13

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->updateSmartTetheringSwitchState()V

    :cond_13
    :goto_2
    goto :goto_3

    :cond_14
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x2

    if-eqz v1, :cond_16

    const-string v1, "connectivity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "networkInfo"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    const-string v3, "networkType"

    const/4 v4, -0x1

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    if-eqz v1, :cond_15

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v4

    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v4, v5, :cond_15

    sget-boolean v4, Lcom/android/settings/Utils;->SPF_SupportMobileApEnhanced:Z

    if-eqz v4, :cond_15

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mHandler:Landroid/os/Handler;

    if-eqz v4, :cond_15

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mHandler:Landroid/os/Handler;

    const-wide/16 v5, 0x64

    invoke-virtual {v4, v2, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_15
    goto :goto_3

    :cond_16
    const-string v1, "android.net.conn.INET_CONDITION_ACTION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    sget-boolean v1, Lcom/android/settings/Utils;->SPF_SupportMobileApEnhanced:Z

    if-eqz v1, :cond_17

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_17

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_17
    :goto_3
    return-void
.end method

.method private howToText()V
    .locals 19

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v1, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getHeaderView()Lcom/android/settings/applications/LayoutPreference;

    move-result-object v1

    const v2, 0x7f0a0938

    invoke-virtual {v1, v2}, Lcom/android/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getHeaderView()Lcom/android/settings/applications/LayoutPreference;

    move-result-object v2

    const v3, 0x7f0a0874

    invoke-virtual {v2, v3}, Lcom/android/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getHeaderView()Lcom/android/settings/applications/LayoutPreference;

    move-result-object v3

    const v4, 0x7f0a0875

    invoke-virtual {v3, v4}, Lcom/android/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getHeaderView()Lcom/android/settings/applications/LayoutPreference;

    move-result-object v4

    const v5, 0x7f0a0876

    invoke-virtual {v4, v5}, Lcom/android/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getHeaderView()Lcom/android/settings/applications/LayoutPreference;

    move-result-object v5

    const v6, 0x7f0a0877

    invoke-virtual {v5, v6}, Lcom/android/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getHeaderView()Lcom/android/settings/applications/LayoutPreference;

    move-result-object v6

    const v7, 0x7f0a086f

    invoke-virtual {v6, v7}, Lcom/android/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getHeaderView()Lcom/android/settings/applications/LayoutPreference;

    move-result-object v7

    const v8, 0x7f0a0939

    invoke-virtual {v7, v8}, Lcom/android/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getHeaderView()Lcom/android/settings/applications/LayoutPreference;

    move-result-object v8

    const v9, 0x7f0a0631

    invoke-virtual {v8, v9}, Lcom/android/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getHeaderView()Lcom/android/settings/applications/LayoutPreference;

    move-result-object v9

    const v10, 0x7f0a0632

    invoke-virtual {v9, v10}, Lcom/android/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    const/16 v10, 0x8

    invoke-virtual {v6, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v11, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v11, v11, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    const v15, 0x7f121cf2

    const v10, 0x7f121cf1

    const/16 v16, 0x1

    const/4 v12, 0x2

    const/4 v13, 0x0

    if-nez v11, :cond_4

    iget-object v11, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-boolean v11, v11, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    if-eqz v11, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11, v10}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10, v15}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getContext()Landroid/content/Context;

    move-result-object v10

    const v11, 0x7f121d3c

    invoke-static {v10, v11}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getContext()Landroid/content/Context;

    move-result-object v10

    const v11, 0x7f121d3f

    new-array v15, v12, [Ljava/lang/Object;

    const-string v17, "#0074d4"

    aput-object v17, v15, v13

    iget-object v14, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v14, v14, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v14}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v15, v16

    invoke-virtual {v10, v11, v15}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v10

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getContext()Landroid/content/Context;

    move-result-object v10

    const v11, 0x7f121d42

    new-array v12, v12, [Ljava/lang/Object;

    const-string v14, "#0074d4"

    aput-object v14, v12, v13

    iget-object v14, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v14, v14, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v14}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v16

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v10, "TMO"

    sget-object v11, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getContext()Landroid/content/Context;

    move-result-object v10

    const v11, 0x7f121d45

    invoke-static {v10, v11}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v6, v13}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getContext()Landroid/content/Context;

    move-result-object v10

    const v11, 0x7f121d4a

    invoke-static {v10, v11}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getContext()Landroid/content/Context;

    move-result-object v10

    const v11, 0x7f121d4b

    invoke-static {v10, v11}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11, v10}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10, v15}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getContext()Landroid/content/Context;

    move-result-object v10

    const v11, 0x7f121d28

    invoke-static {v10, v11}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v10, "SPRINT"

    sget-object v11, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    const v11, 0x7f121d2e

    if-eqz v10, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10, v11}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v11}, Lcom/samsung/android/settings/WifiApUtils;->getStringID(I)I

    move-result v11

    new-array v14, v12, [Ljava/lang/Object;

    const-string v15, "#0074d4"

    aput-object v15, v14, v13

    iget-object v15, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v15, v15, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v15}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v14, v16

    invoke-virtual {v10, v11, v14}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v10

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getContext()Landroid/content/Context;

    move-result-object v10

    const v11, 0x7f121d32

    invoke-static {v11}, Lcom/samsung/android/settings/WifiApUtils;->getStringID(I)I

    move-result v11

    new-array v12, v12, [Ljava/lang/Object;

    const-string v14, "#0074d4"

    aput-object v14, v12, v13

    iget-object v14, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v14, v14, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v14}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v16

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v10, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mMHSCustomer:Ljava/util/HashSet;

    sget-object v11, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getContext()Landroid/content/Context;

    move-result-object v10

    const v11, 0x7f121d36

    invoke-static {v10, v11}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v6, v13}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getContext()Landroid/content/Context;

    move-result-object v10

    const v11, 0x7f121d4a

    invoke-static {v10, v11}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getContext()Landroid/content/Context;

    move-result-object v10

    const v11, 0x7f121d4b

    invoke-static {v10, v11}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_4
    iget-object v11, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-boolean v11, v11, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    const/4 v14, 0x3

    if-eqz v11, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11, v10}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10, v15}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getContext()Landroid/content/Context;

    move-result-object v10

    const v11, 0x7f121d08

    invoke-static {v10, v11}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getContext()Landroid/content/Context;

    move-result-object v10

    const v11, 0x7f121d0b

    new-array v15, v12, [Ljava/lang/Object;

    const-string v17, "#0074d4"

    aput-object v17, v15, v13

    iget-object v12, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v12, v12, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v12}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v15, v16

    invoke-virtual {v10, v11, v15}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v10

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getContext()Landroid/content/Context;

    move-result-object v10

    const v11, 0x7f121d0e

    new-array v12, v14, [Ljava/lang/Object;

    const-string v14, "#0074d4"

    aput-object v14, v12, v13

    iget-object v14, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v14, v14, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v14}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v16

    iget-object v14, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v14, v14, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-static {v14}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x2

    aput-object v14, v12, v15

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v10, "TMO"

    sget-object v11, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getContext()Landroid/content/Context;

    move-result-object v10

    const v11, 0x7f121d11

    invoke-static {v10, v11}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v6, v13}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getContext()Landroid/content/Context;

    move-result-object v10

    const v11, 0x7f121d4a

    invoke-static {v10, v11}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getContext()Landroid/content/Context;

    move-result-object v10

    const v11, 0x7f121d4b

    invoke-static {v10, v11}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11, v10}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10, v15}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getContext()Landroid/content/Context;

    move-result-object v10

    const v11, 0x7f121cf4

    invoke-static {v10, v11}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v10, "SPRINT"

    sget-object v11, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    const v11, 0x7f121cfa

    if-eqz v10, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10, v11}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v11}, Lcom/samsung/android/settings/WifiApUtils;->getStringID(I)I

    move-result v11

    const/4 v12, 0x2

    new-array v15, v12, [Ljava/lang/Object;

    const-string v12, "#0074d4"

    aput-object v12, v15, v13

    iget-object v12, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v12, v12, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v12}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v15, v16

    invoke-virtual {v10, v11, v15}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v10

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getContext()Landroid/content/Context;

    move-result-object v10

    const v11, 0x7f121cfe

    invoke-static {v11}, Lcom/samsung/android/settings/WifiApUtils;->getStringID(I)I

    move-result v11

    new-array v12, v14, [Ljava/lang/Object;

    const-string v15, "#0074d4"

    aput-object v15, v12, v13

    iget-object v15, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v15, v15, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v15}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v12, v16

    iget-object v15, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v15, v15, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-static {v15}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v15

    const/16 v18, 0x2

    aput-object v15, v12, v18

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v10, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mMHSCustomer:Ljava/util/HashSet;

    sget-object v11, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    const-string v10, "SPRINT"

    sget-object v11, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getContext()Landroid/content/Context;

    move-result-object v10

    const v11, 0x7f121d02

    invoke-static {v11}, Lcom/samsung/android/settings/WifiApUtils;->getStringID(I)I

    move-result v11

    const/4 v12, 0x4

    new-array v12, v12, [Ljava/lang/Object;

    const-string v15, "#0074d4"

    aput-object v15, v12, v13

    iget-object v15, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v15, v15, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v15}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v12, v16

    iget-object v15, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v15, v15, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-static {v15}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x2

    aput-object v15, v12, v16

    const-string v15, "WPA2"

    aput-object v15, v12, v14

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getContext()Landroid/content/Context;

    move-result-object v10

    const v11, 0x7f121d36

    invoke-static {v10, v11}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    invoke-virtual {v6, v13}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getContext()Landroid/content/Context;

    move-result-object v10

    const v11, 0x7f121d4a

    invoke-static {v10, v11}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getContext()Landroid/content/Context;

    move-result-object v10

    const v11, 0x7f121d4b

    invoke-static {v10, v11}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getHeaderView()Lcom/android/settings/applications/LayoutPreference;

    move-result-object v10

    const v11, 0x7f0a07f1

    invoke-virtual {v10, v11}, Lcom/android/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    const-string v11, "VZW"

    sget-object v12, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    const v11, 0x7f121d13

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v10, v13}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    :cond_a
    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_b
    :goto_4
    return-void
.end method

.method private initMemberVar()V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mActivity:Landroid/app/Activity;

    const v0, 0x7f15014b

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mDeviceInfo:Landroid/support/v7/preference/PreferenceScreen;

    const-string v0, "wifi_ap_config_category"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mMhsConfigPreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

    sget-boolean v0, Lcom/android/settings/Utils;->SPF_SupportMobileApDataLimit:Z

    if-eqz v0, :cond_0

    const-string v0, "wifi_ap_data_limit"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mApDdataLimit:Landroid/support/v7/preference/PreferenceCategory;

    :cond_0
    const-string v0, "wifi_ap_connected_devices"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mConnectedDevices:Landroid/support/v7/preference/PreferenceCategory;

    const-string v0, "empty_general"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->emptyCategory:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    const-string v0, "empty_general1"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->emptyCategory1:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    sget-boolean v0, Lcom/android/settings/Utils;->SPF_SupportMobileApEnhanced:Z

    if-eqz v0, :cond_1

    const-string v0, "smart_tethering"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mSmartTetheringSwitchPreference:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    const-string v0, "empty_general2"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->emptyCategory2:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    :cond_1
    return-void
.end method

.method private insertMHSChannelLogging(I)V
    .locals 4

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x4d

    iput v1, v0, Landroid/os/Message;->what:I

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "feature"

    const-string v3, "MHBC"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const-string v2, "extra"

    const-string v3, "AUTO"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_0
    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    const-string v2, "extra"

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    const-string v2, "extra"

    const-string v3, "2"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    const/4 v2, 0x3

    if-ne p1, v2, :cond_3

    const-string v2, "extra"

    const-string v3, "3"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    const/4 v2, 0x4

    if-ne p1, v2, :cond_4

    const-string v2, "extra"

    const-string v3, "4"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const/4 v2, 0x5

    if-ne p1, v2, :cond_5

    const-string v2, "extra"

    const-string v3, "5"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const/4 v2, 0x6

    if-ne p1, v2, :cond_6

    const-string v2, "extra"

    const-string v3, "6"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    const/4 v2, 0x7

    if-ne p1, v2, :cond_7

    const-string v2, "extra"

    const-string v3, "7"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    const/16 v2, 0x8

    if-ne p1, v2, :cond_8

    const-string v2, "extra"

    const-string v3, "8"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_8
    const/16 v2, 0x9

    if-ne p1, v2, :cond_9

    const-string v2, "extra"

    const-string v3, "9"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_9
    const/16 v2, 0xa

    if-ne p1, v2, :cond_a

    const-string v2, "extra"

    const-string v3, "10"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_a
    const/16 v2, 0xb

    if-ne p1, v2, :cond_b

    const-string v2, "extra"

    const-string v3, "11"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_b
    const/16 v2, 0x95

    if-ne p1, v2, :cond_c

    const-string v2, "extra"

    const-string v3, "149"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    :goto_0
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v0}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    return-void
.end method

.method private insertMHSHiddenSSIDLogging(Z)V
    .locals 4

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x4d

    iput v1, v0, Landroid/os/Message;->what:I

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "feature"

    const-string v3, "MHHD"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const-string v2, "extra"

    const-string v3, "ON"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v2, "extra"

    const-string v3, "OFF"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v0}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    return-void
.end method

.method private insertMHSMaxClientLogging(I)V
    .locals 4

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x4d

    iput v1, v0, Landroid/os/Message;->what:I

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "feature"

    const-string v3, "MHMC"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    const-string v2, "extra"

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_0
    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    const-string v2, "extra"

    const-string v3, "2"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x3

    if-ne p1, v2, :cond_2

    const-string v2, "extra"

    const-string v3, "3"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x4

    if-ne p1, v2, :cond_3

    const-string v2, "extra"

    const-string v3, "4"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const/4 v2, 0x5

    if-ne p1, v2, :cond_4

    const-string v2, "extra"

    const-string v3, "5"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const/4 v2, 0x6

    if-ne p1, v2, :cond_5

    const-string v2, "extra"

    const-string v3, "6"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const/4 v2, 0x7

    if-ne p1, v2, :cond_6

    const-string v2, "extra"

    const-string v3, "7"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    const/16 v2, 0x8

    if-ne p1, v2, :cond_7

    const-string v2, "extra"

    const-string v3, "8"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    const/16 v2, 0x9

    if-ne p1, v2, :cond_8

    const-string v2, "extra"

    const-string v3, "9"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_8
    const/16 v2, 0xa

    if-ne p1, v2, :cond_9

    const-string v2, "extra"

    const-string v3, "10"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    :goto_0
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v0}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    return-void
.end method

.method private insertMHSPasswordLogging()V
    .locals 4

    const-string v0, "WifiApSettings"

    const-string v1, "insertMHSPasswordLogging"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x4d

    iput v1, v0, Landroid/os/Message;->what:I

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "feature"

    const-string v3, "MHPW"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v0}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    return-void
.end method

.method private insertMHSSSIDLogging()V
    .locals 4

    const-string v0, "WifiApSettings"

    const-string v1, "insertMHSSSIDLogging"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x4d

    iput v1, v0, Landroid/os/Message;->what:I

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "feature"

    const-string v3, "MHSD"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v0}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    return-void
.end method

.method private insertMHSSecurityLogging(I)V
    .locals 4

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x4d

    iput v1, v0, Landroid/os/Message;->what:I

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "feature"

    const-string v3, "MHSC"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const-string v2, "extra"

    const-string v3, "OPEN"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    if-eq p1, v2, :cond_1

    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    :cond_1
    const-string v2, "extra"

    const-string v3, "WPA2 PSK"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v0}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    return-void
.end method

.method private insertMHSShowPasswordLogging(Z)V
    .locals 4

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x4d

    iput v1, v0, Landroid/os/Message;->what:I

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "feature"

    const-string v3, "MHSP"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    const-string v2, "extra"

    const-string v3, "check"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v2, "extra"

    const-string v3, "uncheck"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v0}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    return-void
.end method

.method private isConnected(Landroid/content/Context;)Z
    .locals 3

    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method private isFamilyTethering()Z
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_ap_smart_tethering_settings_with_family"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const-string v1, "WifiApSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getintvalue"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    return v2
.end method

.method private isMobileApON()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "WifiApSettings"

    const-string v2, "Wifi Manager is null so returning false"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isExtenderEnabled()Z

    move-result v2

    if-nez v2, :cond_2

    const/16 v2, 0xd

    if-eq v0, v2, :cond_1

    const/16 v2, 0xc

    if-ne v0, v2, :cond_2

    :cond_1
    const/4 v1, 0x1

    return v1

    :cond_2
    return v1
.end method

.method private isOpenWifiApAllowed()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    const-string v2, "enterprise_policy"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/enterprise/WifiPolicy;->isOpenWifiApAllowed()Z

    move-result v0

    :cond_1
    return v0
.end method

.method private isSimCheck()Z
    .locals 2

    sget-boolean v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "SimCheck.disable"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private isSmartTetheringEnabled()Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_ap_smart_tethering_settings"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    return v2

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_ap_smart_tethering_settings"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_1

    return v0

    :cond_1
    goto :goto_0

    :catch_0
    move-exception v1

    :goto_0
    return v0
.end method

.method private isSupportWifiSharing()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/Utils;->SUPPORT_MOBILEAP_WIFISHARING:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isWifiApSettingUserModificationAllowed()Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    const-string v2, "enterprise_policy"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/enterprise/WifiPolicy;->isWifiApSettingUserModificationAllowed()Z

    move-result v0

    :cond_1
    return v0
.end method

.method private isWifiSharingEnabled()Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_ap_wifi_sharing"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    return v2

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_ap_wifi_sharing"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_1

    return v0

    :cond_1
    goto :goto_0

    :catch_0
    move-exception v1

    :goto_0
    return v0
.end method

.method private longToBytes(J)[B
    .locals 5

    const/16 v0, 0x8

    new-array v1, v0, [B

    const/4 v2, 0x7

    :goto_0
    if-ltz v2, :cond_0

    const-wide/16 v3, 0xff

    and-long/2addr v3, p1

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    shr-long/2addr p1, v0

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private resetWifiAp(Landroid/net/wifi/WifiConfiguration;)V
    .locals 3

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0xc5

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->updateStatus()V

    iget-boolean v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mScreenType:Z

    if-nez v2, :cond_0

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->setHelpPreference(Ljava/lang/Boolean;)V

    :cond_0
    return-void
.end method

.method private saveTimeoutPreference(I)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mSharedPref:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "SAMSUNG_HOTSPOT"

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mSharedPref:Landroid/content/SharedPreferences;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "CONNECTION_TIMEOUT"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private setHelpPreference(Ljava/lang/Boolean;)V
    .locals 5

    const-string v0, "WifiApSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setHelpPreference: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x3

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mDeviceInfo:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v1}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->showHowTo()V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->emptyCategory:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->emptyCategory:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    invoke-virtual {v1, v4}, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;->seslSetSubheaderRoundedBg(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mDeviceInfo:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->emptyCategory:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    invoke-virtual {v1, v4}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->emptyCategory:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v1, v4}, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;->setOrder(I)V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mDeviceInfo:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mSsidPreference:Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;

    invoke-virtual {v1, v4}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mSsidPreference:Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;

    add-int/lit8 v4, v0, 0x2

    invoke-virtual {v1, v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->setOrder(I)V

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->addPasswordPreference()V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mDeviceInfo:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mPasswordPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1, v4}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mPasswordPreference:Landroid/support/v7/preference/Preference;

    add-int/lit8 v4, v0, 0x3

    invoke-virtual {v1, v4}, Landroid/support/v7/preference/Preference;->setOrder(I)V

    sget-boolean v1, Lcom/android/settings/Utils;->SPF_SupportMobileApEnhanced:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mDeviceInfo:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->emptyCategory2:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    invoke-virtual {v1, v4}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->emptyCategory2:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    add-int/lit8 v4, v0, 0x3

    invoke-virtual {v1, v4}, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;->setOrder(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mDeviceInfo:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mSmartTetheringSwitchPreference:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v1, v4}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    add-int/2addr v0, v3

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mSmartTetheringSwitchPreference:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    add-int/lit8 v4, v0, 0x3

    invoke-virtual {v1, v4}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setOrder(I)V

    :cond_1
    sget-boolean v1, Lcom/android/settings/Utils;->SPF_SupportMobileApDataLimit:Z

    if-eqz v1, :cond_2

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v0, 0x3

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->addAPMobileDataPreference(I)V

    :cond_2
    invoke-direct {p0, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->updateConnectedDevices(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mDeviceInfo:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mConnectedDevices:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mConnectedDevices:Landroid/support/v7/preference/PreferenceCategory;

    add-int/lit8 v2, v0, 0x4

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceCategory;->setOrder(I)V

    iput-boolean v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mScreenType:Z

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiApSwitchEnabler:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiApSwitchEnabler:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setChecked(Z)V

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mDeviceInfo:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v1}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->showDisabledHelp()V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->emptyCategory:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->emptyCategory:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    invoke-virtual {v1, v4}, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;->seslSetSubheaderRoundedBg(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mDeviceInfo:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->emptyCategory:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    invoke-virtual {v1, v4}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->emptyCategory:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v1, v4}, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;->setOrder(I)V

    :cond_5
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mDeviceInfo:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mSsidPreference:Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;

    invoke-virtual {v1, v4}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mSsidPreference:Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;

    add-int/lit8 v4, v0, 0x2

    invoke-virtual {v1, v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->setOrder(I)V

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->addPasswordPreference()V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mDeviceInfo:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mPasswordPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1, v4}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mPasswordPreference:Landroid/support/v7/preference/Preference;

    add-int/lit8 v4, v0, 0x3

    invoke-virtual {v1, v4}, Landroid/support/v7/preference/Preference;->setOrder(I)V

    sget-boolean v1, Lcom/android/settings/Utils;->SPF_SupportMobileApEnhanced:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mDeviceInfo:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->emptyCategory2:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    invoke-virtual {v1, v4}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->emptyCategory2:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    add-int/lit8 v4, v0, 0x3

    invoke-virtual {v1, v4}, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;->setOrder(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mDeviceInfo:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mSmartTetheringSwitchPreference:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v1, v4}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    add-int/2addr v0, v3

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mSmartTetheringSwitchPreference:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    add-int/lit8 v3, v0, 0x3

    invoke-virtual {v1, v3}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setOrder(I)V

    :cond_6
    sget-boolean v1, Lcom/android/settings/Utils;->SPF_SupportMobileApDataLimit:Z

    if-eqz v1, :cond_7

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v0, 0x3

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->addAPMobileDataPreference(I)V

    :cond_7
    iput-boolean v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mScreenType:Z

    :goto_0
    return-void
.end method

.method private setPasswordTitle(Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0601b2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v3, "\tUSER#DEFINED#PWD#\n"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Landroid/text/SpannableString;

    sget-object v4, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mDefaultTempPassword:Ljava/lang/String;

    invoke-direct {v3, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    move-object v0, v3

    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v3, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v4

    invoke-virtual {v0, v3, v2, v4, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mPasswordPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v2, v0}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    new-instance v3, Landroid/text/SpannableString;

    invoke-direct {v3, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    move-object v0, v3

    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v3, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v4

    invoke-virtual {v0, v3, v2, v4, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mPasswordPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v2, v0}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    :goto_0
    new-instance v3, Landroid/text/SpannableString;

    const v4, 0x7f121efe

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    move-object v0, v3

    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v3, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v4

    invoke-virtual {v0, v3, v2, v4, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mPasswordPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v2, v0}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method

.method private setRvfMode(I)V
    .locals 3

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x1b

    iput v1, v0, Landroid/os/Message;->what:I

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "mode"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v0}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    return-void
.end method

.method private setTimeout(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->saveTimeoutPreference(I)V

    return-void
.end method

.method private setWifiApConfigData()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_ap_5G_checked"

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mDialogConfigure:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    sget-boolean v2, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mChecked5GPrefer:Z

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    sget v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedChannel:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->saveLast2gChannel(I)V

    const-string v0, "WifiApSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "3 save requirePMF:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-boolean v2, v2, Landroid/net/wifi/WifiConfiguration;->requirePMF:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_ap_pmf_checked"

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-boolean v2, v2, Landroid/net/wifi/WifiConfiguration;->requirePMF:Z

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->saveIsShowPassword()V

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->updateStatus()V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    const/16 v1, 0xd

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getRvfMode()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mOldWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mDialogConfigure:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->getSecurityTypeIndex(Landroid/net/wifi/WifiConfiguration;)I

    move-result v3

    invoke-direct {p0, v0, v1, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->compareWifiConfiguration(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    if-eqz v0, :cond_0

    const-string v0, "WifiApSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mWifiConfig.hiddenSSID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-boolean v2, v2, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->removeAllConnectedDevice()V

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsProvisioningResultOk:Z

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->resetWifiAp(Landroid/net/wifi/WifiConfiguration;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mDialogConfigure:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->getTimeoutValueChangedFlag()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mDialogConfigure:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->setTimeoutValueChangedFlag(Z)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mOldWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mDialogConfigure:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->getSecurityTypeIndex(Landroid/net/wifi/WifiConfiguration;)I

    move-result v3

    invoke-direct {p0, v0, v1, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->compareWifiConfiguration(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;I)Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->setHelpPreference(Ljava/lang/Boolean;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private showDisabledHelp()V
    .locals 8

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->removeHeaderView()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d02ac

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->setHeaderView(Landroid/view/View;Z)V

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->disabledHelpText()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getHeaderView()Lcom/android/settings/applications/LayoutPreference;

    move-result-object v1

    const v2, 0x7f0a0946

    invoke-virtual {v1, v2}, Lcom/android/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getHeaderView()Lcom/android/settings/applications/LayoutPreference;

    move-result-object v2

    const v3, 0x7f0a0944

    invoke-virtual {v2, v3}, Lcom/android/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    const/16 v5, 0x8

    const/4 v6, 0x0

    const/4 v7, 0x2

    if-eq v4, v7, :cond_1

    iget-boolean v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->desktopMode:Z

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v6}, Landroid/widget/ScrollView;->setVisibility(I)V

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getHeaderView()Lcom/android/settings/applications/LayoutPreference;

    move-result-object v4

    const v5, 0x7f0a0947

    invoke-virtual {v4, v5}, Lcom/android/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v3, v4

    check-cast v3, Landroid/widget/LinearLayout;

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {v1, v5}, Landroid/widget/ScrollView;->setVisibility(I)V

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getHeaderView()Lcom/android/settings/applications/LayoutPreference;

    move-result-object v4

    const v5, 0x7f0a0945

    invoke-virtual {v4, v5}, Lcom/android/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v3, v4

    check-cast v3, Landroid/widget/LinearLayout;

    :goto_1
    if-eqz v3, :cond_2

    const/16 v4, 0xf

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->semSetRoundedCorners(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0601bb

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/LinearLayout;->semSetRoundedCornerColor(II)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    check-cast v4, Landroid/support/v7/app/AppCompatActivity;

    invoke-static {v4}, Lcom/android/settings/Utils;->isSetOpenTheme(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0805da

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    return-void
.end method

.method private showHowTo()V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->removeHeaderView()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d02b0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->setHeaderView(Landroid/view/View;Z)V

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->howToText()V

    return-void
.end method

.method private showInvalidActionToast()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->toast:Landroid/widget/Toast;

    const v1, 0x7f122002

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->toast:Landroid/widget/Toast;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->toast:Landroid/widget/Toast;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_1
    return-void
.end method

.method private showNoHotspotModeWarningDialog()V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/settings/WifiApUtils;->getDialogTheme()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f121d60

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    const v2, 0x7f121d5e

    invoke-static {v1, v2}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$28;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$28;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)V

    const v2, 0x7f12077a

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$29;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$29;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)V

    const v2, 0x7f120774

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$30;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$30;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->noHotspotModeWarningDialog:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->noHotspotModeWarningDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private smart_tethering_simCheck()Z
    .locals 3

    sget-boolean v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->DBG:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-string v0, "SimCheck.disable"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    const/4 v2, 0x5

    if-eq v0, v2, :cond_1

    const-string v0, "LOADED"

    const-string v2, "gsm.sim.state"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "READY"

    const-string v2, "gsm.sim.state"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    return v1
.end method

.method private startSmartTetheringApk(ZZLjava/lang/String;)V
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->checkIfActiveNetworkHasInternet()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "WifiApSettings"

    const-string v1, "internet is not available, so not starting smarttethering apk"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.sec.mhs.smarttethering"

    const-string v2, "com.sec.mhs.smarttethering.SemWifiApBleSAService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "family"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "server_call"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz p3, :cond_1

    const-string v1, "FMLY"

    invoke-virtual {p3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "group_id"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "WifiApSettings"

    const-string v3, "can\'t start service com.sec.mhs.smarttethering "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private updateConnectedDevices(Z)V
    .locals 14

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->semGetWifiApStaListDetail()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mConnectedDevices:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v2}, Landroid/support/v7/preference/PreferenceCategory;->removeAll()V

    new-instance v2, Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    const v3, 0x7f121ccf

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/Preference;->setTitle(I)V

    const/4 v3, 0x0

    if-nez v1, :cond_2

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mSwitch:Landroid/widget/Switch;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v4}, Landroid/widget/Switch;->requestFocus()Z

    :cond_1
    const v4, 0x7f121d5d

    invoke-virtual {v2, v4}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/Preference;->setSelectable(Z)V

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mConnectedDevices:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v4, v2}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mConnectedDevices:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v4, v3}, Landroid/support/v7/preference/PreferenceCategory;->setSelectable(Z)V

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mConnectedDevices:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v4, v2}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_4

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    aget-object v6, v5, v6

    const-string v7, "(null)"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const v7, 0x7f121cce

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    :cond_3
    new-instance v13, Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedDevice;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    aget-object v10, v5, v3

    const/4 v7, 0x1

    aget-object v11, v5, v7

    const/4 v7, 0x3

    aget-object v12, v5, v7

    move-object v7, v13

    move-object v9, v6

    invoke-direct/range {v7 .. v12}, Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedDevice;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mConnectedDevices:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v8, v7}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    return-void
.end method

.method private updateOptionsMenu()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->isSupportWifiSharing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    :cond_0
    return-void
.end method

.method private updateOptionsMenuIcon(Z)V
    .locals 8

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mAllowedMenuItem:Landroid/view/MenuItem;

    const/4 v1, 0x0

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mAllowedMenuItem:Landroid/view/MenuItem;

    const v4, 0x7f0803c0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mAllowedMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mAllowedMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mAllowedMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_1
    :goto_0
    sget-boolean v0, Lcom/android/settings/Utils;->SUPPORTMOBILEAPWPSPBC:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/settings/Utils;->SUPPORTMOBILEAPWPSPIN:Z

    if-eqz v0, :cond_b

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    const/16 v4, 0xd

    if-ne v0, v4, :cond_9

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v0

    sget-boolean v4, Lcom/android/settings/Utils;->SUPPORTMOBILEAPWPSPBC:Z

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWpsSwitch:Landroid/view/MenuItem;

    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_3
    sget-boolean v4, Lcom/android/settings/Utils;->SUPPORTMOBILEAPWPSPIN:Z

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWpspinclient:Landroid/view/MenuItem;

    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_4
    sget-boolean v4, Lcom/android/settings/Utils;->SUPPORTMOBILEAPWPSPBC:Z

    const/4 v5, 0x1

    const/4 v6, 0x3

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWpsSwitch:Landroid/view/MenuItem;

    if-eqz v0, :cond_5

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v7, v7, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    if-ne v7, v6, :cond_5

    move v7, v5

    goto :goto_1

    :cond_5
    move v7, v3

    :goto_1
    invoke-interface {v4, v7}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_6
    sget-boolean v4, Lcom/android/settings/Utils;->SUPPORTMOBILEAPWPSPIN:Z

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWpspinclient:Landroid/view/MenuItem;

    if-eqz v0, :cond_7

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v7, v7, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    if-ne v7, v6, :cond_7

    goto :goto_2

    :cond_7
    move v5, v3

    :goto_2
    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_8
    goto :goto_3

    :cond_9
    sget-boolean v0, Lcom/android/settings/Utils;->SUPPORTMOBILEAPWPSPBC:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWpsSwitch:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_a
    sget-boolean v0, Lcom/android/settings/Utils;->SUPPORTMOBILEAPWPSPIN:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWpspinclient:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_b
    :goto_3
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mConfigureMenuItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_d

    if-eqz p1, :cond_c

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mConfigureMenuItem:Landroid/view/MenuItem;

    const v1, 0x7f080596

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mConfigureMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_4

    :cond_c
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mConfigureMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mConfigureMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_d
    :goto_4
    return-void
.end method

.method private updateSmartTetheringSwitchState()V
    .locals 9

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mSmartTetheringSwitchPreference:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    if-nez v0, :cond_0

    const-string v0, "WifiApSettings"

    const-string v1, "mSmartTetheringSwitchPreference is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mSmartTetheringSwitchPreference:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->smart_tethering_simCheck()Z

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->checkIfActiveNetworkHasInternet()Z

    move-result v4

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->isSmartTetheringEnabled()Z

    move-result v5

    const-string v6, "WifiApSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateSmartTetheringSwitchState, isAirplaneMode:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ",isSimCheckPassed:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ",checkIfActiveNetworkHasInternet:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ",dBValue:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mSmartTetheringSwitchPreference:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    const v8, 0x7f121d80

    invoke-static {v7, v8}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    const v6, 0x7f121d7b

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mSmartTetheringSwitchPreference:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mSmartTetheringSwitchPreference:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setEnabled(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v7, "wifi_ap_smart_tethering_settings"

    invoke-static {v1, v7, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mSmartTetheringSwitchPreference:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    invoke-static {v2, v6}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    :cond_2
    if-nez v3, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mSmartTetheringSwitchPreference:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mSmartTetheringSwitchPreference:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setEnabled(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v6, "wifi_ap_smart_tethering_settings"

    invoke-static {v1, v6, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mSmartTetheringSwitchPreference:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    const v2, 0x7f121f97

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setSummary(I)V

    return-void

    :cond_3
    if-nez v4, :cond_4

    if-nez v5, :cond_4

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mSmartTetheringSwitchPreference:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mSmartTetheringSwitchPreference:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setEnabled(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v6, "wifi_ap_smart_tethering_settings"

    invoke-static {v1, v6, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mSmartTetheringSwitchPreference:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    const v2, 0x7f1218cd

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setSummary(I)V

    return-void

    :cond_4
    iget-object v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mSmartTetheringSwitchPreference:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v7, v1}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setEnabled(Z)V

    if-eqz v5, :cond_6

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mSmartTetheringSwitchPreference:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v2, v1}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setChecked(Z)V

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->isFamilyTethering()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mSmartTetheringSwitchPreference:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    const v2, 0x7f121d7a

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setSummary(I)V

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mSmartTetheringSwitchPreference:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    const v2, 0x7f121d7f

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setSummary(I)V

    goto :goto_1

    :cond_6
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mSmartTetheringSwitchPreference:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    invoke-static {v7, v6}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mSmartTetheringSwitchPreference:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setChecked(Z)V

    :goto_1
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mSmartTetheringSwitchPreference:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v1, p0}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method private updateStatus()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->showHowTo()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->showDisabledHelp()V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mSsidPreference:Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->updateSsid(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->setPasswordTitle(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private validate()V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mPasswordEdit:Landroid/widget/EditText;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mPasswordEdit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    :cond_0
    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mPasswordEdit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v2

    const/16 v3, 0x8

    if-lt v2, v3, :cond_3

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mPasswordEdit:Landroid/widget/EditText;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mPasswordEdit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v2

    const/4 v3, 0x1

    if-lt v2, v3, :cond_2

    if-eqz v0, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mPasswordEdit:Landroid/widget/EditText;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mPasswordEdit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v2

    if-nez v2, :cond_4

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->isOpenWifiApAllowed()Z

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    const/4 v1, 0x0

    :cond_4
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mPasswordDialog:Landroid/app/AlertDialog;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method private warnForHiddenNetwork()V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/settings/WifiApUtils;->getDialogTheme()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f120b65

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$19;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$19;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)V

    const v2, 0x7f120517

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$20;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$20;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)V

    const v2, 0x7f120475

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$21;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$21;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private warnForOpenNetwork()V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/settings/WifiApUtils;->getDialogTheme()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f12107c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$25;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$25;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)V

    const v2, 0x7f120517

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$26;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$26;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)V

    const v2, 0x7f120475

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$27;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$27;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private warnForOpenNetworkFromPasswordPref(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/settings/WifiApUtils;->getDialogTheme()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const-string v1, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f121d63

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    :cond_0
    const v1, 0x7f12107c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    :goto_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f120517

    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$22;

    invoke-direct {v2, p0, p1, p2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$22;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f120475

    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$23;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$23;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$24;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$24;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method checkIfActiveNetworkHasInternet()Z
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v2

    if-nez v2, :cond_0

    return v0

    :cond_0
    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v3

    if-eqz v3, :cond_1

    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    move v0, v4

    return v0
.end method

.method createApConfigWithCurrentSsid(Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iput-object p1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    const-string v1, "VZW"

    sget-object v2, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isExtenderEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v1

    const/16 v3, 0xd

    if-ne v1, v3, :cond_0

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {}, Lcom/samsung/android/settings/WifiApUtils;->getDialogTheme()I

    move-result v4

    invoke-direct {v1, v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v3, 0x7f121db9

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v3, 0x7f121da3

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f120511

    new-instance v3, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$36;

    invoke-direct {v3, p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$36;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;Landroid/net/wifi/WifiConfiguration;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f120475

    new-instance v3, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$37;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$37;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$38;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$38;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mConfigDialogCreate:Landroid/app/AlertDialog;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mConfigDialogCreate:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    const-wide/16 v3, 0x64

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v3, "WifiApSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error InterruptedException "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->updateStatus()V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getRvfMode()I

    move-result v1

    if-nez v1, :cond_1

    sput-boolean v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsProvisioningResultOk:Z

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->resetWifiAp(Landroid/net/wifi/WifiConfiguration;)V

    :cond_1
    :goto_1
    sget-boolean v1, Lcom/android/settings/Utils;->SPF_SupportMobileApEnhanced:Z

    if-eqz v1, :cond_2

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.samsung.android.server.wifi.softap.smarttethering.ssid_changed"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_2
    return-void
.end method

.method public createHelpStep2Dialog()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mHelpStep1Dialog:Lcom/samsung/android/settings/helpdialog/TwHelpDialog;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mHelpStep1Dialog:Lcom/samsung/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v0}, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->dismiss()V

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mHelpStep1Dialog:Lcom/samsung/android/settings/helpdialog/TwHelpDialog;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mHelpStep2Dialog:Lcom/samsung/android/settings/helpdialog/TwHelpDialog;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0d01b9

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mHelpStep2Dialog:Lcom/samsung/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mHelpStep2Dialog:Lcom/samsung/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v2}, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->applyLandscapeFullScreen(Landroid/content/Context;Landroid/view/Window;)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mHelpStep2Dialog:Lcom/samsung/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->setContentView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mHelpStep2Dialog:Lcom/samsung/android/settings/helpdialog/TwHelpDialog;

    sget-object v2, Lcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;->OPAQUE:Lcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->setTouchTransparencyMode(Lcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mHelpStep2Dialog:Lcom/samsung/android/settings/helpdialog/TwHelpDialog;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->setShowWrongInputToast(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mHelpStep2Dialog:Lcom/samsung/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->setOwnerActivity(Landroid/app/Activity;)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mHelpStep2Dialog:Lcom/samsung/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->showHelpDialog(Lcom/samsung/android/settings/helpdialog/TwHelpDialog;)V

    :cond_1
    return-void
.end method

.method protected dismissHelpDialog(Lcom/samsung/android/settings/helpdialog/TwHelpDialog;)V
    .locals 0

    invoke-virtual {p1}, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->dismiss()V

    return-void
.end method

.method public enableSwitchBar(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public getDialogMetricsCategory(I)I
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b033f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0xd48

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 12

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-boolean v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mIsFromHelp:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)V

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->addOnMenuVisibilityListener(Landroid/app/ActionBar$OnMenuVisibilityListener;)V

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mActivity:Landroid/app/Activity;

    invoke-static {v3}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mIsTablet:Z

    iget-boolean v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mIsTablet:Z

    if-nez v3, :cond_2

    const-string v3, "TMO"

    sget-object v4, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    const-string v3, "NEWCO"

    sget-object v4, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    const v4, 0x7f080641

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setIcon(I)V

    :cond_4
    const-string v3, "MTR"

    sget-object v4, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mSharedPref:Landroid/content/SharedPreferences;

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mActivity:Landroid/app/Activity;

    const-string v4, "SAMSUNG_HOTSPOT"

    invoke-virtual {v3, v4, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mSharedPref:Landroid/content/SharedPreferences;

    :cond_5
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v4, "DONT_DISPLAY_MPCS_WARNING"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_6

    move v3, v1

    goto :goto_1

    :cond_6
    move v3, v2

    :goto_1
    if-nez v3, :cond_7

    const/16 v4, 0x8

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->showDialog(I)V

    :cond_7
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mSwitch:Landroid/widget/Switch;

    if-nez v3, :cond_8

    new-instance v3, Landroid/widget/Switch;

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mActivity:Landroid/app/Activity;

    invoke-direct {v3, v4}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mSwitch:Landroid/widget/Switch;

    :cond_8
    const-string v3, "wifi"

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    iput-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    const-string v3, "phone"

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    iput-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mIsTablet:Z

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/Utils;->isLightTheme(Landroid/content/Context;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->misLightTheme:Z

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->wps_tether_pin:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mActivity:Landroid/app/Activity;

    check-cast v3, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v3}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiApSwitchEnabler:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    if-nez v4, :cond_9

    new-instance v4, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mHelpCtrl:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$IMobileAPHelpController;

    invoke-direct {v4, v3, v5, v6}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;-><init>(Landroid/content/Context;Lcom/android/settings/widget/SwitchBar;Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$IMobileAPHelpController;)V

    iput-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiApSwitchEnabler:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    goto :goto_2

    :cond_9
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v4}, Lcom/android/settings/widget/SwitchBar;->show()V

    :goto_2
    const/4 v4, 0x0

    if-eqz p1, :cond_a

    const-string v5, "nosimwarningdialog"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    :cond_a
    if-eqz v4, :cond_b

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiApSwitchEnabler:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiApSwitchEnabler:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v5, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showDialog(I)V

    :cond_b
    const/4 v5, 0x0

    if-eqz p1, :cond_c

    const-string v6, "warnWifiDisableDialogshow"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    :cond_c
    const/4 v6, 0x3

    if-eqz v5, :cond_d

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiApSwitchEnabler:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    if-eqz v7, :cond_d

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiApSwitchEnabler:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v7, v6}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showDialog(I)V

    :cond_d
    iget-object v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mSwitch:Landroid/widget/Switch;

    iget-object v8, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f070039

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    invoke-virtual {v7, v2, v2, v8, v2}, Landroid/widget/Switch;->setPadding(IIII)V

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    if-eqz v7, :cond_e

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    const/16 v8, 0x10

    invoke-virtual {v7, v8, v8}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    :cond_e
    iget-object v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiApSwitchEnabler:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v7, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setInformation(Lcom/android/settings/SettingsPreferenceFragment;)V

    const-string v7, "SPRINT"

    sget-object v8, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    if-eqz v7, :cond_f

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    const v8, 0x7f121f8e

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_f
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const-string v9, "action_bar"

    const-string v10, "id"

    const-string v11, "android"

    invoke-virtual {v8, v9, v10, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    if-eqz v7, :cond_10

    sget-boolean v8, Lcom/android/settings/Utils;->SUPPORTMOBILEAPWPSPBC:Z

    if-eqz v8, :cond_10

    iget-object v8, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    :cond_10
    iget-object v8, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mSsidPreference:Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;

    if-nez v8, :cond_11

    new-instance v8, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v8, p0, v9}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;Landroid/net/wifi/WifiConfiguration;)V

    iput-object v8, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mSsidPreference:Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;

    :cond_11
    iget-object v8, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mPasswordPreference:Landroid/support/v7/preference/Preference;

    if-nez v8, :cond_12

    new-instance v8, Landroid/support/v7/preference/Preference;

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mActivity:Landroid/app/Activity;

    invoke-direct {v8, v9}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mPasswordPreference:Landroid/support/v7/preference/Preference;

    iget-object v8, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mPasswordPreference:Landroid/support/v7/preference/Preference;

    const v9, 0x7f121edc

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    :cond_12
    sget-boolean v8, Lcom/android/settings/Utils;->SPF_SupportMobileApDataLimit:Z

    if-eqz v8, :cond_13

    iget-object v8, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mApDataLimitPreference:Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;

    if-nez v8, :cond_13

    new-instance v8, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mApDataLimitPreference:Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;

    :cond_13
    iget-object v8, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->emptyCategory:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    if-eqz v8, :cond_14

    iget-object v8, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->emptyCategory:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    const/16 v9, 0xc

    invoke-virtual {v8, v9}, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;->seslSetSubheaderRoundedBg(I)V

    :cond_14
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "desktopmode"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    iput-object v8, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mDeskManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    iget-object v8, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mDeskManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    if-eqz v8, :cond_15

    iget-object v8, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mDeskManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    invoke-static {}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->isDesktopMode()Z

    move-result v8

    iput-boolean v8, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->desktopMode:Z

    :cond_15
    const-string v8, "WifiApSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onCreate, desktopMode = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v10, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->desktopMode:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->setHasOptionsMenu(Z)V

    const-string v8, "MTR"

    sget-object v9, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_16

    iget-object v8, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v8

    const/16 v9, 0xd

    if-eq v8, v9, :cond_16

    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->bDisableMifi:Z

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiApSwitchEnabler:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v9, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setEnabled(Z)V

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiApSwitchEnabler:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v9, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setChecked(Z)V

    :cond_16
    iget-object v8, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->setHelpPreference(Ljava/lang/Boolean;)V

    iget-boolean v8, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mIsFromHelp:Z

    if-eqz v8, :cond_1d

    const-string v8, "VZW"

    sget-object v9, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_17

    const-string v8, "SPRINT"

    sget-object v9, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1d

    :cond_17
    iget-object v8, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiApSwitchEnabler:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    if-eqz v8, :cond_1d

    iget-boolean v8, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mIsTablet:Z

    if-eqz v8, :cond_1c

    iget-object v8, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiApSwitchEnabler:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mSwitchPref:Landroid/support/v7/preference/SwitchPreferenceCompat;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->isSimCheck()Z

    move-result v8

    if-eqz v8, :cond_18

    iget-object v8, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v8

    const/4 v9, 0x5

    if-eq v8, v9, :cond_18

    const-string v8, "LOADED"

    const-string v9, "gsm.sim.state"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_18

    const-string v8, "READY"

    const-string v9, "gsm.sim.state"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_18

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiApSwitchEnabler:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v6, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showDialog(I)V

    goto :goto_3

    :cond_18
    iget-object v8, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v8

    const v9, 0x7f120a63

    if-eqz v8, :cond_1a

    if-eqz v0, :cond_19

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    invoke-static {v6, v9, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_3

    :cond_19
    iget-object v8, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiApSwitchEnabler:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v8, v6}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showDialog(I)V

    goto :goto_3

    :cond_1a
    if-eqz v0, :cond_1b

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    invoke-static {v6, v9, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_3

    :cond_1b
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiApSwitchEnabler:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v6, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setSoftapEnabled(Z)Z

    goto :goto_3

    :cond_1c
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiApSwitchEnabler:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    iget-object v8, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v6, v8, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    :cond_1d
    :goto_3
    sget-boolean v6, Lcom/android/settings/Utils;->SPF_SupportMobileApEnhanced:Z

    if-eqz v6, :cond_20

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mSmartTetheringSwitchPreference:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->isSmartTetheringEnabled()Z

    move-result v8

    invoke-virtual {v6, v8}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setChecked(Z)V

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mSmartTetheringSwitchPreference:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    iget-object v8, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    const v9, 0x7f121d80

    invoke-static {v8, v9}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->isFamilyTethering()Z

    move-result v6

    if-eqz v6, :cond_1e

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->isSmartTetheringEnabled()Z

    move-result v6

    if-eqz v6, :cond_1e

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mSmartTetheringSwitchPreference:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    const v8, 0x7f121d7a

    invoke-virtual {v6, v8}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setSummary(I)V

    goto :goto_4

    :cond_1e
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->isSmartTetheringEnabled()Z

    move-result v6

    if-eqz v6, :cond_1f

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mSmartTetheringSwitchPreference:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    const v8, 0x7f121d7f

    invoke-virtual {v6, v8}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setSummary(I)V

    goto :goto_4

    :cond_1f
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mSmartTetheringSwitchPreference:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    iget-object v8, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    const v9, 0x7f121d7b

    invoke-static {v8, v9}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    :goto_4
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mSmartTetheringSwitchPreference:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v6, p0}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    :cond_20
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v6

    const-string v8, "CscFeature_Common_EnableSprintExtension"

    invoke-virtual {v6, v8}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_21

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    const-string v8, "enterprise_policy"

    invoke-virtual {v6, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    :cond_21
    sget-boolean v6, Lcom/android/settings/Utils;->SUPPORT_MOBILEAP_WIFISHARING:Z

    const/16 v8, 0xa

    if-eqz v6, :cond_22

    sget-boolean v6, Lcom/android/settings/Utils;->SUPPORT_MOBILEAP_WIFISHARINGLITE:Z

    if-nez v6, :cond_22

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v6, "wifi_ap_wifi_sharing"

    invoke-static {v2, v6, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v8, :cond_23

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v6, "wifi_ap_wifi_sharing"

    invoke-static {v2, v6, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_5

    :cond_22
    sget-boolean v1, Lcom/android/settings/Utils;->SUPPORT_MOBILEAP_WIFISHARINGLITE:Z

    if-eqz v1, :cond_23

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v6, "wifi_ap_wifi_sharing"

    invoke-static {v1, v6, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v8, :cond_23

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v6, "wifi_ap_wifi_sharing"

    invoke-static {v1, v6, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_23
    :goto_5
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    const-string v0, "WifiApSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WifiApSettings onActivityResult requestCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " resultCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiApSwitchEnabler:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setSoftapEnabled(Z)Z

    goto/16 :goto_1

    :cond_0
    if-nez p1, :cond_8

    const/4 v1, -0x1

    if-ne p2, v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiApSwitchEnabler:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    if-nez v1, :cond_1

    return-void

    :cond_1
    sget-boolean v1, Lcom/android/settings/Utils;->SUPPORT_MOBILEAP_WIFISHARING:Z

    if-eqz v1, :cond_3

    const-string v1, "WifiApSettings"

    const-string v2, "Setting provision success"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->setProvisionSuccess(Z)Z

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->isWifiSharingEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->isMobileApON()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_2

    sput-boolean v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsProvisioningResultOk:Z

    :cond_2
    return-void

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiApSwitchEnabler:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setSoftapEnabled(Z)Z

    goto/16 :goto_1

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiApSwitchEnabler:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    if-nez v1, :cond_5

    return-void

    :cond_5
    sget-boolean v1, Lcom/android/settings/Utils;->SUPPORT_MOBILEAP_WIFISHARING:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_7

    const-string v1, "WifiApSettings"

    const-string v3, "Setting provision failed"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->setProvisionSuccess(Z)Z

    const-string v1, "VZW"

    sget-object v3, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->isWifiSharingEnabled()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isWifiConnected(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "WifiApSettings"

    const-string v2, "Wifi Sharing Provision failed but wifi connected"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->isMobileApON()Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiApSwitchEnabler:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setSoftapEnabled(Z)Z

    :cond_6
    return-void

    :cond_7
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->enableSwitchBar(Z)V

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->updateSwitchBarText(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiApSwitchEnabler:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setEnabled(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiApSwitchEnabler:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setChecked(Z)V

    move v1, v2

    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_saved_state"

    invoke-static {v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v3

    goto :goto_0

    :catch_0
    move-exception v3

    :goto_0
    if-ne v1, v0, :cond_8

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v0}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "wifi_saved_state"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_8
    :goto_1
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onBlacklistStatusChanged(IZ)V
    .locals 0

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "desktopmode"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mDeskManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mDeskManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mDeskManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    invoke-static {}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->isDesktopMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->desktopMode:Z

    :cond_0
    const-string v0, "WifiApSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigurationChanged, desktopMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->desktopMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->showHowTo()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->showDisabledHelp()V

    :goto_0
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mIsTablet:Z

    if-nez v0, :cond_3

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->updateOptionsMenuIcon(Z)V

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mDialogConfigure:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mDialogConfigure:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mDialogConfigure:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->dismissSpinnerPopup()V

    :cond_4
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    const-string v0, "WifiApSettings"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mActivity:Landroid/app/Activity;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->initMHSFeature(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mIsTablet:Z

    new-instance v0, Lcom/android/settings/datausage/DataSaverBackend;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/datausage/DataSaverBackend;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    invoke-virtual {v0}, Lcom/android/settings/datausage/DataSaverBackend;->isDataSaverEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mDataSaverEnabled:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/app/UiModeManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/UiModeManager;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->uiModeManager:Landroid/app/UiModeManager;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mMHSCustomer:Ljava/util/HashSet;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mMHSCustomerNames:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mMHSCustomer:Ljava/util/HashSet;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mMHSCustomerNames:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mIsTablet:Z

    if-nez v1, :cond_1

    const-string v1, "VZW"

    sget-object v2, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "SPRINT"

    sget-object v2, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsHelpFromTetherSettings:Z

    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mIsFromHelp:Z

    sput-boolean v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsHelpFromTetherSettings:Z

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v2, "fromHelp"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mIsFromHelp:Z

    const-string v2, "fromHelp"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    :cond_2
    :goto_1
    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mIsFromHelp:Z

    if-nez v1, :cond_3

    if-eqz p1, :cond_3

    const-string v1, "mIsFromHelp"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mIsFromHelp:Z

    :cond_3
    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mIsFromHelp:Z

    if-eqz v1, :cond_5

    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$4;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)V

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mHelpCtrl:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$IMobileAPHelpController;

    const-string v1, "VZW"

    sget-object v2, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "SPRINT"

    sget-object v2, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    const-string v1, "wifi"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->createHelpStep1Dialog()V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mHelpStep1Dialog:Lcom/samsung/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->showHelpDialog(Lcom/samsung/android/settings/helpdialog/TwHelpDialog;)V

    :cond_5
    sget-object v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mDefaultTempPassword:Ljava/lang/String;

    const/4 v2, 0x1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "wifi_ap_random_password"

    invoke-static {v1, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mDefaultTempPassword:Ljava/lang/String;

    const-string v1, "WifiApSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mDefaultTempPassword is ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mDefaultTempPassword:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mDefaultTempPassword:Ljava/lang/String;

    if-eqz v1, :cond_6

    sget-object v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mDefaultTempPassword:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x4

    const-wide/16 v4, 0x0

    invoke-direct {p0, v3, v4, v5}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getRandomAlphabet(IJ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x3

    const-wide/16 v6, 0x1

    invoke-direct {p0, v3, v6, v7}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getRandomDigits(IJ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v2, v4, v5}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getRandomSymbol(IJ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mDefaultTempPassword:Ljava/lang/String;

    const-string v1, "WifiApSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "generate mDefaultTempPassword is ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mDefaultTempPassword:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "wifi_ap_random_password"

    sget-object v4, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mDefaultTempPassword:Ljava/lang/String;

    invoke-static {v1, v3, v4}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_7
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "wifi_ap_powersave_mode_checked"

    const/16 v4, 0xa

    invoke-static {v1, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_8

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "wifi_ap_powersave_mode_checked"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v1, "WifiApSettings"

    const-string v2, "Settings.Secure.WIFI_AP_POWERSAVE_MODE_CHECKED : 1"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    sget-boolean v1, Lcom/android/settings/Utils;->SPF_SupportMobileApEnhanced:Z

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_ap_smart_tethering_settings"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mSmartTetheringPreferenceObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_ap_smart_tethering_settings"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->isSmartTethering:I

    :cond_9
    const-string v0, "WifiApSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isFromHelp : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mIsFromHelp:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/net/wifi/WifiApWhiteList;->getInstance()Landroid/net/wifi/WifiApWhiteList;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiApSettings:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->initMemberVar()V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    invoke-virtual {v0}, Lcom/android/settings/datausage/DataSaverBackend;->isDataSaverEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->onDataSaverChanged(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/datausage/DataUsageUtils;->isDataAllowed(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mDataAllowed:Z

    const-string v0, "WifiApSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDataAllowed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mDataAllowed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mDataAllowed:Z

    if-nez v0, :cond_a

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->finish()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->onDestroy()V

    :cond_a
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 12

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    const v3, 0x7f1301be

    invoke-direct {v1, v2, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    move-object v0, v1

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const v2, 0x7f1212e9

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne p1, v3, :cond_2

    const-string v3, "VZW"

    sget-object v5, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mConfigureDialogListener:Landroid/content/DialogInterface$OnClickListener;

    iget-object v8, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mTempConfig:Landroid/net/wifi/WifiConfiguration;

    iget-boolean v10, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mDismissDialog:Z

    iget-boolean v11, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mContinueOpen:Z

    move-object v5, v3

    invoke-direct/range {v5 .. v11}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;ZZ)V

    iput-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mDialogConfigure:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mHelpStep1Dialog:Lcom/samsung/android/settings/helpdialog/TwHelpDialog;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mHelpStep1Dialog:Lcom/samsung/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->dismissHelpDialog(Lcom/samsung/android/settings/helpdialog/TwHelpDialog;)V

    goto :goto_0

    :cond_0
    new-instance v3, Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mConfigureDialogListener:Landroid/content/DialogInterface$OnClickListener;

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v3, v5, v6, v7}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/net/wifi/WifiConfiguration;)V

    iput-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mDialogConfigure:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    :cond_1
    :goto_0
    iput-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mTempConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mConfigureDialogDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    const v3, 0x7f1208ed

    invoke-static {v2, v3}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mDialogConfigure:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    return-object v2

    :cond_2
    const v5, 0x7f120475

    const/4 v6, 0x2

    const/4 v7, 0x0

    if-ne p1, v6, :cond_3

    const v6, 0x7f1208ee

    invoke-static {v2, v6}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getTimeoutValueFromPreference()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getTimeoutIndexFromValue(I)I

    move-result v2

    add-int/2addr v2, v3

    iput v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mSelectedTimeoutValue:I

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f03010d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v2

    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {}, Lcom/samsung/android/settings/WifiApUtils;->getDialogTheme()I

    move-result v8

    invoke-direct {v3, v6, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v6, 0x7f121d58

    invoke-virtual {v3, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    iget v8, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mSelectedTimeoutValue:I

    new-instance v9, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$11;

    invoke-direct {v9, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$11;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)V

    invoke-virtual {v6, v2, v8, v9}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    new-instance v8, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$10;

    invoke-direct {v8, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$10;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)V

    invoke-virtual {v6, v5, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mTimeoutDlg:Landroid/app/AlertDialog;

    const v5, 0x7f0d02b9

    invoke-virtual {v1, v5, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    const v6, 0x7f0a04c0

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iget-object v8, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    const v9, 0x7f121d90

    invoke-static {v8, v9}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v8, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mTimeoutDlg:Landroid/app/AlertDialog;

    invoke-virtual {v8}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v8

    invoke-virtual {v8, v5, v4, v7}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mTimeoutDlg:Landroid/app/AlertDialog;

    return-object v4

    :cond_3
    const/4 v2, 0x7

    if-ne p1, v2, :cond_5

    const-string v2, "WifiApSettings"

    const-string v3, "create dialog  DIALOG_OPEN_SECURITY_WARNING"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {}, Lcom/samsung/android/settings/WifiApUtils;->getDialogTheme()I

    move-result v6

    invoke-direct {v2, v3, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v3, 0x7f0d02b2

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    iget-boolean v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mIsTablet:Z

    if-eqz v4, :cond_4

    const v4, 0x7f0a056c

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f060380

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_4
    const v4, 0x7f120511

    new-instance v6, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$12;

    invoke-direct {v6, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$12;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)V

    invoke-virtual {v2, v4, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v4, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$13;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$13;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)V

    invoke-virtual {v2, v5, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    return-object v4

    :cond_5
    const/16 v2, 0x8

    if-ne p1, v2, :cond_6

    const v2, 0x7f0d02b1

    invoke-virtual {v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mView:Landroid/view/View;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mView:Landroid/view/View;

    const v3, 0x7f0a0179

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {}, Lcom/samsung/android/settings/WifiApUtils;->getDialogTheme()I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v4, 0x7f121181

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v4, 0x7f12077a

    new-instance v5, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$14;

    invoke-direct {v5, p0, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$14;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;Landroid/widget/CheckBox;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    return-object v4

    :cond_6
    const/16 v2, 0x38

    if-ne p1, v2, :cond_7

    sget-boolean v2, Lcom/android/settings/Utils;->SUPPORTMOBILEAPWPSPBC:Z

    if-eqz v2, :cond_a

    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->wps_tether_pin:Ljava/lang/String;

    invoke-direct {v2, v3, v7, v4}, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWpsApDialog:Landroid/app/AlertDialog;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWpsApDialog:Landroid/app/AlertDialog;

    return-object v2

    :cond_7
    const/16 v2, 0x39

    if-ne p1, v2, :cond_8

    sget-boolean v2, Lcom/android/settings/Utils;->SUPPORTMOBILEAPWPSPIN:Z

    if-eqz v2, :cond_a

    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->wps_tether_pin:Ljava/lang/String;

    invoke-direct {v2, v3, v6, v4}, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWpsApDialog:Landroid/app/AlertDialog;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWpsApDialog:Landroid/app/AlertDialog;

    return-object v2

    :cond_8
    const/16 v2, 0x3a

    if-ne p1, v2, :cond_9

    sget-boolean v2, Lcom/android/settings/Utils;->SUPPORTMOBILEAPWPSPIN:Z

    if-eqz v2, :cond_a

    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/PinDialog;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mPinDialogListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/settings/wifi/mobileap/PinDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)V

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mPinDialog:Lcom/samsung/android/settings/wifi/mobileap/PinDialog;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mPinDialog:Lcom/samsung/android/settings/wifi/mobileap/PinDialog;

    return-object v2

    :cond_9
    const/16 v2, 0x9

    if-ne p1, v2, :cond_a

    const-string v2, "WifiApSettings"

    const-string v5, "create dialog  DIALOG_MODIFY_PASSWORD"

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    nop

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v5, "layout_inflater"

    invoke-virtual {v2, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v5, v5, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    iput-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mOldPassword:Ljava/lang/String;

    const v5, 0x7f0d02b3

    invoke-virtual {v2, v5, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f0a05bd

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mPasswordErrorText:Landroid/widget/TextView;

    const v5, 0x7f0a05b9

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mPasswordEdit:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mPasswordEdit:Landroid/widget/EditText;

    const v6, 0x7f121efe

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setHint(I)V

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mPasswordEdit:Landroid/widget/EditText;

    invoke-virtual {v5, v3}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mPasswordEdit:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v6, v6, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mPasswordEdit:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mPasswordEdit:Landroid/widget/EditText;

    new-array v3, v3, [Landroid/text/InputFilter;

    new-instance v6, Lcom/android/settings/Utils$EmojiInputFilter;

    iget-object v8, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mPasswordEdit:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v6, v8}, Lcom/android/settings/Utils$EmojiInputFilter;-><init>(Landroid/content/Context;)V

    aput-object v6, v3, v7

    invoke-virtual {v5, v3}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mPasswordEdit:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->passwordWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mPasswordEdit:Landroid/widget/EditText;

    const/16 v5, 0x91

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setInputType(I)V

    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {}, Lcom/samsung/android/settings/WifiApUtils;->getDialogTheme()I

    move-result v6

    invoke-direct {v3, v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v5, 0x7f121d66

    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v5, 0x7f121eeb

    new-instance v6, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$15;

    invoke-direct {v6, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$15;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)V

    invoke-virtual {v3, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v5, 0x7f121df0

    new-instance v6, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$16;

    invoke-direct {v6, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$16;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)V

    invoke-virtual {v3, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mPasswordDialog:Landroid/app/AlertDialog;

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mPasswordDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x15

    invoke-virtual {v5, v6}, Landroid/view/Window;->setSoftInputMode(I)V

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mPasswordDialog:Landroid/app/AlertDialog;

    return-object v5

    :cond_a
    return-object v4
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    const v2, 0x7f121d53

    invoke-interface {p1, v1, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mAllowedMenuItem:Landroid/view/MenuItem;

    const v2, 0x7f121d54

    invoke-static {v2}, Lcom/samsung/android/settings/WifiApUtils;->getStringID(I)I

    move-result v2

    const/4 v3, 0x3

    invoke-interface {p1, v1, v3, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mConfigureMenuItem:Landroid/view/MenuItem;

    sget-boolean v2, Lcom/android/settings/Utils;->SUPPORTMOBILEAPWPSPBC:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v2

    const/4 v4, 0x6

    const v5, 0x7f121e9f

    invoke-interface {p1, v1, v4, v1, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWpsSwitch:Landroid/view/MenuItem;

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWpsSwitch:Landroid/view/MenuItem;

    const v5, 0x7f0803bf

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWpsSwitch:Landroid/view/MenuItem;

    if-eqz v2, :cond_0

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v5, v5, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    if-ne v5, v3, :cond_0

    move v5, v0

    goto :goto_0

    :cond_0
    move v5, v1

    :goto_0
    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_1
    sget-boolean v2, Lcom/android/settings/Utils;->SUPPORTMOBILEAPWPSPIN:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v2

    const/4 v4, 0x7

    const v5, 0x7f121ea0

    invoke-interface {p1, v1, v4, v1, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWpspinclient:Landroid/view/MenuItem;

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWpspinclient:Landroid/view/MenuItem;

    if-eqz v2, :cond_2

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v5, v5, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    if-ne v5, v3, :cond_2

    move v3, v0

    goto :goto_1

    :cond_2
    move v3, v1

    :goto_1
    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_3
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mAllowedMenuItem:Landroid/view/MenuItem;

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mConfigureMenuItem:Landroid/view/MenuItem;

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const/16 v2, 0x9

    const-string v3, ""

    invoke-interface {p1, v1, v2, v1, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mQrCodeMenuItem:Landroid/view/MenuItem;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mQrCodeMenuItem:Landroid/view/MenuItem;

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f080155

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060015

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v4, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mQrCodeMenuItem:Landroid/view/MenuItem;

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mQrCodeMenuItem:Landroid/view/MenuItem;

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v5

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-boolean v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mIsFromHelp:Z

    if-nez v4, :cond_4

    const-string v4, "TMO"

    sget-object v5, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "NEWCO"

    sget-object v5, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const v4, 0x7f121d58

    invoke-interface {p1, v1, v3, v1, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    const v5, 0x7f080597

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_4
    sget-boolean v4, Lcom/android/settings/Utils;->SUPPORT_MOBILEAP_WIFISHARING:Z

    if-eqz v4, :cond_6

    const/16 v4, 0x8

    const v5, 0x7f121cab

    invoke-interface {p1, v1, v4, v1, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiSharing:Landroid/view/MenuItem;

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiSharing:Landroid/view/MenuItem;

    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Wifi_DisableMobileApWifiConcurrency"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    const v4, 0x7f121cab

    const-string v5, "VZW"

    sget-object v6, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->isWifiSharingEnabled()Z

    move-result v5

    if-eqz v5, :cond_5

    const v4, 0x7f121dc6

    goto :goto_2

    :cond_5
    nop

    :cond_6
    :goto_2
    const-string v4, "VZW"

    sget-object v5, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-boolean v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mIsFromHelp:Z

    if-nez v4, :cond_7

    const/4 v4, 0x5

    const v5, 0x7f120b1c

    invoke-interface {p1, v1, v4, v1, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    const v5, 0x7f0803f1

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_7
    iget-boolean v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mIsTablet:Z

    if-nez v4, :cond_9

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    if-ne v4, v3, :cond_8

    goto :goto_3

    :cond_8
    move v0, v1

    :goto_3
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->updateOptionsMenuIcon(Z)V

    :cond_9
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->updateOptionsMenu()V

    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onDataSaverChanged(Z)V
    .locals 3

    const-string v0, "WifiApSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDataSaverChanged is ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mDataSaverEnabled:Z

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mDataSaverEnabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->finish()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->onDestroy()V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mApDeviceInfoDialogShow:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mIsFromHelp:Z

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mDialogConfigure:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mDialogConfigure:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mHelpStep1Dialog:Lcom/samsung/android/settings/helpdialog/TwHelpDialog;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mHelpStep1Dialog:Lcom/samsung/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v0}, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->dismiss()V

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mHelpStep1Dialog:Lcom/samsung/android/settings/helpdialog/TwHelpDialog;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mHelpStep2Dialog:Lcom/samsung/android/settings/helpdialog/TwHelpDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mHelpStep2Dialog:Lcom/samsung/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v0}, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->dismiss()V

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mHelpStep2Dialog:Lcom/samsung/android/settings/helpdialog/TwHelpDialog;

    :cond_2
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroyView()V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 10

    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiApSettings:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "WifiApSettings"

    const-string v1, "WifiApSettings is null. Make WeakReference again for WifiApSettings"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiApSettings:Ljava/lang/ref/WeakReference;

    :cond_0
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiApSettings:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiApSettings:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {v0}, Lcom/android/settings/SettingsPreferenceFragment;->isResumed()Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsForegroundWifiSettings:Z

    if-nez v0, :cond_1

    const-string v0, "WifiApSettings"

    const-string v2, "WifiApSettings is not acivated. Is this function called after onPause?"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v2, 0x102002c

    const v3, 0x7f1212e9

    if-eq v0, v2, :cond_19

    const/4 v2, 0x2

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_0

    const/4 v3, 0x0

    const/4 v5, 0x3

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_5

    :pswitch_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Landroid/preference/PreferenceActivity;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/preference/PreferenceActivity;

    const-class v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const v5, 0x7f121d71

    const/4 v6, 0x0

    const/16 v8, 0x64

    move-object v7, p0

    invoke-virtual/range {v2 .. v8}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getMetricsCategory()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    const-class v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    const v2, 0x7f121d71

    invoke-virtual {v0, v2}, Lcom/android/settings/core/SubSettingLauncher;->setTitle(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    :goto_0
    return v1

    :pswitch_1
    sget-boolean v0, Lcom/android/settings/Utils;->SUPPORT_MOBILEAP_WIFISHARING:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mIsFromHelp:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mHelpStep1Dialog:Lcom/samsung/android/settings/helpdialog/TwHelpDialog;

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->createHelpStep1Dialog()V

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->showInvalidActionToast()V

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mHelpStep1Dialog:Lcom/samsung/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->showHelpDialog(Lcom/samsung/android/settings/helpdialog/TwHelpDialog;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->showInvalidActionToast()V

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Landroid/preference/PreferenceActivity;

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/preference/PreferenceActivity;

    const-class v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWifiSharingSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const v5, 0x7f121cab

    const/4 v6, 0x0

    const/16 v8, 0x64

    move-object v7, p0

    invoke-virtual/range {v2 .. v8}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_1

    :cond_7
    new-instance v0, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getMetricsCategory()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    const-class v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApWifiSharingSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    const v2, 0x7f121cab

    invoke-virtual {v0, v2}, Lcom/android/settings/core/SubSettingLauncher;->setTitle(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    :cond_8
    :goto_1
    return v1

    :pswitch_2
    sget-boolean v0, Lcom/android/settings/Utils;->SUPPORTMOBILEAPWPSPIN:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v0

    const/16 v2, 0x3a

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->showDialog(I)V

    :cond_9
    return v1

    :pswitch_3
    sget-boolean v0, Lcom/android/settings/Utils;->SUPPORTMOBILEAPWPSPBC:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWpsSwitch:Landroid/view/MenuItem;

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWpsSwitch:Landroid/view/MenuItem;

    if-eqz v0, :cond_a

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v6, v6, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    if-ne v6, v5, :cond_a

    move v4, v1

    nop

    :cond_a
    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    iput-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->wps_tether_pin:Ljava/lang/String;

    const/16 v2, 0x38

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->showDialog(I)V

    :cond_b
    return v1

    :pswitch_4
    move-object v0, v3

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v6, "com.samsung.helphub"

    invoke-virtual {v3, v6, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    goto :goto_2

    :catch_0
    move-exception v3

    const-string v4, "WifiApSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error NameNotFoundException "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    if-nez v0, :cond_d

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    instance-of v2, v2, Landroid/preference/PreferenceActivity;

    if-eqz v2, :cond_c

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Landroid/preference/PreferenceActivity;

    const-class v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApVzwHelp;

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const v6, 0x7f121a64

    const/4 v7, 0x0

    const/16 v9, 0x64

    move-object v8, p0

    invoke-virtual/range {v3 .. v9}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_3

    :cond_c
    new-instance v2, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getMetricsCategory()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v2

    const-class v3, Lcom/samsung/android/settings/wifi/mobileap/WifiApVzwHelp;

    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v2

    const v3, 0x7f121a64

    invoke-virtual {v2, v3}, Lcom/android/settings/core/SubSettingLauncher;->setTitle(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    goto :goto_3

    :cond_d
    if-eqz v0, :cond_e

    iget v3, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    rem-int/lit8 v3, v3, 0xa

    if-ne v3, v2, :cond_e

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.samsung.helphub.HELP"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "helphub:item"

    const-string v4, "tethering_vzw_mhs"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_3

    :cond_e
    if-eqz v0, :cond_f

    iget v2, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    rem-int/lit8 v2, v2, 0xa

    if-ne v2, v5, :cond_f

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.samsung.helphub.HELP"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "helphub:appid"

    const-string v4, "tethering"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->startActivity(Landroid/content/Intent;)V

    :cond_f
    :goto_3
    return v1

    :pswitch_5
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mDialogConfigure:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mDialogConfigure:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->isShowing()Z

    move-result v0

    if-nez v0, :cond_12

    :cond_10
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->showDialog(I)V

    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mDismissDialog:Z

    iput-boolean v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mContinueOpen:Z

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mOldWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mOldWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->getSecurityTypeIndex(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->key_compare:I

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "wifi_ap_powersave_mode_checked"

    invoke-static {v0, v2, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_11

    move v4, v1

    nop

    :cond_11
    iput-boolean v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mOldPowerSaveChecked:Z

    :cond_12
    return v1

    :pswitch_6
    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->showDialog(I)V

    return v1

    :pswitch_7
    const v0, 0x7f1208ec

    invoke-static {v3, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mIsFromHelp:Z

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mHelpStep1Dialog:Lcom/samsung/android/settings/helpdialog/TwHelpDialog;

    if-nez v0, :cond_13

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->createHelpStep1Dialog()V

    :cond_13
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v0

    if-nez v0, :cond_15

    :cond_14
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->showInvalidActionToast()V

    :cond_15
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mHelpStep1Dialog:Lcom/samsung/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->showHelpDialog(Lcom/samsung/android/settings/helpdialog/TwHelpDialog;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->showInvalidActionToast()V

    goto :goto_4

    :cond_16
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Landroid/preference/PreferenceActivity;

    if-eqz v0, :cond_17

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/preference/PreferenceActivity;

    const-class v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const v5, 0x7f121d53

    const/4 v6, 0x0

    const/16 v8, 0x64

    move-object v7, p0

    invoke-virtual/range {v2 .. v8}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_4

    :cond_17
    new-instance v0, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getMetricsCategory()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    const-class v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    const v2, 0x7f121d53

    invoke-virtual {v0, v2}, Lcom/android/settings/core/SubSettingLauncher;->setTitle(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    :cond_18
    :goto_4
    return v1

    :cond_19
    const v0, 0x7f1208fb

    invoke-static {v3, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    :goto_5
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsForegroundWifiSettings:Z

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiApSwitchEnabler:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiApSwitchEnabler:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->pause()V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const-string v0, "VZW"

    sget-object v1, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->removeDialog(I)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mDialogConfigure:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mDialogConfigure:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mDialogConfigure:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    const v1, 0x7f0a05b9

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mPasswordHasFocus:Z

    :cond_2
    sget-boolean v0, Lcom/android/settings/Utils;->SPF_SupportMobileApDataLimit:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mApUsageObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_3
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "WifiApSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPreferenceChange change: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v1, Lcom/android/settings/Utils;->SPF_SupportMobileApEnhanced:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mSmartTetheringSwitchPreference:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    if-ne p1, v1, :cond_1

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->SetSmartTethering()V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "wifi_ap_smart_tethering_settings"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->updateSmartTetheringSwitchState()V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->semWifiApBleMhsRole(Z)Z

    :cond_1
    :goto_0
    return v2
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mSsidPreference:Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mSsidPreference:Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->onClickItem(Landroid/net/wifi/WifiConfiguration;)V

    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mHelpStep1Dialog:Lcom/samsung/android/settings/helpdialog/TwHelpDialog;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mIsFromHelp:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->isOverflowMenuOpen:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mHelpStep1Dialog:Lcom/samsung/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v0}, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->dismiss()V

    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    return-void
.end method

.method public onResume()V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/datausage/DataUsageUtils;->isDataAllowed(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mDataAllowed:Z

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    invoke-virtual {v0}, Lcom/android/settings/datausage/DataSaverBackend;->isDataSaverEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mDataAllowed:Z

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->finish()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->onDestroy()V

    :cond_1
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    sput-boolean v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsForegroundWifiSettings:Z

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v3, :cond_3

    const-string v3, "wifi"

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    iput-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    :cond_3
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->updateConnectedDevices(Z)V

    :cond_4
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mQrCodeMenuItem:Landroid/view/MenuItem;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mQrCodeMenuItem:Landroid/view/MenuItem;

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v4

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_5
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->updateStatus()V

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiApSwitchEnabler:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiApSwitchEnabler:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->resume()V

    :cond_6
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mActivity:Landroid/app/Activity;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mActivity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_7
    const-string v3, "VZW"

    sget-object v4, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    const/4 v3, 0x7

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->removeDialog(I)V

    :cond_8
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mDialogConfigure:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mDialogConfigure:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    invoke-virtual {v3}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mDialogConfigure:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    invoke-virtual {v3}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->dismissSpinnerPopup()V

    :cond_9
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getRvfMode()I

    move-result v3

    iput v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mRvfMode:I

    iget v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mRvfMode:I

    if-lez v3, :cond_b

    iget-boolean v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mIsFromHelp:Z

    if-eqz v3, :cond_b

    const-string v3, "VZW"

    sget-object v4, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    const-string v3, "SPRINT"

    sget-object v4, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    :cond_a
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2}, Landroid/net/wifi/WifiManager;->semSetWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    :cond_b
    iget v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mRvfMode:I

    if-lez v3, :cond_c

    iget-boolean v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->isNoHotSpotModeWarningShown:Z

    if-nez v3, :cond_c

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->isExtenderEnabled()Z

    move-result v3

    if-nez v3, :cond_c

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->showNoHotspotModeWarningDialog()V

    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->isNoHotSpotModeWarningShown:Z

    :cond_c
    iget v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mRvfMode:I

    if-nez v3, :cond_d

    iget-boolean v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->isNoHotSpotModeWarningShown:Z

    if-ne v3, v1, :cond_d

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->noHotspotModeWarningDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    iput-boolean v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->isNoHotSpotModeWarningShown:Z

    :cond_d
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mSsidPreference:Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v1, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->updateCurrent(Landroid/net/wifi/WifiConfiguration;)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mDialogConfigure:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mDialogConfigure:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mDialogConfigure:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->showSoftInput()V

    :cond_e
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string v3, "CscFeature_Common_EnableSprintExtension"

    invoke-virtual {v1, v3}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/enterprise/RestrictionPolicy;->isWifiTetheringEnabled()Z

    move-result v1

    if-nez v1, :cond_f

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->finish()V

    :cond_f
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mPasswordPreference:Landroid/support/v7/preference/Preference;

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mPasswordPreference:Landroid/support/v7/preference/Preference;

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->isWifiApSettingUserModificationAllowed()Z

    move-result v3

    invoke-virtual {v1, v3}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    :cond_10
    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v3, 0x7f120a63

    invoke-static {v1, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :cond_11
    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mPasswordHasFocus:Z

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mDialogConfigure:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    const v3, 0x7f0a05b9

    invoke-virtual {v1, v3}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    iput-boolean v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mPasswordHasFocus:Z

    :cond_12
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mPasswordDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mPasswordDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mPasswordDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v3, 0x15

    invoke-virtual {v1, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    :cond_13
    sget-boolean v1, Lcom/android/settings/Utils;->SPF_SupportMobileApDataLimit:Z

    if-eqz v1, :cond_14

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "wifi_ap_mobile_data_usage_value"

    invoke-static {v3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mApUsageObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_14
    sget-boolean v1, Lcom/android/settings/Utils;->SPF_SupportMobileApEnhanced:Z

    if-eqz v1, :cond_15

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mSmartTetheringSwitchPreference:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    if-eqz v1, :cond_15

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->updateSmartTetheringSwitchState()V

    :cond_15
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "mIsFromHelp"

    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mIsFromHelp:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiApSwitchEnabler:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiApSwitchEnabler:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->DialogShowing(I)Z

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiApSwitchEnabler:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->DialogShowing(I)Z

    move-result v1

    :cond_0
    const-string v2, "warnWifiDisableDialogshow"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "nosimwarningdialog"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onWhitelistStatusChanged(IZ)V
    .locals 0

    return-void
.end method

.method public removeAllConnectedDevice()V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApStaList()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v1, v2, 0x12

    const-string v2, "WifiApSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeAllConnectedDevice(), num = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz v0, :cond_1

    if-lez v1, :cond_1

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->removeSelectedDevice(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public removeSelectedDevice(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const/4 v2, 0x4

    iput v2, v0, Landroid/os/Message;->what:I

    const-string v2, "mac"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v0}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    return-void
.end method

.method public saveIsShowPassword()V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_ap_show_passwd"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mDialogConfigure:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    invoke-virtual {v2}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->getCheckShowPassword()Z

    move-result v2

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mDialogConfigure:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->getCheckShowPassword()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->insertMHSShowPasswordLogging(Z)V

    :cond_0
    const-string v1, "wifi_ap_show_passwd"

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mDialogConfigure:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    invoke-virtual {v2}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->getCheckShowPassword()Z

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public saveLast2gChannel(I)V
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "WifiApSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "select:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedChannel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " last2g:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mLast2gChannel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " last5g:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mLast5gChannel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " 5gprefer:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mChecked5GPrefer:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "wifi_ap_last_2g_channel"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method protected showHelpDialog(Lcom/samsung/android/settings/helpdialog/TwHelpDialog;)V
    .locals 3

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->createHelpStep1Dialog()V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mHelpStep1Dialog:Lcom/samsung/android/settings/helpdialog/TwHelpDialog;

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x4000000

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    const/high16 v2, -0x80000000

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/Window;->setStatusBarColor(I)V

    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->show()V

    :cond_2
    return-void
.end method

.method public updateSwitchBarText(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/SwitchBar;->setTextViewLabel(Z)V

    :cond_0
    return-void
.end method

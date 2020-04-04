.class public Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;
.super Ljava/lang/Object;
.source "WifiApSwitchEnabler.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$SwitchHandler;,
        Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$IMobileAPHelpController;
    }
.end annotation


# static fields
.field private static final DBG:Z


# instance fields
.field private final MHS_REQUEST:I

.field private final TETHER_HELP_REQUEST:I

.field private bDisableMifi:Z

.field private bShowAttentionDialogVzw:Z

.field private customView:Landroid/view/View;

.field private intentReceiver:Landroid/content/Intent;

.field private isSetChecked:Z

.field private isWifiWarningDoNotShowAgain:Z

.field private mActivity:Ljava/lang/Object;

.field private mAttentionDialog:Landroid/app/AlertDialog;

.field private mCalledByBixby:Z

.field private mCb:Landroid/widget/CheckBox;

.field private mChangeState:Z

.field private mCm:Landroid/net/ConnectivityManager;

.field public mConfigureDialogListener:Landroid/content/DialogInterface$OnClickListener;

.field private final mContext:Landroid/content/Context;

.field private mDialogConfigure:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

.field private mHandler:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$SwitchHandler;

.field private mHelpCtrl:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$IMobileAPHelpController;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mIsAirplaneMode:Z

.field private mIsLightTheme:Z

.field private mIsTablet:Z

.field private mNoSimDialog:Landroid/app/AlertDialog;

.field private mOriginalSummary:Ljava/lang/CharSequence;

.field private mProvisionApp:[Ljava/lang/String;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSharedPref:Landroid/content/SharedPreferences;

.field private mSwitch:Landroid/widget/Switch;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mSwitchPref:Landroid/support/v7/preference/SwitchPreferenceCompat;

.field private mTetherHandler:Landroid/os/Handler;

.field private mTetherRunnable:Ljava/lang/Runnable;

.field private final mTetheringProvisionApp:Ljava/lang/String;

.field private mWarnRoam:Landroid/app/AlertDialog;

.field private mWarnRoamBulder:Landroid/app/AlertDialog$Builder;

.field private mWarningDialog:Landroid/app/AlertDialog;

.field private mWifiApSettingActivity:Landroid/app/Activity;

.field private mWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field private mWifiDisableWarnDoNotShowAgain:Landroid/widget/CheckBox;

.field private mWifiDisableWarnDoNotShowAgainLayout:Landroid/widget/LinearLayout;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

.field private mWifiRegexs:[Ljava/lang/String;

.field private mprov:[Ljava/lang/String;

.field private nevershowagain:Z

.field private warnWifiDisableDialog:Landroid/app/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/android/settings/Utils;->MHSDBG:Z

    sput-boolean v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/support/v7/preference/SwitchPreferenceCompat;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroid/support/v7/preference/SwitchPreferenceCompat;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mHelpCtrl:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$IMobileAPHelpController;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->intentReceiver:Landroid/content/Intent;

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->MHS_REQUEST:I

    const/4 v2, 0x1

    iput v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->TETHER_HELP_REQUEST:I

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Setting_ConfigMobileHotspotProvisionApp"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mTetheringProvisionApp:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isSetChecked:Z

    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mIsTablet:Z

    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mIsLightTheme:Z

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isWifiWarningDoNotShowAgain:Z

    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->nevershowagain:Z

    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->bDisableMifi:Z

    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mCalledByBixby:Z

    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->bShowAttentionDialogVzw:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mTetherHandler:Landroid/os/Handler;

    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mChangeState:Z

    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mIsAirplaneMode:Z

    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$1;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$54;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$54;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mConfigureDialogListener:Landroid/content/DialogInterface$OnClickListener;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroid/support/v7/preference/SwitchPreferenceCompat;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroid/support/v7/preference/SwitchPreferenceCompat;

    invoke-virtual {v0}, Landroid/support/v7/preference/SwitchPreferenceCompat;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mOriginalSummary:Ljava/lang/CharSequence;

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->initSwitchEnabler()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/widget/SwitchBar;Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$IMobileAPHelpController;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroid/support/v7/preference/SwitchPreferenceCompat;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mHelpCtrl:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$IMobileAPHelpController;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->intentReceiver:Landroid/content/Intent;

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->MHS_REQUEST:I

    const/4 v2, 0x1

    iput v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->TETHER_HELP_REQUEST:I

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Setting_ConfigMobileHotspotProvisionApp"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mTetheringProvisionApp:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isSetChecked:Z

    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mIsTablet:Z

    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mIsLightTheme:Z

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isWifiWarningDoNotShowAgain:Z

    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->nevershowagain:Z

    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->bDisableMifi:Z

    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mCalledByBixby:Z

    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->bShowAttentionDialogVzw:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mTetherHandler:Landroid/os/Handler;

    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mChangeState:Z

    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mIsAirplaneMode:Z

    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$1;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$54;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$54;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mConfigureDialogListener:Landroid/content/DialogInterface$OnClickListener;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->getSwitch()Lcom/android/settings/widget/ToggleSwitch;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    iput-object p3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mHelpCtrl:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$IMobileAPHelpController;

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->initSwitchEnabler()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->initSwitchbar()V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->handleWifiApStateChanged(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;[Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->updateTetherState([Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mAttentionDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->afterAttentionDialog()V

    return-void
.end method

.method static synthetic access$1200(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->afterSsidDialog()V

    return-void
.end method

.method static synthetic access$1300(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)Lcom/samsung/android/settings/wifi/WifiApDialogSec;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mDialogConfigure:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->bShowAttentionDialogVzw:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->bShowAttentionDialogVzw:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiApSettingActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mTetherRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setSummary(I)V

    return-void
.end method

.method static synthetic access$1900(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)Landroid/net/wifi/WifiConfiguration;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    return-object p1
.end method

.method static synthetic access$200(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->enableWifiCheckBox()V

    return-void
.end method

.method static synthetic access$2000(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->disableWifiDialog()V

    return-void
.end method

.method static synthetic access$2100(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)Landroid/widget/CheckBox;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mCb:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->nevershowagain:Z

    return v0
.end method

.method static synthetic access$2202(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->nevershowagain:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->putBooleanSharedPreference(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$2400(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mActivity:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showProgress(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->preProvisioning()V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->startProvisioningIfNecessary(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)Landroid/widget/CheckBox;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiDisableWarnDoNotShowAgain:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)Landroid/content/SharedPreferences;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSharedPref:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$702(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;Landroid/content/SharedPreferences;)Landroid/content/SharedPreferences;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSharedPref:Landroid/content/SharedPreferences;

    return-object p1
.end method

.method static synthetic access$800(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)Landroid/net/wifi/WifiManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method private afterAttentionDialog()V
    .locals 2

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_EnableWarningPopup4DataBatteryUsage"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showDialog(I)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->afterSsidDialog()V

    :goto_0
    return-void
.end method

.method private afterSsidDialog()V
    .locals 3

    const/4 v0, 0x1

    const-string v1, "TMO"

    sget-object v2, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "NEWCO"

    sget-object v2, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    const-string v2, "\tUSER#DEFINED#PWD#\n"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    const-string v1, "WifiApSwitchEnabler"

    const-string v2, "Dialog create during first time Mobile HotSpot at TMO"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x9

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showDialog(I)V

    :cond_1
    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mIsAirplaneMode:Z

    if-nez v1, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->disableWifiDialog()V

    :cond_2
    return-void
.end method

.method private disableWifiDialog()V
    .locals 15

    const-string v0, "SPRINT"

    sget-object v1, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "usb_tethering_enabled"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const-string v3, "bluetooth_tethering_enabled"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "wifi_display_on"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showDialog(I)V

    goto/16 :goto_6

    :cond_1
    const-string v0, "TMO"

    sget-object v3, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v3, 0x15

    const/4 v4, 0x5

    const/16 v5, 0x14

    const/4 v6, -0x1

    const/16 v7, 0x13a

    const/16 v8, 0xa

    const/4 v9, 0x3

    if-nez v0, :cond_13

    const-string v0, "NEWCO"

    sget-object v10, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_3

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    if-eq v0, v2, :cond_9

    if-eqz v0, :cond_9

    const/4 v10, 0x4

    if-eq v0, v10, :cond_9

    sget-boolean v10, Lcom/android/settings/Utils;->SUPPORT_MOBILEAP_WIFISHARING:Z

    if-eqz v10, :cond_3

    sget-boolean v10, Lcom/android/settings/Utils;->SUPPORT_MOBILEAP_WIFISHARING:Z

    if-eqz v10, :cond_9

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isWifiSharingEnabled()Z

    move-result v10

    if-nez v10, :cond_9

    :cond_3
    const-string v3, "VZW"

    sget-object v4, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    const-string v4, "SAMSUNG_HOTSPOT"

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSharedPref:Landroid/content/SharedPreferences;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v4, "WIFI_WARNING_DO_NOTSHOW_AGAIN"

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v2, :cond_4

    move v3, v2

    goto :goto_0

    :cond_4
    move v3, v1

    :goto_0
    iput-boolean v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isWifiWarningDoNotShowAgain:Z

    iget-boolean v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isWifiWarningDoNotShowAgain:Z

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_saved_state"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showProgress(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    const-wide/16 v4, 0x258

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v4, "WifiApSwitchEnabler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error InterruptedException "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    :goto_1
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->startProvisioningIfNecessary(I)V

    goto/16 :goto_6

    :cond_5
    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isWifiWarningDoNotShowAgain:Z

    if-nez v1, :cond_1d

    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mCalledByBixby:Z

    if-nez v1, :cond_6

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showDialog(I)V

    goto/16 :goto_6

    :cond_6
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->secSetSoftapEnabledForBixbyWithoutPopup()V

    goto/16 :goto_6

    :cond_7
    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mCalledByBixby:Z

    if-nez v1, :cond_8

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showDialog(I)V

    goto/16 :goto_6

    :cond_8
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->secSetSoftapEnabledForBixbyWithoutPopup()V

    goto/16 :goto_6

    :cond_9
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isP2pEnabled()Z

    move-result v9

    if-eqz v9, :cond_12

    const-string v9, "WifiApSwitchEnabler"

    const-string v10, "WiFi p2p on. Create dailog"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v9, "WifiApSwitchEnabler"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "WiFi sharing Lite flag :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v11, Lcom/android/settings/Utils;->SUPPORT_MOBILEAP_WIFISHARINGLITE:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    const/4 v10, 0x0

    sget-boolean v11, Lcom/android/settings/Utils;->SUPPORT_MOBILEAP_WIFISHARINGLITE:Z

    if-eqz v11, :cond_b

    new-instance v11, Landroid/os/Message;

    invoke-direct {v11}, Landroid/os/Message;-><init>()V

    iput v7, v11, Landroid/os/Message;->what:I

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v7, v11}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v9

    const-string v7, "WifiApSwitchEnabler"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Indoor status: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v7, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->getWifiConnectedFrequency()I

    move-result v7

    const-string v12, "WifiApSwitchEnabler"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Frequency : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v7, v6, :cond_a

    invoke-direct {p0, v7}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->getWifiConnectedBand(I)I

    move-result v10

    :cond_a
    const-string v6, "WifiApSwitchEnabler"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Frequency band of connected AP:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v6, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    sget-boolean v6, Lcom/android/settings/Utils;->SUPPORT_MOBILEAP_WIFISHARING:Z

    if-eqz v6, :cond_10

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isWifiSharingEnabled()Z

    move-result v6

    if-eqz v6, :cond_10

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isP2pConnected()Z

    move-result v6

    if-eqz v6, :cond_d

    iget-boolean v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mCalledByBixby:Z

    if-nez v2, :cond_c

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showDialog(I)V

    goto :goto_2

    :cond_c
    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mCalledByBixby:Z

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->startProvisioningIfNecessary(I)V

    goto :goto_2

    :cond_d
    if-ne v9, v2, :cond_e

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showDialog(I)V

    goto :goto_2

    :cond_e
    if-ne v10, v4, :cond_f

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showDialog(I)V

    goto :goto_2

    :cond_f
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->startProvisioningIfNecessary(I)V

    goto :goto_2

    :cond_10
    iget-boolean v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mCalledByBixby:Z

    if-nez v2, :cond_11

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showDialog(I)V

    goto :goto_2

    :cond_11
    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mCalledByBixby:Z

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->startProvisioningIfNecessary(I)V

    :goto_2
    goto/16 :goto_6

    :cond_12
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->startProvisioningIfNecessary(I)V

    goto/16 :goto_6

    :cond_13
    :goto_3
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    sget-object v10, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/net/NetworkInfo$DetailedState;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_16

    sget-boolean v10, Lcom/android/settings/Utils;->SUPPORT_MOBILEAP_WIFISHARING:Z

    if-eqz v10, :cond_14

    sget-boolean v10, Lcom/android/settings/Utils;->SUPPORT_MOBILEAP_WIFISHARING:Z

    if-eqz v10, :cond_16

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isWifiSharingEnabled()Z

    move-result v10

    if-nez v10, :cond_16

    :cond_14
    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mCalledByBixby:Z

    if-nez v1, :cond_15

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showDialog(I)V

    goto/16 :goto_5

    :cond_15
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->secSetSoftapEnabledForBixbyWithoutPopup()V

    goto/16 :goto_5

    :cond_16
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isP2pConnected()Z

    move-result v9

    if-eqz v9, :cond_18

    iget-boolean v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mCalledByBixby:Z

    if-nez v2, :cond_17

    const-string v1, "WifiApSwitchEnabler"

    const-string v2, "WiFi p2p is connected. Create dailog"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showDialog(I)V

    goto/16 :goto_5

    :cond_17
    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mCalledByBixby:Z

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->startProvisioningIfNecessary(I)V

    goto :goto_5

    :cond_18
    sget-boolean v8, Lcom/android/settings/Utils;->SUPPORT_MOBILEAP_WIFISHARINGLITE:Z

    if-eqz v8, :cond_1c

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->getWifiConnectedFrequency()I

    move-result v8

    const-string v9, "WifiApSwitchEnabler"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Frequency : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    if-eq v8, v6, :cond_19

    invoke-direct {p0, v8}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->getWifiConnectedBand(I)I

    move-result v9

    :cond_19
    const-string v6, "WifiApSwitchEnabler"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Frequency band of connected AP:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Landroid/os/Message;

    invoke-direct {v6}, Landroid/os/Message;-><init>()V

    iput v7, v6, Landroid/os/Message;->what:I

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v7, v6}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v7

    const-string v10, "WifiApSwitchEnabler"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Indoor status: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v7, v2, :cond_1a

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showDialog(I)V

    goto :goto_4

    :cond_1a
    if-ne v9, v4, :cond_1b

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showDialog(I)V

    goto :goto_4

    :cond_1b
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->startProvisioningIfNecessary(I)V

    :goto_4
    goto :goto_5

    :cond_1c
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->startProvisioningIfNecessary(I)V

    :goto_5
    nop

    :cond_1d
    :goto_6
    return-void
.end method

.method private enableWifiCheckBox()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

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
    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mIsAirplaneMode:Z

    const-string v0, "MTR"

    sget-object v3, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mIsAirplaneMode:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->bDisableMifi:Z

    if-nez v0, :cond_4

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setEnabled(Z)V

    goto :goto_1

    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mIsAirplaneMode:Z

    if-nez v0, :cond_3

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    const/16 v3, 0xd

    if-ne v0, v3, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->getRvfMode()I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setChecked(Z)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setChecked(Z)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mOriginalSummary:Ljava/lang/CharSequence;

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setEnabled(Z)V

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->dismissDialog(I)V

    :cond_4
    :goto_1
    return-void
.end method

.method private getBooleanFromSharedPreference(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5

    const-string v0, "MHSNoProvisionPreferences"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const-string v2, "WifiApSwitchEnabler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getBooleanFromSharedPreference - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private getRvfMode()I
    .locals 2

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x1c

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v1

    return v1
.end method

.method private getWifiConnectedBand(I)I
    .locals 1

    const/16 v0, 0x96c

    if-lt p1, v0, :cond_0

    const/16 v0, 0x9b4

    if-gt p1, v0, :cond_0

    const/4 v0, 0x2

    return v0

    :cond_0
    const/4 v0, 0x5

    return v0
.end method

.method private getWifiConnectedFrequency()I
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v2

    if-eq v2, v1, :cond_0

    const-string v1, "WifiApSwitchEnabler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wifi Frequency is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v1

    return v1

    :cond_0
    return v1
.end method

.method private handleWifiApStateChanged(I)V
    .locals 6

    const-wide/16 v0, 0x1b58

    const v2, 0x7f121e52

    const/4 v3, 0x5

    const/4 v4, 0x1

    const/4 v5, 0x0

    packed-switch p1, :pswitch_data_0

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setChecked(Z)V

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setSummary(I)V

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->enableWifiCheckBox()V

    goto/16 :goto_2

    :pswitch_0
    invoke-direct {p0, v5}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showProgress(Z)V

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->dismissDialog(I)V

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setChecked(Z)V

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setSummary(I)V

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->enableWifiCheckBox()V

    goto/16 :goto_2

    :pswitch_1
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanKDIModel()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isLTEMode()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mChangeState:Z

    if-eqz v2, :cond_0

    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$52;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$52;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mTetherRunnable:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mTetherHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mTetherRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->dismissDialog(I)V

    invoke-direct {p0, v5}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showProgress(Z)V

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->dismissDialog(I)V

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setChecked(Z)V

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setEnabled(Z)V

    :goto_0
    invoke-direct {p0, v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->procHelpCtrl(Z)V

    iput-boolean v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mChangeState:Z

    goto :goto_2

    :pswitch_2
    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->dismissDialog(I)V

    invoke-direct {p0, v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showProgress(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    const v1, 0x7f121d88

    invoke-static {v0, v1}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setSummary(Ljava/lang/CharSequence;)V

    iput-boolean v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mChangeState:Z

    goto :goto_2

    :pswitch_3
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanKDIModel()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isLTEMode()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mChangeState:Z

    if-eqz v2, :cond_1

    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$53;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$53;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mTetherRunnable:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mTetherHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mTetherRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setChecked(Z)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setSummary(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->enableWifiCheckBox()V

    :goto_1
    invoke-direct {p0, v5}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->procHelpCtrl(Z)V

    iput-boolean v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mChangeState:Z

    invoke-direct {p0, v5}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showProgress(Z)V

    goto :goto_2

    :pswitch_4
    invoke-direct {p0, v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showProgress(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    const v1, 0x7f121d8c

    invoke-static {v0, v1}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setSummary(Ljava/lang/CharSequence;)V

    iput-boolean v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mChangeState:Z

    nop

    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private initSwitchEnabler()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mIsTablet:Z

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isLightTheme(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mIsLightTheme:Z

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    const-string v1, "wifip2p"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pManager;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mCm:Landroid/net/ConnectivityManager;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiApSettingActivity:Landroid/app/Activity;

    const-string v0, "MTR"

    sget-object v1, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isLTEMode()Z

    move-result v0

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->bDisableMifi:Z

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiRegexs:[Ljava/lang/String;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "com.samsung.android.net.wifi.SHOW_INFO_MESSAGE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$SwitchHandler;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$SwitchHandler;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mHandler:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$SwitchHandler;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x107009c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mProvisionApp:[Ljava/lang/String;

    const-string v0, "SPRINT"

    sget-object v2, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroid/support/v7/preference/SwitchPreferenceCompat;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroid/support/v7/preference/SwitchPreferenceCompat;

    const v2, 0x7f121f8e

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setTitle(I)V

    :cond_1
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->dismissDialog(I)V

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isWifiApBlocked()Z

    return-void
.end method

.method private isDualModeSlot()Z
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isDualSlotAllOff()Z
    .locals 9

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isDualModeSlot()Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "gsm.sim.state"

    const-string v2, "-1,-1"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const-string v3, "CDMA"

    invoke-static {v3}, Lcom/android/settings/Utils;->isDuosModel(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_3

    const-string v3, "gsm.sim.currentcardstatus"

    const-string v6, "-1,-1"

    invoke-static {v3, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v6, ","

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    if-ne v7, v5, :cond_0

    const-string v7, "3"

    aget-object v8, v6, v4

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    :cond_0
    array-length v7, v6

    if-le v7, v5, :cond_2

    const-string v7, "3"

    aget-object v4, v6, v4

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "3"

    aget-object v5, v6, v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    goto :goto_0

    :cond_3
    array-length v3, v2

    if-ne v3, v5, :cond_4

    const-string v3, "READY"

    aget-object v6, v2, v4

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "LOADED"

    aget-object v6, v2, v4

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    array-length v3, v2

    if-le v3, v5, :cond_6

    const-string v3, "READY"

    aget-object v6, v2, v4

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "LOADED"

    aget-object v4, v2, v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "READY"

    aget-object v4, v2, v5

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "LOADED"

    aget-object v4, v2, v5

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    :cond_5
    const/4 v0, 0x1

    :cond_6
    :goto_0
    return v0
.end method

.method private isDualSlotAndSLot1Off()Z
    .locals 7

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isDualModeSlot()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "gsm.sim.state"

    const-string v2, "-1,-1"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const-string v3, "CDMA"

    invoke-static {v3}, Lcom/android/settings/Utils;->isDuosModel(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    const-string v3, "gsm.sim.currentcardstatus"

    const-string v5, "-1,-1"

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const-string v6, "3"

    aget-object v4, v5, v4

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v0, 0x1

    :cond_0
    goto :goto_0

    :cond_1
    const-string v3, "READY"

    aget-object v5, v2, v4

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "LOADED"

    aget-object v4, v2, v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v0, 0x1

    :cond_2
    :goto_0
    return v0
.end method

.method private isLTEMode()Z
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mCm:Landroid/net/ConnectivityManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WifiApSwitchEnabler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " isLTEMode() network="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "LTE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method public static isMetroPCS()Z
    .locals 2

    const-string v0, "NEWCO"

    sget-object v1, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isP2pConnected()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pManager;->isWifiP2pConnected()Z

    move-result v0

    return v0
.end method

.method private isP2pEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pManager;->isWifiP2pEnabled()Z

    move-result v0

    return v0
.end method

.method private isPackageExists(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    move v1, v0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, p2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    iget-object v5, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v5, :cond_1

    iget-object v5, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v5, v4

    if-eqz v5, :cond_1

    move v0, v4

    nop

    :cond_1
    move v1, v0

    if-eqz v1, :cond_2

    iget-object v0, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    move v1, v0

    const-string v0, "WifiApSwitchEnabler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isPackageExists | package is enabled ? "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v0, "WifiApSwitchEnabler"

    const-string v4, "isPackageExists | package is not system app or not available"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    const-string v2, "WifiApSwitchEnabler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package not found : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return v1
.end method

.method private isProvisioningCheck()Z
    .locals 10

    sget-boolean v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->DBG:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "Provisioning.disable"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "WifiApSwitchEnabler"

    const-string v2, "Skip isProvisioningCheck"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    const-string v2, "device_policy"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/app/admin/DevicePolicyManager;->semGetAllowInternetSharing(Landroid/content/ComponentName;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mHandler:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$SwitchHandler;

    if-eqz v3, :cond_1

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->sendSetChecked(Z)V

    :cond_1
    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setEnabled(Z)V

    const-string v2, "WifiApSwitchEnabler"

    const-string v3, "Skip isProvisioningCheck - DPM"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    const-string v3, "content://com.sec.knox.provider2/WifiPolicy"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v6, 0x0

    const-string v7, "isOpenWifiApAllowed"

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v5, v3

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    if-eqz v4, :cond_5

    :try_start_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    :cond_3
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v5, v5, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v5, v5, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v5, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "isOpenWifiApAllowed"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "false"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v2, "WifiApSwitchEnabler"

    const-string v5, "Skip isProvisioningCheck - Wifi Policy"

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    return v1

    :cond_4
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_5
    :goto_0
    return v2
.end method

.method private isSimCheck()Z
    .locals 2

    sget-boolean v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->DBG:Z

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

.method public static isTMO()Z
    .locals 2

    const-string v0, "TMO"

    sget-object v1, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isWifiApBlocked()Z
    .locals 8

    const/4 v0, 0x0

    if-nez v0, :cond_1

    const-string v1, "content://com.sec.knox.provider/RestrictionPolicy4"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const-string v5, "isWifiTetheringEnabled"

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, v1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_1

    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v3, "isWifiTetheringEnabled"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "false"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v3

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v3

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setChecked(Z)V

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    :cond_5
    :goto_1
    return v0
.end method

.method private isWifiSharingEnabled()Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_ap_wifi_sharing"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const-string v1, "WifiApSwitchEnabler"

    const-string v3, "Returning true"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_ap_wifi_sharing"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "WifiApSwitchEnabler"

    const-string v2, "Returning false"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :cond_1
    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "WifiApSwitchEnabler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error in getting provider value"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0
.end method

.method private preProvisioning()V
    .locals 8

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v1

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WifiApSwitchEnabler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isSimCheck() "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isSimCheck()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "WifiApSwitchEnabler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getExtenderMode() "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getExtenderMode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "MTR"

    sget-object v4, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/16 v4, 0xb

    const/4 v5, 0x5

    const/4 v6, 0x1

    if-eqz v3, :cond_4

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isLTEMode()Z

    move-result v3

    if-nez v3, :cond_4

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setChecked(Z)V

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isSimCheck()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isDualSlotAndSLot1Off()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v3

    if-eq v3, v5, :cond_3

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isDualSlotAndSLot1Off()Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "LOADED"

    const-string v5, "gsm.sim.state"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "READY"

    const-string v5, "gsm.sim.state"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isDualModeSlot()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isDualSlotAllOff()Z

    move-result v3

    if-eqz v3, :cond_a

    :cond_2
    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showDialog(I)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showDialog(I)V

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isSimCheck()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isDualSlotAndSLot1Off()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v3

    if-eq v3, v5, :cond_7

    :cond_5
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isDualModeSlot()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isDualSlotAllOff()Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->isExtenderEnabled()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->secSetSoftapEnabled(Z)V

    goto :goto_0

    :cond_6
    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showDialog(I)V

    goto :goto_0

    :cond_7
    const-string v3, "VZW"

    sget-object v7, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v3

    if-ne v3, v4, :cond_8

    if-eqz v1, :cond_8

    const-string v3, "us"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showDialog(I)V

    goto :goto_0

    :cond_8
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getExtenderMode()I

    move-result v3

    if-ne v3, v6, :cond_9

    const/16 v3, 0x13

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showDialog(I)V

    goto :goto_0

    :cond_9
    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->secSetSoftapEnabled(Z)V

    :cond_a
    :goto_0
    return-void
.end method

.method private procHelpCtrl(Z)V
    .locals 3

    const-string v0, "WifiApSwitchEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "procHelpCtrl("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mHelpCtrl:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$IMobileAPHelpController;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mHelpCtrl:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$IMobileAPHelpController;

    invoke-interface {v0, p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$IMobileAPHelpController;->show(Z)V

    return-void
.end method

.method private putBooleanSharedPreference(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 5

    const-string v0, "MHSNoProvisionPreferences"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string v2, "WifiApSwitchEnabler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "putSharedPreference - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private secSetSoftapEnabledForBixbyWithoutPopup()V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq v0, v2, :cond_0

    if-eq v0, v1, :cond_0

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->isScanAlwaysAvailable()Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_0
    const/4 v4, 0x1

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_saved_state"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isProvisioningNeeded()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-direct {p0, v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showProgress(Z)V

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v3}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    const-wide/16 v1, 0x258

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "WifiApSwitchEnabler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error InterruptedException "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    :cond_4
    :goto_0
    invoke-direct {p0, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->startProvisioningIfNecessary(I)V

    iput-boolean v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mCalledByBixby:Z

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

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v0}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    return-void
.end method

.method private setSummary(I)V
    .locals 0

    return-void
.end method

.method private setSummary(Ljava/lang/CharSequence;)V
    .locals 0

    return-void
.end method

.method private showFirstTimePoup()V
    .locals 6

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/samsung/android/settings/WifiApUtils;->getDialogTheme()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    const v2, 0x7f0d02ba

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a0935

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    const v3, 0x7f0a0936

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mCb:Landroid/widget/CheckBox;

    const v3, 0x7f0a094a

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    const v5, 0x7f120a53

    invoke-static {v4, v5}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v4, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$55;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$55;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    new-instance v4, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$56;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$56;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    const v5, 0x7f12077a

    invoke-virtual {v0, v5, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v4, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$57;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$57;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    const v5, 0x7f120774

    invoke-virtual {v0, v5, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v4, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$58;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$58;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    const v5, 0x7f120a50

    invoke-static {v4, v5}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private showMetorPCSHelpPoup()Landroid/app/AlertDialog;
    .locals 19

    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    const/4 v0, 0x0

    const/4 v6, 0x0

    iget-object v7, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    const/16 v8, 0x5f

    if-eqz v5, :cond_0

    const-string v9, "html/%y%z/tethering_help.html"

    const-string v10, "%y"

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v9, "%z"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    move-object v9, v0

    const/4 v10, 0x1

    const/4 v11, 0x0

    move-object v12, v11

    :try_start_0
    invoke-virtual {v7, v9}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v12, v0

    if-eqz v12, :cond_2

    :try_start_1
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v12, :cond_1

    :try_start_2
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    :cond_1
    :goto_1
    move-object v8, v0

    throw v8

    :catch_2
    move-exception v0

    move-object v13, v0

    const/4 v10, 0x0

    if-eqz v12, :cond_2

    :try_start_3
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :cond_2
    :goto_2
    if-eqz v5, :cond_4

    const-string v0, "html/%y%z/tethering_%xhelp.html"

    const-string v13, "%y"

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v6, "%z"

    if-eqz v10, :cond_3

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_3

    :cond_3
    const-string v8, ""

    :goto_3
    invoke-virtual {v0, v6, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    :cond_4
    array-length v0, v3

    if-eqz v0, :cond_6

    array-length v0, v4

    if-nez v0, :cond_6

    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isMetroPCS()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "%x"

    const-string v8, "usb_mtr_"

    invoke-virtual {v6, v0, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :goto_4
    move-object v6, v0

    goto :goto_5

    :cond_5
    const-string v0, "%x"

    const-string v8, "usb_tmo_"

    invoke-virtual {v6, v0, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_6
    array-length v0, v4

    if-eqz v0, :cond_7

    array-length v0, v3

    if-nez v0, :cond_7

    const-string v0, "%x"

    const-string v8, "wifi_"

    invoke-virtual {v6, v0, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_7
    array-length v0, v3

    if-eqz v0, :cond_9

    array-length v0, v4

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isMetroPCS()Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "%x"

    const-string v8, "usb_wifi_mtr_"

    invoke-virtual {v6, v0, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_8
    const-string v0, "%x"

    const-string v8, "usb_wifi_tmo_"

    invoke-virtual {v6, v0, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_9
    const-string v0, "%x"

    const-string v8, ""

    invoke-virtual {v6, v0, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :goto_5
    const-string v0, "WifiApSwitchEnabler"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Tethering Help url : "

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v8, v11

    :try_start_4
    iget-object v0, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    move-object v8, v0

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v13, 0x1000

    new-array v13, v13, [B

    :goto_6
    invoke-virtual {v8, v13}, Ljava/io/InputStream;->read([B)I

    move-result v14
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move v15, v14

    const/4 v11, -0x1

    if-eq v14, v11, :cond_a

    :try_start_5
    new-instance v11, Ljava/lang/String;

    const/4 v14, 0x0

    invoke-direct {v11, v13, v14, v15}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    const/4 v11, 0x0

    goto :goto_6

    :catchall_1
    move-exception v0

    move-object/from16 v16, v2

    move-object/from16 v18, v3

    goto/16 :goto_b

    :catch_3
    move-exception v0

    move-object/from16 v16, v2

    move-object/from16 v18, v3

    goto/16 :goto_9

    :cond_a
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-eqz v8, :cond_b

    :try_start_7
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    :goto_7
    goto :goto_8

    :catch_4
    move-exception v0

    goto :goto_7

    :cond_b
    :goto_8
    move-object v0, v11

    iget-object v11, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    const-string v13, "layout_inflater"

    invoke-virtual {v11, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/LayoutInflater;

    const v13, 0x7f0d0177

    const/4 v14, 0x0

    invoke-virtual {v11, v13, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    const v14, 0x7f0a027a

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/CheckBox;

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/widget/CheckBox;->setVisibility(I)V

    const v15, 0x7f0a04c0

    invoke-virtual {v13, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    move-object/from16 v16, v2

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v15, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v15, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    new-instance v2, Landroid/app/AlertDialog$Builder;

    move-object/from16 v17, v0

    iget-object v0, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    move-object/from16 v18, v3

    invoke-static {}, Lcom/samsung/android/settings/WifiApUtils;->getDialogTheme()I

    move-result v3

    invoke-direct {v2, v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v0, 0x7f120b1a

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v13}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x104000a

    new-instance v3, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$59;

    invoke-direct {v3, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$59;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    :catchall_2
    move-exception v0

    move-object/from16 v16, v2

    move-object/from16 v18, v3

    move-object v2, v0

    goto :goto_c

    :catch_5
    move-exception v0

    move-object/from16 v16, v2

    move-object/from16 v18, v3

    :goto_9
    move-object v2, v0

    :try_start_8
    const-string v0, "WifiApSwitchEnabler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error IOException "

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    nop

    if-eqz v8, :cond_c

    :try_start_9
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    goto :goto_a

    :catch_6
    move-exception v0

    :cond_c
    :goto_a
    const/4 v3, 0x0

    return-object v3

    :catchall_3
    move-exception v0

    :goto_b
    move-object v2, v0

    :goto_c
    if-eqz v8, :cond_d

    :try_start_a
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7

    goto :goto_d

    :catch_7
    move-exception v0

    :cond_d
    :goto_d
    throw v2
.end method

.method private showProgress(Z)V
    .locals 3

    const-string v0, "WifiApSwitchEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showProgress is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/SwitchBar;->setProgressBarVisible(Z)V

    goto :goto_0

    :cond_0
    const-string v0, "WifiApSwitchEnabler"

    const-string v1, "mSwitchBar is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mActivity:Ljava/lang/Object;

    instance-of v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    if-eqz v0, :cond_2

    const-string v0, "WifiApSwitchEnabler"

    const-string v1, "instanceof WifiApSettings"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mActivity:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mActivity:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/SwitchBar;->setProgressBarVisible(Z)V

    goto :goto_0

    :cond_1
    const-string v0, "WifiApSwitchEnabler"

    const-string v1, "WifiApSettings mSwitchBar is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mActivity:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/settings/TetherSettings;

    if-eqz v0, :cond_4

    const-string v0, "WifiApSwitchEnabler"

    const-string v1, "instanceof TetherSettings"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mActivity:Ljava/lang/Object;

    check-cast v0, Lcom/android/settings/TetherSettings;

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mActivity:Ljava/lang/Object;

    check-cast v0, Lcom/android/settings/TetherSettings;

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/SwitchBar;->setProgressBarVisible(Z)V

    goto :goto_0

    :cond_3
    const-string v0, "WifiApSwitchEnabler"

    const-string v1, "TetherSettings mSwitchBar is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_0
    return-void
.end method

.method private startProvisioningIfNecessary(I)V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isSimCheck()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isDualSlotAndSLot1Off()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    const/4 v3, 0x5

    if-eq v1, v3, :cond_2

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isDualModeSlot()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isDualSlotAllOff()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showDialog(I)V

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isProvisioningNeeded()Z

    move-result v1

    if-eqz v1, :cond_8

    sget-boolean v1, Lcom/android/settings/Utils;->SUPPORT_MOBILEAP_WIFISHARING:Z

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mTetheringProvisionApp:Ljava/lang/String;

    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mprov:[Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mprov:[Ljava/lang/String;

    aget-object v1, v1, v3

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mprov:[Ljava/lang/String;

    aget-object v4, v4, v3

    invoke-direct {p0, v1, v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isPackageExists(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "WifiApSwitchEnabler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "package mprov : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mprov:[Ljava/lang/String;

    aget-object v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " disabled. mProvisionApp:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mProvisionApp:[Ljava/lang/String;

    aget-object v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    const v4, 0x7f120fbf

    invoke-static {v1, v4, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showProgress(Z)V

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setChecked(Z)V

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->enableWifiCheckBox()V

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->procHelpCtrl(Z)V

    iput-boolean v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mChangeState:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :cond_3
    goto :goto_0

    :catch_0
    move-exception v1

    const-string v4, "WifiApSwitchEnabler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error Exception "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_0
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mProvisionApp:[Ljava/lang/String;

    aget-object v4, v4, v3

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mProvisionApp:[Ljava/lang/String;

    aget-object v2, v5, v2

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "TETHER_TYPE"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v2, 0x800000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mActivity:Ljava/lang/Object;

    instance-of v2, v2, Landroid/preference/PreferenceActivity;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mActivity:Ljava/lang/Object;

    check-cast v2, Landroid/preference/PreferenceActivity;

    invoke-virtual {v2, v1, v3}, Landroid/preference/PreferenceActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mActivity:Ljava/lang/Object;

    instance-of v2, v2, Lcom/android/settings/SettingsPreferenceFragment;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mActivity:Ljava/lang/Object;

    check-cast v2, Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {v2, v1, v3}, Lcom/android/settings/SettingsPreferenceFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    :cond_6
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mActivity:Ljava/lang/Object;

    instance-of v2, v2, Lcom/android/settings/RestrictedSettingsFragment;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mActivity:Ljava/lang/Object;

    check-cast v2, Lcom/android/settings/RestrictedSettingsFragment;

    invoke-virtual {v2, v1, v3}, Lcom/android/settings/RestrictedSettingsFragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_7
    :goto_1
    goto :goto_2

    :catch_1
    move-exception v2

    const-string v3, "WifiApSwitchEnabler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error ActivityNotFoundException "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    goto :goto_4

    :cond_8
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isTMO()Z

    move-result v1

    if-nez v1, :cond_a

    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isMetroPCS()Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_3

    :cond_9
    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setSoftapEnabled(Z)Z

    goto :goto_4

    :cond_a
    :goto_3
    const/16 v1, 0xf

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showDialog(I)V

    :goto_4
    return-void
.end method

.method private updateTetherState([Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 12

    const/4 v0, 0x0

    const/4 v1, 0x0

    array-length v2, p2

    const/4 v3, 0x0

    move v4, v0

    move v0, v3

    :goto_0
    if-ge v0, v2, :cond_2

    aget-object v5, p2, v0

    move-object v6, v5

    check-cast v6, Ljava/lang/String;

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiRegexs:[Ljava/lang/String;

    array-length v8, v7

    move v9, v4

    move v4, v3

    :goto_1
    if-ge v4, v8, :cond_1

    aget-object v10, v7, v4

    invoke-virtual {v6, v10}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/4 v9, 0x1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    move v4, v9

    goto :goto_0

    :cond_2
    array-length v0, p3

    move v2, v1

    move v1, v3

    :goto_2
    if-ge v1, v0, :cond_5

    aget-object v5, p3, v1

    move-object v6, v5

    check-cast v6, Ljava/lang/String;

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiRegexs:[Ljava/lang/String;

    array-length v8, v7

    move v9, v2

    move v2, v3

    :goto_3
    if-ge v2, v8, :cond_4

    aget-object v10, v7, v2

    invoke-virtual {v6, v10}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    const/4 v9, 0x1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_4
    add-int/lit8 v1, v1, 0x1

    move v2, v9

    goto :goto_2

    :cond_5
    if-eqz v4, :cond_6

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroid/support/v7/preference/SwitchPreferenceCompat;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->updateConfigSummary(Landroid/net/wifi/WifiConfiguration;)V

    goto :goto_4

    :cond_6
    if-eqz v2, :cond_7

    const v0, 0x7f121e52

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setSummary(I)V

    :cond_7
    :goto_4
    return-void
.end method


# virtual methods
.method public DialogShowing(I)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    return v0

    :cond_0
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->warnWifiDisableDialog:Landroid/app/AlertDialog;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->warnWifiDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    return v0

    :cond_2
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mNoSimDialog:Landroid/app/AlertDialog;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mNoSimDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public dismissDialog(I)V
    .locals 3

    const/4 v0, 0x5

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eq p1, v0, :cond_1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->warnWifiDisableDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->warnWifiDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->warnWifiDisableDialog:Landroid/app/AlertDialog;

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showProgress(Z)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mNoSimDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mNoSimDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mNoSimDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mNoSimDialog:Landroid/app/AlertDialog;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWarningDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWarningDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWarningDialog:Landroid/app/AlertDialog;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWarnRoam:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWarnRoam:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWarnRoam:Landroid/app/AlertDialog;

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWarnRoamBulder:Landroid/app/AlertDialog$Builder;

    if-eqz v0, :cond_3

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWarnRoamBulder:Landroid/app/AlertDialog$Builder;

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    const/16 v2, 0xd

    if-eq v0, v2, :cond_4

    const/16 v2, 0xc

    if-eq v0, v2, :cond_4

    const/4 v2, 0x3

    if-eq p1, v2, :cond_4

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setChecked(Z)V

    :cond_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getStaNum()I
    .locals 5

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v1

    const-string v2, "WifiApSwitchEnabler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "STANUM: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public handleDualPopup(I)V
    .locals 3

    const-string v0, "WifiApSwitchEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleDualPopup:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_ap_dual_popup"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public initSwitchbar()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->show()V

    return-void
.end method

.method isProvisioningNeeded()Z
    .locals 4

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isProvisioningCheck()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v0, "ATT"

    sget-object v2, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x2

    if-nez v0, :cond_1

    const-string v0, "VZW"

    sget-object v3, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "TMO"

    sget-object v3, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "NEWCO"

    sget-object v3, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const-string v0, "net.tethering.noprovisioning"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mProvisionApp:[Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mProvisionApp:[Ljava/lang/String;

    array-length v0, v0

    if-eq v0, v2, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mTetheringProvisionApp:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isWifiSharingEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "VZW"

    sget-object v3, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isWifiConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "WifiApSwitchEnabler"

    const-string v2, "Wifi is connected so skip provisioning for Wifi Sharing"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_4
    const-string v0, "WifiApSwitchEnabler"

    const-string v3, "Wifi is not connected so dont skip provisioning for Wifi Sharing"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mProvisionApp:[Ljava/lang/String;

    array-length v0, v0

    if-ne v0, v2, :cond_6

    const/4 v1, 0x1

    nop

    :cond_6
    return v1

    :cond_7
    :goto_0
    return v1
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5

    const-string v0, "WifiApSwitchEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCheckedChanged() setwifiap:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p2}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isSetChecked:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const v0, 0x7f1212e9

    const v1, 0x7f1208f6

    if-eqz p2, :cond_2

    const-wide/16 v2, 0x1

    goto :goto_0

    :cond_2
    const-wide/16 v2, 0x0

    :goto_0
    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isWifiApBlocked()Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "airplane_mode_on"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    move v0, v2

    goto :goto_1

    :cond_4
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mIsAirplaneMode:Z

    if-eqz p2, :cond_6

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    const-string v3, "device_policy"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iget-boolean v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mIsAirplaneMode:Z

    if-eqz v3, :cond_5

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    const v3, 0x7f120a63

    invoke-static {v2, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setEnabled(Z)V

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setChecked(Z)V

    return-void

    :cond_5
    if-eqz v0, :cond_6

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/app/admin/DevicePolicyManager;->semGetAllowInternetSharing(Landroid/content/ComponentName;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "WifiApSwitchEnabler"

    const-string v4, "WIFI_AP Internet Sharing is restricted by DPM."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    const v4, 0x7f121d77

    invoke-static {v3, v4, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setEnabled(Z)V

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setChecked(Z)V

    return-void

    :cond_6
    if-eqz p2, :cond_8

    const-string v0, "USC"

    sget-object v1, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showDialog(I)V

    goto :goto_2

    :cond_7
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->preProvisioning()V

    goto :goto_2

    :cond_8
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setSoftapEnabled(Z)Z

    :goto_2
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroid/support/v7/preference/SwitchPreferenceCompat;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroid/support/v7/preference/SwitchPreferenceCompat;

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroid/support/v7/preference/SwitchPreferenceCompat;

    invoke-virtual {v2}, Landroid/support/v7/preference/SwitchPreferenceCompat;->isChecked()Z

    move-result v2

    if-ne v2, v0, :cond_1

    return v3

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroid/support/v7/preference/SwitchPreferenceCompat;

    invoke-virtual {v2, v1}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setEnabled(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroid/support/v7/preference/SwitchPreferenceCompat;

    invoke-virtual {v2, v0}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setChecked(Z)V

    :cond_2
    if-eqz v0, :cond_4

    const-string v1, "USC"

    sget-object v2, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showDialog(I)V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->preProvisioning()V

    goto :goto_0

    :cond_4
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setSoftapEnabled(Z)Z

    :goto_0
    return v3
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isWifiApBlocked()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    return-void
.end method

.method public pause()V
    .locals 4

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isWifiApBlocked()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_0
    return-void

    :cond_1
    const-string v0, "WifiApSwitchEnabler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "intentReceiver="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->intentReceiver:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    iput-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->intentReceiver:Landroid/content/Intent;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showProgress(Z)V

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->dismissDialog(I)V

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanKDIModel()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mTetherRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mTetherHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mTetherRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_3
    return-void
.end method

.method public resume()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_ap_dual_popup"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->dismissDialog(I)V

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->handleDualPopup(I)V

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isWifiApBlocked()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->intentReceiver:Landroid/content/Intent;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->intentReceiver:Landroid/content/Intent;

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_4
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->dismissDialog(I)V

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->enableWifiCheckBox()V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mDialogConfigure:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mDialogConfigure:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mDialogConfigure:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->dismissSpinnerPopup()V

    :cond_5
    return-void
.end method

.method public saveIsShowPassword()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_ap_show_passwd"

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mDialogConfigure:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    invoke-virtual {v2}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->getCheckShowPassword()Z

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public secSetSoftapEnabled(Z)V
    .locals 4

    if-eqz p1, :cond_4

    sget-boolean v0, Lcom/android/settings/Utils;->SUPPORT_MOBILEAP_WIFISHARINGLITE:Z

    const/16 v1, 0xa

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "wifi_ap_wifi_sharing"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "wifi_ap_wifi_sharing"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    sget-boolean v0, Lcom/android/settings/Utils;->SUPPORT_MOBILEAP_WIFISHARING:Z

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v2, "CscFeature_Wifi_DisableMobileApWifiConcurrency"

    invoke-virtual {v0, v2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "wifi_ap_wifi_sharing"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_ap_first_time_wifi_sharing_dialog"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v0, "VZW"

    sget-object v1, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isWifiConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-boolean v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->bShowAttentionDialogVzw:Z

    const/16 v0, 0x12

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showDialog(I)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->afterAttentionDialog()V

    goto :goto_0

    :cond_2
    const-string v0, "WifiApSwitchEnabler"

    const-string v1, " Check secSetSoftapEnabled non Verizon device "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showDialog(I)V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->afterAttentionDialog()V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->getStaNum()I

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showDialog(I)V

    goto :goto_0

    :cond_5
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setSoftapEnabled(Z)Z

    :goto_0
    return-void
.end method

.method public sendSetChecked(Z)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mHandler:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$SwitchHandler;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mHandler:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$SwitchHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$SwitchHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mHandler:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$SwitchHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$SwitchHandler;->sendEmptyMessage(I)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public setChecked(Z)V
    .locals 4

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isWifiApBlocked()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    iput-boolean v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isSetChecked:Z

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isSetChecked:Z

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroid/support/v7/preference/SwitchPreferenceCompat;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroid/support/v7/preference/SwitchPreferenceCompat;

    invoke-virtual {v0, p1}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setChecked(Z)V

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    const/16 v3, 0xc

    if-eq v0, v3, :cond_5

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    const/16 v3, 0xa

    if-ne v0, v3, :cond_4

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, v2}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    goto :goto_1

    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    :cond_6
    :goto_1
    return-void
.end method

.method public setEnabled(Z)V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isWifiApBlocked()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    nop

    :cond_0
    iput-boolean v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mIsAirplaneMode:Z

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setEnabled(Z)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroid/support/v7/preference/SwitchPreferenceCompat;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mIsAirplaneMode:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroid/support/v7/preference/SwitchPreferenceCompat;

    invoke-virtual {v0, p1}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setEnabled(Z)V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    :cond_3
    return-void
.end method

.method public setInformation(Lcom/android/settings/RestrictedSettingsFragment;)V
    .locals 2

    const-string v0, "WifiApSwitchEnabler"

    const-string v1, "setInformation: RestrictedSettingsFragment"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mActivity:Ljava/lang/Object;

    return-void
.end method

.method public setInformation(Lcom/android/settings/SettingsPreferenceFragment;)V
    .locals 2

    const-string v0, "WifiApSwitchEnabler"

    const-string v1, "setInformation: SettingsPreferenceFragment"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mActivity:Ljava/lang/Object;

    return-void
.end method

.method public setSoftapEnabled(Z)Z
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mIsAirplaneMode:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setEnabled(Z)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setChecked(Z)V

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->getRvfMode()I

    move-result v2

    if-lez v2, :cond_1

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setRvfMode(I)V

    const-string v2, "WifiApSwitchEnabler"

    const-string v3, "setRvfMode(0) for Hotspot configuration"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v2

    const/16 v3, 0xd

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v1, v0}, Landroid/net/wifi/WifiManager;->semSetWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    const-wide/16 v2, 0x258

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "WifiApSwitchEnabler"

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

    :cond_1
    :goto_0
    const-string v2, "WifiApSwitchEnabler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Check airplane mode once again: on ? "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mIsAirplaneMode:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_2

    iget-boolean v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mIsAirplaneMode:Z

    if-eqz v2, :cond_2

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setEnabled(Z)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setChecked(Z)V

    return v0

    :cond_2
    const-string v2, "WifiApSwitchEnabler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setSoftapEnabled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isProvisioningNeeded()Z

    move-result v3

    if-eqz v3, :cond_3

    sput-boolean v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsProvisioningResultOk:Z

    const-string v3, "WifiApSwitchEnabler"

    const-string v4, "Provisioning succeeded."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-direct {p0, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showProgress(Z)V

    if-eqz p1, :cond_4

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setChecked(Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mHandler:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$SwitchHandler;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mHandler:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$SwitchHandler;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$SwitchHandler;->sendEmptyMessage(I)Z

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mHandler:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$SwitchHandler;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mHandler:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$SwitchHandler;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$SwitchHandler;->sendEmptyMessage(I)Z

    :cond_5
    :goto_1
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setEnabled(Z)V

    if-eqz p1, :cond_7

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    const-string v4, "device_policy"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v3, v1}, Landroid/app/admin/DevicePolicyManager;->semGetAllowInternetSharing(Landroid/content/ComponentName;)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mHandler:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$SwitchHandler;

    if-eqz v1, :cond_6

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->sendSetChecked(Z)V

    :cond_6
    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setEnabled(Z)V

    return v0

    :cond_7
    return v2
.end method

.method public showDialog(I)V
    .locals 13

    const/4 v0, 0x0

    const/16 v1, 0x12

    if-eq p1, v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setChecked(Z)V

    :cond_0
    const v1, 0x7f120ea6

    const v2, 0x7f121a5e

    const v3, 0x7f120475

    const v4, 0x7f121cab

    const v5, 0x7f121da8

    const/4 v6, 0x0

    const/4 v7, 0x1

    const v8, 0x7f120774

    const v9, 0x7f12077a

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_7

    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/samsung/android/settings/WifiApUtils;->getDialogTheme()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    const v2, 0x7f121dcd

    invoke-static {v1, v2}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$50;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$50;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual {v0, v9, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$51;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$51;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    const v2, 0x7f121dd0

    invoke-static {v1, v2}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->warnWifiDisableDialog:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->warnWifiDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_7

    :pswitch_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/samsung/android/settings/WifiApUtils;->getDialogTheme()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    const v2, 0x7f121dcf

    invoke-static {v1, v2}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$47;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$47;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual {v0, v9, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$48;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$48;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual {v0, v8, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$49;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$49;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    const v2, 0x7f121dce

    invoke-static {v1, v2}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->warnWifiDisableDialog:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->warnWifiDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_7

    :pswitch_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/samsung/android/settings/WifiApUtils;->getDialogTheme()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isWifiSharingEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    :cond_1
    const v1, 0x7f121da5

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f121da4

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    :goto_0
    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$35;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$35;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual {v0, v9, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$36;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$36;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual {v0, v8, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$37;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$37;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_7

    :pswitch_3
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/samsung/android/settings/WifiApUtils;->getDialogTheme()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const v2, 0x7f0d02c0

    invoke-virtual {v1, v2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v5, 0x7f0a0976

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v7, v4}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    new-instance v4, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$32;

    invoke-direct {v4, p0, v5, v6}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$32;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;Landroid/widget/CheckBox;Landroid/content/ContentResolver;)V

    invoke-virtual {v0, v9, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v4, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$33;

    invoke-direct {v4, p0, v6}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$33;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;Landroid/content/ContentResolver;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v3, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$34;

    invoke-direct {v3, p0, v6}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$34;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;Landroid/content/ContentResolver;)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_7

    :pswitch_4
    const-string v0, "WifiApSwitchEnabler"

    const-string v1, "CASE DIALOG_WARN_SMARTVIEW_DISABLE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/samsung/android/settings/WifiApUtils;->getDialogTheme()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f121d82

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f12077f

    new-instance v3, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$15;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$15;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$14;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$14;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual {v1, v8, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$13;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$13;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f121d85

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_7

    :pswitch_5
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showMetorPCSHelpPoup()Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_7

    :pswitch_6
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    const-string v1, "dontshowmemhsfirsttime"

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->getBooleanFromSharedPreference(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mIsTablet:Z

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showFirstTimePoup()V

    goto/16 :goto_7

    :cond_2
    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setSoftapEnabled(Z)Z

    goto/16 :goto_7

    :pswitch_7
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x2

    :try_start_0
    const-string v5, "WifiApSwitchEnabler"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Wifi Sharing provider value"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "wifi_ap_wifi_sharing"

    invoke-static {v1, v9, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "wifi_ap_wifi_sharing"

    invoke-static {v1, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v5
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v5, v7, :cond_3

    const/4 v2, 0x1

    :cond_3
    goto :goto_1

    :catch_0
    move-exception v5

    const-string v7, "WifiApSwitchEnabler"

    const-string v8, "Wifi Sharing Provider is not defined"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f03010e

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v5

    new-instance v7, Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/samsung/android/settings/WifiApUtils;->getDialogTheme()I

    move-result v9

    invoke-direct {v7, v8, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    iget-object v8, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v8, v4}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v8, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$46;

    invoke-direct {v8, p0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$46;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;Landroid/content/ContentResolver;)V

    invoke-virtual {v4, v5, v2, v8}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v8, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$45;

    invoke-direct {v8, p0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$45;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;Landroid/content/ContentResolver;)V

    invoke-virtual {v4, v3, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$44;

    invoke-direct {v4, p0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$44;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;Landroid/content/ContentResolver;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    const v8, 0x7f0d02be

    invoke-static {v4, v8, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    sget-boolean v8, Lcom/android/settings/Utils;->SUPPORT_MOBILEAP_WIFISHARINGLITE:Z

    if-eqz v8, :cond_4

    const-string v8, "WifiApSwitchEnabler"

    const-string v9, "WifiSharingLite feature enabled. Showing additional msg in dialog"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v8, 0x7f0a0950

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "\n\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f121dd3

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    invoke-virtual {v3}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v8

    invoke-virtual {v8, v4, v6, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_7

    :pswitch_8
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/samsung/android/settings/WifiApUtils;->getDialogTheme()I

    move-result v3

    invoke-direct {v0, v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f120b78

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v3, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$43;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$43;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual {v1, v9, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v3, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$42;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$42;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual {v1, v8, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v3, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$41;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$41;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_7

    :pswitch_9
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/samsung/android/settings/WifiApUtils;->getDialogTheme()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f120711

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$30;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$30;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual {v1, v9, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$29;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$29;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual {v1, v8, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$28;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$28;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f121a5b

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_7

    :pswitch_a
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/samsung/android/settings/WifiApUtils;->getDialogTheme()I

    move-result v3

    invoke-direct {v0, v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v2, 0x7f121f96

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$7;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$7;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual {v0, v9, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$8;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$8;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_7

    :pswitch_b
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/samsung/android/settings/WifiApUtils;->getDialogTheme()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    const v2, 0x7f121db3

    invoke-static {v1, v2}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$40;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$40;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual {v1, v9, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$39;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$39;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual {v1, v8, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$38;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$38;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f121db6

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_7

    :pswitch_c
    const-string v0, "WifiApSwitchEnabler"

    const-string v1, "DIALOG_FIRST_TIME_CONFIGURE create"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    new-instance v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mConfigureDialogListener:Landroid/content/DialogInterface$OnClickListener;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/net/wifi/WifiConfiguration;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mDialogConfigure:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mDialogConfigure:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$31;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$31;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mDialogConfigure:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->show()V

    goto/16 :goto_7

    :pswitch_d
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/samsung/android/settings/WifiApUtils;->getDialogTheme()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v2, 0x7f121cd8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-boolean v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mIsTablet:Z

    if-nez v2, :cond_5

    iget-boolean v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mIsLightTheme:Z

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060342

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    :cond_5
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06004d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_2
    const/high16 v2, 0x41800000    # 16.0f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    const/high16 v2, 0x41a00000    # 20.0f

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v7, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    const/16 v3, 0x1e

    invoke-virtual {v1, v2, v3, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    const/high16 v3, 0x40000000    # 2.0f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v1, v3, v4}, Landroid/widget/TextView;->setLineSpacing(FF)V

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v3, 0x7f12031d

    new-instance v4, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$2;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$2;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v3, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$3;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$3;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual {v0, v8, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v3, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$4;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$4;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWarningDialog:Landroid/app/AlertDialog;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWarningDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_7

    :pswitch_e
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/samsung/android/settings/WifiApUtils;->getDialogTheme()I

    move-result v3

    invoke-direct {v0, v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    const v3, 0x7f120707

    invoke-static {v2, v3}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$27;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$27;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual {v2, v9, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$26;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$26;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual {v2, v8, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$25;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$25;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v3, v1}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_7

    :pswitch_f
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    const v1, 0x7f0d02e8

    invoke-static {v0, v1, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ja"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    const-string v5, "ja"

    goto :goto_3

    :cond_6
    const-string v5, "en"

    :goto_3
    move-object v3, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<a href=\"http://tether.docomo-de.net/dcmtrg/tether_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".html\">"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v6, 0x7f121a5c

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "</a>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "http://tether.docomo-de.net/dcmtrg/tether_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".html"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f0a00a5

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v7, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$21;

    invoke-direct {v7, p0, v5}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$21;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v7, Landroid/app/AlertDialog$Builder;

    iget-object v10, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/samsung/android/settings/WifiApUtils;->getDialogTheme()I

    move-result v11

    invoke-direct {v7, v10, v11}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v7, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    new-instance v11, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$24;

    invoke-direct {v11, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$24;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual {v10, v9, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    new-instance v10, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$23;

    invoke-direct {v10, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$23;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual {v9, v8, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    new-instance v9, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$22;

    invoke-direct {v9, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$22;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const v9, 0x1040014

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    iput-object v8, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mAttentionDialog:Landroid/app/AlertDialog;

    iget-object v8, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mAttentionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v8}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_7

    :pswitch_10
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setChecked(Z)V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/samsung/android/settings/WifiApUtils;->getDialogTheme()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWarnRoamBulder:Landroid/app/AlertDialog$Builder;

    const-string v1, "VZW"

    sget-object v2, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const v2, 0x7f120dd2

    if-eqz v1, :cond_8

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWarnRoamBulder:Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    const v3, 0x7f121da0

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWarnRoamBulder:Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$9;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$9;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWarnRoamBulder:Landroid/app/AlertDialog$Builder;

    const v1, 0x7f121da2

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWarnRoamBulder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWarnRoam:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWarnRoam:Landroid/app/AlertDialog;

    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$10;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$10;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_4

    :cond_8
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWarnRoamBulder:Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    const v4, 0x7f121d9f

    new-array v5, v7, [Ljava/lang/Object;

    const-string v6, "$20.48"

    aput-object v6, v5, v0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWarnRoamBulder:Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$11;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$11;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWarnRoamBulder:Landroid/app/AlertDialog$Builder;

    const v1, 0x7f121da1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWarnRoamBulder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWarnRoam:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWarnRoam:Landroid/app/AlertDialog;

    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$12;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$12;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :goto_4
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWarnRoam:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_7

    :pswitch_11
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/samsung/android/settings/WifiApUtils;->getDialogTheme()I

    move-result v4

    invoke-direct {v1, v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    const v4, 0x7f121cdc

    invoke-static {v3, v4}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$20;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$20;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual {v3, v9, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$19;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$19;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual {v3, v8, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_7

    :pswitch_12
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/samsung/android/settings/WifiApUtils;->getDialogTheme()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const-string v1, "VZW"

    sget-object v2, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    const v2, 0x7f0d02bc

    invoke-static {v1, v2, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->customView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->customView:Landroid/view/View;

    const v2, 0x7f0a094c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiDisableWarnDoNotShowAgainLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->customView:Landroid/view/View;

    const v2, 0x7f0a094b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiDisableWarnDoNotShowAgain:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->customView:Landroid/view/View;

    const v2, 0x7f0a0934

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f121daa

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->customView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    goto :goto_5

    :cond_9
    const-string v1, "ATT"

    sget-object v2, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const v1, 0x7f121da9

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_5

    :cond_a
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1, v5}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    :goto_5
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    const v2, 0x7f1210d7

    invoke-static {v1, v2}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$16;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$16;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$17;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$17;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual {v0, v8, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$18;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$18;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    const v2, 0x7f121dae

    invoke-static {v1, v2}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->warnWifiDisableDialog:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->warnWifiDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_7

    :pswitch_13
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->dismissDialog(I)V

    invoke-direct {p0, v7}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showProgress(Z)V

    goto :goto_7

    :pswitch_14
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/samsung/android/settings/WifiApUtils;->getDialogTheme()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-static {}, Lcom/android/settings/Utils;->isChinaCTCModel()Z

    move-result v1

    if-eqz v1, :cond_b

    const v1, 0x7f120ea0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_6

    :cond_b
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    const v2, 0x7f121f97

    invoke-static {v1, v2}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    :goto_6
    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$5;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$5;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual {v0, v9, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$6;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$6;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f121f9b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mNoSimDialog:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mNoSimDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    nop

    :cond_c
    :goto_7
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public updateConfigSummary(Landroid/net/wifi/WifiConfiguration;)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    const v1, 0x1040bdb

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    const v2, 0x7f121fa0

    invoke-static {v2}, Lcom/samsung/android/settings/WifiApUtils;->getStringID(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    if-nez p1, :cond_0

    move-object v3, v0

    goto :goto_0

    :cond_0
    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    :goto_0
    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

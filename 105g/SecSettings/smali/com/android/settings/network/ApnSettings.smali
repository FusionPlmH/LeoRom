.class public Lcom/android/settings/network/ApnSettings;
.super Lcom/android/settings/RestrictedSettingsFragment;
.source "ApnSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/samsung/android/settings/multisim/MultiSimTabInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/network/ApnSettings$RestoreApnProcessHandler;,
        Lcom/android/settings/network/ApnSettings$RestoreApnUiHandler;
    }
.end annotation


# static fields
.field private static final DEFAULTAPN_URI:Landroid/net/Uri;

.field private static final DEFAULTAPN_URI_USING_SUBID:Landroid/net/Uri;

.field static final PREFERAPN_NO_UPDATE_URI_USING_SUBID:Landroid/net/Uri;

.field private static final PREFERAPN_URI:Landroid/net/Uri;

.field public static final PREFERAPN_URI_USING_SUBID:Landroid/net/Uri;

.field private static mRestoreDefaultApnMode:Z

.field private static sCurrentTab:I


# instance fields
.field apnList:Landroid/support/v7/preference/PreferenceGroup;

.field editor:Landroid/content/SharedPreferences$Editor;

.field private hideApnList:[Ljava/lang/String;

.field private mAddApn:Landroid/widget/RadioButton;

.field mAddApnListener:Landroid/view/View$OnClickListener;

.field private mAddCpa:Landroid/widget/RadioButton;

.field mAddCpaListener:Landroid/view/View$OnClickListener;

.field private mAirplainModeEnabledObserver:Landroid/database/ContentObserver;

.field private mAllowAddingApns:Z

.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBluetoothListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private final mBluetoothPanLock:Ljava/lang/Object;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mCpaAlertDialog:Landroid/app/AlertDialog;

.field private mDelayHandler:Landroid/os/Handler;

.field private mDelayRunnable:Ljava/lang/Runnable;

.field private mEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

.field private mHideImsApn:Z

.field private mHotSwapReceiver:Landroid/content/BroadcastReceiver;

.field private mHotSwapStateFilter:Landroid/content/IntentFilter;

.field private mIsBtTetherOn:Z

.field private mMobileStateFilter:Landroid/content/IntentFilter;

.field private final mMobileStateReceiver:Landroid/content/BroadcastReceiver;

.field private mMvnoMatchData:Ljava/lang/String;

.field private mMvnoType:Ljava/lang/String;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mProxy:Landroid/bluetooth/BluetoothPan;

.field private mRestoreApnProcessHandler:Lcom/android/settings/network/ApnSettings$RestoreApnProcessHandler;

.field private mRestoreApnUiHandler:Lcom/android/settings/network/ApnSettings$RestoreApnUiHandler;

.field private mRestoreDefaultApnThread:Landroid/os/HandlerThread;

.field private mRestoreDlg:Landroid/app/AlertDialog;

.field private mRestoreHandler:Landroid/os/Handler;

.field private mRestoreRunnable:Ljava/lang/Runnable;

.field private mRestoring:Landroid/app/ProgressDialog;

.field private mSIMchangedObserver:Landroid/database/ContentObserver;

.field private mSelectedKey:Ljava/lang/String;

.field private mSubId:J

.field private mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

.field private mTabHost:Landroid/widget/TabHost;

.field private mTabListener:Landroid/widget/TabHost$OnTabChangeListener;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private final mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mTetherStateFilter:Landroid/content/IntentFilter;

.field private mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

.field private mUnavailable:Z

.field private mUserManager:Landroid/os/UserManager;

.field private mccmnc:Ljava/lang/String;

.field private mcfgNetTypeCap:Ljava/lang/String;

.field pref:Landroid/content/SharedPreferences;

.field private pref_vzwdefault:Lcom/android/settings/network/ApnPreference;

.field private tIntent:Landroid/content/Intent;

.field private tabInterface:Lcom/samsung/android/settings/multisim/MultiSimTabInterface;

.field private vzwapn:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://telephony/carriers/restore"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/network/ApnSettings;->DEFAULTAPN_URI:Landroid/net/Uri;

    const-string v0, "content://telephony/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/network/ApnSettings;->PREFERAPN_URI:Landroid/net/Uri;

    const-string v0, "content://telephony/carriers/preferapn/subId/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/network/ApnSettings;->PREFERAPN_URI_USING_SUBID:Landroid/net/Uri;

    const-string v0, "content://telephony/carriers/restore/subId/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/network/ApnSettings;->DEFAULTAPN_URI_USING_SUBID:Landroid/net/Uri;

    const-string v0, "content://telephony/carriers/preferapn_no_update/subId/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/network/ApnSettings;->PREFERAPN_NO_UPDATE_URI_USING_SUBID:Landroid/net/Uri;

    const/4 v0, 0x0

    sput v0, Lcom/android/settings/network/ApnSettings;->sCurrentTab:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const-string v0, "no_config_mobile_networks"

    invoke-direct {p0, v0}, Lcom/android/settings/RestrictedSettingsFragment;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_RIL_ConfigNetworkTypeCapability"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/network/ApnSettings;->mcfgNetTypeCap:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/network/ApnSettings;->pref:Landroid/content/SharedPreferences;

    iput-object v0, p0, Lcom/android/settings/network/ApnSettings;->editor:Landroid/content/SharedPreferences$Editor;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/settings/network/ApnSettings;->mDelayHandler:Landroid/os/Handler;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/settings/network/ApnSettings;->mRestoreHandler:Landroid/os/Handler;

    iput-object v0, p0, Lcom/android/settings/network/ApnSettings;->vzwapn:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/network/ApnSettings;->hideApnList:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/network/ApnSettings;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/settings/network/ApnSettings;->mCpaAlertDialog:Landroid/app/AlertDialog;

    const-wide/32 v0, 0x7fffffff

    iput-wide v0, p0, Lcom/android/settings/network/ApnSettings;->mSubId:J

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/network/ApnSettings;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/network/ApnSettings;->mIsBtTetherOn:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/settings/network/ApnSettings;->mBluetoothPanLock:Ljava/lang/Object;

    new-instance v0, Lcom/android/settings/network/ApnSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/network/ApnSettings$1;-><init>(Lcom/android/settings/network/ApnSettings;)V

    iput-object v0, p0, Lcom/android/settings/network/ApnSettings;->mMobileStateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/settings/network/ApnSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/network/ApnSettings$2;-><init>(Lcom/android/settings/network/ApnSettings;)V

    iput-object v0, p0, Lcom/android/settings/network/ApnSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/settings/network/ApnSettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings/network/ApnSettings$3;-><init>(Lcom/android/settings/network/ApnSettings;)V

    iput-object v0, p0, Lcom/android/settings/network/ApnSettings;->mHotSwapReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/settings/network/ApnSettings$4;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/network/ApnSettings$4;-><init>(Lcom/android/settings/network/ApnSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/network/ApnSettings;->mAirplainModeEnabledObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/settings/network/ApnSettings$5;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/network/ApnSettings$5;-><init>(Lcom/android/settings/network/ApnSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/network/ApnSettings;->mSIMchangedObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/settings/network/ApnSettings$6;

    invoke-direct {v0, p0}, Lcom/android/settings/network/ApnSettings$6;-><init>(Lcom/android/settings/network/ApnSettings;)V

    iput-object v0, p0, Lcom/android/settings/network/ApnSettings;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    new-instance v0, Lcom/android/settings/network/ApnSettings$7;

    invoke-direct {v0, p0}, Lcom/android/settings/network/ApnSettings$7;-><init>(Lcom/android/settings/network/ApnSettings;)V

    iput-object v0, p0, Lcom/android/settings/network/ApnSettings;->mBluetoothListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    new-instance v0, Lcom/android/settings/network/ApnSettings$11;

    invoke-direct {v0, p0}, Lcom/android/settings/network/ApnSettings$11;-><init>(Lcom/android/settings/network/ApnSettings;)V

    iput-object v0, p0, Lcom/android/settings/network/ApnSettings;->mAddApnListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/settings/network/ApnSettings$12;

    invoke-direct {v0, p0}, Lcom/android/settings/network/ApnSettings$12;-><init>(Lcom/android/settings/network/ApnSettings;)V

    iput-object v0, p0, Lcom/android/settings/network/ApnSettings;->mAddCpaListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/settings/network/ApnSettings$13;

    invoke-direct {v0, p0}, Lcom/android/settings/network/ApnSettings$13;-><init>(Lcom/android/settings/network/ApnSettings;)V

    iput-object v0, p0, Lcom/android/settings/network/ApnSettings;->mTabListener:Landroid/widget/TabHost$OnTabChangeListener;

    new-instance v0, Lcom/android/settings/network/ApnSettings$14;

    invoke-direct {v0, p0}, Lcom/android/settings/network/ApnSettings$14;-><init>(Lcom/android/settings/network/ApnSettings;)V

    iput-object v0, p0, Lcom/android/settings/network/ApnSettings;->mEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

    return-void
.end method

.method static synthetic access$000(Landroid/content/Intent;)Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 1

    invoke-static {p0}, Lcom/android/settings/network/ApnSettings;->getMobileDataState(Landroid/content/Intent;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/network/ApnSettings;->mRestoreDefaultApnMode:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/settings/network/ApnSettings;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/network/ApnSettings;->mBluetoothPanLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$102(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/settings/network/ApnSettings;->mRestoreDefaultApnMode:Z

    return p0
.end method

.method static synthetic access$1100(Lcom/android/settings/network/ApnSettings;)Landroid/bluetooth/BluetoothPan;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/network/ApnSettings;->mProxy:Landroid/bluetooth/BluetoothPan;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/settings/network/ApnSettings;Landroid/bluetooth/BluetoothPan;)Landroid/bluetooth/BluetoothPan;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/network/ApnSettings;->mProxy:Landroid/bluetooth/BluetoothPan;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/settings/network/ApnSettings;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/network/ApnSettings;->mCpaAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/settings/network/ApnSettings;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/network/ApnSettings;->mRestoring:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/settings/network/ApnSettings;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/network/ApnSettings;->setSelectedApnKey(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/settings/network/ApnSettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/network/ApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/settings/network/ApnSettings;)Lcom/android/settings/network/ApnPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/network/ApnSettings;->pref_vzwdefault:Lcom/android/settings/network/ApnPreference;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/settings/network/ApnSettings;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/settings/network/ApnSettings;->removeDialog(I)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/settings/network/ApnSettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/network/ApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/settings/network/ApnSettings;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/network/ApnSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/network/ApnSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/network/ApnSettings;->fillList()V

    return-void
.end method

.method static synthetic access$2000()I
    .locals 1

    sget v0, Lcom/android/settings/network/ApnSettings;->sCurrentTab:I

    return v0
.end method

.method static synthetic access$2002(I)I
    .locals 0

    sput p0, Lcom/android/settings/network/ApnSettings;->sCurrentTab:I

    return p0
.end method

.method static synthetic access$2100()Landroid/net/Uri;
    .locals 1

    sget-object v0, Lcom/android/settings/network/ApnSettings;->DEFAULTAPN_URI_USING_SUBID:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/settings/network/ApnSettings;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/settings/network/ApnSettings;->mSubId:J

    return-wide v0
.end method

.method static synthetic access$2202(Lcom/android/settings/network/ApnSettings;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/settings/network/ApnSettings;->mSubId:J

    return-wide p1
.end method

.method static synthetic access$2300()Landroid/net/Uri;
    .locals 1

    sget-object v0, Lcom/android/settings/network/ApnSettings;->DEFAULTAPN_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/android/settings/network/ApnSettings;Landroid/telephony/SubscriptionInfo;)Landroid/telephony/SubscriptionInfo;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/network/ApnSettings;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    return-object p1
.end method

.method static synthetic access$2602(Lcom/android/settings/network/ApnSettings;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/network/ApnSettings;->mMvnoType:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2702(Lcom/android/settings/network/ApnSettings;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/network/ApnSettings;->mMvnoMatchData:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2800(Lcom/android/settings/network/ApnSettings;)Lcom/samsung/android/settings/multisim/MultiSimTabInterface;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/network/ApnSettings;->tabInterface:Lcom/samsung/android/settings/multisim/MultiSimTabInterface;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/settings/network/ApnSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/network/ApnSettings;->setTabIndicatorTextColor()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/network/ApnSettings;)Lcom/android/settings/network/ApnSettings$RestoreApnUiHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/network/ApnSettings;->mRestoreApnUiHandler:Lcom/android/settings/network/ApnSettings$RestoreApnUiHandler;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/settings/network/ApnSettings;)Landroid/widget/TabHost;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/network/ApnSettings;->mTabHost:Landroid/widget/TabHost;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/settings/network/ApnSettings;Lcom/android/settings/network/ApnSettings$RestoreApnUiHandler;)Lcom/android/settings/network/ApnSettings$RestoreApnUiHandler;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/network/ApnSettings;->mRestoreApnUiHandler:Lcom/android/settings/network/ApnSettings$RestoreApnUiHandler;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/settings/network/ApnSettings;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/network/ApnSettings;->mRestoreRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/settings/network/ApnSettings;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/network/ApnSettings;->mRestoreRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/settings/network/ApnSettings;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/network/ApnSettings;->mRestoreHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/network/ApnSettings;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/network/ApnSettings;->restoreDefaultApn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/settings/network/ApnSettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/network/ApnSettings;->mIsBtTetherOn:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/settings/network/ApnSettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/network/ApnSettings;->mIsBtTetherOn:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/settings/network/ApnSettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/network/ApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method private addApnToList(Lcom/android/settings/network/ApnPreference;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/internal/telephony/uicc/IccRecords;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settings/network/ApnPreference;",
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/network/ApnPreference;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/network/ApnPreference;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/network/ApnPreference;",
            ">;",
            "Lcom/android/internal/telephony/uicc/IccRecords;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "ApnSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addApnToList : mvnoType is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "ApnSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addApnToList : mvnoMatchData is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p5, :cond_1

    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p5, p6, p7}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mvnoMatches(Lcom/android/internal/telephony/uicc/IccRecords;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ApnSettings"

    const-string v1, "ApnSetting.mvnoMatches"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object p6, p0, Lcom/android/settings/network/ApnSettings;->mMvnoType:Ljava/lang/String;

    iput-object p7, p0, Lcom/android/settings/network/ApnSettings;->mMvnoMatchData:Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-virtual {p4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method private addNewApn()V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT"

    sget-object v2, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v1, p0, Lcom/android/settings/network/ApnSettings;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/network/ApnSettings;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    const-string/jumbo v2, "sub_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/settings/network/ApnSettings;->mMvnoType:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/network/ApnSettings;->mMvnoMatchData:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "mvno_type"

    iget-object v3, p0, Lcom/android/settings/network/ApnSettings;->mMvnoType:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "mvno_match_data"

    iget-object v3, p0, Lcom/android/settings/network/ApnSettings;->mMvnoMatchData:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    const-string/jumbo v2, "simSlot"

    sget v3, Lcom/android/settings/network/ApnSettings;->sCurrentTab:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {}, Lcom/samsung/android/settings/ConnectionsUtils;->isVZWConcept()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "vzw"

    const-string v3, "editable"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isSprModel()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "keyString"

    const-string v3, "hidden"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isUsOpenModel()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/settings/network/ApnSettings;->mccmnc:Ljava/lang/String;

    invoke-static {v2}, Lcom/samsung/android/settings/ConnectionsUtils;->isVZWSimInserted(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string/jumbo v2, "vzw"

    const-string v3, "editable"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/android/settings/network/ApnSettings;->mccmnc:Ljava/lang/String;

    invoke-static {v2}, Lcom/samsung/android/settings/ConnectionsUtils;->isSPRSimInserted(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "keyString"

    const-string v3, "hidden"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_5
    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/settings/network/ApnSettings;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private buildTabSpec(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;
    .locals 2

    iget-object v0, p0, Lcom/android/settings/network/ApnSettings;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, p1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/network/ApnSettings;->mEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    return-object v0
.end method

.method private dualSimMPS_DataLock(I)Z
    .locals 4

    const-string v0, "AddDataLock"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string v2, "CscFeature_RIL_ConfigSimLock"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/network/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/samsung/android/settings/ConnectionsUtils;->getSimOperator(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "persist.radio.networklocklist"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ApnSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[DataLockFeature] Enable for operator = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", simSlot = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    return v1

    :cond_0
    const-string v0, "ApnSettings"

    const-string v1, "DataLockFeature is disable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method private fillList()V
    .locals 35

    move-object/from16 v15, p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "numeric=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v15, Lcom/android/settings/network/ApnSettings;->tIntent:Landroid/content/Intent;

    sget v2, Lcom/android/settings/network/ApnSettings;->sCurrentTab:I

    iget-object v3, v15, Lcom/android/settings/network/ApnSettings;->mccmnc:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/samsung/android/settings/ConnectionsUtils;->getNumericString(Landroid/content/Intent;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v15, Lcom/android/settings/network/ApnSettings;->mContext:Landroid/content/Context;

    iget-object v3, v15, Lcom/android/settings/network/ApnSettings;->tIntent:Landroid/content/Intent;

    sget v4, Lcom/android/settings/network/ApnSettings;->sCurrentTab:I

    invoke-static {v2, v3, v4}, Lcom/samsung/android/settings/ConnectionsUtils;->appendWhereString(Landroid/content/Context;Landroid/content/Intent;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    iget-object v0, v15, Lcom/android/settings/network/ApnSettings;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/network/ApnSettings;->sCurrentTab:I

    iget-object v2, v15, Lcom/android/settings/network/ApnSettings;->mccmnc:Ljava/lang/String;

    invoke-static {v0, v14, v1, v2}, Lcom/samsung/android/settings/ConnectionsUtils;->getApnCursor(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/network/ApnSettings;->isCalling()Z

    move-result v26

    iget-object v0, v15, Lcom/android/settings/network/ApnSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/ConnectionsUtils;->isTetheringEnabled(Landroid/content/Context;)Z

    move-result v0

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanModel()Z

    move-result v1

    const/4 v12, 0x1

    const/4 v11, 0x0

    if-eqz v1, :cond_2

    if-nez v0, :cond_1

    iget-boolean v1, v15, Lcom/android/settings/network/ApnSettings;->mIsBtTetherOn:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v11

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v12

    :goto_1
    move v0, v1

    :cond_2
    move/from16 v27, v0

    if-eqz v13, :cond_1d

    const-string v0, "ApnSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "count of apn from telephony db : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/network/ApnSettings;->getEmptyTextView()Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3
    const/4 v0, 0x0

    iget-object v1, v15, Lcom/android/settings/network/ApnSettings;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    if-eqz v1, :cond_4

    iget-object v1, v15, Lcom/android/settings/network/ApnSettings;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    if-eqz v1, :cond_4

    iget-object v1, v15, Lcom/android/settings/network/ApnSettings;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget-object v2, v15, Lcom/android/settings/network/ApnSettings;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v2

    invoke-virtual {v1, v2, v12}, Lcom/android/internal/telephony/uicc/UiccController;->getIccRecords(II)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v0

    :cond_4
    move-object/from16 v28, v0

    const-string v0, "apn_list"

    invoke-virtual {v15, v0}, Lcom/android/settings/network/ApnSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceGroup;

    iput-object v0, v15, Lcom/android/settings/network/ApnSettings;->apnList:Landroid/support/v7/preference/PreferenceGroup;

    iget-object v0, v15, Lcom/android/settings/network/ApnSettings;->apnList:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceGroup;->removeAll()V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v10, v0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v16, v0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v0

    iget-object v0, v15, Lcom/android/settings/network/ApnSettings;->pref_vzwdefault:Lcom/android/settings/network/ApnPreference;

    if-eqz v0, :cond_5

    iget-object v0, v15, Lcom/android/settings/network/ApnSettings;->apnList:Landroid/support/v7/preference/PreferenceGroup;

    iget-object v1, v15, Lcom/android/settings/network/ApnSettings;->pref_vzwdefault:Lcom/android/settings/network/ApnPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    :cond_5
    const-string v0, "ApnSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fillList: where = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/network/ApnSettings;->getSelectedApnKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v15, Lcom/android/settings/network/ApnSettings;->mSelectedKey:Ljava/lang/String;

    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_2
    invoke-interface {v13}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_17

    invoke-interface {v13, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x2

    invoke-interface {v13, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v13, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v2, 0x3

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v2, 0x4

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x5

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v6, "ApnSettings"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "cursor.getString(NAME_INDEX) name :  "

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v6, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "ApnSettings"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "cursor.getString(APN_INDEX) apn :  "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v6, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "ApnSettings"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "cursor.getString(MVNO_TYPE_INDEX) mvnoType :  "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v6, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "ApnSettings"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "cursor.getString(MVNO_MATCH_DATA_INDEX) mvnoMatchData :  "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v6, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, v15, Lcom/android/settings/network/ApnSettings;->mContext:Landroid/content/Context;

    iget-object v11, v15, Lcom/android/settings/network/ApnSettings;->tIntent:Landroid/content/Intent;

    iget-object v12, v15, Lcom/android/settings/network/ApnSettings;->mccmnc:Ljava/lang/String;

    sget v25, Lcom/android/settings/network/ApnSettings;->sCurrentTab:I

    move-object/from16 v17, v6

    move-object/from16 v18, v13

    move-object/from16 v19, v11

    move-object/from16 v20, v12

    move-object/from16 v21, v0

    move-object/from16 v22, v1

    move-object/from16 v23, v5

    move-object/from16 v24, v4

    invoke-static/range {v17 .. v25}, Lcom/samsung/android/settings/ConnectionsUtils;->skipApn(Landroid/content/Context;Landroid/database/Cursor;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_6

    const-string v6, "ApnSettings"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "skip apn: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " / name: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v6, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    nop

    const/4 v11, 0x0

    const/4 v12, 0x1

    goto/16 :goto_2

    :cond_6
    iget-object v6, v15, Lcom/android/settings/network/ApnSettings;->hideApnList:[Ljava/lang/String;

    invoke-static {v6, v1}, Lcom/samsung/android/settings/ConnectionsUtils;->isHideApn([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_16

    iget-object v6, v15, Lcom/android/settings/network/ApnSettings;->hideApnList:[Ljava/lang/String;

    invoke-static {v6, v0}, Lcom/samsung/android/settings/ConnectionsUtils;->isHideApn([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    move-object/from16 v25, v2

    move-object/from16 v30, v3

    move-object/from16 v31, v4

    move-object v4, v5

    move-object v5, v7

    move-object/from16 v33, v9

    move-object v6, v14

    move-object v7, v15

    const/16 v23, 0x0

    const/16 v29, 0x1

    move-object v2, v0

    move-object v3, v1

    move-object v1, v10

    move-object v0, v13

    goto/16 :goto_9

    :cond_7
    iget-object v6, v15, Lcom/android/settings/network/ApnSettings;->tIntent:Landroid/content/Intent;

    invoke-static {v6}, Lcom/samsung/android/settings/ConnectionsUtils;->isVzwEditable(Landroid/content/Intent;)Z

    move-result v6

    if-nez v6, :cond_b

    iget-object v6, v15, Lcom/android/settings/network/ApnSettings;->mccmnc:Ljava/lang/String;

    invoke-static {v6}, Lcom/samsung/android/settings/ConnectionsUtils;->isVZWSimInserted(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_8

    invoke-static {}, Lcom/samsung/android/settings/ConnectionsUtils;->isVZWConcept()Z

    move-result v6

    if-eqz v6, :cond_8

    move-object/from16 v30, v2

    goto :goto_4

    :cond_8
    iget-object v6, v15, Lcom/android/settings/network/ApnSettings;->tIntent:Landroid/content/Intent;

    invoke-static {v6}, Lcom/samsung/android/settings/ConnectionsUtils;->isSprEditable(Landroid/content/Intent;)Z

    move-result v6

    if-nez v6, :cond_a

    iget-object v6, v15, Lcom/android/settings/network/ApnSettings;->mccmnc:Ljava/lang/String;

    invoke-static {v6}, Lcom/samsung/android/settings/ConnectionsUtils;->isSPRSimInserted(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_9

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isSprModel()Z

    move-result v6

    if-eqz v6, :cond_9

    move-object/from16 v30, v2

    goto :goto_3

    :cond_9
    new-instance v6, Lcom/android/settings/network/ApnPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/network/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    sget v12, Lcom/android/settings/network/ApnSettings;->sCurrentTab:I

    move-object/from16 v30, v2

    const/4 v2, 0x0

    invoke-direct {v6, v11, v2, v12}, Lcom/android/settings/network/ApnPreference;-><init>(Landroid/content/Context;II)V

    goto :goto_5

    :cond_a
    move-object/from16 v30, v2

    :goto_3
    new-instance v2, Lcom/android/settings/network/ApnPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/network/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    sget v11, Lcom/android/settings/network/ApnSettings;->sCurrentTab:I

    const/4 v12, 0x1

    invoke-direct {v2, v6, v12, v11}, Lcom/android/settings/network/ApnPreference;-><init>(Landroid/content/Context;II)V

    move-object v6, v2

    goto :goto_5

    :cond_b
    move-object/from16 v30, v2

    :goto_4
    new-instance v2, Lcom/android/settings/network/ApnPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/network/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    sget v11, Lcom/android/settings/network/ApnSettings;->sCurrentTab:I

    const/4 v12, 0x2

    invoke-direct {v2, v6, v12, v11}, Lcom/android/settings/network/ApnPreference;-><init>(Landroid/content/Context;II)V

    move-object v6, v2

    :goto_5
    move-object v12, v6

    iget-object v2, v15, Lcom/android/settings/network/ApnSettings;->mContext:Landroid/content/Context;

    iget-object v6, v15, Lcom/android/settings/network/ApnSettings;->mccmnc:Ljava/lang/String;

    sget v20, Lcom/android/settings/network/ApnSettings;->sCurrentTab:I

    move-object/from16 v17, v2

    move-object/from16 v18, v13

    move-object/from16 v19, v6

    move-object/from16 v21, v1

    move-object/from16 v22, v0

    invoke-static/range {v17 .. v22}, Lcom/samsung/android/settings/ConnectionsUtils;->modifyApn(Landroid/content/Context;Landroid/database/Cursor;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v24

    const/4 v2, 0x0

    aget-object v11, v24, v2

    const/4 v0, 0x1

    aget-object v6, v24, v0

    invoke-virtual {v12, v5}, Lcom/android/settings/network/ApnPreference;->setKey(Ljava/lang/String;)V

    invoke-virtual {v12, v11}, Lcom/android/settings/network/ApnPreference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, v15, Lcom/android/settings/network/ApnSettings;->mSelectedKey:Ljava/lang/String;

    if-nez v0, :cond_c

    invoke-virtual {v12}, Lcom/android/settings/network/ApnPreference;->setNullPreferAPN()V

    :cond_c
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanKDIModel()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanSBMModel()Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "fourgsmartphone"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "Application"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "ApnSettings"

    const-string v1, "do not summary SBM request"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_d
    invoke-virtual {v12, v6}, Lcom/android/settings/network/ApnPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_e
    :goto_6
    const-string v0, "ApnSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fillList pref "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " 1/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {v12, v0}, Lcom/android/settings/network/ApnPreference;->setPersistent(Z)V

    invoke-virtual {v12, v15}, Lcom/android/settings/network/ApnPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v1, v15, Lcom/android/settings/network/ApnSettings;->mContext:Landroid/content/Context;

    iget-object v2, v15, Lcom/android/settings/network/ApnSettings;->mccmnc:Ljava/lang/String;

    move-object v0, v15

    move-object/from16 v25, v30

    move-object/from16 v30, v3

    move-object v3, v5

    move-object/from16 v31, v4

    move-object v4, v11

    move-object/from16 v32, v5

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/network/ApnSettings;->setDefaultVZWAPN(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v15, Lcom/android/settings/network/ApnSettings;->mContext:Landroid/content/Context;

    iget-object v1, v15, Lcom/android/settings/network/ApnSettings;->tIntent:Landroid/content/Intent;

    iget-object v2, v15, Lcom/android/settings/network/ApnSettings;->mccmnc:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v18, v1

    move-object/from16 v19, v2

    move-object/from16 v20, v11

    move-object/from16 v21, v6

    move-object/from16 v22, v32

    move-object/from16 v23, v31

    invoke-static/range {v17 .. v23}, Lcom/samsung/android/settings/ConnectionsUtils;->getSelectableEnableState(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Z

    move-result-object v0

    const/4 v1, 0x0

    aget-boolean v2, v0, v1

    invoke-virtual {v12, v2}, Lcom/android/settings/network/ApnPreference;->setSelectable(Z)V

    const-string v2, "ApnSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "selectable="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-boolean v4, v0, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mSelectedKey="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v15, Lcom/android/settings/network/ApnSettings;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", key="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, v32

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    aget-boolean v2, v0, v1

    invoke-virtual {v12, v2}, Lcom/android/settings/network/ApnPreference;->setEnabled(Z)V

    const/4 v1, 0x2

    aget-boolean v1, v0, v1

    invoke-virtual {v12, v1}, Lcom/android/settings/network/ApnPreference;->setEditable(Z)V

    if-nez v26, :cond_f

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanDCMModel()Z

    move-result v1

    if-eqz v1, :cond_10

    if-eqz v27, :cond_10

    :cond_f
    const-string v1, "ApnSettings"

    const-string v2, "calling disable all list"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    invoke-virtual {v12, v1}, Lcom/android/settings/network/ApnPreference;->setSelectable(Z)V

    invoke-virtual {v12, v1}, Lcom/android/settings/network/ApnPreference;->setEnabled(Z)V

    invoke-virtual {v12, v1}, Lcom/android/settings/network/ApnPreference;->setEditable(Z)V

    :cond_10
    iget-object v1, v15, Lcom/android/settings/network/ApnSettings;->mccmnc:Ljava/lang/String;

    invoke-static {v1}, Lcom/samsung/android/settings/ConnectionsUtils;->isSPRSimInserted(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isSprModel()Z

    move-result v1

    if-eqz v1, :cond_11

    const-string v1, "edited"

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ApnSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "spr carrier edited:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "4"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    const/4 v2, 0x1

    invoke-virtual {v12, v2}, Lcom/android/settings/network/ApnPreference;->setDisableEidtDeleteForSPR(Z)V

    goto :goto_7

    :cond_11
    const/4 v2, 0x1

    :goto_7
    const/4 v1, 0x0

    aget-boolean v3, v0, v1

    if-eqz v3, :cond_14

    iget-object v3, v15, Lcom/android/settings/network/ApnSettings;->mSelectedKey:Ljava/lang/String;

    if-eqz v3, :cond_12

    iget-object v3, v15, Lcom/android/settings/network/ApnSettings;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-virtual {v12}, Lcom/android/settings/network/ApnPreference;->setChecked()V

    :cond_12
    invoke-static {}, Lcom/samsung/android/settings/ConnectionsUtils;->isSupport3LM()Z

    sget v3, Lcom/android/settings/network/ApnSettings;->sCurrentTab:I

    invoke-direct {v15, v3}, Lcom/android/settings/network/ApnSettings;->dualSimMPS_DataLock(I)Z

    move-result v3

    if-eqz v3, :cond_13

    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    nop

    move v11, v1

    move v12, v2

    goto/16 :goto_2

    :cond_13
    move-object v3, v6

    move-object v6, v15

    move-object v5, v7

    move-object v7, v12

    move-object/from16 v33, v9

    move-object v9, v10

    move-object v1, v10

    move-object v10, v5

    move-object/from16 v22, v11

    const/16 v23, 0x0

    move-object/from16 v11, v28

    move/from16 v29, v2

    move-object v2, v12

    move-object/from16 v12, v30

    move-object/from16 v34, v0

    move-object v0, v13

    move-object/from16 v13, v25

    invoke-direct/range {v6 .. v13}, Lcom/android/settings/network/ApnSettings;->addApnToList(Lcom/android/settings/network/ApnPreference;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/internal/telephony/uicc/IccRecords;Ljava/lang/String;Ljava/lang/String;)V

    move-object v6, v14

    move-object v7, v15

    goto :goto_8

    :cond_14
    move-object/from16 v34, v0

    move/from16 v23, v1

    move/from16 v29, v2

    move-object v3, v6

    move-object v5, v7

    move-object/from16 v33, v9

    move-object v1, v10

    move-object/from16 v22, v11

    move-object v2, v12

    move-object v0, v13

    sget v6, Lcom/android/settings/network/ApnSettings;->sCurrentTab:I

    invoke-direct {v15, v6}, Lcom/android/settings/network/ApnSettings;->dualSimMPS_DataLock(I)Z

    move-result v6

    if-eqz v6, :cond_15

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    nop

    move-object v13, v0

    move-object v10, v1

    move-object v7, v5

    move/from16 v11, v23

    move/from16 v12, v29

    move-object/from16 v9, v33

    goto/16 :goto_2

    :cond_15
    move-object v6, v14

    move-object v14, v15

    move-object v7, v15

    move-object v15, v2

    move-object/from16 v17, v33

    move-object/from16 v18, v5

    move-object/from16 v19, v28

    move-object/from16 v20, v30

    move-object/from16 v21, v25

    invoke-direct/range {v14 .. v21}, Lcom/android/settings/network/ApnSettings;->addApnToList(Lcom/android/settings/network/ApnPreference;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/internal/telephony/uicc/IccRecords;Ljava/lang/String;Ljava/lang/String;)V

    :goto_8
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_a

    :cond_16
    move-object/from16 v25, v2

    move-object/from16 v30, v3

    move-object/from16 v31, v4

    move-object v4, v5

    move-object v5, v7

    move-object/from16 v33, v9

    move-object v6, v14

    move-object v7, v15

    const/16 v23, 0x0

    const/16 v29, 0x1

    move-object v2, v0

    move-object v3, v1

    move-object v1, v10

    move-object v0, v13

    :goto_9
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    nop

    :goto_a
    move-object v13, v0

    move-object v10, v1

    move-object v14, v6

    move-object v15, v7

    move/from16 v11, v23

    move/from16 v12, v29

    move-object/from16 v9, v33

    move-object v7, v5

    goto/16 :goto_2

    :cond_17
    move-object v5, v7

    move-object/from16 v33, v9

    move-object v1, v10

    move-object v0, v13

    move-object v6, v14

    move-object v7, v15

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_19

    move-object/from16 v2, v33

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_18

    goto :goto_b

    :cond_18
    move-object v3, v8

    move-object/from16 v4, v16

    goto :goto_c

    :cond_19
    move-object/from16 v2, v33

    :goto_b
    move-object v3, v1

    move-object v4, v2

    :goto_c
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_d
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/support/v7/preference/Preference;

    iget-object v10, v7, Lcom/android/settings/network/ApnSettings;->apnList:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v10, v9}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_d

    :cond_1a
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_e
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1b

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/support/v7/preference/Preference;

    iget-object v10, v7, Lcom/android/settings/network/ApnSettings;->apnList:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v10, v9}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_e

    :cond_1b
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1c

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1c

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1c

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1c

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_f
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1c

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/support/v7/preference/Preference;

    iget-object v10, v7, Lcom/android/settings/network/ApnSettings;->apnList:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v10, v9}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_f

    :cond_1c
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/network/ApnSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v8

    iget-object v9, v7, Lcom/android/settings/network/ApnSettings;->apnList:Landroid/support/v7/preference/PreferenceGroup;

    sget v10, Lcom/android/settings/network/ApnSettings;->sCurrentTab:I

    invoke-static {v8, v9, v10}, Lcom/android/settings/network/ApnSettings;->isEnableApnList(Landroid/support/v7/preference/PreferenceGroup;Landroid/support/v7/preference/PreferenceGroup;I)Z

    move-result v8

    iget-object v9, v7, Lcom/android/settings/network/ApnSettings;->apnList:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v9, v8}, Landroid/support/v7/preference/PreferenceGroup;->setEnabled(Z)V

    goto :goto_10

    :cond_1d
    move-object v0, v13

    move-object v6, v14

    move-object v7, v15

    :goto_10
    return-void
.end method

.method private static getMobileDataState(Landroid/content/Intent;)Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 2

    const-string/jumbo v0, "state"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-class v1, Lcom/android/internal/telephony/PhoneConstants$DataState;

    invoke-static {v1, v0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/PhoneConstants$DataState;

    return-object v1

    :cond_0
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    return-object v1
.end method

.method private getSelectedApnKey()Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/settings/network/ApnSettings;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/network/ApnSettings;->sCurrentTab:I

    iget-wide v3, p0, Lcom/android/settings/network/ApnSettings;->mSubId:J

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/settings/network/ApnSettings;->getSelectedApnKeyCursor(Landroid/content/Context;IJ)Landroid/database/Cursor;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v2, 0x0

    return-object v2

    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    const-string v2, "ApnSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSelectedApnKey : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private getSelectedApnKeyCursor(Landroid/content/Context;IJ)Landroid/database/Cursor;
    .locals 7

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/settings/network/ApnSettings;->PREFERAPN_URI_USING_SUBID:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "_id"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    const-string v6, "name ASC"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private getSimName(I)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    const-string v1, "CTC"

    invoke-static {}, Lcom/samsung/android/settings/Rune;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "gsm.sim.state"

    const/4 v2, 0x0

    const-string v3, "UNKNOW"

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/settings/network/ApnSettings;->getSystemProperties(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "gsm.sim.state"

    const/4 v3, 0x1

    const-string v4, "UNKNOW"

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/settings/network/ApnSettings;->getSystemProperties(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez p1, :cond_1

    const-string v3, "READY"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/network/ApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f12188c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/network/ApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "select_name_1"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v3, "READY"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/network/ApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f12188d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/network/ApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "select_name_2"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    goto :goto_1

    :cond_3
    if-nez p1, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/network/ApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "select_name_1"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/network/ApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "select_name_2"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method private goAddApn()V
    .locals 6

    invoke-virtual {p0}, Lcom/android/settings/network/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0159

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/network/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v3, 0x7f12050d

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v3, 0x7f0a0040

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    iput-object v3, p0, Lcom/android/settings/network/ApnSettings;->mAddApn:Landroid/widget/RadioButton;

    iget-object v3, p0, Lcom/android/settings/network/ApnSettings;->mAddApn:Landroid/widget/RadioButton;

    iget-object v4, p0, Lcom/android/settings/network/ApnSettings;->mAddApnListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v3, 0x7f0a0043

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    iput-object v3, p0, Lcom/android/settings/network/ApnSettings;->mAddCpa:Landroid/widget/RadioButton;

    iget-object v3, p0, Lcom/android/settings/network/ApnSettings;->mAddCpa:Landroid/widget/RadioButton;

    iget-object v4, p0, Lcom/android/settings/network/ApnSettings;->mAddCpaListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/android/settings/network/ApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "kddi_cpa_added"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    goto :goto_0

    :cond_0
    move v4, v5

    :goto_0
    move v3, v4

    if-eqz v3, :cond_1

    iget-object v4, p0, Lcom/android/settings/network/ApnSettings;->mAddCpa:Landroid/widget/RadioButton;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/RadioButton;->setVisibility(I)V

    :cond_1
    const/high16 v4, 0x1040000

    new-instance v5, Lcom/android/settings/network/ApnSettings$10;

    invoke-direct {v5, p0}, Lcom/android/settings/network/ApnSettings$10;-><init>(Lcom/android/settings/network/ApnSettings;)V

    invoke-virtual {v2, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/network/ApnSettings;->mCpaAlertDialog:Landroid/app/AlertDialog;

    iget-object v4, p0, Lcom/android/settings/network/ApnSettings;->mCpaAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private initSimInfo()I
    .locals 6

    iget-object v0, p0, Lcom/android/settings/network/ApnSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/ConnectionsUtils;->getEnabledSimCount(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/settings/network/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    sput v2, Lcom/android/settings/network/ApnSettings;->sCurrentTab:I

    const-string/jumbo v3, "simSlot"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "simSlot"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/android/settings/network/ApnSettings;->sCurrentTab:I

    const-string v3, "ApnSettings"

    const-string v4, "mSimSlot is set by intent"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    if-ne v0, v3, :cond_2

    const/4 v4, 0x5

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v5

    if-eq v4, v5, :cond_1

    const/16 v4, 0xa

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v5

    if-ne v4, v5, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/network/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "phone2_on"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v3, :cond_2

    sput v3, Lcom/android/settings/network/ApnSettings;->sCurrentTab:I

    const-string v3, "ApnSettings"

    const-string v4, "mSimSlot is set by slot2"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    sget v3, Lcom/android/settings/network/ApnSettings;->sCurrentTab:I

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v3

    if-eqz v3, :cond_3

    sget v3, Lcom/android/settings/network/ApnSettings;->sCurrentTab:I

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v3

    aget v2, v3, v2

    int-to-long v2, v2

    iput-wide v2, p0, Lcom/android/settings/network/ApnSettings;->mSubId:J

    goto :goto_1

    :cond_3
    const-string v2, "ApnSettings"

    const-string v3, "SubscriptionManager.getSubId(sCurrentTab) is NULL"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    const-string v2, "ApnSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sCurrentTab:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/android/settings/network/ApnSettings;->sCurrentTab:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mSubId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/android/settings/network/ApnSettings;->mSubId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " in initSimInfo"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportDesktopMode()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/network/ApnSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-wide v2, p0, Lcom/android/settings/network/ApnSettings;->mSubId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/network/ApnSettings;->finish()V

    :cond_4
    return v0
.end method

.method private initVZWApnPreference()V
    .locals 3

    new-instance v0, Lcom/android/settings/network/ApnPreference;

    invoke-virtual {p0}, Lcom/android/settings/network/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/network/ApnPreference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/network/ApnSettings;->pref_vzwdefault:Lcom/android/settings/network/ApnPreference;

    iget-object v0, p0, Lcom/android/settings/network/ApnSettings;->pref_vzwdefault:Lcom/android/settings/network/ApnPreference;

    const-string v1, "6"

    invoke-virtual {v0, v1}, Lcom/android/settings/network/ApnPreference;->setKey(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/network/ApnSettings;->pref_vzwdefault:Lcom/android/settings/network/ApnPreference;

    const-string v1, "LTE - Verizon Internet"

    invoke-virtual {v0, v1}, Lcom/android/settings/network/ApnPreference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/network/ApnSettings;->pref_vzwdefault:Lcom/android/settings/network/ApnPreference;

    const-string v1, "VZWINTERNET"

    invoke-virtual {v0, v1}, Lcom/android/settings/network/ApnPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/network/ApnSettings;->pref:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/network/ApnSettings;->pref:Landroid/content/SharedPreferences;

    const-string v1, "default_vzwapn"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/network/ApnSettings;->vzwapn:Ljava/lang/String;

    :cond_0
    const-string v0, "ApnSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "APN setDefaultVZWAPN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/network/ApnSettings;->vzwapn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/network/ApnSettings;->vzwapn:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/network/ApnSettings;->pref_vzwdefault:Lcom/android/settings/network/ApnPreference;

    iget-object v1, p0, Lcom/android/settings/network/ApnSettings;->vzwapn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings/network/ApnPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v0, p0, Lcom/android/settings/network/ApnSettings;->pref_vzwdefault:Lcom/android/settings/network/ApnPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/network/ApnPreference;->setPersistent(Z)V

    iget-object v0, p0, Lcom/android/settings/network/ApnSettings;->pref_vzwdefault:Lcom/android/settings/network/ApnPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/network/ApnPreference;->setSelectable(Z)V

    iget-object v0, p0, Lcom/android/settings/network/ApnSettings;->pref_vzwdefault:Lcom/android/settings/network/ApnPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/network/ApnPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/network/ApnSettings;->pref_vzwdefault:Lcom/android/settings/network/ApnPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/network/ApnPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method public static isEnableApnList(Landroid/support/v7/preference/PreferenceGroup;Landroid/support/v7/preference/PreferenceGroup;I)Z
    .locals 5

    const/4 v0, 0x1

    const/16 v1, 0xa

    const/4 v2, 0x5

    if-nez p2, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v3

    if-eq v2, v3, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v3

    if-eq v1, v3, :cond_0

    const-string v1, "ApnSettings"

    const-string v2, "fillList SIMSLOT1 Not Ready"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    if-ne p2, v3, :cond_1

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v4

    if-eq v2, v4, :cond_1

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v2

    if-eq v1, v2, :cond_1

    const-string v1, "ApnSettings"

    const-string v2, "fillList SIMSLOT2 Not Ready"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/preference/PreferenceGroup;->isEnabled()Z

    move-result v1

    const-string v2, "ApnSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bEnabled "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    :goto_0
    return v0
.end method

.method public static isEnabledAdd(Landroid/content/Context;Landroid/content/Intent;Landroid/support/v7/preference/PreferenceGroup;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x1

    invoke-static {}, Lcom/samsung/android/settings/ConnectionsUtils;->isVZWConcept()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p1}, Lcom/samsung/android/settings/ConnectionsUtils;->isVzwEditable(Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-static {p3}, Lcom/samsung/android/settings/ConnectionsUtils;->isVZWSimInserted(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_0
    invoke-static {p0}, Lcom/samsung/android/settings/ConnectionsUtils;->isNoSIM(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_1
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isSprModel()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p0}, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->isSPRNetworkUnLocked(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_6

    const/4 v0, 0x0

    const-string v1, "ApnSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "spr simlock unlocked but non-spr sim enable Add:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-le v1, v2, :cond_6

    invoke-static {p3}, Lcom/samsung/android/settings/ConnectionsUtils;->isSPRSimInserted(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "ApnSettings"

    const-string/jumbo v2, "spr simlock unlocked but non-spr sim enable Add"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/samsung/android/settings/ConnectionsUtils;->isSupportGlobalRoamingLRA()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/samsung/android/settings/ConnectionsUtils;->isLRASimInserted()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    invoke-static {p0}, Lcom/samsung/android/settings/ConnectionsUtils;->isNoSIM(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isUsOpenModel()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {p3}, Lcom/samsung/android/settings/ConnectionsUtils;->isSPRSimInserted(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "ApnSettings"

    const-string v2, "open spr si/m case default enable!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-static {p3}, Lcom/samsung/android/settings/ConnectionsUtils;->isVZWSimInserted(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {p1}, Lcom/samsung/android/settings/ConnectionsUtils;->isVzwEditable(Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_6

    const/4 v0, 0x0

    :cond_6
    :goto_0
    const-string v1, "ApnSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "APN enable ADD option: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static isEnabledRestore(Landroid/content/Context;Landroid/content/Intent;Landroid/support/v7/preference/PreferenceGroup;Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x1

    if-eqz p1, :cond_9

    if-eqz p2, :cond_9

    if-nez p3, :cond_0

    goto/16 :goto_2

    :cond_0
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {p2}, Landroid/support/v7/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    if-ne v2, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x1

    invoke-static {}, Lcom/samsung/android/settings/ConnectionsUtils;->isVZWConcept()Z

    move-result v3

    if-eqz v3, :cond_3

    if-nez v0, :cond_2

    invoke-static {p3}, Lcom/samsung/android/settings/ConnectionsUtils;->isVZWSimInserted(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isSprModel()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {p3}, Lcom/samsung/android/settings/ConnectionsUtils;->isSPRSimInserted(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v2, 0x0

    goto :goto_1

    :cond_4
    invoke-static {}, Lcom/samsung/android/settings/ConnectionsUtils;->isLraImsi()Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v2, 0x0

    goto :goto_1

    :cond_5
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isUsOpenModel()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-static {p3}, Lcom/samsung/android/settings/ConnectionsUtils;->isSPRSimInserted(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-static {p3}, Lcom/samsung/android/settings/ConnectionsUtils;->isVZWSimInserted(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    :cond_6
    const/4 v2, 0x0

    goto :goto_1

    :cond_7
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v3

    if-eqz v3, :cond_8

    const/4 v2, 0x0

    :cond_8
    :goto_1
    const-string v3, "ApnSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "APN enable Restore option: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_9
    :goto_2
    return v0
.end method

.method private restoreDefaultApn()Z
    .locals 4

    const/16 v0, 0x3e9

    invoke-virtual {p0, v0}, Lcom/android/settings/network/ApnSettings;->showDialog(I)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settings/network/ApnSettings;->mRestoreDefaultApnMode:Z

    iget-object v1, p0, Lcom/android/settings/network/ApnSettings;->mRestoreApnUiHandler:Lcom/android/settings/network/ApnSettings$RestoreApnUiHandler;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/settings/network/ApnSettings$RestoreApnUiHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settings/network/ApnSettings$RestoreApnUiHandler;-><init>(Lcom/android/settings/network/ApnSettings;Lcom/android/settings/network/ApnSettings$1;)V

    iput-object v1, p0, Lcom/android/settings/network/ApnSettings;->mRestoreApnUiHandler:Lcom/android/settings/network/ApnSettings$RestoreApnUiHandler;

    :cond_0
    iget-object v1, p0, Lcom/android/settings/network/ApnSettings;->mRestoreApnProcessHandler:Lcom/android/settings/network/ApnSettings$RestoreApnProcessHandler;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/network/ApnSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    if-nez v1, :cond_2

    :cond_1
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "Restore default APN Handler: Process Thread"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/settings/network/ApnSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    iget-object v1, p0, Lcom/android/settings/network/ApnSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Lcom/android/settings/network/ApnSettings$RestoreApnProcessHandler;

    iget-object v2, p0, Lcom/android/settings/network/ApnSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/network/ApnSettings;->mRestoreApnUiHandler:Lcom/android/settings/network/ApnSettings$RestoreApnUiHandler;

    invoke-direct {v1, p0, v2, v3}, Lcom/android/settings/network/ApnSettings$RestoreApnProcessHandler;-><init>(Lcom/android/settings/network/ApnSettings;Landroid/os/Looper;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/settings/network/ApnSettings;->mRestoreApnProcessHandler:Lcom/android/settings/network/ApnSettings$RestoreApnProcessHandler;

    :cond_2
    iget-object v1, p0, Lcom/android/settings/network/ApnSettings;->mRestoreApnProcessHandler:Lcom/android/settings/network/ApnSettings$RestoreApnProcessHandler;

    invoke-virtual {v1, v0}, Lcom/android/settings/network/ApnSettings$RestoreApnProcessHandler;->sendEmptyMessage(I)Z

    return v0
.end method

.method private setDefaultVZWAPN(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/samsung/android/settings/ConnectionsUtils;->isVZWConcept()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isUsOpenModel()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    invoke-static {p2}, Lcom/samsung/android/settings/ConnectionsUtils;->isVZWSimInserted(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "Verizon Internet"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "6"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "LTE - Verizon Internet"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "VZW Roaming Internet"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Tracfone - Verizon"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/android/settings/network/ApnSettings;->pref:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_2

    const-string v0, "ApnSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "APN setDefaultVZWAPN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/network/ApnSettings;->pref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/network/ApnSettings;->editor:Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/android/settings/network/ApnSettings;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "default_vzwapn"

    invoke-interface {v0, v1, p5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/android/settings/network/ApnSettings;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_2
    return-void
.end method

.method private setSelectedApnKey(Ljava/lang/String;)V
    .locals 5

    iput-object p1, p0, Lcom/android/settings/network/ApnSettings;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/network/ApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "apn_id"

    iget-object v3, p0, Lcom/android/settings/network/ApnSettings;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget v2, Lcom/android/settings/network/ApnSettings;->sCurrentTab:I

    iget-wide v3, p0, Lcom/android/settings/network/ApnSettings;->mSubId:J

    invoke-static {v0, v1, v2, v3, v4}, Lcom/samsung/android/settings/ConnectionsUtils;->updateSelectedApnKey(Landroid/content/ContentResolver;Landroid/content/ContentValues;IJ)V

    return-void
.end method

.method private setTabIndicatorTextColor()V
    .locals 6

    iget-object v0, p0, Lcom/android/settings/network/ApnSettings;->mTabHost:Landroid/widget/TabHost;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/network/ApnSettings;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TabWidget;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Lcom/android/settings/network/ApnSettings;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v2}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    const v3, 0x1020016

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/settings/network/ApnSettings;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v4}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v4

    if-ne v1, v4, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/network/ApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060131

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/network/ApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060132

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private showWarning()V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/network/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f12013b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f12013c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/android/settings/network/ApnSettings$8;

    invoke-direct {v1, p0}, Lcom/android/settings/network/ApnSettings$8;-><init>(Lcom/android/settings/network/ApnSettings;)V

    const v2, 0x7f120519

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/android/settings/network/ApnSettings$9;

    invoke-direct {v1, p0}, Lcom/android/settings/network/ApnSettings$9;-><init>(Lcom/android/settings/network/ApnSettings;)V

    const/high16 v2, 0x1040000

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/network/ApnSettings;->mRestoreDlg:Landroid/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public getDialogMetricsCategory(I)I
    .locals 1

    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_0

    const/16 v0, 0x243

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0xc

    return v0
.end method

.method public getRestrictionEnforcedAdmin()Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    .locals 3

    iget-object v0, p0, Lcom/android/settings/network/ApnSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUserHandle()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/network/ApnSettings;->mUserManager:Landroid/os/UserManager;

    const-string v2, "no_config_mobile_networks"

    invoke-virtual {v1, v2, v0}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/network/ApnSettings;->mUserManager:Landroid/os/UserManager;

    const-string v2, "no_config_mobile_networks"

    invoke-virtual {v1, v2, v0}, Landroid/os/UserManager;->hasBaseUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->MULTIPLE_ENFORCED_ADMIN:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    return-object v1

    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getSystemProperties(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 5

    move-object v0, p3

    invoke-static {p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    return-object v1

    :cond_1
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-object p3

    :cond_2
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    add-int/lit8 v4, p2, 0x1

    if-ge v3, v4, :cond_3

    return-object p3

    :cond_3
    aget-object v3, v2, p2

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    return-object p3

    :cond_4
    aget-object v0, v2, p2

    return-object v0

    :cond_5
    :goto_0
    return-object p3
.end method

.method public isCalling()Z
    .locals 4

    iget-object v0, p0, Lcom/android/settings/network/ApnSettings;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "ApnSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "calling disable apn:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/network/ApnSettings;->getEmptyTextView()Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f120140

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0}, Lcom/android/settings/network/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070591

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v2

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v3

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {p0}, Lcom/android/settings/network/ApnSettings;->isUiRestricted()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/network/ApnSettings;->mUnavailable:Z

    iget-boolean v1, p0, Lcom/android/settings/network/ApnSettings;->mUnavailable:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/settings/network/ApnSettings;->setHasOptionsMenu(Z)V

    iget-boolean v1, p0, Lcom/android/settings/network/ApnSettings;->mUnavailable:Z

    if-eqz v1, :cond_0

    const-string v1, "ApnSettings"

    const-string v2, "removeAll!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/network/ApnSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/support/v7/preference/PreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0, v1}, Lcom/android/settings/network/ApnSettings;->setPreferenceScreen(Landroid/support/v7/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/android/settings/network/ApnSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/settings/network/ApnSettings;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/settings/network/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget v2, Lcom/android/settings/network/ApnSettings;->sCurrentTab:I

    invoke-static {v1, v2}, Lcom/samsung/android/settings/ConnectionsUtils;->getSimOperator(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/network/ApnSettings;->mccmnc:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/network/ApnSettings;->mContext:Landroid/content/Context;

    const-string v2, "default_vzwapn"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/network/ApnSettings;->pref:Landroid/content/SharedPreferences;

    const-string v1, "VZW"

    invoke-static {}, Lcom/samsung/android/settings/Rune;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/network/ApnSettings;->mccmnc:Ljava/lang/String;

    invoke-static {v1}, Lcom/samsung/android/settings/ConnectionsUtils;->isVZWSimInserted(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/android/settings/network/ApnSettings;->initVZWApnPreference()V

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/network/ApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/network/ApnSettings;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.ANY_DATA_STATE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/settings/network/ApnSettings;->mMobileStateFilter:Landroid/content/IntentFilter;

    iget-object v1, p0, Lcom/android/settings/network/ApnSettings;->mMobileStateFilter:Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.SIM_PROFILE_UPDATE_DONE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/network/ApnSettings;->mMobileStateFilter:Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.UPDATE_CURRENT_CARRIER_DONE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/network/ApnSettings;->mMobileStateFilter:Landroid/content/IntentFilter;

    const-string v2, "com.samsung.intent.action.SET_PREFERREDAPN_UPDATED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/network/ApnSettings;->mMobileStateFilter:Landroid/content/IntentFilter;

    const-string v2, "com.samsung.intent.action.CSC_CONNECTION_RESET_DONE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/settings/network/ApnSettings;->mTetherStateFilter:Landroid/content/IntentFilter;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.samsung.intent.action.SIMHOTSWAP"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/settings/network/ApnSettings;->mHotSwapStateFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0}, Lcom/android/settings/network/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/network/ApnSettings;->tIntent:Landroid/content/Intent;

    invoke-static {}, Lcom/samsung/android/settings/ConnectionsUtils;->initHideList()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/network/ApnSettings;->hideApnList:[Ljava/lang/String;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/network/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "sub_id"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/settings/network/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/network/ApnSettings;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {p0, v2}, Lcom/android/settings/network/ApnSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    iput-object v2, p0, Lcom/android/settings/network/ApnSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const v2, 0x7f150011

    invoke-virtual {p0, v2}, Lcom/android/settings/network/ApnSettings;->addPreferencesFromResource(I)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.ANY_DATA_STATE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/settings/network/ApnSettings;->mMobileStateFilter:Landroid/content/IntentFilter;

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/settings/network/ApnSettings;->setIfOnlyAvailableForAdmins(Z)V

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/network/ApnSettings;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/network/ApnSettings;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "ApnSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UiccController not make : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-string v2, "carrier_config"

    invoke-virtual {p0, v2}, Lcom/android/settings/network/ApnSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/CarrierConfigManager;

    invoke-virtual {v2}, Landroid/telephony/CarrierConfigManager;->getConfig()Landroid/os/PersistableBundle;

    move-result-object v3

    const-string v4, "hide_ims_apn_bool"

    invoke-virtual {v3, v4}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/settings/network/ApnSettings;->mHideImsApn:Z

    const-string v4, "allow_adding_apns_bool"

    invoke-virtual {v3, v4}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/settings/network/ApnSettings;->mAllowAddingApns:Z

    iget-boolean v4, p0, Lcom/android/settings/network/ApnSettings;->mAllowAddingApns:Z

    if-eqz v4, :cond_0

    const-string v4, "read_only_apn_types_string_array"

    invoke-virtual {v3, v4}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/network/ApnEditor;->hasAllApns([Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "ApnSettings"

    const-string v6, "not allowing adding APN because all APN types are read only"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/settings/network/ApnSettings;->mAllowAddingApns:Z

    :cond_0
    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/network/ApnSettings;->mUserManager:Landroid/os/UserManager;

    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 3

    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_0

    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/android/settings/network/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/network/ApnSettings;->mRestoring:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/android/settings/network/ApnSettings;->mRestoring:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/android/settings/network/ApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f121239

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/network/ApnSettings;->mRestoring:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/android/settings/network/ApnSettings;->mRestoring:Landroid/app/ProgressDialog;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 5

    const/4 v0, 0x1

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isDomesticLGTModel()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "3"

    const-string v2, "ril.simtype"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    iget-boolean v1, p0, Lcom/android/settings/network/ApnSettings;->mUnavailable:Z

    if-nez v1, :cond_2

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    nop

    invoke-virtual {p0}, Lcom/android/settings/network/ApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f12050d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {p1, v1, v3, v1, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_1
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/android/settings/network/ApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f120e85

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v1, v2, v1, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    :cond_2
    invoke-super {p0, p1, p2}, Lcom/android/settings/RestrictedSettingsFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Lcom/android/settings/network/ApnSettings;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanModel()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/android/settings/network/ApnSettings;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/network/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget-object v5, v0, Lcom/android/settings/network/ApnSettings;->mBluetoothListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v6, 0x5

    invoke-virtual {v3, v4, v5, v6}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/network/ApnSettings;->initSimInfo()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_3

    const v5, 0x7f0d01f2

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    const v7, 0x7f0a04aa

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    invoke-static {v2, v5, v7, v6}, Lcom/android/settings/Utils;->prepareCustomPreferencesList(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Z)V

    move-object/from16 v8, p3

    invoke-super {v0, v1, v7, v8}, Lcom/android/settings/RestrictedSettingsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const v10, 0x1020012

    invoke-virtual {v5, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TabHost;

    iput-object v10, v0, Lcom/android/settings/network/ApnSettings;->mTabHost:Landroid/widget/TabHost;

    iget-object v10, v0, Lcom/android/settings/network/ApnSettings;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v10}, Landroid/widget/TabHost;->setup()V

    iget-object v10, v0, Lcom/android/settings/network/ApnSettings;->mTabHost:Landroid/widget/TabHost;

    iget-object v11, v0, Lcom/android/settings/network/ApnSettings;->mTabListener:Landroid/widget/TabHost$OnTabChangeListener;

    invoke-virtual {v10, v11}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    iget-object v10, v0, Lcom/android/settings/network/ApnSettings;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v10}, Landroid/widget/TabHost;->clearAllTabs()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/network/ApnSettings;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v10

    move v11, v6

    :goto_0
    if-ge v11, v3, :cond_2

    invoke-virtual {v10, v11}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v12

    iget-object v13, v0, Lcom/android/settings/network/ApnSettings;->mTabHost:Landroid/widget/TabHost;

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    if-nez v12, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/network/ApnSettings;->getContext()Landroid/content/Context;

    move-result-object v15

    new-array v6, v4, [Ljava/lang/Object;

    add-int/lit8 v4, v11, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v16, 0x0

    aput-object v4, v6, v16

    const v4, 0x7f121842

    invoke-virtual {v15, v4, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_1
    invoke-virtual {v12}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v4

    :goto_1
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v14, v4}, Lcom/android/settings/network/ApnSettings;->buildTabSpec(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    invoke-virtual {v13, v4}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    iget-object v4, v0, Lcom/android/settings/network/ApnSettings;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v4}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v4

    invoke-virtual {v4, v11}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v4

    const v6, 0x1020006

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iget-object v6, v0, Lcom/android/settings/network/ApnSettings;->mContext:Landroid/content/Context;

    invoke-static {v6, v11}, Lcom/android/settings/Utils;->getSimIcon(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v6, v0, Lcom/android/settings/network/ApnSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    const/high16 v13, 0x40800000    # 4.0f

    mul-float/2addr v13, v6

    float-to-int v13, v13

    const/4 v14, 0x0

    invoke-virtual {v4, v13, v14, v13, v14}, Landroid/widget/ImageView;->setPaddingRelative(IIII)V

    invoke-virtual {v4, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v15, v0, Lcom/android/settings/network/ApnSettings;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v15}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v15

    invoke-virtual {v15, v11}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v15

    const v14, 0x1020016

    invoke-virtual {v15, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setAllCaps(Z)V

    invoke-direct {v0, v11}, Lcom/android/settings/network/ApnSettings;->getSimName(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setVisibility(I)V

    add-int/lit8 v11, v11, 0x1

    move v6, v15

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_2
    iput-object v0, v0, Lcom/android/settings/network/ApnSettings;->tabInterface:Lcom/samsung/android/settings/multisim/MultiSimTabInterface;

    return-object v5

    :cond_3
    move-object/from16 v8, p3

    invoke-super/range {p0 .. p3}, Lcom/android/settings/RestrictedSettingsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v4

    return-object v4
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onDestroy()V

    iget-object v0, p0, Lcom/android/settings/network/ApnSettings;->mRestoreDlg:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/network/ApnSettings;->mRestoreDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/network/ApnSettings;->mRestoreDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/network/ApnSettings;->mSIMchangedObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/network/ApnSettings;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/settings/network/ApnSettings;->mSIMchangedObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_1
    iget-object v0, p0, Lcom/android/settings/network/ApnSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/network/ApnSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    :cond_2
    return-void
.end method

.method public onDestroyView()V
    .locals 3

    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onDestroyView()V

    iget-object v0, p0, Lcom/android/settings/network/ApnSettings;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanModel()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/network/ApnSettings;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/android/settings/network/ApnSettings;->mProxy:Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/network/ApnSettings;->mProxy:Landroid/bluetooth/BluetoothPan;

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    const/4 v2, 0x1

    if-eq v0, v1, :cond_4

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/network/ApnSettings;->getMetricsCategory()I

    move-result v0

    const/16 v1, 0xe27

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    sget v0, Lcom/android/settings/network/ApnSettings;->sCurrentTab:I

    invoke-direct {p0, v0}, Lcom/android/settings/network/ApnSettings;->dualSimMPS_DataLock(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/network/ApnSettings;->showWarning()V

    return v2

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings/network/ApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "kddi_cpa_added"

    const/4 v3, 0x0

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_1

    move v3, v2

    nop

    :cond_1
    move v0, v3

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanKDIModel()Z

    move-result v1

    if-eqz v1, :cond_2

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/android/settings/network/ApnSettings;->goAddApn()V

    goto :goto_0

    :cond_2
    sget v1, Lcom/android/settings/network/ApnSettings;->sCurrentTab:I

    invoke-direct {p0, v1}, Lcom/android/settings/network/ApnSettings;->dualSimMPS_DataLock(I)Z

    move-result v1

    if-eqz v1, :cond_3

    return v2

    :cond_3
    invoke-direct {p0}, Lcom/android/settings/network/ApnSettings;->addNewApn()V

    :goto_0
    return v2

    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/network/ApnSettings;->finish()V

    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 3

    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onPause()V

    iget-boolean v0, p0, Lcom/android/settings/network/ApnSettings;->mUnavailable:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/network/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/network/ApnSettings;->mMobileStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-virtual {p0}, Lcom/android/settings/network/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/network/ApnSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-virtual {p0}, Lcom/android/settings/network/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/network/ApnSettings;->mHotSwapReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/settings/network/ApnSettings;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/settings/network/ApnSettings;->mAirplainModeEnabledObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/settings/network/ApnSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/settings/network/ApnSettings;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    iget-object v0, p0, Lcom/android/settings/network/ApnSettings;->mDelayRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/network/ApnSettings;->mDelayHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/network/ApnSettings;->mDelayRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/network/ApnSettings;->mDelayRunnable:Ljava/lang/Runnable;

    :cond_1
    iget-object v0, p0, Lcom/android/settings/network/ApnSettings;->mRestoring:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/network/ApnSettings;->mRestoring:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/network/ApnSettings;->mRestoring:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_2
    sput-boolean v2, Lcom/android/settings/network/ApnSettings;->mRestoreDefaultApnMode:Z

    invoke-static {}, Lcom/samsung/android/settings/ConnectionsUtils;->removeImsManager()V

    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    const-string v0, "ApnSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreferenceChange(): Preference - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", newValue - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", newValue type - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanKDIModel()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/network/ApnSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/network/ApnSettings;->mccmnc:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/ConnectionsUtils;->setCarrierEnabledStatus(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/network/ApnSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/settings/ConnectionsUtils;->reqEnableCpa(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/settings/network/ApnSettings;->setSelectedApnKey(Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sget-object v1, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v2, v0

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.EDIT"

    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v2}, Lcom/android/settings/network/ApnSettings;->startActivity(Landroid/content/Intent;)V

    const/4 v2, 0x1

    return v2
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 8

    iget-object v0, p0, Lcom/android/settings/network/ApnSettings;->apnList:Landroid/support/v7/preference/PreferenceGroup;

    if-nez v0, :cond_0

    const-string v0, "apn_list"

    invoke-virtual {p0, v0}, Lcom/android/settings/network/ApnSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceGroup;

    iput-object v0, p0, Lcom/android/settings/network/ApnSettings;->apnList:Landroid/support/v7/preference/PreferenceGroup;

    :cond_0
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/settings/network/ApnSettings;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/network/ApnSettings;->tIntent:Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/settings/network/ApnSettings;->apnList:Landroid/support/v7/preference/PreferenceGroup;

    iget-object v5, p0, Lcom/android/settings/network/ApnSettings;->mccmnc:Ljava/lang/String;

    invoke-static {v2, v3, v4, v5}, Lcom/android/settings/network/ApnSettings;->isEnabledAdd(Landroid/content/Context;Landroid/content/Intent;Landroid/support/v7/preference/PreferenceGroup;Ljava/lang/String;)Z

    move-result v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_1
    const/4 v2, 0x2

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/android/settings/network/ApnSettings;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/settings/network/ApnSettings;->tIntent:Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/settings/network/ApnSettings;->apnList:Landroid/support/v7/preference/PreferenceGroup;

    iget-object v6, p0, Lcom/android/settings/network/ApnSettings;->mccmnc:Ljava/lang/String;

    invoke-static {v3, v4, v5, v6}, Lcom/android/settings/network/ApnSettings;->isEnabledRestore(Landroid/content/Context;Landroid/content/Intent;Landroid/support/v7/preference/PreferenceGroup;Ljava/lang/String;)Z

    move-result v3

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_2
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Setting_LockApnDuringTethering"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/settings/network/ApnSettings;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/settings/ConnectionsUtils;->isTetheringEnabled(Landroid/content/Context;)Z

    move-result v3

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanModel()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_5

    if-nez v3, :cond_4

    iget-boolean v4, p0, Lcom/android/settings/network/ApnSettings;->mIsBtTetherOn:Z

    if-eqz v4, :cond_3

    goto :goto_0

    :cond_3
    move v4, v5

    goto :goto_1

    :cond_4
    :goto_0
    move v4, v0

    :goto_1
    move v3, v4

    :cond_5
    move v4, v5

    :goto_2
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v6

    if-ge v4, v6, :cond_7

    invoke-interface {p1, v4}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v6

    if-nez v3, :cond_6

    move v7, v0

    goto :goto_3

    :cond_6
    move v7, v5

    :goto_3
    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_7
    return-void
.end method

.method public onResume()V
    .locals 5

    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onResume()V

    invoke-virtual {p0}, Lcom/android/settings/network/ApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/network/ApnSettings;->finish()V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/network/ApnSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v3, p0, Lcom/android/settings/network/ApnSettings;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v4, 0x20

    invoke-virtual {v0, v3, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    iget-object v0, p0, Lcom/android/settings/network/ApnSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/ConnectionsUtils;->getImsManager(Landroid/content/Context;)V

    iget-boolean v0, p0, Lcom/android/settings/network/ApnSettings;->mUnavailable:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/network/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/network/ApnSettings;->mMobileStateReceiver:Landroid/content/BroadcastReceiver;

    iget-object v4, p0, Lcom/android/settings/network/ApnSettings;->mMobileStateFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v3, v4}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/network/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/network/ApnSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    iget-object v4, p0, Lcom/android/settings/network/ApnSettings;->mTetherStateFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v3, v4}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/network/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/network/ApnSettings;->mHotSwapReceiver:Landroid/content/BroadcastReceiver;

    iget-object v4, p0, Lcom/android/settings/network/ApnSettings;->mHotSwapStateFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v3, v4}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/settings/network/ApnSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "select_icon_1"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/network/ApnSettings;->mSIMchangedObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v3, v1, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/settings/network/ApnSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "select_icon_2"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/network/ApnSettings;->mSIMchangedObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v3, v1, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/settings/network/ApnSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "select_name_1"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/network/ApnSettings;->mSIMchangedObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v3, v1, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/settings/network/ApnSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "select_name_2"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/network/ApnSettings;->mSIMchangedObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v3, v1, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/settings/network/ApnSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "phone1_on"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/network/ApnSettings;->mSIMchangedObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v3, v1, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/settings/network/ApnSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "phone1_on"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/network/ApnSettings;->mSIMchangedObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v3, v1, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/settings/network/ApnSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "airplane_mode_on"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/network/ApnSettings;->mAirplainModeEnabledObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v3, v1, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/android/settings/network/ApnSettings;->refreshUI()V

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v3, "CscFeature_Setting_LockApnDuringTethering"

    invoke-virtual {v0, v3}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/settings/network/ApnSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/ConnectionsUtils;->isTetheringEnabled(Landroid/content/Context;)Z

    move-result v0

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanModel()Z

    move-result v3

    if-eqz v3, :cond_4

    if-nez v0, :cond_3

    iget-boolean v3, p0, Lcom/android/settings/network/ApnSettings;->mIsBtTetherOn:Z

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v3, v2

    goto :goto_1

    :cond_3
    :goto_0
    move v3, v1

    :goto_1
    move v0, v3

    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/network/ApnSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v3

    if-nez v0, :cond_5

    move v4, v1

    goto :goto_2

    :cond_5
    move v4, v2

    :goto_2
    invoke-virtual {v3, v4}, Landroid/support/v7/preference/PreferenceScreen;->setEnabled(Z)V

    :cond_6
    iget-object v0, p0, Lcom/android/settings/network/ApnSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/ConnectionsUtils;->getEnabledSimCount(Landroid/content/Context;)I

    move-result v0

    if-le v0, v1, :cond_8

    iget-object v0, p0, Lcom/android/settings/network/ApnSettings;->mTabHost:Landroid/widget/TabHost;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/settings/network/ApnSettings;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x1020016

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {p0, v2}, Lcom/android/settings/network/ApnSettings;->getSimName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_7
    invoke-direct {p0}, Lcom/android/settings/network/ApnSettings;->setTabIndicatorTextColor()V

    :cond_8
    return-void
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/network/ApnSettings;->getMetricsCategory()I

    move-result v0

    const/16 v1, 0xe28

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    iget-object v0, p0, Lcom/android/settings/network/ApnSettings;->apnList:Landroid/support/v7/preference/PreferenceGroup;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/network/ApnSettings;->refreshUI()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/network/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    return-void
.end method

.method public refreshUI()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/network/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcom/android/settings/network/ApnSettings;->sCurrentTab:I

    invoke-static {v0, v1}, Lcom/samsung/android/settings/ConnectionsUtils;->getSimOperator(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/network/ApnSettings;->mccmnc:Ljava/lang/String;

    sget-boolean v0, Lcom/android/settings/network/ApnSettings;->mRestoreDefaultApnMode:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/network/ApnSettings;->fillList()V

    invoke-virtual {p0}, Lcom/android/settings/network/ApnSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x3e9

    invoke-virtual {p0, v0}, Lcom/android/settings/network/ApnSettings;->showDialog(I)V

    :goto_0
    return-void
.end method

.method protected showDialog(I)V
    .locals 2

    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/network/ApnSettings;->mRestoring:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/network/ApnSettings;->mRestoring:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/network/ApnSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->setEnabled(Z)V

    :cond_1
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->showDialog(I)V

    return-void
.end method

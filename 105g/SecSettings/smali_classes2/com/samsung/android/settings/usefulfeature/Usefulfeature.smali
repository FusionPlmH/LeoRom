.class public Lcom/samsung/android/settings/usefulfeature/Usefulfeature;
.super Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;
.source "Usefulfeature.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;
.implements Lcom/samsung/android/settings/search/SecIndexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/usefulfeature/Usefulfeature$SummaryProvider;
    }
.end annotation


# static fields
.field private static final FLOATING_FEATURE_CONFIG_AOD_ITEM:Ljava/lang/String;

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static SETTINGS_ADVANCEDFEATURE:I

.field public static final SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

.field private static mContext:Landroid/content/Context;

.field private static mHdrSummary:Ljava/lang/String;

.field private static mHongbaoAssistantEnabled:Z

.field private static mHongbaoAssistantSupportSEP10:Z

.field private static mSupportMcc:[Ljava/lang/String;

.field private static sIsSupportNightClock:Z


# instance fields
.field private ROUTE_TYPE_REMOTE_DISPLAY:I

.field edit:Landroid/content/SharedPreferences$Editor;

.field private mAllDisabledDialog:Landroid/app/AlertDialog;

.field private mAppLock:Landroid/support/v7/preference/SecPreferenceScreen;

.field private final mAppLockObserver:Landroid/database/ContentObserver;

.field private mCallMsgSpamfilter:Landroid/support/v7/preference/SecPreferenceScreen;

.field private mCallMsgSpamfilterObserver:Landroid/database/ContentObserver;

.field private mDailyBoard:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

.field private mDailyBoardObserver:Landroid/database/ContentObserver;

.field private mDirectShare:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

.field private mDisplayAirmessage:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mDock:Landroid/support/v7/preference/SecPreference;

.field private mDualApp:Landroid/support/v7/preference/SecPreferenceScreen;

.field private mFestivalEffect:Landroid/support/v7/preference/SecPreferenceScreen;

.field private mGalaxyLabs:Landroid/support/v7/preference/SecPreference;

.field private mHDREffect:Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;

.field private mHongbaoAssistant:Landroid/support/v7/preference/SecPreferenceScreen;

.field private mHongbaoAssistantObserver:Landroid/database/ContentObserver;

.field private mHongbaoAssistantSwitch:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mInteractionControlObserver:Landroid/database/ContentObserver;

.field private mLinkedData1:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

.field private mLinkedData2:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

.field private mLinkedData3:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

.field private mMediaRouterManager:Landroid/media/MediaRouter;

.field private mMultiWindowPref:Landroid/support/v7/preference/SecPreferenceScreen;

.field private mPanicMode:Landroid/support/v7/preference/SecPreference;

.field private mQuickDial:Landroid/support/v14/preference/SecSwitchPreference;

.field private mReduceAnimations:Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSwitchPreference;

.field private mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

.field private mSafetycareHelp:Landroid/support/v7/preference/SecPreferenceScreen;

.field private mSamsungDeX:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

.field private mScreenRecorder:Landroid/support/v7/preference/SecPreferenceScreen;

.field private mSendSOSMessage:Landroid/support/v7/preference/SecPreference;

.field private mSendSOSMessageObserver:Landroid/database/ContentObserver;

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field private mSmartCapture:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

.field private mSmartCaptureDisableDialog:Landroid/app/AlertDialog;

.field private mSmartCaptureObserver:Landroid/database/ContentObserver;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_FRAMEWORK_CONFIG_AOD_ITEM"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->FLOATING_FEATURE_CONFIG_AOD_ITEM:Ljava/lang/String;

    sget-object v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->FLOATING_FEATURE_CONFIG_AOD_ITEM:Ljava/lang/String;

    const-string v1, "nightclock"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->sIsSupportNightClock:Z

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$12;

    invoke-direct {v0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$12;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$13;

    invoke-direct {v0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$13;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mAllDisabledDialog:Landroid/app/AlertDialog;

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartCaptureDisableDialog:Landroid/app/AlertDialog;

    const/4 v1, 0x4

    iput v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->ROUTE_TYPE_REMOTE_DISPLAY:I

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mLinkedData1:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mLinkedData2:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mLinkedData3:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$1;-><init>(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartCaptureObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$2;-><init>(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mInteractionControlObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;-><init>(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSendSOSMessageObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$4;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$4;-><init>(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHongbaoAssistantObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$5;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$5;-><init>(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mCallMsgSpamfilterObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$6;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$6;-><init>(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mAppLockObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$7;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$7;-><init>(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDailyBoardObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$8;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$8;-><init>(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Landroid/support/v14/preference/SecSwitchPreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartCapture:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Landroid/support/v7/preference/SecPreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mCallMsgSpamfilter:Landroid/support/v7/preference/SecPreferenceScreen;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->appLockSummaryUpdate()V

    return-void
.end method

.method static synthetic access$1300(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Landroid/support/v14/preference/SecSwitchPreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDailyBoard:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->isHongbaoAssistantEnabled(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Landroid/support/v7/preference/SecPreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mMultiWindowPref:Landroid/support/v7/preference/SecPreferenceScreen;

    return-object v0
.end method

.method static synthetic access$400()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Landroid/support/v7/preference/SecPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSendSOSMessage:Landroid/support/v7/preference/SecPreference;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Landroid/support/v14/preference/SecSwitchPreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHongbaoAssistantSwitch:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    return-object v0
.end method

.method static synthetic access$800(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method private appLockSummaryUpdate()V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "app_lock_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mAppLock:Landroid/support/v7/preference/SecPreferenceScreen;

    const v2, 0x7f121a13

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/SecPreferenceScreen;->setSummary(I)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mAppLock:Landroid/support/v7/preference/SecPreferenceScreen;

    const v2, 0x7f121a12

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/SecPreferenceScreen;->setSummary(I)V

    :goto_0
    return-void
.end method

.method private static checkSmartSwitchSupport(Landroid/content/Context;)Z
    .locals 4

    const/4 v0, 0x0

    const-string v1, "device_policy"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwner()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v2, "Usefulfeature"

    const-string v3, "DeviceOwner"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    :cond_0
    if-nez v0, :cond_2

    invoke-static {p0}, Lcom/android/settings/Utils;->isAfwProfile(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    return v2

    :cond_2
    :goto_0
    const-string v2, "Usefulfeature"

    const-string v3, "SS is not supported"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return v2
.end method

.method private isHdmiConnected()Z
    .locals 5

    const/4 v0, 0x0

    sget-object v1, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    const-string v2, "display"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    iput-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    aget-object v3, v1, v2

    if-eqz v3, :cond_0

    aget-object v3, v1, v2

    invoke-virtual {v3}, Landroid/view/Display;->getType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    const/4 v0, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private static isHongbaoAssistantEnabled(Landroid/content/Context;)Z
    .locals 1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.tencent.mm"

    invoke-static {p0, v0}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.samsung.hongbaoassistant"

    invoke-static {p0, v0}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->isSafeMode()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static isHongbaoAssistantSupportSEP10()Z
    .locals 4

    const-string v0, "ro.product.first_api_level"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sget-object v2, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const/16 v3, 0x1b

    if-le v0, v3, :cond_0

    const/4 v1, 0x1

    nop

    :cond_0
    return v1
.end method

.method private isSmartMirroringConnected()Z
    .locals 4

    const/4 v0, 0x0

    sget-object v1, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    const-string v2, "media_router"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaRouter;

    iput-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mMediaRouterManager:Landroid/media/MediaRouter;

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mMediaRouterManager:Landroid/media/MediaRouter;

    iget v2, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->ROUTE_TYPE_REMOTE_DISPLAY:I

    invoke-virtual {v1, v2}, Landroid/media/MediaRouter;->getSelectedRoute(I)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/media/MediaRouter$RouteInfo;->getPlaybackType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    invoke-virtual {v1}, Landroid/media/MediaRouter$RouteInfo;->getPresentationDisplay()Landroid/view/Display;

    move-result-object v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    move v0, v3

    :cond_1
    return v0
.end method

.method private static isSupportMCC()Z
    .locals 4

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Common_ConfigSvcProviderForUnknownNumber"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    sget-object v2, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->isSupportSmartCall(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    aget-object v2, v1, v3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    xor-int/2addr v2, v3

    return v2

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private static isSupportSmartCall(Landroid/content/Context;)Z
    .locals 8

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Common_ConfigSvcProviderForUnknownNumber"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v3, v1, v2

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.samsung.android.smartcallprovider"

    invoke-static {p0, v4}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    array-length v5, v3

    const/4 v6, 0x3

    if-ne v5, v6, :cond_2

    const-string v5, "off"

    aget-object v6, v3, v2

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_0

    const-string v5, "off"

    aget-object v7, v3, v6

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    :cond_0
    const-string v5, "whowho"

    aget-object v7, v3, v2

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "whowho"

    aget-object v6, v3, v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    :cond_1
    return v4

    :cond_2
    return v2
.end method

.method private removeSafetyPreference(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_0
    return-void
.end method

.method private setLinkedDataView()V
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/Rune;->supportRelativeLink(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    if-nez v1, :cond_a

    new-instance v1, Lcom/samsung/android/settings/widget/RelativeLinkView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/settings/widget/RelativeLinkView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportNavigationBar()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/Rune;->isNavigationBarEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v1}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.android.settings"

    const-string v4, "com.android.settings.Settings$NavigationBarSettingsActivity"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "flowId"

    const/16 v4, 0x23f0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "callerMetric"

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getMetricsCategory()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iput-object v2, v1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    const v3, 0x7f120f1b

    iput v3, v1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    invoke-virtual {v3, v1}, Lcom/samsung/android/settings/widget/RelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)Landroid/view/View;

    add-int/lit8 v0, v0, 0x1

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "com.sec.android.easyMover"

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->checkSmartSwitchSupport(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v1}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mLinkedData1:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.sec.android.easyMover"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/16 v2, 0x2333

    if-eqz v1, :cond_1

    const-string v3, "flowId"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "callerMetric"

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getMetricsCategory()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mLinkedData1:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    iput-object v1, v2, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    goto :goto_0

    :cond_1
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.sec.android.easyMover.LAUNCH_SMART_SWITCH"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v4, 0x10000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v4, "flowId"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "callerMetric"

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getMetricsCategory()I

    move-result v4

    invoke-virtual {v3, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mLinkedData1:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    iput-object v3, v2, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    const-string v2, "Usefulfeature"

    const-string v3, "not found activity"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mLinkedData1:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    const v2, 0x7f1218bd

    iput v2, v1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportDesktopMode()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mLinkedData1:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/widget/RelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)Landroid/view/View;

    add-int/lit8 v0, v0, 0x1

    :cond_3
    sget-object v1, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isEasyModeEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_6

    new-instance v1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v1}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mLinkedData2:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.Settings$EasyModeAppActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "flowId"

    const/16 v3, 0x2334

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "callerMetric"

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getMetricsCategory()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mLinkedData2:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    iput-object v1, v2, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mLinkedData2:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    const v3, 0x7f1207c1

    iput v3, v2, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    sget-object v2, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "sem_perfomance_mode"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportBoostMode()Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    if-eq v2, v3, :cond_6

    :cond_4
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportDesktopMode()Z

    move-result v3

    if-eqz v3, :cond_5

    sget-object v3, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_6

    :cond_5
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    iget-object v4, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mLinkedData2:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/widget/RelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)Landroid/view/View;

    add-int/lit8 v0, v0, 0x1

    :cond_6
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_COMMON_CONFIG_EDGE"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    if-nez v2, :cond_9

    sget-boolean v2, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->sIsSupportNightClock:Z

    if-nez v2, :cond_7

    goto :goto_3

    :cond_7
    new-instance v2, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v2}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mLinkedData3:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "-nightclock"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    const-string v3, "com.samsung.android.app.aodservice.settings.NightClock"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    :cond_8
    const-string v3, "com.samsung.android.app.edge.setting.NightClock"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :goto_2
    const-string v3, "flowId"

    const/16 v4, 0x1078

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "callerMetric"

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getMetricsCategory()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mLinkedData3:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    iput-object v2, v3, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mLinkedData3:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    const v4, 0x7f120fa2

    iput v4, v3, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    iget-object v4, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mLinkedData3:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/widget/RelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)Landroid/view/View;

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_9
    :goto_3
    iput-object v3, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mLinkedData3:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    :goto_4
    if-lez v0, :cond_a

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    invoke-virtual {v2, p0}, Lcom/samsung/android/settings/widget/RelativeLinkView;->create(Ljava/lang/Object;)V

    :cond_a
    return-void
.end method

.method public static setSupportMccSmartCall()V
    .locals 4

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Common_ConfigSvcProviderForUnknownNumber"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    aget-object v2, v1, v3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    aget-object v2, v1, v3

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSupportMcc:[Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private setVideoEnhancerPreference()V
    .locals 8

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "hdr_effect"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "sem_perfomance_mode"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->isHdmiConnected()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->isSmartMirroringConnected()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_2

    :cond_1
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportBoostMode()Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    iget-object v4, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHDREffect:Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;

    invoke-virtual {v4, v2}, Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;->setEnabledAppearance(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "pbm_video_enhancer"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_2

    move v4, v1

    goto :goto_1

    :cond_2
    move v4, v2

    :goto_1
    move v0, v4

    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHDREffect:Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;

    const v6, 0x7f120b07

    new-array v1, v1, [Ljava/lang/Object;

    const v7, 0x7f120443

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v2

    invoke-virtual {p0, v6, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;->setToastMsg(Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHDREffect:Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;

    invoke-virtual {v2, v1}, Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;->setEnabledAppearance(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHDREffect:Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;

    invoke-virtual {v2, v1}, Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;->setEnabled(Z)V

    goto :goto_3

    :cond_4
    :goto_2
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHDREffect:Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;->setEnabled(Z)V

    const/4 v0, 0x0

    :goto_3
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHDREffect:Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHDREffect:Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHDREffect:Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;

    if-eqz v0, :cond_5

    const v2, 0x7f121a13

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    :cond_5
    sget-object v2, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHdrSummary:Ljava/lang/String;

    :goto_4
    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private smartCaptureDisablePopup()V
    .locals 7

    const v0, 0x7f121ac3

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const v3, 0x7f120041

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v2, v5

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const v2, 0x7f1204ad

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const v6, 0x7f1218b6

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v1

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f121ac2

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$11;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$11;-><init>(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$10;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$10;-><init>(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)V

    const/high16 v4, 0x1040000

    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$9;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$9;-><init>(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartCaptureDisableDialog:Landroid/app/AlertDialog;

    return-void
.end method


# virtual methods
.method protected getLogTag()Ljava/lang/String;
    .locals 1

    const-string v0, "Usefulfeature"

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x10fe

    sput v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->SETTINGS_ADVANCEDFEATURE:I

    sget v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->SETTINGS_ADVANCEDFEATURE:I

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f150103

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9

    invoke-super {p0, p1}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->setSupportMccSmartCall()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->isSupportMCC()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportMultiwindowSetting()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "com.samsung.settings.action.talkback_toggled"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    sget-object v1, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v1

    const-string v2, "key_dex"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    iput-object v2, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSamsungDeX:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportDesktopMode()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSamsungDeX:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSamsungDeX:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v2, p0}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_1

    :cond_3
    :goto_0
    const-string v2, "key_dex"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)Z

    :cond_4
    :goto_1
    const-string v2, "dock_settings"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/support/v7/preference/SecPreference;

    iput-object v2, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDock:Landroid/support/v7/preference/SecPreference;

    const-string v2, "daily_board_setting"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    iput-object v2, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDailyBoard:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportDailyBoard()Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "daily_board_setting"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)Z

    :cond_5
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDailyBoard:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDailyBoard:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v2, p0}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    :cond_6
    sget-object v2, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/app/SemDualAppManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/SemDualAppManager;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Lcom/samsung/android/app/SemDualAppManager;->isSupported()Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v3, "dual_app"

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/support/v7/preference/SecPreferenceScreen;

    iput-object v3, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDualApp:Landroid/support/v7/preference/SecPreferenceScreen;

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDualApp:Landroid/support/v7/preference/SecPreferenceScreen;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDualApp:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v3, p0}, Landroid/support/v7/preference/SecPreferenceScreen;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    :cond_7
    const-string v3, "display_airmessage"

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    iput-object v3, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDisplayAirmessage:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDisplayAirmessage:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    const/4 v4, 0x1

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDisplayAirmessage:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v3, p0}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDisplayAirmessage:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v3, p0}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDisplayAirmessage:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v3, v4}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_8
    const-string v3, "key_festival_effect"

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/support/v7/preference/SecPreferenceScreen;

    iput-object v3, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mFestivalEffect:Landroid/support/v7/preference/SecPreferenceScreen;

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mFestivalEffect:Landroid/support/v7/preference/SecPreferenceScreen;

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mFestivalEffect:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v3, p0}, Landroid/support/v7/preference/SecPreferenceScreen;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mFestivalEffect:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/SecPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_9
    const-string v3, "call_message_spam_filter"

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/support/v7/preference/SecPreferenceScreen;

    iput-object v3, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mCallMsgSpamfilter:Landroid/support/v7/preference/SecPreferenceScreen;

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mCallMsgSpamfilter:Landroid/support/v7/preference/SecPreferenceScreen;

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mCallMsgSpamfilter:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v3, p0}, Landroid/support/v7/preference/SecPreferenceScreen;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mCallMsgSpamfilter:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/SecPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_a
    const-string v3, "screen_recorder"

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/support/v7/preference/SecPreferenceScreen;

    iput-object v3, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mScreenRecorder:Landroid/support/v7/preference/SecPreferenceScreen;

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mScreenRecorder:Landroid/support/v7/preference/SecPreferenceScreen;

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mScreenRecorder:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v3, p0}, Landroid/support/v7/preference/SecPreferenceScreen;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    :cond_b
    const-string v3, "smart_capture"

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    iput-object v3, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartCapture:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartCapture:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartCapture:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v3, p0}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartCapture:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v3, v4}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_c
    const-string v3, "multi_window_setting"

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/support/v7/preference/SecPreferenceScreen;

    iput-object v3, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mMultiWindowPref:Landroid/support/v7/preference/SecPreferenceScreen;

    sget-object v3, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->isHongbaoAssistantEnabled(Landroid/content/Context;)Z

    move-result v3

    sput-boolean v3, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHongbaoAssistantEnabled:Z

    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->isHongbaoAssistantSupportSEP10()Z

    move-result v3

    sput-boolean v3, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHongbaoAssistantSupportSEP10:Z

    sget-boolean v3, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHongbaoAssistantEnabled:Z

    if-eqz v3, :cond_d

    sget-boolean v3, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHongbaoAssistantSupportSEP10:Z

    if-nez v3, :cond_d

    const-string v3, "hongbao_assistant_switch"

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    iput-object v3, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHongbaoAssistantSwitch:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHongbaoAssistantSwitch:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    if-eqz v3, :cond_e

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHongbaoAssistantSwitch:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v3, p0}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHongbaoAssistantSwitch:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v3, p0}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHongbaoAssistantSwitch:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v3, v4}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    goto :goto_2

    :cond_d
    const-string v3, "hongbao_assistant_switch"

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)Z

    :cond_e
    :goto_2
    sget-boolean v3, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHongbaoAssistantEnabled:Z

    if-eqz v3, :cond_f

    sget-boolean v3, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHongbaoAssistantSupportSEP10:Z

    if-eqz v3, :cond_f

    const-string v3, "hongbao_assistant"

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/support/v7/preference/SecPreferenceScreen;

    iput-object v3, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHongbaoAssistant:Landroid/support/v7/preference/SecPreferenceScreen;

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHongbaoAssistant:Landroid/support/v7/preference/SecPreferenceScreen;

    if-eqz v3, :cond_10

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHongbaoAssistant:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v3, p0}, Landroid/support/v7/preference/SecPreferenceScreen;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_3

    :cond_f
    const-string v3, "hongbao_assistant"

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)Z

    :cond_10
    :goto_3
    const-string v3, "galaxy_labs"

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)Z

    const-string v3, "key_applock"

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/support/v7/preference/SecPreferenceScreen;

    iput-object v3, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mAppLock:Landroid/support/v7/preference/SecPreferenceScreen;

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mAppLock:Landroid/support/v7/preference/SecPreferenceScreen;

    if-eqz v3, :cond_15

    const-string v3, "applock"

    invoke-static {v3}, Lcom/android/settings/Utils;->supportEnhancedFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    if-eqz v3, :cond_11

    goto :goto_5

    :cond_11
    invoke-static {}, Lcom/android/settings/Utils;->isSupportSSecure()Z

    move-result v3

    if-eqz v3, :cond_12

    sget-object v3, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    const-string v5, "com.samsung.android.app.sprotect"

    invoke-static {v3, v5}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_12

    const-string v3, "key_applock"

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)Z

    goto :goto_6

    :cond_12
    invoke-static {}, Lcom/android/settings/Utils;->isSupportSSecure()Z

    move-result v3

    if-eqz v3, :cond_13

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mAppLock:Landroid/support/v7/preference/SecPreferenceScreen;

    const v5, 0x7f120190

    invoke-virtual {v3, v5}, Landroid/support/v7/preference/SecPreferenceScreen;->setTitle(I)V

    goto :goto_4

    :cond_13
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mAppLock:Landroid/support/v7/preference/SecPreferenceScreen;

    const v5, 0x7f12018e

    invoke-virtual {v3, v5}, Landroid/support/v7/preference/SecPreferenceScreen;->setTitle(I)V

    :goto_4
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mAppLock:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v3, p0}, Landroid/support/v7/preference/SecPreferenceScreen;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mAppLock:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/SecPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    goto :goto_6

    :cond_14
    :goto_5
    const-string v3, "key_applock"

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)Z

    :cond_15
    :goto_6
    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isPanicModeSupported()Z

    move-result v3

    if-eqz v3, :cond_16

    const-string v3, "key_safety_assistance"

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)Z

    goto :goto_7

    :cond_16
    const-string v3, "key_panic_mode"

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)Z

    :goto_7
    const-string v3, "key_safety_assistance"

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/support/v7/preference/SecPreference;

    iput-object v3, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSendSOSMessage:Landroid/support/v7/preference/SecPreference;

    sget-object v3, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isSendSOSMessageSupported(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_17

    const-string v3, "key_safety_assistance"

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)Z

    :cond_17
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSendSOSMessage:Landroid/support/v7/preference/SecPreference;

    if-eqz v3, :cond_18

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSendSOSMessage:Landroid/support/v7/preference/SecPreference;

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/SecPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSendSOSMessage:Landroid/support/v7/preference/SecPreference;

    invoke-virtual {v3, p0}, Landroid/support/v7/preference/SecPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    :cond_18
    const-string v3, "key_panic_mode"

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/support/v7/preference/SecPreference;

    iput-object v3, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPanicMode:Landroid/support/v7/preference/SecPreference;

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPanicMode:Landroid/support/v7/preference/SecPreference;

    if-eqz v3, :cond_1a

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPanicMode:Landroid/support/v7/preference/SecPreference;

    sget-object v5, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isSendSOSMessageSupported(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_19

    const v5, 0x7f1210a4

    goto :goto_8

    :cond_19
    const v5, 0x7f1210a5

    :goto_8
    invoke-virtual {v3, v5}, Landroid/support/v7/preference/SecPreference;->setSummary(I)V

    :cond_1a
    const-string v3, "safetycare_help"

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/support/v7/preference/SecPreferenceScreen;

    iput-object v3, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSafetycareHelp:Landroid/support/v7/preference/SecPreferenceScreen;

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSafetycareHelp:Landroid/support/v7/preference/SecPreferenceScreen;

    if-eqz v3, :cond_1b

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSafetycareHelp:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/SecPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_1b
    const-string v3, "VZW"

    invoke-static {}, Lcom/samsung/android/settings/Rune;->readSalesCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_1d

    :cond_1c
    const-string v3, "safetycare_help"

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removeSafetyPreference(Ljava/lang/String;)V

    :cond_1d
    const-string v3, "hdr_settings"

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;

    iput-object v3, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHDREffect:Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHDREffect:Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;

    if-eqz v3, :cond_1e

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHDREffect:Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;

    invoke-virtual {v3, p0}, Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    :cond_1e
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v3

    const-string v5, "SEC_FLOATING_FEATURE_SETTINGS_CONFIG_BRAND_NAME"

    invoke-virtual {v3, v5}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "Galaxy Note7"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1f

    const v3, 0x7f120b09

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getString(I)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHdrSummary:Ljava/lang/String;

    goto :goto_9

    :cond_1f
    const v3, 0x7f120b08

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getString(I)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHdrSummary:Ljava/lang/String;

    :goto_9
    const-string v3, "direct_share"

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    iput-object v3, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDirectShare:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDirectShare:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    if-eqz v3, :cond_21

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/settings/Rune;->isDualFolderType(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_20

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isChinaModel()Z

    move-result v3

    if-eqz v3, :cond_20

    const-string v3, "direct_share"

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)Z

    goto :goto_a

    :cond_20
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDirectShare:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v3, p0}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDirectShare:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v3, v4}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_21
    :goto_a
    const-string v3, "reduce_animations"

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSwitchPreference;

    iput-object v3, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mReduceAnimations:Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSwitchPreference;

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mReduceAnimations:Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSwitchPreference;

    if-eqz v3, :cond_22

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mReduceAnimations:Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSwitchPreference;

    invoke-virtual {v3, p0}, Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    :cond_22
    sget-object v3, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/support/v7/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSharedPreferences:Landroid/content/SharedPreferences;

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->edit:Landroid/content/SharedPreferences$Editor;

    const-string v3, "quick_dial"

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/support/v14/preference/SecSwitchPreference;

    iput-object v3, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mQuickDial:Landroid/support/v14/preference/SecSwitchPreference;

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mQuickDial:Landroid/support/v14/preference/SecSwitchPreference;

    if-eqz v3, :cond_23

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mQuickDial:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v3, p0}, Landroid/support/v14/preference/SecSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    :cond_23
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "com.samsung.android.quickassist"

    invoke-static {v3, v4}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_24

    const-string v3, "quick_dial"

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)Z

    :cond_24
    sget-object v3, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v3

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v3

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Common_EnableAirMessage"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_25

    const-string v4, "display_airmessage"

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)Z

    :cond_25
    sget-object v4, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    const-string v5, "com.samsung.android.myeventcenter"

    invoke-static {v4, v5}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_26

    sget-object v4, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isEasyModeStatus(Landroid/content/ContentResolver;)Z

    move-result v4

    if-eqz v4, :cond_27

    :cond_26
    const-string v4, "key_festival_effect"

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)Z

    :cond_27
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isChinaModel()Z

    move-result v4

    if-eqz v4, :cond_28

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v4

    const-string v5, "CscFeature_VoiceCall_ConfigOpStyleForSpamCall"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "SMARTMANAGER"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_28

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    if-eqz v4, :cond_29

    :cond_28
    const-string v4, "call_message_spam_filter"

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)Z

    :cond_29
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "com.samsung.android.app.scrollcapture"

    invoke-static {v4, v5}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2a

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "com.samsung.android.app.smartcapture"

    invoke-static {v4, v5}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2a

    const-string v4, "smart_capture"

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)Z

    :cond_2a
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "com.sec.app.screenrecorder"

    invoke-static {v4, v5}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2b

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isChinaModel()Z

    move-result v4

    if-nez v4, :cond_2c

    :cond_2b
    const-string v4, "screen_recorder"

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)Z

    :cond_2c
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Setting_ConfigMotionType"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2d

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    const/4 v7, 0x0

    :goto_b
    if-ge v7, v6, :cond_2d

    aget-object v8, v5, v7

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_b

    :cond_2d
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportMultiwindowSetting()Z

    move-result v5

    if-nez v5, :cond_2e

    const-string v5, "multi_window_setting"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)Z

    :cond_2e
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "com.samsung.android.app.galaxylabs"

    invoke-static {v5, v6}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2f

    if-eqz v1, :cond_30

    :cond_2f
    const-string v5, "galaxy_labs"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)Z

    :cond_30
    sget-object v5, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6}, Lcom/android/settings/overlay/FeatureFactory;->getSecDynamicMenuFeatureProvider(Landroid/content/Context;)Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuFeatureProvider;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->hasDockSettings(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_31

    iget-object v6, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDock:Landroid/support/v7/preference/SecPreference;

    invoke-virtual {v6}, Landroid/support/v7/preference/SecPreference;->getFragment()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuFeatureProvider;->hasValidDynamicMenu(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_31

    const-string v6, "dock_settings"

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)Z

    :cond_31
    if-eqz v2, :cond_32

    invoke-virtual {v2}, Lcom/samsung/android/app/SemDualAppManager;->isSupported()Z

    move-result v6

    if-eqz v6, :cond_33

    :cond_32
    if-nez v2, :cond_34

    :cond_33
    const-string v6, "dual_app"

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)Z

    :cond_34
    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->hasActiveKey()Z

    move-result v6

    if-nez v6, :cond_35

    const-string v6, "active_key_settings"

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)Z

    goto :goto_c

    :cond_35
    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->hasXcoverKeyGridViewConcept()Z

    move-result v6

    if-eqz v6, :cond_36

    const-string v6, "active_key_settings"

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    const v7, 0x7f12201a

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/Preference;->setTitle(I)V

    :cond_36
    :goto_c
    const/4 v6, 0x0

    invoke-static {}, Lcom/samsung/android/knox/custom/SettingsManager;->getInstance()Lcom/samsung/android/knox/custom/SettingsManager;

    move-result-object v7

    if-eqz v7, :cond_37

    invoke-virtual {v7}, Lcom/samsung/android/knox/custom/SettingsManager;->getSettingsHiddenState()I

    move-result v6

    :cond_37
    and-int/lit8 v8, v6, 0x8

    if-eqz v8, :cond_38

    const-string v8, "multi_window_setting"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)Z

    :cond_38
    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-super {p0}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->onDestroy()V

    return-void
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 3

    invoke-super {p0, p1}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->onMultiWindowModeChanged(Z)V

    const-string v0, "Usefulfeature"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMultiWindowModeChanged : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->setVideoEnhancerPreference()V

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->onPause()V

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mCallMsgSpamfilter:Landroid/support/v7/preference/SecPreferenceScreen;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mCallMsgSpamfilterObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mMultiWindowPref:Landroid/support/v7/preference/SecPreferenceScreen;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mInteractionControlObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_1
    sget-boolean v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHongbaoAssistantEnabled:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHongbaoAssistantSwitch:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHongbaoAssistantObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mAppLock:Landroid/support/v7/preference/SecPreferenceScreen;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mAppLockObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartCapture:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartCaptureObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSendSOSMessage:Landroid/support/v7/preference/SecPreference;

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSendSOSMessageObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDailyBoardObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDailyBoardObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_6
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 10

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSamsungDeX:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSamsungDeX:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    move-object v3, p2

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v1, v3}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setChecked(Z)V

    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.android.server.desktopmode.action.DESKTOP_MODE_UPDATE_REQUEST"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.android.server.desktopmode.extra.DESKTOP_MODE_STATE"

    move-object v4, p2

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    const/4 v4, 0x2

    :goto_0
    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "com.android.server.desktopmode.extra.DESKTOP_MODE_SOURCE"

    const/4 v4, 0x4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "android"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v3, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_e

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartCapture:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x3e8

    const v7, 0x7f121a13

    const/4 v8, 0x0

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v9, "finger_magnifier"

    invoke-static {v1, v9, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_2

    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->smartCaptureDisablePopup()V

    goto/16 :goto_e

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v8, "enable_smart_capture"

    invoke-static {v1, v8, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartCapture:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    move-object v8, p2

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    invoke-virtual {v1, v8}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartCapture:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    move-object v8, p2

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    invoke-virtual {v1, v8}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartCapture:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    move-object v8, p2

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_3

    goto :goto_1

    :cond_3
    const v7, 0x7f1218ae

    :goto_1
    invoke-virtual {v1, v7}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setSummary(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getMetricsCategory()I

    move-result v1

    const/16 v7, 0x1111

    move-object v8, p2

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_4

    move-wide v3, v5

    goto :goto_2

    :cond_4
    nop

    :goto_2
    invoke-static {v1, v7, v3, v4}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    goto/16 :goto_e

    :cond_5
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDirectShare:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDirectShare:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    move-object v8, p2

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    invoke-virtual {v1, v8}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDirectShare:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    move-object v8, p2

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    invoke-virtual {v1, v8}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDirectShare:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    move-object v8, p2

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_6

    goto :goto_3

    :cond_6
    const v7, 0x7f12071f

    :goto_3
    invoke-virtual {v1, v7}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setSummary(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v7, "direct_share"

    invoke-static {v1, v7, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getMetricsCategory()I

    move-result v1

    const/16 v7, 0x1116

    move-object v8, p2

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_7

    move-wide v3, v5

    goto :goto_4

    :cond_7
    nop

    :goto_4
    invoke-static {v1, v7, v3, v4}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    goto/16 :goto_e

    :cond_8
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mReduceAnimations:Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSwitchPreference;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mReduceAnimations:Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSwitchPreference;

    move-object v3, p2

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSwitchPreference;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "reduce_animations"

    invoke-static {v1, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getMetricsCategory()I

    move-result v1

    const/16 v3, 0x1db3

    int-to-long v4, v0

    invoke-static {v1, v3, v4, v5}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    goto/16 :goto_e

    :cond_9
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDisplayAirmessage:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDisplayAirmessage:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    move-object v3, p2

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v1, v3}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDisplayAirmessage:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    move-object v3, p2

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_a

    goto :goto_5

    :cond_a
    const v7, 0x7f1200d7

    :goto_5
    invoke-virtual {v1, v7}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setSummary(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "air_message_on"

    invoke-static {v1, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_e

    :cond_b
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHDREffect:Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHDREffect:Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;

    move-object v8, p2

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    invoke-virtual {v1, v8}, Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHDREffect:Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;

    move-object v8, p2

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    invoke-virtual {v1, v8}, Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v8, "hdr_effect"

    invoke-static {v1, v8, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHDREffect:Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;

    move-object v8, p2

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_c

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_6

    :cond_c
    sget-object v7, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHdrSummary:Ljava/lang/String;

    :goto_6
    invoke-virtual {v1, v7}, Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getMetricsCategory()I

    move-result v1

    const/16 v7, 0x1119

    move-object v8, p2

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_d

    move-wide v3, v5

    goto :goto_7

    :cond_d
    nop

    :goto_7
    invoke-static {v1, v7, v3, v4}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    goto/16 :goto_e

    :cond_e
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHongbaoAssistantSwitch:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "red_packet_do_not_show"

    invoke-static {v1, v3, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_f

    move v1, v2

    goto :goto_8

    :cond_f
    move v1, v8

    :goto_8
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "hongbao_assistant"

    invoke-static {v3, v4, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_10

    move v3, v2

    goto :goto_9

    :cond_10
    move v3, v8

    :goto_9
    move-object v4, p2

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const-string v5, "Usefulfeature"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onPreferenceChange  showDialog:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " isChecked:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " enabled:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v3, v4, :cond_13

    if-eqz v4, :cond_11

    if-eqz v1, :cond_11

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v5, "com.samsung.hongbaoassistant"

    const-string v6, "com.samsung.hongbaoassistant.ConfirmActivity"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return v8

    :cond_11
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "hongbao_assistant"

    nop

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "red_packet_mode"

    nop

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    const-string v6, "com.samsung.hongbaoassistant"

    const-string v7, "com.samsung.hongbaoassistant.HongbaoNotificationService"

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz v4, :cond_12

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_a

    :cond_12
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/app/Activity;->stopService(Landroid/content/Intent;)Z

    :goto_a
    const/16 v6, 0x67

    const/16 v7, 0x411

    new-instance v8, Landroid/content/Intent;

    const-string v9, "com.samsung.HONGBAO_ASSISTANT_LOGGING_ACTION"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v9, "screen_id"

    invoke-virtual {v8, v9, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v9, "event_id"

    invoke-virtual {v8, v9, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v9, "value_int"

    invoke-virtual {v8, v9, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_b

    :cond_13
    const-string v5, "Usefulfeature"

    const-string v6, "Changed form Quick Button."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_b
    goto/16 :goto_e

    :cond_14
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDailyBoard:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "home_mode_master"

    invoke-static {v1, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDailyBoard:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    move-object v3, p2

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v1, v3}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDailyBoard:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    move-object v3, p2

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v1, v3}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDailyBoard:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    move-object v3, p2

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_15

    goto :goto_c

    :cond_15
    const v7, 0x7f12140a

    :goto_c
    invoke-virtual {v1, v7}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setSummary(I)V

    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.samsung.android.homemode.MASTER_SWITCH_ON"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "switch_status"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "com.samsung.android.homemode"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v3, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_e

    :cond_16
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mQuickDial:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mQuickDial:Landroid/support/v14/preference/SecSwitchPreference;

    move-object v7, p2

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-virtual {v1, v7}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->edit:Landroid/content/SharedPreferences$Editor;

    const-string v7, "quick_dial"

    move-object v8, p2

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->edit:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    new-instance v1, Landroid/content/Intent;

    const-string v7, "com.samsung.android.action.quickdial"

    invoke-direct {v1, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v7, "status"

    move-object v8, p2

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    sget-object v7, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getMetricsCategory()I

    move-result v7

    const/16 v8, 0x1dd8

    move-object v9, p2

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_17

    move-wide v3, v5

    goto :goto_d

    :cond_17
    nop

    :goto_d
    invoke-static {v7, v8, v3, v4}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    nop

    :goto_e
    return v2

    :cond_18
    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDailyBoard:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.android.homemode"

    const-string v2, "com.samsung.android.homemode.settings.HomeModeSettingsActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Usefulfeature"

    const-string v2, "ActivityNotFoundException in homemode"

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :goto_0
    goto/16 :goto_8

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDualApp:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.android.da.daagent"

    const-string v2, "com.samsung.android.da.daagent.activity.DualAppActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v1, "Usefulfeature"

    const-string v2, "ActivityNotFoundException in DualApp"

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :goto_1
    goto/16 :goto_8

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDisplayAirmessage:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :try_start_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.bst.airmessage"

    const-string v3, "com.bst.airmessage.settings.AirMessageSettings"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/4 v1, 0x1

    sget-object v2, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isCoverVerified(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->getTypeOfCover(Landroid/content/Context;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    :cond_2
    const/4 v1, 0x0

    :cond_3
    const-string v2, "S View cover attached"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    const-string v1, "Usefulfeature"

    const-string v2, "ActivityNotFoundException in mDisplayAirmessage"

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :goto_2
    goto/16 :goto_8

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mFestivalEffect:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :try_start_3
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.android.myeventcenter.MY_EVENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    const-string v1, "Usefulfeature"

    const-string v2, "ActivityNotFoundException in mFestivalEffect"

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :goto_3
    goto/16 :goto_8

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mCallMsgSpamfilter:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :try_start_4
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.sec.android.app.firewall"

    const-string v2, "com.sec.android.app.firewall.spamfilter.SpamFilterSettings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->startActivity(Landroid/content/Intent;)V
    :try_end_4
    .catch Landroid/content/ActivityNotFoundException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception v0

    const-string v1, "Usefulfeature"

    const-string v2, "ActivityNotFoundException in CalMsgSpamFiter"

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :goto_4
    goto/16 :goto_8

    :cond_6
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mScreenRecorder:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    :try_start_5
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.app.screenrecorder.START_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->startActivity(Landroid/content/Intent;)V
    :try_end_5
    .catch Landroid/content/ActivityNotFoundException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_5

    :catch_5
    move-exception v0

    const-string v1, "Usefulfeature"

    const-string v2, "ActivityNotFoundException in ScreenRecorder"

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :goto_5
    goto/16 :goto_8

    :cond_7
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSendSOSMessage:Landroid/support/v7/preference/SecPreference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getMetricsCategory()I

    move-result v0

    const/16 v1, 0x1205

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    :try_start_6
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.sec.android.app.safetyassurance"

    const-string v2, "com.sec.android.app.safetyassurance.settings.SafetyAssuranceSetting"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->startActivity(Landroid/content/Intent;)V
    :try_end_6
    .catch Landroid/content/ActivityNotFoundException; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_6

    :catch_6
    move-exception v0

    const-string v1, "Usefulfeature"

    const-string v2, "ActivityNotFoundException in SendSOSMessage"

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :goto_6
    goto/16 :goto_8

    :cond_8
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mGalaxyLabs:Landroid/support/v7/preference/SecPreference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    :try_start_7
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.samsung.android.app.galaxylabs"

    const-string v2, "com.samsung.android.app.galaxylabs.GalaxyLabsMainActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->startActivity(Landroid/content/Intent;)V
    :try_end_7
    .catch Landroid/content/ActivityNotFoundException; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_7

    :catch_7
    move-exception v0

    const-string v1, "Usefulfeature"

    const-string v2, "ActivityNotFoundException in GalaxyLabs"

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :goto_7
    goto :goto_8

    :cond_9
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mAppLock:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f120d50

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_8

    :cond_a
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.samsung.android.applock"

    const-string v2, "com.samsung.android.applock.settings.AppLockSettingsActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->startActivity(Landroid/content/Intent;)V

    goto :goto_8

    :cond_b
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHongbaoAssistant:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHongbaoAssistantSwitch:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_c
    :try_start_8
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.samsung.hongbaoassistant"

    const-string v2, "com.samsung.hongbaoassistant.settings.HongbaoAssistantActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->startActivity(Landroid/content/Intent;)V
    :try_end_8
    .catch Landroid/content/ActivityNotFoundException; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_8

    :catch_8
    move-exception v0

    const-string v1, "Usefulfeature"

    const-string v2, "ActivityNotFoundException in HongbaoAssistant"

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :cond_d
    :goto_8
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 10

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHDREffect:Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHDREffect:Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;

    invoke-virtual {v0}, Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;->inEnabledAppearance()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v1, v0, Lcom/android/settings/SettingsActivity;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lcom/android/settings/SettingsActivity;

    const-string v4, "com.samsung.android.settings.usefulfeature.HDReffectSettings"

    const/4 v5, 0x0

    const v6, 0x7f120b05

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v2, v1

    move-object v3, p0

    move-object v8, p0

    invoke-virtual/range {v2 .. v9}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Landroid/app/Fragment;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    :cond_1
    invoke-super {p0, p1}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 11

    invoke-super {p0}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->onResume()V

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSamsungDeX:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSamsungDeX:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    sget-object v3, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/Utils;->isDesktopModeEnabled(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSamsungDeX:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    if-nez v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setEnabled(Z)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mFestivalEffect:Landroid/support/v7/preference/SecPreferenceScreen;

    const v3, 0x7f121a12

    const v4, 0x7f121a13

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mFestivalEffect:Landroid/support/v7/preference/SecPreferenceScreen;

    nop

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "current_sec_theme_package_festival_enabled"

    invoke-static {v5, v6, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_2

    nop

    move v5, v4

    goto :goto_1

    :cond_2
    nop

    move v5, v3

    :goto_1
    invoke-virtual {v0, v5}, Landroid/support/v7/preference/SecPreferenceScreen;->setSummary(I)V

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mCallMsgSpamfilter:Landroid/support/v7/preference/SecPreferenceScreen;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mCallMsgSpamfilter:Landroid/support/v7/preference/SecPreferenceScreen;

    nop

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "spam_filter_enable"

    invoke-static {v5, v6, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_4

    nop

    move v5, v4

    goto :goto_2

    :cond_4
    nop

    move v5, v3

    :goto_2
    invoke-virtual {v0, v5}, Landroid/support/v7/preference/SecPreferenceScreen;->setSummary(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v5, "spam_filter_enable"

    invoke-static {v5}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mCallMsgSpamfilterObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v5, v2, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartCapture:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v5, "enable_smart_capture"

    invoke-static {v0, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_6

    move v0, v2

    goto :goto_3

    :cond_6
    move v0, v1

    :goto_3
    sget-object v5, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result v5

    const v6, 0x7f1218ae

    if-nez v5, :cond_9

    sget-object v5, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/settings/Utils;->isDesktopStandaloneMode(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_7

    goto :goto_5

    :cond_7
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartCapture:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v5, v0}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setChecked(Z)V

    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartCapture:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v5, v0}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartCapture:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    if-eqz v0, :cond_8

    move v6, v4

    goto :goto_4

    :cond_8
    nop

    :goto_4
    invoke-virtual {v5, v6}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setSummary(I)V

    goto :goto_6

    :cond_9
    :goto_5
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartCapture:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v5, v1}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setEnabled(Z)V

    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartCapture:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v5, v1}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setChecked(Z)V

    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartCapture:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v5, v6}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setSummary(I)V

    :goto_6
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "enable_smart_capture"

    invoke-static {v6}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartCaptureObserver:Landroid/database/ContentObserver;

    invoke-virtual {v5, v6, v2, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_a
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mMultiWindowPref:Landroid/support/v7/preference/SecPreferenceScreen;

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v5, "access_control_enabled"

    invoke-static {v5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mInteractionControlObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v5, v2, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_b
    sget-boolean v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHongbaoAssistantEnabled:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHongbaoAssistantSwitch:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v5, "hongbao_assistant"

    invoke-static {v0, v5, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_c

    move v0, v2

    goto :goto_7

    :cond_c
    move v0, v1

    :goto_7
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHongbaoAssistantSwitch:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v5, v0}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setChecked(Z)V

    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHongbaoAssistantSwitch:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    if-eqz v0, :cond_d

    move v6, v4

    goto :goto_8

    :cond_d
    nop

    move v6, v3

    :goto_8
    invoke-virtual {v5, v6}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setSummary(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "hongbao_assistant"

    invoke-static {v6}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHongbaoAssistantObserver:Landroid/database/ContentObserver;

    invoke-virtual {v5, v6, v2, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_e
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mAppLock:Landroid/support/v7/preference/SecPreferenceScreen;

    if-eqz v0, :cond_10

    invoke-static {}, Lcom/android/settings/Utils;->isSupportSSecure()Z

    move-result v0

    if-eqz v0, :cond_f

    sget-object v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    const-string v5, "com.samsung.android.app.sprotect"

    invoke-static {v0, v5}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mAppLock:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v0, v5}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_9

    :cond_f
    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->appLockSummaryUpdate()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v5, "app_lock_enabled"

    invoke-static {v5}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mAppLockObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v5, v2, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_10
    :goto_9
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSendSOSMessage:Landroid/support/v7/preference/SecPreference;

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v5, "send_emergency_message"

    invoke-static {v0, v5, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_11

    move v0, v2

    goto :goto_a

    :cond_11
    move v0, v1

    :goto_a
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSendSOSMessage:Landroid/support/v7/preference/SecPreference;

    if-eqz v0, :cond_12

    move v3, v4

    goto :goto_b

    :cond_12
    nop

    :goto_b
    invoke-virtual {v5, v3}, Landroid/support/v7/preference/SecPreference;->setSummary(I)V

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportDesktopMode()Z

    move-result v3

    if-eqz v3, :cond_13

    sget-object v3, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_13

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSendSOSMessage:Landroid/support/v7/preference/SecPreference;

    invoke-virtual {v3, v1}, Landroid/support/v7/preference/SecPreference;->setEnabled(Z)V

    :cond_13
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "send_emergency_message"

    invoke-static {v5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSendSOSMessageObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v5, v2, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_14
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDailyBoard:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    if-eqz v0, :cond_17

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "home_mode_master"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_15

    move v0, v2

    goto :goto_c

    :cond_15
    move v0, v1

    :goto_c
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDailyBoard:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v3, v0}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setChecked(Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDailyBoard:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v3, v0}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDailyBoard:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    if-eqz v0, :cond_16

    move v5, v4

    goto :goto_d

    :cond_16
    const v5, 0x7f12140a

    :goto_d
    invoke-virtual {v3, v5}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setSummary(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "home_mode_master"

    invoke-static {v5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDailyBoardObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v5, v2, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_17
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDirectShare:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "direct_share"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_18

    move v0, v2

    goto :goto_e

    :cond_18
    move v0, v1

    :goto_e
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDirectShare:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v3, v0}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setChecked(Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDirectShare:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v3, v0}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDirectShare:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    if-eqz v0, :cond_19

    move v5, v4

    goto :goto_f

    :cond_19
    const v5, 0x7f12071f

    :goto_f
    invoke-virtual {v3, v5}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setSummary(I)V

    :cond_1a
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mReduceAnimations:Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSwitchPreference;

    if-eqz v0, :cond_1d

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "reduce_animations"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1b

    move v0, v2

    goto :goto_10

    :cond_1b
    move v0, v1

    :goto_10
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mReduceAnimations:Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSwitchPreference;

    invoke-virtual {v3, v0}, Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSwitchPreference;->setChecked(Z)V

    sget-object v3, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isAccessibilityRemoveAnimationsState(Landroid/content/Context;)Z

    move-result v3

    xor-int/2addr v3, v2

    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mReduceAnimations:Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSwitchPreference;

    invoke-virtual {v5, v3}, Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSwitchPreference;->setEnabledAppearance(Z)V

    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mReduceAnimations:Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSwitchPreference;

    if-eqz v3, :cond_1c

    const-string v6, ""

    goto :goto_11

    :cond_1c
    sget-object v6, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    const v7, 0x7f120312

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    sget-object v9, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    const v10, 0x7f1211ec

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v1

    sget-object v9, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    const v10, 0x7f1211ee

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v2

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    :goto_11
    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSwitchPreference;->setToastMsg(Ljava/lang/String;)V

    :cond_1d
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPanicMode:Landroid/support/v7/preference/SecPreference;

    if-eqz v0, :cond_1e

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportDesktopMode()Z

    move-result v0

    if-eqz v0, :cond_1e

    sget-object v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPanicMode:Landroid/support/v7/preference/SecPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecPreference;->setEnabled(Z)V

    :cond_1e
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDisplayAirmessage:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    if-eqz v0, :cond_21

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "airmessage_on"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1f

    move v0, v2

    goto :goto_12

    :cond_1f
    move v0, v1

    :goto_12
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDisplayAirmessage:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v3, v0}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setChecked(Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDisplayAirmessage:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    if-eqz v0, :cond_20

    goto :goto_13

    :cond_20
    const v4, 0x7f1200d7

    :goto_13
    invoke-virtual {v3, v4}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setSummary(I)V

    :cond_21
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHDREffect:Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;

    if-eqz v0, :cond_22

    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->setVideoEnhancerPreference()V

    :cond_22
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mQuickDial:Landroid/support/v14/preference/SecSwitchPreference;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "quick_dial"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mQuickDial:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    :cond_23
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportDesktopMode()Z

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mMultiWindowPref:Landroid/support/v7/preference/SecPreferenceScreen;

    if-eqz v4, :cond_26

    sget-object v4, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/app/ActivityManager;->supportsMultiWindow(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_24

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mMultiWindowPref:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v2, v1}, Landroid/support/v7/preference/SecPreferenceScreen;->setEnabled(Z)V

    goto :goto_14

    :cond_24
    if-eqz v0, :cond_25

    if-eqz v3, :cond_25

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mMultiWindowPref:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v2, v1}, Landroid/support/v7/preference/SecPreferenceScreen;->setEnabled(Z)V

    goto :goto_14

    :cond_25
    iget-object v4, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mMultiWindowPref:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v4, v2}, Landroid/support/v7/preference/SecPreferenceScreen;->setEnabled(Z)V

    :cond_26
    :goto_14
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSafetycareHelp:Landroid/support/v7/preference/SecPreferenceScreen;

    if-eqz v2, :cond_27

    if-eqz v0, :cond_27

    if-eqz v3, :cond_27

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSafetycareHelp:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v2, v1}, Landroid/support/v7/preference/SecPreferenceScreen;->setEnabled(Z)V

    :cond_27
    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->setLinkedDataView()V

    return-void
.end method

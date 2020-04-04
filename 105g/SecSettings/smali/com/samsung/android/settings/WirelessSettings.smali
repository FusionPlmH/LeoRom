.class public Lcom/samsung/android/settings/WirelessSettings;
.super Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;
.source "WirelessSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/search/Indexable;
.implements Lcom/samsung/android/settings/logging/status/StatusLogger;


# static fields
.field private static final DBG:Z

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field public static final STATUS_LOGGING_PROVIDER:Lcom/samsung/android/settings/logging/status/StatusLogger$StatusLoggingProvider;

.field private static mTetheredDataML:I

.field private static sSalesCode:Ljava/lang/String;


# instance fields
.field private mAttEmergencyAlert:Landroid/support/v7/preference/SecPreferenceScreen;

.field private mCm:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private final mDataStateListener:Lcom/android/settings/datausage/CellDataPreference$DataStateListener;

.field private mEthernetStateReceiver:Landroid/database/ContentObserver;

.field private mHdmiModeEntry:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHdmiModePreference:Landroid/support/v7/preference/SecDropDownPreference;

.field private mMPTCPObserver:Landroid/database/ContentObserver;

.field private mManageMobilePlanMessage:Ljava/lang/String;

.field private mNearbyScanningEnabler:Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;

.field private mNetUnlock:Landroid/support/v7/preference/SecPreferenceScreen;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mPrivateDnsModeDialogPreference:Lcom/android/settings/network/PrivateDnsModeDialogPreference;

.field private mPrivateDnsObserver:Landroid/database/ContentObserver;

.field private mRcsSettings:Lcom/samsung/android/settings/rcs/RcsSettings;

.field private mRcsUtils:Lcom/samsung/android/settings/rcs/RcsUtils;

.field private mSmartBonding:Landroid/support/v7/preference/SecPreferenceScreen;

.field private mSmartBondingObserver:Landroid/database/ContentObserver;

.field private mTetheredData:I

.field private mTetheringSettings:Lcom/samsung/android/settings/widget/SecRestrictedPreference;

.field private mTm:Landroid/telephony/TelephonyManager;

.field private mUm:Landroid/os/UserManager;

.field private mVerizonEmergencyAlert:Landroid/support/v7/preference/SecPreferenceScreen;

.field private mWifiApSettings:Landroid/support/v7/preference/SecPreferenceScreen;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private ps:Landroid/support/v7/preference/PreferenceScreen;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/WirelessSettings;->DBG:Z

    const/4 v0, 0x0

    sput v0, Lcom/samsung/android/settings/WirelessSettings;->mTetheredDataML:I

    new-instance v0, Lcom/samsung/android/settings/WirelessSettings$8;

    invoke-direct {v0}, Lcom/samsung/android/settings/WirelessSettings$8;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/WirelessSettings;->STATUS_LOGGING_PROVIDER:Lcom/samsung/android/settings/logging/status/StatusLogger$StatusLoggingProvider;

    new-instance v0, Lcom/samsung/android/settings/WirelessSettings$9;

    invoke-direct {v0}, Lcom/samsung/android/settings/WirelessSettings$9;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/WirelessSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/settings/WirelessSettings;->mTetheredData:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/WirelessSettings;->mRcsSettings:Lcom/samsung/android/settings/rcs/RcsSettings;

    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "DeX mode"

    const-string v2, "Mirroring mode"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/samsung/android/settings/WirelessSettings;->mHdmiModeEntry:Ljava/util/ArrayList;

    new-instance v0, Lcom/samsung/android/settings/WirelessSettings$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/WirelessSettings$1;-><init>(Lcom/samsung/android/settings/WirelessSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/WirelessSettings;->mDataStateListener:Lcom/android/settings/datausage/CellDataPreference$DataStateListener;

    new-instance v0, Lcom/samsung/android/settings/WirelessSettings$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/WirelessSettings$2;-><init>(Lcom/samsung/android/settings/WirelessSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/WirelessSettings;->mMPTCPObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/WirelessSettings$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/WirelessSettings$3;-><init>(Lcom/samsung/android/settings/WirelessSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/WirelessSettings;->mPrivateDnsObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/WirelessSettings$4;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/WirelessSettings$4;-><init>(Lcom/samsung/android/settings/WirelessSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/WirelessSettings;->mSmartBondingObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/WirelessSettings$5;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/WirelessSettings$5;-><init>(Lcom/samsung/android/settings/WirelessSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/WirelessSettings;->mEthernetStateReceiver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/WirelessSettings;)Landroid/support/v7/preference/SecPreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/WirelessSettings;->mSmartBonding:Landroid/support/v7/preference/SecPreferenceScreen;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/settings/WirelessSettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/WirelessSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000()I
    .locals 1

    sget v0, Lcom/samsung/android/settings/WirelessSettings;->mTetheredDataML:I

    return v0
.end method

.method static synthetic access$1002(I)I
    .locals 0

    sput p0, Lcom/samsung/android/settings/WirelessSettings;->mTetheredDataML:I

    return p0
.end method

.method static synthetic access$1100()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/WirelessSettings;->sSalesCode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/settings/WirelessSettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/WirelessSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/settings/WirelessSettings;)Lcom/android/settings/network/PrivateDnsModeDialogPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/WirelessSettings;->mPrivateDnsModeDialogPreference:Lcom/android/settings/network/PrivateDnsModeDialogPreference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/settings/WirelessSettings;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/WirelessSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/settings/WirelessSettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/WirelessSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/settings/WirelessSettings;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/WirelessSettings;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$702(Lcom/samsung/android/settings/WirelessSettings;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lcom/samsung/android/settings/WirelessSettings;)Landroid/support/v7/preference/SecPreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/WirelessSettings;->mNetUnlock:Landroid/support/v7/preference/SecPreferenceScreen;

    return-object v0
.end method

.method static synthetic access$802(Lcom/samsung/android/settings/WirelessSettings;Landroid/support/v7/preference/SecPreferenceScreen;)Landroid/support/v7/preference/SecPreferenceScreen;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/WirelessSettings;->mNetUnlock:Landroid/support/v7/preference/SecPreferenceScreen;

    return-object p1
.end method

.method static synthetic access$900(Lcom/samsung/android/settings/WirelessSettings;)Landroid/support/v7/preference/PreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/WirelessSettings;->ps:Landroid/support/v7/preference/PreferenceScreen;

    return-object v0
.end method

.method private canRemoveVzwDataPlanPreference()Z
    .locals 4

    const-string v0, "WirelessSettings"

    const-string v1, " Check whether the Verizon Data plan preference can be removed? "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Common_ConfigPco"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "VZW_PREPAID"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    const-string v1, "VZW_TABLET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    return v2

    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "WirelessSettings"

    const-string v3, " User account don\'t show Data Plan "

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private isContainerOnlyMode(Landroid/content/Context;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static isDownloadBoosterSupported(Landroid/content/Context;)Z
    .locals 11

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "android.os.ServiceManager"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getService"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v0

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "sb_service"

    aput-object v5, v4, v0

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_0

    const-string v6, "WirelessSettings"

    const-string v7, "sServiceManager is null"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v6, "com.samsung.android.smartbonding.ISmartBondingService$Stub"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v7

    move v8, v0

    :goto_0
    array-length v9, v7

    if-ge v8, v9, :cond_2

    aget-object v9, v7, v8

    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "asInterface"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    aget-object v9, v7, v8

    new-array v10, v3, [Ljava/lang/Object;

    aput-object v4, v10, v0

    invoke-virtual {v9, v5, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_3

    const-string v3, "WirelessSettings"

    const-string/jumbo v9, "smartbondingservice is null"

    invoke-static {v3, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_3
    const-string v9, "WirelessSettings"

    const-string/jumbo v10, "smartbondingservice is not null"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "WirelessSettings"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private registerForObserver()V
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/settings/WirelessSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mptcp_value"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/WirelessSettings;->mMPTCPObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/WirelessSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "private_dns_mode"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/WirelessSettings;->mPrivateDnsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/WirelessSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "private_dns_specifier"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/WirelessSettings;->mPrivateDnsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/WirelessSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "smart_bonding"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/WirelessSettings;->mSmartBondingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private unregisterForObserver()V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/settings/WirelessSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/WirelessSettings;->mMPTCPObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/WirelessSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/WirelessSettings;->mPrivateDnsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/WirelessSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/WirelessSettings;->mSmartBondingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method


# virtual methods
.method public callRcsDefaultSms()V
    .locals 5

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.ACTION_CHANGE_DEFAULT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.android.settings"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "package"

    const-string v2, "com.samsung.android.messaging"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x3e8

    :try_start_0
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/settings/WirelessSettings;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "WirelessSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " IllegalStateException"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    move-exception v1

    const-string v2, "WirelessSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " doesn\'t exist."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :goto_1
    return-void
.end method

.method public callRcsSettings(Landroid/support/v7/preference/Preference;)V
    .locals 5

    const-string v0, "rcs_settings"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    if-ne p1, v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.rcs.config.VIEW_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.samsung.rcs"

    const-string v2, "com.samsung.rcs.configs.ServicesSwitch"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.samsung.rcs"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/WirelessSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "WirelessSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " IllegalStateException"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    move-exception v1

    const-string v2, "WirelessSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " doesn\'t exist."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :goto_1
    goto/16 :goto_5

    :cond_0
    const-string v0, "rcs_settings_partial_branded"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    if-ne p1, v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.rcs.config.VIEW_SETTINGS_PARTIAL_BRANDED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.samsung.rcs"

    const-string v2, "com.samsung.rcs.configs.PartialBrandedServicesSwitch"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.samsung.rcs"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :try_start_1
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/WirelessSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    goto :goto_3

    :catch_2
    move-exception v1

    const-string v2, "WirelessSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " IllegalStateException"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :catch_3
    move-exception v1

    const-string v2, "WirelessSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " doesn\'t exist."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :goto_3
    goto :goto_5

    :cond_1
    const-string v0, "rcs_settings_partial_branded_cpr"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    if-ne p1, v0, :cond_2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.rcs.config.VIEW_SETTINGS_PARTIAL_BRANDED_CPR"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.samsung.rcs"

    const-string v2, "com.samsung.rcs.configs.PartialBrandedServicesCPRSwitch"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.samsung.rcs"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :try_start_2
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/WirelessSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_4

    :goto_4
    goto :goto_5

    :catch_4
    move-exception v1

    const-string v2, "WirelessSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " IllegalStateException"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :catch_5
    move-exception v1

    const-string v2, "WirelessSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " doesn\'t exist."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_2
    :goto_5
    return-void
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 1

    const-string v0, "WirelessSettings"

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x6e

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f150111

    return v0
.end method

.method public getPrivateModeDnsSummary()Ljava/lang/CharSequence;
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/settings/WirelessSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/WirelessSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->getModeFromSettings(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, -0x2023fbf7

    if-eq v3, v4, :cond_2

    const v4, -0x11dea3cd

    if-eq v3, v4, :cond_1

    const v4, 0x1ad6f

    if-eq v3, v4, :cond_0

    goto :goto_0

    :cond_0
    const-string v3, "off"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    const-string v3, "hostname"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x2

    goto :goto_1

    :cond_2
    const-string v3, "opportunistic"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v3, -0x1

    :goto_1
    packed-switch v3, :pswitch_data_0

    const-string v3, ""

    return-object v3

    :pswitch_0
    invoke-static {v1}, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->getHostnameFromSettings(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    :pswitch_1
    const v3, 0x7f121159

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    return-object v3

    :pswitch_2
    const v3, 0x7f121158

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    return-object v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    const-string v0, "WirelessSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult result : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x3e8

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    const-string v0, "WirelessSettings"

    const-string v1, "RESULT_OK : -1"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-super/range {p0 .. p1}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->onCreate(Landroid/os/Bundle;)V

    if-eqz v2, :cond_0

    const-string v0, "mManageMobilePlanMessage"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/samsung/android/settings/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreate: mManageMobilePlanMessage="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/samsung/android/settings/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/samsung/android/settings/WirelessSettings;->log(Ljava/lang/String;)V

    const-string v0, "connectivity"

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/WirelessSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, v1, Lcom/samsung/android/settings/WirelessSettings;->mCm:Landroid/net/ConnectivityManager;

    const-string v0, "phone"

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/WirelessSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, v1, Lcom/samsung/android/settings/WirelessSettings;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/WirelessSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, v1, Lcom/samsung/android/settings/WirelessSettings;->mPm:Landroid/content/pm/PackageManager;

    const-string/jumbo v0, "user"

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/WirelessSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, v1, Lcom/samsung/android/settings/WirelessSettings;->mUm:Landroid/os/UserManager;

    const-string/jumbo v0, "wifi"

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/WirelessSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, v1, Lcom/samsung/android/settings/WirelessSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v0, v1, Lcom/samsung/android/settings/WirelessSettings;->mUm:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, v1, Lcom/samsung/android/settings/WirelessSettings;->mContext:Landroid/content/Context;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    iput-object v0, v1, Lcom/samsung/android/settings/WirelessSettings;->ps:Landroid/support/v7/preference/PreferenceScreen;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    const/4 v6, 0x0

    if-eqz v4, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v6

    :goto_0
    move v7, v0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    if-eqz v7, :cond_2

    const-string v0, "nearby_scanning_setting_category"

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/WirelessSettings;->removePreference(Ljava/lang/String;)Z

    const-string/jumbo v0, "toggle_nearby_scanning"

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/WirelessSettings;->removePreference(Ljava/lang/String;)Z

    goto :goto_1

    :cond_2
    new-instance v0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;

    iget-object v9, v1, Lcom/samsung/android/settings/WirelessSettings;->mContext:Landroid/content/Context;

    const-string v10, "nearby_scanning_setting_category"

    invoke-virtual {v1, v10}, Lcom/samsung/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-direct {v0, v9, v10}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    iput-object v0, v1, Lcom/samsung/android/settings/WirelessSettings;->mNearbyScanningEnabler:Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;

    iget-object v0, v1, Lcom/samsung/android/settings/WirelessSettings;->mNearbyScanningEnabler:Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;

    invoke-virtual {v0}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->init()Z

    const-string/jumbo v0, "toggle_nearby_scanning"

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/WirelessSettings;->removePreference(Ljava/lang/String;)Z

    :goto_1
    const-string v0, "nfc_setting"

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/WirelessSettings;->removePreference(Ljava/lang/String;)Z

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/WirelessSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v9, "android.hardware.nfc"

    invoke-virtual {v0, v9}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "nfc_setting"

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/WirelessSettings;->removePreference(Ljava/lang/String;)Z

    :cond_3
    invoke-static {}, Lcom/samsung/android/settings/Rune;->readSalesCode()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/WirelessSettings;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v8}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v9, "airplane_mode_toggleable_radios"

    invoke-static {v0, v9}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-nez v7, :cond_4

    iget-object v0, v1, Lcom/samsung/android/settings/WirelessSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/Rune;->isShopDemo(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isLDUModel()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, v1, Lcom/samsung/android/settings/WirelessSettings;->mUm:Landroid/os/UserManager;

    const-string v10, "no_config_vpn"

    invoke-virtual {v0, v10}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    const-string/jumbo v0, "vpn_settings"

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/WirelessSettings;->removePreference(Ljava/lang/String;)Z

    const-string/jumbo v0, "vpn_settings_for_att"

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/WirelessSettings;->removePreference(Ljava/lang/String;)Z

    :cond_5
    if-eqz v9, :cond_6

    const-string v0, "bluetooth"

    invoke-virtual {v9, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/WirelessSettings;->canRemoveVzwDataPlanPreference()Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "data_plan_category"

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceCategory;

    if-eqz v0, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v10

    invoke-virtual {v10, v0}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_7
    const-string v0, "persist.sys.tether_data"

    const/4 v10, -0x1

    invoke-static {v0, v10}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/samsung/android/settings/WirelessSettings;->mTetheredData:I

    iget v0, v1, Lcom/samsung/android/settings/WirelessSettings;->mTetheredData:I

    sput v0, Lcom/samsung/android/settings/WirelessSettings;->mTetheredDataML:I

    iget-object v0, v1, Lcom/samsung/android/settings/WirelessSettings;->mContext:Landroid/content/Context;

    const-string v11, "com.ipsec.vpnclient"

    invoke-static {v0, v11}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_8

    const-string/jumbo v0, "vpn_settings"

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/WirelessSettings;->removePreference(Ljava/lang/String;)Z

    goto :goto_2

    :cond_8
    const-string/jumbo v0, "vpn_settings_for_att"

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/WirelessSettings;->removePreference(Ljava/lang/String;)Z

    :goto_2
    iget-object v0, v1, Lcom/samsung/android/settings/WirelessSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/rcs/RcsUtils;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/rcs/RcsUtils;

    move-result-object v0

    iput-object v0, v1, Lcom/samsung/android/settings/WirelessSettings;->mRcsUtils:Lcom/samsung/android/settings/rcs/RcsUtils;

    new-instance v0, Lcom/samsung/android/settings/rcs/RcsSettings;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v13

    invoke-direct {v0, v12, v13, v1}, Lcom/samsung/android/settings/rcs/RcsSettings;-><init>(Landroid/content/Context;Landroid/support/v7/preference/PreferenceScreen;Lcom/samsung/android/settings/WirelessSettings;)V

    iput-object v0, v1, Lcom/samsung/android/settings/WirelessSettings;->mRcsSettings:Lcom/samsung/android/settings/rcs/RcsSettings;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v12, "com.samsung.rcs"

    invoke-static {v0, v12}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_9

    const-string v0, "WirelessSettings"

    const-string v13, "RCS application is not installed"

    invoke-static {v0, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/samsung/android/settings/WirelessSettings;->mRcsSettings:Lcom/samsung/android/settings/rcs/RcsSettings;

    if-eqz v0, :cond_a

    iget-object v0, v1, Lcom/samsung/android/settings/WirelessSettings;->mRcsSettings:Lcom/samsung/android/settings/rcs/RcsSettings;

    invoke-virtual {v0}, Lcom/samsung/android/settings/rcs/RcsSettings;->disableAllRcsSettingsPreference()V

    goto :goto_3

    :cond_9
    iget-object v0, v1, Lcom/samsung/android/settings/WirelessSettings;->mRcsSettings:Lcom/samsung/android/settings/rcs/RcsSettings;

    if-eqz v0, :cond_a

    iget-object v0, v1, Lcom/samsung/android/settings/WirelessSettings;->mRcsSettings:Lcom/samsung/android/settings/rcs/RcsSettings;

    invoke-virtual {v0}, Lcom/samsung/android/settings/rcs/RcsSettings;->updateRcsSettingsVisibility()V

    :cond_a
    :goto_3
    const-string v0, "MTR"

    sget-object v13, Lcom/samsung/android/settings/WirelessSettings;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    const-string/jumbo v13, "vpn_settings"

    invoke-virtual {v1, v13}, Lcom/samsung/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v13

    invoke-virtual {v0, v13}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/WirelessSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v13, "com.samsung.feature.mirrorlink_fw"

    invoke-virtual {v0, v13}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    move v13, v0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/WirelessSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v14, "com.samsung.android.app.mirrorlink"

    invoke-virtual {v0, v14, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v13, :cond_c

    :goto_4
    const-string v0, "mirror_link_settings"

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/WirelessSettings;->removePreference(Ljava/lang/String;)Z

    goto :goto_5

    :catchall_0
    move-exception v0

    goto/16 :goto_13

    :catch_0
    move-exception v0

    :try_start_1
    const-string v14, "WirelessSettings"

    const-string v15, "MirrorLink application is not installed"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v13, 0x0

    if-nez v13, :cond_c

    goto :goto_4

    :cond_c
    :goto_5
    invoke-static {}, Lcom/samsung/android/settings/ConnectionsUtils;->isSupportEthernet()Z

    move-result v0

    const/4 v14, -0x2

    if-nez v0, :cond_d

    const-string v0, "ethernet_settings"

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    const-string v15, "ethernet_settings"

    invoke-virtual {v1, v15}, Lcom/samsung/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v15

    invoke-virtual {v0, v15}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_7

    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/WirelessSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v15, "eth_device_conn"

    invoke-static {v0, v15, v6, v14}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const-string v15, "WirelessSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "ETH_DEVICE_CONNECTED: "

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v15, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "ethernet_settings"

    invoke-virtual {v1, v5}, Lcom/samsung/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v5

    if-eqz v5, :cond_f

    const-string v5, "ethernet_settings"

    invoke-virtual {v1, v5}, Lcom/samsung/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v5

    const/4 v14, 0x2

    if-ne v0, v14, :cond_e

    const/4 v14, 0x1

    goto :goto_6

    :cond_e
    move v14, v6

    :goto_6
    invoke-virtual {v5, v14}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    :cond_f
    :goto_7
    invoke-static {}, Lcom/samsung/android/settings/ConnectionsUtils;->isSupportSmartBonding()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, v1, Lcom/samsung/android/settings/WirelessSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/WirelessSettings;->isDownloadBoosterSupported(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_10

    goto :goto_b

    :cond_10
    const-string/jumbo v0, "smart_bonding_settings"

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/SecPreferenceScreen;

    iput-object v0, v1, Lcom/samsung/android/settings/WirelessSettings;->mSmartBonding:Landroid/support/v7/preference/SecPreferenceScreen;

    iget-object v0, v1, Lcom/samsung/android/settings/WirelessSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v5, "smart_bonding"

    invoke-static {v0, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    goto :goto_8

    :cond_11
    move v0, v6

    :goto_8
    iget-object v5, v1, Lcom/samsung/android/settings/WirelessSettings;->mSmartBonding:Landroid/support/v7/preference/SecPreferenceScreen;

    if-eqz v0, :cond_12

    const v14, 0x7f121a13

    goto :goto_9

    :cond_12
    const v14, 0x7f121a12

    :goto_9
    invoke-virtual {v5, v14}, Landroid/support/v7/preference/SecPreferenceScreen;->setSummary(I)V

    iget-object v5, v1, Lcom/samsung/android/settings/WirelessSettings;->mSmartBonding:Landroid/support/v7/preference/SecPreferenceScreen;

    if-eqz v0, :cond_13

    const/4 v14, 0x1

    goto :goto_a

    :cond_13
    move v14, v6

    :goto_a
    invoke-virtual {v5, v14}, Landroid/support/v7/preference/SecPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    goto :goto_c

    :cond_14
    :goto_b
    const-string/jumbo v0, "smart_bonding_settings"

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/WirelessSettings;->removePreference(Ljava/lang/String;)Z

    :goto_c
    iget-object v0, v1, Lcom/samsung/android/settings/WirelessSettings;->mContext:Landroid/content/Context;

    invoke-direct {v1, v0}, Lcom/samsung/android/settings/WirelessSettings;->isContainerOnlyMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, v1, Lcom/samsung/android/settings/WirelessSettings;->mUm:Landroid/os/UserManager;

    const-string v5, "no_config_vpn"

    invoke-virtual {v0, v5}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    :cond_15
    const-string/jumbo v0, "vpn_settings"

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/WirelessSettings;->removePreference(Ljava/lang/String;)Z

    const-string/jumbo v0, "vpn_settings_for_att"

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/WirelessSettings;->removePreference(Ljava/lang/String;)Z

    :cond_16
    if-nez v7, :cond_17

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v5, "CscFeature_Setting_EnableFactoryResetPasswordWhenNoSIM"

    invoke-virtual {v0, v5}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_18

    :cond_17
    const-string v0, "network_reset"

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/WirelessSettings;->removePreference(Ljava/lang/String;)Z

    :cond_18
    invoke-static {}, Lcom/samsung/android/settings/ConnectionsUtils;->isSupportMptcp()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, v1, Lcom/samsung/android/settings/WirelessSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/ConnectionsUtils;->isFastWebSIMValid(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_19

    if-nez v7, :cond_19

    const-string v0, "multi_path"

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/SecPreferenceScreen;

    const v5, 0x7f120991

    invoke-virtual {v0, v5}, Landroid/support/v7/preference/SecPreferenceScreen;->setTitle(I)V

    const-string v5, "com.samsung.android.settings.GigaLteSettings"

    invoke-virtual {v0, v5}, Landroid/support/v7/preference/SecPreferenceScreen;->setFragment(Ljava/lang/String;)V

    goto :goto_f

    :cond_19
    invoke-static {}, Lcom/samsung/android/settings/ConnectionsUtils;->isSupportMptcp()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isDomesticLGTModel()Z

    move-result v0

    if-nez v0, :cond_1a

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isDomesticSKTModel()Z

    move-result v0

    if-eqz v0, :cond_1e

    :cond_1a
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isDomesticLGTModel()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, v1, Lcom/samsung/android/settings/WirelessSettings;->mContext:Landroid/content/Context;

    const-string v5, "com.lguplus.lgusetting"

    invoke-static {v0, v5}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1e

    :cond_1b
    if-eqz v7, :cond_1c

    goto :goto_e

    :cond_1c
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isDomesticSKTModel()Z

    move-result v0

    if-eqz v0, :cond_1f

    const-string v0, "multi_path"

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/SecPreferenceScreen;

    iget-object v5, v1, Lcom/samsung/android/settings/WirelessSettings;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/samsung/android/settings/ConnectionsUtils;->isSupport5GConcept(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_1d

    const v5, 0x7f12022f

    invoke-virtual {v0, v5}, Landroid/support/v7/preference/SecPreferenceScreen;->setTitle(I)V

    goto :goto_d

    :cond_1d
    const v5, 0x7f12022e

    invoke-virtual {v0, v5}, Landroid/support/v7/preference/SecPreferenceScreen;->setTitle(I)V

    :goto_d
    const-string v5, "com.samsung.android.settings.GigaLteSettings"

    invoke-virtual {v0, v5}, Landroid/support/v7/preference/SecPreferenceScreen;->setFragment(Ljava/lang/String;)V

    goto :goto_f

    :cond_1e
    :goto_e
    const-string v0, "multi_path"

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/WirelessSettings;->removePreference(Ljava/lang/String;)Z

    :cond_1f
    :goto_f
    const-string v0, "key_vzw_emergency_alert"

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/SecPreferenceScreen;

    iput-object v0, v1, Lcom/samsung/android/settings/WirelessSettings;->mVerizonEmergencyAlert:Landroid/support/v7/preference/SecPreferenceScreen;

    const-string v0, "key_att_emergency_alert"

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/SecPreferenceScreen;

    iput-object v0, v1, Lcom/samsung/android/settings/WirelessSettings;->mAttEmergencyAlert:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/ConnectionsUtils;->showVzwEmergencyAlertOption(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_20

    const-string v0, "key_vzw_emergency_alert"

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/WirelessSettings;->removePreference(Ljava/lang/String;)Z

    const-string v0, "key_att_emergency_alert"

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/WirelessSettings;->removePreference(Ljava/lang/String;)Z

    goto :goto_11

    :cond_20
    const-string v0, "ATT"

    sget-object v5, Lcom/samsung/android/settings/WirelessSettings;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    const-string v0, "AIO"

    sget-object v5, Lcom/samsung/android/settings/WirelessSettings;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    goto :goto_10

    :cond_21
    const-string v0, "key_att_emergency_alert"

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/WirelessSettings;->removePreference(Ljava/lang/String;)Z

    goto :goto_11

    :cond_22
    :goto_10
    const-string v0, "key_vzw_emergency_alert"

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/WirelessSettings;->removePreference(Ljava/lang/String;)Z

    :goto_11
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/WirelessSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v5, "hdmi_mode"

    invoke-static {v0, v5, v10}, Lcom/samsung/android/settings/ConnectionsUtils;->getIntFromDeXSettings(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportDesktopMode()Z

    move-result v5

    if-eqz v5, :cond_23

    iget-object v5, v1, Lcom/samsung/android/settings/WirelessSettings;->mContext:Landroid/content/Context;

    const-string v14, "com.sec.android.app.desktoplauncher"

    invoke-static {v5, v14}, Lcom/samsung/android/settings/ConnectionsUtils;->isPackageEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_23

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v5

    if-nez v5, :cond_23

    if-le v0, v10, :cond_23

    const-string v5, "hdmi_mode"

    invoke-virtual {v1, v5}, Lcom/samsung/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/support/v7/preference/SecDropDownPreference;

    iput-object v5, v1, Lcom/samsung/android/settings/WirelessSettings;->mHdmiModePreference:Landroid/support/v7/preference/SecDropDownPreference;

    iget-object v5, v1, Lcom/samsung/android/settings/WirelessSettings;->mHdmiModePreference:Landroid/support/v7/preference/SecDropDownPreference;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroid/support/v7/preference/SecDropDownPreference;->setValue(Ljava/lang/String;)V

    iget-object v5, v1, Lcom/samsung/android/settings/WirelessSettings;->mHdmiModePreference:Landroid/support/v7/preference/SecDropDownPreference;

    invoke-virtual {v5, v1}, Landroid/support/v7/preference/SecDropDownPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_12

    :cond_23
    const-string v5, "hdmi_mode"

    invoke-virtual {v1, v5}, Lcom/samsung/android/settings/WirelessSettings;->removePreference(Ljava/lang/String;)Z

    :goto_12
    const-string v5, "network_unlock"

    invoke-virtual {v1, v5}, Lcom/samsung/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/support/v7/preference/SecPreferenceScreen;

    iput-object v5, v1, Lcom/samsung/android/settings/WirelessSettings;->mNetUnlock:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-static {}, Lcom/samsung/android/settings/ConnectionsUtils;->isSupportVZWNetworkLock()Z

    move-result v5

    if-eqz v5, :cond_24

    iget-object v5, v1, Lcom/samsung/android/settings/WirelessSettings;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->isVzwNetworkUnLocked(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_25

    :cond_24
    iget-object v5, v1, Lcom/samsung/android/settings/WirelessSettings;->mNetUnlock:Landroid/support/v7/preference/SecPreferenceScreen;

    if-eqz v5, :cond_25

    iget-object v5, v1, Lcom/samsung/android/settings/WirelessSettings;->ps:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v10, v1, Lcom/samsung/android/settings/WirelessSettings;->mNetUnlock:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v5, v10}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    const/4 v5, 0x0

    iput-object v5, v1, Lcom/samsung/android/settings/WirelessSettings;->mNetUnlock:Landroid/support/v7/preference/SecPreferenceScreen;

    :cond_25
    invoke-static {}, Lcom/samsung/android/settings/ConnectionsUtils;->isSupportEthernet()Z

    move-result v5

    if-eqz v5, :cond_26

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/WirelessSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v10, "eth_device_conn"

    invoke-static {v10}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    iget-object v14, v1, Lcom/samsung/android/settings/WirelessSettings;->mEthernetStateReceiver:Landroid/database/ContentObserver;

    const/4 v15, -0x2

    invoke-virtual {v5, v10, v6, v14, v15}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    :cond_26
    const-string v5, "private_dns_settings"

    invoke-virtual {v1, v5}, Lcom/samsung/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/android/settings/network/PrivateDnsModeDialogPreference;

    iput-object v5, v1, Lcom/samsung/android/settings/WirelessSettings;->mPrivateDnsModeDialogPreference:Lcom/android/settings/network/PrivateDnsModeDialogPreference;

    iget-object v5, v1, Lcom/samsung/android/settings/WirelessSettings;->mPrivateDnsModeDialogPreference:Lcom/android/settings/network/PrivateDnsModeDialogPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/WirelessSettings;->getPrivateModeDnsSummary()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    :goto_13
    if-nez v13, :cond_27

    const-string v5, "mirror_link_settings"

    invoke-virtual {v1, v5}, Lcom/samsung/android/settings/WirelessSettings;->removePreference(Ljava/lang/String;)Z

    :cond_27
    throw v0
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreateDialog: dialogId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/WirelessSettings;->log(Ljava/lang/String;)V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/samsung/android/settings/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/samsung/android/settings/WirelessSettings$6;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/WirelessSettings$6;-><init>(Lcom/samsung/android/settings/WirelessSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->onDestroy()V

    invoke-static {}, Lcom/samsung/android/settings/ConnectionsUtils;->isSupportEthernet()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/WirelessSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/WirelessSettings;->mEthernetStateReceiver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 4

    invoke-super {p0}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->onPause()V

    iget-object v0, p0, Lcom/samsung/android/settings/WirelessSettings;->mNearbyScanningEnabler:Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/WirelessSettings;->mNearbyScanningEnabler:Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;

    invoke-virtual {v0}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->onPause()Z

    :cond_0
    invoke-static {}, Lcom/samsung/android/settings/ConnectionsUtils;->isSupportSmartBonding()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/WirelessSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/WirelessSettings;->isDownloadBoosterSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/WirelessSettings;->mDataStateListener:Lcom/android/settings/datausage/CellDataPreference$DataStateListener;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/android/settings/WirelessSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageUtils;->getDefaultSubscriptionId(Landroid/content/Context;)I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/settings/WirelessSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/datausage/CellDataPreference$DataStateListener;->setListener(ZILandroid/content/Context;)V

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/settings/WirelessSettings;->unregisterForObserver()V

    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 7

    const-string v0, "hdmi_mode"

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/WirelessSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "mirroring_switch_disabled"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lcom/samsung/android/settings/ConnectionsUtils;->getBooleanFromDeXSettings(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    const v2, 0x7f120b02

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/WirelessSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/samsung/android/settings/WirelessSettings;->mHdmiModePreference:Landroid/support/v7/preference/SecDropDownPreference;

    invoke-virtual {v4}, Landroid/support/v7/preference/SecDropDownPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    move-object v5, p2

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aget-object v4, v4, v5

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/WirelessSettings;->mHdmiModePreference:Landroid/support/v7/preference/SecDropDownPreference;

    iget-object v4, p0, Lcom/samsung/android/settings/WirelessSettings;->mHdmiModePreference:Landroid/support/v7/preference/SecDropDownPreference;

    const-string v5, "0"

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/SecDropDownPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/support/v7/preference/SecDropDownPreference;->setValueIndex(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/WirelessSettings;->mHdmiModePreference:Landroid/support/v7/preference/SecDropDownPreference;

    invoke-virtual {v0}, Landroid/support/v7/preference/SecDropDownPreference;->updateState()V

    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v4, p0, Lcom/samsung/android/settings/WirelessSettings;->mContext:Landroid/content/Context;

    const v5, 0x103012b

    invoke-direct {v0, v4, v5}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/WirelessSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f120b03

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/samsung/android/settings/WirelessSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v4, v5, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return v3

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.android.server.desktopmode.action.DESKTOP_MODE_UPDATE_REQUEST"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.android.server.desktopmode.extra.DESKTOP_MODE_STATE"

    iget-object v4, p0, Lcom/samsung/android/settings/WirelessSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/samsung/android/settings/WirelessSettings;->mHdmiModePreference:Landroid/support/v7/preference/SecDropDownPreference;

    invoke-virtual {v4}, Landroid/support/v7/preference/SecDropDownPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    move-object v5, p2

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aget-object v4, v4, v5

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "com.android.server.desktopmode.extra.DESKTOP_MODE_SOURCE"

    const/4 v3, 0x4

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "android"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/android/settings/WirelessSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/WirelessSettings;->getMetricsCategory()I

    move-result v2

    const/16 v3, 0x1bf8

    move-object v4, p2

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-long v4, v4

    invoke-static {v2, v3, v4, v5}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    :cond_2
    return v1
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPreferenceTreeClick: preference="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/WirelessSettings;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/WirelessSettings;->isResumed()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v0, "rcs_settings"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    if-eq p1, v0, :cond_4

    const-string v0, "rcs_settings_partial_branded"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    if-eq p1, v0, :cond_4

    const-string v0, "rcs_settings_partial_branded_cpr"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    if-ne p1, v0, :cond_1

    goto :goto_1

    :cond_1
    const-string v0, "ethernet_settings"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    if-ne p1, v0, :cond_2

    const/16 v0, 0x1c16

    invoke-static {v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertFlowLogging(I)V

    goto :goto_3

    :cond_2
    if-eqz p1, :cond_6

    const-string v0, "pay_as_you_go"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    if-ne p1, v0, :cond_6

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_3

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/WirelessSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "WirelessSettings"

    const-string v4, "Activity not found!! Check whether module that handles this intent is enabled"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "WirelessSettings"

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return v1

    :cond_4
    :goto_1
    const-string v0, "com.samsung.android.messaging"

    invoke-virtual {p0}, Lcom/samsung/android/settings/WirelessSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/applications/defaultapps/DefaultSmsPreferenceController;->isSmsDefault(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/settings/WirelessSettings;->callRcsDefaultSms()V

    goto :goto_2

    :cond_5
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/WirelessSettings;->callRcsSettings(Landroid/support/v7/preference/Preference;)V

    :goto_2
    nop

    :cond_6
    :goto_3
    invoke-super {p0, p1}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 12

    invoke-super {p0}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->onResume()V

    iget-object v0, p0, Lcom/samsung/android/settings/WirelessSettings;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->isTetheringSupported()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/WirelessSettings;->mUm:Landroid/os/UserManager;

    const-string v2, "no_config_tethering"

    invoke-virtual {v0, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/WirelessSettings;->mTetheringSettings:Lcom/samsung/android/settings/widget/SecRestrictedPreference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/WirelessSettings;->mTetheringSettings:Lcom/samsung/android/settings/widget/SecRestrictedPreference;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/SecRestrictedPreference;->setEnabled(Z)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/WirelessSettings;->mWifiApSettings:Landroid/support/v7/preference/SecPreferenceScreen;

    const v2, 0x7f121a12

    const v3, 0x7f121a13

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/WirelessSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/WirelessSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    const/16 v4, 0xd

    if-ne v0, v4, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/WirelessSettings;->mWifiApSettings:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v0, v3}, Landroid/support/v7/preference/SecPreferenceScreen;->setSummary(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/WirelessSettings;->mWifiApSettings:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/SecPreferenceScreen;->setSummary(I)V

    :cond_3
    :goto_0
    const/4 v0, -0x1

    const/4 v4, 0x1

    :try_start_0
    iget-object v5, p0, Lcom/samsung/android/settings/WirelessSettings;->mContext:Landroid/content/Context;

    const-string v6, "content://com.sec.knox.provider/RestrictionPolicy4"

    const-string v7, "isVpnAllowed"

    invoke-static {v5, v6, v7}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-ne v5, v4, :cond_4

    move v6, v4

    goto :goto_1

    :cond_4
    move v6, v1

    :goto_1
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    if-eq v5, v0, :cond_6

    const-string/jumbo v7, "vpn_settings"

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v7

    if-eqz v7, :cond_5

    const-string/jumbo v7, "vpn_settings"

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v7

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    invoke-virtual {v7, v8}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    :cond_5
    const-string/jumbo v7, "vpn_settings_for_att"

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v7

    if-eqz v7, :cond_6

    const-string/jumbo v7, "vpn_settings_for_att"

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v7

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    invoke-virtual {v7, v8}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    goto :goto_2

    :catch_0
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "com.samsung.rcs"

    invoke-static {v5, v6}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7

    const-string v6, "WirelessSettings"

    const-string v7, "RCS application is not installed"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/samsung/android/settings/WirelessSettings;->mRcsSettings:Lcom/samsung/android/settings/rcs/RcsSettings;

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/samsung/android/settings/WirelessSettings;->mRcsSettings:Lcom/samsung/android/settings/rcs/RcsSettings;

    invoke-virtual {v6}, Lcom/samsung/android/settings/rcs/RcsSettings;->disableAllRcsSettingsPreference()V

    goto :goto_3

    :cond_7
    iget-object v6, p0, Lcom/samsung/android/settings/WirelessSettings;->mRcsSettings:Lcom/samsung/android/settings/rcs/RcsSettings;

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/samsung/android/settings/WirelessSettings;->mRcsSettings:Lcom/samsung/android/settings/rcs/RcsSettings;

    invoke-virtual {v6}, Lcom/samsung/android/settings/rcs/RcsSettings;->updateRcsSettingsVisibility()V

    :cond_8
    :goto_3
    invoke-static {}, Lcom/samsung/android/settings/ConnectionsUtils;->isSupportEthernet()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-virtual {p0}, Lcom/samsung/android/settings/WirelessSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "eth_device_conn"

    const/4 v8, -0x2

    invoke-static {v6, v7, v1, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    const-string v7, "WirelessSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onResume() ETH_DEVICE_CONNECTED: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "ethernet_settings"

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v7

    if-eqz v7, :cond_a

    const-string v7, "ethernet_settings"

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v7

    const/4 v8, 0x2

    if-ne v6, v8, :cond_9

    move v8, v4

    goto :goto_4

    :cond_9
    move v8, v1

    :goto_4
    invoke-virtual {v7, v8}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    :cond_a
    iget-object v6, p0, Lcom/samsung/android/settings/WirelessSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "airplane_mode_toggleable_radios"

    invoke-static {v6, v7}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_b

    const-string/jumbo v7, "wifi"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_d

    :cond_b
    const-string/jumbo v7, "vpn_settings"

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/settings/WirelessSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "airplane_mode_on"

    invoke-static {v8, v9, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-nez v8, :cond_c

    move v8, v4

    goto :goto_5

    :cond_c
    move v8, v1

    :goto_5
    invoke-virtual {v7, v8}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    :cond_d
    iget-object v7, p0, Lcom/samsung/android/settings/WirelessSettings;->mNearbyScanningEnabler:Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;

    if-eqz v7, :cond_e

    iget-object v7, p0, Lcom/samsung/android/settings/WirelessSettings;->mNearbyScanningEnabler:Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;

    invoke-virtual {v7}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->onResume()Z

    :cond_e
    invoke-static {}, Lcom/samsung/android/settings/ConnectionsUtils;->isSupportSmartBonding()Z

    move-result v7

    if-eqz v7, :cond_12

    iget-object v7, p0, Lcom/samsung/android/settings/WirelessSettings;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/samsung/android/settings/WirelessSettings;->isDownloadBoosterSupported(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_12

    invoke-virtual {p0}, Lcom/samsung/android/settings/WirelessSettings;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/settings/WirelessSettings;->mSmartBonding:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    move-result v9

    invoke-virtual {v8, v9}, Landroid/support/v7/preference/SecPreferenceScreen;->setEnabled(Z)V

    iget-object v8, p0, Lcom/samsung/android/settings/WirelessSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "smart_bonding"

    invoke-static {v8, v9, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_f

    move v8, v4

    goto :goto_6

    :cond_f
    move v8, v1

    :goto_6
    iget-object v9, p0, Lcom/samsung/android/settings/WirelessSettings;->mSmartBonding:Landroid/support/v7/preference/SecPreferenceScreen;

    if-eqz v8, :cond_10

    move v10, v3

    goto :goto_7

    :cond_10
    move v10, v2

    :goto_7
    invoke-virtual {v9, v10}, Landroid/support/v7/preference/SecPreferenceScreen;->setSummary(I)V

    iget-object v9, p0, Lcom/samsung/android/settings/WirelessSettings;->mSmartBonding:Landroid/support/v7/preference/SecPreferenceScreen;

    if-eqz v8, :cond_11

    move v10, v4

    goto :goto_8

    :cond_11
    move v10, v1

    :goto_8
    invoke-virtual {v9, v10}, Landroid/support/v7/preference/SecPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    iget-object v9, p0, Lcom/samsung/android/settings/WirelessSettings;->mDataStateListener:Lcom/android/settings/datausage/CellDataPreference$DataStateListener;

    iget-object v10, p0, Lcom/samsung/android/settings/WirelessSettings;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/settings/datausage/DataUsageUtils;->getDefaultSubscriptionId(Landroid/content/Context;)I

    move-result v10

    iget-object v11, p0, Lcom/samsung/android/settings/WirelessSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v4, v10, v11}, Lcom/android/settings/datausage/CellDataPreference$DataStateListener;->setListener(ZILandroid/content/Context;)V

    :cond_12
    const-string v7, "multi_path"

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/support/v7/preference/SecPreferenceScreen;

    if-eqz v7, :cond_15

    invoke-virtual {p0}, Lcom/samsung/android/settings/WirelessSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "mptcp_value"

    invoke-static {v8, v9, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_13

    move v2, v3

    nop

    :cond_13
    invoke-virtual {v7, v2}, Landroid/support/v7/preference/SecPreferenceScreen;->setSummary(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/WirelessSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "mptcp_value"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_14

    goto :goto_9

    :cond_14
    move v4, v1

    :goto_9
    invoke-virtual {v7, v4}, Landroid/support/v7/preference/SecPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_15
    invoke-direct {p0}, Lcom/samsung/android/settings/WirelessSettings;->registerForObserver()V

    invoke-static {}, Lcom/samsung/android/settings/ConnectionsUtils;->isSupportVZWNetworkLock()Z

    move-result v2

    if-eqz v2, :cond_16

    iget-object v2, p0, Lcom/samsung/android/settings/WirelessSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->isVzwNetworkUnLocked(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_17

    :cond_16
    iget-object v2, p0, Lcom/samsung/android/settings/WirelessSettings;->mNetUnlock:Landroid/support/v7/preference/SecPreferenceScreen;

    if-eqz v2, :cond_17

    iget-object v2, p0, Lcom/samsung/android/settings/WirelessSettings;->ps:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v3, p0, Lcom/samsung/android/settings/WirelessSettings;->mNetUnlock:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/samsung/android/settings/WirelessSettings;->mNetUnlock:Landroid/support/v7/preference/SecPreferenceScreen;

    const-string v2, "WirelessSettings"

    const-string v3, "onresume remove mNetUnlock"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17
    iget-object v2, p0, Lcom/samsung/android/settings/WirelessSettings;->mHdmiModePreference:Landroid/support/v7/preference/SecDropDownPreference;

    if-eqz v2, :cond_18

    iget-object v2, p0, Lcom/samsung/android/settings/WirelessSettings;->mHdmiModePreference:Landroid/support/v7/preference/SecDropDownPreference;

    iget-object v3, p0, Lcom/samsung/android/settings/WirelessSettings;->mHdmiModePreference:Landroid/support/v7/preference/SecDropDownPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/WirelessSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v8, "hdmi_mode"

    invoke-static {v4, v8, v0}, Lcom/samsung/android/settings/ConnectionsUtils;->getIntFromDeXSettings(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/support/v7/preference/SecDropDownPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/support/v7/preference/SecDropDownPreference;->setValueIndex(I)V

    :cond_18
    const-string v0, "network_reset"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/SecPreferenceScreen;

    if-eqz v0, :cond_19

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportDesktopMode()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-virtual {p0}, Lcom/samsung/android/settings/WirelessSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_19

    const-string v2, "network_reset"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    :cond_19
    invoke-static {}, Lcom/samsung/android/settings/ConnectionsUtils;->isSupportVZWNetworkLock()Z

    move-result v2

    if-eqz v2, :cond_1b

    iget-object v2, p0, Lcom/samsung/android/settings/WirelessSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->isVzwNetworkUnLocked(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1b

    const-string v2, "network_unlock"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    if-eqz v2, :cond_1a

    const-string v2, "network_unlock"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    :cond_1a
    new-instance v1, Lcom/samsung/android/settings/networklock/NetworkLockUtils;

    iget-object v2, p0, Lcom/samsung/android/settings/WirelessSettings;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/android/settings/networklock/NetworkLockUtils;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/samsung/android/settings/WirelessSettings$7;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/WirelessSettings$7;-><init>(Lcom/samsung/android/settings/WirelessSettings;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->checkLockStatus(Lcom/samsung/android/settings/networklock/NetworkLockUtils$OnLockStatusListener;)V

    :cond_1b
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/samsung/android/settings/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "mManageMobilePlanMessage"

    iget-object v1, p0, Lcom/samsung/android/settings/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    invoke-super {p0}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->onStart()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.ims.action.onsimloaded"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method

.method public onStop()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->onStop()V

    return-void
.end method

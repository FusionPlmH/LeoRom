.class public Lcom/samsung/android/settings/deviceinfo/status/SimStatus;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SimStatus.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/deviceinfo/status/SimStatus$IndianOperators;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static sSalesCode:Ljava/lang/String;


# instance fields
.field private final mAreaInfoReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

.field private mEuiccManager:Landroid/telephony/euicc/EuiccManager;

.field private mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

.field private mIndianOperator:Lcom/samsung/android/settings/deviceinfo/status/SimStatus$IndianOperators;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mRes:Landroid/content/res/Resources;

.field private mSelectableSubInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mShowLatestAreaInfo:Z

.field private mSimHotSwapReceiver:Landroid/content/BroadcastReceiver;

.field private mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

.field private mTabHost:Landroid/widget/TabHost;

.field private mTabListener:Landroid/widget/TabHost$OnTabChangeListener;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/settings/deviceinfo/status/SimStatus$1;

    invoke-direct {v0}, Lcom/samsung/android/settings/deviceinfo/status/SimStatus$1;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    sget-object v0, Lcom/samsung/android/settings/deviceinfo/status/SimStatus$IndianOperators;->OTHERS:Lcom/samsung/android/settings/deviceinfo/status/SimStatus$IndianOperators;

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->mIndianOperator:Lcom/samsung/android/settings/deviceinfo/status/SimStatus$IndianOperators;

    new-instance v0, Lcom/samsung/android/settings/deviceinfo/status/SimStatus$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/deviceinfo/status/SimStatus$2;-><init>(Lcom/samsung/android/settings/deviceinfo/status/SimStatus;)V

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->mAreaInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/samsung/android/settings/deviceinfo/status/SimStatus$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/deviceinfo/status/SimStatus$4;-><init>(Lcom/samsung/android/settings/deviceinfo/status/SimStatus;)V

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->mSimHotSwapReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/samsung/android/settings/deviceinfo/status/SimStatus$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/deviceinfo/status/SimStatus$5;-><init>(Lcom/samsung/android/settings/deviceinfo/status/SimStatus;)V

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->mTabListener:Landroid/widget/TabHost$OnTabChangeListener;

    new-instance v0, Lcom/samsung/android/settings/deviceinfo/status/SimStatus$6;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/deviceinfo/status/SimStatus$6;-><init>(Lcom/samsung/android/settings/deviceinfo/status/SimStatus;)V

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->mEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Landroid/telephony/SubscriptionInfo;)Z
    .locals 1

    invoke-static {p0, p1}, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->isIccIdAvailable(Landroid/content/Context;Landroid/telephony/SubscriptionInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/samsung/android/settings/deviceinfo/status/SimStatus;)Landroid/telephony/SubscriptionInfo;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/samsung/android/settings/deviceinfo/status/SimStatus;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->setRssiNoti(I)V

    return-void
.end method

.method static synthetic access$102(Lcom/samsung/android/settings/deviceinfo/status/SimStatus;Landroid/telephony/SubscriptionInfo;)Landroid/telephony/SubscriptionInfo;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/samsung/android/settings/deviceinfo/status/SimStatus;)Landroid/telephony/PhoneStateListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/samsung/android/settings/deviceinfo/status/SimStatus;)Landroid/telephony/TelephonyManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/samsung/android/settings/deviceinfo/status/SimStatus;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->mSelectableSubInfos:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/samsung/android/settings/deviceinfo/status/SimStatus;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->initialize()V

    return-void
.end method

.method static synthetic access$1500(Lcom/samsung/android/settings/deviceinfo/status/SimStatus;)Landroid/widget/TabHost;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->mTabHost:Landroid/widget/TabHost;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/settings/deviceinfo/status/SimStatus;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/settings/deviceinfo/status/SimStatus;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->updateDataState(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/settings/deviceinfo/status/SimStatus;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->updateNetworkType()V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/android/settings/deviceinfo/status/SimStatus;Landroid/telephony/SignalStrength;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->updateSignalStrength(Landroid/telephony/SignalStrength;)V

    return-void
.end method

.method static synthetic access$600(Lcom/samsung/android/settings/deviceinfo/status/SimStatus;Landroid/telephony/ServiceState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->updateNetworkProvider(Landroid/telephony/ServiceState;)V

    return-void
.end method

.method static synthetic access$700(Lcom/samsung/android/settings/deviceinfo/status/SimStatus;Landroid/telephony/ServiceState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->updateServiceState(Landroid/telephony/ServiceState;)V

    return-void
.end method

.method static synthetic access$800(Lcom/samsung/android/settings/deviceinfo/status/SimStatus;Landroid/telephony/ServiceState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->updateRoamingStatus(Landroid/telephony/ServiceState;)V

    return-void
.end method

.method static synthetic access$900(Lcom/samsung/android/settings/deviceinfo/status/SimStatus;)Lcom/samsung/android/sec_platform_library/FactoryPhone;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    return-object v0
.end method

.method private buildTabSpec(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, p1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->mEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    return-object v0
.end method

.method private getAsuLevel(Landroid/telephony/SignalStrength;)I
    .locals 1

    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getAsuLevel()I

    move-result v0

    return v0
.end method

.method private getCurrentServiceState()Landroid/telephony/ServiceState;
    .locals 3

    const-string v0, "SimStatus"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSubscriptionInfo.getSubscriptionId() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getServiceStateForSubscriber(I)Landroid/telephony/ServiceState;

    move-result-object v0

    return-object v0
.end method

.method private getDbm(Landroid/telephony/SignalStrength;)I
    .locals 1

    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getDbm()I

    move-result v0

    return v0
.end method

.method private getIndianOperator(I)Lcom/samsung/android/settings/deviceinfo/status/SimStatus$IndianOperators;
    .locals 2

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->getSimOperatorNameForPhone(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "airtel"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/android/settings/deviceinfo/status/SimStatus$IndianOperators;->AIRTEL:Lcom/samsung/android/settings/deviceinfo/status/SimStatus$IndianOperators;

    return-object v1

    :cond_0
    const-string v1, "jio"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/samsung/android/settings/deviceinfo/status/SimStatus$IndianOperators;->RELIANCE:Lcom/samsung/android/settings/deviceinfo/status/SimStatus$IndianOperators;

    return-object v1

    :cond_1
    sget-object v1, Lcom/samsung/android/settings/deviceinfo/status/SimStatus$IndianOperators;->OTHERS:Lcom/samsung/android/settings/deviceinfo/status/SimStatus$IndianOperators;

    return-object v1
.end method

.method private getOperatorName(Landroid/telephony/ServiceState;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanDCMModel()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_0
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanKDIModel()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "kddi"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "au"

    goto/16 :goto_2

    :cond_1
    const-string v1, "TGY"

    sget-object v2, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isChinaModel()Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_2
    const-string v1, "China Telecom"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f1213c3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_3
    const-string v1, "CU GSM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "CHN-CUGSM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "China Unicom"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "CHN-UNICOM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_1

    :cond_4
    const-string v1, "CMCC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "CHINA MOBILE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_0

    :cond_5
    const-string v1, "PCCW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "PCCW-HKT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_6
    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f121590

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_7
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f1213af

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_8
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f1213c4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_9
    :goto_2
    return-object v0
.end method

.method private getPhoneStateListener()Landroid/telephony/PhoneStateListener;
    .locals 2

    new-instance v0, Lcom/samsung/android/settings/deviceinfo/status/SimStatus$3;

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/deviceinfo/status/SimStatus$3;-><init>(Lcom/samsung/android/settings/deviceinfo/status/SimStatus;Ljava/lang/Integer;)V

    return-object v0
.end method

.method private getPhoneSubscriptionInfos()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private getSignalStrength(Landroid/telephony/TelephonyManager;)Landroid/telephony/SignalStrength;
    .locals 1

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v0

    return-object v0
.end method

.method private getSimName(I)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportMultiSimDefaultName()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v1, 0x0

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v1

    const-string v2, "gsm.sim.state"

    const-string v3, "UNKNOWN"

    invoke-static {v1, v2, v3}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v2, 0x1

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v2

    const-string v3, "gsm.sim.state"

    const-string v4, "UNKNOWN"

    invoke-static {v2, v3, v4}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez p1, :cond_1

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->isSimLoaded(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f121838

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "select_name_1"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-direct {p0, v2}, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->isSimLoaded(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f121839

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "select_name_2"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    goto :goto_1

    :cond_3
    if-nez p1, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "select_name_1"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "select_name_2"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method private getSimSerialNumber(I)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->getSimSerialNumber(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "VZW"

    sget-object v2, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils;->addWhitespaceEvery4digits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private hasService()Z
    .locals 4

    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->getCurrentServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v2

    const/4 v3, 0x1

    packed-switch v2, :pswitch_data_0

    return v3

    :pswitch_0
    return v1

    :pswitch_1
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v2

    if-nez v2, :cond_0

    move v1, v3

    nop

    :cond_0
    return v1

    :cond_1
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private initialize()V
    .locals 5

    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->updateEid()V

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    if-nez v0, :cond_4

    const-string v0, "SimStatus"

    const-string/jumbo v1, "subsciption info is null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f1206cf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "operator_name"

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "data_state"

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "latest_area_info"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->removePreference(Ljava/lang/String;)Z

    const-string v1, "service_state"

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils;->supportSignalStrength()Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "signal_strength"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->removePreference(Ljava/lang/String;)Z

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "signal_strength"

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-string/jumbo v1, "voice_network_type"

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "data_network_type"

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Common_UseChameleon"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils;->isSupportChameleonRoaming()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "roaming_state"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->removePreference(Ljava/lang/String;)Z

    goto :goto_1

    :cond_1
    const-string v1, "roaming_state"

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->isIccIdAvailable(Landroid/content/Context;Landroid/telephony/SubscriptionInfo;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "icc_id"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->removePreference(Ljava/lang/String;)Z

    goto :goto_2

    :cond_2
    const-string v1, "icc_id"

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    const-string v1, "ACG"

    sget-object v2, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "mmsc_server_acg"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->removePreference(Ljava/lang/String;)Z

    goto :goto_3

    :cond_3
    const-string v1, "mmsc_server_acg"

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    return-void

    :cond_4
    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->getPhoneStateListener()Landroid/telephony/PhoneStateListener;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    new-instance v1, Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Landroid/telephony/TelephonyManager;-><init>(Landroid/content/Context;I)V

    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->getCurrentServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->updateNetworkProvider(Landroid/telephony/ServiceState;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->updateLatestAreaInfo()V

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->updateServiceState(Landroid/telephony/ServiceState;)V

    invoke-virtual {v1, v0}, Landroid/telephony/TelephonyManager;->getDataState(I)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->updateDataState(I)V

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->getSignalStrength(Landroid/telephony/TelephonyManager;)Landroid/telephony/SignalStrength;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->updateSignalStrength(Landroid/telephony/SignalStrength;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->updateNetworkType()V

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Common_UseChameleon"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils;->isSupportChameleonRoaming()Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "roaming_state"

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->removePreference(Ljava/lang/String;)Z

    :cond_5
    invoke-direct {p0, v2}, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->updateRoamingStatus(Landroid/telephony/ServiceState;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->updateIccidNumber()V

    invoke-static {}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils;->supportSignalStrength()Z

    move-result v3

    if-nez v3, :cond_6

    const-string/jumbo v3, "signal_strength"

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->removePreference(Ljava/lang/String;)Z

    :cond_6
    const-string v3, "ACG"

    sget-object v4, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "mmsc_server_acg"

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->removePreference(Ljava/lang/String;)Z

    goto :goto_4

    :cond_7
    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->updateMmscServer()V

    :goto_4
    return-void
.end method

.method private static isIccIdAvailable(Landroid/content/Context;Landroid/telephony/SubscriptionInfo;)Z
    .locals 4

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils;->isPhoneTypeCdma(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0, p1}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils;->isCdmaLteEnabled(Landroid/content/Context;Landroid/telephony/SubscriptionInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    sget-object v1, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->sSalesCode:Ljava/lang/String;

    invoke-static {v1}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils;->isMetroPCS(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Setting_SupportIccId"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method private isSimLoaded(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "READY"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "LOADED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private resetSignalStrength()V
    .locals 5

    const-string/jumbo v0, "signal_strength"

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->mRes:Landroid/content/res/Resources;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/16 v3, -0x71

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const v3, 0x7f12182a

    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setRssiNoti(I)V
    .locals 6

    const-string v0, "SimStatus"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setRssiNoti() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v2, 0x5

    const/16 v3, 0x18

    :try_start_0
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    :try_start_1
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_2

    :catch_0
    move-exception v2

    :try_start_2
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    nop

    :try_start_3
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v2

    const-string v3, "SimStatus"

    const-string/jumbo v4, "setRssiNoti : dos.close() error"

    invoke-static {v3, v4}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :goto_0
    nop

    :goto_1
    new-instance v2, Lcom/samsung/android/sec_platform_library/FactoryPhone;

    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/samsung/android/sec_platform_library/FactoryPhone;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/sec_platform_library/FactoryPhone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    return-void

    :goto_2
    nop

    nop

    :try_start_4
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    :catch_2
    move-exception v3

    const-string v4, "SimStatus"

    const-string/jumbo v5, "setRssiNoti : dos.close() error"

    invoke-static {v4, v5}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    nop

    :goto_3
    throw v2
.end method

.method private setSummaryText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1206cf

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0, p2}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method private setTabHeight()V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->mTabHost:Landroid/widget/TabHost;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TabWidget;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v2}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, -0x1

    invoke-direct {v3, v5, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updateDataState(I)V
    .locals 4

    const v0, 0x7f121156

    packed-switch p1, :pswitch_data_0

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f12116c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :pswitch_0
    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f121159

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f121157

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :pswitch_3
    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f121158

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    nop

    :goto_0
    nop

    const-string v2, "VZW"

    sget-object v3, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->hasService()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_0
    const-string v0, "data_state"

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateEid()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->mEuiccManager:Landroid/telephony/euicc/EuiccManager;

    invoke-virtual {v0}, Landroid/telephony/euicc/EuiccManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "status_esim_id"

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->mEuiccManager:Landroid/telephony/euicc/EuiccManager;

    invoke-virtual {v1}, Landroid/telephony/euicc/EuiccManager;->getEid()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "status_esim_id"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->removePreference(Ljava/lang/String;)Z

    :goto_0
    return-void
.end method

.method private updateIccidNumber()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-static {v1, v2}, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->isIccIdAvailable(Landroid/content/Context;Landroid/telephony/SubscriptionInfo;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v2, "icc_id"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->removePreference(Ljava/lang/String;)Z

    goto :goto_0

    :cond_0
    const-string v2, "icc_id"

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->getSimSerialNumber(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private updateLatestAreaInfo()V
    .locals 3

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11200ad

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->mShowLatestAreaInfo:Z

    const-string v0, "SimStatus"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mShowLatestAreaInfo = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->mShowLatestAreaInfo:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->mShowLatestAreaInfo:Z

    if-nez v0, :cond_1

    const-string v0, "latest_area_info"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->removePreference(Ljava/lang/String;)Z

    goto :goto_1

    :cond_1
    const-string v0, "latest_area_info"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private updateMmscServer()V
    .locals 12

    const/4 v0, 0x0

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Common_AutoConfigurationType"

    const-string v3, "DISABLE"

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SIMBASED_SSKU"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Common_AutoConfigurationType"

    const-string v3, "DISABLE"

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SIMBASED_OMC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mms_domain"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SimStatus"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ACG MMSC server : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_1
    :goto_0
    const-string v1, "SimStatus"

    const-string v2, "This model is Single SKU or OMC"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "gsm.sim.operator.numeric"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "content://telephony/carriers"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "mmsc"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v5

    const-string v9, "numeric =? AND type LIKE ?"

    const/4 v3, 0x2

    new-array v7, v3, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v1, v7, v10

    const/4 v3, 0x1

    const-string v4, "%mms%"

    aput-object v4, v7, v3

    const/4 v3, 0x0

    move-object v11, v3

    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v8, 0x0

    move-object v4, v2

    move-object v6, v9

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    move-object v11, v3

    if-eqz v11, :cond_2

    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v11, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    const-string v3, "SimStatus"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ACG MMSC server : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    if-eqz v11, :cond_4

    :goto_1
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_0
    move-exception v3

    goto :goto_2

    :catch_0
    move-exception v3

    :try_start_1
    const-string v4, "SimStatus"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SQL Exception : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v11, :cond_4

    goto :goto_1

    :goto_2
    if-eqz v11, :cond_3

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v3

    :cond_4
    :goto_3
    nop

    :goto_4
    if-eqz v0, :cond_5

    const-string v1, "mmsc_server_acg"

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method private updateNetworkProvider(Landroid/telephony/ServiceState;)V
    .locals 2

    const-string v0, "operator_name"

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->getOperatorName(Landroid/telephony/ServiceState;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private updateNetworkType()V
    .locals 13

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5, v2}, Landroid/telephony/TelephonyManager;->getDataNetworkType(I)I

    move-result v5

    iget-object v6, p0, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v6, v2}, Landroid/telephony/TelephonyManager;->getVoiceNetworkType(I)I

    move-result v6

    iget-object v7, p0, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const-string v7, "gsm.network.type"

    iget-object v8, p0, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->mContext:Landroid/content/Context;

    const v9, 0x7f1206ca

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v7, v8}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "SimStatus"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "updateNetworkType() => networkType : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v4}, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->getIndianOperator(I)Lcom/samsung/android/settings/deviceinfo/status/SimStatus$IndianOperators;

    move-result-object v8

    iput-object v8, p0, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->mIndianOperator:Lcom/samsung/android/settings/deviceinfo/status/SimStatus$IndianOperators;

    const-string v8, "SimStatus"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Slot="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " Operator="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p0, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->mIndianOperator:Lcom/samsung/android/settings/deviceinfo/status/SimStatus$IndianOperators;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/settings/Utils;->isChinaCTCModel()Z

    move-result v8

    if-eqz v8, :cond_10

    iget-object v8, p0, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const-string v8, "gsm.voice.network.type"

    iget-object v10, p0, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v8, v10}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v10, "Unknown"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const-string v10, "Unknown"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    move-object v7, v8

    const-string v10, "SimStatus"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Replace networkType with voiceNetworkType: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v10, "CDMA-IS95A"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_e

    const-string v10, "CDMA-IS95B"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    goto/16 :goto_1

    :cond_1
    const-string v10, "EvDo-rev.0"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    const-string v7, "CDMA EVDO"

    goto/16 :goto_2

    :cond_2
    const-string v10, "EvDo-rev.A"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    const-string v7, "CDMA EVDO"

    goto/16 :goto_2

    :cond_3
    const-string v10, "EvDo-rev.B"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    const-string v7, "CDMA EVDO"

    goto/16 :goto_2

    :cond_4
    const-string v10, "1xRTT"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    const-string v7, "CDMA 1x"

    goto/16 :goto_2

    :cond_5
    const-string v10, "UMTS"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    const-string v7, "WCDMA"

    goto/16 :goto_2

    :cond_6
    const-string v10, "HSDPA"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_d

    const-string v10, "HSUPA"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_d

    const-string v10, "HSPA"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    goto :goto_0

    :cond_7
    const-string v10, "HSPAP"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    const-string v7, "HSPA+"

    goto :goto_2

    :cond_8
    const-string v10, "eHRPD"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    const-string v7, "eHRPD"

    goto :goto_2

    :cond_9
    const-string v10, "LTE"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    const-string v7, "LTE"

    goto :goto_2

    :cond_a
    const-string v10, "GPRS"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_f

    const-string v10, "EDGE"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_f

    const-string v10, "GSM"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    goto :goto_2

    :cond_b
    const-string v10, "TD-SCDMA"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    const-string v7, "TD-SCDMA"

    goto :goto_2

    :cond_c
    iget-object v10, p0, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    :cond_d
    :goto_0
    const-string v7, "HSPA"

    goto :goto_2

    :cond_e
    :goto_1
    const-string v7, "CDMA 1x"

    :cond_f
    :goto_2
    const-string v10, "SimStatus"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "updateNetworkType() isChinaCTCModel => changed networkType : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v7

    move-object v1, v8

    goto/16 :goto_4

    :cond_10
    if-eqz v5, :cond_12

    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->getCurrentServiceState()Landroid/telephony/ServiceState;

    move-result-object v8

    const-string v10, "SimStatus"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "updateNetworkType() => getOptionalRadioTech : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Landroid/telephony/ServiceState;->getOptionalRadioTech()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v10, "HSPAP"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_11

    invoke-virtual {v8}, Landroid/telephony/ServiceState;->getOptionalRadioTech()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_11

    iget-object v10, p0, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->mIndianOperator:Lcom/samsung/android/settings/deviceinfo/status/SimStatus$IndianOperators;

    sget-object v11, Lcom/samsung/android/settings/deviceinfo/status/SimStatus$IndianOperators;->AIRTEL:Lcom/samsung/android/settings/deviceinfo/status/SimStatus$IndianOperators;

    if-ne v10, v11, :cond_11

    const-string v0, "DC"

    goto :goto_3

    :cond_11
    iget-object v10, p0, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-static {v5}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v0

    :goto_3
    const-string v10, "SimStatus"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "updateNetworkType() => actualDataNetworkType / dataNetworkTypeName = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " / "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    if-eqz v6, :cond_13

    iget-object v8, p0, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-static {v6}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v1

    const-string v8, "SimStatus"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "updateNetworkType() => actualVoiceNetworkType / voiceNetworkTypeName = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " / "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    const-string v8, "VZW"

    sget-object v10, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_17

    const-string v8, "false"

    const-string v10, "ro.ril.svlte1x"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_16

    iget-object v8, p0, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v8, v2}, Landroid/telephony/TelephonyManager;->getDataState(I)I

    move-result v8

    const/4 v10, 0x3

    if-ne v8, v10, :cond_16

    const-string v8, "LTE"

    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_14

    const-string v8, "LTE"

    invoke-virtual {v8, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_16

    :cond_14
    const-string v8, "LTE"

    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_15

    const-string v0, "1x RTT"

    :cond_15
    const-string v8, "LTE"

    invoke-virtual {v8, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_16

    const-string v1, "1x RTT"

    :cond_16
    const-string v8, "SimStatus"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "updateNetworkType() => VZW svlte1x : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_17
    const-string v8, "OMN"

    sget-object v10, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_18

    const-string v8, "O2U"

    sget-object v10, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_18

    const-string v8, "XEC"

    sget-object v10, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_18

    const-string v8, "EVR"

    sget-object v10, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_18

    const-string v8, "DCM"

    sget-object v10, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1b

    :cond_18
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_19

    const-string v8, "LTE"

    const-string v10, "4G"

    invoke-virtual {v0, v8, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_19
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1a

    const-string v8, "LTE"

    const-string v10, "4G"

    invoke-virtual {v1, v8, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    :cond_1a
    const-string v8, "SimStatus"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "updateNetworkType() => 4G(EUR) : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b
    :goto_4
    const-string v8, "SimStatus"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "updateNetworkType() => networkType name old: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1c

    const-string v8, "Unknown"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1d

    :cond_1c
    iget-object v8, p0, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_1d
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1e

    const-string v8, "Unknown"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1f

    :cond_1e
    iget-object v8, p0, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_1f
    const-string/jumbo v8, "voice_network_type"

    invoke-direct {p0, v8, v1}, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "data_network_type"

    invoke-direct {p0, v8, v0}, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private updateRoamingStatus(Landroid/telephony/ServiceState;)V
    .locals 3

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Common_UseChameleon"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils;->isSupportChameleonRoaming()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils;->isNetworkRoamingState(Landroid/content/Context;Landroid/telephony/ServiceState;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "roaming_state"

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f121166

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "roaming_state"

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f121167

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private updateServiceState(Landroid/telephony/ServiceState;)V
    .locals 3

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->resetSignalStrength()V

    :cond_1
    packed-switch v0, :pswitch_data_0

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f12116c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :pswitch_0
    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f12116a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f12116b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f121169

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    nop

    :goto_0
    nop

    const-string v2, "service_state"

    invoke-direct {p0, v2, v1}, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateSignalStrength(Landroid/telephony/SignalStrength;)V
    .locals 17

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->getCurrentServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    const/4 v2, 0x1

    if-eq v2, v1, :cond_f

    const/4 v3, 0x2

    if-eq v3, v1, :cond_f

    const/4 v4, 0x3

    if-ne v4, v1, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->getDbm(Landroid/telephony/SignalStrength;)I

    move-result v4

    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->getAsuLevel(Landroid/telephony/SignalStrength;)I

    move-result v5

    iget-object v6, v0, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v6}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v6

    iget-object v7, v0, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v7}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v7

    invoke-static {v6}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v8

    const-string v9, "ro.baseband"

    const-string v10, ""

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "SimStatus"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[SimStatus] id : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " baseband : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " D/A : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " state : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isChinaCTCModel()Z

    move-result v10

    if-eqz v10, :cond_4

    if-nez v7, :cond_1

    const-string v10, "gsm.sim.selectnetwork"

    const-string v11, "CDMA"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "CDMA"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Landroid/telephony/SignalStrength;->getCdmaAsuLevel()I

    move-result v5

    const-string v10, "SimStatus"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[SimStatus] CTC CDMA D/A : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    if-nez v7, :cond_2

    const-string v10, "gsm.sim.selectnetwork"

    const-string v11, "CDMA"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "CDMA"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    :cond_2
    if-ne v7, v2, :cond_4

    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/SignalStrength;->getGsmDbm()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Landroid/telephony/SignalStrength;->getGsmAsuLevel()I

    move-result v5

    const-string v10, "SimStatus"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[SimStatus] CTC GSM D/A : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_0
    const/4 v10, -0x1

    if-ne v4, v10, :cond_5

    const/4 v4, 0x0

    :cond_5
    if-ne v5, v10, :cond_6

    const/4 v5, 0x0

    :cond_6
    const/16 v11, 0xff

    const/16 v12, 0x63

    if-eqz v9, :cond_9

    const-string v13, "msm"

    invoke-virtual {v9, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_7

    const-string v13, "mdm"

    invoke-virtual {v9, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_9

    :cond_7
    const-string v13, "SimStatus"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[SimStatus] baseband : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v10, v5, :cond_8

    if-eq v12, v5, :cond_8

    if-ne v11, v5, :cond_d

    :cond_8
    const/16 v4, -0x71

    const/4 v5, 0x0

    goto/16 :goto_2

    :cond_9
    iget-object v13, v0, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const-string v13, "gsm.network.type"

    iget-object v14, v0, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->mRes:Landroid/content/res/Resources;

    const v15, 0x7f1206ca

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v8, v13, v14}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "SimStatus"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[SimStatus] networkType("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v14, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v0, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2, v6}, Landroid/telephony/TelephonyManager;->getDataNetworkType(I)I

    move-result v2

    iget-object v3, v0, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3, v6}, Landroid/telephony/TelephonyManager;->getVoiceNetworkType(I)I

    move-result v3

    if-eqz v2, :cond_a

    iget-object v14, v0, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-static {v2}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v13

    const-string v14, "SimStatus"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[SimStatus] networkType data("

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ") : "

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v14, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_a
    if-eqz v3, :cond_b

    iget-object v11, v0, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-static {v3}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v13

    const-string v11, "SimStatus"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[SimStatus] networkType voice("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ") : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v11, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    :goto_1
    if-eq v10, v5, :cond_c

    if-eq v12, v5, :cond_c

    const/16 v10, 0xff

    if-eq v10, v5, :cond_c

    iget-object v10, v0, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->mRes:Landroid/content/res/Resources;

    const v11, 0x7f1206ca

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_c

    const-string v10, "Unknown"

    invoke-virtual {v13, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_d

    :cond_c
    const/16 v4, -0x71

    const/4 v5, 0x0

    :cond_d
    :goto_2
    const-string v2, "SimStatus"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[SimStatus] updateSignalStrength : "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v0, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->mRes:Landroid/content/res/Resources;

    const v11, 0x7f12115c

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "   "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v0, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->mRes:Landroid/content/res/Resources;

    const v11, 0x7f12115a

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "signal_strength"

    iget-object v3, v0, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->mRes:Landroid/content/res/Resources;

    const v10, 0x7f12182a

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v13, 0x1

    aput-object v12, v11, v13

    invoke-virtual {v3, v10, v11}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils;->supportSignalStrength()Z

    move-result v2

    if-nez v2, :cond_e

    const-string/jumbo v2, "signal_strength"

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->removePreference(Ljava/lang/String;)Z

    :cond_e
    return-void

    :cond_f
    :goto_3
    const-string v2, "SimStatus"

    const-string v3, "[SimStatus] out of service"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->resetSignalStrength()V

    invoke-static {}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils;->supportSignalStrength()Z

    move-result v2

    if-nez v2, :cond_10

    const-string/jumbo v2, "signal_strength"

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->removePreference(Ljava/lang/String;)Z

    :cond_10
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x2b

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f1500b4

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->mContext:Landroid/content/Context;

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const-string v0, "euicc"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/euicc/EuiccManager;

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->mEuiccManager:Landroid/telephony/euicc/EuiccManager;

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->mRes:Landroid/content/res/Resources;

    invoke-static {}, Lcom/samsung/android/settings/Rune;->getSalesCode()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->sSalesCode:Ljava/lang/String;

    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->getPhoneSubscriptionInfos()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->mSelectableSubInfos:Ljava/util/List;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->mSelectableSubInfos:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iput-object v1, p0, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->mSelectableSubInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->mSelectableSubInfos:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    nop

    :cond_1
    iput-object v1, p0, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->mSelectableSubInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_3

    const v0, 0x7f0d016a

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a05db

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-static {p2, v0, v1, v2}, Lcom/android/settings/Utils;->prepareCustomPreferencesList(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Z)V

    invoke-super {p0, p1, v1, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const/16 v4, 0xc

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->semSetRoundedCorners(I)V

    nop

    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0601b1

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewGroup;->semSetRoundedCornerColor(II)V

    const v4, 0x1020012

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TabHost;

    iput-object v4, p0, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->mTabHost:Landroid/widget/TabHost;

    iget-object v4, p0, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v4}, Landroid/widget/TabHost;->setup()V

    iget-object v4, p0, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->mTabHost:Landroid/widget/TabHost;

    iget-object v5, p0, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->mTabListener:Landroid/widget/TabHost$OnTabChangeListener;

    invoke-virtual {v4, v5}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    iget-object v4, p0, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v4}, Landroid/widget/TabHost;->clearAllTabs()V

    iget-object v4, p0, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->mSelectableSubInfos:Ljava/util/List;

    new-instance v5, Lcom/samsung/android/settings/deviceinfo/status/SimStatus$7;

    invoke-direct {v5, p0}, Lcom/samsung/android/settings/deviceinfo/status/SimStatus$7;-><init>(Lcom/samsung/android/settings/deviceinfo/status/SimStatus;)V

    invoke-interface {v4, v5}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    move v4, v2

    :goto_0
    iget-object v5, p0, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->mSelectableSubInfos:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    iget-object v5, p0, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->mTabHost:Landroid/widget/TabHost;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->mSelectableSubInfos:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v7}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->buildTabSpec(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    iget-object v5, p0, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v5}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v5

    const v6, 0x1020006

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->mContext:Landroid/content/Context;

    invoke-static {v6, v4}, Lcom/android/settings/Utils;->getSimIcon(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v6, p0, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    const/high16 v7, 0x40800000    # 4.0f

    mul-float/2addr v7, v6

    float-to-int v7, v7

    invoke-virtual {v5, v7, v2, v7, v2}, Landroid/widget/ImageView;->setPaddingRelative(IIII)V

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v8, p0, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v8}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v8

    const v9, 0x1020016

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setAllCaps(Z)V

    invoke-direct {p0, v4}, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->getSimName(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setVisibility(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->setTabHeight()V

    return-object v0

    :cond_3
    :goto_1
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onPause()V
    .locals 3

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    iget-boolean v0, p0, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->mShowLatestAreaInfo:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->mAreaInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->mSimHotSwapReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    if-eqz v0, :cond_2

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->setRssiNoti(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    invoke-virtual {v0}, Lcom/samsung/android/sec_platform_library/FactoryPhone;->disconnectFromRilService()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    :cond_2
    return-void
.end method

.method public onResume()V
    .locals 5

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->setRssiNoti(I)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x141

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    iget-boolean v0, p0, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->mShowLatestAreaInfo:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->mAreaInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.android.cellbroadcastreceiver.CB_AREA_INFO_RECEIVED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v3, "android.permission.RECEIVE_EMERGENCY_BROADCAST"

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.cellbroadcastreceiver.GET_LATEST_CB_AREA_INFO"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.android.cellbroadcastreceiver"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v3, "android.permission.RECEIVE_EMERGENCY_BROADCAST"

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->mSimHotSwapReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.samsung.intent.action.SIMHOTSWAP"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->initialize()V

    return-void
.end method

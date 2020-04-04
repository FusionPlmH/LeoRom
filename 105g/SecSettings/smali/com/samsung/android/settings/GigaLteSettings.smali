.class public Lcom/samsung/android/settings/GigaLteSettings;
.super Landroid/app/Fragment;
.source "GigaLteSettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/GigaLteSettings$MptcpStateReceiver;,
        Lcom/samsung/android/settings/GigaLteSettings$HotSwapReceiver;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private isMobileDataEnabling:Z

.field private isNetworkEnabling:Z

.field private isWiFiEnabling:Z

.field private mAirplaneModeObserver:Landroid/database/ContentObserver;

.field private mAlertDialog:Landroid/app/AlertDialog$Builder;

.field private mContext:Landroid/content/Context;

.field private mHoldingHandler:Landroid/os/Handler;

.field private mHotSwapReceiver:Lcom/samsung/android/settings/GigaLteSettings$HotSwapReceiver;

.field private mIsKTtestOnly:Z

.field private mIsSupport5G:Z

.field private mMobileDataObserver:Landroid/database/ContentObserver;

.field private mMptcpStateReceiver:Lcom/samsung/android/settings/GigaLteSettings$MptcpStateReceiver;

.field private mRemoveProgress:Ljava/lang/Runnable;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private progressDialog:Landroid/app/ProgressDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/settings/GigaLteSettings$40;

    invoke-direct {v0}, Lcom/samsung/android/settings/GigaLteSettings$40;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/GigaLteSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->mIsSupport5G:Z

    new-instance v0, Lcom/samsung/android/settings/GigaLteSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/GigaLteSettings$1;-><init>(Lcom/samsung/android/settings/GigaLteSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/GigaLteSettings$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/GigaLteSettings$2;-><init>(Lcom/samsung/android/settings/GigaLteSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->mMobileDataObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/GigaLteSettings;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/GigaLteSettings;->isRoaming()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/samsung/android/settings/GigaLteSettings;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/GigaLteSettings;->isSimValid()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/samsung/android/settings/GigaLteSettings;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->progressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/samsung/android/settings/GigaLteSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/GigaLteSettings;->checkSwitchDisableStatus()V

    return-void
.end method

.method static synthetic access$1200(Lcom/samsung/android/settings/GigaLteSettings;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->mRemoveProgress:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/samsung/android/settings/GigaLteSettings;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->mHoldingHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/samsung/android/settings/GigaLteSettings;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/GigaLteSettings;->getWiFiState(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/samsung/android/settings/GigaLteSettings;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/settings/GigaLteSettings;)Lcom/android/settings/widget/SwitchBar;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/settings/GigaLteSettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->isNetworkEnabling:Z

    return v0
.end method

.method static synthetic access$402(Lcom/samsung/android/settings/GigaLteSettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/GigaLteSettings;->isNetworkEnabling:Z

    return p1
.end method

.method static synthetic access$500(Lcom/samsung/android/settings/GigaLteSettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->isMobileDataEnabling:Z

    return v0
.end method

.method static synthetic access$502(Lcom/samsung/android/settings/GigaLteSettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/GigaLteSettings;->isMobileDataEnabling:Z

    return p1
.end method

.method static synthetic access$600(Lcom/samsung/android/settings/GigaLteSettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->isWiFiEnabling:Z

    return v0
.end method

.method static synthetic access$602(Lcom/samsung/android/settings/GigaLteSettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/GigaLteSettings;->isWiFiEnabling:Z

    return p1
.end method

.method static synthetic access$700(Lcom/samsung/android/settings/GigaLteSettings;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/GigaLteSettings;->sendMptcpStartBroadCast(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/samsung/android/settings/GigaLteSettings;)Landroid/telephony/TelephonyManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$900(Lcom/samsung/android/settings/GigaLteSettings;)Landroid/net/wifi/WifiManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method private checkSwitchDisableStatus()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    invoke-direct {p0}, Lcom/samsung/android/settings/GigaLteSettings;->isRoaming()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/ConnectionsUtils;->isAirplaneModeEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/GigaLteSettings;->isSimValid()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    :cond_1
    return-void
.end method

.method private getChangedText(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->mContext:Landroid/content/Context;

    const v1, 0x7f121fc6

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/GigaLteSettings;->mContext:Landroid/content/Context;

    const v2, 0x7f121f7c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getWiFiState(I)Z
    .locals 1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private isRoaming()Z
    .locals 9

    iget-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/ConnectionsUtils;->isRoaming(Landroid/content/Context;)Z

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/GigaLteSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/ConnectionsUtils;->isAisSIMValid(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    const-string v2, "GigaLteSettings"

    const-string v3, "isRoaming() isAisSIMValid now and isRoaming"

    invoke-static {v2, v3}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/settings/GigaLteSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    const/4 v3, 0x0

    move v4, v1

    move v1, v3

    :goto_0
    if-ge v1, v2, :cond_1

    iget-object v5, p0, Lcom/samsung/android/settings/GigaLteSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v6

    aget v6, v6, v3

    invoke-virtual {v5, v6}, Landroid/telephony/TelephonyManager;->getNetworkOperator(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "52015"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "GigaLteSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isRoaming() current networkId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v4

    :cond_2
    return v0
.end method

.method private isSKTSimValid()Z
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/samsung/android/settings/GigaLteSettings;->isSimPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/GigaLteSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "45005"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isSimPresent()Z
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/GigaLteSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Lcom/samsung/android/settings/GigaLteSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3, v2}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    const/4 v0, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private isSimValid()Z
    .locals 3

    const/4 v0, 0x0

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isDomesticSKTModel()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/GigaLteSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/ConnectionsUtils;->isFastWebSIMValid(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/GigaLteSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/ConnectionsUtils;->isAveaSIMValid(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/GigaLteSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/ConnectionsUtils;->isVodafoneSIMValid(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/GigaLteSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/ConnectionsUtils;->isAisSIMValid(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/GigaLteSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/ConnectionsUtils;->isEnabledDataWithAisSIM(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/GigaLteSettings;->isSimPresent()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/GigaLteSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isDomesticKTTModel()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "45008"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "45002"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0

    :cond_3
    :goto_0
    const/4 v1, 0x1

    return v1
.end method

.method private registerReceivers()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->mMptcpStateReceiver:Lcom/samsung/android/settings/GigaLteSettings$MptcpStateReceiver;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/settings/GigaLteSettings$MptcpStateReceiver;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/GigaLteSettings$MptcpStateReceiver;-><init>(Lcom/samsung/android/settings/GigaLteSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->mMptcpStateReceiver:Lcom/samsung/android/settings/GigaLteSettings$MptcpStateReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.samsung.android.mptcp.MPTCP_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/GigaLteSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/GigaLteSettings;->mMptcpStateReceiver:Lcom/samsung/android/settings/GigaLteSettings$MptcpStateReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->mHotSwapReceiver:Lcom/samsung/android/settings/GigaLteSettings$HotSwapReceiver;

    if-nez v0, :cond_1

    new-instance v0, Lcom/samsung/android/settings/GigaLteSettings$HotSwapReceiver;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/GigaLteSettings$HotSwapReceiver;-><init>(Lcom/samsung/android/settings/GigaLteSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->mHotSwapReceiver:Lcom/samsung/android/settings/GigaLteSettings$HotSwapReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.samsung.intent.action.SIMHOTSWAP"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/GigaLteSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/GigaLteSettings;->mHotSwapReceiver:Lcom/samsung/android/settings/GigaLteSettings$HotSwapReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_1
    return-void
.end method

.method private sendMptcpStartBroadCast(Z)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.android.mptcp.MPTCP_START"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "mptcp_start"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "GigaLteSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sending MPTCP Start Stop broadcast to MPTCP Service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/settings/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/GigaLteSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isDomesticSKTModel()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/GigaLteSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "wifi_watchdog_poor_network_test_enabled"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    return-void
.end method

.method private unRegisterReceivers()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->mMptcpStateReceiver:Lcom/samsung/android/settings/GigaLteSettings$MptcpStateReceiver;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/GigaLteSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/settings/GigaLteSettings;->mMptcpStateReceiver:Lcom/samsung/android/settings/GigaLteSettings$MptcpStateReceiver;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v1, p0, Lcom/samsung/android/settings/GigaLteSettings;->mMptcpStateReceiver:Lcom/samsung/android/settings/GigaLteSettings$MptcpStateReceiver;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->mHotSwapReceiver:Lcom/samsung/android/settings/GigaLteSettings$HotSwapReceiver;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/GigaLteSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/settings/GigaLteSettings;->mHotSwapReceiver:Lcom/samsung/android/settings/GigaLteSettings$HotSwapReceiver;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v1, p0, Lcom/samsung/android/settings/GigaLteSettings;->mHotSwapReceiver:Lcom/samsung/android/settings/GigaLteSettings$HotSwapReceiver;

    :cond_1
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/GigaLteSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/GigaLteSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v1, p0, Lcom/samsung/android/settings/GigaLteSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->show()V

    iget-object v1, p0, Lcom/samsung/android/settings/GigaLteSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v2, p0, Lcom/samsung/android/settings/GigaLteSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "mptcp_value"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    nop

    :cond_0
    invoke-virtual {v1, v4}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/GigaLteSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/GigaLteSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/ConnectionsUtils;->isSupport5GConcept(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->mIsSupport5G:Z

    iget-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    const-string v0, "persist.mptcp.limitation"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->mIsKTtestOnly:Z

    const-string v0, "GigaLteSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Is Test mode for KTT = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/settings/GigaLteSettings;->mIsKTtestOnly:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "mptcp"

    const-string v1, "gigaltesettings create"

    invoke-static {v0, v1}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isDomesticSKTModel()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/ConnectionsUtils;->isAveaSIMValid(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/ConnectionsUtils;->isVodafoneSIMValid(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->mIsKTtestOnly:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/ConnectionsUtils;->isAisSIMValid(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/ConnectionsUtils;->isFastWebSIMValid(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isDomesticKTTModel()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/samsung/android/settings/GigaLteSettings;->isSimPresent()Z

    move-result v0

    const/4 v1, 0x0

    const v2, 0x104000a

    const v3, 0x7f120ad3

    const v4, 0x7f120ac5

    if-nez v0, :cond_2

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/GigaLteSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    iget-boolean v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->mIsSupport5G:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    const v3, 0x7f120ad1

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_2

    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/settings/GigaLteSettings;->isSimValid()Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/GigaLteSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    iget-boolean v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->mIsSupport5G:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    const v3, 0x7f120abf

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    const v3, 0x7f120ad0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    :goto_1
    iget-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :cond_4
    :goto_2
    return-void

    :cond_5
    :goto_3
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    const v0, 0x7f0d011e

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0061

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isDomesticKTTModel()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/samsung/android/settings/GigaLteSettings;->mIsSupport5G:Z

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f120ab8

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/GigaLteSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v4, 0x7f120ab9

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/GigaLteSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v4, 0x7f120aba

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/GigaLteSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_0
    const v3, 0x7f120acc

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isDomesticSKTModel()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Lcom/samsung/android/settings/GigaLteSettings;->mIsSupport5G:Z

    if-eqz v4, :cond_1

    const v3, 0x7f120228

    goto :goto_0

    :cond_1
    const v3, 0x7f120227

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/samsung/android/settings/GigaLteSettings;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/android/settings/ConnectionsUtils;->isAveaSIMValid(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3

    const v3, 0x7f1201f3

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/samsung/android/settings/GigaLteSettings;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/android/settings/ConnectionsUtils;->isVodafoneSIMValid(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_4

    const v3, 0x7f121c06

    goto :goto_0

    :cond_4
    iget-object v4, p0, Lcom/samsung/android/settings/GigaLteSettings;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/android/settings/ConnectionsUtils;->isAisSIMValid(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_5

    const v3, 0x7f1200e0

    goto :goto_0

    :cond_5
    iget-object v4, p0, Lcom/samsung/android/settings/GigaLteSettings;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/android/settings/ConnectionsUtils;->isFastWebSIMValid(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_6

    const v3, 0x7f120990

    :cond_6
    :goto_0
    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/GigaLteSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/samsung/android/settings/GigaLteSettings;->getChangedText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public onDestroyView()V
    .locals 2

    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    iget-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    iget-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->mHoldingHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/settings/GigaLteSettings;->mRemoveProgress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    invoke-direct {p0}, Lcom/samsung/android/settings/GigaLteSettings;->unRegisterReceivers()V

    iget-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/GigaLteSettings;->mMobileDataObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    const-string v0, "mptcp"

    const-string v1, "gigaltesettings resume"

    invoke-static {v0, v1}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/GigaLteSettings;->registerReceivers()V

    iget-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mobile_data"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/GigaLteSettings;->mMobileDataObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isDomesticSKTModel()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/GigaLteSettings;->checkSwitchDisableStatus()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mptcp_value"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    move v2, v3

    nop

    :cond_1
    move v0, v2

    iget-object v1, p0, Lcom/samsung/android/settings/GigaLteSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/GigaLteSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v1

    if-eq v0, v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/GigaLteSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, v0}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/GigaLteSettings;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/GigaLteSettings;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/GigaLteSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v1

    if-ne v0, v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/GigaLteSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, v3}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/GigaLteSettings;->mHoldingHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/samsung/android/settings/GigaLteSettings;->mRemoveProgress:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/samsung/android/settings/GigaLteSettings;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_3
    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 13

    iget-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mptcp_value"

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
    iget-object v3, p0, Lcom/samsung/android/settings/GigaLteSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "urspservice"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/UrspManager;

    if-ne p2, v0, :cond_1

    return-void

    :cond_1
    const/4 v4, 0x2

    const v5, 0x104000a

    const v6, 0x7f121899

    const/high16 v7, 0x1040000

    if-eqz p2, :cond_1a

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isDomesticKTTModel()Z

    move-result v8

    if-eqz v8, :cond_1a

    iget-boolean v8, p0, Lcom/samsung/android/settings/GigaLteSettings;->mIsKTtestOnly:Z

    if-nez v8, :cond_1a

    iget-object v8, p0, Lcom/samsung/android/settings/GigaLteSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "smart_bonding"

    invoke-static {v8, v9, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    const v9, 0x7f120acb

    const v10, 0x7f120ad3

    const v11, 0x7f120ac5

    if-eqz v8, :cond_c

    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/GigaLteSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v4, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    iget-boolean v4, p0, Lcom/samsung/android/settings/GigaLteSettings;->mIsSupport5G:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v4, v11}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v4, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/GigaLteSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/settings/ConnectionsUtils;->isWifiEnabled(Landroid/content/Context;)Z

    move-result v4

    const v8, 0x7f1218b9

    const v10, 0x7f120ac7

    const v11, 0x7f120ac8

    if-nez v4, :cond_6

    iget-object v4, p0, Lcom/samsung/android/settings/GigaLteSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v12, "wifi_watchdog_poor_network_test_enabled"

    invoke-static {v4, v12, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_4

    iget-boolean v4, p0, Lcom/samsung/android/settings/GigaLteSettings;->mIsSupport5G:Z

    if-eqz v4, :cond_3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/GigaLteSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-virtual {p0, v11, v1}, Lcom/samsung/android/settings/GigaLteSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_2
    goto/16 :goto_3

    :cond_3
    const v1, 0x7f120ad8

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/GigaLteSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_4
    iget-boolean v4, p0, Lcom/samsung/android/settings/GigaLteSettings;->mIsSupport5G:Z

    if-eqz v4, :cond_5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    new-array v11, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/GigaLteSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v11, v2

    invoke-virtual {p0, v10, v11}, Lcom/samsung/android/settings/GigaLteSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/GigaLteSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v2

    invoke-virtual {p0, v9, v1}, Lcom/samsung/android/settings/GigaLteSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_5
    const v1, 0x7f120ace

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/GigaLteSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_6
    invoke-virtual {p0}, Lcom/samsung/android/settings/GigaLteSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/settings/ConnectionsUtils;->isMobileNetworkEnabled(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_a

    iget-object v4, p0, Lcom/samsung/android/settings/GigaLteSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v9, "wifi_watchdog_poor_network_test_enabled"

    invoke-static {v4, v9, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_8

    iget-boolean v4, p0, Lcom/samsung/android/settings/GigaLteSettings;->mIsSupport5G:Z

    if-eqz v4, :cond_7

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/GigaLteSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-virtual {p0, v10, v1}, Lcom/samsung/android/settings/GigaLteSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_7
    const v1, 0x7f120ad6

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/GigaLteSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_8
    iget-boolean v4, p0, Lcom/samsung/android/settings/GigaLteSettings;->mIsSupport5G:Z

    if-eqz v4, :cond_9

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    new-array v9, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/GigaLteSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v9, v2

    invoke-virtual {p0, v11, v9}, Lcom/samsung/android/settings/GigaLteSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v6, 0x7f120ac9

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/GigaLteSettings;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v1, v2

    invoke-virtual {p0, v6, v1}, Lcom/samsung/android/settings/GigaLteSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    :cond_9
    const v1, 0x7f120acd

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/GigaLteSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    :cond_a
    iget-boolean v4, p0, Lcom/samsung/android/settings/GigaLteSettings;->mIsSupport5G:Z

    if-eqz v4, :cond_b

    const v4, 0x7f120ac1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/GigaLteSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v2

    invoke-virtual {p0, v4, v1}, Lcom/samsung/android/settings/GigaLteSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    :cond_b
    const v1, 0x7f120ad7

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/GigaLteSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_3
    iget-object v4, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance v6, Lcom/samsung/android/settings/GigaLteSettings$3;

    invoke-direct {v6, p0}, Lcom/samsung/android/settings/GigaLteSettings$3;-><init>(Lcom/samsung/android/settings/GigaLteSettings;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance v5, Lcom/samsung/android/settings/GigaLteSettings$4;

    invoke-direct {v5, p0}, Lcom/samsung/android/settings/GigaLteSettings$4;-><init>(Lcom/samsung/android/settings/GigaLteSettings;)V

    invoke-virtual {v4, v7, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-object v4, v1

    invoke-direct {p0, v4}, Lcom/samsung/android/settings/GigaLteSettings;->getChangedText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v6, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v6, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    :cond_c
    invoke-virtual {p0}, Lcom/samsung/android/settings/GigaLteSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/android/settings/ConnectionsUtils;->isWifiEnabled(Landroid/content/Context;)Z

    move-result v8

    const v12, 0x7f121f85

    if-nez v8, :cond_f

    invoke-virtual {p0}, Lcom/samsung/android/settings/GigaLteSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/android/settings/ConnectionsUtils;->isMobileNetworkEnabled(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_f

    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/GigaLteSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    iget-boolean v4, p0, Lcom/samsung/android/settings/GigaLteSettings;->mIsSupport5G:Z

    if-eqz v4, :cond_d

    iget-object v4, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v4, v11}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    goto :goto_4

    :cond_d
    iget-object v4, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v4, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    :goto_4
    const v4, 0x7f120ad4

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/GigaLteSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/samsung/android/settings/GigaLteSettings;->getChangedText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-boolean v5, p0, Lcom/samsung/android/settings/GigaLteSettings;->mIsSupport5G:Z

    if-eqz v5, :cond_e

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const v6, 0x7f120abe

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/GigaLteSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v6, 0x7f120ac9

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v12}, Lcom/samsung/android/settings/GigaLteSettings;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v1, v2

    invoke-virtual {p0, v6, v1}, Lcom/samsung/android/settings/GigaLteSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_e
    iget-object v1, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    const v5, 0x7f1218a9

    new-instance v6, Lcom/samsung/android/settings/GigaLteSettings$5;

    invoke-direct {v6, p0}, Lcom/samsung/android/settings/GigaLteSettings$5;-><init>(Lcom/samsung/android/settings/GigaLteSettings;)V

    invoke-virtual {v1, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance v5, Lcom/samsung/android/settings/GigaLteSettings$6;

    invoke-direct {v5, p0}, Lcom/samsung/android/settings/GigaLteSettings$6;-><init>(Lcom/samsung/android/settings/GigaLteSettings;)V

    invoke-virtual {v1, v7, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    :cond_f
    invoke-virtual {p0}, Lcom/samsung/android/settings/GigaLteSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/android/settings/ConnectionsUtils;->isWifiEnabled(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_12

    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/GigaLteSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    iget-boolean v4, p0, Lcom/samsung/android/settings/GigaLteSettings;->mIsSupport5G:Z

    if-eqz v4, :cond_10

    iget-object v4, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v4, v11}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    goto :goto_5

    :cond_10
    iget-object v4, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v4, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    :goto_5
    const v4, 0x7f120adb

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/GigaLteSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/samsung/android/settings/GigaLteSettings;->getChangedText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-boolean v5, p0, Lcom/samsung/android/settings/GigaLteSettings;->mIsSupport5G:Z

    if-eqz v5, :cond_11

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const v6, 0x7f120aca

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/GigaLteSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v12}, Lcom/samsung/android/settings/GigaLteSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v2

    invoke-virtual {p0, v9, v1}, Lcom/samsung/android/settings/GigaLteSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_11
    iget-object v1, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    const v5, 0x7f1218a7

    new-instance v6, Lcom/samsung/android/settings/GigaLteSettings$7;

    invoke-direct {v6, p0}, Lcom/samsung/android/settings/GigaLteSettings$7;-><init>(Lcom/samsung/android/settings/GigaLteSettings;)V

    invoke-virtual {v1, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance v5, Lcom/samsung/android/settings/GigaLteSettings$8;

    invoke-direct {v5, p0}, Lcom/samsung/android/settings/GigaLteSettings$8;-><init>(Lcom/samsung/android/settings/GigaLteSettings;)V

    invoke-virtual {v1, v7, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    :cond_12
    invoke-virtual {p0}, Lcom/samsung/android/settings/GigaLteSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/android/settings/ConnectionsUtils;->isMobileNetworkEnabled(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_15

    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/GigaLteSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    iget-boolean v4, p0, Lcom/samsung/android/settings/GigaLteSettings;->mIsSupport5G:Z

    if-eqz v4, :cond_13

    iget-object v4, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v4, v11}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    goto :goto_6

    :cond_13
    iget-object v4, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v4, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    :goto_6
    const v4, 0x7f120acf

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/GigaLteSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/samsung/android/settings/GigaLteSettings;->getChangedText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-boolean v5, p0, Lcom/samsung/android/settings/GigaLteSettings;->mIsSupport5G:Z

    if-eqz v5, :cond_14

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const v6, 0x7f120abc

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/GigaLteSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v6, 0x7f120abd

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v12}, Lcom/samsung/android/settings/GigaLteSettings;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v1, v2

    invoke-virtual {p0, v6, v1}, Lcom/samsung/android/settings/GigaLteSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_14
    iget-object v1, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    const v5, 0x7f1218a0

    new-instance v6, Lcom/samsung/android/settings/GigaLteSettings$9;

    invoke-direct {v6, p0}, Lcom/samsung/android/settings/GigaLteSettings$9;-><init>(Lcom/samsung/android/settings/GigaLteSettings;)V

    invoke-virtual {v1, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance v5, Lcom/samsung/android/settings/GigaLteSettings$10;

    invoke-direct {v5, p0}, Lcom/samsung/android/settings/GigaLteSettings$10;-><init>(Lcom/samsung/android/settings/GigaLteSettings;)V

    invoke-virtual {v1, v7, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    :cond_15
    iget-object v8, p0, Lcom/samsung/android/settings/GigaLteSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "wifi_watchdog_poor_network_test_enabled"

    invoke-static {v8, v9, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-nez v8, :cond_18

    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/GigaLteSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    iget-boolean v4, p0, Lcom/samsung/android/settings/GigaLteSettings;->mIsSupport5G:Z

    if-eqz v4, :cond_16

    iget-object v4, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v4, v11}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    goto :goto_7

    :cond_16
    iget-object v4, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v4, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    :goto_7
    const v4, 0x7f120ad9

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/GigaLteSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-boolean v5, p0, Lcom/samsung/android/settings/GigaLteSettings;->mIsSupport5G:Z

    if-eqz v5, :cond_17

    const v5, 0x7f120ac2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v12}, Lcom/samsung/android/settings/GigaLteSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v2

    invoke-virtual {p0, v5, v1}, Lcom/samsung/android/settings/GigaLteSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    :cond_17
    iget-object v1, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    const v5, 0x7f121438

    new-instance v6, Lcom/samsung/android/settings/GigaLteSettings$11;

    invoke-direct {v6, p0}, Lcom/samsung/android/settings/GigaLteSettings$11;-><init>(Lcom/samsung/android/settings/GigaLteSettings;)V

    invoke-virtual {v1, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance v5, Lcom/samsung/android/settings/GigaLteSettings$12;

    invoke-direct {v5, p0}, Lcom/samsung/android/settings/GigaLteSettings$12;-><init>(Lcom/samsung/android/settings/GigaLteSettings;)V

    invoke-virtual {v1, v7, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    :cond_18
    invoke-virtual {v3, v2}, Landroid/net/UrspManager;->getUrspMode(I)Z

    move-result v8

    if-eqz v8, :cond_1a

    if-eqz p2, :cond_1a

    const-string v5, ""

    iget-object v6, p0, Lcom/samsung/android/settings/GigaLteSettings;->mContext:Landroid/content/Context;

    const v8, 0x7f121415

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/samsung/android/settings/GigaLteSettings;->mContext:Landroid/content/Context;

    const v12, 0x7f120ada

    invoke-virtual {v9, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v2

    iget-object v9, p0, Lcom/samsung/android/settings/GigaLteSettings;->mContext:Landroid/content/Context;

    const v12, 0x7f12141d

    invoke-virtual {v9, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v1

    invoke-virtual {v6, v8, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/samsung/android/settings/GigaLteSettings;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-boolean v5, p0, Lcom/samsung/android/settings/GigaLteSettings;->mIsSupport5G:Z

    if-eqz v5, :cond_19

    invoke-virtual {v4, v11}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    goto :goto_8

    :cond_19
    invoke-virtual {v4, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    :goto_8
    invoke-virtual {v4, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v5, 0x7f121438

    new-instance v6, Lcom/samsung/android/settings/GigaLteSettings$13;

    invoke-direct {v6, p0, v3}, Lcom/samsung/android/settings/GigaLteSettings$13;-><init>(Lcom/samsung/android/settings/GigaLteSettings;Landroid/net/UrspManager;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v5, Lcom/samsung/android/settings/GigaLteSettings$14;

    invoke-direct {v5, p0}, Lcom/samsung/android/settings/GigaLteSettings$14;-><init>(Lcom/samsung/android/settings/GigaLteSettings;)V

    invoke-virtual {v4, v7, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    :cond_1a
    if-eqz p2, :cond_22

    iget-object v8, p0, Lcom/samsung/android/settings/GigaLteSettings;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/samsung/android/settings/ConnectionsUtils;->isAisSIMValid(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_22

    iget-object v8, p0, Lcom/samsung/android/settings/GigaLteSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "smart_bonding"

    invoke-static {v8, v9, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    const v9, 0x7f1200e5

    const v10, 0x7f121fc6

    if-eqz v8, :cond_1f

    new-instance v8, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/GigaLteSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-direct {v8, v11}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/GigaLteSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/android/settings/ConnectionsUtils;->isWifiEnabled(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_1c

    iget-object v8, p0, Lcom/samsung/android/settings/GigaLteSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "wifi_watchdog_poor_network_test_enabled"

    invoke-static {v8, v9, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_1b

    const v4, 0x7f1200e8

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/GigaLteSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v2

    invoke-virtual {p0, v4, v1}, Lcom/samsung/android/settings/GigaLteSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_9
    goto :goto_a

    :cond_1b
    const v8, 0x7f1200e2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/GigaLteSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v2

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/GigaLteSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v1

    invoke-virtual {p0, v8, v4}, Lcom/samsung/android/settings/GigaLteSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_9

    :cond_1c
    invoke-virtual {p0}, Lcom/samsung/android/settings/GigaLteSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/android/settings/ConnectionsUtils;->isMobileNetworkEnabled(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_1e

    iget-object v8, p0, Lcom/samsung/android/settings/GigaLteSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "wifi_watchdog_poor_network_test_enabled"

    invoke-static {v8, v9, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_1d

    const v4, 0x7f1200e6

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/GigaLteSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v2

    invoke-virtual {p0, v4, v1}, Lcom/samsung/android/settings/GigaLteSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_9

    :cond_1d
    const v8, 0x7f1200e1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/GigaLteSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v2

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/GigaLteSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v1

    invoke-virtual {p0, v8, v4}, Lcom/samsung/android/settings/GigaLteSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_9

    :cond_1e
    const v4, 0x7f1200e7

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/GigaLteSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v2

    invoke-virtual {p0, v4, v1}, Lcom/samsung/android/settings/GigaLteSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_a
    iget-object v4, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v4, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance v6, Lcom/samsung/android/settings/GigaLteSettings$15;

    invoke-direct {v6, p0}, Lcom/samsung/android/settings/GigaLteSettings$15;-><init>(Lcom/samsung/android/settings/GigaLteSettings;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance v5, Lcom/samsung/android/settings/GigaLteSettings$16;

    invoke-direct {v5, p0}, Lcom/samsung/android/settings/GigaLteSettings$16;-><init>(Lcom/samsung/android/settings/GigaLteSettings;)V

    invoke-virtual {v4, v7, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    :cond_1f
    invoke-virtual {p0}, Lcom/samsung/android/settings/GigaLteSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/settings/ConnectionsUtils;->isWifiEnabled(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_20

    invoke-virtual {p0}, Lcom/samsung/android/settings/GigaLteSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/settings/ConnectionsUtils;->isMobileNetworkEnabled(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_20

    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/GigaLteSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v4, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v4, 0x7f1200ea

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/GigaLteSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v2

    invoke-virtual {p0, v4, v1}, Lcom/samsung/android/settings/GigaLteSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v4, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    const v5, 0x7f1218a9

    new-instance v6, Lcom/samsung/android/settings/GigaLteSettings$17;

    invoke-direct {v6, p0}, Lcom/samsung/android/settings/GigaLteSettings$17;-><init>(Lcom/samsung/android/settings/GigaLteSettings;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance v5, Lcom/samsung/android/settings/GigaLteSettings$18;

    invoke-direct {v5, p0}, Lcom/samsung/android/settings/GigaLteSettings$18;-><init>(Lcom/samsung/android/settings/GigaLteSettings;)V

    invoke-virtual {v4, v7, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    :cond_20
    invoke-virtual {p0}, Lcom/samsung/android/settings/GigaLteSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/settings/ConnectionsUtils;->isWifiEnabled(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_21

    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/GigaLteSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v4, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v4, 0x7f1200eb

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/GigaLteSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v2

    invoke-virtual {p0, v4, v1}, Lcom/samsung/android/settings/GigaLteSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v4, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    const v5, 0x7f1218a7

    new-instance v6, Lcom/samsung/android/settings/GigaLteSettings$19;

    invoke-direct {v6, p0}, Lcom/samsung/android/settings/GigaLteSettings$19;-><init>(Lcom/samsung/android/settings/GigaLteSettings;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance v5, Lcom/samsung/android/settings/GigaLteSettings$20;

    invoke-direct {v5, p0}, Lcom/samsung/android/settings/GigaLteSettings$20;-><init>(Lcom/samsung/android/settings/GigaLteSettings;)V

    invoke-virtual {v4, v7, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    :cond_21
    invoke-virtual {p0}, Lcom/samsung/android/settings/GigaLteSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/settings/ConnectionsUtils;->isMobileNetworkEnabled(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_22

    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/GigaLteSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v4, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v4, 0x7f1200e3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/GigaLteSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v2

    invoke-virtual {p0, v4, v1}, Lcom/samsung/android/settings/GigaLteSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v4, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    const v5, 0x7f1218a0

    new-instance v6, Lcom/samsung/android/settings/GigaLteSettings$21;

    invoke-direct {v6, p0}, Lcom/samsung/android/settings/GigaLteSettings$21;-><init>(Lcom/samsung/android/settings/GigaLteSettings;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance v5, Lcom/samsung/android/settings/GigaLteSettings$22;

    invoke-direct {v5, p0}, Lcom/samsung/android/settings/GigaLteSettings$22;-><init>(Lcom/samsung/android/settings/GigaLteSettings;)V

    invoke-virtual {v4, v7, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    :cond_22
    if-eqz p2, :cond_2f

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isDomesticSKTModel()Z

    move-result v1

    if-eqz v1, :cond_2f

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/GigaLteSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    iget-boolean v1, p0, Lcom/samsung/android/settings/GigaLteSettings;->mIsSupport5G:Z

    if-eqz v1, :cond_23

    iget-object v1, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    const v4, 0x7f12022f

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    goto :goto_b

    :cond_23
    iget-object v1, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    const v4, 0x7f12022e

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    :goto_b
    invoke-direct {p0}, Lcom/samsung/android/settings/GigaLteSettings;->isSimPresent()Z

    move-result v1

    if-nez v1, :cond_24

    iget-object v1, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    const v4, 0x7f120229

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance v4, Lcom/samsung/android/settings/GigaLteSettings$23;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/GigaLteSettings$23;-><init>(Lcom/samsung/android/settings/GigaLteSettings;)V

    invoke-virtual {v1, v5, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_12

    :cond_24
    invoke-direct {p0}, Lcom/samsung/android/settings/GigaLteSettings;->isSKTSimValid()Z

    move-result v1

    if-nez v1, :cond_25

    iget-object v1, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    const v4, 0x7f12022a

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance v4, Lcom/samsung/android/settings/GigaLteSettings$24;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/GigaLteSettings$24;-><init>(Lcom/samsung/android/settings/GigaLteSettings;)V

    invoke-virtual {v1, v5, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_12

    :cond_25
    iget-object v1, p0, Lcom/samsung/android/settings/GigaLteSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/ConnectionsUtils;->isRoaming(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2d

    iget-object v1, p0, Lcom/samsung/android/settings/GigaLteSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/ConnectionsUtils;->isAirplaneModeEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_26

    goto/16 :goto_10

    :cond_26
    iget-object v1, p0, Lcom/samsung/android/settings/GigaLteSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "smart_bonding"

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_28

    iget-boolean v1, p0, Lcom/samsung/android/settings/GigaLteSettings;->mIsSupport5G:Z

    if-eqz v1, :cond_27

    iget-object v1, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    const v4, 0x7f120b7c

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_c

    :cond_27
    iget-object v1, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    const v4, 0x7f12022d

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    :goto_c
    iget-object v1, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance v4, Lcom/samsung/android/settings/GigaLteSettings$26;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/GigaLteSettings$26;-><init>(Lcom/samsung/android/settings/GigaLteSettings;)V

    invoke-virtual {v1, v5, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance v4, Lcom/samsung/android/settings/GigaLteSettings$27;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/GigaLteSettings$27;-><init>(Lcom/samsung/android/settings/GigaLteSettings;)V

    invoke-virtual {v1, v7, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_12

    :cond_28
    invoke-virtual {p0}, Lcom/samsung/android/settings/GigaLteSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/ConnectionsUtils;->isWifiEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-virtual {p0}, Lcom/samsung/android/settings/GigaLteSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/ConnectionsUtils;->isMobileNetworkEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_29

    goto :goto_e

    :cond_29
    iget-boolean v1, p0, Lcom/samsung/android/settings/GigaLteSettings;->mIsSupport5G:Z

    if-eqz v1, :cond_2a

    iget-object v1, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    const v4, 0x7f120b7b

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_d

    :cond_2a
    iget-object v1, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    const v4, 0x7f12022c

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    :goto_d
    iget-object v1, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance v4, Lcom/samsung/android/settings/GigaLteSettings$30;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/GigaLteSettings$30;-><init>(Lcom/samsung/android/settings/GigaLteSettings;)V

    invoke-virtual {v1, v5, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance v4, Lcom/samsung/android/settings/GigaLteSettings$31;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/GigaLteSettings$31;-><init>(Lcom/samsung/android/settings/GigaLteSettings;)V

    invoke-virtual {v1, v7, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    goto :goto_12

    :cond_2b
    :goto_e
    iget-boolean v1, p0, Lcom/samsung/android/settings/GigaLteSettings;->mIsSupport5G:Z

    if-eqz v1, :cond_2c

    iget-object v1, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    const v4, 0x7f120b79

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_f

    :cond_2c
    iget-object v1, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    const v4, 0x7f120231

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    :goto_f
    iget-object v1, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance v4, Lcom/samsung/android/settings/GigaLteSettings$28;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/GigaLteSettings$28;-><init>(Lcom/samsung/android/settings/GigaLteSettings;)V

    invoke-virtual {v1, v5, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance v4, Lcom/samsung/android/settings/GigaLteSettings$29;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/GigaLteSettings$29;-><init>(Lcom/samsung/android/settings/GigaLteSettings;)V

    invoke-virtual {v1, v7, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    goto :goto_12

    :cond_2d
    :goto_10
    iget-boolean v1, p0, Lcom/samsung/android/settings/GigaLteSettings;->mIsSupport5G:Z

    if-eqz v1, :cond_2e

    iget-object v1, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    const v4, 0x7f120b7d

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_11

    :cond_2e
    iget-object v1, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    const v4, 0x7f120230

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    :goto_11
    iget-object v1, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance v4, Lcom/samsung/android/settings/GigaLteSettings$25;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/GigaLteSettings$25;-><init>(Lcom/samsung/android/settings/GigaLteSettings;)V

    invoke-virtual {v1, v5, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    :goto_12
    iget-object v1, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    :cond_2f
    if-eqz p2, :cond_37

    iget-object v1, p0, Lcom/samsung/android/settings/GigaLteSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/ConnectionsUtils;->isAveaSIMValid(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_30

    iget-object v1, p0, Lcom/samsung/android/settings/GigaLteSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/ConnectionsUtils;->isVodafoneSIMValid(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_37

    :cond_30
    const/4 v1, 0x0

    iget-object v4, p0, Lcom/samsung/android/settings/GigaLteSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v4, :cond_32

    iget-object v4, p0, Lcom/samsung/android/settings/GigaLteSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    if-eqz v1, :cond_31

    const-string v4, "GigaLteSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Connected Wi-Fi SSID = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    :cond_31
    const-string v4, "GigaLteSettings"

    const-string v6, "Connected Wi-Fi SSID = null"

    invoke-static {v4, v6}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_32
    :goto_13
    iget-object v4, p0, Lcom/samsung/android/settings/GigaLteSettings;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/android/settings/ConnectionsUtils;->isAveaSIMValid(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_33

    const v4, 0x7f121a13

    const v6, 0x7f121a12

    const v7, 0x7f1201f6

    const v8, 0x7f1201f5

    const v9, 0x7f1201f7

    const v10, 0x7f1201f4

    goto :goto_14

    :cond_33
    const v4, 0x7f121a13

    const v6, 0x7f121a12

    const v7, 0x7f121c0a

    const v8, 0x7f121c08

    const v9, 0x7f121c0b

    const v10, 0x7f121c07

    :goto_14
    new-instance v11, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/GigaLteSettings;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-direct {v11, v12}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v11, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    iget-object v11, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v11, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/GigaLteSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-static {v11}, Lcom/samsung/android/settings/ConnectionsUtils;->isWifiEnabled(Landroid/content/Context;)Z

    move-result v11

    if-nez v11, :cond_34

    invoke-virtual {p0}, Lcom/samsung/android/settings/GigaLteSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-static {v11}, Lcom/samsung/android/settings/ConnectionsUtils;->isMobileNetworkEnabled(Landroid/content/Context;)Z

    move-result v11

    if-nez v11, :cond_34

    iget-object v5, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v5, v8}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance v11, Lcom/samsung/android/settings/GigaLteSettings$32;

    invoke-direct {v11, p0}, Lcom/samsung/android/settings/GigaLteSettings$32;-><init>(Lcom/samsung/android/settings/GigaLteSettings;)V

    invoke-virtual {v5, v4, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance v11, Lcom/samsung/android/settings/GigaLteSettings$33;

    invoke-direct {v11, p0}, Lcom/samsung/android/settings/GigaLteSettings$33;-><init>(Lcom/samsung/android/settings/GigaLteSettings;)V

    invoke-virtual {v5, v6, v11}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v5, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    :cond_34
    invoke-virtual {p0}, Lcom/samsung/android/settings/GigaLteSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-static {v11}, Lcom/samsung/android/settings/ConnectionsUtils;->isWifiEnabled(Landroid/content/Context;)Z

    move-result v11

    if-nez v11, :cond_35

    iget-object v5, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v5, v9}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance v11, Lcom/samsung/android/settings/GigaLteSettings$34;

    invoke-direct {v11, p0}, Lcom/samsung/android/settings/GigaLteSettings$34;-><init>(Lcom/samsung/android/settings/GigaLteSettings;)V

    invoke-virtual {v5, v4, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance v11, Lcom/samsung/android/settings/GigaLteSettings$35;

    invoke-direct {v11, p0}, Lcom/samsung/android/settings/GigaLteSettings$35;-><init>(Lcom/samsung/android/settings/GigaLteSettings;)V

    invoke-virtual {v5, v6, v11}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v5, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    :cond_35
    invoke-virtual {p0}, Lcom/samsung/android/settings/GigaLteSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-static {v11}, Lcom/samsung/android/settings/ConnectionsUtils;->isMobileNetworkEnabled(Landroid/content/Context;)Z

    move-result v11

    if-nez v11, :cond_36

    iget-object v5, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v5, v10}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance v11, Lcom/samsung/android/settings/GigaLteSettings$36;

    invoke-direct {v11, p0}, Lcom/samsung/android/settings/GigaLteSettings$36;-><init>(Lcom/samsung/android/settings/GigaLteSettings;)V

    invoke-virtual {v5, v4, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance v11, Lcom/samsung/android/settings/GigaLteSettings$37;

    invoke-direct {v11, p0}, Lcom/samsung/android/settings/GigaLteSettings$37;-><init>(Lcom/samsung/android/settings/GigaLteSettings;)V

    invoke-virtual {v5, v6, v11}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v5, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    :cond_36
    iget-object v11, p0, Lcom/samsung/android/settings/GigaLteSettings;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/samsung/android/settings/ConnectionsUtils;->isVodafoneSIMValid(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_37

    invoke-virtual {p0}, Lcom/samsung/android/settings/GigaLteSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-static {v11}, Lcom/samsung/android/settings/ConnectionsUtils;->isWifiEnabled(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_37

    if-eqz v1, :cond_37

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v11

    const-string v12, "\"Supernet-SIM\""

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_37

    iget-object v11, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    const v12, 0x7f121c09

    invoke-virtual {v11, v12}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    iget-object v11, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance v12, Lcom/samsung/android/settings/GigaLteSettings$38;

    invoke-direct {v12, p0}, Lcom/samsung/android/settings/GigaLteSettings$38;-><init>(Lcom/samsung/android/settings/GigaLteSettings;)V

    invoke-virtual {v11, v5, v12}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v5, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    :cond_37
    iget-object v1, p0, Lcom/samsung/android/settings/GigaLteSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/GigaLteSettings;->showProgressDialog()V

    invoke-direct {p0, p2}, Lcom/samsung/android/settings/GigaLteSettings;->sendMptcpStartBroadCast(Z)V

    return-void
.end method

.method public showProgressDialog()V
    .locals 4

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->progressDialog:Landroid/app/ProgressDialog;

    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/samsung/android/settings/GigaLteSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->progressDialog:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->progressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f120ebc

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/GigaLteSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->mHoldingHandler:Landroid/os/Handler;

    new-instance v0, Lcom/samsung/android/settings/GigaLteSettings$39;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/GigaLteSettings$39;-><init>(Lcom/samsung/android/settings/GigaLteSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->mRemoveProgress:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->mHoldingHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/settings/GigaLteSettings;->mRemoveProgress:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.class public Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;
.super Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;
.source "WifiSetupWizardActivityVzw.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lcom/android/settings/ButtonBarHandler;
.implements Lcom/samsung/android/settings/wifi/IWifiSetupWizardButtonAction;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$WifiSetupVoiceGuideHelper;,
        Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$WifiActionButtonUpdater;,
        Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$ConnectivityCheckTask;
    }
.end annotation


# static fields
.field private static final DEV:Z

.field private static mWiFiActionListener:Landroid/net/wifi/WifiManager$ActionListener;


# instance fields
.field private isKmeSupported:Z

.field private isSingleSkuPrepaid:Z

.field private isWifiPromptScreen:Z

.field private mAllowBack:Z

.field private mButtonUpdater:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$WifiActionButtonUpdater;

.field private mCm:Landroid/net/ConnectivityManager;

.field private mConnectionResult:I

.field private mConnectivityCheckTask:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$ConnectivityCheckTask;

.field private mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/AlertDialog;

.field private mHandler:Landroid/os/Handler;

.field private mIsGoogleFRPLocked:Z

.field private mIsRegistered:Z

.field private mIsWifiConnected:Z

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mServer:Ljava/net/InetAddress;

.field private mSuccessWifiConNID:I

.field private mUrl:Ljava/lang/String;

.field private mUsesSoftNavigationKeys:Z

.field private mVoiceGuideHelper:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$WifiSetupVoiceGuideHelper;

.field private mWifiAPId:I

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiNetwork:Landroid/net/Network;

.field private mWifiSettings:Lcom/android/settings/wifi/WifiSettings;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->DEV:Z

    new-instance v0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$6;

    invoke-direct {v0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$6;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mWiFiActionListener:Landroid/net/wifi/WifiManager$ActionListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mWifiAPId:I

    iput v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mConnectionResult:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mIsWifiConnected:Z

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mDialog:Landroid/app/AlertDialog;

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mProgressDialog:Landroid/app/ProgressDialog;

    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mUsesSoftNavigationKeys:Z

    iput v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mSuccessWifiConNID:I

    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->isKmeSupported:Z

    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->isWifiPromptScreen:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mAllowBack:Z

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mHandler:Landroid/os/Handler;

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mConnectivityCheckTask:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$ConnectivityCheckTask;

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mWifiNetwork:Landroid/net/Network;

    new-instance v0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$5;-><init>(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mIsWifiConnected:Z

    return v0
.end method

.method static synthetic access$100(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->isWifiPromptScreen:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->onNextButtonPressed(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;)Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$ConnectivityCheckTask;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mConnectivityCheckTask:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$ConnectivityCheckTask;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mConnectionResult:I

    return v0
.end method

.method static synthetic access$1302(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mConnectionResult:I

    return p1
.end method

.method static synthetic access$1400(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;)Landroid/net/wifi/WifiManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mIsGoogleFRPLocked:Z

    return v0
.end method

.method static synthetic access$1600()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->DEV:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->isWifiNetworkConnected()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->playScript(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->playScript(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->playScript(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->isSingleSkuPrepaid:Z

    return v0
.end method

.method static synthetic access$400(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->showAlertDialog(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->isKmeSupported:Z

    return v0
.end method

.method static synthetic access$600(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->refreshWifiApList()V

    return-void
.end method

.method static synthetic access$800(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;)Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$WifiSetupVoiceGuideHelper;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mVoiceGuideHelper:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$WifiSetupVoiceGuideHelper;

    return-object v0
.end method

.method static synthetic access$900(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->handleConnectionEvent(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private getActiveNetworkInfo()Landroid/net/NetworkInfo;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mCm:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mCm:Landroid/net/ConnectivityManager;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    return-object v0
.end method

.method private getWifiNetworkID()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v1

    return v1

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method private handleConnectionEvent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiSetupWizardVzw"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Handle Connection State: Action ? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "networkInfo"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    const-string v2, "WifiSetupWizardVzw"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "What is the Connection Status : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->getWifiNetworkID()I

    move-result v2

    iget v5, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mWifiAPId:I

    if-eq v5, v2, :cond_0

    iput v2, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mWifiAPId:I

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->showConnProgressDialog()V

    iput v4, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mConnectionResult:I

    new-instance v4, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$ConnectivityCheckTask;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$ConnectivityCheckTask;-><init>(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$1;)V

    iput-object v4, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mConnectivityCheckTask:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$ConnectivityCheckTask;

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mConnectivityCheckTask:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$ConnectivityCheckTask;

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v4, v3}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$ConnectivityCheckTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_0
    const-string v3, "WifiSetupWizardVzw"

    const-string v4, " This AP is already passed Netowrk Connection and it has valid internet connection"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    goto :goto_1

    :cond_1
    const v2, 0x7f121f18

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->setMainActionButtonText(I)V

    iput-boolean v3, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mIsWifiConnected:Z

    iput v4, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mSuccessWifiConNID:I

    iput v4, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mWifiAPId:I

    :goto_1
    goto :goto_2

    :cond_2
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "wifi_state"

    const/4 v2, 0x4

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "WifiSetupWizardVzw"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " Wifi State : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_3
    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    :goto_2
    return-void
.end method

.method public static isDataAvailable(Landroid/content/Context;)Z
    .locals 5

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v2, v3, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v2, v3, :cond_0

    const-string v2, "WifiSetupWizardVzw"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getTypeName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    return v2

    :cond_0
    const-string v2, "WifiSetupWizardVzw"

    const-string v3, "wifi/data not available"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return v2
.end method

.method private static isVoiceGuideSupportedForLocale()Z
    .locals 4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->KOREAN:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "zh_cn"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    return v2
.end method

.method private isWifiNetworkConnected()Z
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private lookupHost(Ljava/lang/String;)Ljava/net/InetAddress;
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mWifiNetwork:Landroid/net/Network;

    if-nez v1, :cond_0

    invoke-static {p1}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mWifiNetwork:Landroid/net/Network;

    invoke-virtual {v1, p1}, Landroid/net/Network;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v1
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    nop

    nop

    array-length v2, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    instance-of v5, v4, Ljava/net/Inet4Address;

    if-eqz v5, :cond_1

    return-object v4

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/net/UnknownHostException;->printStackTrace()V

    return-object v0
.end method

.method private onNextButtonPressed(I)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "is_wifi_connected"

    iget-boolean v2, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mIsWifiConnected:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->finish()V

    return-void
.end method

.method private static readGoogleFRPFlag(Landroid/content/Context;)Z
    .locals 8

    const/4 v0, 0x0

    new-instance v1, Lcom/samsung/android/service/reactive/ReactiveServiceManager;

    invoke-direct {v1, p0}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->isConnected()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    const-string v2, "WifiSetupWizardVzw"

    const-string v4, "readGoogleFRPFlag : service is not Connected"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    invoke-virtual {v1}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->getServiceSupport()I

    move-result v2

    const-string v4, "WifiSetupWizardVzw"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "readGoogleFRPFlag : getServiceSupport is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x2

    if-eq v2, v4, :cond_1

    const-string v4, "WifiSetupWizardVzw"

    const-string v5, "readGoogleFRPFlag : feature is not supported"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_1
    invoke-virtual {v1, v4}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->getFlag(I)I

    move-result v3

    const-string v5, "WifiSetupWizardVzw"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "readGoogleFRPFlag getFlag result : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x1

    if-eq v3, v5, :cond_2

    if-ne v3, v4, :cond_3

    :cond_2
    const/4 v0, 0x1

    :cond_3
    const-string v4, "WifiSetupWizardVzw"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "readGoogleFRPFlag : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private refreshWifiApList()V
    .locals 4

    :try_start_0
    const-string v0, "WifiSetupWizardVzw"

    const-string v1, "refreshWifiApList"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mWifiSettings:Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "forceUpdateAPs"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mWifiSettings:Lcom/android/settings/wifi/WifiSettings;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "WifiSetupWizardVzw"

    const-string v2, "Exception thrown when trying to force update list of APs"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private setupInitialWifiState()Z
    .locals 6

    const-string v0, "first_enter_wifisetupwizard"

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "first_enter_wifisetupwizard"

    const/4 v3, -0x2

    const/4 v4, 0x1

    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-ne v1, v4, :cond_1

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Setting_SkipWifiActvDuringSetupWizard"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    xor-int/2addr v1, v4

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v2

    if-eq v2, v1, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    const-string v2, "WifiSetupWizardVzw"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkAndStartSetupWizard wifi:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/samsung/android/settings/wifi/SetupWizardLogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "first_enter_wifisetupwizard"

    const/4 v5, 0x0

    invoke-static {v2, v4, v5, v3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return v1

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    return v1
.end method

.method private showAlertDialog(I)V
    .locals 5

    const-string v0, "WifiSetupWizardVzw"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Show the Alert Dialog for the connection Result : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mConnectionResult:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mDialog:Landroid/app/AlertDialog;

    :cond_0
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    const-string v0, "WifiSetupWizardVzw"

    const-string v1, "Not determined..."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f120777

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    const v1, 0x7f121c45

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f120fa3

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f12184e

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$13;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$13;-><init>(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;)V

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f121c46

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$14;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$14;-><init>(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;)V

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_0

    :pswitch_1
    const v3, 0x7f120faa

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v3, 0x7f120fa9

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$12;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$12;-><init>(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;)V

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_0

    :pswitch_2
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f121dc1

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f121035

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$11;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$11;-><init>(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;)V

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    :pswitch_3
    const v1, 0x7f121c41

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f121c40

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f121c43

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$8;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$8;-><init>(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;)V

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f121dbc

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_2

    const v1, 0x7f121c42

    :cond_2
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$9;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$9;-><init>(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v3, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$10;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$10;-><init>(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->forgetNetWork()V

    const v3, 0x7f120fa4

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v3, 0x7f120fa2

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$7;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$7;-><init>(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;)V

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    nop

    :goto_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mDialog:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mUsesSoftNavigationKeys:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/16 v3, 0x802

    invoke-virtual {v1, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    const/4 v1, 0x5

    if-eq p1, v1, :cond_4

    const/4 v1, 0x2

    if-ne p1, v1, :cond_5

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mDialog:Landroid/app/AlertDialog;

    const/4 v3, -0x2

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setAllCaps(Z)V

    :cond_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private showConnProgressDialog()V
    .locals 3

    const-string v0, "WifiSetupWizardVzw"

    const-string v1, " Show the Connection Check Progress Dialog"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mProgressDialog:Landroid/app/ProgressDialog;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mDialog:Landroid/app/AlertDialog;

    :cond_1
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mProgressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f121c44

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mProgressDialog:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$15;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$15;-><init>(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mUsesSoftNavigationKeys:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x802

    invoke-virtual {v0, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    return-void
.end method

.method private wifiConnSuccess()V
    .locals 2

    const-string v0, "WifiSetupWizardVzw"

    const-string v1, " WiFi Connection Success "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mIsWifiConnected:Z

    const v0, 0x7f120f15

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->setMainActionButtonText(I)V

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->getWifiNetworkID()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mSuccessWifiConNID:I

    iget v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mSuccessWifiConNID:I

    iput v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mWifiAPId:I

    return-void
.end method


# virtual methods
.method public forgetNetWork()V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    const-string v3, "WifiSetupWizardVzw"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Forgetting Wi-Fi networks "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " NetworkId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget v4, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    sget-object v5, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mWiFiActionListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v3, v4, v5}, Landroid/net/wifi/WifiManager;->forget(ILandroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getNextButton()Landroid/widget/Button;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x6

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_1

    const v1, 0x7f121f18

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->setMainActionButtonText(I)V

    iput-boolean v3, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mIsWifiConnected:Z

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->showAlertDialog(I)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->setMainActionButtonText(I)V

    iput-boolean v3, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mIsWifiConnected:Z

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->showAlertDialog(I)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->setMainActionButtonText(I)V

    iput-boolean v3, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mIsWifiConnected:Z

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->showAlertDialog(I)V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->wifiConnSuccess()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->setWifiListProgressBar(Z)V

    nop

    :goto_0
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public hasNextButton()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isCaptivePortalNetwork()Z
    .locals 7

    const-string v0, "WifiSetupWizardVzw"

    const-string v1, "Checking internet connection availibility..."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mServer:Ljava/net/InetAddress;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "WifiSetupWizardVzw"

    const-string v2, "mServer == null"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "http://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mServer:Ljava/net/InetAddress;

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/generate_204"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mUrl:Ljava/lang/String;

    const-string v3, "WifiSetupWizardVzw"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Checking connection : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mUrl:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v3, Ljava/net/URL;

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mUrl:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mWifiNetwork:Landroid/net/Network;

    if-nez v4, :cond_1

    const-string v4, "WifiSetupWizardVzw"

    const-string v5, "Opening regular connection"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    check-cast v4, Ljava/net/HttpURLConnection;

    move-object v0, v4

    goto :goto_0

    :cond_1
    const-string v4, "WifiSetupWizardVzw"

    const-string v5, "Opening network connection"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mWifiNetwork:Landroid/net/Network;

    invoke-virtual {v4, v3}, Landroid/net/Network;->openConnection(Ljava/net/URL;)Ljava/net/URLConnection;

    move-result-object v4

    check-cast v4, Ljava/net/HttpURLConnection;

    move-object v0, v4

    :goto_0
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    const/16 v4, 0x1388

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    const-string v4, "WifiSetupWizardVzw"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Url connection response code: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v5, 0xcc

    if-eq v4, v5, :cond_2

    const/4 v1, 0x1

    nop

    :cond_2
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :try_start_1
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v3, "WifiSetupWizardVzw"

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    goto :goto_3

    :catchall_0
    move-exception v1

    goto :goto_5

    :catch_1
    move-exception v1

    const/4 v2, 0x1

    :try_start_2
    const-string v3, "WifiSetupWizardVzw"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :try_start_3
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    :catch_2
    move-exception v1

    const-string v3, "WifiSetupWizardVzw"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    nop

    :cond_3
    move v1, v2

    :cond_4
    :goto_3
    const-string v2, "WifiSetupWizardVzw"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Internet connection "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_5

    const-string v4, "NOT available"

    goto :goto_4

    :cond_5
    const-string v4, "available"

    :goto_4
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :goto_5
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :try_start_4
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_6

    :catch_3
    move-exception v3

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "WifiSetupWizardVzw"

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_6
    throw v1
.end method

.method public isConnWifi(Landroid/content/Context;)Z
    .locals 5

    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    move v2, v4

    nop

    :cond_0
    return v2

    :cond_1
    const-string v3, "WifiSetupWizardVzw"

    const-string v4, "wifi not available"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public isWiFiConnectionAvailable()Z
    .locals 11

    const-string v0, "WifiSetupWizardVzw"

    const-string v1, "Checking Wi-Fi network availibility..."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v2, "WifiSetupWizardVzw"

    const-string v3, "ConnectivityManager is null"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    move-result-object v2

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mWifiNetwork:Landroid/net/Network;

    array-length v3, v2

    move v4, v1

    :goto_0
    const/4 v5, 0x1

    if-ge v4, v3, :cond_2

    aget-object v6, v2, v4

    invoke-virtual {v0, v6}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v7

    const-string v8, "WifiSetupWizardVzw"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "NetworkInfo: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v7, :cond_1

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->getType()I

    move-result v8

    if-ne v8, v5, :cond_1

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v8

    if-eqz v8, :cond_1

    const-string v3, "WifiSetupWizardVzw"

    const-string v4, "Connected Wi-Fi network found"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v6, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mWifiNetwork:Landroid/net/Network;

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mWifiNetwork:Landroid/net/Network;

    if-nez v3, :cond_3

    const-string v3, "WifiSetupWizardVzw"

    const-string v4, "No connected Wi-Fi network found"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_3
    const-string v3, "WifiSetupWizardVzw"

    const-string v4, "Checking host lookup..."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "connectivitycheck.android.com"

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->lookupHost(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mServer:Ljava/net/InetAddress;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mServer:Ljava/net/InetAddress;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mServer:Ljava/net/InetAddress;

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4

    const-string v4, "WifiSetupWizardVzw"

    const-string v5, "Host lookup failed. Invalid host address"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_4
    nop

    const-string v1, "WifiSetupWizardVzw"

    const-string v3, "Host lookup OK"

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_5
    const-string v3, "WifiSetupWizardVzw"

    const-string v4, "Host lookup failed. Unknown host"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public mainAction(Z)V
    .locals 4

    const-string v0, "WifiSetupWizardVzw"

    const-string v1, "onClick MainAction"

    invoke-static {v0, v1}, Lcom/samsung/android/settings/wifi/SetupWizardLogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->setResult(I)V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "is_wifi_connected"

    iget-boolean v3, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mIsWifiConnected:Z

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->finish()V

    :cond_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    invoke-super {p0, p1, p2, p3}, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    const-string v0, "WifiSetupWizardVzw"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult Called !!! result code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->wifiConnSuccess()V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "is_wifi_connected"

    iget-boolean v3, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mIsWifiConnected:Z

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->finish()V

    goto :goto_0

    :cond_0
    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_1

    invoke-direct {p0, p2}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->onNextButtonPressed(I)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x3eb

    if-eq p2, v0, :cond_2

    if-nez p2, :cond_3

    :cond_2
    const-string v0, "WifiSetupWizardVzw"

    const-string v1, "Forgetting  Wi-Fi Network "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->forgetNetWork()V

    :cond_3
    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    const-string v0, "WifiSetupWizardVzw"

    const-string v1, " onBackPressed "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mAllowBack:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->setResult(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "WifiSetupWizardVzw"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/samsung/android/settings/wifi/SetupWizardLogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->isVoiceGuideSupportedForLocale()Z

    move-result v0

    const v1, 0x7f0d02dd

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->setContentView(IZ)V

    const v0, 0x7f121f3e

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->setHeaderTitle(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0707a1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->setHeaderTitleBottomMargin(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0a0968

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/WifiSettings;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mWifiSettings:Lcom/android/settings/wifi/WifiSettings;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mWifiSettings:Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSettings;->getWifiManager()Landroid/net/wifi/WifiManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mWifiManager:Landroid/net/wifi/WifiManager;

    iput-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "usesSoftNavigationKeys"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mUsesSoftNavigationKeys:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "isKmeSupported"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->isKmeSupported:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "isSingleSkuPrepaid"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->isSingleSkuPrepaid:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "wifiPrompt"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->isWifiPromptScreen:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "allowBack"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mAllowBack:Z

    new-instance v0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$WifiSetupVoiceGuideHelper;

    const-string v1, "WLAN"

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f121c63

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$WifiSetupVoiceGuideHelper;-><init>(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;Z)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mVoiceGuideHelper:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$WifiSetupVoiceGuideHelper;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mWifiSettings:Lcom/android/settings/wifi/WifiSettings;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mVoiceGuideHelper:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$WifiSetupVoiceGuideHelper;

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$WifiSetupVoiceGuideHelper;->getListener()Lcom/android/settings/wifi/WifiSettings$WifiSettingsListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiSettings;->setWifiSettingsListener(Lcom/android/settings/wifi/WifiSettings$WifiSettingsListener;)V

    new-instance v0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$WifiActionButtonUpdater;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$WifiActionButtonUpdater;-><init>(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mButtonUpdater:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$WifiActionButtonUpdater;

    new-instance v0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$1;-><init>(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;)V

    const v1, 0x7f120f15

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->setMainActionButton(ILandroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$2;-><init>(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;)V

    const v1, 0x7f121efa

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->setManualSetupButton(ILandroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$3;-><init>(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->setPreviousButton(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$4;-><init>(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->setVoiceGuideButton(Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton$OnVoiceGuideListener;)V

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->readGoogleFRPFlag(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mIsGoogleFRPLocked:Z

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iput-boolean v2, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mIsRegistered:Z

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->setupInitialWifiState()Z

    move-result v1

    new-instance v2, Lcom/samsung/android/settings/wifi/WifiSetupWfcPopup;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/WifiSetupWfcPopup;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/samsung/android/settings/wifi/WifiSetupWfcPopup;->setupWfcPopup()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mIsRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mIsRegistered:Z

    :cond_0
    invoke-super {p0}, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->onDestroy()V

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->onResume()V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    const-string v0, "WifiSetupWizardVzw"

    const-string v1, "Enable wifi, if its off"

    invoke-static {v0, v1}, Lcom/samsung/android/settings/wifi/SetupWizardLogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 0

    invoke-super {p0}, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->onStart()V

    return-void
.end method

.method public onStop()V
    .locals 0

    invoke-super {p0}, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->onStop()V

    return-void
.end method

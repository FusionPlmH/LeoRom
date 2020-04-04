.class public Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;
.super Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;
.source "WifiSetupWizardActivity.java"

# interfaces
.implements Lcom/android/settings/ButtonBarHandler;
.implements Lcom/samsung/android/settings/wifi/IWifiSetupWizardButtonAction;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$CheckInternet;,
        Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiSetupVoiceGuideHelper;,
        Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiActionButtonUpdater;,
        Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiOnOffButtonUpdater;
    }
.end annotation


# static fields
.field private static final DEV:Z


# instance fields
.field isCheckingOnGoing:Z

.field private isKmeSupported:Z

.field private isNetworkRequiredByKme:Z

.field private isNetworkRequiredBySetupWizard:Z

.field isWifiInternetAvailable:Z

.field private mActivity:Landroid/app/Activity;

.field private mButtonUpdater:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiActionButtonUpdater;

.field private mCm:Landroid/net/ConnectivityManager;

.field private mCountryIso:Ljava/lang/String;

.field private mDebugStartWithWifiOff:Z

.field private mIsRegistered:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSAScreenId:Ljava/lang/String;

.field private mUseSprintNewSetupWizard:Z

.field private mVoiceGuideHelper:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiSetupVoiceGuideHelper;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiSettings:Lcom/android/settings/wifi/WifiSettings;

.field private mWifiStateButtonUpdater:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiOnOffButtonUpdater;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->DEV:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->isCheckingOnGoing:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->isWifiInternetAvailable:Z

    new-instance v0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$3;-><init>(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;)Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiSetupVoiceGuideHelper;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mVoiceGuideHelper:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiSetupVoiceGuideHelper;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->isNetworkAvailable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->isNetworkRequiredBySetupWizard:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->setMainActionButtonText(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->setMainActionButtonEnabled(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->setMainActionButtonText(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->setMainActionButtonEnabled(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->playScript(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->playScript(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;ZZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->allowToGoNext(ZZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;)Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiActionButtonUpdater;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mButtonUpdater:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiActionButtonUpdater;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;)I
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->isCaptivePortal()I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;)Landroid/net/wifi/WifiManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;)Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiOnOffButtonUpdater;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mWifiStateButtonUpdater:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiOnOffButtonUpdater;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mSAScreenId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->DEV:Z

    return v0
.end method

.method static synthetic access$800(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->isWifiNetworkConnected()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->isNetworkRequiredByKme:Z

    return v0
.end method

.method private allowToGoNext(ZZLjava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mButtonUpdater:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiActionButtonUpdater;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-string v0, "WifiSetupWizard"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "allow to Go Next : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->isWifiInternetAvailable:Z

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mButtonUpdater:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiActionButtonUpdater;

    invoke-static {v0, v1, p1}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiActionButtonUpdater;->access$2100(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiActionButtonUpdater;ZZ)V

    :cond_0
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    :cond_1
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz p2, :cond_3

    :try_start_0
    invoke-static {p3}, Lcom/samsung/android/settings/wifi/WifiSetupFrpWarningDialog;->newInstance(Ljava/lang/String;)Lcom/samsung/android/settings/wifi/WifiSetupFrpWarningDialog;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string v4, "dialog"

    invoke-virtual {v1, v3, v4}, Lcom/samsung/android/settings/wifi/WifiSetupFrpWarningDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v3, "WifiSetupWizard"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception on allowToGoNext: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->isDestroyed()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mActivity:Landroid/app/Activity;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/WifiSetupFrpWarningDialog;->forget(Landroid/content/Context;)V

    :cond_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_0
    return-void
.end method

.method private getActiveNetworkInfo()Landroid/net/NetworkInfo;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mCm:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mCm:Landroid/net/ConnectivityManager;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    return-object v0
.end method

.method private isCaptivePortal()I
    .locals 10

    const/16 v0, 0x257

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->isChinaNetwork()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "http://connectivity.samsung.com.cn/generate_204"

    goto :goto_0

    :cond_0
    const-string v1, "http://connectivitycheck.android.com/generate_204"

    :goto_0
    const/4 v2, 0x0

    const-string v3, "WifiSetupWizard"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Checking "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, 0xc8

    :try_start_0
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    check-cast v5, Ljava/net/HttpURLConnection;

    move-object v2, v5

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    const/16 v6, 0x1388

    invoke-virtual {v2, v6}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {v2, v6}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    invoke-virtual {v2, v5}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    move v0, v5

    sget-boolean v5, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->DEV:Z

    if-eqz v5, :cond_1

    const-string v5, "WifiSetupWizard"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isCaptivePortal: ret="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " headers="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-ne v0, v3, :cond_3

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v5

    if-nez v5, :cond_3

    sget-boolean v5, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->DEV:Z

    if-eqz v5, :cond_2

    const-string v5, "WifiSetupWizard"

    const-string v6, "Empty 200 response interpreted as 204 response."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/16 v0, 0xcc

    :cond_3
    const/16 v5, 0x197

    if-ne v0, v5, :cond_5

    sget-boolean v5, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->DEV:Z

    if-eqz v5, :cond_4

    const-string v5, "WifiSetupWizard"

    const-string v6, "407 Proxy Authentication Required interpreted as 204 response."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    const/16 v0, 0xcc

    :cond_5
    if-eqz v2, :cond_7

    goto :goto_1

    :catchall_0
    move-exception v3

    goto/16 :goto_5

    :catch_0
    move-exception v4

    :try_start_1
    sget-boolean v5, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->DEV:Z

    if-eqz v5, :cond_6

    const-string v5, "WifiSetupWizard"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Probably not a portal: exception "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_6
    nop

    if-eqz v2, :cond_7

    :goto_1
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    const/4 v2, 0x0

    :cond_7
    const/16 v4, 0x257

    if-ne v0, v4, :cond_b

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->isChinaNetwork()Z

    move-result v4

    if-eqz v4, :cond_b

    new-instance v4, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v4}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    const/4 v5, 0x0

    :try_start_2
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mCountryIso:Ljava/lang/String;

    if-eqz v6, :cond_8

    const-string v6, "cn"

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mCountryIso:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    new-instance v6, Lorg/apache/http/client/methods/HttpGet;

    const-string v7, "http://m.hao123.com"

    invoke-direct {v6, v7}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    move-object v5, v6

    const-string v6, "WifiSetupWizard"

    const-string v7, "Change connection for cn model"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_8
    new-instance v6, Lorg/apache/http/client/methods/HttpGet;

    const-string v7, "http://www.amazon.com"

    invoke-direct {v6, v7}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    move-object v5, v6

    :goto_2
    invoke-interface {v4, v5}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v6

    const-string v7, "WifiSetupWizard"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "HttpClient statusCode = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v7

    if-ne v7, v3, :cond_9

    const/16 v0, 0xcc

    goto :goto_3

    :cond_9
    sget-boolean v3, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->DEV:Z

    if-eqz v3, :cond_a

    const-string v3, "WifiSetupWizard"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Fail: Code : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    :goto_3
    invoke-virtual {v5}, Lorg/apache/http/client/methods/HttpGet;->abort()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    :catch_1
    move-exception v3

    sget-boolean v5, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->DEV:Z

    if-eqz v5, :cond_b

    const-string v5, "WifiSetupWizard"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Fail: IOException"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    :goto_4
    return v0

    :goto_5
    if-eqz v2, :cond_c

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    const/4 v2, 0x0

    :cond_c
    throw v3
.end method

.method private isChinaNetwork()Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mActivity:Landroid/app/Activity;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    move-object v0, v1

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mCountryIso:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "WifiSetupWizard"

    const-string v3, "Exception occured at isChinaNetwork(), while retrieving Context.TELEPHONY_SERVICE"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mCountryIso:Ljava/lang/String;

    if-nez v1, :cond_0

    :try_start_1
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string v2, "CountryISO"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mCountryIso:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    const-string v2, "WifiSetupWizard"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception on CountryISO: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_1
    const-string v1, "WifiSetupWizard"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isChinaNetwork -  CountryISO:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mCountryIso:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mCountryIso:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mCountryIso:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    const-string v1, "cn"

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mCountryIso:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_2

    :cond_1
    const/4 v1, 0x0

    return v1

    :cond_2
    :goto_2
    const-string v1, "WifiSetupWizard"

    const-string v2, "Need to check WiFi again."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    return v1
.end method

.method private isNetworkAvailable()Z
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private isWifiNetworkConnected()Z
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

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

.method private setupInitialWifiState()Z
    .locals 7

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mDebugStartWithWifiOff:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    return v1

    :cond_0
    const-string v0, "first_enter_wifisetupwizard"

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "first_enter_wifisetupwizard"

    const/4 v4, -0x2

    const/4 v5, 0x1

    invoke-static {v2, v3, v5, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v5, :cond_2

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Setting_SkipWifiActvDuringSetupWizard"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    xor-int/2addr v2, v5

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v3

    if-eq v3, v2, :cond_1

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    const-string v3, "WifiSetupWizard"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkAndStartSetupWizard wifi:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/samsung/android/settings/wifi/SetupWizardLogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "first_enter_wifisetupwizard"

    invoke-static {v3, v5, v1, v4}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return v2

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    return v1
.end method


# virtual methods
.method public getNextButton()Landroid/widget/Button;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public hasNextButton()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public mainAction(Z)V
    .locals 5

    const-string v0, "WifiSetupWizard"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick MainAction isKmeSupported="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->isKmeSupported:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " isWifiNetworkConnected()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->isWifiNetworkConnected()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " isNetworkAvailable()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->isNetworkAvailable()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mUseSprintNewSetupWizard ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mUseSprintNewSetupWizard:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/wifi/SetupWizardLogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mUseSprintNewSetupWizard:Z

    const v1, 0x7f120939

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->isKmeSupported:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "samsung_eula_agree"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->isWifiNetworkConnected()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->isNetworkAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mSAScreenId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v3, 0x1

    invoke-static {v0, v1, v3, v4}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;J)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.app.secsetupwizard.B2B_CHECK_PROGRESS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "isLaunchedFromWifi"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v1, 0x3e9

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mButtonUpdater:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiActionButtonUpdater;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiActionButtonUpdater;->possibleGoToNextStep()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mSAScreenId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;J)V

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->finish()V

    :cond_3
    :goto_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    invoke-super {p0, p1, p2, p3}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    const-string v0, "WifiSetupWizard"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult Called "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->finish()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    invoke-super {p0, p1}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->onCreate(Landroid/os/Bundle;)V

    iput-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mActivity:Landroid/app/Activity;

    const-string v0, "WifiSetupWizard"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/samsung/android/settings/wifi/SetupWizardLogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const v1, 0x7f0d02e0

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->setContentView(IZ)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1212f7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mSAScreenId:Ljava/lang/String;

    const v1, 0x7f121f73

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->setHeaderTitle(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0707ba

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->setHeaderTitleBottomMargin(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f0a0967

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/android/settings/wifi/WifiSettings;

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mWifiSettings:Lcom/android/settings/wifi/WifiSettings;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mWifiSettings:Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiSettings;->getWifiManager()Landroid/net/wifi/WifiManager;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    new-instance v1, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiSetupVoiceGuideHelper;

    const-string v2, "WLAN"

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f121c97

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiSetupVoiceGuideHelper;-><init>(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;Z)V

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mVoiceGuideHelper:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiSetupVoiceGuideHelper;

    new-instance v1, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiActionButtonUpdater;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiActionButtonUpdater;-><init>(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;Landroid/content/Intent;)V

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mButtonUpdater:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiActionButtonUpdater;

    new-instance v1, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiOnOffButtonUpdater;

    const v2, 0x7f0a0969

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiOnOffButtonUpdater;-><init>(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;Landroid/widget/TextView;)V

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mWifiStateButtonUpdater:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiOnOffButtonUpdater;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "isKmeSupported"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->isKmeSupported:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "is_network_required"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->isNetworkRequiredBySetupWizard:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "is_network_required_by_kme"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->isNetworkRequiredByKme:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "useSprintNewSetupWizard"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mUseSprintNewSetupWizard:Z

    new-instance v0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$1;-><init>(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;)V

    const v1, 0x7f120f3f

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->setMainActionButton(ILandroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    const v1, 0x3ec4b5dd    # 0.3842f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    const v1, 0x7f0a0968

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$2;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$2;-><init>(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;)V

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->setVoiceGuideButton(Lcom/sec/android/secsetupwizardlib/VI/VoiceGuideButton$OnVoiceGuideListener;)V

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string v4, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v4, v3}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mIsRegistered:Z

    sget-boolean v4, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->DEV:Z

    if-eqz v4, :cond_0

    const-string v4, "1"

    const-string v5, "wifi.test.off"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mDebugStartWithWifiOff:Z

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->setupInitialWifiState()Z

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mWifiStateButtonUpdater:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiOnOffButtonUpdater;

    invoke-virtual {v5, v4}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiOnOffButtonUpdater;->initButtonState(Z)V

    new-instance v5, Lcom/samsung/android/settings/wifi/WifiSetupWfcPopup;

    invoke-direct {v5, p0}, Lcom/samsung/android/settings/wifi/WifiSetupWfcPopup;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5}, Lcom/samsung/android/settings/wifi/WifiSetupWfcPopup;->setupWfcPopup()V

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mButtonUpdater:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiActionButtonUpdater;

    invoke-virtual {v6}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiActionButtonUpdater;->checkAndShowNetworkRestrictionDialog()V

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v6

    const/16 v7, 0x2000

    invoke-virtual {v6, v7}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mIsRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mIsRegistered:Z

    :cond_0
    invoke-super {p0}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->onDestroy()V

    return-void
.end method

.method public onStart()V
    .locals 0

    invoke-super {p0}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->onStart()V

    return-void
.end method

.method public onStop()V
    .locals 0

    invoke-super {p0}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->onStop()V

    return-void
.end method

.class public Lcom/android/server/TigerSskdsService;
.super Lcom/samsung/android/service/TigerSskdsService/ITigerSskdsService$Stub;
.source "TigerSskdsService.java"

# interfaces
.implements Lcom/samsung/android/service/TigerSskdsService/NetworkStateReceiverListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/TigerSskdsService$RegistrationHandler;
    }
.end annotation


# static fields
.field private static final REGISTRATION_INTERVAL:J = 0x3a98L

.field private static final TAG:Ljava/lang/String;

.field private static mCurrentAttempt:I


# instance fields
.field private mClearDataReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mInternetStatusReceiver:Landroid/content/BroadcastReceiver;

.field private mSskdsDevice:Lcom/samsung/android/service/TigerSskdsService/SskdsDevice;

.field private mTask:Lcom/samsung/android/service/TigerSskdsService/networking/SendTask;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/server/TigerSskdsService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/TigerSskdsService;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    sput v0, Lcom/android/server/TigerSskdsService;->mCurrentAttempt:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/service/TigerSskdsService/ITigerSskdsService$Stub;-><init>()V

    new-instance v0, Lcom/samsung/android/service/TigerSskdsService/NetworkStateReceiver;

    invoke-direct {v0, p0}, Lcom/samsung/android/service/TigerSskdsService/NetworkStateReceiver;-><init>(Lcom/samsung/android/service/TigerSskdsService/NetworkStateReceiverListener;)V

    iput-object v0, p0, Lcom/android/server/TigerSskdsService;->mInternetStatusReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/TigerSskdsService$RegistrationHandler;

    invoke-direct {v0, p0}, Lcom/android/server/TigerSskdsService$RegistrationHandler;-><init>(Lcom/android/server/TigerSskdsService;)V

    iput-object v0, p0, Lcom/android/server/TigerSskdsService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/samsung/android/service/TigerSskdsService/SskdsDevice;

    invoke-direct {v0}, Lcom/samsung/android/service/TigerSskdsService/SskdsDevice;-><init>()V

    iput-object v0, p0, Lcom/android/server/TigerSskdsService;->mSskdsDevice:Lcom/samsung/android/service/TigerSskdsService/SskdsDevice;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/TigerSskdsService;->mTask:Lcom/samsung/android/service/TigerSskdsService/networking/SendTask;

    new-instance v0, Lcom/android/server/TigerSskdsService$1;

    invoke-direct {v0, p0}, Lcom/android/server/TigerSskdsService$1;-><init>(Lcom/android/server/TigerSskdsService;)V

    iput-object v0, p0, Lcom/android/server/TigerSskdsService;->mClearDataReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/server/TigerSskdsService;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/android/server/TigerSskdsService;->TAG:Ljava/lang/String;

    const-string v1, "Setting up SskdsDevice."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/TigerSskdsService;->mSskdsDevice:Lcom/samsung/android/service/TigerSskdsService/SskdsDevice;

    invoke-virtual {v0}, Lcom/samsung/android/service/TigerSskdsService/SskdsDevice;->isDeviceRegistered()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/TigerSskdsService;->TAG:Ljava/lang/String;

    const-string v1, "Device already registered!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/TigerSskdsService;->cleanSelf()V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/server/TigerSskdsService;->TAG:Ljava/lang/String;

    const-string v1, "Device not registered!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/TigerSskdsService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/TigerSskdsService;->mInternetStatusReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :goto_0
    invoke-direct {p0}, Lcom/android/server/TigerSskdsService;->registerDataClearReceiver()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/TigerSskdsService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()I
    .locals 1

    sget v0, Lcom/android/server/TigerSskdsService;->mCurrentAttempt:I

    return v0
.end method

.method static synthetic access$104()I
    .locals 1

    sget v0, Lcom/android/server/TigerSskdsService;->mCurrentAttempt:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/server/TigerSskdsService;->mCurrentAttempt:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/TigerSskdsService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/TigerSskdsService;->setDeviceStatus(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/TigerSskdsService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/TigerSskdsService;->cleanSelf()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/TigerSskdsService;Lcom/samsung/android/service/TigerSskdsService/networking/Request$Type;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/TigerSskdsService;->setTask(Lcom/samsung/android/service/TigerSskdsService/networking/Request$Type;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/TigerSskdsService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/TigerSskdsService;->executeTask(Z)V

    return-void
.end method

.method private cleanSelf()V
    .locals 3

    sget-object v0, Lcom/android/server/TigerSskdsService;->TAG:Ljava/lang/String;

    const-string v1, "Cleaning resources."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/TigerSskdsService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/TigerSskdsService;->mTask:Lcom/samsung/android/service/TigerSskdsService/networking/SendTask;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/TigerSskdsService;->mTask:Lcom/samsung/android/service/TigerSskdsService/networking/SendTask;

    iget-object v1, p0, Lcom/android/server/TigerSskdsService;->mSskdsDevice:Lcom/samsung/android/service/TigerSskdsService/SskdsDevice;

    invoke-virtual {v1}, Lcom/samsung/android/service/TigerSskdsService/SskdsDevice;->dispose()V

    iput-object v0, p0, Lcom/android/server/TigerSskdsService;->mSskdsDevice:Lcom/samsung/android/service/TigerSskdsService/SskdsDevice;

    :try_start_0
    iget-object v0, p0, Lcom/android/server/TigerSskdsService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/TigerSskdsService;->mInternetStatusReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/server/TigerSskdsService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "mInternetStatusReceiver not registered!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private executeTask(Z)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/TigerSskdsService;->mTask:Lcom/samsung/android/service/TigerSskdsService/networking/SendTask;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/TigerSskdsService;->mTask:Lcom/samsung/android/service/TigerSskdsService/networking/SendTask;

    invoke-virtual {v0}, Lcom/samsung/android/service/TigerSskdsService/networking/SendTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_1

    sget-object v1, Lcom/android/server/TigerSskdsService;->TAG:Ljava/lang/String;

    const-string v2, "SendTask is currently doing work in doInBackground(): running."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_2

    sget-object v1, Lcom/android/server/TigerSskdsService;->TAG:Ljava/lang/String;

    const-string v2, "SendTask is done and onPostExecute was called: finished."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/TigerSskdsService;->mTask:Lcom/samsung/android/service/TigerSskdsService/networking/SendTask;

    return-void

    :cond_2
    sget-object v1, Landroid/os/AsyncTask$Status;->PENDING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_3

    sget-object v1, Lcom/android/server/TigerSskdsService;->TAG:Ljava/lang/String;

    const-string v2, "SendTask has not started yet: pending."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    if-eqz p1, :cond_4

    iget-object v1, p0, Lcom/android/server/TigerSskdsService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/TigerSskdsService;->mTask:Lcom/samsung/android/service/TigerSskdsService/networking/SendTask;

    const-wide/16 v3, 0x3a98

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/server/TigerSskdsService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/TigerSskdsService;->mTask:Lcom/samsung/android/service/TigerSskdsService/networking/SendTask;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method private fillRequest(Lcom/samsung/android/service/TigerSskdsService/networking/Request$Type;)Lcom/samsung/android/service/TigerSskdsService/networking/Request;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/TigerSskdsService/networking/Request$Exception;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    new-instance v0, Lcom/samsung/android/service/TigerSskdsService/networking/Request;

    invoke-direct {v0, p1}, Lcom/samsung/android/service/TigerSskdsService/networking/Request;-><init>(Lcom/samsung/android/service/TigerSskdsService/networking/Request$Type;)V

    iget-object v1, p0, Lcom/android/server/TigerSskdsService;->mSskdsDevice:Lcom/samsung/android/service/TigerSskdsService/SskdsDevice;

    invoke-virtual {v1}, Lcom/samsung/android/service/TigerSskdsService/SskdsDevice;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/service/TigerSskdsService/networking/Request;->setDeviceId(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/TigerSskdsService;->mSskdsDevice:Lcom/samsung/android/service/TigerSskdsService/SskdsDevice;

    invoke-virtual {v1}, Lcom/samsung/android/service/TigerSskdsService/SskdsDevice;->getBrandName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/service/TigerSskdsService/networking/Request;->setBrandName(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/TigerSskdsService;->mSskdsDevice:Lcom/samsung/android/service/TigerSskdsService/SskdsDevice;

    invoke-virtual {v1}, Lcom/samsung/android/service/TigerSskdsService/SskdsDevice;->getBatchId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/service/TigerSskdsService/networking/Request;->setDeviceBatchId(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/TigerSskdsService;->mSskdsDevice:Lcom/samsung/android/service/TigerSskdsService/SskdsDevice;

    invoke-virtual {v1}, Lcom/samsung/android/service/TigerSskdsService/SskdsDevice;->getSecurityLevel()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/service/TigerSskdsService/networking/Request;->setSecurityLevel(I)V

    iget-object v1, p0, Lcom/android/server/TigerSskdsService;->mSskdsDevice:Lcom/samsung/android/service/TigerSskdsService/SskdsDevice;

    invoke-virtual {v1}, Lcom/samsung/android/service/TigerSskdsService/SskdsDevice;->getModel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/service/TigerSskdsService/networking/Request;->setDeviceModel(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/TigerSskdsService;->mSskdsDevice:Lcom/samsung/android/service/TigerSskdsService/SskdsDevice;

    invoke-virtual {v1}, Lcom/samsung/android/service/TigerSskdsService/SskdsDevice;->getDrkCertificate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/service/TigerSskdsService/networking/Request;->addCertificate(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/TigerSskdsService;->mSskdsDevice:Lcom/samsung/android/service/TigerSskdsService/SskdsDevice;

    invoke-virtual {v1}, Lcom/samsung/android/service/TigerSskdsService/SskdsDevice;->getAttkCertificate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/service/TigerSskdsService/networking/Request;->addCertificate(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/TigerSskdsService;->mSskdsDevice:Lcom/samsung/android/service/TigerSskdsService/SskdsDevice;

    invoke-virtual {v1}, Lcom/samsung/android/service/TigerSskdsService/SskdsDevice;->getAttkPublicKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/service/TigerSskdsService/networking/Request;->setAttkPubKey(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/TigerSskdsService;->mSskdsDevice:Lcom/samsung/android/service/TigerSskdsService/SskdsDevice;

    const-string v3, "\n"

    const-string v4, "\\n"

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/service/TigerSskdsService/SskdsDevice;->getSignature([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/service/TigerSskdsService/networking/Request;->setSignature(Ljava/lang/String;)V

    return-object v0
.end method

.method private makeTask(Lcom/samsung/android/service/TigerSskdsService/networking/Request$Type;)Lcom/samsung/android/service/TigerSskdsService/networking/SendTask;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/TigerSskdsService;->fillRequest(Lcom/samsung/android/service/TigerSskdsService/networking/Request$Type;)Lcom/samsung/android/service/TigerSskdsService/networking/Request;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/service/TigerSskdsService/networking/SendTask;

    iget-object v3, p0, Lcom/android/server/TigerSskdsService;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, v3, v1}, Lcom/samsung/android/service/TigerSskdsService/networking/SendTask;-><init>(Landroid/os/Handler;Lcom/samsung/android/service/TigerSskdsService/networking/Request;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v2, Lcom/android/server/TigerSskdsService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Request generation error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/TigerSskdsService;->cleanSelf()V

    :goto_0
    return-object v0
.end method

.method private registerDataClearReceiver()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PACKAGE_DATA_CLEARED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/TigerSskdsService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/TigerSskdsService;->mClearDataReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private setDeviceStatus(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/TigerSskdsService;->mSskdsDevice:Lcom/samsung/android/service/TigerSskdsService/SskdsDevice;

    invoke-virtual {v0, p1}, Lcom/samsung/android/service/TigerSskdsService/SskdsDevice;->setDeviceStatus(Z)V

    return-void
.end method

.method private setTask(Lcom/samsung/android/service/TigerSskdsService/networking/Request$Type;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/TigerSskdsService;->makeTask(Lcom/samsung/android/service/TigerSskdsService/networking/Request$Type;)Lcom/samsung/android/service/TigerSskdsService/networking/SendTask;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/TigerSskdsService;->mTask:Lcom/samsung/android/service/TigerSskdsService/networking/SendTask;

    return-void
.end method


# virtual methods
.method public isNetworkAvailable()Z
    .locals 6

    iget-object v0, p0, Lcom/android/server/TigerSskdsService;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-object v2, Lcom/android/server/TigerSskdsService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "isNetworkAvailable : couldn\'t get connectivity manager"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v4

    if-eqz v4, :cond_1

    const/16 v5, 0xc

    invoke-virtual {v4, v5}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v5

    if-eqz v5, :cond_1

    const/16 v5, 0x10

    invoke-virtual {v4, v5}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    return v1

    :cond_2
    return v1

    :cond_3
    sget-object v3, Lcom/android/server/TigerSskdsService;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "isNetworkAvailable : no active network info"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public declared-synchronized networkAvailable()V
    .locals 2

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/android/server/TigerSskdsService;->TAG:Ljava/lang/String;

    const-string v1, "Network is avaliable."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/TigerSskdsService;->mTask:Lcom/samsung/android/service/TigerSskdsService/networking/SendTask;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    sput v0, Lcom/android/server/TigerSskdsService;->mCurrentAttempt:I

    sget-object v0, Lcom/samsung/android/service/TigerSskdsService/networking/Request$Type;->REGISTER:Lcom/samsung/android/service/TigerSskdsService/networking/Request$Type;

    invoke-direct {p0, v0}, Lcom/android/server/TigerSskdsService;->setTask(Lcom/samsung/android/service/TigerSskdsService/networking/Request$Type;)V

    sget-object v0, Lcom/android/server/TigerSskdsService;->TAG:Ljava/lang/String;

    const-string v1, "Sending registration request."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/TigerSskdsService;->executeTask(Z)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/server/TigerSskdsService;->TAG:Ljava/lang/String;

    const-string v1, "Task already exists."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized networkUnavailable()V
    .locals 2

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/android/server/TigerSskdsService;->TAG:Ljava/lang/String;

    const-string v1, "Network is unavailable."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/TigerSskdsService;->mTask:Lcom/samsung/android/service/TigerSskdsService/networking/SendTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/TigerSskdsService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/TigerSskdsService;->mTask:Lcom/samsung/android/service/TigerSskdsService/networking/SendTask;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/TigerSskdsService;->mTask:Lcom/samsung/android/service/TigerSskdsService/networking/SendTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public resetTA()V
    .locals 3

    sget-object v0, Lcom/android/server/TigerSskdsService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "resetTA clear sfs"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/TigerSskdsService;->mSskdsDevice:Lcom/samsung/android/service/TigerSskdsService/SskdsDevice;

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/server/TigerSskdsService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setup sskds device"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/samsung/android/service/TigerSskdsService/SskdsDevice;

    invoke-direct {v0}, Lcom/samsung/android/service/TigerSskdsService/SskdsDevice;-><init>()V

    iput-object v0, p0, Lcom/android/server/TigerSskdsService;->mSskdsDevice:Lcom/samsung/android/service/TigerSskdsService/SskdsDevice;

    :cond_0
    iget-object v0, p0, Lcom/android/server/TigerSskdsService;->mSskdsDevice:Lcom/samsung/android/service/TigerSskdsService/SskdsDevice;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/TigerSskdsService;->mSskdsDevice:Lcom/samsung/android/service/TigerSskdsService/SskdsDevice;

    invoke-virtual {v0}, Lcom/samsung/android/service/TigerSskdsService/SskdsDevice;->clearSFS()V

    invoke-virtual {p0}, Lcom/android/server/TigerSskdsService;->isNetworkAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/TigerSskdsService;->networkAvailable()V

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/TigerSskdsService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/TigerSskdsService;->mInternetStatusReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_2
    :goto_0
    return-void
.end method

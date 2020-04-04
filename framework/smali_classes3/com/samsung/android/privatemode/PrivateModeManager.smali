.class public Lcom/samsung/android/privatemode/PrivateModeManager;
.super Ljava/lang/Object;
.source "PrivateModeManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# static fields
.field public static final ACTION_PRIVATE_MODE_OFF:Ljava/lang/String; = "com.samsung.android.intent.action.PRIVATE_MODE_OFF"

.field public static final ACTION_PRIVATE_MODE_ON:Ljava/lang/String; = "com.samsung.android.intent.action.PRIVATE_MODE_ON"

.field public static final CANCELLED:I = 0x3

.field private static final DEBUG:Z = true

.field public static final ERROR_INTERNAL:I = 0x15

.field private static final ERROR_MSG_SERVICE_NOT_FOUND:Ljava/lang/String; = "PrivateMode Service is not running!"

.field public static final MOUNTED:I = 0x1

.field public static final PREPARED:I = 0x0

.field private static final PRIVATE_PATH:Ljava/lang/String; = "/storage/Private"

.field public static final PROPERTY_KEY_PRIVATE_MODE:Ljava/lang/String; = "sys.samsung.personalpage.mode"

.field private static final TAG:Ljava/lang/String; = "PPS_PrivateModeManager"

.field public static final UNMOUNTED:I = 0x2

.field private static mContext:Landroid/content/Context;

.field private static mHandler:Landroid/os/Handler;

.field private static mIsServiceBind:Z

.field private static mPrivateClient:Lcom/samsung/android/privatemode/IPrivateModeClient;

.field private static mService:Lcom/samsung/android/privatemode/IPrivateModeManager;

.field private static sInstance:Lcom/samsung/android/privatemode/PrivateModeManager;

.field private static versionPrivatemode:I


# instance fields
.field private mServiceConn:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/privatemode/PrivateModeManager;->mService:Lcom/samsung/android/privatemode/IPrivateModeManager;

    sput-object v0, Lcom/samsung/android/privatemode/PrivateModeManager;->sInstance:Lcom/samsung/android/privatemode/PrivateModeManager;

    sput-object v0, Lcom/samsung/android/privatemode/PrivateModeManager;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    sput-boolean v1, Lcom/samsung/android/privatemode/PrivateModeManager;->mIsServiceBind:Z

    sput-object v0, Lcom/samsung/android/privatemode/PrivateModeManager;->mPrivateClient:Lcom/samsung/android/privatemode/IPrivateModeClient;

    const/4 v0, -0x1

    sput v0, Lcom/samsung/android/privatemode/PrivateModeManager;->versionPrivatemode:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Handler;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/privatemode/PrivateModeManager;->mServiceConn:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic access$002(Z)Z
    .locals 0

    sput-boolean p0, Lcom/samsung/android/privatemode/PrivateModeManager;->mIsServiceBind:Z

    return p0
.end method

.method static synthetic access$102(Lcom/samsung/android/privatemode/IPrivateModeManager;)Lcom/samsung/android/privatemode/IPrivateModeManager;
    .locals 0

    sput-object p0, Lcom/samsung/android/privatemode/PrivateModeManager;->mService:Lcom/samsung/android/privatemode/IPrivateModeManager;

    return-object p0
.end method

.method static synthetic access$200()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lcom/samsung/android/privatemode/PrivateModeManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300()Lcom/samsung/android/privatemode/IPrivateModeClient;
    .locals 1

    sget-object v0, Lcom/samsung/android/privatemode/PrivateModeManager;->mPrivateClient:Lcom/samsung/android/privatemode/IPrivateModeClient;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/privatemode/PrivateModeManager;Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/privatemode/PrivateModeManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    return-void
.end method

.method private declared-synchronized bindPrivateModeManager()V
    .locals 4

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/samsung/android/privatemode/PrivateModeManager;->mService:Lcom/samsung/android/privatemode/IPrivateModeManager;

    if-nez v0, :cond_0

    const-string v0, "PPS_PrivateModeManager"

    const-string v1, "bindPrivateModeManager called"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/samsung/android/privatemode/PrivateModeManager$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/privatemode/PrivateModeManager$2;-><init>(Lcom/samsung/android/privatemode/PrivateModeManager;)V

    iput-object v0, p0, Lcom/samsung/android/privatemode/PrivateModeManager;->mServiceConn:Landroid/content/ServiceConnection;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.personalpage.service.PersonalPageService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.samsung.android.personalpage.service"

    const-string v3, "com.samsung.android.personalpage.service.PersonalPageService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    sget-object v1, Lcom/samsung/android/privatemode/PrivateModeManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/privatemode/PrivateModeManager;->mServiceConn:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "PPS_PrivateModeManager"

    const-string v2, "bindService: OK"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
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

.method public static declared-synchronized getInstance(Landroid/content/Context;Lcom/samsung/android/privatemode/IPrivateModeClient;)Lcom/samsung/android/privatemode/PrivateModeManager;
    .locals 1

    const-class v0, Lcom/samsung/android/privatemode/PrivateModeManager;

    monitor-enter v0

    monitor-exit v0

    const/4 v0, 0x0

    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;Lcom/samsung/android/privatemode/PrivateModeListener;)Lcom/samsung/android/privatemode/PrivateModeManager;
    .locals 3

    const-class v0, Lcom/samsung/android/privatemode/PrivateModeManager;

    monitor-enter v0

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/samsung/android/privatemode/PrivateModeListener;->getClient()Lcom/samsung/android/privatemode/IPrivateModeClient;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/samsung/android/privatemode/PrivateModeManager;->getInstance(Landroid/content/Context;Lcom/samsung/android/privatemode/IPrivateModeClient;)Lcom/samsung/android/privatemode/PrivateModeManager;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :cond_1
    :goto_0
    :try_start_1
    const-string v1, "PPS_PrivateModeManager"

    const-string v2, "getInstance: context or listener is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static getPrivateStorageDir(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/privatemode/SemPrivateModeManager;->getPrivateStoragePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static isKnoxMode(Landroid/content/Context;)Z
    .locals 5

    const/4 v0, -0x1

    :try_start_0
    const-string/jumbo v1, "isKnoxMode"

    invoke-static {p0, v1}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxInfoForApp(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "2.0"

    const-string/jumbo v3, "version"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "true"

    const-string/jumbo v3, "isKnoxMode"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    const/4 v0, 0x2

    :cond_0
    :goto_0
    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "PPS_PrivateModeManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "not call getKnoxInfoForApp."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    move-exception v1

    const-string v2, "PPS_PrivateModeManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "not call com.samsung.android.knox.SemPersonaManager;."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "sec_container_"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    if-lez v0, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    return v1
.end method

.method public static isM2PActivating()Z
    .locals 2

    invoke-static {}, Lcom/samsung/android/privatemode/SemPrivateModeManager;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isPrivateMode()Z
    .locals 2

    invoke-static {}, Lcom/samsung/android/privatemode/SemPrivateModeManager;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isPrivateStorageMounted(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/privatemode/SemPrivateModeManager;->isPrivateStorageMounted(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static isReady(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/privatemode/SemPrivateModeManager;->isPrivateModeReady(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 4

    const-string v0, "PPS_PrivateModeManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": failed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p3, :cond_0

    const-string v2, ""

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private unBindPrivateModeManager()V
    .locals 3

    const-string v0, "PPS_PrivateModeManager"

    const-string/jumbo v1, "unBindPrivateModeManager called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/samsung/android/privatemode/PrivateModeManager;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/android/privatemode/PrivateModeManager;->mService:Lcom/samsung/android/privatemode/IPrivateModeManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/privatemode/PrivateModeManager;->mServiceConn:Landroid/content/ServiceConnection;

    if-eqz v1, :cond_0

    const-string v1, "PPS_PrivateModeManager"

    const-string/jumbo v2, "unbindService called"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/samsung/android/privatemode/PrivateModeManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/privatemode/PrivateModeManager;->mServiceConn:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v1, 0x0

    sput-boolean v1, Lcom/samsung/android/privatemode/PrivateModeManager;->mIsServiceBind:Z

    sput-object v0, Lcom/samsung/android/privatemode/PrivateModeManager;->mService:Lcom/samsung/android/privatemode/IPrivateModeManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v2, "unBindPrivateModeManager"

    invoke-direct {p0, v2, v1, v0}, Lcom/samsung/android/privatemode/PrivateModeManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    const-string v0, "PPS_PrivateModeManager"

    const-string v1, "====== binderDied ====="

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/privatemode/PrivateModeManager;->mPrivateClient:Lcom/samsung/android/privatemode/IPrivateModeClient;

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "PPS_PrivateModeManager"

    const-string v1, "binderDied, onStateChange : ERROR_INTERNAL "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/privatemode/PrivateModeManager;->mPrivateClient:Lcom/samsung/android/privatemode/IPrivateModeClient;

    const/16 v1, 0x15

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/privatemode/IPrivateModeClient;->onStateChange(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public registerClient(Lcom/samsung/android/privatemode/IPrivateModeClient;)Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public registerClient(Lcom/samsung/android/privatemode/PrivateModeListener;)Landroid/os/IBinder;
    .locals 3

    if-nez p1, :cond_0

    const-string/jumbo v0, "registerClient"

    const-string/jumbo v1, "listener is null"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v1}, Lcom/samsung/android/privatemode/PrivateModeManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    return-object v2

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/privatemode/PrivateModeListener;->getClient()Lcom/samsung/android/privatemode/IPrivateModeClient;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/privatemode/PrivateModeManager;->registerClient(Lcom/samsung/android/privatemode/IPrivateModeClient;)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public unregisterClient(Landroid/os/IBinder;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public unregisterClient(Landroid/os/IBinder;Z)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

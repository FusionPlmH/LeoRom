.class public final Lcom/android/settings/development/GPUWatchService;
.super Landroid/app/Service;
.source "GPUWatchService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/development/GPUWatchService$SemDvfsSet;
    }
.end annotation


# instance fields
.field private final dvfs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/settings/development/GPUWatchService$SemDvfsSet;",
            ">;"
        }
    .end annotation
.end field

.field private isGameSdkInited:Z

.field private sdhmService:Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;

.field private tokenSiop:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "hwobs"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/development/GPUWatchService;->sdhmService:Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/settings/development/GPUWatchService;->tokenSiop:Landroid/os/IBinder;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/development/GPUWatchService;->isGameSdkInited:Z

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/settings/development/GPUWatchService;->dvfs:Ljava/util/HashMap;

    return-void
.end method

.method private acquireGameSdkMaxlock(II)Z
    .locals 4

    iget-boolean v0, p0, Lcom/android/settings/development/GPUWatchService;->isGameSdkInited:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "fnAcquireGameSdkMaxlock: GameSdk was not inited"

    invoke-static {v0}, Lcom/android/settings/development/GPUWatchService;->log(Ljava/lang/String;)V

    return v1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/development/GPUWatchService;->sdhmService:Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;

    invoke-interface {v0, p1, p2}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;->acquireGameSdkMaxlock(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "acquireGameSdkMaxlock fail: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/development/GPUWatchService;->log(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return v1
.end method

.method private destroyGameSdkMaxlock()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/settings/development/GPUWatchService;->isGameSdkInited:Z

    if-nez v0, :cond_0

    const-string v0, "destroyGameSdkMaxlock: GameSdk was not inited"

    invoke-static {v0}, Lcom/android/settings/development/GPUWatchService;->log(Ljava/lang/String;)V

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/development/GPUWatchService;->sdhmService:Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;

    invoke-interface {v0}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;->destroyGameSdkMaxlock()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "destroyGameSdkMaxlock fail: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/development/GPUWatchService;->log(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private fixClock(IILjava/lang/String;)Z
    .locals 4

    iget-object v0, p0, Lcom/android/settings/development/GPUWatchService;->dvfs:Ljava/util/HashMap;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/development/GPUWatchService$SemDvfsSet;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    new-instance v2, Lcom/android/settings/development/GPUWatchService$SemDvfsSet;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/settings/development/GPUWatchService$SemDvfsSet;-><init>(Lcom/android/settings/development/GPUWatchService$1;)V

    move-object v0, v2

    const/16 v2, 0xc

    invoke-static {p0, p3, v2}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v2

    iput-object v2, v0, Lcom/android/settings/development/GPUWatchService$SemDvfsSet;->mSemDvfsCpuMin:Lcom/samsung/android/os/SemDvfsManager;

    const/16 v2, 0xd

    invoke-static {p0, p3, v2}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v2

    iput-object v2, v0, Lcom/android/settings/development/GPUWatchService$SemDvfsSet;->mSemDvfsCpuMax:Lcom/samsung/android/os/SemDvfsManager;

    const/16 v2, 0x10

    invoke-static {p0, p3, v2}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v2

    iput-object v2, v0, Lcom/android/settings/development/GPUWatchService$SemDvfsSet;->mSemDvfsGpuMin:Lcom/samsung/android/os/SemDvfsManager;

    const/16 v2, 0x11

    invoke-static {p0, p3, v2}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v2

    iput-object v2, v0, Lcom/android/settings/development/GPUWatchService$SemDvfsSet;->mSemDvfsGpuMax:Lcom/samsung/android/os/SemDvfsManager;

    iget-object v2, p0, Lcom/android/settings/development/GPUWatchService;->dvfs:Ljava/util/HashMap;

    invoke-virtual {v2, p3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-boolean v2, v0, Lcom/android/settings/development/GPUWatchService$SemDvfsSet;->isAcquired:Z

    if-eqz v2, :cond_1

    const-string v2, "fixClock: already acquired"

    invoke-static {v2}, Lcom/android/settings/development/GPUWatchService;->log(Ljava/lang/String;)V

    return v1

    :cond_1
    :goto_0
    iget-object v2, v0, Lcom/android/settings/development/GPUWatchService$SemDvfsSet;->mSemDvfsCpuMin:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v2, p1}, Lcom/samsung/android/os/SemDvfsManager;->setDvfsValue(I)V

    iget-object v2, v0, Lcom/android/settings/development/GPUWatchService$SemDvfsSet;->mSemDvfsCpuMax:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v2, p1}, Lcom/samsung/android/os/SemDvfsManager;->setDvfsValue(I)V

    iget-object v2, v0, Lcom/android/settings/development/GPUWatchService$SemDvfsSet;->mSemDvfsGpuMin:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v2, p2}, Lcom/samsung/android/os/SemDvfsManager;->setDvfsValue(I)V

    iget-object v2, v0, Lcom/android/settings/development/GPUWatchService$SemDvfsSet;->mSemDvfsGpuMax:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v2, p2}, Lcom/samsung/android/os/SemDvfsManager;->setDvfsValue(I)V

    iget-object v2, v0, Lcom/android/settings/development/GPUWatchService$SemDvfsSet;->mSemDvfsCpuMin:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v2}, Lcom/samsung/android/os/SemDvfsManager;->acquire()V

    iget-object v2, v0, Lcom/android/settings/development/GPUWatchService$SemDvfsSet;->mSemDvfsCpuMax:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v2}, Lcom/samsung/android/os/SemDvfsManager;->acquire()V

    iget-object v2, v0, Lcom/android/settings/development/GPUWatchService$SemDvfsSet;->mSemDvfsGpuMin:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v2}, Lcom/samsung/android/os/SemDvfsManager;->acquire()V

    iget-object v2, v0, Lcom/android/settings/development/GPUWatchService$SemDvfsSet;->mSemDvfsGpuMax:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v2}, Lcom/samsung/android/os/SemDvfsManager;->acquire()V

    iput-boolean v1, v0, Lcom/android/settings/development/GPUWatchService$SemDvfsSet;->isAcquired:Z

    return v1
.end method

.method private fnFixClock(IILjava/lang/String;)Z
    .locals 1

    const/16 v0, 0x64

    invoke-direct {p0, v0, v0}, Lcom/android/settings/development/GPUWatchService;->acquireGameSdkMaxlock(II)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/development/GPUWatchService;->fixClock(IILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private fnUnfixClock(Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/development/GPUWatchService;->releaseGameSdkMaxlock()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/settings/development/GPUWatchService;->unfixClock(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private initGameSdk()V
    .locals 5

    new-instance v0, Lcom/android/settings/development/GPUWatchService$1;

    invoke-direct {v0, p0}, Lcom/android/settings/development/GPUWatchService$1;-><init>(Lcom/android/settings/development/GPUWatchService;)V

    const-string v1, "sdhms"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v2, "initGameSdk: Can\'t find \'sdhms\' service"

    invoke-static {v2}, Lcom/android/settings/development/GPUWatchService;->log(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {v1}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/development/GPUWatchService;->sdhmService:Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;

    :try_start_0
    iget-object v2, p0, Lcom/android/settings/development/GPUWatchService;->sdhmService:Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;

    iget-object v3, p0, Lcom/android/settings/development/GPUWatchService;->tokenSiop:Landroid/os/IBinder;

    invoke-interface {v0}, Landroid/os/IRemoteCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;->initGameSdkMaxlock(Landroid/os/IBinder;Landroid/os/IBinder;)V

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/settings/development/GPUWatchService;->isGameSdkInited:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initGameSdk: initGameSdkMaxlock fail: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/development/GPUWatchService;->log(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "hwobsj"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private native nStart()V
.end method

.method private releaseGameSdkMaxlock()Z
    .locals 4

    iget-boolean v0, p0, Lcom/android/settings/development/GPUWatchService;->isGameSdkInited:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "fnReleaseGameSdkMaxlock: GameSdk was not inited"

    invoke-static {v0}, Lcom/android/settings/development/GPUWatchService;->log(Ljava/lang/String;)V

    return v1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/development/GPUWatchService;->sdhmService:Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;

    invoke-interface {v0}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;->releaseGameSdkMaxlock()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "releaseGameSdkMaxlock fail: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/development/GPUWatchService;->log(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return v1
.end method

.method public static start(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/development/GPUWatchService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public static stop(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/development/GPUWatchService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    return-void
.end method

.method private unfixClock(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/settings/development/GPUWatchService;->dvfs:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/development/GPUWatchService$SemDvfsSet;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-boolean v2, v0, Lcom/android/settings/development/GPUWatchService$SemDvfsSet;->isAcquired:Z

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, v0, Lcom/android/settings/development/GPUWatchService$SemDvfsSet;->mSemDvfsCpuMin:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v2}, Lcom/samsung/android/os/SemDvfsManager;->release()V

    iget-object v2, v0, Lcom/android/settings/development/GPUWatchService$SemDvfsSet;->mSemDvfsCpuMax:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v2}, Lcom/samsung/android/os/SemDvfsManager;->release()V

    iget-object v2, v0, Lcom/android/settings/development/GPUWatchService$SemDvfsSet;->mSemDvfsGpuMin:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v2}, Lcom/samsung/android/os/SemDvfsManager;->release()V

    iget-object v2, v0, Lcom/android/settings/development/GPUWatchService$SemDvfsSet;->mSemDvfsGpuMax:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v2}, Lcom/samsung/android/os/SemDvfsManager;->release()V

    iput-boolean v1, v0, Lcom/android/settings/development/GPUWatchService$SemDvfsSet;->isAcquired:Z

    const/4 v1, 0x1

    return v1

    :cond_1
    :goto_0
    const-string/jumbo v2, "unfixClock: not acquired"

    invoke-static {v2}, Lcom/android/settings/development/GPUWatchService;->log(Ljava/lang/String;)V

    return v1
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 4

    new-instance v0, Landroid/app/NotificationChannel;

    const-string v1, "hwobs_channel"

    const-string v2, "GPUWatch Service"

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    const-string v1, "notification"

    invoke-virtual {p0, v1}, Lcom/android/settings/development/GPUWatchService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    invoke-virtual {v1, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    new-instance v1, Landroid/app/Notification$Builder;

    const-string v2, "hwobs_channel"

    invoke-direct {v1, p0, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    const/16 v2, 0x11d7

    invoke-virtual {p0, v2, v1}, Lcom/android/settings/development/GPUWatchService;->startForeground(ILandroid/app/Notification;)V

    invoke-direct {p0}, Lcom/android/settings/development/GPUWatchService;->initGameSdk()V

    invoke-direct {p0}, Lcom/android/settings/development/GPUWatchService;->nStart()V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    invoke-direct {p0}, Lcom/android/settings/development/GPUWatchService;->destroyGameSdkMaxlock()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

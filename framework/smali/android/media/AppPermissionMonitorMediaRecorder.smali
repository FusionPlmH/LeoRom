.class public Landroid/media/AppPermissionMonitorMediaRecorder;
.super Ljava/lang/Object;
.source "AppPermissionMonitorMediaRecorder.java"


# static fields
.field private static final AUDIO_FORMAT:I = 0x2

.field private static final CACHE_SIZE:I = 0xa

.field private static final CTRL_DONE_REC_MEDIA:I = 0x400

.field private static final CTRL_SAVE_MEDIAPATH:I = 0x200

.field private static final DEFAULT_MONITOR:Ljava/lang/String; = "5244743"

.field private static final LOG_TAG_APM:Ljava/lang/String; = "Media_APM : "

.field private static final TIME_INTERVAL:J = 0xea60L

.field private static final VIDEO_FORMAT:I = 0x4


# instance fields
.field private mAPM:Landroid/os/IPermissionMonitor;

.field private mAppPermMonitor:Ljava/lang/String;

.field private mCallingCacheDisplay:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mIsAppPermissionMonitorSupported:Z

.field private mIsMonitoredFeature:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Landroid/media/AppPermissionMonitorMediaRecorder;->mCallingCacheDisplay:Landroid/util/LruCache;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/AppPermissionMonitorMediaRecorder;->mAPM:Landroid/os/IPermissionMonitor;

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_FRAMEWORK_SUPPORT_APP_PERMISSION_MONITOR"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/media/AppPermissionMonitorMediaRecorder;->mIsAppPermissionMonitorSupported:Z

    return-void
.end method

.method private isCalledPackage(Ljava/lang/String;)Z
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Landroid/media/AppPermissionMonitorMediaRecorder;->isExpired(Ljava/lang/String;J)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/media/AppPermissionMonitorMediaRecorder;->mCallingCacheDisplay:Landroid/util/LruCache;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "Media_APM : "

    const-string v3, "isCalledPackage return false"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return v2

    :cond_0
    const-string v2, "Media_APM : "

    const-string v3, "isCalledPackage return true"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    return v2
.end method

.method private isExpired(Ljava/lang/String;J)Z
    .locals 5

    iget-object v0, p0, Landroid/media/AppPermissionMonitorMediaRecorder;->mCallingCacheDisplay:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sub-long v1, p2, v1

    const-wide/32 v3, 0xea60

    cmp-long v1, v1, v3

    if-gez v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sub-long/2addr v1, p2

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method


# virtual methods
.method public sendEnforcingForAppPermissionMonitor(II)V
    .locals 5

    iget-boolean v0, p0, Landroid/media/AppPermissionMonitorMediaRecorder;->mIsAppPermissionMonitorSupported:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "persist.app.permission.monitor"

    const-string v1, "5244743"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/AppPermissionMonitorMediaRecorder;->mAppPermMonitor:Ljava/lang/String;

    const/4 v0, 0x4

    :try_start_0
    iget-object v1, p0, Landroid/media/AppPermissionMonitorMediaRecorder;->mAppPermMonitor:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    and-int/2addr v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Landroid/media/AppPermissionMonitorMediaRecorder;->mIsMonitoredFeature:Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "Media_APM : "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception notify permission monitor service for blocking access nfe = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iget-boolean v1, p0, Landroid/media/AppPermissionMonitorMediaRecorder;->mIsMonitoredFeature:Z

    if-eqz v1, :cond_2

    const/16 v1, 0x2710

    if-lt p2, v1, :cond_2

    :try_start_1
    iget-object v1, p0, Landroid/media/AppPermissionMonitorMediaRecorder;->mAPM:Landroid/os/IPermissionMonitor;

    if-nez v1, :cond_1

    const-string/jumbo v1, "permission.monitor"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IPermissionMonitor$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPermissionMonitor;

    move-result-object v1

    iput-object v1, p0, Landroid/media/AppPermissionMonitorMediaRecorder;->mAPM:Landroid/os/IPermissionMonitor;

    :cond_1
    iget-object v1, p0, Landroid/media/AppPermissionMonitorMediaRecorder;->mAPM:Landroid/os/IPermissionMonitor;

    invoke-interface {v1, p2, p1, v0}, Landroid/os/IPermissionMonitor;->sendAPMEnforcing(III)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    const-string v1, "Media_APM : "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception notify permission monitor service for blocking access ex = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :catch_2
    move-exception v0

    const-string v1, "Media_APM : "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception notify permission monitor service for blocking access re = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    nop

    :cond_2
    :goto_3
    return-void
.end method

.method public sendMediaNotificationForAppPermissionMonitor(II)V
    .locals 5

    iget-boolean v0, p0, Landroid/media/AppPermissionMonitorMediaRecorder;->mIsAppPermissionMonitorSupported:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "persist.app.permission.monitor"

    const-string v1, "5244743"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/AppPermissionMonitorMediaRecorder;->mAppPermMonitor:Ljava/lang/String;

    const/16 v0, 0x400

    :try_start_0
    iget-object v1, p0, Landroid/media/AppPermissionMonitorMediaRecorder;->mAppPermMonitor:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    and-int/2addr v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Landroid/media/AppPermissionMonitorMediaRecorder;->mIsMonitoredFeature:Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "Media_APM : "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception notify permission monitor service about access from CTRL_SAVE_MEDIAPATH nfe = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iget-boolean v1, p0, Landroid/media/AppPermissionMonitorMediaRecorder;->mIsMonitoredFeature:Z

    if-eqz v1, :cond_2

    const/16 v1, 0x2710

    if-lt p2, v1, :cond_2

    :try_start_1
    iget-object v1, p0, Landroid/media/AppPermissionMonitorMediaRecorder;->mAPM:Landroid/os/IPermissionMonitor;

    if-nez v1, :cond_1

    const-string/jumbo v1, "permission.monitor"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IPermissionMonitor$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPermissionMonitor;

    move-result-object v1

    iput-object v1, p0, Landroid/media/AppPermissionMonitorMediaRecorder;->mAPM:Landroid/os/IPermissionMonitor;

    :cond_1
    iget-object v1, p0, Landroid/media/AppPermissionMonitorMediaRecorder;->mAPM:Landroid/os/IPermissionMonitor;

    invoke-interface {v1, p2, p1, v0}, Landroid/os/IPermissionMonitor;->sendAPMNotification(III)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    const-string v1, "Media_APM : "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception notify permission monitor service about access from CTRL_SAVE_MEDIAPATH ex = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :catch_2
    move-exception v0

    const-string v1, "Media_APM : "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception notify permission monitor service about access from CTRL_SAVE_MEDIAPATH re = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    nop

    :cond_2
    :goto_3
    return-void
.end method

.method public sendMediaNotificationForAppPermissionMonitor(IIILjava/lang/String;)V
    .locals 8

    iget-boolean v0, p0, Landroid/media/AppPermissionMonitorMediaRecorder;->mIsAppPermissionMonitorSupported:Z

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/media/AppPermissionMonitorMediaRecorder;->isCalledPackage(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "persist.app.permission.monitor"

    const-string v2, "5244743"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/media/AppPermissionMonitorMediaRecorder;->mAppPermMonitor:Ljava/lang/String;

    const/4 v1, 0x1

    :try_start_0
    iget-object v2, p0, Landroid/media/AppPermissionMonitorMediaRecorder;->mAppPermMonitor:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    and-int/lit16 v2, v2, 0x200

    if-lez v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Landroid/media/AppPermissionMonitorMediaRecorder;->mIsMonitoredFeature:Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v3, "Media_APM : "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception notify permission monitor service about access from CTRL_SAVE_MEDIAPATH nfe = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iget-boolean v2, p0, Landroid/media/AppPermissionMonitorMediaRecorder;->mIsMonitoredFeature:Z

    if-eqz v2, :cond_3

    const/16 v2, 0x2710

    if-lt p2, v2, :cond_3

    :try_start_1
    iget-object v2, p0, Landroid/media/AppPermissionMonitorMediaRecorder;->mAPM:Landroid/os/IPermissionMonitor;

    if-nez v2, :cond_1

    const-string/jumbo v2, "permission.monitor"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IPermissionMonitor$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPermissionMonitor;

    move-result-object v2

    iput-object v2, p0, Landroid/media/AppPermissionMonitorMediaRecorder;->mAPM:Landroid/os/IPermissionMonitor;

    :cond_1
    if-ne p3, v1, :cond_2

    iget-object v2, p0, Landroid/media/AppPermissionMonitorMediaRecorder;->mAPM:Landroid/os/IPermissionMonitor;

    const/4 v6, 0x4

    const/16 v7, 0x200

    move v3, p2

    move v4, p1

    move-object v5, p4

    invoke-interface/range {v2 .. v7}, Landroid/os/IPermissionMonitor;->sendAPMMediaNotification(IILjava/lang/String;II)V

    goto :goto_2

    :cond_2
    iget-object v2, p0, Landroid/media/AppPermissionMonitorMediaRecorder;->mAPM:Landroid/os/IPermissionMonitor;

    const/4 v6, 0x2

    const/16 v7, 0x200

    move v3, p2

    move v4, p1

    move-object v5, p4

    invoke-interface/range {v2 .. v7}, Landroid/os/IPermissionMonitor;->sendAPMMediaNotification(IILjava/lang/String;II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    const-string v2, "Media_APM : "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception notify permission monitor service about access from CTRL_SAVE_MEDIAPATH ex = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :catch_2
    move-exception v1

    const-string v2, "Media_APM : "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception notify permission monitor service about access from CTRL_SAVE_MEDIAPATH re = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    nop

    :cond_3
    :goto_3
    return-void
.end method

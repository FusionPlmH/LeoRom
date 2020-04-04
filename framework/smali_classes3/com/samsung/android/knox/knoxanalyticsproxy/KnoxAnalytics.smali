.class public Lcom/samsung/android/knox/knoxanalyticsproxy/KnoxAnalytics;
.super Ljava/lang/Object;
.source "KnoxAnalytics.java"


# static fields
.field public static final KNOXANALYTICS_PROXY_SERVICE:Ljava/lang/String; = "knox_analytics_proxy"

.field private static TAG:Ljava/lang/String;

.field private static mService:Lcom/samsung/android/knox/knoxanalyticsproxy/IKnoxAnalyticsProxy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "[KnoxAnalyticsProxySDK] "

    sput-object v0, Lcom/samsung/android/knox/knoxanalyticsproxy/KnoxAnalytics;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getService()Z
    .locals 1

    sget-object v0, Lcom/samsung/android/knox/knoxanalyticsproxy/KnoxAnalytics;->mService:Lcom/samsung/android/knox/knoxanalyticsproxy/IKnoxAnalyticsProxy;

    if-nez v0, :cond_0

    const-string/jumbo v0, "knox_analytics_proxy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/knoxanalyticsproxy/IKnoxAnalyticsProxy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/knoxanalyticsproxy/IKnoxAnalyticsProxy;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/knoxanalyticsproxy/KnoxAnalytics;->mService:Lcom/samsung/android/knox/knoxanalyticsproxy/IKnoxAnalyticsProxy;

    :cond_0
    sget-object v0, Lcom/samsung/android/knox/knoxanalyticsproxy/KnoxAnalytics;->mService:Lcom/samsung/android/knox/knoxanalyticsproxy/IKnoxAnalyticsProxy;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static log(Lcom/samsung/android/knox/knoxanalyticsproxy/KnoxAnalyticsData;)V
    .locals 5

    sget-object v0, Lcom/samsung/android/knox/knoxanalyticsproxy/KnoxAnalytics;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/knox/knoxanalyticsproxy/KnoxAnalyticsData;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/knox/knoxanalyticsproxy/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/knoxanalyticsproxy/KnoxAnalytics;->getService()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/knox/knoxanalyticsproxy/KnoxAnalytics;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "log(): service not running!"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/knoxanalyticsproxy/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    sget-object v2, Lcom/samsung/android/knox/knoxanalyticsproxy/KnoxAnalytics;->mService:Lcom/samsung/android/knox/knoxanalyticsproxy/IKnoxAnalyticsProxy;

    invoke-interface {v2, p0}, Lcom/samsung/android/knox/knoxanalyticsproxy/IKnoxAnalyticsProxy;->log(Lcom/samsung/android/knox/knoxanalyticsproxy/KnoxAnalyticsData;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    :catchall_0
    move-exception v2

    goto :goto_2

    :catch_0
    move-exception v2

    :try_start_1
    sget-object v3, Lcom/samsung/android/knox/knoxanalyticsproxy/KnoxAnalytics;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "log(): Security Exception in log - "

    invoke-static {v3, v4, v2}, Lcom/samsung/android/knox/knoxanalyticsproxy/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/knoxanalyticsproxy/KnoxAnalytics;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "log(): Remote Exception in log - "

    invoke-static {v3, v4, v2}, Lcom/samsung/android/knox/knoxanalyticsproxy/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    :goto_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

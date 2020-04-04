.class public Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;
.super Ljava/lang/Object;
.source "TrafficPresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter$NetworkStatsServiceForceUpdateTask;
    }
.end annotation


# static fields
.field private static instatnce:Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field

.field private static mContext:Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mSession:Landroid/net/INetworkStatsSession;

.field private mSharePrefs:Landroid/content/SharedPreferences;

.field private final mStatsService:Landroid/net/INetworkStatsService;

.field private mSubId:I

.field private mTrafficMode:Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficMode;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;->mContext:Landroid/content/Context;

    sput-object v0, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;->instatnce:Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "TrafficPresenter"

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;->TAG:Ljava/lang/String;

    const-string v0, "netstats"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/INetworkStatsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStatsService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;->mStatsService:Landroid/net/INetworkStatsService;

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;->mSubId:I

    sput-object p1, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;->initTrafficPreset()V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;)Landroid/net/INetworkStatsService;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;->mStatsService:Landroid/net/INetworkStatsService;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;->instatnce:Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;->instatnce:Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;

    :cond_0
    sget-object v0, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;->instatnce:Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;

    return-object v0
.end method

.method private getSession()Landroid/net/INetworkStatsSession;
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;->mSession:Landroid/net/INetworkStatsSession;

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;->mStatsService:Landroid/net/INetworkStatsService;

    invoke-interface {v0}, Landroid/net/INetworkStatsService;->openSession()Landroid/net/INetworkStatsSession;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;->mSession:Landroid/net/INetworkStatsSession;

    new-instance v0, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter$NetworkStatsServiceForceUpdateTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter$NetworkStatsServiceForceUpdateTask;-><init>(Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter$1;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter$NetworkStatsServiceForceUpdateTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "TrafficPresenter"

    const-string v2, "Failed to open stats session"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v1, "TrafficPresenter"

    const-string v2, "Failed to open stats session"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    nop

    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;->mSession:Landroid/net/INetworkStatsSession;

    return-object v0
.end method

.method private initTrafficPreset()V
    .locals 3

    const-string v0, "TrafficPresenter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initTrafficPreset(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficMode;

    invoke-direct {v0}, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficMode;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;->mTrafficMode:Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficMode;

    sget-object v0, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;->mSharePrefs:Landroid/content/SharedPreferences;

    return-void
.end method

.method private updatePreference()V
    .locals 0

    return-void
.end method


# virtual methods
.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 3

    const-string v0, "TrafficPresenter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getBoolean() mSharePrefs : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;->mSharePrefs:Landroid/content/SharedPreferences;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;->mSharePrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getEndTime()J
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;->mTrafficMode:Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficMode;

    invoke-virtual {v0}, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficMode;->getmEndTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getFreePercent()F
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;->mTrafficMode:Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficMode;

    invoke-virtual {v0}, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficMode;->getmFreePercent()F

    move-result v0

    return v0
.end method

.method public getFreeWarningValue()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;->mTrafficMode:Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficMode;

    invoke-virtual {v0}, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficMode;->getmFreeWarningValue()I

    move-result v0

    return v0
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;->mSharePrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getIsExceed()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;->mTrafficMode:Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficMode;

    invoke-virtual {v0}, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficMode;->ismIsExceed()Z

    move-result v0

    return v0
.end method

.method public getNetworkPolicyHistory(Landroid/net/NetworkTemplate;)Landroid/net/NetworkStatsHistory;
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;->getSession()Landroid/net/INetworkStatsSession;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/16 v2, 0xa

    :try_start_0
    invoke-interface {v0, p1, v2}, Landroid/net/INetworkStatsSession;->getHistoryForNetwork(Landroid/net/NetworkTemplate;I)Landroid/net/NetworkStatsHistory;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    return-object v1

    :catch_0
    move-exception v2

    return-object v1
.end method

.method public getRealTimeValue(J)J
    .locals 2

    sget-object v0, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/SecSummaryLayoutCHN;->getCurrentTabTemplate(Landroid/content/Context;)Landroid/net/NetworkTemplate;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;->getRealTimeValue(Landroid/net/NetworkTemplate;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getRealTimeValue(Landroid/net/NetworkTemplate;J)J
    .locals 10

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;->getNetworkPolicyHistory(Landroid/net/NetworkTemplate;)Landroid/net/NetworkStatsHistory;

    move-result-object v8

    const/4 v9, 0x0

    if-eqz v8, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;->getStartTime()J

    move-result-wide v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;->getEndTime()J

    move-result-wide v3

    const/4 v7, 0x0

    move-object v0, v8

    move-wide v5, p2

    invoke-virtual/range {v0 .. v7}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v9

    :cond_0
    if-eqz v9, :cond_1

    iget-wide v0, v9, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v2, v9, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long/2addr v0, v2

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public getRemainTraffic()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;->mTrafficMode:Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficMode;

    invoke-virtual {v0}, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficMode;->getmRemainTraffic()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStartTime()J
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;->mTrafficMode:Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficMode;

    invoke-virtual {v0}, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficMode;->getmStartTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;->mSharePrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTodayused()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;->mTrafficMode:Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficMode;

    invoke-virtual {v0}, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficMode;->getmTodayused()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTotalDataBytes()J
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;->mTrafficMode:Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficMode;

    invoke-virtual {v0}, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficMode;->getmTotalDataBytes()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTotalTraffic()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;->mTrafficMode:Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficMode;

    invoke-virtual {v0}, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficMode;->getmTotalTraffic()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUsedTraffic()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;->mTrafficMode:Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficMode;

    invoke-virtual {v0}, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficMode;->getmTrafficUsed()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUsedTrafficBytes()J
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;->mTrafficMode:Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficMode;

    invoke-virtual {v0}, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficMode;->getmTrafficUsedBytes()J

    move-result-wide v0

    return-wide v0
.end method

.method public getWarningPercent()I
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;->getFreeWarningValue()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;->getFreeWarningValue()I

    move-result v0

    rsub-int/lit8 v0, v0, 0x64

    return v0

    :cond_0
    return v1
.end method

.method public getWarningValue()J
    .locals 10

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;->getFreeWarningValue()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;->mSharePrefs:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "middle_real_value"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;->mSubId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    const-string v2, "TrafficPresenter/getWarningValue"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "the middle_real_value is :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;->mTrafficMode:Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficMode;

    invoke-virtual {v2}, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficMode;->getmMiddleData()J

    move-result-wide v2

    iget-object v4, p0, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;->mTrafficMode:Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficMode;

    invoke-virtual {v4}, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficMode;->getmTotalDataBytes()J

    move-result-wide v4

    long-to-double v4, v4

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;->getWarningPercent()I

    move-result v6

    int-to-double v6, v6

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    div-double/2addr v6, v8

    mul-double/2addr v4, v6

    double-to-long v4, v4

    iget-object v6, p0, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;->mTrafficMode:Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficMode;

    invoke-virtual {v6}, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficMode;->getmStartTime()J

    move-result-wide v6

    iget-object v8, p0, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;->mTrafficMode:Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficMode;

    invoke-virtual {v8}, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficMode;->getmMiddleTime()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-gtz v6, :cond_0

    const-string v6, "TrafficPresenter/getWarningValue"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Reset waning value, result = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sub-long v6, v2, v0

    sub-long/2addr v4, v6

    :cond_0
    return-wide v4

    :cond_1
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getlimiValue()J
    .locals 12

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;->mSharePrefs:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "middle_real_value"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;->mSubId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    const-string v4, "TrafficPresenter/getlimiValue"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "the middle_real_value is :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;->mTrafficMode:Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficMode;

    invoke-virtual {v4}, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficMode;->getmMiddleData()J

    move-result-wide v4

    iget-object v6, p0, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;->mTrafficMode:Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficMode;

    invoke-virtual {v6}, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficMode;->getmTotalDataBytes()J

    move-result-wide v6

    iget-object v8, p0, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;->mTrafficMode:Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficMode;

    invoke-virtual {v8}, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficMode;->getmStartTime()J

    move-result-wide v8

    iget-object v10, p0, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;->mTrafficMode:Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficMode;

    invoke-virtual {v10}, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficMode;->getmMiddleTime()J

    move-result-wide v10

    cmp-long v8, v8, v10

    if-gtz v8, :cond_0

    const-string v8, "TrafficPresenter/getlimiValue"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Reset limit value, result = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sub-long v8, v4, v0

    sub-long/2addr v6, v8

    :cond_0
    cmp-long v2, v6, v2

    if-gez v2, :cond_1

    const-wide/16 v6, 0x0

    :cond_1
    return-wide v6
.end method

.method public isPackagedSetted()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;->mTrafficMode:Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficMode;

    invoke-virtual {v0}, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficMode;->ismSettingOn()Z

    move-result v0

    return v0
.end method

.method public putBoolean(Ljava/lang/String;Z)V
    .locals 3

    const-string v0, "TrafficPresenter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "putBoolean() value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "TrafficPresenter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "putBoolean() mSharePrefs : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;->mSharePrefs:Landroid/content/SharedPreferences;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;->mSharePrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public putInt(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;->mSharePrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public putLong(Ljava/lang/String;J)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;->mSharePrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;->mSharePrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public resetTrafficSettings()V
    .locals 4

    sget-object v0, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string v0, "TrafficPresenter"

    const-string v1, "resetTrafficeSettings mContext is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    sget-object v0, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;->resetTrafficSettings(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    goto :goto_2

    :cond_3
    :goto_1
    return-void

    :catch_0
    move-exception v0

    const-string v1, "TrafficPresenter"

    const-string v2, "resetTrafficeSettings cause exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-void
.end method

.method public resetTrafficSettings(I)V
    .locals 11

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;->mSharePrefs:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    const-string v0, "TrafficPresenter"

    const-string v1, "resetTrafficeSettings mSharePrefs is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, "TrafficPresenter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resetTrafficeSettings subId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "max"

    const-string v1, "off"

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;->mSharePrefs:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_1

    const-string v6, "TrafficPresenter"

    const-string v7, "reset preferences"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "set_data_limit"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "max"

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "data_warning_set"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "off"

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "switch_traffic_settings"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "set_package_start_date"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    sget-object v6, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    if-eqz v6, :cond_2

    const-string v7, "TrafficPresenter"

    const-string v8, "reset settings"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "data_used_by_check_time"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "0.00"

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "check_time"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-wide/16 v8, 0x0

    invoke-static {v6, v7, v8, v9}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "middle_real_value"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v8, v9}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "set_data_limit"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "max"

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "data_warning_set"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "off"

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "set_package_start_date"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "switch_traffic_settings"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_2
    return-void
.end method

.method public setPackagedSetted(Z)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;->mTrafficMode:Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficMode;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficMode;->setmSettingOn(Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "switch_traffic_settings"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;->mSubId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setSubId(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;->mSubId:I

    return-void
.end method

.method public updateDataInfomation()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;->updateDataInfomation(Z)V

    return-void
.end method

.method public updateDataInfomation(Z)V
    .locals 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    const-string v0, "TrafficPresenter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateDataInfomation(), isDefaultSIM:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;->mTrafficMode:Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficMode;

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;->mSharePrefs:Landroid/content/SharedPreferences;

    iget v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;->mSubId:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficMode;->getPreferenceValue(Landroid/content/SharedPreferences;I)V

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;->mTrafficMode:Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficMode;

    invoke-virtual {v0}, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficMode;->getTheRealTime()V

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;->mTrafficMode:Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficMode;

    sget-object v1, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;->getTotalDataBytes()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficMode;->setmTotalTraffic(Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    sget-object v1, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageUtils;->getDefaultSubscriptionId(Landroid/content/Context;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/SecSummaryLayoutCHN;->getTemplate(Landroid/content/Context;I)Landroid/net/NetworkTemplate;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;->getNetworkPolicyHistory(Landroid/net/NetworkTemplate;)Landroid/net/NetworkStatsHistory;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/SecSummaryLayoutCHN;->getCurrentTabTemplate(Landroid/content/Context;)Landroid/net/NetworkTemplate;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;->getNetworkPolicyHistory(Landroid/net/NetworkTemplate;)Landroid/net/NetworkStatsHistory;

    move-result-object v0

    :goto_0
    const/4 v7, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;->mTrafficMode:Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficMode;

    sget-object v2, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;->mSharePrefs:Landroid/content/SharedPreferences;

    iget v6, p0, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;->mSubId:I

    move-object v3, v0

    move-object v4, v7

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficMode;->updateDateInfomationInner(Landroid/content/Context;Landroid/net/NetworkStatsHistory;Landroid/net/NetworkStatsHistory$Entry;Landroid/content/SharedPreferences;I)V

    invoke-direct {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;->updatePreference()V

    return-void
.end method

.method public updatePolicyInner(IZ)V
    .locals 12

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "switch_traffic_settings"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "set_data_limit"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "max"

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "data_warning_set"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "off"

    invoke-virtual {p0, v3, v4}, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "restrict_data_check_box"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v1}, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "set_package_start_date"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {p0, v4, v5}, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;->getInt(Ljava/lang/String;I)I

    move-result v4

    sget-object v5, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/SecSummaryLayoutCHN;->getCurrentTabTemplate(Landroid/content/Context;)Landroid/net/NetworkTemplate;

    move-result-object v5

    if-nez p2, :cond_0

    sget-object v6, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;->mContext:Landroid/content/Context;

    invoke-static {v6, p1}, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/SecSummaryLayoutCHN;->getTemplate(Landroid/content/Context;I)Landroid/net/NetworkTemplate;

    move-result-object v5

    :cond_0
    sget-object v6, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v6

    new-instance v7, Lcom/android/settingslib/NetworkPolicyEditor;

    invoke-direct {v7, v6}, Lcom/android/settingslib/NetworkPolicyEditor;-><init>(Landroid/net/NetworkPolicyManager;)V

    invoke-virtual {v7}, Lcom/android/settingslib/NetworkPolicyEditor;->read()V

    const-wide/16 v8, -0x1

    if-eqz v0, :cond_4

    const-string v10, "max"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_3

    if-eqz v3, :cond_1

    const-string v10, "off"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;->getWarningValue()J

    move-result-wide v10

    invoke-virtual {v7, v5, v10, v11}, Lcom/android/settingslib/NetworkPolicyEditor;->setPolicyWarningBytes(Landroid/net/NetworkTemplate;J)V

    goto :goto_0

    :cond_1
    invoke-virtual {v7, v5, v8, v9}, Lcom/android/settingslib/NetworkPolicyEditor;->setPolicyWarningBytes(Landroid/net/NetworkTemplate;J)V

    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;->getlimiValue()J

    move-result-wide v8

    invoke-virtual {v7, v5, v8, v9}, Lcom/android/settingslib/NetworkPolicyEditor;->setPolicyLimitBytes(Landroid/net/NetworkTemplate;J)V

    goto :goto_1

    :cond_2
    invoke-virtual {v7, v5, v8, v9}, Lcom/android/settingslib/NetworkPolicyEditor;->setPolicyLimitBytes(Landroid/net/NetworkTemplate;J)V

    goto :goto_1

    :cond_3
    invoke-virtual {v7, v5, v8, v9}, Lcom/android/settingslib/NetworkPolicyEditor;->setPolicyLimitBytes(Landroid/net/NetworkTemplate;J)V

    invoke-virtual {v7, v5, v8, v9}, Lcom/android/settingslib/NetworkPolicyEditor;->setPolicyWarningBytes(Landroid/net/NetworkTemplate;J)V

    goto :goto_1

    :cond_4
    invoke-virtual {v7, v5, v8, v9}, Lcom/android/settingslib/NetworkPolicyEditor;->setPolicyLimitBytes(Landroid/net/NetworkTemplate;J)V

    invoke-virtual {v7, v5, v8, v9}, Lcom/android/settingslib/NetworkPolicyEditor;->setPolicyWarningBytes(Landroid/net/NetworkTemplate;J)V

    :goto_1
    new-instance v8, Landroid/text/format/Time;

    invoke-direct {v8}, Landroid/text/format/Time;-><init>()V

    iget-object v8, v8, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    invoke-virtual {v7, v5, v4, v8}, Lcom/android/settingslib/NetworkPolicyEditor;->setPolicyCycleDay(Landroid/net/NetworkTemplate;ILjava/lang/String;)V

    return-void
.end method

.method public updateSettingsSystemForSmartManager()V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "data_warning_set"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;->mSubId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "off"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "data_warning_set"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;->mSubId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "set_data_limit"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;->mSubId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "max"

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "set_data_limit"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;->mSubId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;->mTrafficMode:Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficMode;

    sget-object v3, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;->mSubId:I

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficMode;->updateSettingsSystemForSmartManagerInner(Landroid/content/Context;I)V

    return-void
.end method

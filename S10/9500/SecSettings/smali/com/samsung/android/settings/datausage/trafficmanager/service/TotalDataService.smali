.class public Lcom/samsung/android/settings/datausage/trafficmanager/service/TotalDataService;
.super Landroid/app/Service;
.source "TotalDataService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/datausage/trafficmanager/service/TotalDataService$TotalDataStub;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mTrafficPresenter:Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;

.field stub:Lcom/samsung/android/trafficmanager/ITotalData$Stub;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/service/TotalDataService;->stub:Lcom/samsung/android/trafficmanager/ITotalData$Stub;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/datausage/trafficmanager/service/TotalDataService;)J
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/service/TotalDataService;->getTotalUsedData()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$100(Lcom/samsung/android/settings/datausage/trafficmanager/service/TotalDataService;)I
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/service/TotalDataService;->getSubId()I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/samsung/android/settings/datausage/trafficmanager/service/TotalDataService;I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/datausage/trafficmanager/service/TotalDataService;->updateRealPolicy(I)I

    move-result v0

    return v0
.end method

.method private getSubId()I
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/service/TotalDataService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;->hasEnableSimCard(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/service/TotalDataService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/datausage/DataUsageUtils;->getDefaultSubscriptionId(Landroid/content/Context;)I

    move-result v0

    const-string v1, "ITotalDataService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSubId subId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private getTotalUsedData()J
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/service/TotalDataService;->mTrafficPresenter:Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/service/TotalDataService;->mTrafficPresenter:Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;->updateDataInfomation(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/service/TotalDataService;->mTrafficPresenter:Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;->updateSettingsSystemForSmartManager()V

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/service/TotalDataService;->mTrafficPresenter:Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;->getUsedTrafficBytes()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private updateRealPolicy(I)I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/service/TotalDataService;->mTrafficPresenter:Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;->updatePolicyInner(IZ)V

    return v1
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    const-string v0, "ITotalDataService"

    const-string v1, "onBind() called"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/service/TotalDataService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/service/TotalDataService;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/service/TotalDataService;->mTrafficPresenter:Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/service/TotalDataService;->mTrafficPresenter:Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;

    invoke-direct {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/service/TotalDataService;->getSubId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;->setSubId(I)V

    new-instance v0, Lcom/samsung/android/settings/datausage/trafficmanager/service/TotalDataService$TotalDataStub;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/datausage/trafficmanager/service/TotalDataService$TotalDataStub;-><init>(Lcom/samsung/android/settings/datausage/trafficmanager/service/TotalDataService;)V

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/service/TotalDataService;->stub:Lcom/samsung/android/trafficmanager/ITotalData$Stub;

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/service/TotalDataService;->stub:Lcom/samsung/android/trafficmanager/ITotalData$Stub;

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    const-string v0, "ITotalDataService"

    const-string v1, "onDestroy() called"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 2

    const-string v0, "ITotalDataService"

    const-string v1, "onUnbind() called"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/service/TotalDataService;->stub:Lcom/samsung/android/trafficmanager/ITotalData$Stub;

    const/4 v0, 0x1

    return v0
.end method

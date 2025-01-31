.class public Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;
.super Ljava/lang/Object;
.source "DiagMonConfig.java"


# instance fields
.field private mAgreement:Z

.field private mAppVer:Ljava/lang/String;

.field private mAuthorityList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDeviceId:Ljava/lang/String;

.field private mLogList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mServiceId:Ljava/lang/String;

.field private mServiceName:Ljava/lang/String;

.field private mTrackingId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->mAgreement:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->mServiceId:Ljava/lang/String;

    const-string v0, "Samsung Software"

    iput-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->mServiceName:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->mDeviceId:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->mTrackingId:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->mAppVer:Ljava/lang/String;

    iput-object p1, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->mAuthorityList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->mLogList:Ljava/util/List;

    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->setAppVersion()V

    return-void
.end method


# virtual methods
.method public getAgree()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->mAgreement:Z

    return v0
.end method

.method protected getAuthorityList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->mAuthorityList:Ljava/util/List;

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->mDeviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getLogList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->mLogList:Ljava/util/List;

    return-object v0
.end method

.method public getServiceId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->mServiceId:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->mServiceName:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackingId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->mTrackingId:Ljava/lang/String;

    return-object v0
.end method

.method public setAgree(Ljava/lang/String;)Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;
    .locals 4

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    const-string v0, "Y"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "D"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "DIAGMON_AGENT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wrong agreement : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v1, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->mAgreement:Z

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->mAgreement:Z

    goto :goto_1

    :cond_2
    const-string v0, "DIAGMON_AGENT"

    const-string v2, "Empty agreement"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v1, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->mAgreement:Z

    :goto_1
    return-object p0
.end method

.method protected setAppVersion()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/diagmonagent/log/provider/DiagMonUtil;->getPackageVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->mAppVer:Ljava/lang/String;

    return-void
.end method

.method public setAuthorityList(Ljava/lang/String;)Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;
    .locals 3

    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->mAuthorityList:Ljava/util/List;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "com.sec.android.log."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setLogList(Ljava/util/List;)Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->mLogList:Ljava/util/List;

    return-object p0
.end method

.method public setServiceId(Ljava/lang/String;)Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->mServiceId:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->setAuthorityList(Ljava/lang/String;)Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;

    return-object p0
.end method

.method public setTrackingId(Ljava/lang/String;)Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->mTrackingId:Ljava/lang/String;

    return-object p0
.end method

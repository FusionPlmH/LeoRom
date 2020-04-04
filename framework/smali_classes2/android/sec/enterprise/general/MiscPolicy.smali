.class public Landroid/sec/enterprise/general/MiscPolicy;
.super Ljava/lang/Object;
.source "MiscPolicy.java"


# instance fields
.field TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "MiscPolicy"

    iput-object v0, p0, Landroid/sec/enterprise/general/MiscPolicy;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public isNFCStateChangeAllowed()Z
    .locals 3

    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/sec/enterprise/IEDMProxy;->isNFCStateChangeAllowed()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Landroid/sec/enterprise/general/MiscPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed to Talking to MiscPolicyService"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v0, 0x1

    return v0
.end method

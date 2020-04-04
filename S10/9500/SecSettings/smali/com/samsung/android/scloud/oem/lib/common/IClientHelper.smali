.class public abstract Lcom/samsung/android/scloud/oem/lib/common/IClientHelper;
.super Ljava/lang/Object;
.source "IClientHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getClient(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public abstract getServiceHandler(Ljava/lang/String;)Lcom/samsung/android/scloud/oem/lib/common/IServiceHandler;
.end method

.method public handleRequest(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2

    invoke-virtual {p0, p2}, Lcom/samsung/android/scloud/oem/lib/common/IClientHelper;->getServiceHandler(Ljava/lang/String;)Lcom/samsung/android/scloud/oem/lib/common/IServiceHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p3}, Lcom/samsung/android/scloud/oem/lib/common/IClientHelper;->getClient(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, p1, v1, p3, p4}, Lcom/samsung/android/scloud/oem/lib/common/IServiceHandler;->handleServiceAction(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    return-object v1

    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

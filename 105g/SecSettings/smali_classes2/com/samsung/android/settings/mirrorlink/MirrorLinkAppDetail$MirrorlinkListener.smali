.class Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail$MirrorlinkListener;
.super Lcom/mirrorlink/android/service/IMirrorlinkListener$Stub;
.source "MirrorLinkAppDetail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MirrorlinkListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;


# direct methods
.method private constructor <init>(Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail$MirrorlinkListener;->this$0:Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;

    invoke-direct {p0}, Lcom/mirrorlink/android/service/IMirrorlinkListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail$MirrorlinkListener;-><init>(Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;)V

    return-void
.end method


# virtual methods
.method public notifyRevocationCheckResult(Ljava/lang/String;I)V
    .locals 5

    const-string v0, "MirrorLinkAppDetail"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MirrorlinkListener : notifyRevocationCheckResult() & enabling menu item: result  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail$MirrorlinkListener;->this$0:Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;

    invoke-static {v1}, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;->access$600(Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v1, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail$MirrorlinkListener;->this$0:Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;

    invoke-static {v1}, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;->access$100(Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;)Lcom/mirrorlink/android/service/IMirrorlinkManager;

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail$MirrorlinkListener;->this$0:Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;

    invoke-static {v2}, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;->access$100(Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;)Lcom/mirrorlink/android/service/IMirrorlinkManager;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/mirrorlink/android/service/IMirrorlinkManager;->getApplicationElements(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    move-object v1, v2

    const-string v2, "MirrorLinkAppDetail"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyRevocationCheckResult() : Bundle Received for the package Name"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail$MirrorlinkListener;->this$0:Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;

    invoke-static {v2}, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;->access$400(Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;)Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail$MirrorlinkListener;->this$0:Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;

    invoke-static {v2}, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;->access$400(Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;)Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;

    move-result-object v2

    const-string v3, "pkgName"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;->mAppName:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail$MirrorlinkListener;->this$0:Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;

    invoke-static {v2}, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;->access$400(Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;)Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;

    move-result-object v2

    const-string v3, "EntitiesName"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;->mEntityName:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail$MirrorlinkListener;->this$0:Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;

    invoke-static {v2}, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;->access$400(Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;)Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;

    move-result-object v2

    const-string v3, "AppStatus"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;->mStatus:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail$MirrorlinkListener;->this$0:Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;

    invoke-static {v2}, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;->access$400(Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;)Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;

    move-result-object v2

    const-string v3, "NONRESTRICTED"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;->mNonRestricted:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail$MirrorlinkListener;->this$0:Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;

    invoke-static {v2}, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;->access$400(Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;)Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;

    move-result-object v2

    const-string v3, "RESTRICTED"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;->mRestricted:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail$MirrorlinkListener;->this$0:Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;

    invoke-static {v2}, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;->access$400(Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;)Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;

    move-result-object v2

    const-string v3, "VALID_DATE"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;->mValidDate:Ljava/lang/String;

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail$MirrorlinkListener;->this$0:Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;

    invoke-static {v1}, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;->access$600(Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    goto :goto_2

    :goto_1
    nop

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_2
    iget-object v1, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail$MirrorlinkListener;->this$0:Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;

    invoke-static {v1}, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;->access$700(Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_1
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "MirrorLinkAppDetailfrom ACMS thread"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail$MirrorlinkListener;->this$0:Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;

    invoke-static {v2, v0}, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;->access$802(Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;Z)Z

    iget-object v0, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail$MirrorlinkListener;->this$0:Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;

    invoke-static {v0}, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;->access$700(Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

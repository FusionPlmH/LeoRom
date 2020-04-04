.class Lcom/android/server/pm/PackageManagerService$25;
.super Landroid/content/IIntentReceiver$Stub;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->unloadMediaPackages(Landroid/util/ArrayMap;[IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final synthetic val$keys:Ljava/util/Set;

.field final synthetic val$reportStatus:Z


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;ZLjava/util/Set;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$25;->this$0:Lcom/android/server/pm/PackageManagerService;

    iput-boolean p2, p0, Lcom/android/server/pm/PackageManagerService$25;->val$reportStatus:Z

    iput-object p3, p0, Lcom/android/server/pm/PackageManagerService$25;->val$keys:Ljava/util/Set;

    invoke-direct {p0}, Landroid/content/IIntentReceiver$Stub;-><init>()V

    return-void
.end method

.method public static synthetic lambda$performReceive$0(Lcom/android/server/pm/PackageManagerService$25;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$25;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->access$600(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$25;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->access$600(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/app/IMediaContainerService;->doForceGC()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "do force gc after sending broadcast : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$25;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    new-instance v1, Lcom/android/server/pm/-$$Lambda$PackageManagerService$25$jatQVceT1XONSbTPP9gicMK0Agc;

    invoke-direct {v1, p0}, Lcom/android/server/pm/-$$Lambda$PackageManagerService$25$jatQVceT1XONSbTPP9gicMK0Agc;-><init>(Lcom/android/server/pm/PackageManagerService$25;)V

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->post(Ljava/lang/Runnable;)Z

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->gc()V

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$25;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-boolean v1, p0, Lcom/android/server/pm/PackageManagerService$25;->val$reportStatus:Z

    const/4 v2, -0x1

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$25;->val$keys:Ljava/util/Set;

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/pm/PackageManagerService;->access$7600(Lcom/android/server/pm/PackageManagerService;IILjava/util/Set;)V

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$25;->this$0:Lcom/android/server/pm/PackageManagerService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageManagerService;->setAvailableMountSync(Z)V

    const-string v0, "PackageManager"

    const-string/jumbo v1, "setAvailableMountSync false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

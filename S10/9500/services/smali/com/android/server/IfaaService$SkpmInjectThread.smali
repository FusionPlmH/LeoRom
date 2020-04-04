.class Lcom/android/server/IfaaService$SkpmInjectThread;
.super Ljava/lang/Thread;
.source "IfaaService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/IfaaService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SkpmInjectThread"
.end annotation


# instance fields
.field public Flag:Lcom/android/server/IfaaService$skpmInjectProvisioningState;

.field private retInject:I

.field final synthetic this$0:Lcom/android/server/IfaaService;


# direct methods
.method public constructor <init>(Lcom/android/server/IfaaService;Lcom/android/server/IfaaService$skpmInjectProvisioningState;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/IfaaService$SkpmInjectThread;->this$0:Lcom/android/server/IfaaService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/IfaaService$SkpmInjectThread;->retInject:I

    iput-object p2, p0, Lcom/android/server/IfaaService$SkpmInjectThread;->Flag:Lcom/android/server/IfaaService$skpmInjectProvisioningState;

    return-void
.end method


# virtual methods
.method public declared-synchronized getRet()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/server/IfaaService$SkpmInjectThread;->retInject:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 3

    const-string v0, "IfaaService"

    const-string v1, "A new skpmInjectThread is begin!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/IfaaService$SkpmInjectThread;->Flag:Lcom/android/server/IfaaService$skpmInjectProvisioningState;

    invoke-virtual {v0}, Lcom/android/server/IfaaService$skpmInjectProvisioningState;->setInjectProvisioningOn()V

    iget-object v0, p0, Lcom/android/server/IfaaService$SkpmInjectThread;->this$0:Lcom/android/server/IfaaService;

    invoke-static {v0}, Lcom/android/server/IfaaService;->access$100(Lcom/android/server/IfaaService;)Lcom/samsung/android/service/ifaaservice/IfaaSKPMController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/service/ifaaservice/IfaaSKPMController;->injectSkpmServiceKey()I

    move-result v0

    iput v0, p0, Lcom/android/server/IfaaService$SkpmInjectThread;->retInject:I

    const-string v0, "IfaaService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SkpmInjectThread run() result ret is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/IfaaService$SkpmInjectThread;->retInject:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/IfaaService$SkpmInjectThread;->Flag:Lcom/android/server/IfaaService$skpmInjectProvisioningState;

    invoke-virtual {v0}, Lcom/android/server/IfaaService$skpmInjectProvisioningState;->setInjectProvisioningOff()V

    const-string v0, "IfaaService"

    const-string v1, "The skpmInjectThread is end!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

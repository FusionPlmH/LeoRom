.class Lcom/android/server/knox/ddar/proxy/DualDARComnService$2;
.super Ljava/lang/Object;
.source "DualDARComnService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/knox/ddar/proxy/DualDARComnService;->relayAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/knox/ddar/proxy/DualDARComnService;

.field final synthetic val$agentName:Ljava/lang/String;

.field final synthetic val$command:Ljava/lang/String;

.field final synthetic val$params:Landroid/os/Bundle;

.field final synthetic val$svcName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/knox/ddar/proxy/DualDARComnService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/knox/ddar/proxy/DualDARComnService$2;->this$0:Lcom/android/server/knox/ddar/proxy/DualDARComnService;

    iput-object p2, p0, Lcom/android/server/knox/ddar/proxy/DualDARComnService$2;->val$agentName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/knox/ddar/proxy/DualDARComnService$2;->val$svcName:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/knox/ddar/proxy/DualDARComnService$2;->val$command:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/server/knox/ddar/proxy/DualDARComnService$2;->val$params:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const-string v0, "DualDARComnService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "relayAsync from bg thread, relay start to System proxy agent : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/knox/ddar/proxy/DualDARComnService$2;->val$agentName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/android/server/knox/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v0, p0, Lcom/android/server/knox/ddar/proxy/DualDARComnService$2;->this$0:Lcom/android/server/knox/ddar/proxy/DualDARComnService;

    invoke-static {v0}, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->access$000(Lcom/android/server/knox/ddar/proxy/DualDARComnService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/knox/ddar/proxy/SystemProxyAgent;->getInstance(Landroid/content/Context;)Lcom/android/server/knox/ddar/proxy/SystemProxyAgent;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    iget-object v3, p0, Lcom/android/server/knox/ddar/proxy/DualDARComnService$2;->val$svcName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/knox/ddar/proxy/DualDARComnService$2;->val$command:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/knox/ddar/proxy/DualDARComnService$2;->val$params:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v3, v4, v5}, Lcom/android/server/knox/ddar/proxy/SystemProxyAgent;->relay(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    const-string v0, "DualDARComnService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "relayAsync from bg thread, relay end to System proxy agent : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/knox/ddar/proxy/DualDARComnService$2;->val$agentName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/knox/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method

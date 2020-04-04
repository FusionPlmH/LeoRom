.class Lcom/android/server/enterprise/EnterpriseDeviceManagerService$5;
.super Ljava/lang/Object;
.source "EnterpriseDeviceManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->startDualDARServices()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/EnterpriseDeviceManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$5;->this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    new-instance v0, Lcom/android/server/knox/ddar/proxy/DualDARComnService;

    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$5;->this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    iget-object v1, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/knox/ddar/proxy/DualDARComnService;-><init>(Landroid/content/Context;)V

    const-string/jumbo v1, "knox_adapter_service"

    move-object v2, v0

    check-cast v2, Landroid/os/IBinder;

    invoke-static {v1, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->access$1100()Ljava/util/Map;

    move-result-object v1

    const-string/jumbo v2, "knox_adapter_service"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0}, Lcom/android/server/enterprise/EnterpriseServiceCallback;->systemReady()V

    new-instance v1, Lcom/android/server/enterprise/dualdar/DualDARPolicy;

    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$5;->this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    iget-object v2, v2, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/enterprise/dualdar/DualDARPolicy;-><init>(Landroid/content/Context;)V

    move-object v0, v1

    const-string v1, "DualDARPolicy"

    move-object v2, v0

    check-cast v2, Landroid/os/IBinder;

    invoke-static {v1, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->access$1100()Ljava/util/Map;

    move-result-object v1

    const-string v2, "DualDARPolicy"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0}, Lcom/android/server/enterprise/EnterpriseServiceCallback;->systemReady()V

    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->access$1000()Landroid/os/ConditionVariable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->open()V

    return-void
.end method

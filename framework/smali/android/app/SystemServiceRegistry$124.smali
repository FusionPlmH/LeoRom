.class Landroid/app/SystemServiceRegistry$124;
.super Landroid/app/SystemServiceRegistry$CachedServiceFetcher;
.source "SystemServiceRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/SystemServiceRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/SystemServiceRegistry$CachedServiceFetcher<",
        "Lcom/samsung/android/sysint/SemSysIntManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public createService(Landroid/app/ContextImpl;)Lcom/samsung/android/sysint/SemSysIntManager;
    .locals 4

    const-string/jumbo v0, "samsung.sysint"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sysint/ISysIntService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/sysint/ISysIntService;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v2, "SystemServiceRegistry"

    const-string v3, "Failed to get SysInt service"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return-object v2

    :cond_0
    new-instance v2, Lcom/samsung/android/sysint/SemSysIntManager;

    invoke-virtual {p1}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lcom/samsung/android/sysint/SemSysIntManager;-><init>(Lcom/samsung/android/sysint/ISysIntService;Landroid/content/Context;)V

    return-object v2
.end method

.method public bridge synthetic createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$124;->createService(Landroid/app/ContextImpl;)Lcom/samsung/android/sysint/SemSysIntManager;

    move-result-object p1

    return-object p1
.end method

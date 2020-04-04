.class public Lcom/samsung/android/contextaware/manager/fault/CmdProcessResultManager;
.super Ljava/lang/Object;
.source "CmdProcessResultManager.java"

# interfaces
.implements Lcom/samsung/android/contextaware/manager/fault/ICmdProcessResultObserver;


# instance fields
.field private final mBinder:Landroid/os/IBinder;

.field private final mServiceHandler:Lcom/samsung/android/contextaware/manager/ContextAwareService$ServiceHandler;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;Lcom/samsung/android/contextaware/manager/ContextAwareService$ServiceHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/contextaware/manager/fault/CmdProcessResultManager;->mBinder:Landroid/os/IBinder;

    iput-object p2, p0, Lcom/samsung/android/contextaware/manager/fault/CmdProcessResultManager;->mServiceHandler:Lcom/samsung/android/contextaware/manager/ContextAwareService$ServiceHandler;

    return-void
.end method


# virtual methods
.method public final updateCmdProcessResult(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 4

    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->CMD_PROCESS_FAULT_DETECTION:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/fault/CmdProcessResultManager;->mBinder:Landroid/os/IBinder;

    if-nez v0, :cond_1

    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_BINDER_NULL_EXCEPTION:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/fault/CmdProcessResultManager;->mServiceHandler:Lcom/samsung/android/contextaware/manager/ContextAwareService$ServiceHandler;

    if-nez v0, :cond_2

    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_SERVICE_HANDLER_NULL_EXCEPTION:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    return-void

    :cond_2
    if-nez p2, :cond_3

    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_CONTEXT_INFO_NULL_EXCEPTION:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    return-void

    :cond_3
    invoke-virtual {p2}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    const-string v1, "CheckResult"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;->getInstance()Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;->setRestoreEnable()V

    :cond_4
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "Binder"

    iget-object v3, p0, Lcom/samsung/android/contextaware/manager/fault/CmdProcessResultManager;->mBinder:Landroid/os/IBinder;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putIBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string v2, "Service"

    const-string v3, "Service"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "Listener"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/contextaware/ContextList$ContextType;->CMD_PROCESS_FAULT_DETECTION:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/ContextList$ContextType;->ordinal()I

    move-result v3

    iput v3, v2, Landroid/os/Message;->what:I

    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v3, p0, Lcom/samsung/android/contextaware/manager/fault/CmdProcessResultManager;->mServiceHandler:Lcom/samsung/android/contextaware/manager/ContextAwareService$ServiceHandler;

    invoke-virtual {v3, v2}, Lcom/samsung/android/contextaware/manager/ContextAwareService$ServiceHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

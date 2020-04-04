.class public Lcom/samsung/android/knox/ddar/fsm/StateMachine;
.super Ljava/lang/Object;
.source "StateMachine.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final GET_CURRENT_STATE:Ljava/lang/String; = "GET_CURRENT_STATE"

.field private static final GET_PREVIOUS_STATE:Ljava/lang/String; = "GET_PREVIOUS_STATE"

.field private static final KEY_DUAL_DAR_USER_ID:Ljava/lang/String; = "KEY_DUAL_DAR_USER_ID"

.field private static final KEY_EVENT:Ljava/lang/String; = "KEY_EVENT"

.field private static final KEY_STATE:Ljava/lang/String; = "KEY_STATE"

.field private static final PROCESS_EVENT:Ljava/lang/String; = "PROCESS_EVENT"

.field private static final STATE_MACHINE_SERVICE:Ljava/lang/String; = "STATE_MACHINE_SERVICE"

.field private static final SYSTEM_PROXY_AGENT:Ljava/lang/String; = "SYSTEM_PROXY_AGENT"

.field private static final TAG:Ljava/lang/String; = "DDAR::StateMachine"

.field private static _instance:Lcom/samsung/android/knox/ddar/proxy/IProxyService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/knox/ddar/fsm/StateMachine;->_instance:Lcom/samsung/android/knox/ddar/proxy/IProxyService;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCurrentState(I)Lcom/samsung/android/knox/ddar/fsm/State;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "KEY_DUAL_DAR_USER_ID"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "GET_CURRENT_STATE"

    invoke-static {v1, v0}, Lcom/samsung/android/knox/ddar/fsm/StateMachine;->sendCommand(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v2, 0x0

    return-object v2

    :cond_0
    const-string v2, "KEY_STATE"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/knox/ddar/fsm/State;->valueOf(Ljava/lang/String;)Lcom/samsung/android/knox/ddar/fsm/State;

    move-result-object v2

    return-object v2
.end method

.method public static getPreviousState(I)Lcom/samsung/android/knox/ddar/fsm/State;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "KEY_DUAL_DAR_USER_ID"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "GET_PREVIOUS_STATE"

    invoke-static {v1, v0}, Lcom/samsung/android/knox/ddar/fsm/StateMachine;->sendCommand(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v2, 0x0

    return-object v2

    :cond_0
    const-string v2, "KEY_STATE"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/knox/ddar/fsm/State;->valueOf(Ljava/lang/String;)Lcom/samsung/android/knox/ddar/fsm/State;

    move-result-object v2

    return-object v2
.end method

.method private static getService()Lcom/samsung/android/knox/ddar/proxy/IProxyService;
    .locals 1

    sget-object v0, Lcom/samsung/android/knox/ddar/fsm/StateMachine;->_instance:Lcom/samsung/android/knox/ddar/proxy/IProxyService;

    if-nez v0, :cond_0

    const-string/jumbo v0, "knox_adapter_service"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/ddar/proxy/IProxyService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ddar/proxy/IProxyService;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/ddar/fsm/StateMachine;->_instance:Lcom/samsung/android/knox/ddar/proxy/IProxyService;

    :cond_0
    sget-object v0, Lcom/samsung/android/knox/ddar/fsm/StateMachine;->_instance:Lcom/samsung/android/knox/ddar/proxy/IProxyService;

    return-object v0
.end method

.method public static processEvent(ILcom/samsung/android/knox/ddar/fsm/Event;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "KEY_DUAL_DAR_USER_ID"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "KEY_EVENT"

    invoke-virtual {p1}, Lcom/samsung/android/knox/ddar/fsm/Event;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "PROCESS_EVENT"

    invoke-static {v2, v1}, Lcom/samsung/android/knox/ddar/fsm/StateMachine;->sendCommand(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_0

    return v0

    :cond_0
    const-string v0, "dual_dar_response"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_1
    return v0
.end method

.method private static sendCommand(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/ddar/fsm/StateMachine;->getService()Lcom/samsung/android/knox/ddar/proxy/IProxyService;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v2, "DDAR::StateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sendCommand() : Error: Service Not found, command = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    const-string v2, "SYSTEM_PROXY_AGENT"

    const-string v3, "STATE_MACHINE_SERVICE"

    invoke-interface {v1, v2, v3, p0, p1}, Lcom/samsung/android/knox/ddar/proxy/IProxyService;->relay(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    return-object v0
.end method

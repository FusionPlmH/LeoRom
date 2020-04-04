.class public Lcom/samsung/android/knox/ddar/DualDARController;
.super Ljava/lang/Object;
.source "DualDARController.java"


# static fields
.field private static final DEBUG:Z = false

.field public static final DUALDAR_AGENT:Ljava/lang/String; = "KNOXCORE_PROXY_AGENT"

.field public static final DUALDAR_CONTROLLER_SERVICE:Ljava/lang/String; = "DUALDAR_CONTROLLER_SERVICE"

.field private static final FEATURE_RESET_PASSWORD:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "DualDAR::DualDARController"

.field private static mInstance:Lcom/samsung/android/knox/ddar/DualDARController;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/knox/ddar/DualDARController;->mInstance:Lcom/samsung/android/knox/ddar/DualDARController;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/knox/ddar/DualDARController;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/samsung/android/knox/ddar/DualDARController;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/ddar/DualDARController;
    .locals 2

    sget-object v0, Lcom/samsung/android/knox/ddar/DualDARController;->mInstance:Lcom/samsung/android/knox/ddar/DualDARController;

    if-nez v0, :cond_1

    const-class v0, Lcom/samsung/android/knox/ddar/DualDARController;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/ddar/DualDARController;->mInstance:Lcom/samsung/android/knox/ddar/DualDARController;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/knox/ddar/DualDARController;

    invoke-direct {v1, p0}, Lcom/samsung/android/knox/ddar/DualDARController;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/samsung/android/knox/ddar/DualDARController;->mInstance:Lcom/samsung/android/knox/ddar/DualDARController;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/samsung/android/knox/ddar/DualDARController;->mInstance:Lcom/samsung/android/knox/ddar/DualDARController;

    return-object v0
.end method

.method private processCommand(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/ddar/DualDARController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/ddar/proxy/KnoxProxyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/ddar/proxy/KnoxProxyManager;

    move-result-object v0

    const-string v1, "KNOXCORE_PROXY_AGENT"

    const-string v2, "DUALDAR_CONTROLLER_SERVICE"

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/samsung/android/knox/ddar/proxy/KnoxProxyManager;->relayMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public clearResetPasswordToken(IJ)V
    .locals 5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "user_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "RESET_PASSWORD_TOKEN_HANDLE"

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v1, "CLEAR_RESET_PASSWORD_TOKEN"

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/knox/ddar/DualDARController;->processCommand(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string v3, "dual_dar_response"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    nop

    :cond_0
    if-nez v2, :cond_1

    const-string v3, "DualDAR::DualDARController"

    const-string v4, "Some operation on DualDAR platform failed on DualDAR state changed"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public fetchOuterLayerKey(I)[B
    .locals 6

    const-string v0, "DualDAR::DualDARController"

    const-string v1, "fetchOuterLayerKey()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "user_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "FETCH_OUTERLAYER_KEY"

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/knox/ddar/DualDARController;->processCommand(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string v3, "OUTER_LAYER_SECRET"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    if-nez v3, :cond_1

    const-string v4, "DualDAR::DualDARController"

    const-string v5, "fetchOuterLayerKey failed"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_1
    const-string v2, "DualDAR::DualDARController"

    const-string v4, "fetchOuterLayerKey Successful"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3
.end method

.method public handleWorkspaceCreation(I)Z
    .locals 6

    const-string v0, "DualDAR::DualDARController"

    const-string v1, "handleWorkspaceCreation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "user_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "ON_WORKSPACE_CREATION"

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/knox/ddar/DualDARController;->processCommand(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    const-string v4, "dual_dar_response"

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    if-nez v4, :cond_1

    const-string v2, "DualDAR::DualDARController"

    const-string v5, "handleWorkspaceCreation failed"

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_1
    const-string v3, "DualDAR::DualDARController"

    const-string v5, "handleWorkspaceCreation succeeded"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public isResetPasswordSupported(I)Z
    .locals 5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "user_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "FEATURE"

    const/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "IS_SUPPORTED"

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/knox/ddar/DualDARController;->processCommand(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string v3, "dual_dar_response"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    nop

    :cond_0
    if-nez v2, :cond_1

    const-string v3, "DualDAR::DualDARController"

    const-string v4, "Some operation on DualDAR platform failed on DualDAR state changed"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v2
.end method

.method public onDualDarStateChanged(Lcom/samsung/android/knox/ddar/fsm/State;Lcom/samsung/android/knox/ddar/fsm/State;Lcom/samsung/android/knox/ddar/fsm/Event;I)Z
    .locals 5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "user_id"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "PREVIOUS_STATE"

    invoke-virtual {p1}, Lcom/samsung/android/knox/ddar/fsm/State;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "CURRENT_STATE"

    invoke-virtual {p2}, Lcom/samsung/android/knox/ddar/fsm/State;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ON_EVENT"

    invoke-virtual {p3}, Lcom/samsung/android/knox/ddar/fsm/Event;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ON_DDAR_STATE_CHANGED"

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/knox/ddar/DualDARController;->processCommand(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string v3, "dual_dar_response"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    nop

    :cond_0
    if-nez v2, :cond_1

    const-string v3, "DualDAR::DualDARController"

    const-string v4, "Some operation on DualDAR platform failed on DualDAR state changed"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v2
.end method

.method public onPassword1Change(IZ)Z
    .locals 6

    const-string v0, "DualDAR::DualDARController"

    const-string/jumbo v1, "onPassword1Change"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "NEW_PASSWORD"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "ON_PASSWORD1_CHANGE"

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/knox/ddar/DualDARController;->processCommand(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    const-string v4, "dual_dar_response"

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    if-nez v4, :cond_1

    const-string v2, "DualDAR::DualDARController"

    const-string v5, "Failed to handle user 0 password change"

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_1
    const-string v3, "DualDAR::DualDARController"

    const-string v5, "Successfully handled user 0 password change"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public onPassword2Auth(ILjava/lang/String;)Z
    .locals 6

    const-string v0, "DualDAR::DualDARController"

    const-string/jumbo v1, "onPassword2Auth()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    if-eqz p2, :cond_0

    const-string v1, "EXISTING_PASSWORD"

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    :cond_0
    const-string/jumbo v1, "user_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "ON_PASSWORD2_AUTH"

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/knox/ddar/DualDARController;->processCommand(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    const-string v4, "dual_dar_response"

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v2

    goto :goto_0

    :cond_1
    move v4, v3

    :goto_0
    if-nez v4, :cond_2

    const-string v2, "DualDAR::DualDARController"

    const-string v5, "Authentication Failure by dual dar client"

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_2
    const-string v3, "DualDAR::DualDARController"

    const-string/jumbo v5, "onPassword2Auth completed sucessfully"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public onPassword2Change(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 6

    const-string v0, "DualDAR::DualDARController"

    const-string/jumbo v1, "onPassword2Change"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    if-eqz p2, :cond_0

    const-string v1, "EXISTING_PASSWORD"

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    :cond_0
    const-string/jumbo v1, "user_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eqz p3, :cond_1

    const-string v1, "NEW_PASSWORD"

    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    :cond_1
    const-string v1, "ON_PASSWORD2_CHANGE"

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/knox/ddar/DualDARController;->processCommand(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    const-string v4, "dual_dar_response"

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_2

    move v4, v2

    goto :goto_0

    :cond_2
    move v4, v3

    :goto_0
    if-nez v4, :cond_3

    const-string v2, "DualDAR::DualDARController"

    const-string v5, "Authentication Change Failure by dual dar client"

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_3
    const-string v3, "DualDAR::DualDARController"

    const-string v5, "Authentication Change to DualDAR Client Successful"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public onUserRemoved(I)V
    .locals 5

    const-string v0, "DualDAR::DualDARController"

    const-string/jumbo v1, "onUserRemoved()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "user_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "ON_USER_REMOVED"

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/knox/ddar/DualDARController;->processCommand(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "dual_dar_response"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_1

    const-string v3, "DualDAR::DualDARController"

    const-string v4, "handling onUserRemoved failed by KnoxCore"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string v3, "DualDAR::DualDARController"

    const-string v4, "handling onUserRemoved succeeded by KnoxCore"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onUserStart(I)V
    .locals 5

    const-string v0, "DualDAR::DualDARController"

    const-string/jumbo v1, "onUserStart()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "user_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "ON_USER_START"

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/knox/ddar/DualDARController;->processCommand(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "dual_dar_response"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_1

    const-string v3, "DualDAR::DualDARController"

    const-string v4, "handling onUserStart failed by KnoxCore"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string v3, "DualDAR::DualDARController"

    const-string v4, "handling onUserStart succeeded by KnoxCore"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onUserStopped(I)V
    .locals 5

    const-string v0, "DualDAR::DualDARController"

    const-string/jumbo v1, "onUserStopped()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "user_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "ON_USER_STOPPED"

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/knox/ddar/DualDARController;->processCommand(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "dual_dar_response"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_1

    const-string v3, "DualDAR::DualDARController"

    const-string v4, "handling onUserStopped failed by KnoxCore"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string v3, "DualDAR::DualDARController"

    const-string v4, "handling onUserStopped succeeded by KnoxCore"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public resetPasswordWithToken(ILjava/lang/String;J[B)Z
    .locals 5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "user_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eqz p2, :cond_0

    const-string v1, "NEW_PASSWORD"

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    :cond_0
    const-string v1, "RESET_PASSWORD_TOKEN_HANDLE"

    invoke-virtual {v0, v1, p3, p4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v1, "RESET_PASSWORD_TOKEN"

    invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string v1, "RESET_PASSWORD_WITH_TOKEN"

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/knox/ddar/DualDARController;->processCommand(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const-string v3, "dual_dar_response"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    nop

    :cond_1
    if-nez v2, :cond_2

    const-string v3, "DualDAR::DualDARController"

    const-string v4, "Some operation on DualDAR platform failed on DualDAR state changed"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v2
.end method

.method public setResetPasswordToken(ILjava/lang/String;J[B)Z
    .locals 5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "user_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eqz p2, :cond_0

    const-string v1, "EXISTING_PASSWORD"

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    :cond_0
    const-string v1, "RESET_PASSWORD_TOKEN_HANDLE"

    invoke-virtual {v0, v1, p3, p4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v1, "RESET_PASSWORD_TOKEN"

    invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string v1, "SET_RESET_PASSWORD_TOKEN"

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/knox/ddar/DualDARController;->processCommand(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const-string v3, "dual_dar_response"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    nop

    :cond_1
    if-nez v2, :cond_2

    const-string v3, "DualDAR::DualDARController"

    const-string v4, "Some operation on DualDAR platform failed on DualDAR state changed"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v2
.end method

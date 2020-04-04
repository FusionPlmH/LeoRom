.class public Lcom/samsung/android/voip/SemVoipInterfaceManager;
.super Ljava/lang/Object;
.source "SemVoipInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/voip/SemVoipInterfaceManager$CommandListener;
    }
.end annotation


# static fields
.field public static final CALL_STATE_ACTIVE:I = 0x6

.field public static final CALL_STATE_ALERTING:I = 0x4

.field public static final CALL_STATE_DIALING:I = 0x3

.field public static final CALL_STATE_DISCONNECTED:I = 0x2

.field public static final CALL_STATE_HOLDING:I = 0x7

.field public static final CALL_STATE_IDLE:I = 0x1

.field public static final CALL_STATE_RINGING:I = 0x5

.field private static mListener:Lcom/samsung/android/voip/SemVoipInterfaceManager$CommandListener;

.field public static voipCallback:Landroid/os/IVoIPCallbackInterface$Stub;


# instance fields
.field private TAG:Ljava/lang/String;

.field private mVoip:Landroid/os/IVoIPInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/voip/SemVoipInterfaceManager$1;

    invoke-direct {v0}, Lcom/samsung/android/voip/SemVoipInterfaceManager$1;-><init>()V

    sput-object v0, Lcom/samsung/android/voip/SemVoipInterfaceManager;->voipCallback:Landroid/os/IVoIPCallbackInterface$Stub;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "SemVoipInterfaceManager"

    iput-object v0, p0, Lcom/samsung/android/voip/SemVoipInterfaceManager;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "voip"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IVoIPInterface$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoIPInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/voip/SemVoipInterfaceManager;->mVoip:Landroid/os/IVoIPInterface;

    iget-object v0, p0, Lcom/samsung/android/voip/SemVoipInterfaceManager;->mVoip:Landroid/os/IVoIPInterface;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/voip/SemVoipInterfaceManager;->TAG:Ljava/lang/String;

    const-string v1, "Failed to connect Voip Service"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method static synthetic access$000()Lcom/samsung/android/voip/SemVoipInterfaceManager$CommandListener;
    .locals 1

    sget-object v0, Lcom/samsung/android/voip/SemVoipInterfaceManager;->mListener:Lcom/samsung/android/voip/SemVoipInterfaceManager$CommandListener;

    return-object v0
.end method


# virtual methods
.method public createCallSession(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/voip/SemVoipInterfaceManager$CommandListener;)Z
    .locals 4

    sput-object p3, Lcom/samsung/android/voip/SemVoipInterfaceManager;->mListener:Lcom/samsung/android/voip/SemVoipInterfaceManager$CommandListener;

    iget-object v0, p0, Lcom/samsung/android/voip/SemVoipInterfaceManager;->mVoip:Landroid/os/IVoIPInterface;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/voip/SemVoipInterfaceManager;->mVoip:Landroid/os/IVoIPInterface;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "voip"

    sget-object v3, Lcom/samsung/android/voip/SemVoipInterfaceManager;->voipCallback:Landroid/os/IVoIPCallbackInterface$Stub;

    invoke-interface {v0, v1, v2, p2, v3}, Landroid/os/IVoIPInterface;->createCallSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/IVoIPCallbackInterface;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public destroyCallSession(Landroid/content/Context;)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/voip/SemVoipInterfaceManager;->mVoip:Landroid/os/IVoIPInterface;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/voip/SemVoipInterfaceManager;->mVoip:Landroid/os/IVoIPInterface;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/os/IVoIPInterface;->destroyCallSession(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getCallCount(Landroid/content/Context;)I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/voip/SemVoipInterfaceManager;->mVoip:Landroid/os/IVoIPInterface;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/voip/SemVoipInterfaceManager;->mVoip:Landroid/os/IVoIPInterface;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/os/IVoIPInterface;->getVoIPCallCount(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isVoipActivated()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/voip/SemVoipInterfaceManager;->mVoip:Landroid/os/IVoIPInterface;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/voip/SemVoipInterfaceManager;->mVoip:Landroid/os/IVoIPInterface;

    invoke-interface {v0}, Landroid/os/IVoIPInterface;->isVoIPActivated()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/voip/SemVoipInterfaceManager;->TAG:Ljava/lang/String;

    const-string v1, "Failed to call isVoipActivated"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public isVoipDialing()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/voip/SemVoipInterfaceManager;->mVoip:Landroid/os/IVoIPInterface;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/voip/SemVoipInterfaceManager;->mVoip:Landroid/os/IVoIPInterface;

    invoke-interface {v0}, Landroid/os/IVoIPInterface;->isVoIPDialing()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/voip/SemVoipInterfaceManager;->TAG:Ljava/lang/String;

    const-string v1, "Failed to call isVoipDialing"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public isVoipIdle()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/voip/SemVoipInterfaceManager;->mVoip:Landroid/os/IVoIPInterface;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/voip/SemVoipInterfaceManager;->mVoip:Landroid/os/IVoIPInterface;

    invoke-interface {v0}, Landroid/os/IVoIPInterface;->isVoIPIdle()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/voip/SemVoipInterfaceManager;->TAG:Ljava/lang/String;

    const-string v1, "Failed to call isVoipIdle"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public moveVoipToTop()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/voip/SemVoipInterfaceManager;->mVoip:Landroid/os/IVoIPInterface;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/voip/SemVoipInterfaceManager;->mVoip:Landroid/os/IVoIPInterface;

    invoke-interface {v0}, Landroid/os/IVoIPInterface;->moveVoIPToTop()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/voip/SemVoipInterfaceManager;->TAG:Ljava/lang/String;

    const-string v1, "Failed to call moveVoipToTop"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public setAudioOutputToBluetoothDevice(Z)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/voip/SemVoipInterfaceManager;->mVoip:Landroid/os/IVoIPInterface;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/voip/SemVoipInterfaceManager;->mVoip:Landroid/os/IVoIPInterface;

    invoke-interface {v0, p1}, Landroid/os/IVoIPInterface;->setBTUserWantsAudioOn(Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setCallCount(Landroid/content/Context;I)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/voip/SemVoipInterfaceManager;->mVoip:Landroid/os/IVoIPInterface;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/voip/SemVoipInterfaceManager;->mVoip:Landroid/os/IVoIPInterface;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/os/IVoIPInterface;->setVoIPCallCount(Ljava/lang/String;I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setCallState(Landroid/content/Context;ILjava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/voip/SemVoipInterfaceManager;->mVoip:Landroid/os/IVoIPInterface;

    if-eqz v0, :cond_7

    if-eqz p1, :cond_7

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/voip/SemVoipInterfaceManager;->mVoip:Landroid/os/IVoIPInterface;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/os/IVoIPInterface;->setVoIPIdle(Ljava/lang/String;)Z

    move-result v0

    return v0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/voip/SemVoipInterfaceManager;->mVoip:Landroid/os/IVoIPInterface;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Landroid/os/IVoIPInterface;->setVoIPDisconnected(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x3

    if-ne p2, v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/voip/SemVoipInterfaceManager;->mVoip:Landroid/os/IVoIPInterface;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Landroid/os/IVoIPInterface;->setVoIPDialing(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_2
    const/4 v0, 0x4

    if-ne p2, v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/voip/SemVoipInterfaceManager;->mVoip:Landroid/os/IVoIPInterface;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Landroid/os/IVoIPInterface;->setVoIPAlerting(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_3
    const/4 v0, 0x5

    if-ne p2, v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/voip/SemVoipInterfaceManager;->mVoip:Landroid/os/IVoIPInterface;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Landroid/os/IVoIPInterface;->setVoIPRinging(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_4
    const/4 v0, 0x6

    if-ne p2, v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/voip/SemVoipInterfaceManager;->mVoip:Landroid/os/IVoIPInterface;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Landroid/os/IVoIPInterface;->setVoIPActive(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_5
    const/4 v0, 0x7

    if-ne p2, v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/voip/SemVoipInterfaceManager;->mVoip:Landroid/os/IVoIPInterface;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Landroid/os/IVoIPInterface;->setVoIPHolding(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :goto_0
    goto :goto_1

    :cond_6
    nop

    :cond_7
    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method public setMissedCallInformation(Ljava/lang/String;J)Z
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/voip/SemVoipInterfaceManager;->mVoip:Landroid/os/IVoIPInterface;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/voip/SemVoipInterfaceManager;->mVoip:Landroid/os/IVoIPInterface;

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v3, p1

    move-wide v5, p2

    invoke-interface/range {v1 .. v6}, Landroid/os/IVoIPInterface;->notifyMissedCallforVoIP(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setUsingBluetoothDeviceInCall(Landroid/content/Context;Z)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/voip/SemVoipInterfaceManager;->mVoip:Landroid/os/IVoIPInterface;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/voip/SemVoipInterfaceManager;->mVoip:Landroid/os/IVoIPInterface;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/os/IVoIPInterface;->setUseBTInVoIP(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setUsingHoldInCall(Landroid/content/Context;Z)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/voip/SemVoipInterfaceManager;->mVoip:Landroid/os/IVoIPInterface;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/voip/SemVoipInterfaceManager;->mVoip:Landroid/os/IVoIPInterface;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/os/IVoIPInterface;->setUseHoldInVoIP(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

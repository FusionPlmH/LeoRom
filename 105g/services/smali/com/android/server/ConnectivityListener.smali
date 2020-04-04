.class Lcom/android/server/ConnectivityListener;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "McpsService.java"


# static fields
.field public static final MCPS_MOBILE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "MCPS-ConnListener"

.field private static volatile onMobile:Z


# instance fields
.field private mCm:Landroid/net/ConnectivityManager;

.field private mTransportType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/ConnectivityListener;->onMobile:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    iput p2, p0, Lcom/android/server/ConnectivityListener;->mTransportType:I

    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/server/ConnectivityListener;->mCm:Landroid/net/ConnectivityManager;

    return-void
.end method

.method public static free()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, v0}, Lcom/android/server/ConnectivityListener;->updateStatus(IZ)V

    invoke-static {}, Lcom/android/server/ConnectivityListener;->sendToService()V

    return-void
.end method

.method private static sendToService()V
    .locals 3

    const-class v0, Lcom/android/server/McpsServiceInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/McpsServiceInternal;

    if-nez v0, :cond_0

    const-string v1, "MCPS-ConnListener"

    const-string/jumbo v2, "updateStatus : McpsServiceInternal NULL"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-boolean v1, Lcom/android/server/ConnectivityListener;->onMobile:Z

    invoke-interface {v0, v1}, Lcom/android/server/McpsServiceInternal;->updateMCPSConnectivityPolicy(Z)V

    return-void
.end method

.method public static updateStatus()V
    .locals 0

    invoke-static {}, Lcom/android/server/ConnectivityListener;->sendToService()V

    return-void
.end method

.method private static updateStatus(IZ)V
    .locals 3

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    sput-boolean p1, Lcom/android/server/ConnectivityListener;->onMobile:Z

    :goto_0
    const-string v0, "MCPS-ConnListener"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateStatus : MOBILE["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/server/ConnectivityListener;->onMobile:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 3

    const-string v0, "MCPS-ConnListener"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAvailable : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/ConnectivityListener;->mTransportType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " : true"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/server/ConnectivityListener;->mTransportType:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/ConnectivityListener;->updateStatus(IZ)V

    invoke-static {}, Lcom/android/server/ConnectivityListener;->sendToService()V

    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 3

    const-string v0, "MCPS-ConnListener"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onLost : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/ConnectivityListener;->mTransportType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/server/ConnectivityListener;->mTransportType:I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/ConnectivityListener;->updateStatus(IZ)V

    invoke-static {}, Lcom/android/server/ConnectivityListener;->sendToService()V

    return-void
.end method

.method public onUnavailable()V
    .locals 3

    const-string v0, "MCPS-ConnListener"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUnavailable : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/ConnectivityListener;->mTransportType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public register()V
    .locals 4

    const-string v0, "MCPS-ConnListener"

    const-string/jumbo v1, "register : called"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    iget v1, p0, Lcom/android/server/ConnectivityListener;->mTransportType:I

    if-eqz v1, :cond_0

    const-string v1, "MCPS-ConnListener"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fail to register : caused by type ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/ConnectivityListener;->mTransportType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    nop

    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/ConnectivityListener;->mCm:Landroid/net/ConnectivityManager;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-virtual {v2, v1, p0, v3}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public unregister()V
    .locals 3

    const-string v0, "MCPS-ConnListener"

    const-string/jumbo v1, "unregister : called"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/server/ConnectivityListener;->mTransportType:I

    if-eqz v0, :cond_0

    const-string v0, "MCPS-ConnListener"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fail to unregister : caused by type ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/ConnectivityListener;->mTransportType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    nop

    iget-object v0, p0, Lcom/android/server/ConnectivityListener;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, p0}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    return-void
.end method

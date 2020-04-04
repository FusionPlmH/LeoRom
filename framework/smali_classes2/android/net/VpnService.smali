.class public Landroid/net/VpnService;
.super Landroid/app/Service;
.source "VpnService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/VpnService$Builder;,
        Landroid/net/VpnService$Callback;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final FAST_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.fast"

.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "android.net.VpnService"

.field public static final SERVICE_META_DATA_SUPPORTS_ALWAYS_ON:Ljava/lang/String; = "android.net.VpnService.SUPPORTS_ALWAYS_ON"

.field private static final SYSTEM_VPN:I = 0x0

.field private static final TAG:Ljava/lang/String; = "VpnService"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Landroid/net/VpnService;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method static synthetic access$100(Ljava/net/InetAddress;I)V
    .locals 0

    invoke-static {p0, p1}, Landroid/net/VpnService;->check(Ljava/net/InetAddress;I)V

    return-void
.end method

.method static synthetic access$200()Landroid/net/IConnectivityManager;
    .locals 1

    invoke-static {}, Landroid/net/VpnService;->getService()Landroid/net/IConnectivityManager;

    move-result-object v0

    return-object v0
.end method

.method private static check(Ljava/net/InetAddress;I)V
    .locals 2

    invoke-virtual {p0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v0

    if-nez v0, :cond_4

    instance-of v0, p0, Ljava/net/Inet4Address;

    if-eqz v0, :cond_1

    if-ltz p1, :cond_0

    const/16 v0, 0x20

    if-gt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bad prefixLength"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    instance-of v0, p0, Ljava/net/Inet6Address;

    if-eqz v0, :cond_3

    if-ltz p1, :cond_2

    const/16 v0, 0x80

    if-gt p1, v0, :cond_2

    :goto_0
    return-void

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bad prefixLength"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported family"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bad address"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getService()Landroid/net/IConnectivityManager;
    .locals 1

    const-string v0, "connectivity"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v0

    return-object v0
.end method

.method private static isSecureWifiPackage(Landroid/content/Context;)Z
    .locals 3

    const-string v0, "com.samsung.android.fast"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android"

    const-string v2, "com.samsung.android.fast"

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    const-string v1, "VpnService"

    const-string v2, "Secure Wi-Fi signature mismatched"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static prepare(Landroid/content/Context;)Landroid/content/Intent;
    .locals 10

    instance-of v0, p0, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnContext;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    const-string v0, "VpnService"

    const-string/jumbo v3, "prepare function with generic vpn context is called for knox vpn profile"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p0

    check-cast v0, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnContext;

    invoke-virtual {v0}, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnContext;->getVPNProfile()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnContext;->getVPNState()Z

    move-result v4

    invoke-virtual {v0}, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnContext;->isMetaEnabled()Z

    move-result v6

    nop

    :try_start_0
    invoke-static {}, Landroid/net/VpnService;->getService()Landroid/net/IConnectivityManager;

    move-result-object v7

    invoke-interface {v7, v3}, Landroid/net/IConnectivityManager;->knoxVpnProfileType(Ljava/lang/String;)I

    move-result v7

    move v1, v7

    invoke-static {}, Landroid/net/VpnService;->getService()Landroid/net/IConnectivityManager;

    move-result-object v7

    invoke-interface {v7, v5, v3, v4, v6}, Landroid/net/IConnectivityManager;->prepareEnterpriseVpnExt(Ljava/lang/String;Ljava/lang/String;ZZ)Z

    move-result v7
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v7, :cond_0

    return-object v2

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v7

    const-string v8, "VpnService"

    const-string v9, "Exception occured while trying to prepare knox vpn profile"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-nez v1, :cond_1

    invoke-static {}, Lcom/android/internal/net/VpnConfig;->getIntentForConfirmation()Landroid/content/Intent;

    move-result-object v2

    nop

    :cond_1
    return-object v2

    :cond_2
    instance-of v0, p0, Lcom/sec/vpn/knox/GenericVpnContext;

    if-eqz v0, :cond_5

    const-string v0, "VpnService"

    const-string/jumbo v3, "prepare function with generic vpn context is called for knox vpn profile"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p0

    check-cast v0, Lcom/sec/vpn/knox/GenericVpnContext;

    invoke-virtual {v0}, Lcom/sec/vpn/knox/GenericVpnContext;->getVPNProfile()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sec/vpn/knox/GenericVpnContext;->getVPNState()Z

    move-result v4

    invoke-virtual {v0}, Lcom/sec/vpn/knox/GenericVpnContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/sec/vpn/knox/GenericVpnContext;->isMetaEnabled()Z

    move-result v6

    nop

    :try_start_1
    invoke-static {}, Landroid/net/VpnService;->getService()Landroid/net/IConnectivityManager;

    move-result-object v7

    invoke-interface {v7, v3}, Landroid/net/IConnectivityManager;->knoxVpnProfileType(Ljava/lang/String;)I

    move-result v7

    move v1, v7

    invoke-static {}, Landroid/net/VpnService;->getService()Landroid/net/IConnectivityManager;

    move-result-object v7

    invoke-interface {v7, v5, v3, v4, v6}, Landroid/net/IConnectivityManager;->prepareEnterpriseVpnExt(Ljava/lang/String;Ljava/lang/String;ZZ)Z

    move-result v7
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v7, :cond_3

    return-object v2

    :cond_3
    goto :goto_1

    :catch_1
    move-exception v7

    const-string v8, "VpnService"

    const-string v9, "Exception occured while trying to prepare knox vpn profile"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    if-nez v1, :cond_4

    invoke-static {}, Lcom/android/internal/net/VpnConfig;->getIntentForConfirmation()Landroid/content/Intent;

    move-result-object v2

    nop

    :cond_4
    return-object v2

    :cond_5
    const-string v0, "VpnService"

    const-string/jumbo v1, "prepare function with android vpn context is called for non knox vpn profile"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Landroid/net/VpnService;->isSecureWifiPackage(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Landroid/net/VpnService;->prepareAndAuthorizeVpnForFast()Landroid/content/Intent;

    move-result-object v0

    return-object v0

    :cond_6
    :try_start_2
    invoke-static {}, Landroid/net/VpnService;->getService()Landroid/net/IConnectivityManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Landroid/net/IConnectivityManager;->prepareVpn(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    if-eqz v0, :cond_7

    return-object v2

    :cond_7
    goto :goto_2

    :catch_2
    move-exception v0

    const-string v1, "VpnService"

    const-string v2, "Exception occured while trying to prepare non knox vpn profile"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    invoke-static {}, Lcom/android/internal/net/VpnConfig;->getIntentForConfirmation()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static prepareAndAuthorize(Landroid/content/Context;)V
    .locals 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-static {}, Landroid/net/VpnService;->getService()Landroid/net/IConnectivityManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3, v2}, Landroid/net/IConnectivityManager;->prepareVpn(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-interface {v0, v3, v1, v2}, Landroid/net/IConnectivityManager;->prepareVpn(Ljava/lang/String;Ljava/lang/String;I)Z

    :cond_0
    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/net/IConnectivityManager;->setVpnPackageAuthorization(Ljava/lang/String;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    :goto_0
    return-void
.end method

.method private static prepareAndAuthorizeVpnForFast()Landroid/content/Intent;
    .locals 5

    :try_start_0
    invoke-static {}, Landroid/net/VpnService;->getService()Landroid/net/IConnectivityManager;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    const-string v2, "com.samsung.android.fast"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3, v1}, Landroid/net/IConnectivityManager;->prepareVpn(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "com.samsung.android.fast"

    invoke-interface {v0, v3, v2, v1}, Landroid/net/IConnectivityManager;->prepareVpn(Ljava/lang/String;Ljava/lang/String;I)Z

    :cond_0
    const-string v2, "com.samsung.android.fast"

    const/4 v4, 0x1

    invoke-interface {v0, v2, v1, v4}, Landroid/net/IConnectivityManager;->setVpnPackageAuthorization(Ljava/lang/String;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/android/internal/net/VpnConfig;->getIntentForConfirmation()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addAddress(Ljava/net/InetAddress;I)Z
    .locals 2

    invoke-static {p1, p2}, Landroid/net/VpnService;->check(Ljava/net/InetAddress;I)V

    :try_start_0
    invoke-static {}, Landroid/net/VpnService;->getService()Landroid/net/IConnectivityManager;

    move-result-object v0

    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/net/IConnectivityManager;->addVpnAddress(Ljava/lang/String;I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v1, "android.net.VpnService"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Landroid/net/VpnService$Callback;

    invoke-direct {v1, p0, v0}, Landroid/net/VpnService$Callback;-><init>(Landroid/net/VpnService;Landroid/net/VpnService$1;)V

    return-object v1

    :cond_0
    return-object v0
.end method

.method public onRevoke()V
    .locals 0

    invoke-virtual {p0}, Landroid/net/VpnService;->stopSelf()V

    return-void
.end method

.method public protect(I)Z
    .locals 3

    :try_start_0
    invoke-static {}, Landroid/net/VpnService;->getService()Landroid/net/IConnectivityManager;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Landroid/net/VpnService;->getService()Landroid/net/IConnectivityManager;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/net/IConnectivityManager;->getChainingEnabledForProfile(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/net/NetworkUtils;->protectFromVpn(I)Z

    move-result v0

    return v0

    :cond_0
    sget-boolean v0, Landroid/net/VpnService;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "VpnService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "protect is not going to be called for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    invoke-static {p1}, Landroid/net/NetworkUtils;->protectFromVpn(I)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method public protect(Ljava/net/DatagramSocket;)Z
    .locals 1

    invoke-virtual {p1}, Ljava/net/DatagramSocket;->getFileDescriptor$()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/net/VpnService;->protect(I)Z

    move-result v0

    return v0
.end method

.method public protect(Ljava/net/Socket;)Z
    .locals 1

    invoke-virtual {p1}, Ljava/net/Socket;->getFileDescriptor$()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/net/VpnService;->protect(I)Z

    move-result v0

    return v0
.end method

.method public removeAddress(Ljava/net/InetAddress;I)Z
    .locals 2

    invoke-static {p1, p2}, Landroid/net/VpnService;->check(Ljava/net/InetAddress;I)V

    :try_start_0
    invoke-static {}, Landroid/net/VpnService;->getService()Landroid/net/IConnectivityManager;

    move-result-object v0

    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/net/IConnectivityManager;->removeVpnAddress(Ljava/lang/String;I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setUnderlyingNetworks([Landroid/net/Network;)Z
    .locals 2

    :try_start_0
    invoke-static {}, Landroid/net/VpnService;->getService()Landroid/net/IConnectivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/net/IConnectivityManager;->setUnderlyingNetworksForVpn([Landroid/net/Network;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.class public final Lcom/samsung/android/service/activationteeservice/ActivationTeeServiceManager;
.super Ljava/lang/Object;
.source "ActivationTeeServiceManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ActivationTeeServiceManager"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mService:Lcom/samsung/android/service/activationteeservice/IActivationTeeService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/service/activationteeservice/ActivationTeeServiceManager;->mContext:Landroid/content/Context;

    const-string v0, "ActivationTeeService"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/service/activationteeservice/IActivationTeeService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/service/activationteeservice/IActivationTeeService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/service/activationteeservice/ActivationTeeServiceManager;->mService:Lcom/samsung/android/service/activationteeservice/IActivationTeeService;

    const-string v0, "ActivationTeeServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/service/activationteeservice/ActivationTeeServiceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " connects to ActivationTeeService. mService = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/service/activationteeservice/ActivationTeeServiceManager;->mService:Lcom/samsung/android/service/activationteeservice/IActivationTeeService;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public generateCredentials2([B)Lcom/samsung/android/service/activationteeservice/ActivationTee2Credentials;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/service/activationteeservice/ActivationTeeServiceManager;->mService:Lcom/samsung/android/service/activationteeservice/IActivationTeeService;

    invoke-interface {v1, p1}, Lcom/samsung/android/service/activationteeservice/IActivationTeeService;->generateCredentials2([B)Lcom/samsung/android/service/activationteeservice/ActivationTee2Credentials;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    return-object v0

    :catch_1
    move-exception v1

    const-string v2, "ActivationTeeServiceManager"

    const-string v3, "Failed to connect service."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    return-object v0
.end method

.method public generateSessionCertificate2()Lcom/samsung/android/service/activationteeservice/ActivationTee2Certificates;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/service/activationteeservice/ActivationTeeServiceManager;->mService:Lcom/samsung/android/service/activationteeservice/IActivationTeeService;

    invoke-interface {v1}, Lcom/samsung/android/service/activationteeservice/IActivationTeeService;->generateSessionCertificate2()Lcom/samsung/android/service/activationteeservice/ActivationTee2Certificates;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    return-object v0

    :catch_1
    move-exception v1

    const-string v2, "ActivationTeeServiceManager"

    const-string v3, "Failed to connect service."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    return-object v0
.end method

.method public isAliveActivationTeeService()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/service/activationteeservice/ActivationTeeServiceManager;->mService:Lcom/samsung/android/service/activationteeservice/IActivationTeeService;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public storeServerKey([B)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/service/activationteeservice/ActivationTeeServiceManager;->mService:Lcom/samsung/android/service/activationteeservice/IActivationTeeService;

    invoke-interface {v0, p1}, Lcom/samsung/android/service/activationteeservice/IActivationTeeService;->storeServerKey([B)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v1, "ActivationTeeServiceManager"

    const-string v2, "Failed to connect service."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    :goto_0
    nop

    :goto_1
    return-void
.end method

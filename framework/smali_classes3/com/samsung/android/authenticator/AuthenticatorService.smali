.class final Lcom/samsung/android/authenticator/AuthenticatorService;
.super Ljava/lang/Object;
.source "AuthenticatorService.java"


# static fields
.field private static final SERVICE_NAME:Ljava/lang/String; = "SemAuthnrService"

.field private static final TAG:Ljava/lang/String; = "AS"

.field private static sService:Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private static checkNotNullState(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "can not found service"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static deleteFile(Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    invoke-static {}, Lcom/samsung/android/authenticator/AuthenticatorService;->getService()Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/authenticator/AuthenticatorService;->checkNotNullState(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;

    :try_start_0
    invoke-interface {v1, p0}, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;->deleteFile(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "AS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deleteFile failed : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/authenticator/AuthenticatorLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_0
    return v0
.end method

.method static getDrkKeyHandle()[B
    .locals 6

    const/4 v0, 0x0

    new-array v0, v0, [B

    invoke-static {}, Lcom/samsung/android/authenticator/AuthenticatorService;->getService()Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/authenticator/AuthenticatorService;->checkNotNullState(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;

    :try_start_0
    invoke-interface {v1}, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;->getDrkKeyHandle()[B

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "AS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDrkKeyHandle failed : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/authenticator/AuthenticatorLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_0
    return-object v0
.end method

.method static getFiles(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/authenticator/AuthenticatorService;->getService()Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/authenticator/AuthenticatorService;->checkNotNullState(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;

    :try_start_0
    invoke-interface {v1, p0, p1}, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;->getFiles(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "AS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getFiles failed : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/authenticator/AuthenticatorLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_0
    return-object v0
.end method

.method static getMatchedFilePaths(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/authenticator/AuthenticatorService;->getService()Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/authenticator/AuthenticatorService;->checkNotNullState(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;

    :try_start_0
    invoke-interface {v1, p0, p1}, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;->getMatchedFilePaths(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "AS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getMatchedFilePaths failed : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/authenticator/AuthenticatorLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_0
    return-object v0
.end method

.method private static getService()Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;
    .locals 1

    sget-object v0, Lcom/samsung/android/authenticator/AuthenticatorService;->sService:Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;

    if-nez v0, :cond_0

    const-string v0, "SemAuthnrService"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/authenticator/AuthenticatorService;->sService:Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;

    :cond_0
    sget-object v0, Lcom/samsung/android/authenticator/AuthenticatorService;->sService:Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;

    return-object v0
.end method

.method static getVersion()I
    .locals 6

    const/4 v0, -0x1

    invoke-static {}, Lcom/samsung/android/authenticator/AuthenticatorService;->getService()Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/authenticator/AuthenticatorService;->checkNotNullState(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;

    :try_start_0
    invoke-interface {v1}, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;->getVersion()I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "AS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getVersion failed : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/authenticator/AuthenticatorLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_0
    return v0
.end method

.method static getWrappedObject([B)[B
    .locals 6

    const/4 v0, 0x0

    new-array v0, v0, [B

    invoke-static {}, Lcom/samsung/android/authenticator/AuthenticatorService;->getService()Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/authenticator/AuthenticatorService;->checkNotNullState(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;

    :try_start_0
    invoke-interface {v1, p0}, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;->getWrappedObject([B)[B

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "AS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getWrappedObject failed : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/authenticator/AuthenticatorLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_0
    return-object v0
.end method

.method static initialize(Landroid/os/ParcelFileDescriptor;JJ)Z
    .locals 8

    const/4 v0, 0x0

    invoke-static {}, Lcom/samsung/android/authenticator/AuthenticatorService;->getService()Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/authenticator/AuthenticatorService;->checkNotNullState(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;

    move-object v3, p0

    move-wide v4, p1

    move-wide v6, p3

    :try_start_0
    invoke-interface/range {v2 .. v7}, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;->initialize(Landroid/os/ParcelFileDescriptor;JJ)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v3, "AS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initialize failed : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/authenticator/AuthenticatorLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_0
    return v0
.end method

.method static initializeDrk()Z
    .locals 6

    const/4 v0, 0x0

    invoke-static {}, Lcom/samsung/android/authenticator/AuthenticatorService;->getService()Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/authenticator/AuthenticatorService;->checkNotNullState(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;

    :try_start_0
    invoke-interface {v1}, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;->initializeDrk()Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "AS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initializeDrk failed : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/authenticator/AuthenticatorLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_0
    return v0
.end method

.method static initializePreloadedTa(I)Z
    .locals 6

    const-string v0, "AS"

    const-string/jumbo v1, "static boolean initializePreloadedTa(int trustedAppType)"

    invoke-static {v0, v1}, Lcom/samsung/android/authenticator/AuthenticatorLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {}, Lcom/samsung/android/authenticator/AuthenticatorService;->getService()Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/authenticator/AuthenticatorService;->checkNotNullState(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;

    :try_start_0
    invoke-interface {v1, p0}, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;->initializePreloadedTa(I)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "AS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initializeWithPreloadedTap failed : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/authenticator/AuthenticatorLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_0
    return v0
.end method

.method static initializeWithPreloadedTa()Z
    .locals 6

    const/4 v0, 0x0

    invoke-static {}, Lcom/samsung/android/authenticator/AuthenticatorService;->getService()Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/authenticator/AuthenticatorService;->checkNotNullState(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;

    :try_start_0
    invoke-interface {v1}, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;->initializeWithPreloadedTa()Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "AS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initializeWithPreloadedTa failed : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/authenticator/AuthenticatorLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_0
    return v0
.end method

.method static process([B)[B
    .locals 6

    const/4 v0, 0x0

    new-array v0, v0, [B

    invoke-static {}, Lcom/samsung/android/authenticator/AuthenticatorService;->getService()Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/authenticator/AuthenticatorService;->checkNotNullState(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;

    :try_start_0
    invoke-interface {v1, p0}, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;->process([B)[B

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "AS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "process failed : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/authenticator/AuthenticatorLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_0
    return-object v0
.end method

.method static processPreloadedTa(I[B)[B
    .locals 6

    const-string v0, "AS"

    const-string/jumbo v1, "static byte[] processPreloadedTa(int trustedAppType, byte[] command)"

    invoke-static {v0, v1}, Lcom/samsung/android/authenticator/AuthenticatorLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    new-array v0, v0, [B

    invoke-static {}, Lcom/samsung/android/authenticator/AuthenticatorService;->getService()Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/authenticator/AuthenticatorService;->checkNotNullState(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;

    :try_start_0
    invoke-interface {v1, p0, p1}, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;->processPreloadedTa(I[B)[B

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "AS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "processWithPreloadedTap failed : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/authenticator/AuthenticatorLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_0
    return-object v0
.end method

.method static processWithPreloadedTa([BLjava/lang/String;)[B
    .locals 6

    const/4 v0, 0x0

    new-array v0, v0, [B

    invoke-static {}, Lcom/samsung/android/authenticator/AuthenticatorService;->getService()Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/authenticator/AuthenticatorService;->checkNotNullState(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;

    :try_start_0
    invoke-interface {v1, p0, p1}, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;->processWithPreloadedTa([BLjava/lang/String;)[B

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "AS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "processWithPreloadedTa failed : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/authenticator/AuthenticatorLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_0
    return-object v0
.end method

.method static readFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const-string v0, ""

    invoke-static {}, Lcom/samsung/android/authenticator/AuthenticatorService;->getService()Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/authenticator/AuthenticatorService;->checkNotNullState(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;

    :try_start_0
    invoke-interface {v1, p0}, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;->readFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "AS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "readFile failed : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/authenticator/AuthenticatorLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_0
    return-object v0
.end method

.method static setChallenge([B)Z
    .locals 6

    const/4 v0, 0x0

    invoke-static {}, Lcom/samsung/android/authenticator/AuthenticatorService;->getService()Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/authenticator/AuthenticatorService;->checkNotNullState(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;

    :try_start_0
    invoke-interface {v1, p0}, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;->setChallenge([B)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "AS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setChallenge failed : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/authenticator/AuthenticatorLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_0
    return v0
.end method

.method static terminate()Z
    .locals 6

    const/4 v0, 0x0

    invoke-static {}, Lcom/samsung/android/authenticator/AuthenticatorService;->getService()Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/authenticator/AuthenticatorService;->checkNotNullState(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;

    :try_start_0
    invoke-interface {v1}, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;->terminate()Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "AS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "terminate failed : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/authenticator/AuthenticatorLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_0
    return v0
.end method

.method static terminateDrk()Z
    .locals 6

    const/4 v0, 0x0

    invoke-static {}, Lcom/samsung/android/authenticator/AuthenticatorService;->getService()Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/authenticator/AuthenticatorService;->checkNotNullState(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;

    :try_start_0
    invoke-interface {v1}, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;->terminateDrk()Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "AS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "terminateDrk failed : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/authenticator/AuthenticatorLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_0
    return v0
.end method

.method static terminatePreloadedTa(I)Z
    .locals 6

    const-string v0, "AS"

    const-string/jumbo v1, "static boolean terminatePreloadedTa(int trustedAppType)"

    invoke-static {v0, v1}, Lcom/samsung/android/authenticator/AuthenticatorLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {}, Lcom/samsung/android/authenticator/AuthenticatorService;->getService()Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/authenticator/AuthenticatorService;->checkNotNullState(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;

    :try_start_0
    invoke-interface {v1, p0}, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;->terminatePreloadedTa(I)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "AS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "terminateWithPreloadedTap failed : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/authenticator/AuthenticatorLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_0
    return v0
.end method

.method static terminateWithPreloadedTa()Z
    .locals 6

    const/4 v0, 0x0

    invoke-static {}, Lcom/samsung/android/authenticator/AuthenticatorService;->getService()Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/authenticator/AuthenticatorService;->checkNotNullState(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;

    :try_start_0
    invoke-interface {v1}, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;->terminateWithPreloadedTa()Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "AS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "terminateWithPreloadedTa failed : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/authenticator/AuthenticatorLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_0
    return v0
.end method

.method static writeFile([BLjava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    invoke-static {}, Lcom/samsung/android/authenticator/AuthenticatorService;->getService()Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/authenticator/AuthenticatorService;->checkNotNullState(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;

    :try_start_0
    invoke-interface {v1, p0, p1}, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;->writeFile([BLjava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "AS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "writeFile failed : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/authenticator/AuthenticatorLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_0
    return v0
.end method

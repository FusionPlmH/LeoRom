.class public Lcom/android/server/pm/TimaHelper;
.super Ljava/lang/Object;
.source "TimaHelper.java"


# static fields
.field public static ALIAS_PERSONA_FS:Ljava/lang/String; = null

.field public static ALIAS_PERSONA_PWD:Ljava/lang/String; = null

.field public static ALIAS_PERSONA_PWDHINT:Ljava/lang/String; = null

.field public static ALIAS_PERSONA_PWD_RESET_TOKEN:Ljava/lang/String; = null

.field private static final DEBUG:Z

.field private static final TIMA_LOG_TAG:Ljava/lang/String; = "TimaHelper"

.field private static final TYPE_TIMA_FIPS_KEYSTORE:Ljava/lang/String; = "FipsTimaKeyStore"

.field private static final TYPE_TIMA_KEYSTORE:Ljava/lang/String; = "TIMAKeyStore"

.field private static mTimaHelper:Lcom/android/server/pm/TimaHelper;


# instance fields
.field private mTksName:Ljava/lang/String;

.field private mVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "eng"

    const-string/jumbo v1, "ro.build.type"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/pm/TimaHelper;->DEBUG:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/pm/TimaHelper;->mTimaHelper:Lcom/android/server/pm/TimaHelper;

    const-string v0, "ecryptfsKey"

    sput-object v0, Lcom/android/server/pm/TimaHelper;->ALIAS_PERSONA_FS:Ljava/lang/String;

    const-string v0, "PersonaPasswordKey"

    sput-object v0, Lcom/android/server/pm/TimaHelper;->ALIAS_PERSONA_PWD:Ljava/lang/String;

    const-string v0, "PersonaPasswordHintKey"

    sput-object v0, Lcom/android/server/pm/TimaHelper;->ALIAS_PERSONA_PWDHINT:Ljava/lang/String;

    const-string v0, "PersonaPwdResetToken"

    sput-object v0, Lcom/android/server/pm/TimaHelper;->ALIAS_PERSONA_PWD_RESET_TOKEN:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "NONE"

    iput-object v0, p0, Lcom/android/server/pm/TimaHelper;->mTksName:Ljava/lang/String;

    const-string v0, "NONE"

    iput-object v0, p0, Lcom/android/server/pm/TimaHelper;->mVersion:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/server/pm/TimaHelper;->initTimaHelper()V

    const-string v0, "TimaHelper"

    const-string v1, "TimaHelper created"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private checkSecurityStatus()I
    .locals 6

    const-string v0, "iccc"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/iccc/IIntegrityControlCheckCenter$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/iccc/IIntegrityControlCheckCenter;

    move-result-object v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    const-string v2, "IntegrityControlCheckCenter is not available"

    invoke-static {v2}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    return v1

    :cond_0
    const/4 v2, -0x1

    move v3, v1

    const v4, -0xdfffff

    :try_start_0
    invoke-interface {v0, v4}, Lcom/samsung/android/iccc/IIntegrityControlCheckCenter;->getSecureData(I)I

    move-result v4

    move v2, v4

    const v4, -0xffff4

    invoke-interface {v0, v4}, Lcom/samsung/android/iccc/IIntegrityControlCheckCenter;->getSecureData(I)I

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v4

    goto :goto_0

    :catch_0
    move-exception v4

    const-string v5, "Unexpected exception while get secure data from ICCC "

    invoke-static {v5, v4}, Lcom/android/server/SDPLog;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    if-nez v2, :cond_1

    if-nez v3, :cond_1

    const/4 v1, 0x0

    return v1

    :cond_1
    const-string v4, "Failed to get security status."

    invoke-static {v4}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    return v1
.end method

.method private checkTimaError(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/TimaException;
        }
    .end annotation

    packed-switch p2, :pswitch_data_0

    return-void

    :pswitch_0
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    new-instance v0, Lcom/android/server/pm/TimaException;

    invoke-direct {v0}, Lcom/android/server/pm/TimaException;-><init>()V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1000c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private getEntryPassword(I)Ljava/security/KeyStore$ProtectionParameter;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/security/KeyStore$PasswordProtection;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/KeyStore$PasswordProtection;-><init>([C)V

    return-object v1
.end method

.method public static getInstance()Lcom/android/server/pm/TimaHelper;
    .locals 1

    sget-object v0, Lcom/android/server/pm/TimaHelper;->mTimaHelper:Lcom/android/server/pm/TimaHelper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/pm/TimaHelper;

    invoke-direct {v0}, Lcom/android/server/pm/TimaHelper;-><init>()V

    sput-object v0, Lcom/android/server/pm/TimaHelper;->mTimaHelper:Lcom/android/server/pm/TimaHelper;

    :cond_0
    sget-object v0, Lcom/android/server/pm/TimaHelper;->mTimaHelper:Lcom/android/server/pm/TimaHelper;

    return-object v0
.end method

.method private getTimaKeyStore()Ljava/security/KeyStore;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;,
            Ljava/security/KeyStoreException;
        }
    .end annotation

    const/4 v0, 0x0

    move-object v1, v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/TimaHelper;->mTksName:Ljava/lang/String;

    invoke-static {v2}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v2

    move-object v1, v2

    invoke-virtual {v1, v0}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-object v1

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to load TKS instance... "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/pm/TimaHelper;->mTksName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TimaHelper"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    throw v0

    :catch_1
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to get TKS instance... "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/pm/TimaHelper;->mTksName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TimaHelper"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    throw v0
.end method

.method private getTimaService()Landroid/service/tima/ITimaService;
    .locals 1

    const-string/jumbo v0, "tima"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/service/tima/ITimaService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/tima/ITimaService;

    move-result-object v0

    return-object v0
.end method

.method private initTimaHelper()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/pm/TimaHelper;->isFipsAvilable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "FIPS3.0"

    iput-object v0, p0, Lcom/android/server/pm/TimaHelper;->mVersion:Ljava/lang/String;

    const-string v0, "FipsTimaKeyStore"

    iput-object v0, p0, Lcom/android/server/pm/TimaHelper;->mTksName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, "3.0"

    iput-object v0, p0, Lcom/android/server/pm/TimaHelper;->mVersion:Ljava/lang/String;

    const-string v0, "TIMAKeyStore"

    iput-object v0, p0, Lcom/android/server/pm/TimaHelper;->mTksName:Ljava/lang/String;

    :goto_0
    const-string v0, "initTimaHelper()"

    invoke-virtual {p0, v0}, Lcom/android/server/pm/TimaHelper;->dump(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public checkEntry(ILjava/lang/String;)Z
    .locals 2

    const-string v0, "TimaHelper"

    const-string v1, "TIMA KeyStore is deprecated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public checkTimaStatus(I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/TimaException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/server/pm/TimaHelper;->getTimaStatus()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "TimaHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkTimaStatus() - Version "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/pm/TimaHelper;->mVersion:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", Status"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", Validation : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/TimaHelper;->checkTimaError(II)V

    return v1
.end method

.method public deleteEntry(ILjava/lang/String;)V
    .locals 2

    const-string v0, "TimaHelper"

    const-string v1, "TIMA KeyStore is deprecated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public dump(Ljava/lang/String;)V
    .locals 3

    sget-boolean v0, Lcom/android/server/pm/TimaHelper;->DEBUG:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "TimaHelper"

    const-string v1, "### Dump of TimaHelper"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    const-string v0, "TimaHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "### : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string v0, "TimaHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "### TimaHelper = { TksName : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/pm/TimaHelper;->mTksName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", Version : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/pm/TimaHelper;->mVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " }"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getEntry(ILjava/lang/String;)[B
    .locals 2

    const-string v0, "TimaHelper"

    const-string v1, "TIMA KeyStore is deprecated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTimaStatus()I
    .locals 7

    const/4 v0, -0x1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    const/4 v3, 0x0

    :try_start_0
    const-string v4, "Check security status from ICCC"

    invoke-static {v4}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/pm/TimaHelper;->checkSecurityStatus()I

    move-result v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v4

    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    :catchall_0
    move-exception v4

    goto :goto_2

    :catch_0
    move-exception v4

    :try_start_1
    const-string v5, "TimaHelper"

    const-string v6, "getTimaStatus() - Failed due to unexpected error..."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    goto :goto_0

    :catch_1
    move-exception v4

    const-string v5, "TimaHelper"

    const-string v6, "getTimaStatus() - Failed to access to tima service..."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v3, v5

    goto :goto_0

    :goto_1
    if-eqz v0, :cond_0

    const-string v4, "TimaHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getTimaStatus() - Tima Status : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return v0

    :goto_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public getTimaVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/TimaHelper;->mVersion:Ljava/lang/String;

    return-object v0
.end method

.method public isFipsAvilable()Z
    .locals 1

    invoke-static {}, Lcom/sec/tima/keystore/util/Utility;->isFipsTimaEnabled()Z

    move-result v0

    return v0
.end method

.method public isTimaAvailable()Z
    .locals 2

    const-string v0, "TimaHelper"

    const-string v1, "TIMA KeyStore is deprecated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public migrateToFips30(I)Z
    .locals 16

    move/from16 v1, p1

    const-string v0, "TimaHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "migrateToFips30 - Migrate all keys in Tima 3.0 KS to fips certificated... "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    sget-object v2, Lcom/android/server/pm/TimaHelper;->ALIAS_PERSONA_PWD:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v0, v3

    sget-object v2, Lcom/android/server/pm/TimaHelper;->ALIAS_PERSONA_PWDHINT:Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v2, v0, v4

    sget-object v2, Lcom/android/server/pm/TimaHelper;->ALIAS_PERSONA_PWD_RESET_TOKEN:Ljava/lang/String;

    const/4 v5, 0x2

    aput-object v2, v0, v5

    sget-object v2, Lcom/android/server/pm/TimaHelper;->ALIAS_PERSONA_FS:Ljava/lang/String;

    const/4 v5, 0x3

    aput-object v2, v0, v5

    move-object v2, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v8, v3

    :try_start_0
    const-string v0, "TIMAKeyStore"

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    move-object v5, v0

    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    const-string v9, "FipsTimaKeyStore"

    invoke-static {v9}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v9

    move-object v6, v9

    invoke-virtual {v6, v0}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    array-length v0, v2
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/UnrecoverableEntryException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move v9, v8

    move v8, v3

    :goto_0
    if-ge v8, v0, :cond_2

    :try_start_1
    aget-object v10, v2, v8

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/security/KeyStore;->isKeyEntry(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-direct/range {p0 .. p1}, Lcom/android/server/pm/TimaHelper;->getEntryPassword(I)Ljava/security/KeyStore$ProtectionParameter;

    move-result-object v12

    invoke-virtual {v5, v11, v12}, Ljava/security/KeyStore;->getEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;

    move-result-object v12

    check-cast v12, Ljava/security/KeyStore$SecretKeyEntry;

    if-eqz v12, :cond_0

    const-string v13, "TimaHelper"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Found key : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " from keystore"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p1}, Lcom/android/server/pm/TimaHelper;->getEntryPassword(I)Ljava/security/KeyStore$ProtectionParameter;

    move-result-object v13

    invoke-virtual {v6, v11, v12, v13}, Ljava/security/KeyStore;->setEntry(Ljava/lang/String;Ljava/security/KeyStore$Entry;Ljava/security/KeyStore$ProtectionParameter;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_0
    const-string v13, "TimaHelper"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Failed to get a key : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " from keystore"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    goto :goto_2

    :cond_1
    const-string v12, "TimaHelper"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Key not found : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " from keystore"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/UnrecoverableEntryException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v0

    move v9, v8

    :goto_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    :catch_3
    move-exception v0

    move v9, v8

    :goto_4
    invoke-virtual {v0}, Ljava/security/GeneralSecurityException;->printStackTrace()V

    :cond_2
    nop

    :goto_5
    const-string v0, "TimaHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Migration hit count : "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v9, :cond_3

    move v3, v4

    nop

    :cond_3
    move v0, v3

    return v0
.end method

.method public setEntry(ILjava/lang/String;[B)Z
    .locals 2

    const-string v0, "TimaHelper"

    const-string v1, "TIMA KeyStore is deprecated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

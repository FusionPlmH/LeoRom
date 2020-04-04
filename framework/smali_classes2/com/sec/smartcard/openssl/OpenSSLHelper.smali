.class public Lcom/sec/smartcard/openssl/OpenSSLHelper;
.super Ljava/lang/Object;
.source "OpenSSLHelper.java"


# static fields
.field private static final FUNCTION_LIST_NAME:Ljava/lang/String; = "TZ_CCM_C_GetFunctionList"

.field private static final LIBRARY_NAME:Ljava/lang/String; = "libtlc_tz_ccm.so"

.field static final TAG:Ljava/lang/String; = "OpenSSLHelper"

.field private static mLock:Ljava/lang/Object;


# instance fields
.field private pkey:Ljava/security/PrivateKey;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sec/smartcard/openssl/OpenSSLHelper;->mLock:Ljava/lang/Object;

    const-string/jumbo v0, "secopenssl_engine"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/smartcard/openssl/OpenSSLHelper;->pkey:Ljava/security/PrivateKey;

    return-void
.end method

.method public static getPrivateKeyFromKnoxKeyStore(Ljava/lang/String;)Ljava/security/PrivateKey;
    .locals 9

    invoke-static {}, Lcom/sec/smartcard/openssl/OpenSSLHelper;->isUKS()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const-string v0, "OpenSSLHelper"

    const-string v2, "getPrivateKeyFromTimaKeyStore called"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/smartcard/openssl/OpenSSLHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    move-object v2, v1

    :try_start_0
    const-string v3, "KnoxAndroidKeyStore"

    invoke-static {v3}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    if-eqz p0, :cond_6

    const-string v4, ""

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto/16 :goto_0

    :cond_1
    const-string/jumbo v4, "knox_ccm_policy"

    nop

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    move-result-object v5

    if-nez v5, :cond_2

    const-string v6, "OpenSSLHelper"

    const-string v7, "Unable start CCMservice"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/UnrecoverableEntryException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v1

    :cond_2
    :try_start_2
    invoke-interface {v5, p0}, Lcom/samsung/android/knox/keystore/IClientCertificateManager;->hasGrant(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "OpenSSLHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ccmService: do not have grant for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/security/KeyStoreException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/security/UnrecoverableEntryException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-object v1

    :cond_3
    :try_start_4
    invoke-virtual {v3, p0, v1}, Ljava/security/KeyStore;->getEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;

    move-result-object v1

    if-eqz v1, :cond_4

    instance-of v6, v1, Ljava/security/KeyStore$PrivateKeyEntry;

    if-eqz v6, :cond_4

    move-object v6, v1

    check-cast v6, Ljava/security/KeyStore$PrivateKeyEntry;

    invoke-virtual {v6}, Ljava/security/KeyStore$PrivateKeyEntry;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object v6

    move-object v2, v6

    goto :goto_1

    :cond_4
    const-string v6, "OpenSSLHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to get private key "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_5

    const-string v6, "OpenSSLHelper"

    const-string/jumbo v7, "key entry is null "

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    instance-of v6, v1, Ljava/security/KeyStore$PrivateKeyEntry;

    if-nez v6, :cond_7

    const-string v6, "OpenSSLHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "key entry is not private key: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_6
    :goto_0
    const-string v1, "OpenSSLHelper"

    const-string v4, "getPrivateKeyFromTimaKeyStore received empty/null alias"

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/security/KeyStoreException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/security/cert/CertificateException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/security/UnrecoverableEntryException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_7
    :goto_1
    goto :goto_2

    :catchall_0
    move-exception v1

    goto :goto_3

    :catch_0
    move-exception v1

    :try_start_5
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/security/UnrecoverableEntryException;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception v1

    const-string v3, "OpenSSLHelper"

    const-string v4, "CertificateException"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_3
    move-exception v1

    const-string v3, "OpenSSLHelper"

    const-string v4, "NoSuchAlgorithmException"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_4
    move-exception v1

    const-string v3, "OpenSSLHelper"

    const-string v4, "IOException"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_5
    move-exception v1

    const-string v3, "OpenSSLHelper"

    const-string v4, "KeyStoreException"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :goto_2
    monitor-exit v0

    return-object v2

    :goto_3
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v1
.end method

.method public static getPrivateKeyFromTimaKeyStore(Ljava/lang/String;)Ljava/security/PrivateKey;
    .locals 1

    invoke-static {}, Lcom/sec/smartcard/openssl/OpenSSLHelper;->isUKS()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/sec/smartcard/openssl/OpenSSLHelper;->getPrivateKeyFromKnoxKeyStore(Ljava/lang/String;)Ljava/security/PrivateKey;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static isUKS()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public native deregisterEngineKeychain()I
.end method

.method public deregister_engine()Z
    .locals 3

    const-string v0, "OpenSSLHelper"

    const-string v1, "deregister_engine function"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/sec/smartcard/openssl/OpenSSLHelper;

    invoke-direct {v0}, Lcom/sec/smartcard/openssl/OpenSSLHelper;-><init>()V

    invoke-virtual {v0}, Lcom/sec/smartcard/openssl/OpenSSLHelper;->deregisterEngineKeychain()I

    move-result v0

    if-nez v0, :cond_0

    const-string v1, "OpenSSLHelper"

    const-string v2, "DeRegister engine success"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;
    .locals 3

    const-string v0, "OpenSSLHelper"

    const-string v1, "getPrivateKey function"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "OpenSSLHelper"

    const-string v1, "getPrivateKey function getPrivateKeyFromTimaKeyStore"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/smartcard/openssl/OpenSSLHelper;->isUKS()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/sec/smartcard/openssl/OpenSSLHelper;->getPrivateKeyFromTimaKeyStore(Ljava/lang/String;)Ljava/security/PrivateKey;

    move-result-object v0

    return-object v0

    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x0

    return-object v0

    :cond_1
    :try_start_0
    invoke-static {p1}, Lcom/sec/enterprise/jce/provider/pkcs11/OpenSSLEnginePrivateKeyHelper;->ccmGetPrivateKeyById(Ljava/lang/String;)Ljava/security/PrivateKey;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/smartcard/openssl/OpenSSLHelper;->pkey:Ljava/security/PrivateKey;
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "OpenSSLHelper"

    const-string v2, "InvalidKeyException"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v0, p0, Lcom/sec/smartcard/openssl/OpenSSLHelper;->pkey:Ljava/security/PrivateKey;

    return-object v0
.end method

.method protected getSlotID(Ljava/lang/String;)J
    .locals 3

    const-string v0, "OpenSSLHelper"

    const-string v1, "getSlotID function"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getClientCertificateManager()Landroid/sec/enterprise/ClientCertificateManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/sec/enterprise/ClientCertificateManager;->getSlotIdForCaller(Ljava/lang/String;)J

    move-result-wide v1

    return-wide v1

    :cond_0
    const-wide/16 v1, -0x1

    return-wide v1
.end method

.method public registerEngine(Ljava/lang/String;)Z
    .locals 6

    const-string v0, "OpenSSLHelper"

    const-string/jumbo v1, "registerEngine function"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/sec/smartcard/openssl/OpenSSLHelper;->getSlotID(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v2, v0

    const/4 v3, 0x0

    if-lez v2, :cond_0

    const-string v2, "OpenSSLHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "registerEngine - getSlotID returned invalid slotid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    new-instance v2, Lcom/sec/smartcard/openssl/OpenSSLHelper;

    invoke-direct {v2}, Lcom/sec/smartcard/openssl/OpenSSLHelper;-><init>()V

    const-string/jumbo v4, "libtlc_tz_ccm.so"

    const-string v5, "TZ_CCM_C_GetFunctionList"

    invoke-virtual {v2, v4, v5, v0, v1}, Lcom/sec/smartcard/openssl/OpenSSLHelper;->registerEngineKeychain(Ljava/lang/String;Ljava/lang/String;J)I

    move-result v2

    if-nez v2, :cond_1

    const-string v3, "OpenSSLHelper"

    const-string v4, "Register engine success"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    return v3

    :cond_1
    return v3
.end method

.method public native registerEngineKeychain(Ljava/lang/String;Ljava/lang/String;J)I
.end method

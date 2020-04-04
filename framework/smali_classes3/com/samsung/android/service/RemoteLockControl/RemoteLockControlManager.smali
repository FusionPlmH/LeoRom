.class public final Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;
.super Ljava/lang/Object;
.source "RemoteLockControlManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$CryptoManager;,
        Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;
    }
.end annotation


# static fields
.field private static final BLINK_STATE:Ljava/lang/String; = "Blink"

.field private static final COMPLETED_STATE:Ljava/lang/String; = "Completed"

.field private static final LOCKED_STATE:Ljava/lang/String; = "Locked"

.field private static final NORMAL_STATE:Ljava/lang/String; = "Normal"

.field private static final PRENORMAL_STATE:Ljava/lang/String; = "Prenormal"

.field private static final RLC_AES256_IV_SIZE:I = 0x10

.field private static final RLC_AES256_KEY_SIZE:I = 0x20

.field private static final RLC_DELAY_TIME:I = 0x7530

.field private static final RLC_ERR_CERTIFICATE:I = -0x3

.field private static final RLC_ERR_CRYPTO_FUNCTION:I = -0x8

.field private static final RLC_ERR_GENERAL:I = -0x1

.field private static final RLC_ERR_INVALID_ARGUMENT:I = -0x2

.field private static final RLC_ERR_INVALID_TOKEN:I = -0x4

.field private static final RLC_ERR_LOCKSCREEN:I = -0x9

.field private static final RLC_ERR_MAX_FAILURE_COUNT_REACHED:I = -0x7

.field private static final RLC_ERR_SERIALIZATION:I = -0xa

.field private static final RLC_ERR_SERVER_RESULT_FAIL:I = -0x6

.field private static final RLC_ERR_VAULTKEEPER:I = -0x5

.field private static final RLC_FAILCOUNT_FOR_DELAY:I = 0x5

.field private static final RLC_ID_SIZE:I = 0x28

.field private static final RLC_KEY_SIZE:I = 0x20

.field private static final RLC_NONCE_FLAG_VERIFY:I = 0x2

.field private static final RLC_NONCE_FLAG_WRITE:I = 0x1

.field private static final RLC_NONCE_SIZE:I = 0x20

.field private static final RLC_SHA256_SIZE:I = 0x20

.field private static final RLC_SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "RlcManager"

.field private static mCompleteUnlockingDone:Z = false

.field private static mContext:Landroid/content/Context; = null

.field private static mCrypto:Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$CryptoManager; = null

.field private static mLockSettingsService:Lcom/android/internal/widget/ILockSettings; = null

.field private static mNonceDev:[B = null

.field private static mNonceSvr:[B = null

.field private static mRemoteLockControlListener:Lcom/samsung/android/service/RemoteLockControl/IRemoteLockControlListener; = null

.field private static mRlcId:[B = null

.field private static mRlcKey:[B = null

.field private static final mRlcVaultName:Ljava/lang/String; = "RemoteLockControl"

.field private static mServerCert:[B

.field private static mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;


# instance fields
.field mRemoteLockMonitorCallback:Lcom/android/internal/widget/IRemoteLockMonitorCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x20

    new-array v1, v0, [B

    sput-object v1, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mRlcKey:[B

    const/16 v1, 0x28

    new-array v1, v1, [B

    sput-object v1, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mRlcId:[B

    new-array v1, v0, [B

    sput-object v1, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mNonceDev:[B

    new-array v0, v0, [B

    sput-object v0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mNonceSvr:[B

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$1;-><init>(Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;)V

    iput-object v0, p0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mRemoteLockMonitorCallback:Lcom/android/internal/widget/IRemoteLockMonitorCallback;

    sput-object p1, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mServerCert:[B

    const-string v1, "RemoteLockControl"

    invoke-static {v1}, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->getInstance(Ljava/lang/String;)Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    new-instance v1, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$CryptoManager;

    invoke-direct {v1, p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$CryptoManager;-><init>(Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;)V

    sput-object v1, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mCrypto:Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$CryptoManager;

    sput-object v0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mRemoteLockControlListener:Lcom/samsung/android/service/RemoteLockControl/IRemoteLockControlListener;

    sput-object v0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/service/RemoteLockControl/IRemoteLockControlListener;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$1;-><init>(Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;)V

    iput-object v0, p0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mRemoteLockMonitorCallback:Lcom/android/internal/widget/IRemoteLockMonitorCallback;

    sput-object p1, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mServerCert:[B

    const-string v1, "RemoteLockControl"

    invoke-static {v1}, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->getInstance(Ljava/lang/String;)Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    new-instance v1, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$CryptoManager;

    invoke-direct {v1, p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$CryptoManager;-><init>(Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;)V

    sput-object v1, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mCrypto:Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$CryptoManager;

    sput-object p2, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mRemoteLockControlListener:Lcom/samsung/android/service/RemoteLockControl/IRemoteLockControlListener;

    sput-object v0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    return-void
.end method

.method static synthetic access$000()Lcom/samsung/android/service/RemoteLockControl/IRemoteLockControlListener;
    .locals 1

    sget-object v0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mRemoteLockControlListener:Lcom/samsung/android/service/RemoteLockControl/IRemoteLockControlListener;

    return-object v0
.end method

.method static synthetic access$100()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mCompleteUnlockingDone:Z

    return v0
.end method

.method static synthetic access$200()Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;
    .locals 1

    sget-object v0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    return-void
.end method

.method private clearRlcData()V
    .locals 2

    sget-object v0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mRlcKey:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    sget-object v0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mRlcId:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    sget-object v0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mNonceDev:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    sget-object v0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mNonceSvr:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    sget-object v0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mServerCert:[B

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mServerCert:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mServerCert:[B

    :cond_0
    return-void
.end method

.method private deserialize([BLjava/lang/Class;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([B",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p1, :cond_5

    array-length v3, p1

    if-nez v3, :cond_0

    goto :goto_6

    :cond_0
    :try_start_0
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object v0, v3

    new-instance v3, Ljava/io/ObjectInputStream;

    invoke-direct {v3, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v1, v3

    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    :try_start_1
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    :goto_0
    :try_start_2
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v3

    goto :goto_2

    :catchall_0
    move-exception v3

    goto :goto_3

    :catch_2
    move-exception v3

    :try_start_3
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    const/16 v4, -0xa

    const-string v5, "Error deserialize"

    invoke-direct {p0, v4, v5}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v0, :cond_1

    :try_start_4
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_1

    :catch_3
    move-exception v3

    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    :goto_2
    return-object v2

    :goto_3
    if-eqz v0, :cond_3

    :try_start_5
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_4

    :catch_4
    move-exception v4

    :cond_3
    :goto_4
    if-eqz v1, :cond_4

    :try_start_6
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_5

    :catch_5
    move-exception v4

    :cond_4
    :goto_5
    throw v3

    :cond_5
    :goto_6
    const/4 v3, 0x0

    return-object v3
.end method

.method private getRlcVaultData()Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
        }
    .end annotation

    const-string v0, "RlcManager"

    const-string v1, "getRlcVaultData"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    sget-object v1, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    const/4 v2, -0x5

    if-nez v1, :cond_0

    const-string v1, "Error from VaultKeeper Manager is null object"

    invoke-direct {p0, v2, v1}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    :cond_0
    :try_start_0
    sget-object v1, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->read(I)[B

    move-result-object v1

    if-nez v1, :cond_1

    const-string v3, "Error from VaultKeeper (readData)"

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    :cond_1
    array-length v2, v1

    if-nez v2, :cond_2

    const-string v2, "RlcManager"

    const-string v3, "No data in Vault"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return-object v2

    :cond_2
    const-class v2, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->deserialize([BLjava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;
    :try_end_0
    .catch Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    nop

    return-object v0

    :catch_0
    move-exception v1

    throw v1
.end method

.method private makeDeviceMsg([B[B[B[B[B[B)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    array-length v1, p2

    add-int/2addr v0, v1

    :cond_0
    if-eqz p3, :cond_1

    array-length v1, p3

    add-int/2addr v0, v1

    :cond_1
    if-eqz p4, :cond_2

    array-length v1, p4

    add-int/2addr v0, v1

    :cond_2
    if-eqz p5, :cond_3

    array-length v1, p5

    add-int/2addr v0, v1

    :cond_3
    if-eqz p6, :cond_4

    array-length v1, p6

    add-int/2addr v0, v1

    :cond_4
    new-array v1, v0, [B

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v4, v3

    if-eqz p2, :cond_5

    :try_start_0
    array-length v5, p2

    invoke-static {p2, v3, v1, v4, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    array-length v5, p2

    add-int/2addr v4, v5

    goto :goto_0

    :catch_0
    move-exception v3

    goto :goto_1

    :cond_5
    :goto_0
    if-eqz p3, :cond_6

    array-length v5, p3

    invoke-static {p3, v3, v1, v4, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    array-length v5, p3

    add-int/2addr v4, v5

    :cond_6
    if-eqz p4, :cond_7

    array-length v5, p4

    invoke-static {p4, v3, v1, v4, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    array-length v5, p4

    add-int/2addr v4, v5

    :cond_7
    if-eqz p5, :cond_8

    array-length v5, p5

    invoke-static {p5, v3, v1, v4, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    array-length v5, p5

    add-int/2addr v4, v5

    :cond_8
    if-eqz p6, :cond_9

    array-length v5, p6

    invoke-static {p6, v3, v1, v4, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    array-length v3, p6

    add-int/2addr v4, v3

    :cond_9
    invoke-virtual {p0, v1, p1}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->encryptData([B[B)[B

    move-result-object v3
    :try_end_0
    .catch Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    nop

    return-object v2

    :goto_1
    nop

    throw v3
.end method

.method private makeResultDev()[B
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
        }
    .end annotation

    const/4 v0, 0x0

    sget-object v1, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    const/4 v2, -0x5

    if-nez v1, :cond_0

    const-string v1, "Error from VaultKeeper Manager is null object"

    invoke-direct {p0, v2, v1}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    :cond_0
    :try_start_0
    sget-object v1, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->read(I)[B

    move-result-object v1

    if-nez v1, :cond_1

    const-string v3, "Error from VaultKeeper (readState)"

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    :cond_1
    sget-object v4, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mServerCert:[B

    const/4 v5, 0x0

    sget-object v6, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mRlcId:[B

    sget-object v7, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mNonceSvr:[B

    const/4 v8, 0x0

    move-object v3, p0

    move-object v9, v1

    invoke-direct/range {v3 .. v9}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->makeDeviceMsg([B[B[B[B[B[B)[B

    move-result-object v2
    :try_end_0
    .catch Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v2, -0x1

    const-string v3, "Exception"

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    :goto_0
    return-object v0

    :catch_1
    move-exception v1

    throw v1
.end method

.method private parameterChecking([B[B[B)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
        }
    .end annotation

    const/4 v0, -0x2

    if-nez p1, :cond_0

    const-string/jumbo v1, "serverCert is null"

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mCrypto:Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$CryptoManager;

    invoke-virtual {v1, p1}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$CryptoManager;->verifyCertChain([B)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, -0x3

    const-string v2, "Failed to verify Certificate Chain"

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    :cond_1
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    sput-object v1, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mServerCert:[B

    :goto_0
    const/16 v1, 0x20

    if-eqz p2, :cond_2

    array-length v2, p2

    if-eq v2, v1, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "nonceSvr size is wrong("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "), it should be "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    :cond_2
    const/16 v2, 0x28

    if-eqz p3, :cond_3

    array-length v3, p3

    if-eq v3, v2, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "rlcId size is wrong("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, p3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "), it should be "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    :cond_3
    const/4 v0, 0x0

    if-eqz p2, :cond_4

    sget-object v3, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mNonceSvr:[B

    invoke-static {p2, v0, v3, v0, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    :cond_4
    if-eqz p3, :cond_5

    sget-object v1, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mRlcId:[B

    invoke-static {p3, v0, v1, v0, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    :cond_5
    return-void
.end method

.method private serialize(Ljava/lang/Object;)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez p1, :cond_0

    const/4 v3, 0x0

    new-array v3, v3, [B

    return-object v3

    :cond_0
    :try_start_0
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object v0, v3

    new-instance v3, Ljava/io/ObjectOutputStream;

    invoke-direct {v3, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v1, v3

    invoke-virtual {v1, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    :try_start_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    :goto_0
    :try_start_2
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v3

    goto :goto_2

    :catchall_0
    move-exception v3

    goto :goto_3

    :catch_2
    move-exception v3

    :try_start_3
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    const/16 v4, -0xa

    const-string v5, "Error serialize"

    invoke-direct {p0, v4, v5}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v0, :cond_1

    :try_start_4
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_1

    :catch_3
    move-exception v3

    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    :goto_2
    return-object v2

    :goto_3
    if-eqz v0, :cond_3

    :try_start_5
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_4

    :catch_4
    move-exception v4

    :cond_3
    :goto_4
    if-eqz v1, :cond_4

    :try_start_6
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_5

    :catch_5
    move-exception v4

    :cond_4
    :goto_5
    throw v3
.end method

.method private setRemoteLockToLockscreen()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
        }
    .end annotation

    const-string v0, "RlcManager"

    const-string/jumbo v1, "setRemoteLockToLockscreen"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0x9

    :try_start_0
    sget-object v1, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    if-nez v1, :cond_0

    const-string/jumbo v1, "lock_settings"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->getRlcVaultData()Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v2, "getRlcVaultData return null"

    invoke-direct {p0, v0, v2}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    :cond_1
    new-instance v2, Lcom/android/internal/widget/RemoteLockInfo$Builder;

    const/4 v3, 0x2

    const-string v4, "Locked"

    invoke-virtual {p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->query()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-direct {v2, v3, v4}, Lcom/android/internal/widget/RemoteLockInfo$Builder;-><init>(IZ)V

    invoke-virtual {v1}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;->getRequesterName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setClientName(Ljava/lang/CharSequence;)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;->getPhoneNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setPhoneNumber(Ljava/lang/CharSequence;)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;->getNoticeMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setAllowFailCount(I)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    move-result-object v2

    const-wide/16 v3, 0x7530

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setLockTimeOut(J)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setBlockCount(I)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->build()Lcom/android/internal/widget/RemoteLockInfo;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    invoke-interface {v3, v4, v2}, Lcom/android/internal/widget/ILockSettings;->setRemoteLock(ILcom/android/internal/widget/RemoteLockInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    const-string v2, "Runtime Exception from Lockscreen"

    invoke-direct {p0, v0, v2}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    :goto_0
    nop

    return-void
.end method

.method private throwException(ILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RlcManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;-><init>(ILjava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public bindToLockScreen()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "RlcManager"

    const-string v2, "bindToLockScreen"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    sget-object v1, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    if-nez v1, :cond_0

    const-string/jumbo v1, "lock_settings"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    :cond_0
    sget-object v1, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mRemoteLockMonitorCallback:Lcom/android/internal/widget/IRemoteLockMonitorCallback;

    invoke-interface {v1, v2, v3}, Lcom/android/internal/widget/ILockSettings;->registerRemoteLockCallback(ILcom/android/internal/widget/IRemoteLockMonitorCallback;)V

    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->setRemoteLockToLockscreen()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    throw v1

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    const/16 v2, -0x9

    const-string v3, "Runtime Exception from Lockscreen"

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    :goto_0
    nop

    return-void
.end method

.method public completeBlinking(Z[B[B)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
        }
    .end annotation

    const-string v0, "RlcManager"

    const-string v1, "completeBlinking"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    sget-object v1, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    const/4 v2, -0x5

    if-nez v1, :cond_0

    const-string v1, "Error from VaultKeeper Manager is null object"

    invoke-direct {p0, v2, v1}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    :cond_0
    if-nez p1, :cond_1

    const/4 v1, -0x6

    :try_start_0
    const-string/jumbo v3, "resultSvr is fail"

    invoke-direct {p0, v1, v3}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_1
    :goto_0
    array-length v1, p2

    const/16 v3, 0x20

    if-eq v1, v3, :cond_2

    const/4 v1, -0x2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "passcode hash length is wrong("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, p2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    :cond_2
    sget-object v1, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    const/4 v3, 0x1

    const-string v4, "Blink"

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v1, v3, v4, p2, p3}, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->write(I[B[B[B)I

    move-result v1

    if-eqz v1, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error from VaultKeeper (write blink with passcode/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->unbindFromLockScreen()V

    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->makeResultDev()[B

    move-result-object v2
    :try_end_0
    .catch Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v2

    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->clearRlcData()V

    nop

    return-object v0

    :goto_1
    nop

    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->clearRlcData()V

    throw v1
.end method

.method public completeCompleting(Z[B)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
        }
    .end annotation

    const-string v0, "RlcManager"

    const-string v1, "completeCompleting"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    sget-object v1, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    const/4 v2, -0x5

    if-nez v1, :cond_0

    const-string v1, "Error from VaultKeeper Manager is null object"

    invoke-direct {p0, v2, v1}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    :cond_0
    if-nez p1, :cond_1

    const/4 v1, -0x6

    :try_start_0
    const-string/jumbo v3, "resultSvr is fail"

    invoke-direct {p0, v1, v3}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_1
    :goto_0
    sget-object v1, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    const/4 v3, 0x1

    const-string v4, "Completed"

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v1, v3, v4, p2}, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->write(I[B[B)I

    move-result v1

    if-eqz v1, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error from VaultKeeper (write/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->setRemoteLockToLockscreen()V

    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->makeResultDev()[B

    move-result-object v2
    :try_end_0
    .catch Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v2

    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->clearRlcData()V

    nop

    return-object v0

    :goto_1
    nop

    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->clearRlcData()V

    throw v1
.end method

.method public completeDestroying(Z[B)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
        }
    .end annotation

    const-string v0, "RlcManager"

    const-string v1, "completeDestroying"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    sget-object v1, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    const/4 v2, -0x5

    if-nez v1, :cond_0

    const-string v1, "Error from VaultKeeper Manager is null object"

    invoke-direct {p0, v2, v1}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    :cond_0
    if-nez p1, :cond_1

    const/4 v1, -0x6

    :try_start_0
    const-string/jumbo v3, "resultSvr is fail"

    invoke-direct {p0, v1, v3}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_1
    :goto_0
    sget-object v1, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    sget-object v3, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mServerCert:[B

    invoke-virtual {v1, v3, p2}, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->destroy([B[B)I

    move-result v1

    if-eqz v1, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error from VaultKeeper (destroy/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->makeResultDev()[B

    move-result-object v2
    :try_end_0
    .catch Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v2

    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->clearRlcData()V

    nop

    return-object v0

    :goto_1
    nop

    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->clearRlcData()V

    throw v1
.end method

.method public completeLocking(Z[B[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
        }
    .end annotation

    const-string v0, "RlcManager"

    const-string v1, "completeLocking"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    sget-object v1, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    const/4 v2, -0x5

    if-nez v1, :cond_0

    const-string v1, "Error from VaultKeeper Manager is null object"

    invoke-direct {p0, v2, v1}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    :cond_0
    if-nez p1, :cond_1

    const/4 v1, -0x6

    :try_start_0
    const-string/jumbo v3, "resultSvr is fail"

    invoke-direct {p0, v1, v3}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto/16 :goto_2

    :catch_0
    move-exception v1

    goto/16 :goto_1

    :cond_1
    :goto_0
    array-length v1, p2

    const/16 v3, 0x20

    const/4 v4, -0x2

    if-eq v1, v3, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "passcode hash length is wrong("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, p2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v4, v1}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    :cond_2
    if-nez p4, :cond_3

    const-string/jumbo v1, "noticeMsg is null"

    invoke-direct {p0, v4, v1}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    :cond_3
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_4

    const-string/jumbo v1, "noticeMsg has nothing"

    invoke-direct {p0, v4, v1}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    :cond_4
    if-nez p5, :cond_5

    const-string/jumbo v1, "nophoneNumberticeMsg is null"

    invoke-direct {p0, v4, v1}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    :cond_5
    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_6

    const-string/jumbo v1, "phoneNumber has nothing"

    invoke-direct {p0, v4, v1}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    :cond_6
    if-nez p6, :cond_7

    const-string/jumbo v1, "requesterName is null"

    invoke-direct {p0, v4, v1}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    :cond_7
    invoke-virtual {p6}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_8

    const-string/jumbo v1, "requesterName has nothing"

    invoke-direct {p0, v4, v1}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    :cond_8
    sget-object v1, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    const/4 v3, 0x1

    const-string v4, "Locked"

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v1, v3, v4, p2, p3}, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->write(I[B[B[B)I

    move-result v1

    if-eqz v1, :cond_9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error from VaultKeeper (write with passcode/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    :cond_9
    invoke-virtual {p0, p4, p5, p6}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->setLockscreenData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_a

    const-string/jumbo v3, "setLockscreenData"

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    :cond_a
    invoke-virtual {p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->bindToLockScreen()V

    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->makeResultDev()[B

    move-result-object v2
    :try_end_0
    .catch Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v2

    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->clearRlcData()V

    nop

    return-object v0

    :goto_1
    nop

    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->clearRlcData()V

    throw v1
.end method

.method public completeRegistering(Z[B[B)[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
        }
    .end annotation

    const-string v0, "RlcManager"

    const-string v1, "completeRegistering"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    sget-object v1, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    const/4 v2, -0x5

    if-nez v1, :cond_0

    const-string v1, "Error from VaultKeeper Manager is null object"

    invoke-direct {p0, v2, v1}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    :cond_0
    if-nez p1, :cond_1

    const/4 v1, -0x6

    :try_start_0
    const-string/jumbo v3, "resultSvr is fail"

    invoke-direct {p0, v1, v3}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_1
    :goto_0
    const-string v1, "Normal"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    const/16 v3, 0x20

    add-int/2addr v1, v3

    new-array v1, v1, [B

    const-string v4, "Normal"

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const-string v5, "Normal"

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    array-length v5, v5

    const/4 v6, 0x0

    invoke-static {v4, v6, v1, v6, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    sget-object v4, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mNonceDev:[B

    const-string v5, "Normal"

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    array-length v5, v5

    invoke-static {v4, v6, v1, v5, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    sget-object v3, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mCrypto:Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$CryptoManager;

    sget-object v4, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mRlcKey:[B

    invoke-virtual {v3, v1, v4}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$CryptoManager;->hmacSha256([B[B)[B

    move-result-object v3

    invoke-static {p2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-nez v4, :cond_2

    const/4 v4, -0x4

    const-string v5, "Invalid token"

    invoke-direct {p0, v4, v5}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    :cond_2
    sget-object v4, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    sget-object v5, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mRlcKey:[B

    const-string v6, "Normal"

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    sget-object v7, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mServerCert:[B

    invoke-virtual {v4, v5, v6, v7, p3}, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->initialize([B[B[B[B)I

    move-result v4

    if-eqz v4, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error from VaultKeeper (initialization/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v2, v5}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->makeResultDev()[B

    move-result-object v2
    :try_end_0
    .catch Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v2

    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->clearRlcData()V

    nop

    return-object v0

    :goto_1
    nop

    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->clearRlcData()V

    throw v1
.end method

.method public completeUnlocking(Ljava/lang/String;)I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
        }
    .end annotation

    const-string v0, "RlcManager"

    const-string v1, "completeUnlocking(passcode)"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    sget-object v1, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    const/4 v2, -0x5

    if-nez v1, :cond_0

    const-string v1, "Error from VaultKeeper Manager is null object"

    invoke-direct {p0, v2, v1}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    sput-boolean v1, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mCompleteUnlockingDone:Z

    invoke-virtual {p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->getFailureCount()I

    move-result v3

    move v0, v3

    sget-object v3, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->sensitiveBox(I)[B

    move-result-object v3

    if-nez v3, :cond_1

    const-string v5, "Error from VaultKeeper (getNonce)"

    invoke-direct {p0, v2, v5}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    :cond_1
    sget-object v2, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mNonceDev:[B

    const/16 v5, 0x20

    invoke-static {v3, v1, v2, v1, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    sget-object v2, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mCrypto:Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$CryptoManager;

    invoke-virtual {v2, p1}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$CryptoManager;->sha256(Ljava/lang/String;)[B

    move-result-object v2

    if-nez v2, :cond_2

    const/4 v6, -0x8

    const-string v7, "Fail to hash for passcode"

    invoke-direct {p0, v6, v7}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    :cond_2
    const-string v6, "Normal"

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v6, v6

    add-int/2addr v6, v5

    new-array v6, v6, [B

    const-string v7, "Normal"

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    const-string v8, "Normal"

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    array-length v8, v8

    invoke-static {v7, v1, v6, v1, v8}, Ljava/lang/System;->arraycopy([BI[BII)V

    sget-object v7, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mNonceDev:[B

    const-string v8, "Normal"

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    array-length v8, v8

    invoke-static {v7, v1, v6, v8, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    sget-object v1, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mCrypto:Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$CryptoManager;

    invoke-virtual {v1, v6, v2}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$CryptoManager;->hmacSha256([B[B)[B

    move-result-object v1

    sget-object v5, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    const-string v7, "Normal"

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v5, v4, v7, v1}, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->write(I[B[B)I

    move-result v5

    if-nez v5, :cond_3

    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    const-string v7, "RlcManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Incorrect passcode(VaultKeeper-write/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "), current failure count ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    sput-boolean v4, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mCompleteUnlockingDone:Z

    invoke-virtual {p0, v0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->setFailureCount(I)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "RlcManager"

    const-string v7, "Failed setFailureCount"

    invoke-static {v4, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->clearRlcData()V

    nop

    return v0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->clearRlcData()V

    throw v1
.end method

.method public completeUnlocking(Z[B)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
        }
    .end annotation

    const-string v0, "RlcManager"

    const-string v1, "completeUnlocking"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    sget-object v1, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    const/4 v2, -0x5

    if-nez v1, :cond_0

    const-string v1, "Error from VaultKeeper Manager is null object"

    invoke-direct {p0, v2, v1}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    :cond_0
    if-nez p1, :cond_1

    const/4 v1, -0x6

    :try_start_0
    const-string/jumbo v3, "resultSvr is fail"

    invoke-direct {p0, v1, v3}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_1
    :goto_0
    sget-object v1, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    const/4 v3, 0x1

    const-string v4, "Normal"

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v1, v3, v4, p2}, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->write(I[B[B)I

    move-result v1

    if-eqz v1, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error from VaultKeeper (write/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->setRemoteLockToLockscreen()V

    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->makeResultDev()[B

    move-result-object v2
    :try_end_0
    .catch Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v2

    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->clearRlcData()V

    nop

    return-object v0

    :goto_1
    nop

    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->clearRlcData()V

    throw v1
.end method

.method public encryptData([B[B)[B
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
        }
    .end annotation

    const-string v0, "RlcManager"

    const-string v1, "encryptClientData"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v3, 0x20

    new-array v4, v3, [B

    const/16 v5, 0x10

    new-array v6, v5, [B

    const/16 v7, 0x30

    new-array v7, v7, [B

    if-eqz p1, :cond_0

    array-length v8, p1

    if-nez v8, :cond_1

    :cond_0
    const/4 v8, -0x2

    const-string v9, "Invalid clientData"

    invoke-direct {p0, v8, v9}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    :cond_1
    const/4 v8, 0x0

    const/4 v9, 0x0

    :try_start_0
    invoke-direct {p0, p2, v8, v8}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->parameterChecking([B[B[B)V

    sget-object v8, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mCrypto:Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$CryptoManager;

    invoke-virtual {v8, v6}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$CryptoManager;->getRandom([B)V

    sget-object v8, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mCrypto:Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$CryptoManager;

    invoke-virtual {v8, v4}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$CryptoManager;->getRandom([B)V

    invoke-static {v4, v9, v7, v9, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    invoke-static {v6, v9, v7, v3, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    sget-object v3, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mCrypto:Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$CryptoManager;

    invoke-virtual {v3, v7, p2}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$CryptoManager;->ecryptWithServerPubKey([B[B)[B

    move-result-object v3

    move-object v1, v3

    sget-object v3, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mCrypto:Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$CryptoManager;

    invoke-virtual {v3, p1, v4, v6}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$CryptoManager;->ecryptWithAES256CBC([B[B[B)[B

    move-result-object v3

    move-object v2, v3

    if-eqz v1, :cond_2

    if-nez v2, :cond_3

    :cond_2
    const/4 v3, -0x8

    const-string v5, "encryptData"

    invoke-direct {p0, v3, v5}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    :cond_3
    array-length v3, v1

    array-length v5, v2

    add-int/2addr v3, v5

    new-array v3, v3, [B

    move-object v0, v3

    array-length v3, v1

    invoke-static {v1, v9, v0, v9, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    array-length v3, v1

    array-length v5, v2

    invoke-static {v2, v9, v0, v3, v5}, Ljava/lang/System;->arraycopy([BI[BII)V
    :try_end_0
    .catch Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v4, v9}, Ljava/util/Arrays;->fill([BB)V

    invoke-static {v6, v9}, Ljava/util/Arrays;->fill([BB)V

    invoke-static {v7, v9}, Ljava/util/Arrays;->fill([BB)V

    nop

    return-object v0

    :catchall_0
    move-exception v3

    goto :goto_0

    :catch_0
    move-exception v3

    :try_start_1
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-static {v4, v9}, Ljava/util/Arrays;->fill([BB)V

    invoke-static {v6, v9}, Ljava/util/Arrays;->fill([BB)V

    invoke-static {v7, v9}, Ljava/util/Arrays;->fill([BB)V

    throw v3
.end method

.method public getClientData()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
        }
    .end annotation

    const-string v0, "RlcManager"

    const-string v1, "getClientData"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, ""

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->getRlcVaultData()Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v2, "RlcManager"

    const-string v3, "No data in Vault"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    invoke-virtual {v1}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;->getClientData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "RlcManager"

    const-string v3, "No client data in Vault"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_1
    invoke-virtual {v1}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;->getClientData()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    nop

    return-object v0

    :catch_0
    move-exception v1

    throw v1
.end method

.method public getFailureCount()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
        }
    .end annotation

    const-string v0, "RlcManager"

    const-string v1, "getFailureCount"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->getRlcVaultData()Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v2, "RlcManager"

    const-string v3, "No data in Vault"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v1}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;->getFailureCount()I

    move-result v2
    :try_end_0
    .catch Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    nop

    return v0

    :catch_0
    move-exception v1

    throw v1
.end method

.method public getNoticeMessage()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
        }
    .end annotation

    const-string v0, "RlcManager"

    const-string v1, "getNoticeMessage"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, ""

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->getRlcVaultData()Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v2, "RlcManager"

    const-string v3, "No data in Vault"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    invoke-virtual {v1}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;->getNoticeMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "RlcManager"

    const-string v3, "No notice message in Vault"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_1
    invoke-virtual {v1}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;->getNoticeMessage()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    nop

    return-object v0

    :catch_0
    move-exception v1

    throw v1
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
        }
    .end annotation

    const-string v0, "RlcManager"

    const-string v1, "getPhoneNumber"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, ""

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->getRlcVaultData()Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v2, "RlcManager"

    const-string v3, "No data in Vault"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    invoke-virtual {v1}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;->getPhoneNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "RlcManager"

    const-string v3, "No phone number in Vault"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_1
    invoke-virtual {v1}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;->getPhoneNumber()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    nop

    return-object v0

    :catch_0
    move-exception v1

    throw v1
.end method

.method public getRequesterName()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
        }
    .end annotation

    const-string v0, "RlcManager"

    const-string v1, "getRequesterName"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, ""

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->getRlcVaultData()Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v2, "RlcManager"

    const-string v3, "No data in Vault"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    invoke-virtual {v1}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;->getNoticeMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "RlcManager"

    const-string v3, "No requester name in Vault"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_1
    invoke-virtual {v1}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;->getRequesterName()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    nop

    return-object v0

    :catch_0
    move-exception v1

    throw v1
.end method

.method public prepareBlinking([B[B[B)[B
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
        }
    .end annotation

    const-string v0, "RlcManager"

    const-string/jumbo v1, "requestBlinking"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    sget-object v1, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    const/4 v2, -0x5

    if-nez v1, :cond_0

    const-string v1, "Error from VaultKeeper Manager is null object"

    invoke-direct {p0, v2, v1}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    :cond_0
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->parameterChecking([B[B[B)V

    sget-object v1, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->sensitiveBox(I)[B

    move-result-object v1

    if-nez v1, :cond_1

    const-string v3, "Error from VaultKeeper (getNonce)"

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    :cond_1
    sget-object v2, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mNonceDev:[B

    const/16 v3, 0x20

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    const/4 v7, 0x0

    sget-object v10, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mNonceDev:[B

    const/4 v11, 0x0

    move-object v5, p0

    move-object v6, p1

    move-object v8, p3

    move-object v9, p2

    invoke-direct/range {v5 .. v11}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->makeDeviceMsg([B[B[B[B[B[B)[B

    move-result-object v2
    :try_end_0
    .catch Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    nop

    return-object v0

    :catch_0
    move-exception v1

    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->clearRlcData()V

    throw v1
.end method

.method public prepareCompleting([B[B[B)[B
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
        }
    .end annotation

    const-string v0, "RlcManager"

    const-string/jumbo v1, "requestCompleting"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    sget-object v1, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    const/4 v2, -0x5

    if-nez v1, :cond_0

    const-string v1, "Error from VaultKeeper Manager is null object"

    invoke-direct {p0, v2, v1}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    :cond_0
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->parameterChecking([B[B[B)V

    sget-object v1, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->sensitiveBox(I)[B

    move-result-object v1

    if-nez v1, :cond_1

    const-string v3, "Error from VaultKeeper (getNonce)"

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    :cond_1
    sget-object v2, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mNonceDev:[B

    const/16 v3, 0x20

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    const/4 v7, 0x0

    sget-object v10, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mNonceDev:[B

    const/4 v11, 0x0

    move-object v5, p0

    move-object v6, p1

    move-object v8, p3

    move-object v9, p2

    invoke-direct/range {v5 .. v11}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->makeDeviceMsg([B[B[B[B[B[B)[B

    move-result-object v2
    :try_end_0
    .catch Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    nop

    return-object v0

    :catch_0
    move-exception v1

    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->clearRlcData()V

    throw v1
.end method

.method public prepareDestroying([B[B[B)[B
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
        }
    .end annotation

    const-string v0, "RlcManager"

    const-string/jumbo v1, "requestDestroying"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    sget-object v1, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    const/4 v2, -0x5

    if-nez v1, :cond_0

    const-string v1, "Error from VaultKeeper Manager is null object"

    invoke-direct {p0, v2, v1}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    :cond_0
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->parameterChecking([B[B[B)V

    sget-object v1, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->sensitiveBox(I)[B

    move-result-object v1

    if-nez v1, :cond_1

    const-string v3, "Error from VaultKeeper (getNonce)"

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    :cond_1
    sget-object v2, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mNonceDev:[B

    const/16 v3, 0x20

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    const/4 v7, 0x0

    sget-object v10, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mNonceDev:[B

    const/4 v11, 0x0

    move-object v5, p0

    move-object v6, p1

    move-object v8, p3

    move-object v9, p2

    invoke-direct/range {v5 .. v11}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->makeDeviceMsg([B[B[B[B[B[B)[B

    move-result-object v2
    :try_end_0
    .catch Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    nop

    return-object v0

    :catch_0
    move-exception v1

    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->clearRlcData()V

    throw v1
.end method

.method public prepareLocking([B[B[B)[B
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
        }
    .end annotation

    const-string v0, "RlcManager"

    const-string/jumbo v1, "requestLocking"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    sget-object v1, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    const/4 v2, -0x5

    if-nez v1, :cond_0

    const-string v1, "Error from VaultKeeper Manager is null object"

    invoke-direct {p0, v2, v1}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    :cond_0
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->parameterChecking([B[B[B)V

    sget-object v1, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->sensitiveBox(I)[B

    move-result-object v1

    if-nez v1, :cond_1

    const-string v3, "Error from VaultKeeper (getNonce)"

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    :cond_1
    sget-object v2, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mNonceDev:[B

    const/16 v3, 0x20

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    const/4 v7, 0x0

    sget-object v10, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mNonceDev:[B

    const/4 v11, 0x0

    move-object v5, p0

    move-object v6, p1

    move-object v8, p3

    move-object v9, p2

    invoke-direct/range {v5 .. v11}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->makeDeviceMsg([B[B[B[B[B[B)[B

    move-result-object v2
    :try_end_0
    .catch Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    nop

    return-object v0

    :catch_0
    move-exception v1

    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->clearRlcData()V

    throw v1
.end method

.method public prepareRegistering([B[B[B)[B
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
        }
    .end annotation

    const-string v0, "RlcManager"

    const-string/jumbo v1, "requestRegistering"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    sget-object v1, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    const/4 v2, -0x5

    if-nez v1, :cond_0

    const-string v1, "Error from VaultKeeper Manager is null object"

    invoke-direct {p0, v2, v1}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    :cond_0
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->parameterChecking([B[B[B)V

    sget-object v1, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mCrypto:Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$CryptoManager;

    sget-object v3, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mRlcKey:[B

    invoke-virtual {v1, v3}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$CryptoManager;->getRandom([B)V

    sget-object v1, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->sensitiveBox(I)[B

    move-result-object v1

    if-nez v1, :cond_1

    const-string v3, "Error from VaultKeeper (getNonce)"

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    :cond_1
    sget-object v2, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mNonceDev:[B

    const/16 v3, 0x20

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    sget-object v7, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mRlcKey:[B

    sget-object v10, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mNonceDev:[B

    const/4 v11, 0x0

    move-object v5, p0

    move-object v6, p1

    move-object v8, p3

    move-object v9, p2

    invoke-direct/range {v5 .. v11}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->makeDeviceMsg([B[B[B[B[B[B)[B

    move-result-object v2
    :try_end_0
    .catch Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    nop

    return-object v0

    :catch_0
    move-exception v1

    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->clearRlcData()V

    throw v1
.end method

.method public prepareUnlocking([B[B[B)[B
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
        }
    .end annotation

    const-string v0, "RlcManager"

    const-string/jumbo v1, "requestUnlocking"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    sget-object v1, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    const/4 v2, -0x5

    if-nez v1, :cond_0

    const-string v1, "Error from VaultKeeper Manager is null object"

    invoke-direct {p0, v2, v1}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    :cond_0
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->parameterChecking([B[B[B)V

    sget-object v1, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->sensitiveBox(I)[B

    move-result-object v1

    if-nez v1, :cond_1

    const-string v3, "Error from VaultKeeper (getNonce)"

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    :cond_1
    sget-object v2, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mNonceDev:[B

    const/16 v3, 0x20

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    const/4 v7, 0x0

    sget-object v10, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mNonceDev:[B

    const/4 v11, 0x0

    move-object v5, p0

    move-object v6, p1

    move-object v8, p3

    move-object v9, p2

    invoke-direct/range {v5 .. v11}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->makeDeviceMsg([B[B[B[B[B[B)[B

    move-result-object v2
    :try_end_0
    .catch Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    nop

    return-object v0

    :catch_0
    move-exception v1

    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->clearRlcData()V

    throw v1
.end method

.method public query()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
        }
    .end annotation

    const-string v0, "RlcManager"

    const-string/jumbo v1, "query(void)"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    sget-object v1, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    const/4 v2, -0x5

    if-nez v1, :cond_0

    const-string v1, "Error from VaultKeeper Manager is null object"

    invoke-direct {p0, v2, v1}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    :cond_0
    :try_start_0
    sget-object v1, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->read(I)[B

    move-result-object v1

    move-object v0, v1

    if-nez v0, :cond_1

    const-string v1, "Error from VaultKeeper (readState)"

    invoke-direct {p0, v2, v1}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V
    :try_end_0
    .catch Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    nop

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    return-object v1

    :catch_0
    move-exception v1

    throw v1
.end method

.method public query([B[B[B)[B
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
        }
    .end annotation

    const-string v0, "RlcManager"

    const-string/jumbo v1, "query"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    sget-object v1, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    const/4 v2, -0x5

    if-nez v1, :cond_0

    const-string v1, "Error from VaultKeeper Manager is null object"

    invoke-direct {p0, v2, v1}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    :cond_0
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->parameterChecking([B[B[B)V

    sget-object v1, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->read(I)[B

    move-result-object v1

    if-nez v1, :cond_1

    const-string v3, "Error from VaultKeeper (readState)"

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    :cond_1
    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v6, p3

    move-object v7, p2

    move-object v9, v1

    invoke-direct/range {v3 .. v9}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->makeDeviceMsg([B[B[B[B[B[B)[B

    move-result-object v2
    :try_end_0
    .catch Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v2

    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->clearRlcData()V

    nop

    return-object v0

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->clearRlcData()V

    throw v1
.end method

.method public setClientData(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
        }
    .end annotation

    const-string v0, "RlcManager"

    const-string/jumbo v1, "setClientData"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, ""

    sget-object v1, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    const/4 v2, -0x5

    if-nez v1, :cond_0

    const-string v1, "Error from VaultKeeper Manager is null object"

    invoke-direct {p0, v2, v1}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    :cond_0
    :try_start_0
    sget-object v1, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->read(I)[B

    move-result-object v1

    if-nez v1, :cond_1

    const-string v4, "Error from VaultKeeper (readData)"

    invoke-direct {p0, v2, v4}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    :cond_1
    array-length v4, v1

    if-nez v4, :cond_2

    new-instance v4, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;

    const/4 v6, 0x0

    const-string v7, ""

    const-string v8, ""

    const-string v9, ""

    move-object v5, v4

    move-object v10, p1

    invoke-direct/range {v5 .. v10}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-class v4, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;

    invoke-direct {p0, v1, v4}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->deserialize([BLjava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;

    if-nez v4, :cond_3

    const/16 v5, -0xa

    const-string v6, "Error deserialize"

    invoke-direct {p0, v5, v6}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    :cond_3
    invoke-virtual {v4}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;->getClientData()Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    invoke-virtual {v4, p1}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;->setClientData(Ljava/lang/String;)V

    :goto_0
    invoke-direct {p0, v4}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->serialize(Ljava/lang/Object;)[B

    move-result-object v5

    sget-object v6, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    invoke-virtual {v6, v3, v5}, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->write(I[B)I

    move-result v3

    if-eqz v3, :cond_4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error from VaultKeeper (write/ "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v2, v6}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V
    :try_end_0
    .catch Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    nop

    return-object v0

    :catch_0
    move-exception v1

    throw v1
.end method

.method public setFailureCount(I)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
        }
    .end annotation

    const-string v0, "RlcManager"

    const-string/jumbo v1, "setFailureCount"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    sget-object v1, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    const/4 v2, -0x5

    if-nez v1, :cond_0

    const-string v1, "Error from VaultKeeper Manager is null object"

    invoke-direct {p0, v2, v1}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    :cond_0
    :try_start_0
    sget-object v1, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->read(I)[B

    move-result-object v1

    if-nez v1, :cond_1

    const-string v4, "Error from VaultKeeper (readData)"

    invoke-direct {p0, v2, v4}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    :cond_1
    array-length v4, v1

    if-nez v4, :cond_2

    new-instance v4, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;

    const/4 v6, 0x0

    const-string v7, ""

    const-string v8, ""

    const-string v9, ""

    const-string v10, ""

    move-object v5, v4

    invoke-direct/range {v5 .. v10}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-class v4, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;

    invoke-direct {p0, v1, v4}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->deserialize([BLjava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;

    if-nez v4, :cond_3

    const/16 v5, -0xa

    const-string v6, "Error deserialize"

    invoke-direct {p0, v5, v6}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    :cond_3
    :goto_0
    invoke-virtual {v4, p1}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;->setFailureCount(I)V

    invoke-direct {p0, v4}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->serialize(Ljava/lang/Object;)[B

    move-result-object v5

    sget-object v6, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    invoke-virtual {v6, v3, v5}, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->write(I[B)I

    move-result v3

    if-eqz v3, :cond_4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error from VaultKeeper (write/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v2, v6}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V
    :try_end_0
    .catch Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    const/4 v0, 0x1

    nop

    return v0

    :catch_0
    move-exception v1

    throw v1
.end method

.method public setLockscreenData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
        }
    .end annotation

    const-string v0, "RlcManager"

    const-string/jumbo v1, "setLockscreenData"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    const/4 v1, -0x2

    const-string v2, "One of paratemers should not be null"

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    :cond_0
    sget-object v1, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    const/4 v2, -0x5

    if-nez v1, :cond_1

    const-string v1, "Error from VaultKeeper Manager is null object"

    invoke-direct {p0, v2, v1}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    :cond_1
    :try_start_0
    sget-object v1, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->read(I)[B

    move-result-object v1

    if-nez v1, :cond_2

    const-string v4, "Error from VaultKeeper (readData)"

    invoke-direct {p0, v2, v4}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    :cond_2
    array-length v4, v1

    if-nez v4, :cond_3

    new-instance v4, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;

    const/4 v6, 0x0

    const-string v10, ""

    move-object v5, v4

    move-object v7, p1

    move-object v8, p2

    move-object v9, p3

    invoke-direct/range {v5 .. v10}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-class v4, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;

    invoke-direct {p0, v1, v4}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->deserialize([BLjava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;

    if-nez v4, :cond_4

    const/16 v5, -0xa

    const-string v6, "Error deserialize"

    invoke-direct {p0, v5, v6}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    :cond_4
    if-eqz p1, :cond_5

    invoke-virtual {v4, p1}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;->setNoticeMessage(Ljava/lang/String;)V

    :cond_5
    if-eqz p2, :cond_6

    invoke-virtual {v4, p2}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;->setPhoneNumber(Ljava/lang/String;)V

    :cond_6
    if-eqz p3, :cond_7

    invoke-virtual {v4, p3}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;->setRequesterName(Ljava/lang/String;)V

    :cond_7
    :goto_0
    invoke-direct {p0, v4}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->serialize(Ljava/lang/Object;)[B

    move-result-object v5

    sget-object v6, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    invoke-virtual {v6, v3, v5}, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->write(I[B)I

    move-result v3

    if-eqz v3, :cond_8

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error from VaultKeeper (write/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v2, v6}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V
    :try_end_0
    .catch Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_8
    const/4 v0, 0x1

    nop

    return v0

    :catch_0
    move-exception v1

    throw v1
.end method

.method public setRmmTargetDevice()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
        }
    .end annotation

    const-string v0, "RlcManager"

    const-string/jumbo v1, "setRmmtargetdevice"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    sget-object v1, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    const/4 v2, -0x5

    if-nez v1, :cond_0

    const-string v1, "Error from VaultKeeper Manager is null object"

    invoke-direct {p0, v2, v1}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->query()Ljava/lang/String;

    move-result-object v1

    const-string v3, ""

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "Completed"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, -0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot set RMM Prenormal state in current state("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    :cond_1
    sget-object v3, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    const/4 v4, 0x1

    const-string v5, "Prenormal"

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->write(I[B)I

    move-result v3

    if-eqz v3, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error from VaultKeeper (write prenormal/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v4}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V
    :try_end_0
    .catch Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    nop

    const/4 v1, 0x0

    return v1

    :catch_0
    move-exception v1

    throw v1
.end method

.method public unbindFromLockScreen()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "RlcManager"

    const-string/jumbo v2, "unbindFromLockScreen"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    sget-object v1, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    if-nez v1, :cond_0

    const-string/jumbo v1, "lock_settings"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    :cond_0
    sget-object v1, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mRemoteLockMonitorCallback:Lcom/android/internal/widget/IRemoteLockMonitorCallback;

    invoke-interface {v1, v2, v3}, Lcom/android/internal/widget/ILockSettings;->unregisterRemoteLockCallback(ILcom/android/internal/widget/IRemoteLockMonitorCallback;)V

    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->setRemoteLockToLockscreen()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    throw v1

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    const/16 v2, -0x9

    const-string v3, "Runtime Exception from Lockscreen"

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    :goto_0
    nop

    return-void
.end method

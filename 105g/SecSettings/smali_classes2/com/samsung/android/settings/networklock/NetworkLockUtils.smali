.class public Lcom/samsung/android/settings/networklock/NetworkLockUtils;
.super Ljava/lang/Object;
.source "NetworkLockUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/networklock/NetworkLockUtils$OnLockStatusListener;
    }
.end annotation


# static fields
.field private static isSimLocked:Z

.field private static mContext:Landroid/content/Context;

.field private static mHandler:Landroid/os/Handler;


# instance fields
.field private final CMD:[B

.field private mLockStatusListener:Lcom/samsung/android/settings/networklock/NetworkLockUtils$OnLockStatusListener;

.field public mNoResponseTimer:Landroid/os/CountDownTimer;

.field private mSecPhoneServiceConnection:Landroid/content/ServiceConnection;

.field private mServiceMessenger:Landroid/os/Messenger;

.field private mWaitingMessage:I

.field resp:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->isSimLocked:Z

    new-instance v0, Lcom/samsung/android/settings/networklock/NetworkLockUtils$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/networklock/NetworkLockUtils$2;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->CMD:[B

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->resp:[B

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->mLockStatusListener:Lcom/samsung/android/settings/networklock/NetworkLockUtils$OnLockStatusListener;

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->mWaitingMessage:I

    iput-object v0, p0, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->mServiceMessenger:Landroid/os/Messenger;

    new-instance v0, Lcom/samsung/android/settings/networklock/NetworkLockUtils$1;

    const-wide/16 v4, 0x4e20

    const-wide/16 v6, 0x3e8

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/settings/networklock/NetworkLockUtils$1;-><init>(Lcom/samsung/android/settings/networklock/NetworkLockUtils;JJ)V

    iput-object v0, p0, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->mNoResponseTimer:Landroid/os/CountDownTimer;

    new-instance v0, Lcom/samsung/android/settings/networklock/NetworkLockUtils$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/networklock/NetworkLockUtils$3;-><init>(Lcom/samsung/android/settings/networklock/NetworkLockUtils;)V

    iput-object v0, p0, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->mSecPhoneServiceConnection:Landroid/content/ServiceConnection;

    sput-object p1, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->mContext:Landroid/content/Context;

    return-void

    :array_0
    .array-data 1
        0x4t
        0x2t
        0x0t
        0x4t
    .end array-data
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/networklock/NetworkLockUtils;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->mWaitingMessage:I

    return v0
.end method

.method static synthetic access$100()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Landroid/os/Message;)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->handleGetSimLockResponse(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$302(Lcom/samsung/android/settings/networklock/NetworkLockUtils;Landroid/os/Messenger;)Landroid/os/Messenger;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->mServiceMessenger:Landroid/os/Messenger;

    return-object p1
.end method

.method static synthetic access$400(Lcom/samsung/android/settings/networklock/NetworkLockUtils;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->getOemSimLock()Z

    move-result v0

    return v0
.end method

.method private getOemSimLock()Z
    .locals 7

    const-string v0, "network_lock"

    const-string v1, "getOemSimLock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/16 v2, 0x51

    :try_start_0
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v2, 0x42

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    const/16 v3, 0x6d

    const/16 v4, 0x14

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->sendRilRequest([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "network_lock"

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    nop

    :goto_0
    const/4 v2, 0x1

    return v2

    :catchall_0
    move-exception v2

    goto :goto_2

    :catch_1
    move-exception v2

    :try_start_2
    const-string v3, "network_lock"

    const-string v4, "getOemSimLock exception occured during operation"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v3, 0x0

    :try_start_3
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_2
    move-exception v4

    const-string v5, "network_lock"

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return v3

    :goto_2
    nop

    :try_start_4
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    :catch_3
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    const-string v5, "network_lock"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    throw v2
.end method

.method private static handleGetSimLockResponse(Landroid/os/Message;)V
    .locals 4

    const-string v0, "network_lock"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleGetSimLockResponse"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "response"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_2

    array-length v1, v0

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    aget-byte v1, v0, v1

    if-nez v1, :cond_1

    const-string v1, "sprnetwork_lock"

    const-string v2, "checklock lock: "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->setSPRNetworkLocked(Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    const-string v1, "sprnetwork_lock"

    const-string v2, "checklock unlock: "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->setSPRNetworkUnLocked(Landroid/content/Context;)V

    :goto_0
    const-string v1, "network_lock"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleGetSimLockResponse buf.length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " buf is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    :goto_1
    const-string v1, "network_lock"

    const-string v2, "response is null or empty"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private invokeOemRilRequestRaw([BLandroid/os/Message;)V
    .locals 4

    new-instance v0, Landroid/os/Messenger;

    sget-object v1, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "request"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    invoke-virtual {p2, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iput-object v0, p2, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->mServiceMessenger:Landroid/os/Messenger;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->mServiceMessenger:Landroid/os/Messenger;

    invoke-virtual {v2, p2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    goto :goto_0

    :cond_0
    const-string v2, "network_lock"

    const-string v3, "mServiceMessenger is null. Do nothing."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v2

    :goto_1
    return-void
.end method

.method public static isSPRNetworkUnLocked(Landroid/content/Context;)Z
    .locals 5

    nop

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "spr_network_lock"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v2, v1

    nop

    :cond_0
    move v0, v2

    const-string v2, "network_lock"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSPRNetworkUnLocked: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "ro.boot.carrierid"

    const-string v3, "none"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "none"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Setting_SupportSimUnlock"

    invoke-virtual {v2, v3, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "network_lock"

    const-string v2, "not support sprSimLock always unlocked"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Setting_SupportSimUnlock"

    invoke-virtual {v2, v3, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->isSprBootCarrierId()Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    const-string v1, "network_lock"

    const-string v2, "not support sprSimLock always unlocked"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    :cond_3
    :goto_0
    return v0
.end method

.method private static isSprBootCarrierId()Z
    .locals 4

    const-string v0, "SPR"

    const-string v1, "VMU"

    const-string v2, "BST"

    const-string v3, "XAS"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "ro.boot.carrierid"

    const-string v2, "none"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    return v2

    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public static isVzwNetworkUnLocked(Landroid/content/Context;)Z
    .locals 4

    nop

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "vzw_network_lock"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    move v0, v1

    const-string v1, "network_lock"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isVzwNetworkUnLocked: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private sendRilRequest([BII)V
    .locals 3

    const-string v0, "network_lock"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendRilRequest invokeOemRilRequestRaw message "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p2, p0, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->mWaitingMessage:I

    iget-object v0, p0, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->mNoResponseTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    sget-object v0, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    return-void
.end method

.method public static setSPRNetworkLocked(Landroid/content/Context;)V
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "spr_network_lock"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v0, "network_lock"

    const-string v1, "setSPRNetworkLocked to 0"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static setSPRNetworkUnLocked(Landroid/content/Context;)V
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "spr_network_lock"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v0, "network_lock"

    const-string v1, "setSPRNetworkUnLocked to 1"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static setVzwNetworkUnLocked(Landroid/content/Context;)V
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "vzw_network_lock"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v0, "network_lock"

    const-string v1, "setVzwNetworkUnLocked to 1"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public checkLockStatus()V
    .locals 6

    :try_start_0
    const-string v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->CMD:[B

    iget-object v3, p0, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->resp:[B

    invoke-interface {v0, v2, v3}, Lcom/android/internal/telephony/ITelephony;->invokeOemRilRequestRaw([B[B)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    const-string v3, "network_lock"

    const-string v4, "check lock fail: "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->mLockStatusListener:Lcom/samsung/android/settings/networklock/NetworkLockUtils$OnLockStatusListener;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->mLockStatusListener:Lcom/samsung/android/settings/networklock/NetworkLockUtils$OnLockStatusListener;

    sget-boolean v4, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->isSimLocked:Z

    invoke-interface {v3, v4}, Lcom/samsung/android/settings/networklock/NetworkLockUtils$OnLockStatusListener;->onChangeLockStatus(Z)V

    iput-object v1, p0, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->mLockStatusListener:Lcom/samsung/android/settings/networklock/NetworkLockUtils$OnLockStatusListener;

    :cond_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->resp:[B

    const/4 v4, 0x0

    aget-byte v3, v3, v4

    const/4 v5, 0x1

    if-ne v3, v5, :cond_2

    sput-boolean v5, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->isSimLocked:Z

    const-string v3, "network_lock"

    const-string v4, "checklock lock: "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    sput-boolean v4, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->isSimLocked:Z

    const-string v3, "network_lock"

    const-string v4, "checklock unlock: "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->setVzwNetworkUnLocked(Landroid/content/Context;)V

    :cond_3
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->mLockStatusListener:Lcom/samsung/android/settings/networklock/NetworkLockUtils$OnLockStatusListener;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->mLockStatusListener:Lcom/samsung/android/settings/networklock/NetworkLockUtils$OnLockStatusListener;

    sget-boolean v3, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->isSimLocked:Z

    invoke-interface {v2, v3}, Lcom/samsung/android/settings/networklock/NetworkLockUtils$OnLockStatusListener;->onChangeLockStatus(Z)V

    iput-object v1, p0, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->mLockStatusListener:Lcom/samsung/android/settings/networklock/NetworkLockUtils$OnLockStatusListener;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "network_lock"

    const-string v2, "can not check lock "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public checkLockStatus(Lcom/samsung/android/settings/networklock/NetworkLockUtils$OnLockStatusListener;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->mLockStatusListener:Lcom/samsung/android/settings/networklock/NetworkLockUtils$OnLockStatusListener;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->mLockStatusListener:Lcom/samsung/android/settings/networklock/NetworkLockUtils$OnLockStatusListener;

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->checkLockStatus()V

    return-void
.end method

.method public getSPROemSimLock(Landroid/content/Context;)V
    .locals 3

    const-string v0, "network_lock"

    const-string v1, "getSPROemSimLock()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.sec.phone"

    const-string v2, "com.sec.phone.SecPhoneService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->mSecPhoneServiceConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method public unbindFromService(Landroid/content/Context;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->mSecPhoneServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iget-object v0, p0, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->mNoResponseTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    return-void
.end method

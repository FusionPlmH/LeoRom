.class public Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;
.super Ljava/lang/Object;
.source "SamsungRilConnector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector$IOnRilJobListener;,
        Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector$MessageHandler;
    }
.end annotation


# static fields
.field protected static final TAG:Ljava/lang/String;

.field private static sInstance:Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;


# instance fields
.field private mBytesBuffer:[B

.field private mContext:Landroid/content/Context;

.field public mHandlerThread:Landroid/os/HandlerThread;

.field private mIsConnected:Z

.field private mListenerRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector$IOnRilJobListener;",
            ">;"
        }
    .end annotation
.end field

.field public mMessageHandler:Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector$MessageHandler;

.field private mOperationName:Ljava/lang/String;

.field private mRilServiceConnection:Landroid/content/ServiceConnection;

.field private mServiceMessenger:Landroid/os/Messenger;

.field private mServiceReplyMessenger:Landroid/os/Messenger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->mIsConnected:Z

    const-string v0, "-"

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->mOperationName:Ljava/lang/String;

    new-instance v0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector$1;-><init>(Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;)V

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->mRilServiceConnection:Landroid/content/ServiceConnection;

    sget-object v0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->TAG:Ljava/lang/String;

    const-string v1, "new()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "RilHandler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->mHandlerThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector$MessageHandler;

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector$MessageHandler;-><init>(Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->mMessageHandler:Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector$MessageHandler;

    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->mMessageHandler:Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector$MessageHandler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->mServiceReplyMessenger:Landroid/os/Messenger;

    return-void
.end method

.method static synthetic access$002(Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;Landroid/os/Messenger;)Landroid/os/Messenger;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->mServiceMessenger:Landroid/os/Messenger;

    return-object p1
.end method

.method static synthetic access$102(Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->mIsConnected:Z

    return p1
.end method

.method static synthetic access$200(Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;)[B
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->mBytesBuffer:[B

    return-object v0
.end method

.method static synthetic access$202(Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;[B)[B
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->mBytesBuffer:[B

    return-object p1
.end method

.method static synthetic access$300(Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;)Ljava/lang/ref/WeakReference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->mListenerRef:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->mOperationName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->mOperationName:Ljava/lang/String;

    return-object p1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->sInstance:Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;

    invoke-direct {v0}, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->sInstance:Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;

    :cond_0
    sget-object v0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->sInstance:Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->setContext(Landroid/content/Context;)V

    sget-object v0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->sInstance:Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;

    return-object v0
.end method

.method public static getSimLockStatus()Ljava/lang/String;
    .locals 1

    const-string v0, "gsm.sim.state"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private invokeRilService([BLandroid/os/Message;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->TAG:Ljava/lang/String;

    const-string v1, "invoke ril service"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "request"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->mServiceReplyMessenger:Landroid/os/Messenger;

    iput-object v1, p2, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->mServiceMessenger:Landroid/os/Messenger;

    if-nez v1, :cond_0

    sget-object v1, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->TAG:Ljava/lang/String;

    const-string v2, "RIL service is not connected"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->mServiceMessenger:Landroid/os/Messenger;

    invoke-virtual {v1, p2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    sget-object v1, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->TAG:Ljava/lang/String;

    const-string v2, "message sent to ril service"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static parseOperationName([B)Ljava/lang/String;
    .locals 7

    const/16 v0, 0x33

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x4b

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x0

    const/16 v3, 0x4c

    add-int v4, v3, v0

    add-int/2addr v4, v1

    add-int/lit8 v4, v4, 0x2

    aget-byte v4, p0, v4

    shl-int/lit8 v4, v4, 0x8

    const v5, 0xff00

    and-int/2addr v4, v5

    or-int/2addr v2, v4

    add-int/2addr v3, v0

    add-int/2addr v3, v1

    const/4 v4, 0x1

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x2

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    new-array v3, v2, [B

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v2, :cond_0

    const/16 v6, 0x4e

    add-int/2addr v6, v0

    add-int/2addr v6, v1

    add-int/2addr v6, v5

    add-int/lit8 v6, v6, 0x2

    aget-byte v6, p0, v6

    aput-byte v6, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v3}, Ljava/lang/String;-><init>([B)V

    const-string v6, "OP_NAME"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v4

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    aget-object v4, v6, v4

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v6
.end method

.method private setContext(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public connect()V
    .locals 4

    sget-object v0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->TAG:Ljava/lang/String;

    const-string v1, "connect() => connect to the RIL service"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->mIsConnected:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->TAG:Ljava/lang/String;

    const-string v1, "already connected"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.sec.phone"

    const-string v2, "com.sec.phone.SecPhoneService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->mContext:Landroid/content/Context;

    if-nez v1, :cond_1

    sget-object v1, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->TAG:Ljava/lang/String;

    const-string v2, "Context is null. ignore"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->mRilServiceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method public disconnect()V
    .locals 3

    sget-object v0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disconnect() => mIsConnected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->mIsConnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->mIsConnected:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->mRilServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->mIsConnected:Z

    return-void
.end method

.method public getBlob()V
    .locals 8

    sget-object v0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->TAG:Ljava/lang/String;

    const-string v1, "getBlob()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->mIsConnected:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->TAG:Ljava/lang/String;

    const-string v1, "not connected to RIL yet"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v2, 0x5

    const/16 v3, 0x23

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    :try_start_0
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 v3, 0x6

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-virtual {v1, v6}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    iget-object v7, p0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->mMessageHandler:Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector$MessageHandler;

    invoke-virtual {v7, v5}, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector$MessageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-direct {p0, v3, v7}, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->invokeRilService([BLandroid/os/Message;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-array v2, v4, [Ljava/io/Closeable;

    aput-object v1, v2, v5

    aput-object v0, v2, v6

    invoke-static {v2}, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimStatusUtils;->closeSilently([Ljava/io/Closeable;)V

    nop

    return-void

    :catchall_0
    move-exception v2

    new-array v3, v4, [Ljava/io/Closeable;

    aput-object v1, v3, v5

    aput-object v0, v3, v6

    invoke-static {v3}, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimStatusUtils;->closeSilently([Ljava/io/Closeable;)V

    throw v2

    :catch_0
    move-exception v2

    new-array v3, v4, [Ljava/io/Closeable;

    aput-object v1, v3, v5

    aput-object v0, v3, v6

    invoke-static {v3}, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimStatusUtils;->closeSilently([Ljava/io/Closeable;)V

    return-void
.end method

.method public getOperationName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->mOperationName:Ljava/lang/String;

    return-object v0
.end method

.method public setBlob([B)V
    .locals 8

    sget-object v0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->TAG:Ljava/lang/String;

    const-string v1, "setBlob()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->mIsConnected:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->TAG:Ljava/lang/String;

    const-string v1, "not connected to RIL yet"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-eqz p1, :cond_2

    array-length v0, p1

    if-gtz v0, :cond_1

    goto :goto_2

    :cond_1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v2, 0x7

    array-length v3, p1

    add-int/2addr v2, v3

    const/16 v3, 0x23

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x2

    :try_start_0
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-virtual {v1, v6}, Ljava/io/DataOutputStream;->writeByte(I)V

    array-length v3, p1

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    iget-object v7, p0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->mMessageHandler:Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector$MessageHandler;

    invoke-virtual {v7, v5}, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector$MessageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-direct {p0, v3, v7}, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->invokeRilService([BLandroid/os/Message;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-array v3, v6, [Ljava/io/Closeable;

    aput-object v1, v3, v4

    aput-object v0, v3, v5

    goto :goto_0

    :catchall_0
    move-exception v3

    goto :goto_1

    :catch_0
    move-exception v3

    :try_start_1
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    new-array v3, v6, [Ljava/io/Closeable;

    aput-object v1, v3, v4

    aput-object v0, v3, v5

    :goto_0
    invoke-static {v3}, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimStatusUtils;->closeSilently([Ljava/io/Closeable;)V

    nop

    return-void

    :goto_1
    new-array v6, v6, [Ljava/io/Closeable;

    aput-object v1, v6, v4

    aput-object v0, v6, v5

    invoke-static {v6}, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimStatusUtils;->closeSilently([Ljava/io/Closeable;)V

    throw v3

    :cond_2
    :goto_2
    sget-object v0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->TAG:Ljava/lang/String;

    const-string v1, "ignore invalid blob"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setOnRilJobListener(Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector$IOnRilJobListener;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->mListenerRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

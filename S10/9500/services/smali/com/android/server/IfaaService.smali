.class public Lcom/android/server/IfaaService;
.super Lcom/samsung/android/service/ifaaservice/IIfaaService$Stub;
.source "IfaaService.java"

# interfaces
.implements Lcom/samsung/android/service/ifaaservice/IfaaServiceCallBack;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/IfaaService$skpmInjectProvisioningState;,
        Lcom/android/server/IfaaService$SkpmInjectThread;
    }
.end annotation


# static fields
.field private static final BIO_TYPE_FACE:I = 0x3

.field private static final BIO_TYPE_FINGERPRINT:I = 0x1

.field private static final BIO_TYPE_IRIS:I = 0x2

.field private static final HEX_CHAR:[C

.field private static final IFAA_RESULT_ERROR:I = -0x1

.field private static final IFAA_RESULT_SUCCESS:I = 0x0

.field private static final IFAA_SERVICE_CODE_VERSION:Ljava/lang/String; = "2.0.0.001"

.field private static final IFAA_TA_ERROR_LOG_LEN:I = 0x40

.field private static final IFAA_VERSION_LENGTH:I = 0xc

.field private static final TAG:Ljava/lang/String; = "IfaaService"

.field private static final VERSION:I = 0x1


# instance fields
.field private injectState:Lcom/android/server/IfaaService$skpmInjectProvisioningState;

.field private isProvisioning:Z

.field private isSkpmInjected:Z

.field private final mBootCompletedReceiver:Lcom/samsung/android/service/ifaaservice/IfaaDeviceBootCompletedReceiver;

.field private mClearDataReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mIfaaSKPMController:Lcom/samsung/android/service/ifaaservice/IfaaSKPMController;

.field private final mInternetStatusReceiver:Lcom/samsung/android/service/ifaaservice/IfaaNetworkStateReceiver;

.field private mModelName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/IfaaService;->HEX_CHAR:[C

    const-string v0, "IfaaCa"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void

    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/service/ifaaservice/IIfaaService$Stub;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/IfaaService;->isSkpmInjected:Z

    iput-boolean v0, p0, Lcom/android/server/IfaaService;->isProvisioning:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/IfaaService;->mModelName:Ljava/lang/String;

    new-instance v1, Lcom/samsung/android/service/ifaaservice/IfaaNetworkStateReceiver;

    invoke-direct {v1, p0}, Lcom/samsung/android/service/ifaaservice/IfaaNetworkStateReceiver;-><init>(Lcom/samsung/android/service/ifaaservice/IfaaServiceCallBack;)V

    iput-object v1, p0, Lcom/android/server/IfaaService;->mInternetStatusReceiver:Lcom/samsung/android/service/ifaaservice/IfaaNetworkStateReceiver;

    new-instance v1, Lcom/samsung/android/service/ifaaservice/IfaaDeviceBootCompletedReceiver;

    invoke-direct {v1, p0}, Lcom/samsung/android/service/ifaaservice/IfaaDeviceBootCompletedReceiver;-><init>(Lcom/samsung/android/service/ifaaservice/IfaaServiceCallBack;)V

    iput-object v1, p0, Lcom/android/server/IfaaService;->mBootCompletedReceiver:Lcom/samsung/android/service/ifaaservice/IfaaDeviceBootCompletedReceiver;

    new-instance v1, Lcom/android/server/IfaaService$1;

    invoke-direct {v1, p0}, Lcom/android/server/IfaaService$1;-><init>(Lcom/android/server/IfaaService;)V

    iput-object v1, p0, Lcom/android/server/IfaaService;->mClearDataReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/server/IfaaService;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/samsung/android/service/ifaaservice/IfaaSKPMController;

    invoke-direct {v1, p1, p0}, Lcom/samsung/android/service/ifaaservice/IfaaSKPMController;-><init>(Landroid/content/Context;Lcom/samsung/android/service/ifaaservice/IfaaServiceCallBack;)V

    iput-object v1, p0, Lcom/android/server/IfaaService;->mIfaaSKPMController:Lcom/samsung/android/service/ifaaservice/IfaaSKPMController;

    new-instance v1, Lcom/android/server/IfaaService$skpmInjectProvisioningState;

    invoke-direct {v1, p0, v0}, Lcom/android/server/IfaaService$skpmInjectProvisioningState;-><init>(Lcom/android/server/IfaaService;Z)V

    iput-object v1, p0, Lcom/android/server/IfaaService;->injectState:Lcom/android/server/IfaaService$skpmInjectProvisioningState;

    invoke-virtual {p0}, Lcom/android/server/IfaaService;->initSkpmState()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/IfaaService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/IfaaService;->clearSFS()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/IfaaService;)Lcom/samsung/android/service/ifaaservice/IfaaSKPMController;
    .locals 1

    iget-object v0, p0, Lcom/android/server/IfaaService;->mIfaaSKPMController:Lcom/samsung/android/service/ifaaservice/IfaaSKPMController;

    return-object v0
.end method

.method private checkProvsioningState()Z
    .locals 8

    const-string v0, "IfaaService"

    const-string v1, "checkProvsioningState()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x10

    new-array v1, v0, [B

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/16 v4, 0xb

    if-gt v3, v4, :cond_0

    aput-byte v2, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/16 v3, 0x200

    const/16 v4, 0xc

    and-int/lit16 v5, v3, 0xff

    int-to-byte v5, v5

    aput-byte v5, v1, v4

    const/16 v4, 0xd

    shr-int/lit8 v5, v3, 0x8

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v1, v4

    const/16 v4, 0xe

    shr-int/lit8 v5, v3, 0x10

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v1, v4

    const/16 v4, 0xf

    shr-int/lit8 v5, v3, 0x18

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v1, v4

    invoke-direct {p0, v1}, Lcom/android/server/IfaaService;->invokeCmd([B)[B

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/IfaaService;->printIfaaTaErrorLog([B)V

    if-nez v4, :cond_1

    const-string v0, "IfaaService"

    const-string v5, "checkProvsioningState(), res is null"

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    aget-byte v5, v4, v2

    const/4 v6, 0x1

    aget-byte v7, v4, v6

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v5, v7

    const/4 v7, 0x2

    aget-byte v7, v4, v7

    shl-int/lit8 v0, v7, 0x10

    or-int/2addr v0, v5

    const/4 v5, 0x3

    aget-byte v5, v4, v5

    shl-int/lit8 v5, v5, 0x18

    or-int/2addr v0, v5

    if-nez v0, :cond_2

    const-string v2, "IfaaService"

    const-string v5, "Have injected."

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_2
    const-string v5, "IfaaService"

    const-string v6, "Have not injected."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method private clearSFS()V
    .locals 7

    const-string v0, "IfaaService"

    const-string/jumbo v1, "try to clear efs files"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "ro.hardware.chipname"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/service/ifaaservice/IfaaEfsWhitelist;->getEfsPathByChipsetName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "IfaaService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ChipsetName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", efsPath: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/os/FileUtils;->deleteContentsAndDir(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v4, "IfaaService"

    const-string/jumbo v5, "ifaa efs removed successfully"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v4, "IfaaService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "removed "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", failed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    goto :goto_1

    :cond_1
    const-string v2, "IfaaService"

    const-string v3, "can not find the efs path..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method private native closeIfaaTa()I
.end method

.method private getIfaaCmd([B)I
    .locals 7

    const/4 v0, -0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    array-length v1, p1

    const/4 v2, 0x4

    const/4 v3, -0x1

    sub-int v4, v1, v2

    const/4 v5, 0x4

    if-ge v4, v5, :cond_1

    const-string v4, "IfaaService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "param length is too short. offset : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " ; param.length : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    aget-byte v4, p1, v2

    add-int/lit8 v6, v2, 0x1

    aget-byte v6, p1, v6

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v4, v6

    add-int/lit8 v6, v2, 0x2

    aget-byte v6, p1, v6

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v4, v6

    add-int/lit8 v6, v2, 0x3

    aget-byte v6, p1, v6

    shl-int/lit8 v6, v6, 0x18

    or-int/2addr v4, v6

    add-int/2addr v4, v5

    add-int/2addr v2, v4

    sub-int v4, v1, v2

    if-ge v4, v5, :cond_2

    const-string v4, "IfaaService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "param length is too short. offset : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " ; param.length : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_2
    aget-byte v4, p1, v2

    add-int/lit8 v6, v2, 0x1

    aget-byte v6, p1, v6

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v4, v6

    add-int/lit8 v6, v2, 0x2

    aget-byte v6, p1, v6

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v4, v6

    add-int/lit8 v6, v2, 0x3

    aget-byte v6, p1, v6

    shl-int/lit8 v6, v6, 0x18

    or-int/2addr v4, v6

    add-int/2addr v4, v5

    add-int/2addr v2, v4

    sub-int v4, v1, v2

    if-ge v4, v5, :cond_3

    const-string v4, "IfaaService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "param length is too short. offset : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " ; param.length : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_3
    aget-byte v0, p1, v2

    add-int/lit8 v4, v2, 0x1

    aget-byte v4, p1, v4

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v0, v4

    add-int/lit8 v4, v2, 0x2

    aget-byte v4, p1, v4

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v0, v4

    add-int/lit8 v4, v2, 0x3

    aget-byte v4, p1, v4

    shl-int/lit8 v4, v4, 0x18

    or-int/2addr v0, v4

    return v0
.end method

.method private native invokeCmd([B)[B
.end method

.method private isNeedClearTaSfsFile()V
    .locals 7

    const-string/jumbo v0, "persist.sys.setupwizard"

    const-string v1, "NONE"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "FINISH"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "IfaaService"

    const-string/jumbo v2, "setup wizard is not finished state.Need clear ifaa sfs files"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x10

    new-array v2, v1, [B

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const/16 v5, 0xb

    if-gt v4, v5, :cond_0

    aput-byte v3, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const/16 v4, 0x202

    const/16 v5, 0xc

    and-int/lit16 v6, v4, 0xff

    int-to-byte v6, v6

    aput-byte v6, v2, v5

    const/16 v5, 0xd

    shr-int/lit8 v6, v4, 0x8

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v2, v5

    const/16 v5, 0xe

    shr-int/lit8 v6, v4, 0x10

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v2, v5

    const/16 v5, 0xf

    shr-int/lit8 v6, v4, 0x18

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v2, v5

    invoke-direct {p0, v2}, Lcom/android/server/IfaaService;->invokeCmd([B)[B

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/server/IfaaService;->printIfaaTaErrorLog([B)V

    aget-byte v3, v5, v3

    const/4 v6, 0x1

    aget-byte v6, v5, v6

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v3, v6

    const/4 v6, 0x2

    aget-byte v6, v5, v6

    shl-int/lit8 v1, v6, 0x10

    or-int/2addr v1, v3

    const/4 v3, 0x3

    aget-byte v3, v5, v3

    shl-int/lit8 v3, v3, 0x18

    or-int/2addr v1, v3

    if-nez v1, :cond_1

    const-string v3, "IfaaService"

    const-string v6, "Clear sfs files successed."

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    const-string v3, "IfaaService"

    const-string v6, "Clear sfs files failed."

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    goto :goto_2

    :cond_2
    const-string v1, "IfaaService"

    const-string/jumbo v2, "setup wizard is finished state."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method private native openIfaaTa()I
.end method

.method private native skpmProvisioningCmd([B)[B
.end method


# virtual methods
.method public bytesToHexFun([B)Ljava/lang/String;
    .locals 8

    if-nez p1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    array-length v0, p1

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [C

    const/4 v1, 0x0

    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-byte v4, p1, v3

    add-int/lit8 v5, v1, 0x1

    sget-object v6, Lcom/android/server/IfaaService;->HEX_CHAR:[C

    ushr-int/lit8 v7, v4, 0x4

    and-int/lit8 v7, v7, 0xf

    aget-char v6, v6, v7

    aput-char v6, v0, v1

    add-int/lit8 v1, v5, 0x1

    sget-object v6, Lcom/android/server/IfaaService;->HEX_CHAR:[C

    and-int/lit8 v7, v4, 0xf

    aget-char v6, v6, v7

    aput-char v6, v0, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([C)V

    return-object v2
.end method

.method public deviceBootCompleted()V
    .locals 2

    const-string v0, "IfaaService"

    const-string v1, "deviceBootCompleted()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/IfaaService;->mModelName:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/IfaaService;->mIfaaSKPMController:Lcom/samsung/android/service/ifaaservice/IfaaSKPMController;

    if-eqz v0, :cond_0

    const-string v0, "IfaaService"

    const-string v1, "deviceBootCompleted(),boot completed ,now to bind skpm service to get skpm model key"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/IfaaService;->mIfaaSKPMController:Lcom/samsung/android/service/ifaaservice/IfaaSKPMController;

    iget-object v1, p0, Lcom/android/server/IfaaService;->mIfaaSKPMController:Lcom/samsung/android/service/ifaaservice/IfaaSKPMController;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/service/ifaaservice/IfaaSKPMController;->bindSkpmService(I)Z

    :cond_0
    return-void
.end method

.method public getModelName()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "IfaaService"

    const-string v1, "Ifaaservice code version is :2.0.0.001"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/service/ifaaservice/IfaaDevicesWhiteList;->isIncludeInWhiteList(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "IfaaService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getModelName() product name : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", is not in white list"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/server/IfaaService;->mModelName:Ljava/lang/String;

    if-nez v1, :cond_1

    const-string v1, "IfaaService"

    const-string/jumbo v2, "getModelName() , mModelName is null ,need to get"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/IfaaService;->mIfaaSKPMController:Lcom/samsung/android/service/ifaaservice/IfaaSKPMController;

    iget-object v2, p0, Lcom/android/server/IfaaService;->mIfaaSKPMController:Lcom/samsung/android/service/ifaaservice/IfaaSKPMController;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/service/ifaaservice/IfaaSKPMController;->bindSkpmService(I)Z

    goto :goto_0

    :cond_1
    const-string v1, "IfaaService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getModelName() , mModelName is : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/IfaaService;->mModelName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v1, p0, Lcom/android/server/IfaaService;->mModelName:Ljava/lang/String;

    return-object v1
.end method

.method public getSkpmInjectState()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/IfaaService;->isSkpmInjected:Z

    return v0
.end method

.method public getVersion()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    return v0
.end method

.method public initSkpmState()V
    .locals 6

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/IfaaService;->isSkpmInjected:Z

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/service/ifaaservice/IfaaDevicesWhiteList;->isIncludeInWhiteList(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "IfaaService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "initSkpmState() product name : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", is not in white list"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/server/IfaaService;->checkProvsioningState()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/IfaaService;->isSkpmInjected:Z

    const-string v1, "IfaaService"

    const-string v2, "Ifaa ta have injected"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v1, "IfaaService"

    const-string v2, "Ifaa ta not injected"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/IfaaService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/IfaaService;->mBootCompletedReceiver:Lcom/samsung/android/service/ifaaservice/IfaaDeviceBootCompletedReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/IfaaService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/IfaaService;->mInternetStatusReceiver:Lcom/samsung/android/service/ifaaservice/IfaaNetworkStateReceiver;

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string v4, "android.intent.action.PACKAGE_DATA_CLEARED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v4, "package"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/IfaaService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/IfaaService;->mClearDataReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public isSetSkpmModelName()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/IfaaService;->mModelName:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public networkAvailable()V
    .locals 3

    const-string v0, "IfaaService"

    const-string/jumbo v1, "networkAvailable()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/IfaaService;->mIfaaSKPMController:Lcom/samsung/android/service/ifaaservice/IfaaSKPMController;

    iget-object v1, p0, Lcom/android/server/IfaaService;->mIfaaSKPMController:Lcom/samsung/android/service/ifaaservice/IfaaSKPMController;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/service/ifaaservice/IfaaSKPMController;->bindSkpmService(I)Z

    iget-boolean v0, p0, Lcom/android/server/IfaaService;->isSkpmInjected:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/IfaaService;->mModelName:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "IfaaService"

    const-string/jumbo v1, "networkAvailable() , Have injected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Lcom/android/server/IfaaService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/IfaaService;->mInternetStatusReceiver:Lcom/samsung/android/service/ifaaservice/IfaaNetworkStateReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    const-string v1, "IfaaService"

    const-string/jumbo v2, "mInternetStatusReceiver not registered!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    return-void
.end method

.method public printIfaaTaErrorLog([B)V
    .locals 14

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    aget-byte v1, p1, v0

    const/4 v2, 0x1

    aget-byte v2, p1, v2

    const/16 v3, 0x8

    shl-int/2addr v2, v3

    or-int/2addr v1, v2

    const/4 v2, 0x2

    aget-byte v2, p1, v2

    const/16 v4, 0x10

    shl-int/2addr v2, v4

    or-int/2addr v1, v2

    const/4 v2, 0x3

    aget-byte v2, p1, v2

    const/16 v5, 0x18

    shl-int/2addr v2, v5

    or-int/2addr v1, v2

    if-eqz v1, :cond_7

    const/4 v2, 0x4

    aget-byte v6, p1, v2

    const/4 v7, 0x5

    aget-byte v7, p1, v7

    shl-int/2addr v7, v3

    or-int/2addr v6, v7

    const/4 v7, 0x6

    aget-byte v7, p1, v7

    shl-int/2addr v7, v4

    or-int/2addr v6, v7

    const/4 v7, 0x7

    aget-byte v7, p1, v7

    shl-int/2addr v7, v5

    or-int/2addr v6, v7

    nop

    :goto_0
    if-ge v2, v3, :cond_1

    aput-byte v0, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/16 v2, 0x40

    if-ge v6, v2, :cond_2

    return-void

    :cond_2
    new-array v2, v4, [B

    move v7, v0

    :goto_1
    if-ge v7, v4, :cond_3

    add-int v8, v5, v7

    aget-byte v8, p1, v8

    aput-byte v8, v2, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v2}, Lcom/android/server/IfaaService;->bytesToHexFun([B)Ljava/lang/String;

    move-result-object v7

    new-array v8, v4, [B

    move v9, v0

    :goto_2
    if-ge v9, v4, :cond_4

    const/16 v10, 0x28

    add-int/2addr v10, v9

    aget-byte v10, p1, v10

    aput-byte v10, v8, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual {p0, v8}, Lcom/android/server/IfaaService;->bytesToHexFun([B)Ljava/lang/String;

    move-result-object v9

    new-array v10, v4, [B

    move v11, v0

    :goto_3
    if-ge v11, v4, :cond_5

    const/16 v12, 0x38

    add-int/2addr v12, v11

    aget-byte v12, p1, v12

    aput-byte v12, v10, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_5
    invoke-virtual {p0, v10}, Lcom/android/server/IfaaService;->bytesToHexFun([B)Ljava/lang/String;

    move-result-object v11

    aget-byte v12, p1, v3

    const/16 v13, 0x9

    aget-byte v13, p1, v13

    shl-int/lit8 v3, v13, 0x8

    or-int/2addr v3, v12

    const/16 v12, 0xa

    aget-byte v12, p1, v12

    shl-int/lit8 v4, v12, 0x10

    or-int/2addr v3, v4

    const/16 v4, 0xb

    aget-byte v4, p1, v4

    shl-int/2addr v4, v5

    or-int/2addr v3, v4

    const/16 v4, 0xc

    new-array v5, v4, [B

    nop

    :goto_4
    if-ge v0, v4, :cond_6

    add-int v12, v4, v0

    aget-byte v12, p1, v12

    aput-byte v12, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_6
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>([B)V

    const-string v4, "IfaaService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "ifaaTaError :0x"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "  0x"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "  0x"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "  0x"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "  0x"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "  "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v4, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return-void
.end method

.method public processCmd([B)[B
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget-boolean v1, p0, Lcom/android/server/IfaaService;->isSkpmInjected:Z

    const/4 v2, 0x0

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/IfaaService;->mIfaaSKPMController:Lcom/samsung/android/service/ifaaservice/IfaaSKPMController;

    iget-object v3, p0, Lcom/android/server/IfaaService;->mIfaaSKPMController:Lcom/samsung/android/service/ifaaservice/IfaaSKPMController;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/samsung/android/service/ifaaservice/IfaaSKPMController;->bindSkpmService(I)Z

    iget-boolean v1, p0, Lcom/android/server/IfaaService;->isSkpmInjected:Z

    if-nez v1, :cond_2

    const-string v1, "IfaaService"

    const-string v3, "Have not injected the skpm."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v1, "IfaaService"

    const-string/jumbo v3, "isSkpmInjected:true"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    const-string v1, "IfaaService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "param length is : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    array-length v1, p1

    new-array v1, v1, [B

    array-length v3, p1

    invoke-static {p1, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    invoke-direct {p0, v1}, Lcom/android/server/IfaaService;->getIfaaCmd([B)I

    move-result v3

    invoke-static {v3}, Lcom/samsung/android/service/ifaaservice/IfaaCmdDefinition;->isIfaaClientCmd(I)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v2, "IfaaService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "this is not IFAA specfied CMD ,Can\'t send it to TA. CMD : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    invoke-direct {p0, p1}, Lcom/android/server/IfaaService;->invokeCmd([B)[B

    move-result-object v0

    aget-byte v6, v0, v2

    const/4 v7, 0x1

    aget-byte v7, v0, v7

    const/16 v8, 0x8

    shl-int/2addr v7, v8

    or-int/2addr v6, v7

    const/4 v7, 0x2

    aget-byte v7, v0, v7

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v6, v7

    const/4 v7, 0x3

    aget-byte v7, v0, v7

    shl-int/lit8 v7, v7, 0x18

    or-int/2addr v6, v7

    if-eqz v6, :cond_5

    invoke-virtual {p0, v0}, Lcom/android/server/IfaaService;->printIfaaTaErrorLog([B)V

    new-array v7, v8, [B

    nop

    :goto_1
    if-ge v2, v8, :cond_4

    aget-byte v9, v0, v2

    aput-byte v9, v7, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    return-object v7

    :cond_5
    const-string v2, "IfaaService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "res length:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v0
.end method

.method public setSkpmModelName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/IfaaService;->mModelName:Ljava/lang/String;

    return-void
.end method

.method public startBIOManager(I)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "IfaaService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "start BIO manager, type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eq p1, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v3, "IfaaService"

    const-string/jumbo v4, "start BIO manager, BIO_TYPE_FINGERPRINT "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v3, v4, :cond_3

    const-string v3, "IfaaService"

    const-string/jumbo v4, "start BIO manager, SDK_INT>=M "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/IfaaService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.USE_FINGERPRINT"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "IfaaService"

    const-string/jumbo v4, "no permission for: permission.USE_FINGERPRINT"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :cond_1
    const-string v3, "IfaaService"

    const-string/jumbo v4, "start BIO manager, get FingerprintManager "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/IfaaService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "fingerprint"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v3}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "IfaaService"

    const-string/jumbo v5, "no hardware Detected"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :cond_2
    const-string v2, "IfaaService"

    const-string/jumbo v4, "start REGISTER_FINGERPRINT activity-begin"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v4, "com.samsung.settings.REGISTER_FINGERPRINT"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v4, 0x10000000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/server/IfaaService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const-string v4, "IfaaService"

    const-string/jumbo v5, "start REGISTER_FINGERPRINT activity-end"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v4, 0x0

    return v4

    :cond_3
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2
.end method

.method public startSkpmProcess()V
    .locals 18

    move-object/from16 v1, p0

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v2}, Lcom/samsung/android/service/ifaaservice/IfaaDevicesWhiteList;->isIncludeInWhiteList(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "IfaaService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startSkpmProcess() product name : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", is not in white list"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-boolean v0, v1, Lcom/android/server/IfaaService;->isSkpmInjected:Z

    if-eqz v0, :cond_1

    const-string v0, "IfaaService"

    const-string v3, "Skpm have injected"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-boolean v0, v1, Lcom/android/server/IfaaService;->isProvisioning:Z

    if-eqz v0, :cond_2

    const-string v0, "IfaaService"

    const-string v3, "Skpm flow is processing"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/android/server/IfaaService;->isProvisioning:Z

    const-string v0, "IfaaService"

    const-string/jumbo v4, "startSkpmProcess()"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/server/IfaaService;->mIfaaSKPMController:Lcom/samsung/android/service/ifaaservice/IfaaSKPMController;

    invoke-virtual {v0}, Lcom/samsung/android/service/ifaaservice/IfaaSKPMController;->verifySkpmServiceKey()I

    move-result v4

    const/16 v0, -0x14

    const/4 v5, 0x0

    if-eq v4, v0, :cond_4

    const/16 v0, -0x15

    if-ne v4, v0, :cond_3

    goto :goto_0

    :cond_3
    if-eqz v4, :cond_7

    iput-boolean v5, v1, Lcom/android/server/IfaaService;->isProvisioning:Z

    const-string v0, "IfaaService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "verify skpm service failed,ret:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    :goto_0
    iget-object v0, v1, Lcom/android/server/IfaaService;->mContext:Landroid/content/Context;

    const-string v6, "connectivity"

    invoke-virtual {v0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/net/ConnectivityManager;

    const-string v0, "IfaaService"

    const-string/jumbo v7, "startSkpmProcess() check the network before call skpm inject api."

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/server/IfaaService;->mInternetStatusReceiver:Lcom/samsung/android/service/ifaaservice/IfaaNetworkStateReceiver;

    invoke-virtual {v0, v6}, Lcom/samsung/android/service/ifaaservice/IfaaNetworkStateReceiver;->isConnectedToInternet(Landroid/net/ConnectivityManager;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, v1, Lcom/android/server/IfaaService;->injectState:Lcom/android/server/IfaaService$skpmInjectProvisioningState;

    invoke-virtual {v0}, Lcom/android/server/IfaaService$skpmInjectProvisioningState;->getSkpmInjectProvisioningState()Z

    move-result v0

    if-nez v0, :cond_5

    new-instance v0, Lcom/android/server/IfaaService$SkpmInjectThread;

    iget-object v7, v1, Lcom/android/server/IfaaService;->injectState:Lcom/android/server/IfaaService$skpmInjectProvisioningState;

    invoke-direct {v0, v1, v7}, Lcom/android/server/IfaaService$SkpmInjectThread;-><init>(Lcom/android/server/IfaaService;Lcom/android/server/IfaaService$skpmInjectProvisioningState;)V

    move-object v7, v0

    invoke-virtual {v7}, Lcom/android/server/IfaaService$SkpmInjectThread;->start()V

    :try_start_0
    const-string v0, "IfaaService"

    const-string/jumbo v8, "injectThread is joined in Main Thread 10s!"

    invoke-static {v0, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v8, 0x2710

    invoke-virtual {v7, v8, v9}, Lcom/android/server/IfaaService$SkpmInjectThread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    const-string v8, "IfaaService"

    const-string/jumbo v9, "injectThread is interrupted!"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    invoke-virtual {v7}, Lcom/android/server/IfaaService$SkpmInjectThread;->getRet()I

    move-result v0

    const-string v4, "IfaaService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "injectThread is end!the ret is :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " ,The injectState is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/android/server/IfaaService;->injectState:Lcom/android/server/IfaaService$skpmInjectProvisioningState;

    invoke-virtual {v9}, Lcom/android/server/IfaaService$skpmInjectProvisioningState;->getSkpmInjectProvisioningState()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v0

    :cond_5
    if-eqz v4, :cond_6

    iput-boolean v5, v1, Lcom/android/server/IfaaService;->isProvisioning:Z

    const-string v0, "IfaaService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Inject skpm service failed,ret:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_6
    nop

    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/android/server/IfaaService;->openIfaaTa()I

    move-result v0

    if-eqz v0, :cond_8

    iput-boolean v5, v1, Lcom/android/server/IfaaService;->isProvisioning:Z

    const-string v3, "IfaaService"

    const-string/jumbo v4, "open TA for skpm failed"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_8
    const-string v4, "IfaaService"

    const-string/jumbo v6, "open TA for skpm success"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v4, 0x1400

    new-array v4, v4, [B

    iget-object v6, v1, Lcom/android/server/IfaaService;->mIfaaSKPMController:Lcom/samsung/android/service/ifaaservice/IfaaSKPMController;

    invoke-virtual {v6, v4}, Lcom/samsung/android/service/ifaaservice/IfaaSKPMController;->skpmServiceCreateGetKeySession([B)I

    move-result v6

    if-gtz v6, :cond_9

    const-string v0, "IfaaService"

    const-string v3, "Create Get Key Session failed"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v5, v1, Lcom/android/server/IfaaService;->isProvisioning:Z

    invoke-direct/range {p0 .. p0}, Lcom/android/server/IfaaService;->closeIfaaTa()I

    return-void

    :cond_9
    const-string v0, "IfaaService"

    const-string v7, "Create Get Key Session success"

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v6

    invoke-static {v4, v5, v7}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    move-object v8, v0

    :try_start_1
    new-instance v0, Ljava/lang/String;

    const-string v9, "UTF-8"

    invoke-direct {v0, v8, v9}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v9, v0

    nop

    nop

    const-string v0, "IfaaService"

    const-string/jumbo v10, "keyBlob get success"

    invoke-static {v0, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v9, v5}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v10

    array-length v11, v10

    const-string v0, "IfaaService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "skpmKeyHandleLength: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x14

    add-int v12, v0, v11

    add-int/lit8 v12, v12, 0xa

    new-array v12, v12, [B

    move v13, v5

    :goto_2
    const/16 v14, 0xb

    if-gt v13, v14, :cond_a

    aput-byte v5, v12, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    :cond_a
    const/16 v13, 0x201

    const/16 v14, 0xc

    and-int/lit16 v15, v13, 0xff

    int-to-byte v15, v15

    aput-byte v15, v12, v14

    const/16 v14, 0xd

    shr-int/lit8 v15, v13, 0x8

    and-int/lit16 v15, v15, 0xff

    int-to-byte v15, v15

    aput-byte v15, v12, v14

    const/16 v14, 0xe

    shr-int/lit8 v15, v13, 0x10

    and-int/lit16 v15, v15, 0xff

    int-to-byte v15, v15

    aput-byte v15, v12, v14

    const/16 v14, 0xf

    shr-int/lit8 v15, v13, 0x18

    and-int/lit16 v15, v15, 0xff

    int-to-byte v15, v15

    aput-byte v15, v12, v14

    and-int/lit16 v14, v11, 0xff

    int-to-byte v14, v14

    const/16 v15, 0x10

    aput-byte v14, v12, v15

    const/16 v14, 0x11

    shr-int/lit8 v15, v11, 0x8

    and-int/lit16 v15, v15, 0xff

    int-to-byte v15, v15

    aput-byte v15, v12, v14

    const/16 v14, 0x12

    shr-int/lit8 v15, v11, 0x10

    and-int/lit16 v15, v15, 0xff

    int-to-byte v15, v15

    aput-byte v15, v12, v14

    const/16 v14, 0x13

    shr-int/lit8 v15, v11, 0x18

    and-int/lit16 v15, v15, 0xff

    int-to-byte v15, v15

    aput-byte v15, v12, v14

    invoke-static {v10, v5, v12, v0, v11}, Ljava/lang/System;->arraycopy([BI[BII)V

    invoke-direct {v1, v12}, Lcom/android/server/IfaaService;->skpmProvisioningCmd([B)[B

    move-result-object v14

    if-nez v14, :cond_b

    const-string v0, "IfaaService"

    const-string/jumbo v3, "res is null"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v5, v1, Lcom/android/server/IfaaService;->isProvisioning:Z

    invoke-direct/range {p0 .. p0}, Lcom/android/server/IfaaService;->closeIfaaTa()I

    return-void

    :cond_b
    aget-byte v0, v14, v5

    aget-byte v15, v14, v3

    shl-int/lit8 v15, v15, 0x8

    or-int/2addr v0, v15

    const/4 v15, 0x2

    aget-byte v15, v14, v15

    const/16 v16, 0x10

    shl-int/lit8 v15, v15, 0x10

    or-int/2addr v0, v15

    const/4 v15, 0x3

    aget-byte v15, v14, v15

    shl-int/lit8 v15, v15, 0x18

    or-int/2addr v15, v0

    if-nez v15, :cond_c

    iput-boolean v3, v1, Lcom/android/server/IfaaService;->isSkpmInjected:Z

    const-string v0, "IfaaService"

    const-string v3, "Provision key success"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_c
    const-string v0, "IfaaService"

    const-string v3, "Provision key failed"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    invoke-direct/range {p0 .. p0}, Lcom/android/server/IfaaService;->closeIfaaTa()I

    move-result v0

    if-eqz v0, :cond_d

    const-string v3, "IfaaService"

    const-string v6, "Close TA for skpm failed"

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_d
    const-string v3, "IfaaService"

    const-string v6, "Close TA for skpm success"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    iget-object v3, v1, Lcom/android/server/IfaaService;->mIfaaSKPMController:Lcom/samsung/android/service/ifaaservice/IfaaSKPMController;

    invoke-virtual {v3}, Lcom/samsung/android/service/ifaaservice/IfaaSKPMController;->skpmServiceReleaseGetKeySession()I

    move-result v3

    iget-boolean v0, v1, Lcom/android/server/IfaaService;->isSkpmInjected:Z

    if-eqz v0, :cond_e

    :try_start_2
    iget-object v0, v1, Lcom/android/server/IfaaService;->mContext:Landroid/content/Context;

    iget-object v6, v1, Lcom/android/server/IfaaService;->mInternetStatusReceiver:Lcom/samsung/android/service/ifaaservice/IfaaNetworkStateReceiver;

    invoke-virtual {v0, v6}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_5

    :catch_1
    move-exception v0

    const-string v6, "IfaaService"

    const-string/jumbo v5, "mInternetStatusReceiver not registered!"

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    :goto_5
    const/4 v5, 0x0

    iput-boolean v5, v1, Lcom/android/server/IfaaService;->isProvisioning:Z

    return-void

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/android/server/IfaaService;->isProvisioning:Z

    invoke-direct/range {p0 .. p0}, Lcom/android/server/IfaaService;->closeIfaaTa()I

    const-string v3, "IfaaService"

    const-string/jumbo v5, "keyBlob get failed"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_f
    const-string v0, "IfaaService"

    const-string v3, "Network not available"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/android/server/IfaaService;->isProvisioning:Z

    return-void
.end method

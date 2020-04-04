.class public final Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;
.super Ljava/lang/Object;
.source "DeviceRootKeyServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$TlvEx;,
        Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$DeviceInfo;
    }
.end annotation


# static fields
.field public static final ERR_SERVICE_ERROR:I = -0x2710

.field public static final KEY_TYPE_EC:I = 0x4

.field public static final KEY_TYPE_RSA:I = 0x1

.field public static final NO_ERROR:I = 0x0

.field private static final TAG:Ljava/lang/String; = "DEVROOT#Manager(1.1.2)"

.field private static final VERSION:Ljava/lang/String; = "1.1.2"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mService:Lcom/samsung/android/service/DeviceRootKeyService/IDeviceRootKeyService;

.field private mTlvEx:Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$TlvEx;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;->mTlvEx:Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$TlvEx;

    iput-object p1, p0, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;->mContext:Landroid/content/Context;

    const-string v0, "DeviceRootKeyService"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/service/DeviceRootKeyService/IDeviceRootKeyService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/service/DeviceRootKeyService/IDeviceRootKeyService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;->mService:Lcom/samsung/android/service/DeviceRootKeyService/IDeviceRootKeyService;

    const-string v0, "DEVROOT#Manager(1.1.2)"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " connects to DeviceRootKeyService."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;)Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$TlvEx;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;->mTlvEx:Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$TlvEx;

    return-object v0
.end method


# virtual methods
.method public createServiceKeySession(Ljava/lang/String;ILcom/samsung/android/service/DeviceRootKeyService/Tlv;)[B
    .locals 4

    const-string v0, "DEVROOT#Manager(1.1.2)"

    const-string v1, "createServiceKeySession() is called."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;->mService:Lcom/samsung/android/service/DeviceRootKeyService/IDeviceRootKeyService;

    invoke-interface {v1, p1, p2, p3}, Lcom/samsung/android/service/DeviceRootKeyService/IDeviceRootKeyService;->createServiceKeySession(Ljava/lang/String;ILcom/samsung/android/service/DeviceRootKeyService/Tlv;)[B

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0

    :catch_1
    move-exception v1

    const-string v2, "DEVROOT#Manager(1.1.2)"

    const-string v3, "Failed to connect service."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    return-object v0
.end method

.method public doSelfTestProvService(ILcom/samsung/android/service/DeviceRootKeyService/Tlv;)[B
    .locals 4

    const-string v0, "DEVROOT#Manager(1.1.2)"

    const-string v1, "doSelfTestProvService() is called."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;->mService:Lcom/samsung/android/service/DeviceRootKeyService/IDeviceRootKeyService;

    const-string v2, "PROV"

    invoke-interface {v1, v2, p1, p2}, Lcom/samsung/android/service/DeviceRootKeyService/IDeviceRootKeyService;->doSelfTestProvServiceBlob(Ljava/lang/String;ILcom/samsung/android/service/DeviceRootKeyService/Tlv;)[B

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0

    :catch_1
    move-exception v1

    const-string v2, "DEVROOT#Manager(1.1.2)"

    const-string v3, "Failed to connect service."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    return-object v0
.end method

.method public getDeviceInfo(I)Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$DeviceInfo;
    .locals 4

    const-string v0, "DEVROOT#Manager(1.1.2)"

    const-string v1, "getDeviceInfo() is called."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-lez p1, :cond_2

    const/16 v1, 0x2f

    if-le p1, v1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;->mTlvEx:Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$TlvEx;

    if-nez v1, :cond_1

    new-instance v1, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$TlvEx;

    iget-object v2, p0, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;->mService:Lcom/samsung/android/service/DeviceRootKeyService/IDeviceRootKeyService;

    invoke-interface {v2}, Lcom/samsung/android/service/DeviceRootKeyService/IDeviceRootKeyService;->getDeviceInfo()[B

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$TlvEx;-><init>(Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;[B)V

    iput-object v1, p0, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;->mTlvEx:Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$TlvEx;

    :cond_1
    new-instance v1, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$DeviceInfo;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$DeviceInfo;-><init>(Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    const-string v2, "DEVROOT#Manager(1.1.2)"

    const-string v3, "Failed to connect service."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    return-object v0

    :catch_1
    move-exception v1

    const-string v2, "DEVROOT#Manager(1.1.2)"

    const-string v3, "Operation failed."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    return-object v0

    :cond_2
    :goto_0
    const-string v1, "DEVROOT#Manager(1.1.2)"

    const-string v2, "Invalid argument"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public getDeviceRootKeyCertificate(I)[B
    .locals 4

    const-string v0, "DEVROOT#Manager(1.1.2)"

    const-string v1, "getDeviceRootKeyCertificate() is called."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;->mService:Lcom/samsung/android/service/DeviceRootKeyService/IDeviceRootKeyService;

    invoke-interface {v1, p1}, Lcom/samsung/android/service/DeviceRootKeyService/IDeviceRootKeyService;->getDeviceRootKeyCertificate(I)[B

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0

    :catch_1
    move-exception v1

    const-string v2, "DEVROOT#Manager(1.1.2)"

    const-string v3, "Failed to connect service."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    return-object v0
.end method

.method public getDeviceRootKeyUID(I)Ljava/lang/String;
    .locals 4

    const-string v0, "DEVROOT#Manager(1.1.2)"

    const-string v1, "getDeviceRootKeyUID() is called."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;->mService:Lcom/samsung/android/service/DeviceRootKeyService/IDeviceRootKeyService;

    invoke-interface {v1, p1}, Lcom/samsung/android/service/DeviceRootKeyService/IDeviceRootKeyService;->getDeviceRootKeyUID(I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0

    :catch_1
    move-exception v1

    const-string v2, "DEVROOT#Manager(1.1.2)"

    const-string v3, "Failed to connect service."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    return-object v0
.end method

.method public isAliveDeviceRootKeyService()Z
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;->mService:Lcom/samsung/android/service/DeviceRootKeyService/IDeviceRootKeyService;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;->mService:Lcom/samsung/android/service/DeviceRootKeyService/IDeviceRootKeyService;

    invoke-interface {v0}, Lcom/samsung/android/service/DeviceRootKeyService/IDeviceRootKeyService;->isServiceReady()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return v1

    :catch_1
    move-exception v0

    const-string v2, "DEVROOT#Manager(1.1.2)"

    const-string v3, "Failed to connect service."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    return v1

    :cond_0
    return v1
.end method

.method public isExistDeviceRootKey(I)Z
    .locals 4

    const-string v0, "DEVROOT#Manager(1.1.2)"

    const-string v1, "isExistDeviceRootKey() is called."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;->mService:Lcom/samsung/android/service/DeviceRootKeyService/IDeviceRootKeyService;

    invoke-interface {v1, p1}, Lcom/samsung/android/service/DeviceRootKeyService/IDeviceRootKeyService;->isExistDeviceRootKey(I)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return v0

    :catch_1
    move-exception v1

    const-string v2, "DEVROOT#Manager(1.1.2)"

    const-string v3, "Failed to connect service."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    return v0
.end method

.method public releaseServiceKeySession()I
    .locals 4

    const-string v0, "DEVROOT#Manager(1.1.2)"

    const-string/jumbo v1, "releaseServiceKeySession() is called."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0x2710

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;->mService:Lcom/samsung/android/service/DeviceRootKeyService/IDeviceRootKeyService;

    invoke-interface {v1}, Lcom/samsung/android/service/DeviceRootKeyService/IDeviceRootKeyService;->releaseServiceKeySession()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return v0

    :catch_1
    move-exception v1

    const-string v2, "DEVROOT#Manager(1.1.2)"

    const-string v3, "Failed to connect service."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    return v0
.end method

.method public setDeviceRootKey([B)I
    .locals 4

    const-string v0, "DEVROOT#Manager(1.1.2)"

    const-string/jumbo v1, "setDeviceRootKey() is called."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "DEVROOT#Manager(1.1.2)"

    const-string v1, "This function has been deprecated."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0x2710

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;->mService:Lcom/samsung/android/service/DeviceRootKeyService/IDeviceRootKeyService;

    invoke-interface {v1, p1}, Lcom/samsung/android/service/DeviceRootKeyService/IDeviceRootKeyService;->setDeviceRootKey([B)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return v0

    :catch_1
    move-exception v1

    const-string v2, "DEVROOT#Manager(1.1.2)"

    const-string v3, "Failed to connect service."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    return v0
.end method

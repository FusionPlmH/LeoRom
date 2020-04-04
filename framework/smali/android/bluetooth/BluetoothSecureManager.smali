.class public final Landroid/bluetooth/BluetoothSecureManager;
.super Ljava/lang/Object;
.source "BluetoothSecureManager.java"


# static fields
.field public static final SECURE_SETTING_A2DP_ENABLE:Ljava/lang/String; = "a2dp_enable"

.field public static final SECURE_SETTING_FTP_ENABLE:Ljava/lang/String; = "ftp_enable"

.field public static final SECURE_SETTING_GATT_ENABLE:Ljava/lang/String; = "gatt_enable"

.field public static final SECURE_SETTING_HDP_ENABLE:Ljava/lang/String; = "hdp_enable"

.field public static final SECURE_SETTING_HFP_ENABLE:Ljava/lang/String; = "hfp_enable"

.field public static final SECURE_SETTING_HID_ENABLE:Ljava/lang/String; = "hid_enable"

.field public static final SECURE_SETTING_MAP_ENABLE:Ljava/lang/String; = "map_enable"

.field public static final SECURE_SETTING_OPP_ENABLE:Ljava/lang/String; = "opp_enable"

.field public static final SECURE_SETTING_PAIRING_MODE:Ljava/lang/String; = "pairing_mode"

.field public static final SECURE_SETTING_PAN_ENABLE:Ljava/lang/String; = "pan_enable"

.field public static final SECURE_SETTING_PBAP_ENABLE:Ljava/lang/String; = "pbap_enable"

.field public static final SECURE_SETTING_SAP_ENABLE:Ljava/lang/String; = "sap_enable"

.field public static final SECURE_SETTING_SCAN_MODE:Ljava/lang/String; = "scan_mode"

.field private static final TAG:Ljava/lang/String; = "BluetoothSecureManager"

.field private static This:Landroid/bluetooth/BluetoothSecureManager;


# instance fields
.field private mService:Landroid/bluetooth/IBluetoothSecureManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Landroid/bluetooth/BluetoothSecureManager;->This:Landroid/bluetooth/BluetoothSecureManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/bluetooth/BluetoothSecureManager;->loadSecureManager()Landroid/bluetooth/IBluetoothSecureManagerService;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothSecureManager;->mService:Landroid/bluetooth/IBluetoothSecureManagerService;

    return-void
.end method

.method public static getInstant()Landroid/bluetooth/BluetoothSecureManager;
    .locals 2

    sget-object v0, Landroid/bluetooth/BluetoothSecureManager;->This:Landroid/bluetooth/BluetoothSecureManager;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/bluetooth/BluetoothSecureManager;->This:Landroid/bluetooth/BluetoothSecureManager;

    return-object v0

    :cond_0
    const-class v0, Landroid/bluetooth/BluetoothSecureManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/bluetooth/BluetoothSecureManager;->This:Landroid/bluetooth/BluetoothSecureManager;

    if-nez v1, :cond_1

    new-instance v1, Landroid/bluetooth/BluetoothSecureManager;

    invoke-direct {v1}, Landroid/bluetooth/BluetoothSecureManager;-><init>()V

    sput-object v1, Landroid/bluetooth/BluetoothSecureManager;->This:Landroid/bluetooth/BluetoothSecureManager;

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Landroid/bluetooth/BluetoothSecureManager;->This:Landroid/bluetooth/BluetoothSecureManager;

    return-object v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private static loadSecureManager()Landroid/bluetooth/IBluetoothSecureManagerService;
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "android.os.ServiceManager"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "BluetoothSecureManager"

    const-string v3, "calling getMethod for getService"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "getService"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const-string v4, "BluetoothSecureManager"

    const-string v5, "calling getService"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "bluetooth_secure_mode_manager"

    aput-object v4, v3, v6

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/IBinder;

    const-string v4, "BluetoothSecureManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getService return binder: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v3}, Landroid/bluetooth/IBluetoothSecureManagerService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothSecureManagerService;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    :catch_0
    move-exception v1

    const-string v2, "BluetoothSecureManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "load bt secure manager failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method


# virtual methods
.method public addWhiteList(Ljava/lang/String;I[Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/bluetooth/BluetoothSecureManager;->mService:Landroid/bluetooth/IBluetoothSecureManagerService;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothSecureManager;->mService:Landroid/bluetooth/IBluetoothSecureManagerService;

    invoke-interface {v0, p1, p2, p3}, Landroid/bluetooth/IBluetoothSecureManagerService;->addWhiteList(Ljava/lang/String;I[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public enableSecureMode(Z)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/bluetooth/BluetoothSecureManager;->mService:Landroid/bluetooth/IBluetoothSecureManagerService;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothSecureManager;->mService:Landroid/bluetooth/IBluetoothSecureManagerService;

    invoke-interface {v0, p1}, Landroid/bluetooth/IBluetoothSecureManagerService;->enableSecureMode(Z)Z

    move-result v0

    return v0
.end method

.method public enableWhiteList(Z)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/bluetooth/BluetoothSecureManager;->mService:Landroid/bluetooth/IBluetoothSecureManagerService;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothSecureManager;->mService:Landroid/bluetooth/IBluetoothSecureManagerService;

    invoke-interface {v0, p1}, Landroid/bluetooth/IBluetoothSecureManagerService;->enableWhiteList(Z)Z

    move-result v0

    return v0
.end method

.method public getSecureModeSetting(Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/bluetooth/BluetoothSecureManager;->mService:Landroid/bluetooth/IBluetoothSecureManagerService;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothSecureManager;->mService:Landroid/bluetooth/IBluetoothSecureManagerService;

    invoke-interface {v0, p1}, Landroid/bluetooth/IBluetoothSecureManagerService;->getSecureModeSetting(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getWhiteListCod(I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/bluetooth/BluetoothSecureManager;->mService:Landroid/bluetooth/IBluetoothSecureManagerService;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothSecureManager;->mService:Landroid/bluetooth/IBluetoothSecureManagerService;

    invoke-interface {v0, p1}, Landroid/bluetooth/IBluetoothSecureManagerService;->getWhiteListCod(I)I

    move-result v0

    return v0
.end method

.method public getWhiteListFirstIndex()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/bluetooth/BluetoothSecureManager;->mService:Landroid/bluetooth/IBluetoothSecureManagerService;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothSecureManager;->mService:Landroid/bluetooth/IBluetoothSecureManagerService;

    invoke-interface {v0}, Landroid/bluetooth/IBluetoothSecureManagerService;->getWhiteListFirstIndex()I

    move-result v0

    return v0
.end method

.method public getWhiteListName(I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/bluetooth/BluetoothSecureManager;->mService:Landroid/bluetooth/IBluetoothSecureManagerService;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothSecureManager;->mService:Landroid/bluetooth/IBluetoothSecureManagerService;

    invoke-interface {v0, p1}, Landroid/bluetooth/IBluetoothSecureManagerService;->getWhiteListName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWhiteListNextIndex(I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/bluetooth/BluetoothSecureManager;->mService:Landroid/bluetooth/IBluetoothSecureManagerService;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothSecureManager;->mService:Landroid/bluetooth/IBluetoothSecureManagerService;

    invoke-interface {v0, p1}, Landroid/bluetooth/IBluetoothSecureManagerService;->getWhiteListNextIndex(I)I

    move-result v0

    return v0
.end method

.method public getWhiteListUuids(I)[Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/bluetooth/BluetoothSecureManager;->mService:Landroid/bluetooth/IBluetoothSecureManagerService;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothSecureManager;->mService:Landroid/bluetooth/IBluetoothSecureManagerService;

    invoke-interface {v0, p1}, Landroid/bluetooth/IBluetoothSecureManagerService;->getWhiteListUuids(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isSecureModeEnabled()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/bluetooth/BluetoothSecureManager;->mService:Landroid/bluetooth/IBluetoothSecureManagerService;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothSecureManager;->mService:Landroid/bluetooth/IBluetoothSecureManagerService;

    invoke-interface {v0}, Landroid/bluetooth/IBluetoothSecureManagerService;->isSecureModeEnabled()Z

    move-result v0

    return v0
.end method

.method public isWhiteListEnabled()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/bluetooth/BluetoothSecureManager;->mService:Landroid/bluetooth/IBluetoothSecureManagerService;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothSecureManager;->mService:Landroid/bluetooth/IBluetoothSecureManagerService;

    invoke-interface {v0}, Landroid/bluetooth/IBluetoothSecureManagerService;->isWhiteListEnabled()Z

    move-result v0

    return v0
.end method

.method public removeWhiteList(Ljava/lang/String;I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/bluetooth/BluetoothSecureManager;->mService:Landroid/bluetooth/IBluetoothSecureManagerService;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothSecureManager;->mService:Landroid/bluetooth/IBluetoothSecureManagerService;

    invoke-interface {v0, p1, p2}, Landroid/bluetooth/IBluetoothSecureManagerService;->removeWhiteList(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public setSecureModeSetting(Ljava/lang/String;I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/bluetooth/BluetoothSecureManager;->mService:Landroid/bluetooth/IBluetoothSecureManagerService;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothSecureManager;->mService:Landroid/bluetooth/IBluetoothSecureManagerService;

    invoke-interface {v0, p1, p2}, Landroid/bluetooth/IBluetoothSecureManagerService;->setSecureModeSetting(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.class public final Lcom/samsung/android/bluetooth/BluetoothPageOffload;
.super Ljava/lang/Object;
.source "BluetoothPageOffload.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/bluetooth/BluetoothPageOffload$PageOffloadListener;,
        Lcom/samsung/android/bluetooth/BluetoothPageOffload$PageOffloadCallbackWrapper;
    }
.end annotation


# static fields
.field public static final ACTION_PAGEOFFLOAD_STATE_CHANGED:Ljava/lang/String; = "com.samsung.bluetooth.pageoffload.state_changed"

.field public static final ERROR_COMMAND_DISALLOWED:I = 0xc

.field public static final ERROR_CONNECTION_EXISTS:I = 0xb

.field public static final EXTRA_ERROR_TYPE:Ljava/lang/String; = "page_err_type"

.field public static final EXTRA_STATE:Ljava/lang/String; = "page_state"

.field public static final PAGEOFFLOAD_STATUS_COMMAND_DISALLOWED:I = 0xc

.field public static final PAGEOFFLOAD_STATUS_CONNECTION_EXISTS:I = 0xb

.field public static final PAGEOFFLOAD_STATUS_FOUND:I = 0x0

.field public static final PAGEOFFLOAD_STATUS_TIMEOUT:I = 0x8

.field public static final STATE_ADDED:I = 0x0

.field public static final STATE_CANCELED:I = 0x1

.field public static final STATE_FAILED:I = 0x4

.field public static final STATE_FOUND:I = 0x2

.field public static final STATE_TIMEOUT:I = 0x3

.field private static final TAG:Ljava/lang/String; = "BluetoothPageOffload"


# instance fields
.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mPageOffloadListener:Lcom/samsung/android/bluetooth/BluetoothPageOffload$PageOffloadListener;

.field private mService:Lcom/samsung/android/bluetooth/IBluetoothPageOffload;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/samsung/android/bluetooth/BluetoothPageOffload$PageOffloadListener;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/bluetooth/BluetoothPageOffload$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/bluetooth/BluetoothPageOffload$1;-><init>(Lcom/samsung/android/bluetooth/BluetoothPageOffload;)V

    iput-object v0, p0, Lcom/samsung/android/bluetooth/BluetoothPageOffload;->mConnection:Landroid/content/ServiceConnection;

    iput-object p1, p0, Lcom/samsung/android/bluetooth/BluetoothPageOffload;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/bluetooth/BluetoothPageOffload;->mPageOffloadListener:Lcom/samsung/android/bluetooth/BluetoothPageOffload$PageOffloadListener;

    invoke-virtual {p0}, Lcom/samsung/android/bluetooth/BluetoothPageOffload;->doBind()Z

    return-void
.end method

.method static synthetic access$002(Lcom/samsung/android/bluetooth/BluetoothPageOffload;Lcom/samsung/android/bluetooth/IBluetoothPageOffload;)Lcom/samsung/android/bluetooth/IBluetoothPageOffload;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/bluetooth/BluetoothPageOffload;->mService:Lcom/samsung/android/bluetooth/IBluetoothPageOffload;

    return-object p1
.end method

.method static synthetic access$100(Lcom/samsung/android/bluetooth/BluetoothPageOffload;)Lcom/samsung/android/bluetooth/BluetoothPageOffload$PageOffloadListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/bluetooth/BluetoothPageOffload;->mPageOffloadListener:Lcom/samsung/android/bluetooth/BluetoothPageOffload$PageOffloadListener;

    return-object v0
.end method

.method public static getBluetoothPageOffload(Landroid/content/Context;Lcom/samsung/android/bluetooth/BluetoothPageOffload$PageOffloadListener;)Z
    .locals 2

    const-string v0, "BluetoothPageOffload"

    const-string v1, "getBluetoothPageOffload"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/samsung/android/bluetooth/BluetoothPageOffload;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/bluetooth/BluetoothPageOffload;-><init>(Landroid/content/Context;Lcom/samsung/android/bluetooth/BluetoothPageOffload$PageOffloadListener;)V

    const/4 v1, 0x1

    return v1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public PageOffloadCancel(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/bluetooth/BluetoothPageOffload;->mService:Lcom/samsung/android/bluetooth/IBluetoothPageOffload;

    invoke-interface {v0, p1}, Lcom/samsung/android/bluetooth/IBluetoothPageOffload;->PageOffloadCancel(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "BluetoothPageOffload"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not cancel PageOffload : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1
.end method

.method public PageOffloadPause(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/bluetooth/BluetoothPageOffload;->mService:Lcom/samsung/android/bluetooth/IBluetoothPageOffload;

    invoke-interface {v0, p1}, Lcom/samsung/android/bluetooth/IBluetoothPageOffload;->PageOffloadPause(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "BluetoothPageOffload"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not pause PageOffload : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1
.end method

.method public PageOffloadResume(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/bluetooth/BluetoothPageOffload;->mService:Lcom/samsung/android/bluetooth/IBluetoothPageOffload;

    invoke-interface {v0, p1}, Lcom/samsung/android/bluetooth/IBluetoothPageOffload;->PageOffloadResume(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "BluetoothPageOffload"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not resume PageOffload : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1
.end method

.method public PageOffloadStart(Landroid/bluetooth/BluetoothDevice;Lcom/samsung/android/bluetooth/BluetoothPageOffloadCallback;)Z
    .locals 4

    :try_start_0
    new-instance v0, Lcom/samsung/android/bluetooth/BluetoothPageOffload$PageOffloadCallbackWrapper;

    invoke-direct {v0, p2}, Lcom/samsung/android/bluetooth/BluetoothPageOffload$PageOffloadCallbackWrapper;-><init>(Lcom/samsung/android/bluetooth/BluetoothPageOffloadCallback;)V

    iget-object v1, p0, Lcom/samsung/android/bluetooth/BluetoothPageOffload;->mService:Lcom/samsung/android/bluetooth/IBluetoothPageOffload;

    invoke-interface {v1, p1, v0}, Lcom/samsung/android/bluetooth/IBluetoothPageOffload;->PageOffloadStart(Landroid/bluetooth/BluetoothDevice;Lcom/samsung/android/bluetooth/IBluetoothPageOffloadCallback;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v0

    const-string v1, "BluetoothPageOffload"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not start PageOffload : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1
.end method

.method public SetPageOffloadConfig(III)Z
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/bluetooth/BluetoothPageOffload;->mService:Lcom/samsung/android/bluetooth/IBluetoothPageOffload;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/bluetooth/IBluetoothPageOffload;->SetPageOffloadConfig(III)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "BluetoothPageOffload"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not set config for PageOffload : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1
.end method

.method public closeBluetoothPageOffload()V
    .locals 5

    const-string v0, "BluetoothPageOffload"

    const-string v1, "closeBluetoothPageOffload"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/bluetooth/BluetoothPageOffload;->mConnection:Landroid/content/ServiceConnection;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/bluetooth/BluetoothPageOffload;->mService:Lcom/samsung/android/bluetooth/IBluetoothPageOffload;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iput-object v2, p0, Lcom/samsung/android/bluetooth/BluetoothPageOffload;->mService:Lcom/samsung/android/bluetooth/IBluetoothPageOffload;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/bluetooth/BluetoothPageOffload;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/bluetooth/BluetoothPageOffload;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    const-string v3, "BluetoothPageOffload"

    const-string v4, "close: could not unbind PageOffload service: "

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iput-object v2, p0, Lcom/samsung/android/bluetooth/BluetoothPageOffload;->mPageOffloadListener:Lcom/samsung/android/bluetooth/BluetoothPageOffload$PageOffloadListener;

    return-void

    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method doBind()Z
    .locals 7

    const-string v0, "BluetoothPageOffload"

    const-string v1, "Binding to PageOffloadService"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/samsung/android/bluetooth/IBluetoothPageOffload;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/bluetooth/BluetoothPageOffload;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->resolveSystemService(Landroid/content/pm/PackageManager;I)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v3, "BluetoothPageOffload"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "comp : null "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x1

    if-nez v1, :cond_0

    move v6, v5

    goto :goto_0

    :cond_0
    move v6, v2

    :goto_0
    invoke-static {v6}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_2

    iget-object v3, p0, Lcom/samsung/android/bluetooth/BluetoothPageOffload;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/samsung/android/bluetooth/BluetoothPageOffload;->mConnection:Landroid/content/ServiceConnection;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v6

    invoke-virtual {v3, v0, v4, v2, v6}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    return v5

    :cond_2
    :goto_1
    const-string v3, "BluetoothPageOffload"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not bind to Bluetooth PageOffload Service with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public getPageOffloadDevices()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/bluetooth/BluetoothPageOffload;->mService:Lcom/samsung/android/bluetooth/IBluetoothPageOffload;

    invoke-interface {v0}, Lcom/samsung/android/bluetooth/IBluetoothPageOffload;->getPageOffloadDevices()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "BluetoothPageOffload"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not get the list of PageOffload devices: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    return-object v1
.end method

.method public getPageOffloadPriority(Landroid/bluetooth/BluetoothDevice;)I
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/bluetooth/BluetoothPageOffload;->mService:Lcom/samsung/android/bluetooth/IBluetoothPageOffload;

    invoke-interface {v0, p1}, Lcom/samsung/android/bluetooth/IBluetoothPageOffload;->getPageOffloadPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "BluetoothPageOffload"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not get the priority of PageOffload device: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    return v1
.end method

.method public isPageOffloadRunning(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/bluetooth/BluetoothPageOffload;->mService:Lcom/samsung/android/bluetooth/IBluetoothPageOffload;

    invoke-interface {v0, p1}, Lcom/samsung/android/bluetooth/IBluetoothPageOffload;->isPageOffloadRunning(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "BluetoothPageOffload"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not get the status of PageOffload : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1
.end method

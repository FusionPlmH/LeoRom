.class final Lcom/android/server/display/DisplayManagerService$LocalService;
.super Landroid/hardware/display/DisplayManagerInternal;
.source "DisplayManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LocalService"
.end annotation


# instance fields
.field blanker:Lcom/android/server/display/DisplayBlanker;

.field private mNeedUpdate:Z

.field private mRequestingDualScreenPolicy:I

.field private mRequestingStateInternal:I

.field final synthetic this$0:Lcom/android/server/display/DisplayManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/display/DisplayManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-direct {p0}, Landroid/hardware/display/DisplayManagerInternal;-><init>()V

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->mRequestingDualScreenPolicy:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->mNeedUpdate:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/DisplayManagerService$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService$LocalService;-><init>(Lcom/android/server/display/DisplayManagerService;)V

    return-void
.end method

.method static synthetic access$7102(Lcom/android/server/display/DisplayManagerService$LocalService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->mNeedUpdate:Z

    return p1
.end method

.method static synthetic access$7300(Lcom/android/server/display/DisplayManagerService$LocalService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->mRequestingDualScreenPolicy:I

    return v0
.end method

.method static synthetic access$7302(Lcom/android/server/display/DisplayManagerService$LocalService;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->mRequestingDualScreenPolicy:I

    return p1
.end method


# virtual methods
.method public getBuiltInDisplayId(I)I
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0, p1}, Lcom/android/server/display/DisplayManagerService;->access$6500(Lcom/android/server/display/DisplayManagerService;I)I

    move-result v0

    return v0
.end method

.method public getCurrentScreenBrightness()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$6100(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayPowerController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerController;->getCurrentScreenBrightness()I

    move-result v0

    return v0
.end method

.method public getDisplayInfo(I)Landroid/view/DisplayInfo;
    .locals 3

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {v0, p1, v1, v2}, Lcom/android/server/display/DisplayManagerService;->access$7500(Lcom/android/server/display/DisplayManagerService;III)Landroid/view/DisplayInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayToken(I)Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0, p1}, Lcom/android/server/display/DisplayManagerService;->access$8600(Lcom/android/server/display/DisplayManagerService;I)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public getLastAutomaticScreenBrightness()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$6100(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayPowerController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerController;->getLastAutomaticScreenBrightness()I

    move-result v0

    return v0
.end method

.method public getLastUserSetScreenBrightnessTime()J
    .locals 2

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$6100(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayPowerController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerController;->getLastUserSetScreenBrightnessTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getNonOverrideDisplayInfo(ILandroid/view/DisplayInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0, p1, p2}, Lcom/android/server/display/DisplayManagerService;->access$7900(Lcom/android/server/display/DisplayManagerService;ILandroid/view/DisplayInfo;)V

    return-void
.end method

.method public initPowerManagement(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;Landroid/os/Handler;Landroid/hardware/SensorManager;)V
    .locals 9

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$1000(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    new-instance v1, Lcom/android/server/display/DisplayManagerService$LocalService$1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/display/DisplayManagerService$LocalService$1;-><init>(Lcom/android/server/display/DisplayManagerService$LocalService;Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;)V

    iput-object v1, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->blanker:Lcom/android/server/display/DisplayBlanker;

    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    new-instance v8, Lcom/android/server/display/DisplayPowerController;

    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v2}, Lcom/android/server/display/DisplayManagerService;->access$3200(Lcom/android/server/display/DisplayManagerService;)Landroid/content/Context;

    move-result-object v3

    iget-object v7, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->blanker:Lcom/android/server/display/DisplayBlanker;

    move-object v2, v8

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v2 .. v7}, Lcom/android/server/display/DisplayPowerController;-><init>(Landroid/content/Context;Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;Landroid/os/Handler;Landroid/hardware/SensorManager;Lcom/android/server/display/DisplayBlanker;)V

    invoke-static {v1, v8}, Lcom/android/server/display/DisplayManagerService;->access$6102(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/DisplayPowerController;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$7400(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->sendEmptyMessage(I)Z

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public isDesktopDisplayExist()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$8500(Lcom/android/server/display/DisplayManagerService;)Z

    move-result v0

    return v0
.end method

.method public isDesktopSwitched()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$8400(Lcom/android/server/display/DisplayManagerService;)Z

    move-result v0

    return v0
.end method

.method public isProximitySensorAvailable()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$1000(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v1}, Lcom/android/server/display/DisplayManagerService;->access$6100(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayPowerController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/display/DisplayPowerController;->isProximitySensorAvailable()Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isUidPresentOnDisplay(II)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0, p1, p2}, Lcom/android/server/display/DisplayManagerService;->access$8300(Lcom/android/server/display/DisplayManagerService;II)Z

    move-result v0

    return v0
.end method

.method public onOverlayChanged()V
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v1}, Lcom/android/server/display/DisplayManagerService;->access$3200(Lcom/android/server/display/DisplayManagerService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "android"

    const/16 v3, 0x400

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/ActivityThread;->handleSystemApplicationInfoChanged(Landroid/content/pm/ApplicationInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    nop

    :goto_0
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v1}, Lcom/android/server/display/DisplayManagerService;->access$1000(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v1

    monitor-enter v1

    nop

    :goto_1
    :try_start_1
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v2}, Lcom/android/server/display/DisplayManagerService;->access$4800(Lcom/android/server/display/DisplayManagerService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v2}, Lcom/android/server/display/DisplayManagerService;->access$4800(Lcom/android/server/display/DisplayManagerService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/DisplayDevice;

    invoke-virtual {v2}, Lcom/android/server/display/DisplayDevice;->onOverlayChangedLocked()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public performTraversal(Landroid/view/SurfaceControl$Transaction;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/display/DisplayManagerService;->performTraversalInternal(Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method public persistBrightnessTrackerState()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$1000(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    const-string v1, "DisplayManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[api] persistBrightnessTrackerState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/power/PowerManagerUtil;->callerInfoToString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v1}, Lcom/android/server/display/DisplayManagerService;->access$6100(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayPowerController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/display/DisplayPowerController;->persistBrightnessTrackerState()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerDisplayBrightnessListener(Landroid/hardware/display/DisplayManagerInternal$DisplayBrightnessListener;)V
    .locals 3

    const-string v0, "DisplayManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerDisplayBrightnessListener: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0, p1}, Lcom/android/server/display/DisplayManagerService;->access$8900(Lcom/android/server/display/DisplayManagerService;Landroid/hardware/display/DisplayManagerInternal$DisplayBrightnessListener;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "listener must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public registerDisplayTransactionListener(Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0, p1}, Lcom/android/server/display/DisplayManagerService;->access$7600(Lcom/android/server/display/DisplayManagerService;Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "listener must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public requestPowerState(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;Z)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$1000(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v1}, Lcom/android/server/display/DisplayManagerService;->access$6100(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayPowerController;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/android/server/display/DisplayPowerController;->requestPowerState(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;Z)Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setDefaultBuiltInDisplayFromWindowManager(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0, p1}, Lcom/android/server/display/DisplayManagerService;->access$8700(Lcom/android/server/display/DisplayManagerService;I)V

    return-void
.end method

.method public setDisplayAccessUIDs(Landroid/util/SparseArray;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/util/IntArray;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0, p1}, Lcom/android/server/display/DisplayManagerService;->access$8200(Lcom/android/server/display/DisplayManagerService;Landroid/util/SparseArray;)V

    return-void
.end method

.method public setDisplayInfoOverrideFromWindowManager(ILandroid/view/DisplayInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0, p1, p2}, Lcom/android/server/display/DisplayManagerService;->access$7800(Lcom/android/server/display/DisplayManagerService;ILandroid/view/DisplayInfo;)V

    return-void
.end method

.method public setDisplayOffsets(III)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0, p1, p2, p3}, Lcom/android/server/display/DisplayManagerService;->access$8100(Lcom/android/server/display/DisplayManagerService;III)V

    return-void
.end method

.method public setDisplayProperties(IZFIZ)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Lcom/android/server/display/DisplayManagerService;->access$8000(Lcom/android/server/display/DisplayManagerService;IZFIZ)V

    return-void
.end method

.method public setDisplayStateLimit(I)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$7000(Lcom/android/server/display/DisplayManagerService;)I

    move-result v0

    if-eq v0, p1, :cond_1

    const-string v0, "DisplayManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDisplayStateLimit : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v2}, Lcom/android/server/display/DisplayManagerService;->access$7000(Lcom/android/server/display/DisplayManagerService;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/display/DisplayManagerService;->access$9102(Lcom/android/server/display/DisplayManagerService;Z)Z

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0, p1}, Lcom/android/server/display/DisplayManagerService;->access$7002(Lcom/android/server/display/DisplayManagerService;I)I

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$7000(Lcom/android/server/display/DisplayManagerService;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const-string v0, "DisplayManagerService"

    const-string v1, "Wrong request: default"

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_0
    const-string v0, "DisplayManagerService"

    const-string v1, "Limit mode on"

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v1}, Lcom/android/server/display/DisplayManagerService;->access$6600(Lcom/android/server/display/DisplayManagerService;)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v2}, Lcom/android/server/display/DisplayManagerService;->access$6700(Lcom/android/server/display/DisplayManagerService;)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v3}, Lcom/android/server/display/DisplayManagerService;->access$6800(Lcom/android/server/display/DisplayManagerService;)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v4}, Lcom/android/server/display/DisplayManagerService;->access$6900(Lcom/android/server/display/DisplayManagerService;)I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/display/DisplayManagerService;->access$7200(Lcom/android/server/display/DisplayManagerService;IIII)V

    goto :goto_0

    :pswitch_1
    const-string v0, "DisplayManagerService"

    const-string v1, "Wrong request"

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_2
    iget-boolean v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->mNeedUpdate:Z

    if-eqz v0, :cond_0

    const-string v0, "DisplayManagerService"

    const-string v1, "NeedUpdate"

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->blanker:Lcom/android/server/display/DisplayBlanker;

    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v1}, Lcom/android/server/display/DisplayManagerService;->access$6600(Lcom/android/server/display/DisplayManagerService;)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v2}, Lcom/android/server/display/DisplayManagerService;->access$6700(Lcom/android/server/display/DisplayManagerService;)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v3}, Lcom/android/server/display/DisplayManagerService;->access$6800(Lcom/android/server/display/DisplayManagerService;)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v4}, Lcom/android/server/display/DisplayManagerService;->access$6900(Lcom/android/server/display/DisplayManagerService;)I

    move-result v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/server/display/DisplayBlanker;->requestDisplayState(IIII)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->mNeedUpdate:Z

    goto :goto_0

    :cond_0
    const-string v0, "DisplayManagerService"

    const-string v1, "Just roll back"

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v1}, Lcom/android/server/display/DisplayManagerService;->access$6600(Lcom/android/server/display/DisplayManagerService;)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v2}, Lcom/android/server/display/DisplayManagerService;->access$6700(Lcom/android/server/display/DisplayManagerService;)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v3}, Lcom/android/server/display/DisplayManagerService;->access$6800(Lcom/android/server/display/DisplayManagerService;)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v4}, Lcom/android/server/display/DisplayManagerService;->access$6900(Lcom/android/server/display/DisplayManagerService;)I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/display/DisplayManagerService;->access$7200(Lcom/android/server/display/DisplayManagerService;IIII)V

    nop

    :goto_0
    return-void

    :cond_1
    const-string v0, "DisplayManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDisplayStateLimit: sameRequest "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public setScaledDisplaySize(III)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0, p1, p2, p3}, Lcom/android/server/display/DisplayManagerService;->access$8800(Lcom/android/server/display/DisplayManagerService;III)V

    return-void
.end method

.method public unregisterDisplayBrightnessListener(Landroid/hardware/display/DisplayManagerInternal$DisplayBrightnessListener;)V
    .locals 3

    const-string v0, "DisplayManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unregisterDisplayBrightnessListener: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0, p1}, Lcom/android/server/display/DisplayManagerService;->access$9000(Lcom/android/server/display/DisplayManagerService;Landroid/hardware/display/DisplayManagerInternal$DisplayBrightnessListener;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "listener must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unregisterDisplayTransactionListener(Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0, p1}, Lcom/android/server/display/DisplayManagerService;->access$7700(Lcom/android/server/display/DisplayManagerService;Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "listener must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateDisplayState(IIII)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0, p1}, Lcom/android/server/display/DisplayManagerService;->access$6602(Lcom/android/server/display/DisplayManagerService;I)I

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0, p2}, Lcom/android/server/display/DisplayManagerService;->access$6702(Lcom/android/server/display/DisplayManagerService;I)I

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0, p3}, Lcom/android/server/display/DisplayManagerService;->access$6802(Lcom/android/server/display/DisplayManagerService;I)I

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0, p4}, Lcom/android/server/display/DisplayManagerService;->access$6902(Lcom/android/server/display/DisplayManagerService;I)I

    return-void
.end method

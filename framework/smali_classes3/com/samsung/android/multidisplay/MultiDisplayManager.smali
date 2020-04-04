.class public Lcom/samsung/android/multidisplay/MultiDisplayManager;
.super Ljava/lang/Object;
.source "MultiDisplayManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/multidisplay/MultiDisplayManager$DexTaskInfo;,
        Lcom/samsung/android/multidisplay/MultiDisplayManager$Utils;
    }
.end annotation


# static fields
.field public static final DEX_DEFAULT_TASK_HEIGHT:I = 0x2d0

.field public static final DEX_DEFAULT_TASK_WIDTH:I = 0x3c0

.field public static final DEX_MODE_DUAL:I = 0x2

.field public static final DEX_MODE_NONE:I = 0x0

.field public static final DEX_MODE_STANDALONE:I = 0x1

.field public static final METADATA_DEX_LAUNCH_HEIGHT:Ljava/lang/String; = "com.samsung.android.dex.launchheight"

.field public static final METADATA_DEX_LAUNCH_WIDTH:Ljava/lang/String; = "com.samsung.android.dex.launchwidth"

.field public static final METADATA_DEX_TRANSIENT_BAR_DELAY:Ljava/lang/String; = "com.samsung.android.dex.transient_bar_delay"

.field public static final METADATA_MULTI_DISPLAY_DO_NOT_SHOW_DISPLAYCHOOSER:Ljava/lang/String; = "com.samsung.android.multidisplay.do_not_show_displaychooser"

.field public static final METADATA_MULTI_DISPLAY_KEEP_PROCESS_ALIVE:Ljava/lang/String; = "com.samsung.android.multidisplay.keep_process_alive"

.field public static final METADATA_MULTI_DISPLAY_PRIMARY_DISPLAY:Ljava/lang/String; = "com.samsung.android.multidisplay.primarydisplay"

.field private static final TAG:Ljava/lang/String; = "MultiDisplayManager"

.field public static final WINNER_POC_SUB_DISPLAY_MODE_NONE:I = 0x0

.field public static final WINNER_POC_SUB_DISPLAY_MODE_POC1:I = 0x1

.field public static final WINNER_POC_SUB_DISPLAY_MODE_POC2:I = 0x2

.field public static final WINNER_POC_SUB_DISPLAY_MODE_POC3:I = 0x3

.field public static final WINNER_POC_SUB_DISPLAY_MODE_POC4:I = 0x4

.field public static final WINNER_POC_SUB_DISPLAY_MODE_POC5:I = 0x5

.field private static final gDefault:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton<",
            "Lcom/samsung/android/multidisplay/IMultiDisplayManager;",
            ">;"
        }
    .end annotation
.end field

.field private static sInstance:Lcom/samsung/android/multidisplay/MultiDisplayManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/multidisplay/MultiDisplayManager$1;

    invoke-direct {v0}, Lcom/samsung/android/multidisplay/MultiDisplayManager$1;-><init>()V

    sput-object v0, Lcom/samsung/android/multidisplay/MultiDisplayManager;->gDefault:Landroid/util/Singleton;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertToConfigurationOrientation(I)I
    .locals 1

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    return v0

    :pswitch_1
    const/4 v0, 0x1

    return v0

    :pswitch_2
    const/4 v0, 0x2

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static dexModeToString(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string v0, "DEX_MODE_DUAL"

    return-object v0

    :pswitch_1
    const-string v0, "DEX_MODE_STANDALONE"

    return-object v0

    :pswitch_2
    const-string v0, "DEX_MODE_NONE"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getDefault()Lcom/samsung/android/multidisplay/IMultiDisplayManager;
    .locals 1

    sget-object v0, Lcom/samsung/android/multidisplay/MultiDisplayManager;->gDefault:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/multidisplay/IMultiDisplayManager;

    return-object v0
.end method

.method public static getInstance()Lcom/samsung/android/multidisplay/MultiDisplayManager;
    .locals 1

    sget-object v0, Lcom/samsung/android/multidisplay/MultiDisplayManager;->sInstance:Lcom/samsung/android/multidisplay/MultiDisplayManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/multidisplay/MultiDisplayManager;

    invoke-direct {v0}, Lcom/samsung/android/multidisplay/MultiDisplayManager;-><init>()V

    sput-object v0, Lcom/samsung/android/multidisplay/MultiDisplayManager;->sInstance:Lcom/samsung/android/multidisplay/MultiDisplayManager;

    :cond_0
    sget-object v0, Lcom/samsung/android/multidisplay/MultiDisplayManager;->sInstance:Lcom/samsung/android/multidisplay/MultiDisplayManager;

    return-object v0
.end method

.method public static isFullscreenFreeformLaunchBounds(Landroid/graphics/Rect;)Z
    .locals 1

    if-eqz p0, :cond_0

    iget v0, p0, Landroid/graphics/Rect;->left:I

    if-nez v0, :cond_0

    iget v0, p0, Landroid/graphics/Rect;->top:I

    if-nez v0, :cond_0

    iget v0, p0, Landroid/graphics/Rect;->right:I

    if-nez v0, :cond_0

    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static warningException(Ljava/lang/Exception;)V
    .locals 3

    const-string v0, "MultiDisplayManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "warningException() : caller="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Debug;->getCaller()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public closeSystemDialogs(Ljava/lang/String;I)V
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multidisplay/MultiDisplayManager;->getDefault()Lcom/samsung/android/multidisplay/IMultiDisplayManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/multidisplay/IMultiDisplayManager;->closeSystemDialogs(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multidisplay/MultiDisplayManager;->warningException(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public createOrWakeupDesktopDisplay(III)I
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multidisplay/MultiDisplayManager;->getDefault()Lcom/samsung/android/multidisplay/IMultiDisplayManager;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/multidisplay/IMultiDisplayManager;->createOrWakeupDesktopDisplay(III)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, -0x1

    return v0
.end method

.method public getCurrentFocusDisplayId()I
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multidisplay/MultiDisplayManager;->getDefault()Lcom/samsung/android/multidisplay/IMultiDisplayManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/multidisplay/IMultiDisplayManager;->getCurrentFocusDisplayId()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multidisplay/MultiDisplayManager;->warningException(Ljava/lang/Exception;)V

    const/4 v0, 0x0

    return v0
.end method

.method public getDexTaskInfo(Landroid/os/IBinder;)Lcom/samsung/android/multidisplay/MultiDisplayManager$DexTaskInfo;
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multidisplay/MultiDisplayManager;->getDefault()Lcom/samsung/android/multidisplay/IMultiDisplayManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/multidisplay/IMultiDisplayManager;->getDexTaskInfoFlags(Landroid/os/IBinder;)I

    move-result v0

    new-instance v1, Lcom/samsung/android/multidisplay/MultiDisplayManager$DexTaskInfo;

    invoke-direct {v1, v0}, Lcom/samsung/android/multidisplay/MultiDisplayManager$DexTaskInfo;-><init>(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multidisplay/MultiDisplayManager;->warningException(Ljava/lang/Exception;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getRunningTasks(II)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multidisplay/MultiDisplayManager;->getDefault()Lcom/samsung/android/multidisplay/IMultiDisplayManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/multidisplay/IMultiDisplayManager;->getRunningTasks(II)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getTopRunningTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multidisplay/MultiDisplayManager;->getDefault()Lcom/samsung/android/multidisplay/IMultiDisplayManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/multidisplay/IMultiDisplayManager;->getTopRunningTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public goodToChangeMode(II)Z
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multidisplay/MultiDisplayManager;->getDefault()Lcom/samsung/android/multidisplay/IMultiDisplayManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/multidisplay/IMultiDisplayManager;->goodToChangeMode(II)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multidisplay/MultiDisplayManager;->warningException(Ljava/lang/Exception;)V

    const/4 v0, 0x0

    return v0
.end method

.method public killPackageProcess(Ljava/lang/String;IZ)V
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multidisplay/MultiDisplayManager;->getDefault()Lcom/samsung/android/multidisplay/IMultiDisplayManager;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/multidisplay/IMultiDisplayManager;->killPackageProcess(Ljava/lang/String;IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public registerDisplayCompatModeWatcher(Lcom/samsung/android/multidisplay/IDisplayCompatModeWatcher;)V
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multidisplay/MultiDisplayManager;->getDefault()Lcom/samsung/android/multidisplay/IMultiDisplayManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/multidisplay/IMultiDisplayManager;->registerDisplayCompatModeWatcher(Lcom/samsung/android/multidisplay/IDisplayCompatModeWatcher;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multidisplay/MultiDisplayManager;->warningException(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public registerDisplayFocusCallback(Lcom/samsung/android/multidisplay/IMultiDisplayCallback;)V
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multidisplay/MultiDisplayManager;->getDefault()Lcom/samsung/android/multidisplay/IMultiDisplayManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/multidisplay/IMultiDisplayManager;->registerDisplayFocusCallback(Lcom/samsung/android/multidisplay/IMultiDisplayCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multidisplay/MultiDisplayManager;->warningException(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public requestKeepDisplay(Landroid/content/Context;Z)V
    .locals 2

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getActivityToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/multidisplay/MultiDisplayManager;->getDefault()Lcom/samsung/android/multidisplay/IMultiDisplayManager;

    move-result-object v1

    invoke-interface {v1, v0, p2}, Lcom/samsung/android/multidisplay/IMultiDisplayManager;->requestKeepDisplay(Landroid/os/IBinder;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multidisplay/MultiDisplayManager;->warningException(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public restartTask(I)V
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multidisplay/MultiDisplayManager;->getDefault()Lcom/samsung/android/multidisplay/IMultiDisplayManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/multidisplay/IMultiDisplayManager;->restartTask(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multidisplay/MultiDisplayManager;->warningException(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public restoreLastNonResizableTopTaskIfNeeded()V
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multidisplay/MultiDisplayManager;->getDefault()Lcom/samsung/android/multidisplay/IMultiDisplayManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/multidisplay/IMultiDisplayManager;->restoreLastNonResizableTopTaskIfNeeded()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multidisplay/MultiDisplayManager;->warningException(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public rotateCompatTask(Landroid/os/IBinder;)V
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multidisplay/MultiDisplayManager;->getDefault()Lcom/samsung/android/multidisplay/IMultiDisplayManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/multidisplay/IMultiDisplayManager;->rotateCompatTask(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multidisplay/MultiDisplayManager;->warningException(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public setDeviceDefaultDisplay(I)V
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multidisplay/MultiDisplayManager;->getDefault()Lcom/samsung/android/multidisplay/IMultiDisplayManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/multidisplay/IMultiDisplayManager;->setDeviceDefaultDisplay(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multidisplay/MultiDisplayManager;->warningException(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public shouldGoHomeInSubDisplay()Z
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multidisplay/MultiDisplayManager;->getDefault()Lcom/samsung/android/multidisplay/IMultiDisplayManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/multidisplay/IMultiDisplayManager;->shouldGoHomeInSubDisplay()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multidisplay/MultiDisplayManager;->warningException(Ljava/lang/Exception;)V

    const/4 v0, 0x0

    return v0
.end method

.method public sleepDesktopDisplay()I
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multidisplay/MultiDisplayManager;->getDefault()Lcom/samsung/android/multidisplay/IMultiDisplayManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/multidisplay/IMultiDisplayManager;->sleepDesktopDisplay()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, -0x1

    return v0
.end method

.method public unregisterDisplayCompatModeWatcher(Lcom/samsung/android/multidisplay/IDisplayCompatModeWatcher;)V
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multidisplay/MultiDisplayManager;->getDefault()Lcom/samsung/android/multidisplay/IMultiDisplayManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/multidisplay/IMultiDisplayManager;->unregisterDisplayCompatModeWatcher(Lcom/samsung/android/multidisplay/IDisplayCompatModeWatcher;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multidisplay/MultiDisplayManager;->warningException(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public unregisterDisplayFocusCallback(Lcom/samsung/android/multidisplay/IMultiDisplayCallback;)V
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multidisplay/MultiDisplayManager;->getDefault()Lcom/samsung/android/multidisplay/IMultiDisplayManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/multidisplay/IMultiDisplayManager;->unregisterDisplayFocusCallback(Lcom/samsung/android/multidisplay/IMultiDisplayCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multidisplay/MultiDisplayManager;->warningException(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public updateTaskPositionInTaskBar(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Point;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multidisplay/MultiDisplayManager;->getDefault()Lcom/samsung/android/multidisplay/IMultiDisplayManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/multidisplay/IMultiDisplayManager;->updateTaskPositionInTaskBar(Ljava/util/Map;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multidisplay/MultiDisplayManager;->warningException(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.class public Lcom/samsung/android/view/SemWindowManager;
.super Ljava/lang/Object;
.source "SemWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/view/SemWindowManager$VisibleWindowInfo;
    }
.end annotation


# static fields
.field public static final FORCED_HIDE_NOTCH_DEFAULT:I = -0x1

.field public static final FORCED_HIDE_NOTCH_OFF:I = 0x0

.field public static final FORCED_HIDE_NOTCH_ON:I = 0x1

.field public static final MAX_ASPECT_RATIO_CUTOUT_OFF:I = 0x4

.field public static final MAX_ASPECT_RATIO_FIXED_OFF:I = 0x3

.field public static final MAX_ASPECT_RATIO_FIXED_ON:I = 0x2

.field public static final MAX_ASPECT_RATIO_OFF:I = 0x0

.field public static final MAX_ASPECT_RATIO_ON:I = 0x1

.field public static final NAVIBAR_HIDE_POLICY_FIXED_OFF:I = 0x2

.field public static final NAVIBAR_HIDE_POLICY_OFF:I = 0x0

.field public static final NAVIBAR_HIDE_POLICY_ON:I = 0x1

.field public static final REQUEST_TRANSIENT_NAVIGATIONBAR:I = 0x10

.field public static final REQUEST_TRANSIENT_STATUSBAR:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SemWindowManager"

.field private static sInstance:Lcom/samsung/android/view/SemWindowManager;


# instance fields
.field private mWindowManager:Landroid/view/IWindowManager;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/view/SemWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/view/SemWindowManager;
    .locals 2

    const-class v0, Lcom/samsung/android/view/SemWindowManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/view/SemWindowManager;->sInstance:Lcom/samsung/android/view/SemWindowManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/view/SemWindowManager;

    invoke-direct {v1}, Lcom/samsung/android/view/SemWindowManager;-><init>()V

    sput-object v1, Lcom/samsung/android/view/SemWindowManager;->sInstance:Lcom/samsung/android/view/SemWindowManager;

    :cond_0
    sget-object v1, Lcom/samsung/android/view/SemWindowManager;->sInstance:Lcom/samsung/android/view/SemWindowManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public clearForcedDisplaySizeDensity()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/view/SemWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/IWindowManager;->clearForcedDisplaySizeDensity(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SemWindowManager"

    const-string v2, "Failed to clearForcedDisplaySizeDensity"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public getInitialDensity()I
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/view/SemWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/IWindowManager;->getInitialDisplayDensity(I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "SemWindowManager"

    const-string v2, "Failed to getInitialDisplayDensity"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, -0x1

    return v0
.end method

.method public getInitialDisplaySize(Landroid/graphics/Point;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/view/SemWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Landroid/view/IWindowManager;->getInitialDisplaySize(ILandroid/graphics/Point;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SemWindowManager"

    const-string v2, "Failed to getInitialDisplaySize"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public getNaviBarHidePolicy(Ljava/lang/String;I)I
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/view/SemWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v0, p1, p2}, Landroid/view/IWindowManager;->getNavBarHidePolicy(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "SemWindowManager"

    const-string v2, "Failed to getNaviBarHidePolicy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x1

    return v0
.end method

.method public getUserDensity()I
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/view/SemWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v0}, Landroid/view/IWindowManager;->getUserDisplayDensity()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "SemWindowManager"

    const-string v2, "Failed to getUserDisplayDensity"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, -0x1

    return v0
.end method

.method public getUserDisplaySize(Landroid/graphics/Point;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/view/SemWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v0, p1}, Landroid/view/IWindowManager;->getUserDisplaySize(Landroid/graphics/Point;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SemWindowManager"

    const-string v2, "Failed to getUserDisplaySize"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public getVisibleWindowInfo()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/view/SemWindowManager$VisibleWindowInfo;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/view/SemWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v0}, Landroid/view/IWindowManager;->getVisibleWindowInfo()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "SemWindowManager"

    const-string v2, "Failed to getVisibleWindowInfo"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public isMaxAspectComponentEx(Landroid/content/ComponentName;I)I
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/view/SemWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v0, p1, p2}, Landroid/view/IWindowManager;->isMaxAspectComponent(Landroid/content/ComponentName;I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "SemWindowManager"

    const-string v2, "Failed to isMaxAspectComponentEx"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return v0
.end method

.method public isMaxAspectPackageEx(Ljava/lang/String;I)I
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/view/SemWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v0, p1, p2}, Landroid/view/IWindowManager;->isMaxAspectPackage(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "SemWindowManager"

    const-string v2, "Failed to isMaxAspectPackageEx"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return v0
.end method

.method public isNavigationBarHidable(Landroid/content/Context;)Z
    .locals 3

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/view/SemWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/view/IWindowManager;->isNavBarHidable(Ljava/lang/String;I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "SemWindowManager"

    const-string v2, "Failed to isNavigationBarHidable"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isSystemKeyEventRequested(ILandroid/content/ComponentName;)Z
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/view/SemWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v0, p1, p2}, Landroid/view/IWindowManager;->isSystemKeyEventRequested(ILandroid/content/ComponentName;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "SemWindowManager"

    const-string v2, "Failed to is systemkeyevent"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return v0
.end method

.method public requestMetaKeyEvent(Landroid/content/ComponentName;Z)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/view/SemWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v0, p1, p2}, Landroid/view/IWindowManager;->requestMetaKeyEvent(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SemWindowManager"

    const-string v2, "Failed to request metakeyevent"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/view/SemWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "SemWindowManager"

    const-string v2, "Failed to request systemkeyevent"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return v0
.end method

.method public requestTransientBars(I)V
    .locals 4

    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    and-int/lit8 v3, p1, 0x10

    if-eqz v3, :cond_1

    move v1, v2

    nop

    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/view/SemWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v2, v0, v1}, Landroid/view/IWindowManager;->requestTransientBars(ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "SemWindowManager"

    const-string v2, "Failed to requestTransientBars"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method public screenshot(IIZLandroid/graphics/Rect;IIZ)Landroid/graphics/Bitmap;
    .locals 8

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/view/SemWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-interface/range {v0 .. v7}, Landroid/view/IWindowManager;->takeScreenshotToTargetWindow(IIZLandroid/graphics/Rect;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "SemWindowManager"

    const-string v2, "Failed to semTakeScreenshotToTargetWindow"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public setForcedDisplayRotation(II)V
    .locals 0

    return-void
.end method

.method public setForcedDisplaySizeDensity(III)V
    .locals 7

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/view/SemWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-interface/range {v0 .. v6}, Landroid/view/IWindowManager;->setForcedDisplaySizeDensity(IIIIZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SemWindowManager"

    const-string v2, "Failed to setForcedDisplaySizeDensity"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public setForcedDisplaySizeDensity(IIIZ)V
    .locals 7

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/view/SemWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v1, 0x0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p4

    invoke-interface/range {v0 .. v6}, Landroid/view/IWindowManager;->setForcedDisplaySizeDensity(IIIIZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SemWindowManager"

    const-string v2, "Failed to setForcedDisplaySizeDensity"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public setForcedDisplaySizeDensityHideNotch(IIIZI)V
    .locals 8

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/view/SemWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v1, 0x0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p4

    move v7, p5

    invoke-interface/range {v0 .. v7}, Landroid/view/IWindowManager;->setForcedDisplaySizeDensityHideNotch(IIIIZZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SemWindowManager"

    const-string v2, "Failed to setForcedDisplaySizeDensityHideNotch"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public setMaxAspectPackage(Ljava/lang/String;IZZ)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/view/SemWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/view/IWindowManager;->setMaxAspectPackage(Ljava/lang/String;IZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SemWindowManager"

    const-string v2, "Failed to setMaxAspectPackage"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public setMaxAspectPackageRestartTask(Ljava/lang/String;IZI)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/view/SemWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/view/IWindowManager;->setMaxAspectPackageRestartTask(Ljava/lang/String;IZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SemWindowManager"

    const-string v2, "Failed to setMaxAspectPackageRestartTask"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public setNaviBarHidePolicy(Ljava/lang/String;IZ)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/view/SemWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/IWindowManager;->setNavBarHidePolicy(Ljava/lang/String;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SemWindowManager"

    const-string v2, "Failed to setNaviBarHidePolicy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public setStartingWindowContentView(Landroid/content/ComponentName;I)V
    .locals 4

    if-nez p1, :cond_0

    const-string v0, "SemWindowManager"

    const-string v1, "componentName is null in setStartingWindowContentView"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v0

    const-string v1, "SemWindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setStartingWindowContentView : packageInfo="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v0, :cond_1

    return-void

    :cond_1
    nop

    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/view/SemWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/view/IWindowManager;->setStartingWindowContentView(Ljava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SemWindowManager"

    const-string v2, "Failed to set StartingWindowContentView"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void

    :catch_1
    move-exception v0

    const-string v1, "SemWindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setStartingWindowContentView error ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

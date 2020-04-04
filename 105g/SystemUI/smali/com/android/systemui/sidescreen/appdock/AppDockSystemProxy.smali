.class public Lcom/android/systemui/sidescreen/appdock/AppDockSystemProxy;
.super Ljava/lang/Object;
.source "AppDockSystemProxy.java"


# static fields
.field private static sInstance:Lcom/android/systemui/sidescreen/appdock/AppDockSystemProxy;


# instance fields
.field mAm:Landroid/app/ActivityManager;

.field mIam:Landroid/app/IActivityManager;

.field mIpm:Landroid/content/pm/IPackageManager;

.field mIwm:Landroid/view/IWindowManager;

.field mMwm:Lcom/samsung/android/multiwindow/MultiWindowManager;

.field mPm:Landroid/content/pm/PackageManager;

.field mSideSnapAlgorithm:Lcom/samsung/android/internal/policy/SideSnapAlgorithm;

.field mWm:Landroid/view/WindowManager;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/systemui/sidescreen/appdock/AppDockSystemProxy;->mAm:Landroid/app/ActivityManager;

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/sidescreen/appdock/AppDockSystemProxy;->mIam:Landroid/app/IActivityManager;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/sidescreen/appdock/AppDockSystemProxy;->mPm:Landroid/content/pm/PackageManager;

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/sidescreen/appdock/AppDockSystemProxy;->mIpm:Landroid/content/pm/IPackageManager;

    const-string/jumbo v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/systemui/sidescreen/appdock/AppDockSystemProxy;->mWm:Landroid/view/WindowManager;

    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/sidescreen/appdock/AppDockSystemProxy;->mIwm:Landroid/view/IWindowManager;

    new-instance v0, Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-direct {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/sidescreen/appdock/AppDockSystemProxy;->mMwm:Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/SystemUIApplication;

    const-class v1, Lcom/android/systemui/stackdivider/Divider;

    invoke-virtual {v0, v1}, Lcom/android/systemui/SystemUIApplication;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/stackdivider/Divider;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/Divider;->getSideSnapAlgorithm()Lcom/samsung/android/internal/policy/SideSnapAlgorithm;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/sidescreen/appdock/AppDockSystemProxy;->mSideSnapAlgorithm:Lcom/samsung/android/internal/policy/SideSnapAlgorithm;

    return-void
.end method

.method public static get(Landroid/content/Context;)Lcom/android/systemui/sidescreen/appdock/AppDockSystemProxy;
    .locals 1

    sget-object v0, Lcom/android/systemui/sidescreen/appdock/AppDockSystemProxy;->sInstance:Lcom/android/systemui/sidescreen/appdock/AppDockSystemProxy;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/systemui/sidescreen/appdock/AppDockSystemProxy;

    invoke-direct {v0, p0}, Lcom/android/systemui/sidescreen/appdock/AppDockSystemProxy;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/systemui/sidescreen/appdock/AppDockSystemProxy;->sInstance:Lcom/android/systemui/sidescreen/appdock/AppDockSystemProxy;

    :cond_0
    sget-object v0, Lcom/android/systemui/sidescreen/appdock/AppDockSystemProxy;->sInstance:Lcom/android/systemui/sidescreen/appdock/AppDockSystemProxy;

    return-object v0
.end method


# virtual methods
.method public getLastSideTarget()Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/sidescreen/appdock/AppDockSystemProxy;->mSideSnapAlgorithm:Lcom/samsung/android/internal/policy/SideSnapAlgorithm;

    invoke-virtual {v0}, Lcom/samsung/android/internal/policy/SideSnapAlgorithm;->getLastSideTarget()Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;

    move-result-object v0

    return-object v0
.end method

.method public getSideSnapAlgorithm()Lcom/samsung/android/internal/policy/SideSnapAlgorithm;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/sidescreen/appdock/AppDockSystemProxy;->mSideSnapAlgorithm:Lcom/samsung/android/internal/policy/SideSnapAlgorithm;

    return-object v0
.end method

.method public getStableInsets(Landroid/graphics/Rect;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/sidescreen/appdock/AppDockSystemProxy;->mIwm:Landroid/view/IWindowManager;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Landroid/view/IWindowManager;->getStableInsets(ILandroid/graphics/Rect;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public getStackInfo(II)Landroid/app/ActivityManager$StackInfo;
    .locals 1
    .param p1    # I
        .annotation build Landroid/app/WindowConfiguration$WindowingMode;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/app/WindowConfiguration$ActivityType;
        .end annotation
    .end param

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/sidescreen/appdock/AppDockSystemProxy;->mIam:Landroid/app/IActivityManager;

    invoke-interface {v0, p1, p2}, Landroid/app/IActivityManager;->getStackInfo(II)Landroid/app/ActivityManager$StackInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getStackTopTaskId(II)I
    .locals 3
    .param p1    # I
        .annotation build Landroid/app/WindowConfiguration$WindowingMode;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/app/WindowConfiguration$ActivityType;
        .end annotation
    .end param

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/sidescreen/appdock/AppDockSystemProxy;->mIam:Landroid/app/IActivityManager;

    invoke-interface {v0, p1, p2}, Landroid/app/IActivityManager;->getStackInfo(II)Landroid/app/ActivityManager$StackInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/app/ActivityManager$StackInfo;->taskIds:[I

    array-length v1, v1

    if-lez v1, :cond_0

    iget-object v1, v0, Landroid/app/ActivityManager$StackInfo;->taskIds:[I

    const/4 v2, 0x0

    aget v1, v1, v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    const/4 v0, -0x1

    return v0
.end method

.method public getVisibleTasks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/sidescreen/appdock/AppDockSystemProxy;->mMwm:Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getVisibleTasks()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public isSidescreenPrimaryVisible()Z
    .locals 2

    nop

    const/4 v0, 0x0

    const/16 v1, 0x64

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/sidescreen/appdock/AppDockSystemProxy;->getStackInfo(II)Landroid/app/ActivityManager$StackInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-boolean v0, v1, Landroid/app/ActivityManager$StackInfo;->visible:Z

    return v0

    :cond_0
    return v0
.end method

.method public isStackVisible(II)Z
    .locals 2
    .param p1    # I
        .annotation build Landroid/app/WindowConfiguration$WindowingMode;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/app/WindowConfiguration$ActivityType;
        .end annotation
    .end param

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/sidescreen/appdock/AppDockSystemProxy;->getStackInfo(II)Landroid/app/ActivityManager$StackInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v1, v0, Landroid/app/ActivityManager$StackInfo;->visible:Z

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public startActivityFromRecents(II)Z
    .locals 6

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    const/4 v1, 0x1

    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/sidescreen/appdock/AppDockSystemProxy;->mIam:Landroid/app/IActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Landroid/app/IActivityManager;->startActivityFromRecents(ILandroid/os/Bundle;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v2

    const-string v3, "e=%s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v1, v5

    invoke-static {v3, v1}, Lcom/android/systemui/sidescreen/LogHelper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return v5
.end method

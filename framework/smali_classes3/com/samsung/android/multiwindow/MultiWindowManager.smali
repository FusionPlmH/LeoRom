.class public Lcom/samsung/android/multiwindow/MultiWindowManager;
.super Ljava/lang/Object;
.source "MultiWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/multiwindow/MultiWindowManager$MetaKeyBoundsChecker;,
        Lcom/samsung/android/multiwindow/MultiWindowManager$Utils;
    }
.end annotation


# static fields
.field public static final ACTION_ADD_PAIR_APP_SHORTCUT:Ljava/lang/String; = "com.samsung.android.multiwindow.ADD_PAIR_APP_SHORTCUT"

.field public static final ACTION_COOLDONW_FREEFORM:Ljava/lang/String; = "android.intent.action.COOLDOWN_FREEFORM"

.field public static final ACTION_MINIMIZE_ALL:Ljava/lang/String; = "com.samsung.android.multiwindow.MINIMIZE_ALL"

.field public static final ACTION_MINIMIZE_ALL_BY_SYSTEM:Ljava/lang/String; = "com.samsung.android.multiwindow.MINIMIZE_ALL_BY_SYSTEM"

.field public static final ANIM_RELAUNCH_FROM_FREEFORM:I = 0x2

.field public static final ANIM_RELAUNCH_NONE:I = 0x0

.field public static final ANIM_RELAUNCH_TO_FREEFORM:I = 0x1

.field public static final CREATE_PAIR_APP_SHORTCUT_RESULT_FAILED_NOT_SUPPORT:I = 0x3

.field public static final CREATE_PAIR_APP_SHORTCUT_RESULT_FAILED_ONE_APP:I = 0x1

.field public static final CREATE_PAIR_APP_SHORTCUT_RESULT_FAILED_OTHER_WORKSPACE_APP:I = 0x5

.field public static final CREATE_PAIR_APP_SHORTCUT_RESULT_FAILED_SECURE_FOLDER_APP:I = 0x4

.field public static final CREATE_PAIR_APP_SHORTCUT_RESULT_FAILED_TWO_APP:I = 0x2

.field public static final CREATE_PAIR_APP_SHORTCUT_RESULT_SUCCESS:I = 0x0

.field public static final DEX_COMPAT_LOG_PREFIX:Ljava/lang/String; = "[DexCompat] "

.field public static final EXTRA_PAIR_APP_COMPONENT_NAME_FIRST:Ljava/lang/String; = "component_first"

.field public static final EXTRA_PAIR_APP_COMPONENT_NAME_SECOND:Ljava/lang/String; = "component_second"

.field public static final EXTRA_PAIR_APP_USERID_FIRST:Ljava/lang/String; = "userId_first"

.field public static final EXTRA_PAIR_APP_USERID_SECOND:Ljava/lang/String; = "userId_second"

.field public static final FLAG_MULTIWINDOW_TASK_CURRENT_USER:I = 0x1

.field public static final FLAG_MULTIWINDOW_TASK_MINIMIZE:I = 0x2

.field public static final FORCED_RESIZABLE_ACTIVITY_CLASS:Ljava/lang/String; = "com.android.systemui.stackdivider.ForcedResizableInfoActivity"

.field public static final FREEFORM_DEFAULT_LONG_SIZE_RATIO:F = 0.5f

.field public static final FREEFORM_DEFAULT_LONG_SIZE_RATIO_FOR_TABLET:F = 0.5f

.field public static final FREEFORM_DEFAULT_SHORT_SIZE_RATIO:F = 0.67f

.field public static final FREEFORM_DEFAULT_SHORT_SIZE_RATIO_FOR_TABLET:F = 0.5f

.field public static final FREEFORM_DIM_LAYER_TYPE_NONE:I = 0x0

.field public static final FREEFORM_DIM_LAYER_TYPE_ROUND:I = 0x1

.field public static final FREEFORM_DIM_LAYER_TYPE_SQUARE:I = 0x2

.field public static final FREEFORM_TRANSIT_MINIMIZE:I = 0x1

.field public static final FREEFORM_TRANSIT_NONE:I = 0x0

.field public static final FREEFORM_TRANSIT_UNMINIMIZE:I = 0x2

.field public static final METADATA_FREEFORM_DENSITY_CHANGE:Ljava/lang/String; = "com.samsung.android.sdk.multiwindow.freeform.densitychange"

.field public static final METADATA_MULTIWINDOW_FLOATING_FORCE_HIDE:Ljava/lang/String; = "com.samsung.android.sdk.multiwindow.force_hide_floating_multiwindow"

.field public static final METADATA_MULTIWINDOW_FREEFORM_BORDER:Ljava/lang/String; = "com.samsung.android.sdk.multiwindow.freeform.border"

.field public static final METADATA_MULTIWINDOW_LAUNCH_IN_FOCUSEDSTACK:Ljava/lang/String; = "com.samsung.android.sdk.multiwindow.freeform.launch_in_focusedstack"

.field public static final METADATA_MULTIWINDOW_MAX_HEIGHT:Ljava/lang/String; = "com.samsung.android.sdk.multiwindow.maxHeight"

.field public static final METADATA_MULTIWINDOW_MAX_WIDTH:Ljava/lang/String; = "com.samsung.android.sdk.multiwindow.maxWidth"

.field public static final METADATA_SUPPORT_MULTIWINDOW:Ljava/lang/String; = "com.samsung.android.sdk.multiwindow.enable"

.field public static final METADATA_SUPPORT_MULTIWINDOW_BEFORE_HERO:Ljava/lang/String; = "com.sec.android.support.multiwindow"

.field public static final MINIMIZE_CONTAINER_CLASS_NAME:Ljava/lang/String; = "com.samsung.android.systemui.minimizecontainer.MinimizeContainerService"

.field public static final MINIMIZE_CONTAINER_PACKAGE_NAME:Ljava/lang/String; = "com.android.systemui"

.field public static final MINIMIZE_MAX_COUNT:I = 0x14

.field public static final MULTIWINDOW_ANIMATION_RESIZE:I = 0xc9

.field public static final MULTIWINDOW_ANIMATION_SWAP:I = 0xca

.field public static final MULTIWINDOW_DOCKED_SIZE_DEFAULT:I = 0x0

.field public static final MULTIWINDOW_DOCKED_SIZE_MAXIMAL:I = 0x2

.field public static final MULTIWINDOW_DOCKED_SIZE_MINIMAL:I = 0x1

.field public static final MULTIWINDOW_MODE_DOCKED:I = 0x2

.field public static final MULTIWINDOW_MODE_FREEFORM:I = 0x1

.field public static final MULTIWINDOW_MODE_NONE:I = 0x0

.field public static final MULTIWINDOW_MODE_PINNED:I = 0x4

.field public static final NOTIFY_REASON_FORCE_CLEAR_MINIMIZE:I = 0x3

.field public static final NOTIFY_REASON_MINIMIZE:I = 0x1

.field public static final NOTIFY_REASON_UNMINIMIZE:I = 0x2

.field public static final NUM_OF_MULTI_INSTANCE_LIMIT_DEFAULT:I = 0x2

.field public static final NUM_OF_MULTI_INSTANCE_LIMIT_DEFAULT_ON_DESKTOP_MODE:I = 0x5

.field public static final PERMISSION_ADD_PAIR_APP_SHORTCUT:Ljava/lang/String; = "com.samsung.android.permission.ADD_PAIR_APP_SHORTCUT"

.field public static final RESIZE_OVERLAP_AREA_IN_DP:I = 0x8

.field public static final SAMSUNG_LAUNCHER_PACKAGE_NAME:Ljava/lang/String; = "com.sec.android.app.launcher"

.field public static final SIDESCREEN_MODE_A:I = 0x1

.field public static final SIDESCREEN_MODE_B:I = 0x2

.field public static final SIDESCREEN_MODE_C:I = 0x3

.field public static final SNAP_TARGET_A:I = 0x1

.field public static final SNAP_TARGET_B:I = 0x2

.field public static final SNAP_TARGET_FULL:I = 0x3

.field public static final SNAP_TARGET_UNSET:I = 0x0

.field public static final SNAP_WINDOW_GUIDE_VIEW_RATIO_16_9:I = 0x2

.field public static final SNAP_WINDOW_GUIDE_VIEW_RATIO_21_9:I = 0x3

.field public static final SNAP_WINDOW_GUIDE_VIEW_SIZE_DEFAULT:I = 0x0

.field public static final SNAP_WINDOW_GUIDE_VIEW_SIZE_MINIMAL:I = 0x1

.field public static final SNAP_WINDOW_INVISBLE_CALLER:Ljava/lang/String; = "finish"

.field public static final SNAP_WINDOW_VISBLE_CALLER_APP_REQUEST:Ljava/lang/String; = "appRequest"

.field public static final SNAP_WINDOW_VISBLE_CALLER_FULLAPP:Ljava/lang/String; = "fromFullApp"

.field public static final SNAP_WINDOW_VISBLE_CALLER_RECENT:Ljava/lang/String; = "fromRecent"

.field public static final SNAP_WINDOW_VISBLE_CALLER_SPLIT:Ljava/lang/String; = "fromSplit"

.field public static final SNAP_WINDOW_VISBLE_CALLER_UNSET:Ljava/lang/String; = ""

.field public static final TAG:Ljava/lang/String; = "MultiWindowManager"

.field public static final UNSNAP_REASON_DIVIDER_DISABLE_BUTTON:I = 0x4

.field public static final UNSNAP_REASON_EXPAND_A:I = 0x2

.field public static final UNSNAP_REASON_EXPAND_B:I = 0x3

.field public static final UNSNAP_REASON_SPLIT_RESIZE:I = 0x1

.field public static final UNSNAP_REASON_UNSET:I

.field private static final gDefault:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton<",
            "Lcom/samsung/android/multiwindow/IMultiWindowManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/multiwindow/MultiWindowManager$1;

    invoke-direct {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager$1;-><init>()V

    sput-object v0, Lcom/samsung/android/multiwindow/MultiWindowManager;->gDefault:Landroid/util/Singleton;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getDefault()Lcom/samsung/android/multiwindow/IMultiWindowManager;
    .locals 1

    sget-object v0, Lcom/samsung/android/multiwindow/MultiWindowManager;->gDefault:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/multiwindow/IMultiWindowManager;

    return-object v0
.end method

.method public static isForceResizableFromMetadata(Landroid/content/pm/ActivityInfo;)Z
    .locals 4

    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/4 v2, 0x0

    const/16 v3, 0x18

    if-ge v1, v3, :cond_2

    iget v1, p0, Landroid/content/pm/ActivityInfo;->resizeMode:I

    if-eqz v1, :cond_2

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_1

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "com.samsung.android.sdk.multiwindow.enable"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "com.sec.android.support.multiwindow"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v2, 0x1

    nop

    :cond_1
    return v2

    :cond_2
    return v2
.end method

.method private static warningException(Ljava/lang/Exception;)V
    .locals 3

    const-string v0, "MultiWindowManager"

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
.method public createAppPairShortcut()V
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiWindowManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->createAppPairShortcut()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public dismissSideScreen(I)V
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiWindowManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->dismissSideScreen(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public dockSideScreen()V
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiWindowManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->dockSideScreen()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public exitMultiWindow(Landroid/os/IBinder;)Z
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiWindowManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->exitMultiWindow(Landroid/os/IBinder;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    const/4 v0, 0x0

    return v0
.end method

.method public getFreeformAlpha(Landroid/os/IBinder;)F
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiWindowManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->getFreeformAlpha(Landroid/os/IBinder;)F

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public getFreeformTasks(I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiWindowManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->getFreeformTasks(I)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    const/4 v1, 0x0

    return-object v1
.end method

.method public getMultiResumePrefVal()Z
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiWindowManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->getMultiResumePrefVal()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    const/4 v0, 0x0

    return v0
.end method

.method public getMultiWindowModeStates(I)I
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiWindowManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->getMultiWindowModeStates(I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    const/4 v0, 0x0

    return v0
.end method

.method public getSnapTargetAspectRatioRect()Landroid/graphics/Rect;
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiWindowManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->getSnapTargetAspectRatioRect()Landroid/graphics/Rect;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getStayFocusActivityPrefVal()Z
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiWindowManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->getStayFocusActivityPrefVal()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    const/4 v0, 0x0

    return v0
.end method

.method public getSupportedMultiWindowModes(Landroid/content/pm/ResolveInfo;)I
    .locals 3

    if-eqz p1, :cond_5

    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    const/4 v1, 0x0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->isForceResizableFromMetadata(Landroid/content/pm/ActivityInfo;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x3

    goto :goto_0

    :cond_1
    iget v2, v0, Landroid/content/pm/ActivityInfo;->resizeMode:I

    invoke-static {v2}, Landroid/content/pm/ActivityInfo;->isPreserveOrientationMode(I)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    iget v2, v0, Landroid/content/pm/ActivityInfo;->resizeMode:I

    invoke-static {v2}, Landroid/content/pm/ActivityInfo;->isResizeableMode(I)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v1, 0x3

    :cond_3
    :goto_0
    invoke-virtual {v0}, Landroid/content/pm/ActivityInfo;->supportsPictureInPicture()Z

    move-result v2

    if-eqz v2, :cond_4

    or-int/lit8 v1, v1, 0x4

    :cond_4
    return v1

    :cond_5
    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method public getTargetStackRect(I)Landroid/graphics/Rect;
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiWindowManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->getTargetStackRect(I)Landroid/graphics/Rect;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTaskIdFromPackageName(Ljava/lang/String;)I
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiWindowManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->getTaskIdFromPackageName(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    const/4 v0, 0x0

    return v0
.end method

.method public getTopRecentTaskInfo(I)Landroid/app/ActivityManager$RecentTaskInfo;
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiWindowManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->getTopRecentTaskInfo(I)Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    const/4 v1, 0x0

    return-object v1
.end method

.method public getTopTaskSnapshot(I)Landroid/app/ActivityManager$TaskSnapshot;
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiWindowManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->getTopTaskSnapshot(I)Landroid/app/ActivityManager$TaskSnapshot;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    const/4 v1, 0x0

    return-object v1
.end method

.method public getVisibleTasks()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiWindowManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->getVisibleTasks()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    const/4 v1, 0x0

    return-object v1
.end method

.method public hideSideScreen()V
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiWindowManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->hideSideScreen()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public isCornerGestureEnabled()Z
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiWindowManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->isCornerGestureEnabled()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    const/4 v0, 0x0

    return v0
.end method

.method public isFullscreenResizable()Z
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiWindowManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->isFullscreenResizable()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    const/4 v0, 0x0

    return v0
.end method

.method public isFullscreenSupportsSplitScreenWindowingMode()Z
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiWindowManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->isFullscreenSupportsSplitScreenWindowingMode()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    const/4 v0, 0x0

    return v0
.end method

.method public isMultiResumeEnabled()Z
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiWindowManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->isMultiResumeEnabled()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    const/4 v0, 0x0

    return v0
.end method

.method public isResizable(Landroid/content/pm/ResolveInfo;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v2, v1, Landroid/content/pm/ActivityInfo;->resizeMode:I

    invoke-static {v2}, Landroid/content/pm/ActivityInfo;->isResizeableMode(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, v1, Landroid/content/pm/ActivityInfo;->resizeMode:I

    invoke-static {v2}, Landroid/content/pm/ActivityInfo;->isPreserveOrientationMode(I)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    invoke-static {v1}, Lcom/samsung/android/multiwindow/MultiWindowManager;->isForceResizableFromMetadata(Landroid/content/pm/ActivityInfo;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    const/4 v0, 0x1

    nop

    :cond_3
    return v0

    :cond_4
    :goto_0
    return v0
.end method

.method public isSnapTargetHideStatusbar()Z
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiWindowManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->isSnapTargetHideStatusbar()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    const/4 v0, 0x0

    return v0
.end method

.method public isSnapWindowEnabled()Z
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiWindowManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->isSnapWindowEnabled()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    const/4 v0, 0x0

    return v0
.end method

.method public isSnapWindowRunning()Z
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiWindowManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->isSnapWindowRunning()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    const/4 v0, 0x0

    return v0
.end method

.method public isStayFocusActivityEnabled()Z
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiWindowManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->isStayFocusActivityEnabled()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    const/4 v0, 0x0

    return v0
.end method

.method public maximizeSideScreen()V
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiWindowManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->maximizeSideScreen()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public minimizeAllFreeformTasks(IZI)Z
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiWindowManager;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->minimizeAllFreeformTasks(IZI)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    const/4 v0, 0x0

    return v0
.end method

.method public minimizeFreeformTask(I)V
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiWindowManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->minimizeFreeformTask(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public moveActivityTaskToBack(Landroid/os/IBinder;ZZ)Z
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiWindowManager;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->moveActivityTaskToBack(Landroid/os/IBinder;ZZ)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    const/4 v0, 0x0

    return v0
.end method

.method public putSideScreenMenuTouchableRegion(Landroid/graphics/Rect;I)V
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiWindowManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->putSideScreenMenuTouchableRegion(Landroid/graphics/Rect;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public registerDividerCloseEventListener(Lcom/samsung/android/multiwindow/IDividerCloseEventListener;)V
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiWindowManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->registerDividerCloseEventListener(Lcom/samsung/android/multiwindow/IDividerCloseEventListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public registerMultiWindowEventListener(Lcom/samsung/android/multiwindow/IMultiWindowEventListener;)V
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiWindowManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->registerMultiWindowEventListener(Lcom/samsung/android/multiwindow/IMultiWindowEventListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public registerMultiWindowServiceCallback(Lcom/samsung/android/multiwindow/IMultiWindowCallback;)V
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiWindowManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->registerMultiWindowServiceCallback(Lcom/samsung/android/multiwindow/IMultiWindowCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public registerSideScreenEventListener(Lcom/samsung/android/multiwindow/ISideScreenEventListener;)V
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiWindowManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->registerSideScreenEventListener(Lcom/samsung/android/multiwindow/ISideScreenEventListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public removeFocusedTask()Z
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiWindowManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->removeFocusedTask()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    const/4 v0, 0x0

    return v0
.end method

.method public removeFreeformTasks(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiWindowManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->removeFreeformTasks(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    const/4 v0, 0x0

    return v0
.end method

.method public removeSearchedTask(Ljava/lang/String;)Z
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiWindowManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->removeSearchedTask(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    const/4 v0, 0x0

    return v0
.end method

.method public reportMinimizeContainerBounds(Landroid/graphics/Rect;)V
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiWindowManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->reportMinimizeContainerBounds(Landroid/graphics/Rect;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public resizeSideScreen(Landroid/graphics/Rect;)V
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiWindowManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->resizeSideScreen(Landroid/graphics/Rect;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public resizeSideScreenStackWithScale(IZ)Z
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiWindowManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->resizeSideScreenStackWithScale(IZ)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    const/4 v1, 0x0

    return v1
.end method

.method public resizeSideScreenWithOtherSide(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiWindowManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->resizeSideScreenWithOtherSide(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public setCornerGestureEnabled(Z)V
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiWindowManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->setCornerGestureEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public setFreeformAlpha(Landroid/os/IBinder;F)V
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiWindowManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->setFreeformAlpha(Landroid/os/IBinder;F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public setMaxVisibleFreeformCount(I)V
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiWindowManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->setMaxVisibleFreeformCount(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public setMaxVisibleFreeformCountForDex(II)V
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiWindowManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->setMaxVisibleFreeformCountForDex(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public setMultiResumeEnabledForMultiStar(Z)V
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiWindowManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->setMultiResumeEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public setMultiWindowEnabled(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->setMultiWindowEnabledForUser(Ljava/lang/String;Ljava/lang/String;ZI)V

    return-void
.end method

.method public setMultiWindowEnabledForUser(Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiWindowManager;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->setMultiWindowEnabledForUser(Ljava/lang/String;Ljava/lang/String;ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public setSideScreenMenuMode(II)V
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiWindowManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->setSideScreenMenuMode(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public setSideScreenMode(I)V
    .locals 1
    .annotation build Lcom/samsung/android/internal/policy/SideScreenModeUtils$SideScreenMode;
    .end annotation

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiWindowManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->setSideScreenMode(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public setSnapWindow(ZLandroid/graphics/Rect;ILjava/lang/String;Ljava/lang/String;)V
    .locals 6

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiWindowManager;

    move-result-object v0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->setSnapWindow(ZLandroid/graphics/Rect;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public setSnapWindowEnabled(Z)V
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiWindowManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->setSnapWindowEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public setStayFocusActivityEnabledForMultiStar(Z)V
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiWindowManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->setStayFocusActivityEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public showSideScreen()V
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiWindowManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->showSideScreen()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public showSideScreenRecentsActivity(IZ)V
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiWindowManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->showSideScreenRecentsActivity(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public showSideScreenRecentsActivityInPlace(I)V
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiWindowManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->showSideScreenRecentsActivityInPlace(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public showSideScreenTasks()V
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiWindowManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->showSideScreenTasks()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public showSnapWindowGuideView(I)V
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiWindowManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->showSnapWindowGuideView(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public startMovingSideScreen(II)V
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiWindowManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->startMovingSideScreen(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public startMovingTopTask(IIII)V
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiWindowManager;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->startMovingTopTask(IIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public startPairActivities(Landroid/content/Context;Landroid/content/Intent;Landroid/content/Intent;ILandroid/os/UserHandle;Landroid/os/UserHandle;)V
    .locals 3

    if-eqz p1, :cond_5

    if-eqz p2, :cond_5

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Landroid/app/ActivityManager;->supportsSplitScreenMultiWindow(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x3

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setPairWindowingMode(I)V

    if-eqz p5, :cond_2

    invoke-virtual {p5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setPairActivityUserId(I)V

    :cond_2
    const v0, 0x10204000

    invoke-virtual {p2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 v1, 0x4

    invoke-virtual {p3, v1}, Landroid/content/Intent;->setPairWindowingMode(I)V

    if-eqz p6, :cond_3

    invoke-virtual {p6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/content/Intent;->setPairActivityUserId(I)V

    :cond_3
    invoke-virtual {p3, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v0

    if-eqz p4, :cond_4

    invoke-virtual {v0, p4}, Landroid/app/ActivityOptions;->setDockedStackSizeType(I)V

    :cond_4
    const/4 v1, 0x2

    new-array v1, v1, [Landroid/content/Intent;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->startActivities([Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void

    :cond_5
    :goto_0
    const-string v0, "MultiWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startPairActivities() param has null : context="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " splitScreenPrimary="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " splitScreenSecondary="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public startResizingFreeformTask(Landroid/os/IBinder;IIZ)V
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiWindowManager;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->startResizingFreeformTask(Landroid/os/IBinder;IIZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public swapTaskWindowingModeFromSubWindowHandler(II)V
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiWindowManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->swapTaskWindowingModeFromSubWindowHandler(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public swapTasksInSplitScreenMode()V
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiWindowManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->swapTasksInSplitScreenMode()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public toggleSideScreen()V
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiWindowManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->toggleSideScreen()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public unregisterDividerCloseEventListener(Lcom/samsung/android/multiwindow/IDividerCloseEventListener;)V
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiWindowManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->unregisterDividerCloseEventListener(Lcom/samsung/android/multiwindow/IDividerCloseEventListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public unregisterMultiWindowEventListener(Lcom/samsung/android/multiwindow/IMultiWindowEventListener;)V
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiWindowManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->unregisterMultiWindowEventListener(Lcom/samsung/android/multiwindow/IMultiWindowEventListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public unregisterMultiWindowServiceCallback(Lcom/samsung/android/multiwindow/IMultiWindowCallback;)V
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiWindowManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->unregisterMultiWindowServiceCallback(Lcom/samsung/android/multiwindow/IMultiWindowCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public unregisterSideScreenEventListener(Lcom/samsung/android/multiwindow/ISideScreenEventListener;)V
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiWindowManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->unregisterSideScreenEventListener(Lcom/samsung/android/multiwindow/ISideScreenEventListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.class public Lcom/samsung/android/multiwindow/MultiWindowLogger;
.super Ljava/lang/Object;
.source "MultiWindowLogger.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final DMA_ACTION:Ljava/lang/String; = "com.sec.android.diagmonagent.intent.USE_APP_FEATURE_SURVEY"

.field private static final DMA_DEX_TRACKING_ID:Ljava/lang/String; = "403-399-565756"

.field private static final DMA_MW_TRACKING_ID:Ljava/lang/String; = "408-399-975257"

.field private static final DMA_PACKAGE:Ljava/lang/String; = "com.sec.android.diagmonagent"

.field private static final DMA_SUPPORT:Z

.field private static final DMA_SUPPORT_VERSION:I = 0x202fbf00

.field private static final DMA_TRACKING_ID:Ljava/lang/String; = "tracking_id"

.field private static final EXTRA:Ljava/lang/String; = "extra"

.field public static final EXTRA_DEX_MAXIMIZED_BY_ARROW_KEY:Ljava/lang/String; = "MaximizedByArrowKey"

.field public static final EXTRA_DEX_MAXIMIZED_BY_DOUBLETAP:Ljava/lang/String; = "MaximizedByDoubleTap"

.field public static final EXTRA_DEX_MAXIMIZED_BY_MXBUTTON:Ljava/lang/String; = "MaximizedByButton"

.field public static final EXTRA_DOCKED_BY_FREEFORM_DRAGGING:Ljava/lang/String; = "FreeformDragging"

.field public static final EXTRA_DOCKED_BY_RECENTS_DRAGGING:Ljava/lang/String; = "RecentsDragging"

.field public static final EXTRA_DOCKED_BY_RECENTS_LONG:Ljava/lang/String; = "RecentsLong"

.field public static final EXTRA_DOCKED_BY_RECENTS_MWBUTTON:Ljava/lang/String; = "RecentsMWButton"

.field public static final EXTRA_DOCKED_OFF_BY_DIVIDER_CLOSE_BUTTON:Ljava/lang/String; = "DividerCloseButton"

.field public static final EXTRA_DOCKED_OFF_BY_DIVIDER_DRAGGING:Ljava/lang/String; = "DividerDragging"

.field public static final EXTRA_DOCKED_OFF_BY_MINIMIZED_CLOSE_BUTTON:Ljava/lang/String; = "MinimizedCloseButton"

.field public static final EXTRA_DOCKED_OFF_BY_MINIMIZED_NOTIFICAION:Ljava/lang/String; = "MinimizedNotification"

.field public static final EXTRA_DOCKED_OFF_BY_MW_NOT_SUPPORTED_APP:Ljava/lang/String; = "MWNotSupportedApp"

.field public static final EXTRA_DOCKED_OFF_BY_RECENTS_LONG:Ljava/lang/String; = "RecentsLong"

.field public static final EXTRA_FREEFORM_ACTIONS_CHANGE_TO_SPLIT:Ljava/lang/String; = "ChangeToSplit"

.field public static final EXTRA_FREEFORM_ACTIONS_CLOSE:Ljava/lang/String; = "Close"

.field public static final EXTRA_FREEFORM_ACTIONS_MAXIMIZE:Ljava/lang/String; = "Maximize"

.field public static final EXTRA_FREEFORM_ACTIONS_MINIMIZE:Ljava/lang/String; = "Minimize"

.field public static final EXTRA_FREEFORM_ACTIONS_TRASH:Ljava/lang/String; = "Trash"

.field public static final EXTRA_FREEFORM_BY_DIVIDER:Ljava/lang/String; = "DividerButton"

.field public static final EXTRA_FREEFORM_BY_GAME_MODE:Ljava/lang/String; = "GameMode"

.field public static final EXTRA_FREEFORM_BY_GESTURE:Ljava/lang/String; = "Gesture"

.field public static final EXTRA_FREEFORM_BY_LAUNCH_POLICY:Ljava/lang/String; = "LaunchPolicy"

.field public static final EXTRA_FREEFORM_BY_RECENTS_DRAGGING:Ljava/lang/String; = "RecentsDragging"

.field public static final EXTRA_FREEFORM_BY_SMART_POP_UP_VIEW:Ljava/lang/String; = "SmartPopUpView"

.field public static final EXTRA_SNAP_BY_FULLAPP:Ljava/lang/String; = "fromFullApp"

.field public static final EXTRA_SNAP_BY_RECENT:Ljava/lang/String; = "fromRecent"

.field public static final EXTRA_SNAP_BY_SPLIT:Ljava/lang/String; = "fromSplit"

.field public static final EXTRA_SNAP_OFF_DIVIDER_DRAGGING:Ljava/lang/String; = "DividerDragging"

.field public static final EXTRA_SNAP_OFF_DIVIDER_FINISH_BUTTON:Ljava/lang/String; = "DividerFinishButton"

.field public static final EXTRA_SNAP_OFF_ORIENTATION_CHANGED:Ljava/lang/String; = "OrientationChanged"

.field public static final EXTRA_SPLIT_ACTIONS_ADDPAIR_SHORTCUT:Ljava/lang/String; = "AddPair"

.field public static final EXTRA_SPLIT_ACTIONS_CLOSE:Ljava/lang/String; = "Close"

.field public static final EXTRA_SPLIT_ACTIONS_FREEFORM:Ljava/lang/String; = "Freeform"

.field public static final EXTRA_SPLIT_ACTIONS_SNAP_GUIDE:Ljava/lang/String; = "Snap"

.field public static final EXTRA_SPLIT_ACTIONS_SWITCH:Ljava/lang/String; = "Switch"

.field public static final EXTRA_SPLIT_BY_EDGE_PAIR:Ljava/lang/String; = "EdgePair"

.field public static final EXTRA_SPLIT_BY_FREEFORM_DRAGGING:Ljava/lang/String; = "FreeformDragging"

.field public static final EXTRA_SPLIT_BY_HOME:Ljava/lang/String; = "Home"

.field public static final EXTRA_SPLIT_BY_HOMESCREEN_PAIR:Ljava/lang/String; = "HomeScreenPair"

.field public static final EXTRA_SPLIT_BY_RECENTS:Ljava/lang/String; = "Recents"

.field public static final EXTRA_SPLIT_BY_RECENTS_APPLIST:Ljava/lang/String; = "RecentsAppList"

.field public static final EXTRA_SPLIT_BY_RECENTS_PAIR:Ljava/lang/String; = "RecentsPair"

.field private static final FEATURE:Ljava/lang/String; = "feature"

.field public static final FEATURE_ADD_PAIRSHORTCUT:Ljava/lang/String; = "APSC"

.field public static final FEATURE_DEX_FREEFORM_PACKAGE_LIST:Ljava/lang/String; = "DFPA"

.field public static final FEATURE_DEX_FREEFORM_TASK_COUNT:Ljava/lang/String; = "DFCO"

.field public static final FEATURE_DEX_MAXIMIZED_BY:Ljava/lang/String; = "DMBY"

.field public static final FEATURE_DEX_MAXIMIZED_PACKAGE:Ljava/lang/String; = "DMPA"

.field public static final FEATURE_DOCKED_BY:Ljava/lang/String; = "DOBY"

.field public static final FEATURE_DOCKED_OFF:Ljava/lang/String; = "DOOF"

.field public static final FEATURE_DOCKED_PACKAGE:Ljava/lang/String; = "DOPK"

.field public static final FEATURE_FREEFORM_ACTIONS:Ljava/lang/String; = "FFAC"

.field public static final FEATURE_FREEFORM_BY:Ljava/lang/String; = "FFBY"

.field public static final FEATURE_FREEFORM_ENTER_PACKAGE:Ljava/lang/String; = "FFEP"

.field public static final FEATURE_FREEFORM_PACKAGE_LIST:Ljava/lang/String; = "FFPA"

.field public static final FEATURE_FREEFORM_TASK_COUNT:Ljava/lang/String; = "FFCO"

.field public static final FEATURE_SNAP_BY:Ljava/lang/String; = "SNBY"

.field public static final FEATURE_SNAP_OFF:Ljava/lang/String; = "SNOF"

.field public static final FEATURE_SNAP_PACKAGE:Ljava/lang/String; = "SNPK"

.field public static final FEATURE_SPLIT_ACTIONS:Ljava/lang/String; = "SPAC"

.field public static final FEATURE_SPLIT_BY:Ljava/lang/String; = "SPBY"

.field public static final FEATURE_SPLIT_PAIR:Ljava/lang/String; = "SPPA"

.field private static final GSIM_ACTION:Ljava/lang/String; = "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

.field private static final GSIM_APP_ID:Ljava/lang/String; = "app_id"

.field private static final GSIM_DATA:Ljava/lang/String; = "data"

.field private static final GSIM_DEX_APP_ID:Ljava/lang/String; = "com.samsung.android.desktopmode"

.field private static final GSIM_MULTI_ACTION:Ljava/lang/String; = "com.samsung.android.providers.context.log.action.USE_MULTI_APP_FEATURE_SURVEY"

.field private static final GSIM_MW_APP_ID:Ljava/lang/String; = "com.samsung.android.multiwindow"

.field private static final GSIM_PACKAGE:Ljava/lang/String; = "com.samsung.android.providers.context"

.field private static final TAG:Ljava/lang/String; = "MultiWindowLogger"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowLogger;->checkVersionOfDMA()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowLogger;->DMA_SUPPORT:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkVersionOfDMA()Z
    .locals 5

    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const-string v2, "com.sec.android.diagmonagent"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v2

    if-eqz v2, :cond_1

    iget v3, v2, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    const v4, 0x202fbf00

    if-lt v3, v4, :cond_0

    const/4 v1, 0x1

    nop

    :cond_0
    return v1

    :cond_1
    return v1
.end method

.method private static insertDMA(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/multiwindow/MultiWindowLogger;->sendDMA(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static insertDMA(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3

    array-length v0, p2

    array-length v1, p3

    if-eq v0, v1, :cond_0

    const-string v0, "MultiWindowLogger"

    const-string v1, "array length do not match"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_1

    aget-object v1, p2, v0

    aget-object v2, p3, v0

    invoke-static {p0, p1, v1, v2}, Lcom/samsung/android/multiwindow/MultiWindowLogger;->sendDMA(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static insertGSIM(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "app_id"

    if-eqz p1, :cond_0

    move-object v2, p1

    goto :goto_0

    :cond_0
    const-string v2, "com.samsung.android.multiwindow"

    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "feature"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_1

    const-string v1, "extra"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "data"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v2, "com.samsung.android.providers.context"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v2, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private static insertGSIM(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_1

    aget-object v2, p2, v1

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    new-array v2, v1, [Landroid/content/ContentValues;

    nop

    :goto_2
    if-ge v0, v1, :cond_4

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    const-string v4, "app_id"

    if-eqz p1, :cond_2

    move-object v5, p1

    goto :goto_3

    :cond_2
    const-string v5, "com.samsung.android.multiwindow"

    :goto_3
    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    aget-object v3, v2, v0

    const-string v4, "feature"

    aget-object v5, p2, v0

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    aget-object v3, p3, v0

    if-eqz v3, :cond_3

    aget-object v3, v2, v0

    const-string v4, "extra"

    aget-object v5, p3, v0

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.samsung.android.providers.context.log.action.USE_MULTI_APP_FEATURE_SURVEY"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "data"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v3, "com.samsung.android.providers.context"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v3, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public static insertLogForDeX(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowLogger;->DMA_SUPPORT:Z

    if-eqz v0, :cond_0

    const-string v0, "403-399-565756"

    invoke-static {p0, v0, p1, p2}, Lcom/samsung/android/multiwindow/MultiWindowLogger;->insertDMA(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "com.samsung.android.desktopmode"

    invoke-static {p0, v0, p1, p2}, Lcom/samsung/android/multiwindow/MultiWindowLogger;->insertGSIM(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static insertLogForDeX(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowLogger;->DMA_SUPPORT:Z

    if-eqz v0, :cond_0

    const-string v0, "403-399-565756"

    invoke-static {p0, v0, p1, p2}, Lcom/samsung/android/multiwindow/MultiWindowLogger;->insertDMA(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "com.samsung.android.desktopmode"

    invoke-static {p0, v0, p1, p2}, Lcom/samsung/android/multiwindow/MultiWindowLogger;->insertGSIM(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static insertLogForMW(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowLogger;->DMA_SUPPORT:Z

    if-eqz v0, :cond_0

    const-string v0, "408-399-975257"

    invoke-static {p0, v0, p1, p2}, Lcom/samsung/android/multiwindow/MultiWindowLogger;->insertDMA(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "com.samsung.android.multiwindow"

    invoke-static {p0, v0, p1, p2}, Lcom/samsung/android/multiwindow/MultiWindowLogger;->insertGSIM(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static insertLogForMW(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowLogger;->DMA_SUPPORT:Z

    if-eqz v0, :cond_0

    const-string v0, "408-399-975257"

    invoke-static {p0, v0, p1, p2}, Lcom/samsung/android/multiwindow/MultiWindowLogger;->insertDMA(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "com.samsung.android.multiwindow"

    invoke-static {p0, v0, p1, p2}, Lcom/samsung/android/multiwindow/MultiWindowLogger;->insertGSIM(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private static sendDMA(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "tracking_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "feature"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "extra"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.sec.android.diagmonagent.intent.USE_APP_FEATURE_SURVEY"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const-string v2, "com.sec.android.diagmonagent"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

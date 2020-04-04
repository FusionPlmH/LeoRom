.class public Lcom/android/server/am/FreeformController;
.super Ljava/lang/Object;
.source "FreeformController.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final MOVING_FREEFORM_TASK_TO_BACK_TIMEOUT_DURATION:I = 0x1388

.field private static final TAG:Ljava/lang/String; = "FreeformController"


# instance fields
.field private final mActivityManager:Lcom/android/server/am/ActivityManagerService;

.field private mCoolDownFreeformRequested:Z

.field private final mDisplayInfo:Landroid/view/DisplayInfo;

.field private final mEnabledController:Lcom/android/server/am/MultiWindowEnableController;

.field private final mH:Landroid/os/Handler;

.field mIsDexDeveloperMode:Z

.field mIsForcedResized:Z

.field private mMaxDexFreeformDefaultCnt:I

.field private mMaxDexFreeformOverWrittenCnt:I

.field private mMaxFreeformDefaultCnt:I

.field private mMaxFreeformOverWrittenCnt:I

.field private final mMinimizeAllReceiver:Landroid/content/BroadcastReceiver;

.field private mMinimizeMaxCount:I

.field private final mMinimizeServiceBinder:Lcom/android/server/am/FreeformMinimizeServiceBinder;

.field private mMinimizedFreeformForToggleList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/TaskRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mMovingToBackFreeformTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/TaskRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mMultiWindowService:Lcom/android/server/am/MultiWindowManagerService;

.field private final mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

.field private final mTmpRect:Landroid/graphics/Rect;

.field private final mTmpRect2:Landroid/graphics/Rect;

.field mWindowController:Lcom/android/server/wm/FreeformWindowController;

.field private mWindowManager:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/MultiWindowManagerService;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/am/FreeformController;->mMaxFreeformOverWrittenCnt:I

    iput v0, p0, Lcom/android/server/am/FreeformController;->mMaxFreeformDefaultCnt:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/am/FreeformController;->mCoolDownFreeformRequested:Z

    iput v0, p0, Lcom/android/server/am/FreeformController;->mMaxDexFreeformOverWrittenCnt:I

    iput v0, p0, Lcom/android/server/am/FreeformController;->mMaxDexFreeformDefaultCnt:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/FreeformController;->mTmpRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/FreeformController;->mTmpRect2:Landroid/graphics/Rect;

    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/FreeformController;->mDisplayInfo:Landroid/view/DisplayInfo;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/FreeformController;->mMinimizedFreeformForToggleList:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcom/android/server/am/FreeformController;->mIsForcedResized:Z

    iput-boolean v1, p0, Lcom/android/server/am/FreeformController;->mIsDexDeveloperMode:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/FreeformController;->mMovingToBackFreeformTasks:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/server/am/FreeformController$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/FreeformController$1;-><init>(Lcom/android/server/am/FreeformController;)V

    iput-object v0, p0, Lcom/android/server/am/FreeformController;->mMinimizeAllReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/server/am/FreeformController;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iput-object p2, p0, Lcom/android/server/am/FreeformController;->mMultiWindowService:Lcom/android/server/am/MultiWindowManagerService;

    iget-object v0, p0, Lcom/android/server/am/FreeformController;->mMultiWindowService:Lcom/android/server/am/MultiWindowManagerService;

    iget-object v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mH:Lcom/android/server/am/MultiWindowManagerService$H;

    iput-object v0, p0, Lcom/android/server/am/FreeformController;->mH:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/server/am/FreeformController;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iput-object v0, p0, Lcom/android/server/am/FreeformController;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, p0, Lcom/android/server/am/FreeformController;->mMultiWindowService:Lcom/android/server/am/MultiWindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/MultiWindowManagerService;->getEnableController()Lcom/android/server/am/MultiWindowEnableController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/FreeformController;->mEnabledController:Lcom/android/server/am/MultiWindowEnableController;

    new-instance v0, Lcom/android/server/am/FreeformMinimizeServiceBinder;

    invoke-direct {v0, p1}, Lcom/android/server/am/FreeformMinimizeServiceBinder;-><init>(Lcom/android/server/am/ActivityManagerService;)V

    iput-object v0, p0, Lcom/android/server/am/FreeformController;->mMinimizeServiceBinder:Lcom/android/server/am/FreeformMinimizeServiceBinder;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/FreeformController;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/FreeformController;->mH:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic lambda$minimizeMaxCountingFreeformLocked$0(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->setShowForAllUsers()V

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private minimizeMaxCountingFreeformLocked(I)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Lcom/android/server/am/FreeformController;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2, v1}, Lcom/android/server/am/ActivityStackSupervisor;->anyTaskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v2

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v3

    if-nez v3, :cond_0

    goto/16 :goto_6

    :cond_0
    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->isDexMode()Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, v0, Lcom/android/server/am/FreeformController;->mMaxDexFreeformOverWrittenCnt:I

    if-lez v3, :cond_1

    iget v3, v0, Lcom/android/server/am/FreeformController;->mMaxDexFreeformOverWrittenCnt:I

    goto :goto_0

    :cond_1
    iget v3, v0, Lcom/android/server/am/FreeformController;->mMaxDexFreeformDefaultCnt:I

    :goto_0
    goto :goto_1

    :cond_2
    iget v3, v0, Lcom/android/server/am/FreeformController;->mMaxFreeformOverWrittenCnt:I

    if-lez v3, :cond_3

    iget v3, v0, Lcom/android/server/am/FreeformController;->mMaxFreeformOverWrittenCnt:I

    goto :goto_1

    :cond_3
    iget v3, v0, Lcom/android/server/am/FreeformController;->mMaxFreeformDefaultCnt:I

    :goto_1
    const-string v4, "FreeformController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "minimizeMaxCountingFreeformLocked: maxFreeformCnt = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v4

    if-nez v4, :cond_4

    const-string v5, "FreeformController"

    const-string/jumbo v6, "minimizeMaxCountingFreeformLocked: activityDisplay is null."

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v5}, Lcom/android/server/am/ActivityDisplay;->getStack(II)Lcom/android/server/am/ActivityStack;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/am/ActivityDisplay;->getIndexOf(Lcom/android/server/am/ActivityStack;)I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {v4}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v9

    const/4 v10, 0x1

    sub-int/2addr v9, v10

    :goto_2
    if-le v9, v7, :cond_7

    invoke-virtual {v4, v9}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v12

    const/4 v13, 0x5

    if-ne v12, v13, :cond_6

    add-int/lit8 v8, v8, 0x1

    if-le v8, v3, :cond_6

    invoke-virtual {v11}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/am/TaskRecord;

    invoke-virtual {v14}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v15

    if-eqz v15, :cond_5

    invoke-virtual {v14}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v15

    iget-object v10, v0, Lcom/android/server/am/FreeformController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v10, v6, v6}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    invoke-virtual {v15, v6}, Lcom/android/server/am/ActivityRecord;->setVisibility(Z)V

    iget v10, v14, Lcom/android/server/am/TaskRecord;->taskId:I

    const/4 v6, 0x0

    move-object/from16 v16, v4

    const/4 v4, 0x1

    invoke-virtual {v11, v10, v6, v4}, Lcom/android/server/am/ActivityStack;->moveTaskToBackLocked(ILandroid/os/Bundle;Z)Z

    goto :goto_4

    :cond_5
    move-object/from16 v16, v4

    :goto_4
    move-object/from16 v4, v16

    const/4 v6, 0x0

    const/4 v10, 0x1

    goto :goto_3

    :cond_6
    move-object/from16 v16, v4

    add-int/lit8 v9, v9, -0x1

    move-object/from16 v4, v16

    const/4 v6, 0x0

    const/4 v10, 0x1

    goto :goto_2

    :cond_7
    move-object/from16 v16, v4

    if-le v8, v3, :cond_9

    new-instance v4, Landroid/view/ContextThemeWrapper;

    iget-object v6, v0, Lcom/android/server/am/FreeformController;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v9, 0x103012b

    invoke-direct {v4, v6, v9}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v6

    iget-object v6, v6, Lcom/android/server/am/ActivityDisplay;->mDisplay:Landroid/view/Display;

    invoke-virtual {v4, v6}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->isDexMode()Z

    move-result v10

    if-eqz v10, :cond_8

    iget-object v10, v0, Lcom/android/server/am/FreeformController;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x1150002

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v14, 0x0

    aput-object v13, v12, v14

    invoke-virtual {v10, v11, v3, v12}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    goto :goto_5

    :cond_8
    const/4 v12, 0x1

    const/4 v14, 0x0

    iget-object v10, v0, Lcom/android/server/am/FreeformController;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x104038a

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v12, v14

    invoke-virtual {v10, v11, v12}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    :goto_5
    iget-object v11, v0, Lcom/android/server/am/FreeformController;->mH:Landroid/os/Handler;

    new-instance v12, Lcom/android/server/am/-$$Lambda$FreeformController$i612YH8jT1Ptso5qmeNZfYXPB60;

    invoke-direct {v12, v9, v10}, Lcom/android/server/am/-$$Lambda$FreeformController$i612YH8jT1Ptso5qmeNZfYXPB60;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v11, v12}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_9
    return-void

    :cond_a
    :goto_6
    const-string v3, "FreeformController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Fail to invalid task id :  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private toggleMinimizedFreeformTasksToFrontLocked(I)V
    .locals 10

    iget-object v0, p0, Lcom/android/server/am/FreeformController;->mMinimizedFreeformForToggleList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    iget-object v1, p0, Lcom/android/server/am/FreeformController;->mMinimizedFreeformForToggleList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    invoke-virtual {v1}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v8

    if-eqz v8, :cond_1

    invoke-virtual {v1}, Lcom/android/server/am/TaskRecord;->getDisplayId()I

    move-result v2

    if-ne v2, p1, :cond_1

    invoke-virtual {v1}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v9

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v9, :cond_0

    iget-object v2, v9, Lcom/android/server/am/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    :goto_1
    move-object v6, v2

    goto :goto_2

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :goto_2
    const-string/jumbo v7, "toggleMinimizedFreeformTasksToFrontLocked"

    move-object v2, v8

    move-object v3, v1

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/ActivityStack;->moveTaskToFrontLocked(Lcom/android/server/am/TaskRecord;ZLandroid/app/ActivityOptions;Lcom/android/server/am/AppTimeTracker;Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private updateDisplayInfoLocked()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/am/FreeformController;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v1, 0x5

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(II)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->isAttached()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/android/server/am/ActivityDisplay;->mDisplay:Landroid/view/Display;

    iget-object v3, p0, Lcom/android/server/am/FreeformController;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v2, v3}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    :cond_0
    return-void
.end method

.method private updateFreeformMaxCount()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/FreeformController;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0129

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/am/FreeformController;->mMaxFreeformDefaultCnt:I

    const v1, 0x10e0128

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/am/FreeformController;->mMaxDexFreeformDefaultCnt:I

    return-void
.end method


# virtual methods
.method addToMovingToBackFreeformTasksLocked(Lcom/android/server/am/TaskRecord;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/am/FreeformController;->mMovingToBackFreeformTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/FreeformController;->mMovingToBackFreeformTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/FreeformController;->mH:Landroid/os/Handler;

    iget v1, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x6b

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/am/FreeformController;->mH:Landroid/os/Handler;

    iget v1, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/FreeformController;->mH:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "FreeformController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addToMovingToBackFreeformTasksLocked: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method addToggleFreeformList(Lcom/android/server/am/TaskRecord;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/FreeformController;->mMinimizedFreeformForToggleList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/FreeformController;->mMinimizedFreeformForToggleList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method applyFreeformMinimizePolicyLocked(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/FreeformController;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/server/am/ActivityStackSupervisor;->anyTaskForIdLocked(II)Lcom/android/server/am/TaskRecord;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/am/FreeformController;->isMovingToBackFreeformTaskLocked(Lcom/android/server/am/TaskRecord;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "applyFreeformMinimizePolicyLocked"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/FreeformController;->finishMovingFreeformTaskToBackLocked(Lcom/android/server/am/TaskRecord;Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/am/FreeformController;->minimizeMaxCountingFreeformLocked(I)V

    return-void
.end method

.method dumpLocked(Ljava/io/PrintWriter;)V
    .locals 2

    iget v0, p0, Lcom/android/server/am/FreeformController;->mMaxFreeformOverWrittenCnt:I

    if-lez v0, :cond_0

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mMaxFreeformOverWrittenCnt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/FreeformController;->mMaxFreeformOverWrittenCnt:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    iget v0, p0, Lcom/android/server/am/FreeformController;->mMaxDexFreeformOverWrittenCnt:I

    if-lez v0, :cond_1

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mMaxDexFreeformOverWrittenCnt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/FreeformController;->mMaxDexFreeformOverWrittenCnt:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/android/server/am/FreeformController;->mMinimizeServiceBinder:Lcom/android/server/am/FreeformMinimizeServiceBinder;

    invoke-virtual {v0, p1}, Lcom/android/server/am/FreeformMinimizeServiceBinder;->dumpLocked(Ljava/io/PrintWriter;)V

    iget-object v0, p0, Lcom/android/server/am/FreeformController;->mMovingToBackFreeformTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mMovingToBackFreeformTasks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/FreeformController;->mMovingToBackFreeformTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method finishMovingFreeformTaskToBackLocked(Lcom/android/server/am/TaskRecord;Ljava/lang/String;)V
    .locals 3

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FreeformController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "finishMovingFreeformTaskToBackLocked: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/FreeformController;->mMovingToBackFreeformTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/am/FreeformController;->mMovingToBackFreeformTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/am/FreeformController;->mH:Landroid/os/Handler;

    const/16 v1, 0x6b

    iget v2, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->isFreeformStackMinimized()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->isDexMode()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->setWindowingMode(I)V

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/android/server/am/TaskRecord;->unminimizeFreeformTask(Z)V

    goto :goto_1

    :cond_2
    :goto_0
    return-void

    :cond_3
    :goto_1
    return-void
.end method

.method getMinimizeServiceBinder()Lcom/android/server/am/FreeformMinimizeServiceBinder;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/FreeformController;->mMinimizeServiceBinder:Lcom/android/server/am/FreeformMinimizeServiceBinder;

    return-object v0
.end method

.method isMovingToBackFreeformTaskLocked(Lcom/android/server/am/TaskRecord;)Z
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/am/FreeformController;->mMovingToBackFreeformTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method loadResources()V
    .locals 1

    const/16 v0, 0x14

    iput v0, p0, Lcom/android/server/am/FreeformController;->mMinimizeMaxCount:I

    invoke-direct {p0}, Lcom/android/server/am/FreeformController;->updateFreeformMaxCount()V

    return-void
.end method

.method minimizeAllTasksInFreeformLocked()Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v0, v2}, Lcom/android/server/am/FreeformController;->minimizeAllTasksInFreeformLocked(IZIZ)Z

    move-result v0

    return v0
.end method

.method minimizeAllTasksInFreeformLocked(IZIZ)Z
    .locals 20

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    const/4 v0, 0x0

    if-lez v2, :cond_0

    iget-object v5, v1, Lcom/android/server/am/FreeformController;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v5, v2}, Lcom/android/server/am/ActivityStackSupervisor;->anyTaskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v0

    :cond_0
    move-object v5, v0

    const/4 v6, 0x0

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "FreeformController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "minimizeAllTasksInFreeform is calling excludeTaskId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " displayId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " deferMinimizing="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, v1, Lcom/android/server/am/FreeformController;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0, v4}, Lcom/android/server/am/ActivityStackSupervisor;->getFreeformStacks(I)Ljava/util/ArrayList;

    move-result-object v7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v8, v0

    const/4 v0, 0x0

    const/4 v9, 0x0

    iget-object v10, v1, Lcom/android/server/am/FreeformController;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mMultiDisplayManager:Lcom/android/server/am/MultiDisplayManagerService;

    invoke-virtual {v10}, Lcom/android/server/am/MultiDisplayManagerService;->getDexModeLocked()I

    move-result v10

    const/4 v11, 0x2

    const/4 v13, 0x1

    if-ne v4, v11, :cond_2

    if-eq v10, v11, :cond_3

    :cond_2
    if-nez v4, :cond_4

    if-ne v10, v13, :cond_4

    :cond_3
    move v11, v13

    goto :goto_0

    :cond_4
    const/4 v11, 0x0

    :goto_0
    move v9, v11

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move v11, v0

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityStack;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v14

    if-eqz v14, :cond_5

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    or-int/lit8 v0, v11, 0x1

    move v11, v0

    :cond_5
    goto :goto_1

    :cond_6
    if-eqz v11, :cond_1e

    if-nez v9, :cond_7

    move v0, v13

    goto :goto_2

    :cond_7
    const/4 v0, 0x0

    :goto_2
    move v10, v0

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v13

    move v14, v0

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    if-eqz v9, :cond_8

    move v0, v13

    goto :goto_3

    :cond_8
    const/4 v0, 0x0

    :goto_3
    move v15, v0

    if-eqz v14, :cond_9

    :try_start_0
    iget-object v0, v1, Lcom/android/server/am/FreeformController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    goto :goto_4

    :catchall_0
    move-exception v0

    move/from16 v3, p4

    move-object/from16 v19, v5

    goto/16 :goto_c

    :cond_9
    :goto_4
    if-eqz v9, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/FreeformController;->resetToggleFreeformList()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_a
    :try_start_1
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_15

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/am/TaskRecord;

    move-object/from16 v17, v16

    nop

    move-object/from16 v12, v17

    invoke-virtual {v12}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/server/am/ActivityStack;->isUnderHomeStackLocked()Z

    move-result v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    const/16 v16, 0x1

    xor-int/lit8 v13, v13, 0x1

    if-eqz v9, :cond_c

    if-nez v3, :cond_b

    if-nez v5, :cond_c

    :cond_b
    if-eqz v13, :cond_c

    :try_start_2
    invoke-virtual {v1, v12}, Lcom/android/server/am/FreeformController;->addToggleFreeformList(Lcom/android/server/am/TaskRecord;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_c
    if-eqz v5, :cond_e

    if-eq v12, v5, :cond_d

    goto :goto_7

    :cond_d
    :goto_6
    move-object/from16 v18, v0

    goto :goto_8

    :cond_e
    :goto_7
    :try_start_3
    invoke-virtual {v12}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v17

    if-nez v17, :cond_f

    goto :goto_6

    :cond_f
    move-object/from16 v18, v0

    iget-object v0, v1, Lcom/android/server/am/FreeformController;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getLockTaskController()Lcom/android/server/am/LockTaskController;

    move-result-object v0

    invoke-virtual {v0, v12}, Lcom/android/server/am/LockTaskController;->isTaskLocked(Lcom/android/server/am/TaskRecord;)Z

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-eqz v0, :cond_10

    :try_start_4
    iget-object v0, v1, Lcom/android/server/am/FreeformController;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getLockTaskController()Lcom/android/server/am/LockTaskController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/LockTaskController;->showLockTaskToast()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    nop

    :goto_8
    move/from16 v13, v16

    move-object/from16 v0, v18

    goto :goto_5

    :cond_10
    :try_start_5
    const-string v0, "FreeformController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-eqz v10, :cond_11

    :try_start_6
    const-string/jumbo v17, "minimize, "
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_9

    :cond_11
    :try_start_7
    const-string/jumbo v17, "moveback, "

    :goto_9
    move-object/from16 v3, v17

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v13, :cond_13

    invoke-virtual {v12}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    iget v2, v12, Lcom/android/server/am/TaskRecord;->taskId:I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    move/from16 v3, p4

    move-object/from16 v19, v5

    const/4 v5, 0x0

    :try_start_8
    invoke-virtual {v0, v2, v5, v10, v3}, Lcom/android/server/am/ActivityStack;->moveTaskToBackLocked(ILandroid/os/Bundle;ZZ)Z

    move-result v0

    or-int/2addr v6, v0

    if-eqz v9, :cond_14

    if-nez v0, :cond_12

    invoke-virtual {v1, v12}, Lcom/android/server/am/FreeformController;->removeToggleFreeformList(Lcom/android/server/am/TaskRecord;)V

    goto :goto_a

    :cond_12
    invoke-virtual {v1, v12}, Lcom/android/server/am/FreeformController;->addToggleFreeformList(Lcom/android/server/am/TaskRecord;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_a

    :catchall_1
    move-exception v0

    goto :goto_c

    :cond_13
    move/from16 v3, p4

    move-object/from16 v19, v5

    :cond_14
    :goto_a
    move/from16 v13, v16

    move-object/from16 v0, v18

    move-object/from16 v5, v19

    move/from16 v2, p1

    move/from16 v3, p2

    goto/16 :goto_5

    :cond_15
    move/from16 v3, p4

    move-object/from16 v19, v5

    if-eqz v15, :cond_17

    :try_start_9
    iget-object v0, v1, Lcom/android/server/am/FreeformController;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v5, v2, v2}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto :goto_b

    :catchall_2
    move-exception v0

    if-eqz v14, :cond_16

    iget-object v2, v1, Lcom/android/server/am/FreeformController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    :cond_16
    throw v0

    :cond_17
    :goto_b
    if-eqz v14, :cond_18

    iget-object v0, v1, Lcom/android/server/am/FreeformController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    :cond_18
    if-eqz v10, :cond_19

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_USAGE_LOGGING:Z

    if-eqz v0, :cond_19

    iget-object v0, v1, Lcom/android/server/am/FreeformController;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string v2, "2001"

    const-string v5, "Minimize_popup view"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "minimize all. freeform count="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v2, v5, v12}, Lcom/samsung/android/multiwindow/MultiWindowLogger;->insertLogForMW(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_19
    goto :goto_e

    :catchall_3
    move-exception v0

    move/from16 v3, p4

    move-object/from16 v19, v5

    :goto_c
    if-eqz v15, :cond_1b

    :try_start_a
    iget-object v2, v1, Lcom/android/server/am/FreeformController;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v5, 0x0

    const/4 v12, 0x0

    invoke-virtual {v2, v12, v5, v5}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    goto :goto_d

    :catchall_4
    move-exception v0

    if-eqz v14, :cond_1a

    iget-object v2, v1, Lcom/android/server/am/FreeformController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    :cond_1a
    throw v0

    :cond_1b
    :goto_d
    if-eqz v14, :cond_1c

    iget-object v2, v1, Lcom/android/server/am/FreeformController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    :cond_1c
    if-eqz v10, :cond_1d

    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_USAGE_LOGGING:Z

    if-eqz v2, :cond_1d

    iget-object v2, v1, Lcom/android/server/am/FreeformController;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "minimize all. freeform count="

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v12

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v12, "2001"

    const-string v13, "Minimize_popup view"

    invoke-static {v2, v12, v13, v5}, Lcom/samsung/android/multiwindow/MultiWindowLogger;->insertLogForMW(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1d
    throw v0

    :cond_1e
    move/from16 v3, p4

    move-object/from16 v19, v5

    if-eqz v9, :cond_1f

    invoke-direct {v1, v4}, Lcom/android/server/am/FreeformController;->toggleMinimizedFreeformTasksToFrontLocked(I)V

    :cond_1f
    :goto_e
    return v6
.end method

.method moveTaskToBackLocked(IZ)Z
    .locals 7

    iget-object v0, p0, Lcom/android/server/am/FreeformController;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->anyTaskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/am/FreeformController;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->getLockTaskController()Lcom/android/server/am/LockTaskController;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/server/am/LockTaskController;->isTaskLocked(Lcom/android/server/am/TaskRecord;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/am/FreeformController;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->getLockTaskController()Lcom/android/server/am/LockTaskController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/LockTaskController;->showLockTaskToast()V

    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3, p2}, Lcom/android/server/am/ActivityStack;->moveTaskToBackLocked(ILandroid/os/Bundle;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_USAGE_LOGGING:Z

    if-eqz v1, :cond_1

    if-eqz p2, :cond_1

    iget-object v1, p0, Lcom/android/server/am/FreeformController;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->getDisplayId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityStackSupervisor;->getFreeformStacks(I)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/am/FreeformController;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string v3, "2001"

    const-string v4, "Minimize_popup view"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "freeform count="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/samsung/android/multiwindow/MultiWindowLogger;->insertLogForMW(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 v1, 0x1

    return v1

    :cond_2
    return v1
.end method

.method registerBroadcastReceiver()V
    .locals 5

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.samsung.android.multiwindow.MINIMIZE_ALL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.android.multiwindow.MINIMIZE_ALL_BY_SYSTEM"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/am/FreeformController;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/am/FreeformController;->mMinimizeAllReceiver:Landroid/content/BroadcastReceiver;

    const-string v3, "android.permission.MANAGE_ACTIVITY_STACKS"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method removeMovingToBackFreeformTaskLocked(I)V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/am/FreeformController;->mMovingToBackFreeformTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    iget v3, v2, Lcom/android/server/am/TaskRecord;->taskId:I

    if-ne v3, p1, :cond_0

    move-object v0, v2

    goto :goto_1

    :cond_0
    goto :goto_0

    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    const-string v1, "FreeformController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeMovingToBackFreeformTaskLocked: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/am/FreeformController;->mMovingToBackFreeformTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method removeToggleFreeformList(Lcom/android/server/am/TaskRecord;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/am/FreeformController;->mMinimizedFreeformForToggleList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method resetToggleFreeformList()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/FreeformController;->mMinimizedFreeformForToggleList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method setMaxVisibleFreeformCountLocked(I)V
    .locals 1

    iget v0, p0, Lcom/android/server/am/FreeformController;->mMaxDexFreeformOverWrittenCnt:I

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/FreeformController;->setMaxVisibleFreeformCountLocked(II)V

    return-void
.end method

.method setMaxVisibleFreeformCountLocked(II)V
    .locals 4

    const/4 v0, -0x1

    if-lez p1, :cond_0

    move v1, p1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iput v1, p0, Lcom/android/server/am/FreeformController;->mMaxFreeformOverWrittenCnt:I

    if-lez p2, :cond_1

    move v1, p2

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    iput v1, p0, Lcom/android/server/am/FreeformController;->mMaxDexFreeformOverWrittenCnt:I

    const-string v1, "FreeformController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setMaxVisibleFreeformCount: mMaxFreeformOverWrittenCnt="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/am/FreeformController;->mMaxFreeformOverWrittenCnt:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mMaxDexFreeformOverWrittenCnt="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/am/FreeformController;->mMaxDexFreeformOverWrittenCnt:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", caller="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x5

    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v0}, Lcom/android/server/am/FreeformController;->applyFreeformMinimizePolicyLocked(I)V

    return-void
.end method

.method setWindowManager(Lcom/android/server/wm/WindowManagerService;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/am/FreeformController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mMultiWindowInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/wm/MultiWindowManagerInternal;->getFreeformWindowController()Lcom/android/server/wm/FreeformWindowController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/FreeformController;->mWindowController:Lcom/android/server/wm/FreeformWindowController;

    return-void
.end method

.method startFreeformAtCornerGesture(ILandroid/graphics/Rect;)V
    .locals 11

    iget-object v0, p0, Lcom/android/server/am/FreeformController;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    const-string v1, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string/jumbo v2, "startFreeformAtCornerGesture"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v2, p0, Lcom/android/server/am/FreeformController;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2, p1}, Lcom/android/server/am/ActivityStackSupervisor;->anyTaskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v3, "FreeformController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "resizeTask: taskId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " not found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_0
    :try_start_2
    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v3

    if-eqz p2, :cond_1

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v4

    const/4 v5, 0x5

    if-eq v4, v5, :cond_1

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->getActivityType()I

    move-result v6

    const/4 v7, 0x1

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/am/ActivityDisplay;->getOrCreateStack(IIZ)Lcom/android/server/am/ActivityStack;

    move-result-object v4

    move-object v3, v4

    :cond_1
    move-object v10, v3

    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v3

    if-eq v10, v3, :cond_2

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x1

    const-string/jumbo v9, "resizeTask"

    move-object v3, v2

    move-object v4, v10

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/am/TaskRecord;->reparent(Lcom/android/server/am/ActivityStack;ZIZZLjava/lang/String;)Z

    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_USAGE_LOGGING:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/am/FreeformController;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string v4, "2004"

    const-string v5, "Open app in pop-up view"

    iget-object v6, v2, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Lcom/samsung/android/multiwindow/MultiWindowLogger;->insertLogForMW(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {v2, p2, v3, v4, v4}, Lcom/android/server/am/TaskRecord;->resize(Landroid/graphics/Rect;IZZ)Z

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method toggleFullscreenModeLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V
    .locals 11

    invoke-virtual {p2}, Lcom/android/server/am/TaskRecord;->isDexMode()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p2}, Lcom/android/server/am/TaskRecord;->getWindowingMode()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_5

    const/4 v0, 0x0

    invoke-virtual {p2}, Lcom/android/server/am/TaskRecord;->getOverrideBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    invoke-virtual {p2}, Lcom/android/server/am/TaskRecord;->isResizeable()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p2, Lcom/android/server/am/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    if-eqz v1, :cond_0

    iget-object v0, p2, Lcom/android/server/am/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    :cond_0
    if-nez v0, :cond_4

    invoke-virtual {p2}, Lcom/android/server/am/TaskRecord;->getParent()Lcom/android/server/wm/ConfigurationContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget-object v4, p0, Lcom/android/server/am/FreeformController;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mMultiDisplayManager:Lcom/android/server/am/MultiDisplayManagerService;

    invoke-virtual {v4, v2}, Lcom/android/server/am/MultiDisplayManagerService;->getResources(I)Landroid/content/res/Resources;

    move-result-object v4

    sget-boolean v5, Lcom/samsung/android/multiwindow/MultiWindowManager$Utils;->sIsTablet:Z

    if-eqz v5, :cond_1

    const v5, 0x1050095

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    goto :goto_0

    :cond_1
    const v5, 0x1050091

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    :goto_0
    sget-boolean v6, Lcom/samsung/android/multiwindow/MultiWindowManager$Utils;->sIsTablet:Z

    if-eqz v6, :cond_2

    const v6, 0x1050094

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    goto :goto_1

    :cond_2
    const v6, 0x1050090

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    :goto_1
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v7

    sub-int/2addr v7, v5

    div-int/2addr v7, v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v8

    sub-int/2addr v8, v6

    div-int/2addr v8, v2

    new-instance v2, Landroid/graphics/Rect;

    add-int v9, v7, v5

    add-int v10, v8, v6

    invoke-direct {v2, v7, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v0, v2

    goto :goto_2

    :cond_3
    invoke-direct {p0}, Lcom/android/server/am/FreeformController;->updateDisplayInfoLocked()V

    iget-object v1, p0, Lcom/android/server/am/FreeformController;->mTmpRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/server/am/FreeformController;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v4, v4, Landroid/view/DisplayInfo;->appWidth:I

    iget-object v5, p0, Lcom/android/server/am/FreeformController;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v5, v5, Landroid/view/DisplayInfo;->appHeight:I

    invoke-virtual {v1, v3, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v1, p0, Lcom/android/server/am/FreeformController;->mTmpRect2:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/server/am/FreeformController;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v4, v4, Landroid/view/DisplayInfo;->appWidth:I

    iget-object v5, p0, Lcom/android/server/am/FreeformController;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v5, v5, Landroid/view/DisplayInfo;->appHeight:I

    invoke-virtual {v1, v3, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v1, p0, Lcom/android/server/am/FreeformController;->mTmpRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/server/am/FreeformController;->mTmpRect2:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/android/server/am/FreeformController;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v5, v5, Landroid/view/DisplayInfo;->appWidth:I

    div-int/2addr v5, v2

    iput v5, v4, Landroid/graphics/Rect;->left:I

    iput v5, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p2}, Lcom/android/server/am/TaskRecord;->getOverrideBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/FreeformController;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/server/am/FreeformController;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v2, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p2, v1}, Lcom/android/server/am/TaskRecord;->setLastBoundsForMetaKeyInteractionLocked(Landroid/graphics/Rect;)V

    :cond_4
    :goto_2
    const-string v1, "FreeformController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "toggleFullscreenModeLocked: tr="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", targetBounds="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/am/FreeformController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/FreeformController;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget v2, p2, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v1, v2, v0, v3}, Lcom/android/server/am/ActivityManagerService;->resizeTask(ILandroid/graphics/Rect;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/android/server/am/FreeformController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    goto :goto_3

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/android/server/am/FreeformController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    throw v1

    :cond_5
    :goto_3
    return-void
.end method

.method updateDexDeveloperMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/am/FreeformController;->mIsDexDeveloperMode:Z

    return-void
.end method

.method updateDexLabsPolicy(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/am/FreeformController;->mIsForcedResized:Z

    return-void
.end method

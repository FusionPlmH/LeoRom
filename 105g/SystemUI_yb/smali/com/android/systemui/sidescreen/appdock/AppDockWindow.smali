.class public Lcom/android/systemui/sidescreen/appdock/AppDockWindow;
.super Landroid/app/Dialog;
.source "AppDockWindow.java"

# interfaces
.implements Lcom/android/systemui/sidescreen/appdock/model/AppDockAppListLoader$LoadingTaskCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/sidescreen/appdock/AppDockWindow$AppDockBroadcastReceiver;,
        Lcom/android/systemui/sidescreen/appdock/AppDockWindow$EventBusObject;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;

.field public static sBlackList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private static sLoader:Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;

.field private static sState:Lcom/android/systemui/dnd/MultiWindowState;


# instance fields
.field mAnimationHelper:Lcom/android/systemui/sidescreen/appdock/AppDockAnimationHelper;

.field mAppDockBroadcastReceiver:Lcom/android/systemui/sidescreen/appdock/AppDockWindow$AppDockBroadcastReceiver;

.field mDimBgView:Landroid/view/View;

.field mEventBusObject:Lcom/android/systemui/sidescreen/appdock/AppDockWindow$EventBusObject;

.field mRootView:Landroid/view/ViewGroup;

.field mSideView:Lcom/android/systemui/sidescreen/appdock/view/AppDockSideView;

.field mStackListener:Lcom/android/systemui/shared/system/TaskStackChangeListener;

.field mTouchHandler:Lcom/android/systemui/sidescreen/appdock/AppDockWindowTouchHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MW_DND_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/systemui/sidescreen/appdock/AppDockWindow;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/sidescreen/appdock/AppDockWindow;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/systemui/sidescreen/appdock/AppDockWindow;->sBlackList:Ljava/util/ArrayList;

    sget-object v0, Lcom/android/systemui/sidescreen/appdock/AppDockWindow;->sBlackList:Ljava/util/ArrayList;

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.google.android.googlequicksearchbox"

    const-string v3, "com.google.android.googlequicksearchbox.VoiceSearchActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/systemui/dnd/MultiWindowState;

    invoke-direct {v0}, Lcom/android/systemui/dnd/MultiWindowState;-><init>()V

    sput-object v0, Lcom/android/systemui/sidescreen/appdock/AppDockWindow;->sState:Lcom/android/systemui/dnd/MultiWindowState;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const v0, 0x7f130290

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    new-instance v0, Lcom/android/systemui/sidescreen/appdock/AppDockWindow$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/sidescreen/appdock/AppDockWindow$4;-><init>(Lcom/android/systemui/sidescreen/appdock/AppDockWindow;)V

    iput-object v0, p0, Lcom/android/systemui/sidescreen/appdock/AppDockWindow;->mStackListener:Lcom/android/systemui/shared/system/TaskStackChangeListener;

    invoke-static {}, Lcom/android/systemui/sidescreen/LogHelper;->debug()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/sidescreen/appdock/AppDockWindow;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/sidescreen/appdock/AppDockWindow;->updateBlurAmount(F)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/sidescreen/appdock/AppDockWindow;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/sidescreen/appdock/AppDockWindow;->onTaskChanged()V

    return-void
.end method

.method private createItemInfoList(Ljava/util/List;I)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/shared/recents/model/Task;",
            ">;I)",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/sidescreen/appdock/model/AppDockItemInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    :goto_0
    if-gt v3, p2, :cond_1

    sub-int v4, v2, v3

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/shared/recents/model/Task;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v4, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget-object v6, v6, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v4, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v6, v6, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_0

    goto :goto_1

    :cond_0
    new-instance v6, Lcom/android/systemui/sidescreen/appdock/model/AppDockTaskInfo;

    invoke-virtual {p0}, Lcom/android/systemui/sidescreen/appdock/AppDockWindow;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7, v4}, Lcom/android/systemui/sidescreen/appdock/model/AppDockTaskInfo;-><init>(Landroid/content/Context;Lcom/android/systemui/shared/recents/model/Task;)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static getLoader(Landroid/content/Context;)Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;
    .locals 3

    sget-object v0, Lcom/android/systemui/sidescreen/appdock/AppDockWindow;->sLoader:Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/systemui/sidescreen/appdock/AppDockWindow$1;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2, v1, v2}, Lcom/android/systemui/sidescreen/appdock/AppDockWindow$1;-><init>(Landroid/content/Context;III)V

    sput-object v0, Lcom/android/systemui/sidescreen/appdock/AppDockWindow;->sLoader:Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;

    sget-object v0, Lcom/android/systemui/sidescreen/appdock/AppDockWindow;->sLoader:Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;

    invoke-virtual {v0, p0}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->startLoader(Landroid/content/Context;)V

    :cond_0
    sget-object v0, Lcom/android/systemui/sidescreen/appdock/AppDockWindow;->sLoader:Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;

    return-object v0
.end method

.method public static getMultiWindowState()Lcom/android/systemui/dnd/MultiWindowState;
    .locals 1

    sget-object v0, Lcom/android/systemui/sidescreen/appdock/AppDockWindow;->sState:Lcom/android/systemui/dnd/MultiWindowState;

    return-object v0
.end method

.method private initInternal()V
    .locals 2

    const v0, 0x7f0a0073

    invoke-virtual {p0, v0}, Lcom/android/systemui/sidescreen/appdock/AppDockWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/sidescreen/appdock/AppDockWindow;->mRootView:Landroid/view/ViewGroup;

    const v0, 0x7f0a0071

    invoke-virtual {p0, v0}, Lcom/android/systemui/sidescreen/appdock/AppDockWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/sidescreen/appdock/AppDockWindow;->mDimBgView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/sidescreen/appdock/AppDockWindow;->mDimBgView:Landroid/view/View;

    new-instance v1, Lcom/android/systemui/sidescreen/appdock/-$$Lambda$AppDockWindow$ZCbnEMfJD48FgOIuq-JHYWV0tuY;

    invoke-direct {v1, p0}, Lcom/android/systemui/sidescreen/appdock/-$$Lambda$AppDockWindow$ZCbnEMfJD48FgOIuq-JHYWV0tuY;-><init>(Lcom/android/systemui/sidescreen/appdock/AppDockWindow;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0074

    invoke-virtual {p0, v0}, Lcom/android/systemui/sidescreen/appdock/AppDockWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/sidescreen/appdock/view/AppDockSideView;

    iput-object v0, p0, Lcom/android/systemui/sidescreen/appdock/AppDockWindow;->mSideView:Lcom/android/systemui/sidescreen/appdock/view/AppDockSideView;

    new-instance v0, Lcom/android/systemui/sidescreen/appdock/AppDockWindow$EventBusObject;

    invoke-direct {v0, p0}, Lcom/android/systemui/sidescreen/appdock/AppDockWindow$EventBusObject;-><init>(Lcom/android/systemui/sidescreen/appdock/AppDockWindow;)V

    iput-object v0, p0, Lcom/android/systemui/sidescreen/appdock/AppDockWindow;->mEventBusObject:Lcom/android/systemui/sidescreen/appdock/AppDockWindow$EventBusObject;

    new-instance v0, Lcom/android/systemui/sidescreen/appdock/AppDockWindowTouchHandler;

    invoke-virtual {p0}, Lcom/android/systemui/sidescreen/appdock/AppDockWindow;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/systemui/sidescreen/appdock/AppDockWindowTouchHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/sidescreen/appdock/AppDockWindow;->mTouchHandler:Lcom/android/systemui/sidescreen/appdock/AppDockWindowTouchHandler;

    new-instance v0, Lcom/android/systemui/sidescreen/appdock/AppDockAnimationHelper;

    invoke-direct {v0}, Lcom/android/systemui/sidescreen/appdock/AppDockAnimationHelper;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/sidescreen/appdock/AppDockWindow;->mAnimationHelper:Lcom/android/systemui/sidescreen/appdock/AppDockAnimationHelper;

    new-instance v0, Lcom/android/systemui/sidescreen/appdock/AppDockWindow$AppDockBroadcastReceiver;

    invoke-direct {v0, p0}, Lcom/android/systemui/sidescreen/appdock/AppDockWindow$AppDockBroadcastReceiver;-><init>(Lcom/android/systemui/sidescreen/appdock/AppDockWindow;)V

    iput-object v0, p0, Lcom/android/systemui/sidescreen/appdock/AppDockWindow;->mAppDockBroadcastReceiver:Lcom/android/systemui/sidescreen/appdock/AppDockWindow$AppDockBroadcastReceiver;

    return-void
.end method

.method private initWindowParams()V
    .locals 3

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/view/WindowManager$LayoutParams;-><init>(II)V

    const/16 v1, 0x8b2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x402

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/high16 v2, 0x20000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->semAddExtensionFlags(I)V

    const-string v1, "MW : AppDockWindow"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    const/16 v1, 0x11

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const v1, 0x3dcccccd    # 0.1f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    invoke-virtual {p0}, Lcom/android/systemui/sidescreen/appdock/AppDockWindow;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public static synthetic lambda$initInternal$0(Lcom/android/systemui/sidescreen/appdock/AppDockWindow;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/sidescreen/appdock/AppDockWindow;->startExitAnimation()V

    return-void
.end method

.method static synthetic lambda$reloadRecentTasks$1(Lcom/android/systemui/shared/recents/model/Task;)Z
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v0, v0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->windowingMode:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    iget v0, p0, Lcom/android/systemui/shared/recents/model/Task;->resizeMode:I

    invoke-static {v0}, Landroid/content/pm/ActivityInfo;->isResizeableMode(I)Z

    move-result v0

    if-nez v0, :cond_1

    return v2

    :cond_1
    sget-object v0, Lcom/android/systemui/sidescreen/appdock/AppDockWindow;->sBlackList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    iget-object v4, p0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget-object v4, v4, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    return v2

    :cond_2
    goto :goto_0

    :cond_3
    return v1
.end method

.method private loadAppList()V
    .locals 1

    invoke-static {}, Lcom/android/systemui/sidescreen/LogHelper;->debug()V

    invoke-virtual {p0}, Lcom/android/systemui/sidescreen/appdock/AppDockWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/sidescreen/appdock/model/AppDockAppListLoader;->get(Landroid/content/Context;)Lcom/android/systemui/sidescreen/appdock/model/AppDockAppListLoader;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/sidescreen/appdock/model/AppDockAppListLoader;->preload(Lcom/android/systemui/sidescreen/appdock/model/AppDockAppListLoader$LoadingTaskCallbacks;)V

    return-void
.end method

.method private onTaskChanged()V
    .locals 0

    return-void
.end method

.method private registerReceiver()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/sidescreen/appdock/AppDockWindow;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/sidescreen/appdock/AppDockWindow;->mAppDockBroadcastReceiver:Lcom/android/systemui/sidescreen/appdock/AppDockWindow$AppDockBroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private reloadRecentTasks()V
    .locals 18

    move-object/from16 v0, p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    new-instance v3, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/sidescreen/appdock/AppDockWindow;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getRunningTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v4

    if-eqz v4, :cond_0

    iget v5, v4, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    goto :goto_0

    :cond_0
    const/4 v5, -0x1

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/sidescreen/appdock/AppDockWindow;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/systemui/sidescreen/appdock/AppDockWindow;->getLoader(Landroid/content/Context;)Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;

    move-result-object v6

    invoke-virtual {v6, v3, v5}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->preloadTasks(Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;I)V

    new-instance v6, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$Options;

    invoke-direct {v6}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$Options;-><init>()V

    iput v5, v6, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$Options;->runningTaskId:I

    const/4 v7, 0x0

    iput-boolean v7, v6, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$Options;->loadThumbnails:Z

    invoke-virtual {v3}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->getTaskStack()Lcom/android/systemui/shared/recents/model/TaskStack;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/systemui/shared/recents/model/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v9

    sget-object v10, Lcom/android/systemui/sidescreen/appdock/-$$Lambda$AppDockWindow$3pi0ah1rcH9nZfOShZ7o__WbSv0;->INSTANCE:Lcom/android/systemui/sidescreen/appdock/-$$Lambda$AppDockWindow$3pi0ah1rcH9nZfOShZ7o__WbSv0;

    invoke-interface {v9}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v11

    invoke-interface {v11, v10}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v11

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v11

    move-object v9, v11

    check-cast v9, Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v11

    const/4 v12, 0x5

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v12

    iput v12, v6, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTasks:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/sidescreen/appdock/AppDockWindow;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13}, Lcom/android/systemui/sidescreen/appdock/AppDockWindow;->getLoader(Landroid/content/Context;)Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;

    move-result-object v13

    invoke-virtual {v13, v3, v6}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->loadTasks(Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$Options;)V

    invoke-direct {v0, v9, v12}, Lcom/android/systemui/sidescreen/appdock/AppDockWindow;->createItemInfoList(Ljava/util/List;I)Ljava/util/ArrayList;

    move-result-object v13

    iget-object v14, v0, Lcom/android/systemui/sidescreen/appdock/AppDockWindow;->mSideView:Lcom/android/systemui/sidescreen/appdock/view/AppDockSideView;

    invoke-virtual {v14, v13}, Lcom/android/systemui/sidescreen/appdock/view/AppDockSideView;->updateList(Ljava/util/ArrayList;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    const-string v7, "load time=%d"

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v3

    move-object/from16 v17, v4

    sub-long v3, v14, v1

    long-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v0, v4

    invoke-static {v7, v0}, Lcom/android/systemui/sidescreen/LogHelper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private startBlurAnimator(Z)V
    .locals 5

    if-eqz p1, :cond_0

    const v0, 0x3dcccccd    # 0.1f

    const v1, 0x3dcccccd    # 0.1f

    goto :goto_0

    :cond_0
    const v0, 0x3dcccccd    # 0.1f

    const v1, 0x3dcccccd    # 0.1f

    :goto_0
    if-eqz p1, :cond_1

    invoke-direct {p0, v1}, Lcom/android/systemui/sidescreen/appdock/AppDockWindow;->updateBlurAmount(F)V

    return-void

    :cond_1
    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v3, 0x1

    aput v1, v2, v3

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/sidescreen/appdock/AppDockWindow$2;

    invoke-direct {v3, p0}, Lcom/android/systemui/sidescreen/appdock/AppDockWindow$2;-><init>(Lcom/android/systemui/sidescreen/appdock/AppDockWindow;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v3, 0x32

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private updateBlurAmount(F)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/sidescreen/appdock/AppDockWindow;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    invoke-virtual {p0}, Lcom/android/systemui/sidescreen/appdock/AppDockWindow;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method private updateSystemUiVisibility()V
    .locals 2

    const/16 v0, 0x700

    invoke-virtual {p0}, Lcom/android/systemui/sidescreen/appdock/AppDockWindow;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method private updateWindowState(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/sidescreen/appdock/AppDockWindow;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/sidescreen/appdock/AppDockWindow;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 0

    invoke-static {}, Lcom/android/systemui/sidescreen/LogHelper;->debug()V

    invoke-virtual {p0}, Lcom/android/systemui/sidescreen/appdock/AppDockWindow;->startExitAnimation()V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/sidescreen/appdock/AppDockWindow;->mTouchHandler:Lcom/android/systemui/sidescreen/appdock/AppDockWindowTouchHandler;

    invoke-virtual {v0, p1}, Lcom/android/systemui/sidescreen/appdock/AppDockWindowTouchHandler;->onPreTouchEvent(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {v0}, Lcom/android/systemui/sidescreen/appdock/AppDockWindowTouchHandler;->getMovePoint()Landroid/graphics/Point;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Point;->x:I

    if-gez v4, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/sidescreen/appdock/AppDockWindowTouchHandler;->getMovePoint()Landroid/graphics/Point;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Point;->x:I

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    invoke-virtual {v0}, Lcom/android/systemui/sidescreen/appdock/AppDockWindowTouchHandler;->getEdgeSlop()I

    move-result v5

    if-le v4, v5, :cond_0

    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/android/systemui/sidescreen/appdock/AppDockWindow;->updateWindowState(Z)V

    goto :goto_0

    :pswitch_1
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/android/systemui/sidescreen/appdock/AppDockWindow;->updateWindowState(Z)V

    goto :goto_0

    :pswitch_2
    nop

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Dialog;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    return v4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public executeDismiss()V
    .locals 0

    invoke-static {}, Lcom/android/systemui/sidescreen/LogHelper;->debug()V

    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public onBackPressed()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/sidescreen/appdock/AppDockWindow;->startExitAnimation()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0d023c

    invoke-virtual {p0, v0}, Lcom/android/systemui/sidescreen/appdock/AppDockWindow;->setContentView(I)V

    invoke-static {}, Lcom/android/systemui/sidescreen/LogHelper;->debug()V

    invoke-direct {p0}, Lcom/android/systemui/sidescreen/appdock/AppDockWindow;->initWindowParams()V

    invoke-direct {p0}, Lcom/android/systemui/sidescreen/appdock/AppDockWindow;->initInternal()V

    return-void
.end method

.method public onPostExecute()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/sidescreen/appdock/AppDockWindow;->mSideView:Lcom/android/systemui/sidescreen/appdock/view/AppDockSideView;

    invoke-virtual {v0}, Lcom/android/systemui/sidescreen/appdock/view/AppDockSideView;->getProgressView()Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    invoke-direct {p0}, Lcom/android/systemui/sidescreen/appdock/AppDockWindow;->reloadRecentTasks()V

    return-void
.end method

.method public onPreExecute()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/sidescreen/appdock/AppDockWindow;->mSideView:Lcom/android/systemui/sidescreen/appdock/view/AppDockSideView;

    invoke-virtual {v0}, Lcom/android/systemui/sidescreen/appdock/view/AppDockSideView;->getProgressView()Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method protected onStart()V
    .locals 2

    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    invoke-static {}, Lcom/android/systemui/sidescreen/LogHelper;->debug()V

    invoke-static {}, Lcom/android/systemui/sidescreen/appdock/AppDockWindow;->getMultiWindowState()Lcom/android/systemui/dnd/MultiWindowState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/dnd/MultiWindowState;->update()V

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/sidescreen/appdock/AppDockWindow;->mEventBusObject:Lcom/android/systemui/sidescreen/appdock/AppDockWindow$EventBusObject;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->register(Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/sidescreen/appdock/AppDockWindow;->mStackListener:Lcom/android/systemui/shared/system/TaskStackChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->registerTaskStackListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V

    iget-object v0, p0, Lcom/android/systemui/sidescreen/appdock/AppDockWindow;->mSideView:Lcom/android/systemui/sidescreen/appdock/view/AppDockSideView;

    invoke-virtual {v0}, Lcom/android/systemui/sidescreen/appdock/view/AppDockSideView;->onStart()V

    invoke-direct {p0}, Lcom/android/systemui/sidescreen/appdock/AppDockWindow;->loadAppList()V

    iget-object v0, p0, Lcom/android/systemui/sidescreen/appdock/AppDockWindow;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/sidescreen/appdock/AppDockWindow$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/sidescreen/appdock/AppDockWindow$3;-><init>(Lcom/android/systemui/sidescreen/appdock/AppDockWindow;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/sidescreen/appdock/AppDockWindow;->startBlurAnimator(Z)V

    invoke-direct {p0}, Lcom/android/systemui/sidescreen/appdock/AppDockWindow;->registerReceiver()V

    return-void
.end method

.method protected onStop()V
    .locals 2

    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    invoke-static {}, Lcom/android/systemui/sidescreen/LogHelper;->debug()V

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/sidescreen/appdock/AppDockWindow;->mEventBusObject:Lcom/android/systemui/sidescreen/appdock/AppDockWindow$EventBusObject;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->unregister(Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/sidescreen/appdock/AppDockWindow;->mStackListener:Lcom/android/systemui/shared/system/TaskStackChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->unregisterTaskStackListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V

    iget-object v0, p0, Lcom/android/systemui/sidescreen/appdock/AppDockWindow;->mSideView:Lcom/android/systemui/sidescreen/appdock/view/AppDockSideView;

    invoke-virtual {v0}, Lcom/android/systemui/sidescreen/appdock/view/AppDockSideView;->onStop()V

    invoke-virtual {p0}, Lcom/android/systemui/sidescreen/appdock/AppDockWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/sidescreen/appdock/model/AppDockAppListLoader;->get(Landroid/content/Context;)Lcom/android/systemui/sidescreen/appdock/model/AppDockAppListLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/sidescreen/appdock/model/AppDockAppListLoader;->clearIconCache()V

    invoke-virtual {p0}, Lcom/android/systemui/sidescreen/appdock/AppDockWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/sidescreen/appdock/AppDockWindow;->getLoader(Landroid/content/Context;)Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;

    move-result-object v0

    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->onTrimMemory(I)V

    invoke-virtual {p0}, Lcom/android/systemui/sidescreen/appdock/AppDockWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/sidescreen/appdock/AppDockWindow;->mAppDockBroadcastReceiver:Lcom/android/systemui/sidescreen/appdock/AppDockWindow$AppDockBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Dialog;->onWindowFocusChanged(Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onWindowFocusChanged : hasFocus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/systemui/sidescreen/LogHelper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/android/systemui/sidescreen/appdock/AppDockWindow;->updateSystemUiVisibility()V

    return-void
.end method

.method public startEnterAnimation()V
    .locals 7

    invoke-static {}, Lcom/android/systemui/sidescreen/LogHelper;->debug()V

    iget-object v0, p0, Lcom/android/systemui/sidescreen/appdock/AppDockWindow;->mDimBgView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/sidescreen/appdock/AppDockWindow;->mDimBgView:Landroid/view/View;

    const/4 v2, 0x1

    new-array v3, v2, [Landroid/animation/PropertyValuesHolder;

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v2, v2, [F

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    aput v6, v2, v5

    invoke-static {v4, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v3, v5

    invoke-static {v1, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v2, p0, Lcom/android/systemui/sidescreen/appdock/AppDockWindow;->mSideView:Lcom/android/systemui/sidescreen/appdock/view/AppDockSideView;

    invoke-virtual {v2}, Lcom/android/systemui/sidescreen/appdock/view/AppDockSideView;->composeEnterAnimation()Landroid/animation/AnimatorSet;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public startExitAnimation()V
    .locals 7

    invoke-static {}, Lcom/android/systemui/sidescreen/LogHelper;->debug()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/sidescreen/appdock/AppDockWindow;->startBlurAnimator(Z)V

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iget-object v2, p0, Lcom/android/systemui/sidescreen/appdock/AppDockWindow;->mDimBgView:Landroid/view/View;

    const/4 v3, 0x1

    new-array v4, v3, [Landroid/animation/PropertyValuesHolder;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v3, v3, [F

    const/4 v6, 0x0

    aput v6, v3, v0

    invoke-static {v5, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    aput-object v3, v4, v0

    invoke-static {v2, v4}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v2, p0, Lcom/android/systemui/sidescreen/appdock/AppDockWindow;->mSideView:Lcom/android/systemui/sidescreen/appdock/view/AppDockSideView;

    invoke-virtual {v2}, Lcom/android/systemui/sidescreen/appdock/view/AppDockSideView;->composeExitAnimation()Landroid/animation/AnimatorSet;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    new-instance v2, Lcom/android/systemui/sidescreen/appdock/AppDockWindow$5;

    invoke-direct {v2, p0}, Lcom/android/systemui/sidescreen/appdock/AppDockWindow$5;-><init>(Lcom/android/systemui/sidescreen/appdock/AppDockWindow;)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method
